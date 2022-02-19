module eth_ocm(
    input                   clk,
    input                   reset,

    //Control port (to Wishbone slave)
    input                   control_port_chipselect,
    input   [9:0]           control_port_address,
    input                   control_port_write,
    input   [31:0]          control_port_writedata,
    input   [3:0]           control_port_byteenable,
    input                   control_port_read,
    output  [31:0]          control_port_readdata,
    output                  control_port_waitrequest_n,
    output                  control_port_irq,

    //Memory port (from Wishbone master)
    output  [31:0]          memory_port_address,
    output                  memory_port_write,
    output  [31:0]          memory_port_writedata,
    output  [3:0]           memory_port_byteenable,
    output                  memory_port_read,
    input   [31:0]          memory_port_readdata,
    input                   memory_port_waitrequest_n,

    //MII interface
    //TX
    input                   tx_clk,
    output  [3:0]           m_tx_d,
    output                  m_tx_en,
    output                  m_tx_err,
    //RX
    input                   rx_clk,
    input   [3:0]           m_rx_d,
    input                   m_rx_en,
    input                   m_rx_err,
    //Common
    input                   m_rx_col,
    input                   m_rx_crs,
    //MII Management interface
    output                  mdc,
    input                   mdio_in,
    output                  mdio_out,
    output                  mdio_oen
);

//eth_top connection
wire            wb_ack_o;
wire            m_wb_we_o;
wire            m_wb_stb_o;
wire    [31:0]  m_wb_dat_i;
wire    [31:0]  m_wb_dat_o;
wire    [3:0]   m_wb_sel_o;

//A software reset register
wire            sw_reset_wr;
reg     [3:0]   sw_reset;

//Modify waitrequest to support our software reset
assign  control_port_waitrequest_n = wb_ack_o | sw_reset[0];
//Memory port signals are qualified with strobe
assign  memory_port_write       = m_wb_we_o & m_wb_stb_o;
assign  memory_port_read        = ~m_wb_we_o & m_wb_stb_o;
assign  memory_port_byteenable  = {m_wb_sel_o[0],m_wb_sel_o[1],m_wb_sel_o[2],m_wb_sel_o[3]};
assign  memory_port_writedata   = {m_wb_dat_o[7:0],m_wb_dat_o[15:8],m_wb_dat_o[23:16],m_wb_dat_o[31:24]};
assign  m_wb_dat_i              = {memory_port_readdata[7:0], memory_port_readdata[15:8],
                                    memory_port_readdata[23:16], memory_port_readdata[31:24]};
assign  sw_reset_wr = (control_port_write & control_port_chipselect & (control_port_address == 10'h0FF));
//A simple software reset at address 0xFF
always @(posedge clk or posedge reset)
    if(reset)   sw_reset    <= 4'b0000;
    else if(sw_reset_wr)
                sw_reset    <= 4'b1111;
    else        sw_reset    <= {sw_reset[2:0],1'b0};

eth_ocm_top eth_ocm_top_inst(
    // WISHBONE common
    .wb_clk_i       (clk                            ),
    .wb_rst_i       (sw_reset[3]                    ),
    .wb_dat_i       (control_port_writedata         ),
    .wb_dat_o       (control_port_readdata          ), 

    // WISHBONE slave
    .wb_adr_i       (control_port_address           ),
    .wb_sel_i       (control_port_byteenable        ),
    .wb_we_i        (control_port_write & ~control_port_read),
    .wb_cyc_i       (control_port_chipselect        ),
    .wb_stb_i       (control_port_chipselect&(control_port_write | control_port_read)),
    .wb_ack_o       (wb_ack_o                       ),
    .wb_err_o       (                               ), 

    // WISHBONE master
    .m_wb_adr_o     (memory_port_address            ),
    .m_wb_sel_o     (m_wb_sel_o                     ),
    .m_wb_we_o      (m_wb_we_o                      ),
    .m_wb_dat_o     (m_wb_dat_o                     ),
    .m_wb_dat_i     (m_wb_dat_i                     ),
    .m_wb_cyc_o     (                               ),
    .m_wb_stb_o     (m_wb_stb_o                     ),
    .m_wb_ack_i     (memory_port_waitrequest_n & m_wb_stb_o ),
    .m_wb_err_i     (1'b0                           ),

    `ifdef ETH_WISHBONE_B3
    m_wb_cti_o(), m_wb_bte_o(),                     
    `endif

    //TX
    .mtx_clk_pad_i  (tx_clk                         ),
    .mtxd_pad_o     (m_tx_d                         ),
    .mtxen_pad_o    (m_tx_en                        ),
    .mtxerr_pad_o   (m_tx_err                       ),
    //RX
    .mrx_clk_pad_i  (rx_clk                         ),
    .mrxd_pad_i     (m_rx_d                         ),
    .mrxdv_pad_i    (m_rx_en                        ),
    .mrxerr_pad_i   (m_rx_err                       ),
    .mcoll_pad_i    (m_rx_col                       ),
    .mcrs_pad_i     (m_rx_crs                       ),
  
    // MIIM
    .mdc_pad_o      (mdc                            ),
    .md_pad_i       (mdio_in                        ),
    .md_pad_o       (mdio_out                       ),
    .md_padoe_o     (mdio_oen                       ),

    .int_o          (control_port_irq               )

    // Bist
    `ifdef ETH_BIST
      ,
      // debug chain signals
      mbist_si_i,       // bist scan serial in
      mbist_so_o,       // bist scan serial out
      mbist_ctrl_i        // bist chain shift control
    `endif
);

endmodule

