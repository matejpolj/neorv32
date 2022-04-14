
main.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
       0:	00000037          	lui	zero,0x0

00000004 <__crt0_pointer_init>:
       4:	80002117          	auipc	sp,0x80002
       8:	ff810113          	addi	sp,sp,-8 # 80001ffc <__ctr0_io_space_begin+0x800021fc>
       c:	80000197          	auipc	gp,0x80000
      10:	7f418193          	addi	gp,gp,2036 # 80000800 <__ctr0_io_space_begin+0x80000a00>

00000014 <__crt0_cpu_csr_init>:
      14:	00000517          	auipc	a0,0x0
      18:	12450513          	addi	a0,a0,292 # 138 <__crt0_dummy_trap_handler>
      1c:	30551073          	csrw	mtvec,a0
      20:	34151073          	csrw	mepc,a0
      24:	30001073          	csrw	mstatus,zero
      28:	30401073          	csrw	mie,zero
      2c:	30601073          	csrw	mcounteren,zero
      30:	ffa00593          	li	a1,-6
      34:	32059073          	csrw	mcountinhibit,a1
      38:	b0001073          	csrw	mcycle,zero
      3c:	b8001073          	csrw	mcycleh,zero
      40:	b0201073          	csrw	minstret,zero
      44:	b8201073          	csrw	minstreth,zero

00000048 <__crt0_reg_file_clear>:
      48:	00000093          	li	ra,0
      4c:	00000213          	li	tp,0
      50:	00000293          	li	t0,0
      54:	00000313          	li	t1,0
      58:	00000393          	li	t2,0
      5c:	00000713          	li	a4,0
      60:	00000793          	li	a5,0
      64:	00000813          	li	a6,0
      68:	00000893          	li	a7,0
      6c:	00000913          	li	s2,0
      70:	00000993          	li	s3,0
      74:	00000a13          	li	s4,0
      78:	00000a93          	li	s5,0
      7c:	00000b13          	li	s6,0
      80:	00000b93          	li	s7,0
      84:	00000c13          	li	s8,0
      88:	00000c93          	li	s9,0
      8c:	00000d13          	li	s10,0
      90:	00000d93          	li	s11,0
      94:	00000e13          	li	t3,0
      98:	00000e93          	li	t4,0
      9c:	00000f13          	li	t5,0
      a0:	00000f93          	li	t6,0

000000a4 <__crt0_reset_io>:
      a4:	00000417          	auipc	s0,0x0
      a8:	d5c40413          	addi	s0,s0,-676 # fffffe00 <__ctr0_io_space_begin+0x0>
      ac:	00000497          	auipc	s1,0x0
      b0:	f5448493          	addi	s1,s1,-172 # 0 <_start>

000000b4 <__crt0_reset_io_loop>:
      b4:	00042023          	sw	zero,0(s0)
      b8:	00440413          	addi	s0,s0,4
      bc:	fe941ce3          	bne	s0,s1,b4 <__crt0_reset_io_loop>

000000c0 <__crt0_clear_bss>:
      c0:	80000597          	auipc	a1,0x80000
      c4:	f4858593          	addi	a1,a1,-184 # 80000008 <__ctr0_io_space_begin+0x80000208>
      c8:	91018613          	addi	a2,gp,-1776 # 80000110 <__BSS_END__>

000000cc <__crt0_clear_bss_loop>:
      cc:	00c5d863          	bge	a1,a2,dc <__crt0_clear_bss_loop_end>
      d0:	00058023          	sb	zero,0(a1)
      d4:	00158593          	addi	a1,a1,1
      d8:	ff5ff06f          	j	cc <__crt0_clear_bss_loop>

000000dc <__crt0_clear_bss_loop_end>:
      dc:	00005597          	auipc	a1,0x5
      e0:	b8058593          	addi	a1,a1,-1152 # 4c5c <__crt0_copy_data_src_begin>
      e4:	80000617          	auipc	a2,0x80000
      e8:	f1c60613          	addi	a2,a2,-228 # 80000000 <__ctr0_io_space_begin+0x80000200>
      ec:	80000697          	auipc	a3,0x80000
      f0:	f1c68693          	addi	a3,a3,-228 # 80000008 <__ctr0_io_space_begin+0x80000208>

000000f4 <__crt0_copy_data_loop>:
      f4:	00d65c63          	bge	a2,a3,10c <__crt0_copy_data_loop_end>
      f8:	00058703          	lb	a4,0(a1)
      fc:	00e60023          	sb	a4,0(a2)
     100:	00158593          	addi	a1,a1,1
     104:	00160613          	addi	a2,a2,1
     108:	fedff06f          	j	f4 <__crt0_copy_data_loop>

0000010c <__crt0_copy_data_loop_end>:
     10c:	00000513          	li	a0,0
     110:	00000593          	li	a1,0
     114:	07c000ef          	jal	ra,190 <main>

00000118 <__crt0_main_aftermath>:
     118:	34051073          	csrw	mscratch,a0
     11c:	00001097          	auipc	ra,0x1
     120:	7c008093          	addi	ra,ra,1984 # 18dc <__neorv32_crt0_after_main>
     124:	00008463          	beqz	ra,12c <__crt0_main_aftermath_end>
     128:	000080e7          	jalr	ra

0000012c <__crt0_main_aftermath_end>:
     12c:	30047073          	csrci	mstatus,8

00000130 <__crt0_main_aftermath_end_loop>:
     130:	10500073          	wfi
     134:	ffdff06f          	j	130 <__crt0_main_aftermath_end_loop>

00000138 <__crt0_dummy_trap_handler>:
     138:	ff810113          	addi	sp,sp,-8
     13c:	00812023          	sw	s0,0(sp)
     140:	00912223          	sw	s1,4(sp)
     144:	34202473          	csrr	s0,mcause
     148:	02044663          	bltz	s0,174 <__crt0_dummy_trap_handler_irq>
     14c:	34102473          	csrr	s0,mepc

00000150 <__crt0_dummy_trap_handler_exc_c_check>:
     150:	00041483          	lh	s1,0(s0)
     154:	0034f493          	andi	s1,s1,3
     158:	00240413          	addi	s0,s0,2
     15c:	34141073          	csrw	mepc,s0
     160:	00300413          	li	s0,3
     164:	00941863          	bne	s0,s1,174 <__crt0_dummy_trap_handler_irq>

00000168 <__crt0_dummy_trap_handler_exc_uncrompressed>:
     168:	34102473          	csrr	s0,mepc
     16c:	00240413          	addi	s0,s0,2
     170:	34141073          	csrw	mepc,s0

00000174 <__crt0_dummy_trap_handler_irq>:
     174:	00012403          	lw	s0,0(sp)
     178:	00412483          	lw	s1,4(sp)
     17c:	00810113          	addi	sp,sp,8
     180:	30200073          	mret
     184:	0000                	unimp
     186:	0000                	unimp
     188:	0000                	unimp
     18a:	0000                	unimp
     18c:	0000                	unimp
     18e:	0000                	unimp

00000190 <main>:
     190:	fd010113          	addi	sp,sp,-48
     194:	02112623          	sw	ra,44(sp)
     198:	02812423          	sw	s0,40(sp)
     19c:	02912223          	sw	s1,36(sp)
     1a0:	03212023          	sw	s2,32(sp)
     1a4:	01312e23          	sw	s3,28(sp)
     1a8:	01412c23          	sw	s4,24(sp)
     1ac:	30047073          	csrci	mstatus,8
     1b0:	00000013          	nop
     1b4:	00000013          	nop
     1b8:	00005537          	lui	a0,0x5
     1bc:	00000613          	li	a2,0
     1c0:	00000593          	li	a1,0
     1c4:	b0050513          	addi	a0,a0,-1280 # 4b00 <symbols.0+0x8bc>
     1c8:	3b5010ef          	jal	ra,1d7c <neorv32_uart0_setup>
     1cc:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     1d0:	fcf02823          	sw	a5,-48(zero) # ffffffd0 <__ctr0_io_space_begin+0x1d0>
     1d4:	3d5020ef          	jal	ra,2da8 <neorv32_rte_setup>
     1d8:	00000513          	li	a0,0
     1dc:	3d8030ef          	jal	ra,35b4 <neorv32_rte_check_isa>
     1e0:	00004537          	lui	a0,0x4
     1e4:	8cc50513          	addi	a0,a0,-1844 # 38cc <__etext+0x24>
     1e8:	4cd010ef          	jal	ra,1eb4 <neorv32_uart0_printf>
     1ec:	00004537          	lui	a0,0x4
     1f0:	8e450513          	addi	a0,a0,-1820 # 38e4 <__etext+0x3c>
     1f4:	4c1010ef          	jal	ra,1eb4 <neorv32_uart0_printf>
     1f8:	00000793          	li	a5,0
     1fc:	32079073          	csrw	mcountinhibit,a5
     200:	00700793          	li	a5,7
     204:	30679073          	csrw	mcounteren,a5
     208:	fff00513          	li	a0,-1
     20c:	fff00593          	li	a1,-1
     210:	201010ef          	jal	ra,1c10 <neorv32_mtime_set_timecmp>
     214:	00000513          	li	a0,0
     218:	00000593          	li	a1,0
     21c:	1b5010ef          	jal	ra,1bd0 <neorv32_mtime_set_time>
     220:	298030ef          	jal	ra,34b8 <neorv32_rte_print_logo>
     224:	264030ef          	jal	ra,3488 <neorv32_rte_print_credits>
     228:	479020ef          	jal	ra,2ea0 <neorv32_rte_print_hw_config>
     22c:	00004537          	lui	a0,0x4
     230:	90450513          	addi	a0,a0,-1788 # 3904 <__etext+0x5c>
     234:	481010ef          	jal	ra,1eb4 <neorv32_uart0_printf>
     238:	00000493          	li	s1,0
     23c:	00000413          	li	s0,0
     240:	000029b7          	lui	s3,0x2
     244:	01d00913          	li	s2,29
     248:	00040513          	mv	a0,s0
     24c:	81898593          	addi	a1,s3,-2024 # 1818 <global_trap_handler>
     250:	00140413          	addi	s0,s0,1
     254:	2fd020ef          	jal	ra,2d50 <neorv32_rte_exception_install>
     258:	0ff47413          	andi	s0,s0,255
     25c:	00a484b3          	add	s1,s1,a0
     260:	ff2414e3          	bne	s0,s2,248 <main+0xb8>
     264:	02048a63          	beqz	s1,298 <main+0x108>
     268:	00004537          	lui	a0,0x4
     26c:	91450513          	addi	a0,a0,-1772 # 3914 <__etext+0x6c>
     270:	445010ef          	jal	ra,1eb4 <neorv32_uart0_printf>
     274:	00100513          	li	a0,1
     278:	02c12083          	lw	ra,44(sp)
     27c:	02812403          	lw	s0,40(sp)
     280:	02412483          	lw	s1,36(sp)
     284:	02012903          	lw	s2,32(sp)
     288:	01c12983          	lw	s3,28(sp)
     28c:	01812a03          	lw	s4,24(sp)
     290:	03010113          	addi	sp,sp,48
     294:	00008067          	ret
     298:	00000513          	li	a0,0
     29c:	5b4010ef          	jal	ra,1850 <sim_irq_trigger>
     2a0:	30449073          	csrw	mie,s1
     2a4:	00004537          	lui	a0,0x4
     2a8:	91c50513          	addi	a0,a0,-1764 # 391c <__etext+0x74>
     2ac:	409010ef          	jal	ra,1eb4 <neorv32_uart0_printf>
     2b0:	0000100f          	fence.i
     2b4:	30046073          	csrsi	mstatus,8
     2b8:	00000013          	nop
     2bc:	00000013          	nop
     2c0:	34249073          	csrw	mcause,s1
     2c4:	8101a583          	lw	a1,-2032(gp) # 80000010 <cnt_test>
     2c8:	00004537          	lui	a0,0x4
     2cc:	93050513          	addi	a0,a0,-1744 # 3930 <__etext+0x88>
     2d0:	3e5010ef          	jal	ra,1eb4 <neorv32_uart0_printf>
     2d4:	3b4020ef          	jal	ra,2688 <neorv32_cpu_hpm_get_counters>
     2d8:	80a1aa23          	sw	a0,-2028(gp) # 80000014 <num_hpm_cnts_global>
     2dc:	81018413          	addi	s0,gp,-2032 # 80000010 <cnt_test>
     2e0:	00051463          	bnez	a0,2e8 <main+0x158>
     2e4:	3340106f          	j	1618 <main+0x1488>
     2e8:	00042783          	lw	a5,0(s0)
     2ec:	00178793          	addi	a5,a5,1
     2f0:	00f42023          	sw	a5,0(s0)
     2f4:	b0349073          	csrw	mhpmcounter3,s1
     2f8:	00800793          	li	a5,8
     2fc:	32379073          	csrw	mhpmevent3,a5
     300:	b0449073          	csrw	mhpmcounter4,s1
     304:	01000793          	li	a5,16
     308:	32479073          	csrw	mhpmevent4,a5
     30c:	b0549073          	csrw	mhpmcounter5,s1
     310:	02000793          	li	a5,32
     314:	32579073          	csrw	mhpmevent5,a5
     318:	b0649073          	csrw	mhpmcounter6,s1
     31c:	04000793          	li	a5,64
     320:	32679073          	csrw	mhpmevent6,a5
     324:	b0749073          	csrw	mhpmcounter7,s1
     328:	08000793          	li	a5,128
     32c:	32779073          	csrw	mhpmevent7,a5
     330:	b0849073          	csrw	mhpmcounter8,s1
     334:	10000793          	li	a5,256
     338:	32879073          	csrw	mhpmevent8,a5
     33c:	b0949073          	csrw	mhpmcounter9,s1
     340:	20000793          	li	a5,512
     344:	32979073          	csrw	mhpmevent9,a5
     348:	b0a49073          	csrw	mhpmcounter10,s1
     34c:	40000793          	li	a5,1024
     350:	32a79073          	csrw	mhpmevent10,a5
     354:	b0b49073          	csrw	mhpmcounter11,s1
     358:	000017b7          	lui	a5,0x1
     35c:	80078713          	addi	a4,a5,-2048 # 800 <main+0x670>
     360:	32b71073          	csrw	mhpmevent11,a4
     364:	b0c49073          	csrw	mhpmcounter12,s1
     368:	32c79073          	csrw	mhpmevent12,a5
     36c:	b0d49073          	csrw	mhpmcounter13,s1
     370:	000027b7          	lui	a5,0x2
     374:	32d79073          	csrw	mhpmevent13,a5
     378:	b0e49073          	csrw	mhpmcounter14,s1
     37c:	000047b7          	lui	a5,0x4
     380:	32e79073          	csrw	mhpmevent14,a5
     384:	32049073          	csrw	mcountinhibit,s1
     388:	342027f3          	csrr	a5,mcause
     38c:	00078463          	beqz	a5,394 <main+0x204>
     390:	2800106f          	j	1610 <main+0x1480>
     394:	4d0010ef          	jal	ra,1864 <test_ok>
     398:	00000793          	li	a5,0
     39c:	34279073          	csrw	mcause,a5
     3a0:	00042583          	lw	a1,0(s0)
     3a4:	00004537          	lui	a0,0x4
     3a8:	95850513          	addi	a0,a0,-1704 # 3958 <__etext+0xb0>
     3ac:	309010ef          	jal	ra,1eb4 <neorv32_uart0_printf>
     3b0:	00042783          	lw	a5,0(s0)
     3b4:	00178793          	addi	a5,a5,1 # 4001 <__etext+0x759>
     3b8:	00f42023          	sw	a5,0(s0)
     3bc:	3200f073          	csrci	mcountinhibit,1
     3c0:	fff00513          	li	a0,-1
     3c4:	00000593          	li	a1,0
     3c8:	691010ef          	jal	ra,2258 <neorv32_cpu_set_mcycle>
     3cc:	b8002773          	csrr	a4,mcycleh
     3d0:	00100793          	li	a5,1
     3d4:	00f70463          	beq	a4,a5,3dc <main+0x24c>
     3d8:	2500106f          	j	1628 <main+0x1498>
     3dc:	342027f3          	csrr	a5,mcause
     3e0:	00078463          	beqz	a5,3e8 <main+0x258>
     3e4:	2440106f          	j	1628 <main+0x1498>
     3e8:	47c010ef          	jal	ra,1864 <test_ok>
     3ec:	00000793          	li	a5,0
     3f0:	34279073          	csrw	mcause,a5
     3f4:	00042583          	lw	a1,0(s0)
     3f8:	00004537          	lui	a0,0x4
     3fc:	97050513          	addi	a0,a0,-1680 # 3970 <__etext+0xc8>
     400:	2b5010ef          	jal	ra,1eb4 <neorv32_uart0_printf>
     404:	00042783          	lw	a5,0(s0)
     408:	00178793          	addi	a5,a5,1
     40c:	00f42023          	sw	a5,0(s0)
     410:	32027073          	csrci	mcountinhibit,4
     414:	fff00513          	li	a0,-1
     418:	00000593          	li	a1,0
     41c:	651010ef          	jal	ra,226c <neorv32_cpu_set_minstret>
     420:	c8202773          	rdinstreth	a4
     424:	00100793          	li	a5,1
     428:	00f70463          	beq	a4,a5,430 <main+0x2a0>
     42c:	2040106f          	j	1630 <main+0x14a0>
     430:	342027f3          	csrr	a5,mcause
     434:	00078463          	beqz	a5,43c <main+0x2ac>
     438:	1f80106f          	j	1630 <main+0x14a0>
     43c:	428010ef          	jal	ra,1864 <test_ok>
     440:	00000793          	li	a5,0
     444:	34279073          	csrw	mcause,a5
     448:	00042583          	lw	a1,0(s0)
     44c:	00004537          	lui	a0,0x4
     450:	98850513          	addi	a0,a0,-1656 # 3988 <__etext+0xe0>
     454:	261010ef          	jal	ra,1eb4 <neorv32_uart0_printf>
     458:	00042783          	lw	a5,0(s0)
     45c:	00178793          	addi	a5,a5,1
     460:	00f42023          	sw	a5,0(s0)
     464:	320027f3          	csrr	a5,mcountinhibit
     468:	0017e793          	ori	a5,a5,1
     46c:	32079073          	csrw	mcountinhibit,a5
     470:	c0002773          	rdcycle	a4
     474:	00000013          	nop
     478:	00000013          	nop
     47c:	c00027f3          	rdcycle	a5
     480:	00e78463          	beq	a5,a4,488 <main+0x2f8>
     484:	1b40106f          	j	1638 <main+0x14a8>
     488:	00079463          	bnez	a5,490 <main+0x300>
     48c:	1ac0106f          	j	1638 <main+0x14a8>
     490:	342027f3          	csrr	a5,mcause
     494:	00078463          	beqz	a5,49c <main+0x30c>
     498:	1a00106f          	j	1638 <main+0x14a8>
     49c:	3c8010ef          	jal	ra,1864 <test_ok>
     4a0:	320027f3          	csrr	a5,mcountinhibit
     4a4:	ffe7f793          	andi	a5,a5,-2
     4a8:	32079073          	csrw	mcountinhibit,a5
     4ac:	00000793          	li	a5,0
     4b0:	34279073          	csrw	mcause,a5
     4b4:	00042583          	lw	a1,0(s0)
     4b8:	00004537          	lui	a0,0x4
     4bc:	9a450513          	addi	a0,a0,-1628 # 39a4 <__etext+0xfc>
     4c0:	1f5010ef          	jal	ra,1eb4 <neorv32_uart0_printf>
     4c4:	00042783          	lw	a5,0(s0)
     4c8:	00178793          	addi	a5,a5,1
     4cc:	00f42023          	sw	a5,0(s0)
     4d0:	306027f3          	csrr	a5,mcounteren
     4d4:	ffe7f793          	andi	a5,a5,-2
     4d8:	30679073          	csrw	mcounteren,a5
     4dc:	00100793          	li	a5,1
     4e0:	c0079073          	csrw	cycle,a5
     4e4:	59d010ef          	jal	ra,2280 <neorv32_cpu_goto_user_mode>
     4e8:	00000493          	li	s1,0
     4ec:	c00024f3          	rdcycle	s1
     4f0:	00048c63          	beqz	s1,508 <main+0x378>
     4f4:	00004537          	lui	a0,0x4
     4f8:	01b00613          	li	a2,27
     4fc:	01b00593          	li	a1,27
     500:	9c050513          	addi	a0,a0,-1600 # 39c0 <__etext+0x118>
     504:	1b1010ef          	jal	ra,1eb4 <neorv32_uart0_printf>
     508:	34202773          	csrr	a4,mcause
     50c:	00200793          	li	a5,2
     510:	00f70463          	beq	a4,a5,518 <main+0x388>
     514:	12c0106f          	j	1640 <main+0x14b0>
     518:	00048463          	beqz	s1,520 <main+0x390>
     51c:	1240106f          	j	1640 <main+0x14b0>
     520:	344010ef          	jal	ra,1864 <test_ok>
     524:	306027f3          	csrr	a5,mcounteren
     528:	0017e793          	ori	a5,a5,1
     52c:	30679073          	csrw	mcounteren,a5
     530:	00000793          	li	a5,0
     534:	34279073          	csrw	mcause,a5
     538:	00042583          	lw	a1,0(s0)
     53c:	00004537          	lui	a0,0x4
     540:	9e050513          	addi	a0,a0,-1568 # 39e0 <__etext+0x138>
     544:	171010ef          	jal	ra,1eb4 <neorv32_uart0_printf>
     548:	00042783          	lw	a5,0(s0)
     54c:	00178793          	addi	a5,a5,1
     550:	00f42023          	sw	a5,0(s0)
     554:	52d010ef          	jal	ra,2280 <neorv32_cpu_goto_user_mode>
     558:	30200073          	mret
     55c:	34202773          	csrr	a4,mcause
     560:	00200793          	li	a5,2
     564:	00f70463          	beq	a4,a5,56c <main+0x3dc>
     568:	0e00106f          	j	1648 <main+0x14b8>
     56c:	2f8010ef          	jal	ra,1864 <test_ok>
     570:	00000793          	li	a5,0
     574:	34279073          	csrw	mcause,a5
     578:	00042583          	lw	a1,0(s0)
     57c:	00004537          	lui	a0,0x4
     580:	90000637          	lui	a2,0x90000
     584:	9f850513          	addi	a0,a0,-1544 # 39f8 <__etext+0x150>
     588:	12d010ef          	jal	ra,1eb4 <neorv32_uart0_printf>
     58c:	fe802783          	lw	a5,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     590:	0027f793          	andi	a5,a5,2
     594:	00079463          	bnez	a5,59c <main+0x40c>
     598:	0d80106f          	j	1670 <main+0x14e0>
     59c:	00042783          	lw	a5,0(s0)
     5a0:	90000737          	lui	a4,0x90000
     5a4:	00178793          	addi	a5,a5,1
     5a8:	00f42023          	sw	a5,0(s0)
     5ac:	800007b7          	lui	a5,0x80000
     5b0:	00078793          	mv	a5,a5
     5b4:	0007a683          	lw	a3,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
     5b8:	0047a783          	lw	a5,4(a5)
     5bc:	00d72023          	sw	a3,0(a4) # 90000000 <__ctr0_io_space_begin+0x90000200>
     5c0:	00f72223          	sw	a5,4(a4)
     5c4:	000700e7          	jalr	a4
     5c8:	342027f3          	csrr	a5,mcause
     5cc:	00078463          	beqz	a5,5d4 <main+0x444>
     5d0:	0940106f          	j	1664 <main+0x14d4>
     5d4:	34002773          	csrr	a4,mscratch
     5d8:	00f00793          	li	a5,15
     5dc:	00f70463          	beq	a4,a5,5e4 <main+0x454>
     5e0:	0700106f          	j	1650 <main+0x14c0>
     5e4:	280010ef          	jal	ra,1864 <test_ok>
     5e8:	00000793          	li	a5,0
     5ec:	34279073          	csrw	mcause,a5
     5f0:	00042583          	lw	a1,0(s0)
     5f4:	00004537          	lui	a0,0x4
     5f8:	a5850513          	addi	a0,a0,-1448 # 3a58 <__etext+0x1b0>
     5fc:	0b9010ef          	jal	ra,1eb4 <neorv32_uart0_printf>
     600:	00042783          	lw	a5,0(s0)
     604:	00178793          	addi	a5,a5,1
     608:	00f42023          	sw	a5,0(s0)
     60c:	fff027f3          	csrr	a5,0xfff
     610:	34202773          	csrr	a4,mcause
     614:	00200793          	li	a5,2
     618:	00f70463          	beq	a4,a5,620 <main+0x490>
     61c:	0640106f          	j	1680 <main+0x14f0>
     620:	244010ef          	jal	ra,1864 <test_ok>
     624:	00000493          	li	s1,0
     628:	34249073          	csrw	mcause,s1
     62c:	00042583          	lw	a1,0(s0)
     630:	00004537          	lui	a0,0x4
     634:	a7850513          	addi	a0,a0,-1416 # 3a78 <__etext+0x1d0>
     638:	07d010ef          	jal	ra,1eb4 <neorv32_uart0_printf>
     63c:	00042783          	lw	a5,0(s0)
     640:	00178793          	addi	a5,a5,1
     644:	00f42023          	sw	a5,0(s0)
     648:	c0149073          	csrw	time,s1
     64c:	34202773          	csrr	a4,mcause
     650:	00200793          	li	a5,2
     654:	00f70463          	beq	a4,a5,65c <main+0x4cc>
     658:	0300106f          	j	1688 <main+0x14f8>
     65c:	208010ef          	jal	ra,1864 <test_ok>
     660:	00000793          	li	a5,0
     664:	34279073          	csrw	mcause,a5
     668:	00042583          	lw	a1,0(s0)
     66c:	00004537          	lui	a0,0x4
     670:	a9c50513          	addi	a0,a0,-1380 # 3a9c <__etext+0x1f4>
     674:	041010ef          	jal	ra,1eb4 <neorv32_uart0_printf>
     678:	00042783          	lw	a5,0(s0)
     67c:	00178793          	addi	a5,a5,1
     680:	00f42023          	sw	a5,0(s0)
     684:	c0102073          	rdtime	zero
     688:	342027f3          	csrr	a5,mcause
     68c:	00078463          	beqz	a5,694 <main+0x504>
     690:	0000106f          	j	1690 <main+0x1500>
     694:	1d0010ef          	jal	ra,1864 <test_ok>
     698:	00000793          	li	a5,0
     69c:	34279073          	csrw	mcause,a5
     6a0:	00042583          	lw	a1,0(s0)
     6a4:	00004537          	lui	a0,0x4
     6a8:	acc50513          	addi	a0,a0,-1332 # 3acc <__etext+0x224>
     6ac:	009010ef          	jal	ra,1eb4 <neorv32_uart0_printf>
     6b0:	301027f3          	csrr	a5,misa
     6b4:	0047f793          	andi	a5,a5,4
     6b8:	00078463          	beqz	a5,6c0 <main+0x530>
     6bc:	7e50006f          	j	16a0 <main+0x1510>
     6c0:	00042783          	lw	a5,0(s0)
     6c4:	00178793          	addi	a5,a5,1
     6c8:	00f42023          	sw	a5,0(s0)
     6cc:	00200793          	li	a5,2
     6d0:	000780e7          	jalr	a5
     6d4:	00000013          	nop
     6d8:	342027f3          	csrr	a5,mcause
     6dc:	00078463          	beqz	a5,6e4 <main+0x554>
     6e0:	7b90006f          	j	1698 <main+0x1508>
     6e4:	180010ef          	jal	ra,1864 <test_ok>
     6e8:	00000793          	li	a5,0
     6ec:	34279073          	csrw	mcause,a5
     6f0:	00042583          	lw	a1,0(s0)
     6f4:	00004537          	lui	a0,0x4
     6f8:	b1050513          	addi	a0,a0,-1264 # 3b10 <__etext+0x268>
     6fc:	7b8010ef          	jal	ra,1eb4 <neorv32_uart0_printf>
     700:	00042783          	lw	a5,0(s0)
     704:	00178793          	addi	a5,a5,1
     708:	00f42023          	sw	a5,0(s0)
     70c:	dfc00793          	li	a5,-516
     710:	000780e7          	jalr	a5
     714:	34202773          	csrr	a4,mcause
     718:	00100793          	li	a5,1
     71c:	00f70463          	beq	a4,a5,724 <main+0x594>
     720:	7910006f          	j	16b0 <main+0x1520>
     724:	140010ef          	jal	ra,1864 <test_ok>
     728:	00000793          	li	a5,0
     72c:	34279073          	csrw	mcause,a5
     730:	00042583          	lw	a1,0(s0)
     734:	00004537          	lui	a0,0x4
     738:	b3850513          	addi	a0,a0,-1224 # 3b38 <__etext+0x290>
     73c:	778010ef          	jal	ra,1eb4 <neorv32_uart0_printf>
     740:	00042783          	lw	a5,0(s0)
     744:	00178793          	addi	a5,a5,1
     748:	00f42023          	sw	a5,0(s0)
     74c:	00000013          	nop
     750:	80000033          	0x80000033
     754:	34202773          	csrr	a4,mcause
     758:	00200793          	li	a5,2
     75c:	00f70463          	beq	a4,a5,764 <main+0x5d4>
     760:	7590006f          	j	16b8 <main+0x1528>
     764:	34302773          	csrr	a4,mtval
     768:	800007b7          	lui	a5,0x80000
     76c:	03378793          	addi	a5,a5,51 # 80000033 <__ctr0_io_space_begin+0x80000233>
     770:	00f70463          	beq	a4,a5,778 <main+0x5e8>
     774:	7450006f          	j	16b8 <main+0x1528>
     778:	0ec010ef          	jal	ra,1864 <test_ok>
     77c:	00000793          	li	a5,0
     780:	34279073          	csrw	mcause,a5
     784:	00042583          	lw	a1,0(s0)
     788:	00004537          	lui	a0,0x4
     78c:	b5c50513          	addi	a0,a0,-1188 # 3b5c <__etext+0x2b4>
     790:	724010ef          	jal	ra,1eb4 <neorv32_uart0_printf>
     794:	301027f3          	csrr	a5,misa
     798:	0047f793          	andi	a5,a5,4
     79c:	00079463          	bnez	a5,7a4 <main+0x614>
     7a0:	7290006f          	j	16c8 <main+0x1538>
     7a4:	00042783          	lw	a5,0(s0)
     7a8:	00178793          	addi	a5,a5,1
     7ac:	00f42023          	sw	a5,0(s0)
     7b0:	0001                	nop
     7b2:	0000                	unimp
     7b4:	34202773          	csrr	a4,mcause
     7b8:	00200793          	li	a5,2
     7bc:	00f70463          	beq	a4,a5,7c4 <main+0x634>
     7c0:	7010006f          	j	16c0 <main+0x1530>
     7c4:	0a0010ef          	jal	ra,1864 <test_ok>
     7c8:	00000793          	li	a5,0
     7cc:	34279073          	csrw	mcause,a5
     7d0:	00042583          	lw	a1,0(s0)
     7d4:	00004537          	lui	a0,0x4
     7d8:	b8850513          	addi	a0,a0,-1144 # 3b88 <__etext+0x2e0>
     7dc:	6d8010ef          	jal	ra,1eb4 <neorv32_uart0_printf>
     7e0:	00042783          	lw	a5,0(s0)
     7e4:	00178793          	addi	a5,a5,1
     7e8:	00f42023          	sw	a5,0(s0)
     7ec:	00100073          	ebreak
     7f0:	34202773          	csrr	a4,mcause
     7f4:	00300793          	li	a5,3
     7f8:	00f70463          	beq	a4,a5,800 <main+0x670>
     7fc:	6dd0006f          	j	16d8 <main+0x1548>
     800:	064010ef          	jal	ra,1864 <test_ok>
     804:	00000793          	li	a5,0
     808:	34279073          	csrw	mcause,a5
     80c:	00042583          	lw	a1,0(s0)
     810:	00004537          	lui	a0,0x4
     814:	ba850513          	addi	a0,a0,-1112 # 3ba8 <__etext+0x300>
     818:	69c010ef          	jal	ra,1eb4 <neorv32_uart0_printf>
     81c:	00042783          	lw	a5,0(s0)
     820:	00178793          	addi	a5,a5,1
     824:	00f42023          	sw	a5,0(s0)
     828:	00100793          	li	a5,1
     82c:	0007a703          	lw	a4,0(a5)
     830:	342026f3          	csrr	a3,mcause
     834:	00400713          	li	a4,4
     838:	00e68463          	beq	a3,a4,840 <main+0x6b0>
     83c:	6a50006f          	j	16e0 <main+0x1550>
     840:	34302773          	csrr	a4,mtval
     844:	00f70463          	beq	a4,a5,84c <main+0x6bc>
     848:	6990006f          	j	16e0 <main+0x1550>
     84c:	018010ef          	jal	ra,1864 <test_ok>
     850:	00000793          	li	a5,0
     854:	34279073          	csrw	mcause,a5
     858:	00042583          	lw	a1,0(s0)
     85c:	00004537          	lui	a0,0x4
     860:	bd450513          	addi	a0,a0,-1068 # 3bd4 <__etext+0x32c>
     864:	650010ef          	jal	ra,1eb4 <neorv32_uart0_printf>
     868:	00042783          	lw	a5,0(s0)
     86c:	00178793          	addi	a5,a5,1
     870:	00f42023          	sw	a5,0(s0)
     874:	dfc00793          	li	a5,-516
     878:	0007a783          	lw	a5,0(a5)
     87c:	34202773          	csrr	a4,mcause
     880:	00500793          	li	a5,5
     884:	00f70463          	beq	a4,a5,88c <main+0x6fc>
     888:	6610006f          	j	16e8 <main+0x1558>
     88c:	7d9000ef          	jal	ra,1864 <test_ok>
     890:	00000493          	li	s1,0
     894:	34249073          	csrw	mcause,s1
     898:	00042583          	lw	a1,0(s0)
     89c:	00004537          	lui	a0,0x4
     8a0:	bf850513          	addi	a0,a0,-1032 # 3bf8 <__etext+0x350>
     8a4:	610010ef          	jal	ra,1eb4 <neorv32_uart0_printf>
     8a8:	00042783          	lw	a5,0(s0)
     8ac:	00178793          	addi	a5,a5,1
     8b0:	00f42023          	sw	a5,0(s0)
     8b4:	00200793          	li	a5,2
     8b8:	0097a023          	sw	s1,0(a5)
     8bc:	34202773          	csrr	a4,mcause
     8c0:	00600793          	li	a5,6
     8c4:	00f70463          	beq	a4,a5,8cc <main+0x73c>
     8c8:	6290006f          	j	16f0 <main+0x1560>
     8cc:	799000ef          	jal	ra,1864 <test_ok>
     8d0:	00000493          	li	s1,0
     8d4:	34249073          	csrw	mcause,s1
     8d8:	00042583          	lw	a1,0(s0)
     8dc:	00004537          	lui	a0,0x4
     8e0:	c2450513          	addi	a0,a0,-988 # 3c24 <__etext+0x37c>
     8e4:	5d0010ef          	jal	ra,1eb4 <neorv32_uart0_printf>
     8e8:	00042783          	lw	a5,0(s0)
     8ec:	00178793          	addi	a5,a5,1
     8f0:	00f42023          	sw	a5,0(s0)
     8f4:	dfc00793          	li	a5,-516
     8f8:	0097a023          	sw	s1,0(a5)
     8fc:	34202773          	csrr	a4,mcause
     900:	00700793          	li	a5,7
     904:	00f70463          	beq	a4,a5,90c <main+0x77c>
     908:	5f10006f          	j	16f8 <main+0x1568>
     90c:	759000ef          	jal	ra,1864 <test_ok>
     910:	00000793          	li	a5,0
     914:	34279073          	csrw	mcause,a5
     918:	00042583          	lw	a1,0(s0)
     91c:	00004537          	lui	a0,0x4
     920:	c4850513          	addi	a0,a0,-952 # 3c48 <__etext+0x3a0>
     924:	590010ef          	jal	ra,1eb4 <neorv32_uart0_printf>
     928:	00042783          	lw	a5,0(s0)
     92c:	00178793          	addi	a5,a5,1
     930:	00f42023          	sw	a5,0(s0)
     934:	00000073          	ecall
     938:	34202773          	csrr	a4,mcause
     93c:	00b00793          	li	a5,11
     940:	00f70463          	beq	a4,a5,948 <main+0x7b8>
     944:	5bd0006f          	j	1700 <main+0x1570>
     948:	71d000ef          	jal	ra,1864 <test_ok>
     94c:	00000793          	li	a5,0
     950:	34279073          	csrw	mcause,a5
     954:	00042583          	lw	a1,0(s0)
     958:	00004537          	lui	a0,0x4
     95c:	c7850513          	addi	a0,a0,-904 # 3c78 <__etext+0x3d0>
     960:	554010ef          	jal	ra,1eb4 <neorv32_uart0_printf>
     964:	00042783          	lw	a5,0(s0)
     968:	00178793          	addi	a5,a5,1
     96c:	00f42023          	sw	a5,0(s0)
     970:	111010ef          	jal	ra,2280 <neorv32_cpu_goto_user_mode>
     974:	00000073          	ecall
     978:	34202773          	csrr	a4,mcause
     97c:	00800793          	li	a5,8
     980:	00f70463          	beq	a4,a5,988 <main+0x7f8>
     984:	5850006f          	j	1708 <main+0x1578>
     988:	6dd000ef          	jal	ra,1864 <test_ok>
     98c:	00000793          	li	a5,0
     990:	34279073          	csrw	mcause,a5
     994:	00042583          	lw	a1,0(s0)
     998:	00004537          	lui	a0,0x4
     99c:	ca850513          	addi	a0,a0,-856 # 3ca8 <__etext+0x400>
     9a0:	514010ef          	jal	ra,1eb4 <neorv32_uart0_printf>
     9a4:	00042783          	lw	a5,0(s0)
     9a8:	fff00513          	li	a0,-1
     9ac:	fff00593          	li	a1,-1
     9b0:	00178793          	addi	a5,a5,1
     9b4:	00f42023          	sw	a5,0(s0)
     9b8:	258010ef          	jal	ra,1c10 <neorv32_mtime_set_timecmp>
     9bc:	00000513          	li	a0,0
     9c0:	00000593          	li	a1,0
     9c4:	20c010ef          	jal	ra,1bd0 <neorv32_mtime_set_time>
     9c8:	00000513          	li	a0,0
     9cc:	00100593          	li	a1,1
     9d0:	240010ef          	jal	ra,1c10 <neorv32_mtime_set_timecmp>
     9d4:	00000593          	li	a1,0
     9d8:	ffe00513          	li	a0,-2
     9dc:	1f4010ef          	jal	ra,1bd0 <neorv32_mtime_set_time>
     9e0:	00700513          	li	a0,7
     9e4:	7fc010ef          	jal	ra,21e0 <neorv32_cpu_irq_enable>
     9e8:	00000013          	nop
     9ec:	00000013          	nop
     9f0:	00700513          	li	a0,7
     9f4:	029010ef          	jal	ra,221c <neorv32_cpu_irq_disable>
     9f8:	34202773          	csrr	a4,mcause
     9fc:	800007b7          	lui	a5,0x80000
     a00:	00778793          	addi	a5,a5,7 # 80000007 <__ctr0_io_space_begin+0x80000207>
     a04:	00f70463          	beq	a4,a5,a0c <main+0x87c>
     a08:	5090006f          	j	1710 <main+0x1580>
     a0c:	659000ef          	jal	ra,1864 <test_ok>
     a10:	fff00513          	li	a0,-1
     a14:	fff00593          	li	a1,-1
     a18:	1f8010ef          	jal	ra,1c10 <neorv32_mtime_set_timecmp>
     a1c:	00000793          	li	a5,0
     a20:	34279073          	csrw	mcause,a5
     a24:	00042583          	lw	a1,0(s0)
     a28:	00004537          	lui	a0,0x4
     a2c:	cbc50513          	addi	a0,a0,-836 # 3cbc <__etext+0x414>
     a30:	484010ef          	jal	ra,1eb4 <neorv32_uart0_printf>
     a34:	00042783          	lw	a5,0(s0)
     a38:	00300513          	li	a0,3
     a3c:	00178793          	addi	a5,a5,1
     a40:	00f42023          	sw	a5,0(s0)
     a44:	79c010ef          	jal	ra,21e0 <neorv32_cpu_irq_enable>
     a48:	00800513          	li	a0,8
     a4c:	605000ef          	jal	ra,1850 <sim_irq_trigger>
     a50:	00000013          	nop
     a54:	00000013          	nop
     a58:	00300513          	li	a0,3
     a5c:	7c0010ef          	jal	ra,221c <neorv32_cpu_irq_disable>
     a60:	34202773          	csrr	a4,mcause
     a64:	800007b7          	lui	a5,0x80000
     a68:	00378793          	addi	a5,a5,3 # 80000003 <__ctr0_io_space_begin+0x80000203>
     a6c:	4af716e3          	bne	a4,a5,1718 <main+0x1588>
     a70:	5f5000ef          	jal	ra,1864 <test_ok>
     a74:	00000793          	li	a5,0
     a78:	34279073          	csrw	mcause,a5
     a7c:	00042583          	lw	a1,0(s0)
     a80:	00004537          	lui	a0,0x4
     a84:	cd450513          	addi	a0,a0,-812 # 3cd4 <__etext+0x42c>
     a88:	42c010ef          	jal	ra,1eb4 <neorv32_uart0_printf>
     a8c:	00042783          	lw	a5,0(s0)
     a90:	00b00513          	li	a0,11
     a94:	00178793          	addi	a5,a5,1
     a98:	00f42023          	sw	a5,0(s0)
     a9c:	744010ef          	jal	ra,21e0 <neorv32_cpu_irq_enable>
     aa0:	00001537          	lui	a0,0x1
     aa4:	80050513          	addi	a0,a0,-2048 # 800 <main+0x670>
     aa8:	5a9000ef          	jal	ra,1850 <sim_irq_trigger>
     aac:	00000013          	nop
     ab0:	00000013          	nop
     ab4:	00b00513          	li	a0,11
     ab8:	764010ef          	jal	ra,221c <neorv32_cpu_irq_disable>
     abc:	34202773          	csrr	a4,mcause
     ac0:	800007b7          	lui	a5,0x80000
     ac4:	00b78793          	addi	a5,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
     ac8:	44f71ce3          	bne	a4,a5,1720 <main+0x1590>
     acc:	599000ef          	jal	ra,1864 <test_ok>
     ad0:	00000493          	li	s1,0
     ad4:	34249073          	csrw	mcause,s1
     ad8:	00042583          	lw	a1,0(s0)
     adc:	00004537          	lui	a0,0x4
     ae0:	cec50513          	addi	a0,a0,-788 # 3cec <__etext+0x444>
     ae4:	3d0010ef          	jal	ra,1eb4 <neorv32_uart0_printf>
     ae8:	00042783          	lw	a5,0(s0)
     aec:	00700513          	li	a0,7
     af0:	00178793          	addi	a5,a5,1
     af4:	00f42023          	sw	a5,0(s0)
     af8:	6e8010ef          	jal	ra,21e0 <neorv32_cpu_irq_enable>
     afc:	00100513          	li	a0,1
     b00:	00000593          	li	a1,0
     b04:	0cc010ef          	jal	ra,1bd0 <neorv32_mtime_set_time>
     b08:	00000593          	li	a1,0
     b0c:	00000513          	li	a0,0
     b10:	100010ef          	jal	ra,1c10 <neorv32_mtime_set_timecmp>
     b14:	00700513          	li	a0,7
     b18:	704010ef          	jal	ra,221c <neorv32_cpu_irq_disable>
     b1c:	fff00513          	li	a0,-1
     b20:	fff00593          	li	a1,-1
     b24:	0ec010ef          	jal	ra,1c10 <neorv32_mtime_set_timecmp>
     b28:	53d000ef          	jal	ra,1864 <test_ok>
     b2c:	34249073          	csrw	mcause,s1
     b30:	00042583          	lw	a1,0(s0)
     b34:	00004537          	lui	a0,0x4
     b38:	d0c50513          	addi	a0,a0,-756 # 3d0c <__etext+0x464>
     b3c:	378010ef          	jal	ra,1eb4 <neorv32_uart0_printf>
     b40:	00042783          	lw	a5,0(s0)
     b44:	00700513          	li	a0,7
     b48:	00178793          	addi	a5,a5,1
     b4c:	00f42023          	sw	a5,0(s0)
     b50:	690010ef          	jal	ra,21e0 <neorv32_cpu_irq_enable>
     b54:	30047073          	csrci	mstatus,8
     b58:	00000013          	nop
     b5c:	00000013          	nop
     b60:	00100513          	li	a0,1
     b64:	00000593          	li	a1,0
     b68:	068010ef          	jal	ra,1bd0 <neorv32_mtime_set_time>
     b6c:	00000513          	li	a0,0
     b70:	00000593          	li	a1,0
     b74:	09c010ef          	jal	ra,1c10 <neorv32_mtime_set_timecmp>
     b78:	00000013          	nop
     b7c:	00000013          	nop
     b80:	34402973          	csrr	s2,mip
     b84:	fff00513          	li	a0,-1
     b88:	fff00593          	li	a1,-1
     b8c:	084010ef          	jal	ra,1c10 <neorv32_mtime_set_timecmp>
     b90:	344024f3          	csrr	s1,mip
     b94:	00700513          	li	a0,7
     b98:	08097913          	andi	s2,s2,128
     b9c:	680010ef          	jal	ra,221c <neorv32_cpu_irq_disable>
     ba0:	380904e3          	beqz	s2,1728 <main+0x1598>
     ba4:	0804f493          	andi	s1,s1,128
     ba8:	380490e3          	bnez	s1,1728 <main+0x1598>
     bac:	4b9000ef          	jal	ra,1864 <test_ok>
     bb0:	30046073          	csrsi	mstatus,8
     bb4:	00000013          	nop
     bb8:	00000013          	nop
     bbc:	57d000ef          	jal	ra,1938 <neorv32_wdt_available>
     bc0:	06050663          	beqz	a0,c2c <main+0xa9c>
     bc4:	00000793          	li	a5,0
     bc8:	34279073          	csrw	mcause,a5
     bcc:	00042583          	lw	a1,0(s0)
     bd0:	00004537          	lui	a0,0x4
     bd4:	d2850513          	addi	a0,a0,-728 # 3d28 <__etext+0x480>
     bd8:	2dc010ef          	jal	ra,1eb4 <neorv32_uart0_printf>
     bdc:	00042783          	lw	a5,0(s0)
     be0:	01000513          	li	a0,16
     be4:	00178793          	addi	a5,a5,1
     be8:	00f42023          	sw	a5,0(s0)
     bec:	5f4010ef          	jal	ra,21e0 <neorv32_cpu_irq_enable>
     bf0:	00100613          	li	a2,1
     bf4:	00000593          	li	a1,0
     bf8:	00700513          	li	a0,7
     bfc:	54d000ef          	jal	ra,1948 <neorv32_wdt_setup>
     c00:	fa002e23          	sw	zero,-68(zero) # ffffffbc <__ctr0_io_space_begin+0x1bc>
     c04:	595000ef          	jal	ra,1998 <neorv32_wdt_force>
     c08:	00000013          	nop
     c0c:	01000513          	li	a0,16
     c10:	60c010ef          	jal	ra,221c <neorv32_cpu_irq_disable>
     c14:	34202773          	csrr	a4,mcause
     c18:	800007b7          	lui	a5,0x80000
     c1c:	01078793          	addi	a5,a5,16 # 80000010 <__ctr0_io_space_begin+0x80000210>
     c20:	30f718e3          	bne	a4,a5,1730 <main+0x15a0>
     c24:	441000ef          	jal	ra,1864 <test_ok>
     c28:	559000ef          	jal	ra,1980 <neorv32_wdt_disable>
     c2c:	00042583          	lw	a1,0(s0)
     c30:	00004537          	lui	a0,0x4
     c34:	d3c50513          	addi	a0,a0,-708 # 3d3c <__etext+0x494>
     c38:	27c010ef          	jal	ra,1eb4 <neorv32_uart0_printf>
     c3c:	00004537          	lui	a0,0x4
     c40:	d5050513          	addi	a0,a0,-688 # 3d50 <__etext+0x4a8>
     c44:	270010ef          	jal	ra,1eb4 <neorv32_uart0_printf>
     c48:	404010ef          	jal	ra,204c <neorv32_uart1_available>
     c4c:	08050863          	beqz	a0,cdc <main+0xb4c>
     c50:	00000793          	li	a5,0
     c54:	34279073          	csrw	mcause,a5
     c58:	00042583          	lw	a1,0(s0)
     c5c:	00004537          	lui	a0,0x4
     c60:	d5c50513          	addi	a0,a0,-676 # 3d5c <__etext+0x4b4>
     c64:	250010ef          	jal	ra,1eb4 <neorv32_uart0_printf>
     c68:	00042783          	lw	a5,0(s0)
     c6c:	00178793          	addi	a5,a5,1
     c70:	00f42023          	sw	a5,0(s0)
     c74:	1cc010ef          	jal	ra,1e40 <neorv32_uart0_tx_busy>
     c78:	fe051ee3          	bnez	a0,c74 <main+0xae4>
     c7c:	fa002483          	lw	s1,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     c80:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     c84:	10000737          	lui	a4,0x10000
     c88:	00e7e7b3          	or	a5,a5,a4
     c8c:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     c90:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     c94:	fffff737          	lui	a4,0xfffff
     c98:	fff70713          	addi	a4,a4,-1 # ffffefff <__ctr0_io_space_begin+0xfffff1ff>
     c9c:	00e7f7b3          	and	a5,a5,a4
     ca0:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     ca4:	184010ef          	jal	ra,1e28 <neorv32_uart0_putc>
     ca8:	198010ef          	jal	ra,1e40 <neorv32_uart0_tx_busy>
     cac:	fe051ee3          	bnez	a0,ca8 <main+0xb18>
     cb0:	01200513          	li	a0,18
     cb4:	52c010ef          	jal	ra,21e0 <neorv32_cpu_irq_enable>
     cb8:	00000013          	nop
     cbc:	01200513          	li	a0,18
     cc0:	55c010ef          	jal	ra,221c <neorv32_cpu_irq_disable>
     cc4:	fa902023          	sw	s1,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     cc8:	34202773          	csrr	a4,mcause
     ccc:	800007b7          	lui	a5,0x80000
     cd0:	01278793          	addi	a5,a5,18 # 80000012 <__ctr0_io_space_begin+0x80000212>
     cd4:	26f712e3          	bne	a4,a5,1738 <main+0x15a8>
     cd8:	38d000ef          	jal	ra,1864 <test_ok>
     cdc:	090010ef          	jal	ra,1d6c <neorv32_uart0_available>
     ce0:	08050863          	beqz	a0,d70 <main+0xbe0>
     ce4:	00000793          	li	a5,0
     ce8:	34279073          	csrw	mcause,a5
     cec:	00042583          	lw	a1,0(s0)
     cf0:	00004537          	lui	a0,0x4
     cf4:	d7450513          	addi	a0,a0,-652 # 3d74 <__etext+0x4cc>
     cf8:	1bc010ef          	jal	ra,1eb4 <neorv32_uart0_printf>
     cfc:	00042783          	lw	a5,0(s0)
     d00:	00178793          	addi	a5,a5,1
     d04:	00f42023          	sw	a5,0(s0)
     d08:	138010ef          	jal	ra,1e40 <neorv32_uart0_tx_busy>
     d0c:	fe051ee3          	bnez	a0,d08 <main+0xb78>
     d10:	fa002483          	lw	s1,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     d14:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     d18:	10000737          	lui	a4,0x10000
     d1c:	00e7e7b3          	or	a5,a5,a4
     d20:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     d24:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     d28:	fffff737          	lui	a4,0xfffff
     d2c:	fff70713          	addi	a4,a4,-1 # ffffefff <__ctr0_io_space_begin+0xfffff1ff>
     d30:	00e7f7b3          	and	a5,a5,a4
     d34:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     d38:	0f0010ef          	jal	ra,1e28 <neorv32_uart0_putc>
     d3c:	01300513          	li	a0,19
     d40:	4a0010ef          	jal	ra,21e0 <neorv32_cpu_irq_enable>
     d44:	0fc010ef          	jal	ra,1e40 <neorv32_uart0_tx_busy>
     d48:	fe051ee3          	bnez	a0,d44 <main+0xbb4>
     d4c:	00000013          	nop
     d50:	01300513          	li	a0,19
     d54:	4c8010ef          	jal	ra,221c <neorv32_cpu_irq_disable>
     d58:	fa902023          	sw	s1,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     d5c:	34202773          	csrr	a4,mcause
     d60:	800007b7          	lui	a5,0x80000
     d64:	01378793          	addi	a5,a5,19 # 80000013 <__ctr0_io_space_begin+0x80000213>
     d68:	1cf71ce3          	bne	a4,a5,1740 <main+0x15b0>
     d6c:	2f9000ef          	jal	ra,1864 <test_ok>
     d70:	2dc010ef          	jal	ra,204c <neorv32_uart1_available>
     d74:	08050663          	beqz	a0,e00 <main+0xc70>
     d78:	00000793          	li	a5,0
     d7c:	34279073          	csrw	mcause,a5
     d80:	00042583          	lw	a1,0(s0)
     d84:	00004537          	lui	a0,0x4
     d88:	d8c50513          	addi	a0,a0,-628 # 3d8c <__etext+0x4e4>
     d8c:	128010ef          	jal	ra,1eb4 <neorv32_uart0_printf>
     d90:	00042783          	lw	a5,0(s0)
     d94:	10000737          	lui	a4,0x10000
     d98:	00000513          	li	a0,0
     d9c:	00178793          	addi	a5,a5,1
     da0:	00f42023          	sw	a5,0(s0)
     da4:	fd002403          	lw	s0,-48(zero) # ffffffd0 <__ctr0_io_space_begin+0x1d0>
     da8:	fd002783          	lw	a5,-48(zero) # ffffffd0 <__ctr0_io_space_begin+0x1d0>
     dac:	00e7e7b3          	or	a5,a5,a4
     db0:	fcf02823          	sw	a5,-48(zero) # ffffffd0 <__ctr0_io_space_begin+0x1d0>
     db4:	fd002783          	lw	a5,-48(zero) # ffffffd0 <__ctr0_io_space_begin+0x1d0>
     db8:	fffff737          	lui	a4,0xfffff
     dbc:	fff70713          	addi	a4,a4,-1 # ffffefff <__ctr0_io_space_begin+0xfffff1ff>
     dc0:	00e7f7b3          	and	a5,a5,a4
     dc4:	fcf02823          	sw	a5,-48(zero) # ffffffd0 <__ctr0_io_space_begin+0x1d0>
     dc8:	294010ef          	jal	ra,205c <neorv32_uart1_putc>
     dcc:	2a8010ef          	jal	ra,2074 <neorv32_uart1_tx_busy>
     dd0:	fe051ee3          	bnez	a0,dcc <main+0xc3c>
     dd4:	01400513          	li	a0,20
     dd8:	408010ef          	jal	ra,21e0 <neorv32_cpu_irq_enable>
     ddc:	00000013          	nop
     de0:	01400513          	li	a0,20
     de4:	438010ef          	jal	ra,221c <neorv32_cpu_irq_disable>
     de8:	fc802823          	sw	s0,-48(zero) # ffffffd0 <__ctr0_io_space_begin+0x1d0>
     dec:	34202773          	csrr	a4,mcause
     df0:	800007b7          	lui	a5,0x80000
     df4:	01478793          	addi	a5,a5,20 # 80000014 <__ctr0_io_space_begin+0x80000214>
     df8:	14f718e3          	bne	a4,a5,1748 <main+0x15b8>
     dfc:	269000ef          	jal	ra,1864 <test_ok>
     e00:	24c010ef          	jal	ra,204c <neorv32_uart1_available>
     e04:	81018413          	addi	s0,gp,-2032 # 80000010 <cnt_test>
     e08:	08050663          	beqz	a0,e94 <main+0xd04>
     e0c:	00000793          	li	a5,0
     e10:	34279073          	csrw	mcause,a5
     e14:	00042583          	lw	a1,0(s0)
     e18:	00004537          	lui	a0,0x4
     e1c:	da450513          	addi	a0,a0,-604 # 3da4 <__etext+0x4fc>
     e20:	094010ef          	jal	ra,1eb4 <neorv32_uart0_printf>
     e24:	00042783          	lw	a5,0(s0)
     e28:	fd002483          	lw	s1,-48(zero) # ffffffd0 <__ctr0_io_space_begin+0x1d0>
     e2c:	10000737          	lui	a4,0x10000
     e30:	00178793          	addi	a5,a5,1
     e34:	00f42023          	sw	a5,0(s0)
     e38:	fd002783          	lw	a5,-48(zero) # ffffffd0 <__ctr0_io_space_begin+0x1d0>
     e3c:	00000513          	li	a0,0
     e40:	00e7e7b3          	or	a5,a5,a4
     e44:	fcf02823          	sw	a5,-48(zero) # ffffffd0 <__ctr0_io_space_begin+0x1d0>
     e48:	fd002783          	lw	a5,-48(zero) # ffffffd0 <__ctr0_io_space_begin+0x1d0>
     e4c:	fffff737          	lui	a4,0xfffff
     e50:	fff70713          	addi	a4,a4,-1 # ffffefff <__ctr0_io_space_begin+0xfffff1ff>
     e54:	00e7f7b3          	and	a5,a5,a4
     e58:	fcf02823          	sw	a5,-48(zero) # ffffffd0 <__ctr0_io_space_begin+0x1d0>
     e5c:	200010ef          	jal	ra,205c <neorv32_uart1_putc>
     e60:	01500513          	li	a0,21
     e64:	37c010ef          	jal	ra,21e0 <neorv32_cpu_irq_enable>
     e68:	20c010ef          	jal	ra,2074 <neorv32_uart1_tx_busy>
     e6c:	fe051ee3          	bnez	a0,e68 <main+0xcd8>
     e70:	00000013          	nop
     e74:	01500513          	li	a0,21
     e78:	3a4010ef          	jal	ra,221c <neorv32_cpu_irq_disable>
     e7c:	fc902823          	sw	s1,-48(zero) # ffffffd0 <__ctr0_io_space_begin+0x1d0>
     e80:	34202773          	csrr	a4,mcause
     e84:	800007b7          	lui	a5,0x80000
     e88:	01578793          	addi	a5,a5,21 # 80000015 <__ctr0_io_space_begin+0x80000215>
     e8c:	0cf712e3          	bne	a4,a5,1750 <main+0x15c0>
     e90:	1d5000ef          	jal	ra,1864 <test_ok>
     e94:	780020ef          	jal	ra,3614 <neorv32_spi_available>
     e98:	06050c63          	beqz	a0,f10 <main+0xd80>
     e9c:	00000793          	li	a5,0
     ea0:	34279073          	csrw	mcause,a5
     ea4:	00042583          	lw	a1,0(s0)
     ea8:	00004537          	lui	a0,0x4
     eac:	dbc50513          	addi	a0,a0,-580 # 3dbc <__etext+0x514>
     eb0:	004010ef          	jal	ra,1eb4 <neorv32_uart0_printf>
     eb4:	00042783          	lw	a5,0(s0)
     eb8:	00000693          	li	a3,0
     ebc:	00000613          	li	a2,0
     ec0:	00178793          	addi	a5,a5,1
     ec4:	00000593          	li	a1,0
     ec8:	00000513          	li	a0,0
     ecc:	00f42023          	sw	a5,0(s0)
     ed0:	754020ef          	jal	ra,3624 <neorv32_spi_setup>
     ed4:	00000513          	li	a0,0
     ed8:	7a0020ef          	jal	ra,3678 <neorv32_spi_trans>
     edc:	01600513          	li	a0,22
     ee0:	300010ef          	jal	ra,21e0 <neorv32_cpu_irq_enable>
     ee4:	7a8020ef          	jal	ra,368c <neorv32_spi_busy>
     ee8:	fe051ee3          	bnez	a0,ee4 <main+0xd54>
     eec:	00000013          	nop
     ef0:	01600513          	li	a0,22
     ef4:	328010ef          	jal	ra,221c <neorv32_cpu_irq_disable>
     ef8:	34202773          	csrr	a4,mcause
     efc:	800007b7          	lui	a5,0x80000
     f00:	01678793          	addi	a5,a5,22 # 80000016 <__ctr0_io_space_begin+0x80000216>
     f04:	04f71ae3          	bne	a4,a5,1758 <main+0x15c8>
     f08:	15d000ef          	jal	ra,1864 <test_ok>
     f0c:	758020ef          	jal	ra,3664 <neorv32_spi_disable>
     f10:	0d9010ef          	jal	ra,27e8 <neorv32_twi_available>
     f14:	06050863          	beqz	a0,f84 <main+0xdf4>
     f18:	00000793          	li	a5,0
     f1c:	34279073          	csrw	mcause,a5
     f20:	00042583          	lw	a1,0(s0)
     f24:	00004537          	lui	a0,0x4
     f28:	dd050513          	addi	a0,a0,-560 # 3dd0 <__etext+0x528>
     f2c:	789000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
     f30:	00042783          	lw	a5,0(s0)
     f34:	00000593          	li	a1,0
     f38:	00000513          	li	a0,0
     f3c:	00178793          	addi	a5,a5,1
     f40:	00f42023          	sw	a5,0(s0)
     f44:	0b5010ef          	jal	ra,27f8 <neorv32_twi_setup>
     f48:	125010ef          	jal	ra,286c <neorv32_twi_generate_start>
     f4c:	00000513          	li	a0,0
     f50:	0e5010ef          	jal	ra,2834 <neorv32_twi_trans>
     f54:	101010ef          	jal	ra,2854 <neorv32_twi_generate_stop>
     f58:	01700513          	li	a0,23
     f5c:	284010ef          	jal	ra,21e0 <neorv32_cpu_irq_enable>
     f60:	00000013          	nop
     f64:	01700513          	li	a0,23
     f68:	2b4010ef          	jal	ra,221c <neorv32_cpu_irq_disable>
     f6c:	34202773          	csrr	a4,mcause
     f70:	800007b7          	lui	a5,0x80000
     f74:	01778793          	addi	a5,a5,23 # 80000017 <__ctr0_io_space_begin+0x80000217>
     f78:	7ef71463          	bne	a4,a5,1760 <main+0x15d0>
     f7c:	0e9000ef          	jal	ra,1864 <test_ok>
     f80:	0a1010ef          	jal	ra,2820 <neorv32_twi_disable>
     f84:	00000793          	li	a5,0
     f88:	34279073          	csrw	mcause,a5
     f8c:	00042583          	lw	a1,0(s0)
     f90:	00004537          	lui	a0,0x4
     f94:	de450513          	addi	a0,a0,-540 # 3de4 <__etext+0x53c>
     f98:	71d000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
     f9c:	28d000ef          	jal	ra,1a28 <neorv32_xirq_available>
     fa0:	0a050263          	beqz	a0,1044 <main+0xeb4>
     fa4:	00042783          	lw	a5,0(s0)
     fa8:	81818913          	addi	s2,gp,-2024 # 80000018 <xirq_trap_handler_ack>
     fac:	00178793          	addi	a5,a5,1
     fb0:	00f42023          	sw	a5,0(s0)
     fb4:	00092023          	sw	zero,0(s2)
     fb8:	281000ef          	jal	ra,1a38 <neorv32_xirq_setup>
     fbc:	000025b7          	lui	a1,0x2
     fc0:	00050493          	mv	s1,a0
     fc4:	82858593          	addi	a1,a1,-2008 # 1828 <xirq_trap_handler0>
     fc8:	00000513          	li	a0,0
     fcc:	2a1000ef          	jal	ra,1a6c <neorv32_xirq_install>
     fd0:	000025b7          	lui	a1,0x2
     fd4:	83c58593          	addi	a1,a1,-1988 # 183c <xirq_trap_handler1>
     fd8:	00050a13          	mv	s4,a0
     fdc:	00100513          	li	a0,1
     fe0:	28d000ef          	jal	ra,1a6c <neorv32_xirq_install>
     fe4:	00050993          	mv	s3,a0
     fe8:	01800513          	li	a0,24
     fec:	1f4010ef          	jal	ra,21e0 <neorv32_cpu_irq_enable>
     ff0:	00300513          	li	a0,3
     ff4:	00000593          	li	a1,0
     ff8:	6a0020ef          	jal	ra,3698 <neorv32_gpio_port_set>
     ffc:	00000013          	nop
    1000:	00000013          	nop
    1004:	01800513          	li	a0,24
    1008:	214010ef          	jal	ra,221c <neorv32_cpu_irq_disable>
    100c:	34202773          	csrr	a4,mcause
    1010:	800007b7          	lui	a5,0x80000
    1014:	01878793          	addi	a5,a5,24 # 80000018 <__ctr0_io_space_begin+0x80000218>
    1018:	74f71863          	bne	a4,a5,1768 <main+0x15d8>
    101c:	014484b3          	add	s1,s1,s4
    1020:	013484b3          	add	s1,s1,s3
    1024:	74049263          	bnez	s1,1768 <main+0x15d8>
    1028:	00092703          	lw	a4,0(s2)
    102c:	00400793          	li	a5,4
    1030:	72f71c63          	bne	a4,a5,1768 <main+0x15d8>
    1034:	031000ef          	jal	ra,1864 <test_ok>
    1038:	f8002023          	sw	zero,-128(zero) # ffffff80 <__ctr0_io_space_begin+0x180>
    103c:	fff00793          	li	a5,-1
    1040:	f8f02223          	sw	a5,-124(zero) # ffffff84 <__ctr0_io_space_begin+0x184>
    1044:	00042583          	lw	a1,0(s0)
    1048:	00004537          	lui	a0,0x4
    104c:	df850513          	addi	a0,a0,-520 # 3df8 <__etext+0x550>
    1050:	665000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    1054:	25d000ef          	jal	ra,1ab0 <neorv32_slink_available>
    1058:	0e050e63          	beqz	a0,1154 <main+0xfc4>
    105c:	00000793          	li	a5,0
    1060:	34279073          	csrw	mcause,a5
    1064:	00042583          	lw	a1,0(s0)
    1068:	00004537          	lui	a0,0x4
    106c:	e1850513          	addi	a0,a0,-488 # 3e18 <__etext+0x570>
    1070:	645000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    1074:	00042783          	lw	a5,0(s0)
    1078:	00178793          	addi	a5,a5,1
    107c:	00f42023          	sw	a5,0(s0)
    1080:	241000ef          	jal	ra,1ac0 <neorv32_slink_enable>
    1084:	00100613          	li	a2,1
    1088:	00100593          	li	a1,1
    108c:	00000513          	li	a0,0
    1090:	2ad000ef          	jal	ra,1b3c <neorv32_slink_tx_irq_config>
    1094:	00100613          	li	a2,1
    1098:	00100593          	li	a1,1
    109c:	00000513          	li	a0,0
    10a0:	251000ef          	jal	ra,1af0 <neorv32_slink_rx_irq_config>
    10a4:	01a00513          	li	a0,26
    10a8:	138010ef          	jal	ra,21e0 <neorv32_cpu_irq_enable>
    10ac:	01b00513          	li	a0,27
    10b0:	130010ef          	jal	ra,21e0 <neorv32_cpu_irq_enable>
    10b4:	00000013          	nop
    10b8:	342024f3          	csrr	s1,mcause
    10bc:	800007b7          	lui	a5,0x80000
    10c0:	fe57c793          	xori	a5,a5,-27
    10c4:	00000513          	li	a0,0
    10c8:	00100613          	li	a2,1
    10cc:	00000593          	li	a1,0
    10d0:	00f484b3          	add	s1,s1,a5
    10d4:	269000ef          	jal	ra,1b3c <neorv32_slink_tx_irq_config>
    10d8:	a1b2c537          	lui	a0,0xa1b2c
    10dc:	3d450513          	addi	a0,a0,980 # a1b2c3d4 <__ctr0_io_space_begin+0xa1b2c5d4>
    10e0:	009034b3          	snez	s1,s1
    10e4:	2a9000ef          	jal	ra,1b8c <neorv32_slink_tx0_nonblocking>
    10e8:	00050463          	beqz	a0,10f0 <main+0xf60>
    10ec:	00248493          	addi	s1,s1,2
    10f0:	00000013          	nop
    10f4:	34202773          	csrr	a4,mcause
    10f8:	800007b7          	lui	a5,0x80000
    10fc:	01a78793          	addi	a5,a5,26 # 8000001a <__ctr0_io_space_begin+0x8000021a>
    1100:	00f70463          	beq	a4,a5,1108 <main+0xf78>
    1104:	00448493          	addi	s1,s1,4
    1108:	00000513          	li	a0,0
    110c:	00100613          	li	a2,1
    1110:	00000593          	li	a1,0
    1114:	1dd000ef          	jal	ra,1af0 <neorv32_slink_rx_irq_config>
    1118:	00c10513          	addi	a0,sp,12
    111c:	291000ef          	jal	ra,1bac <neorv32_slink_rx0_nonblocking>
    1120:	00050463          	beqz	a0,1128 <main+0xf98>
    1124:	00848493          	addi	s1,s1,8
    1128:	01a00513          	li	a0,26
    112c:	0f0010ef          	jal	ra,221c <neorv32_cpu_irq_disable>
    1130:	01b00513          	li	a0,27
    1134:	0e8010ef          	jal	ra,221c <neorv32_cpu_irq_disable>
    1138:	62049c63          	bnez	s1,1770 <main+0x15e0>
    113c:	00c12703          	lw	a4,12(sp)
    1140:	a1b2c7b7          	lui	a5,0xa1b2c
    1144:	3d478793          	addi	a5,a5,980 # a1b2c3d4 <__ctr0_io_space_begin+0xa1b2c5d4>
    1148:	62f71463          	bne	a4,a5,1770 <main+0x15e0>
    114c:	718000ef          	jal	ra,1864 <test_ok>
    1150:	189000ef          	jal	ra,1ad8 <neorv32_slink_disable>
    1154:	15d000ef          	jal	ra,1ab0 <neorv32_slink_available>
    1158:	06050463          	beqz	a0,11c0 <main+0x1030>
    115c:	00000793          	li	a5,0
    1160:	34279073          	csrw	mcause,a5
    1164:	00042583          	lw	a1,0(s0)
    1168:	00004537          	lui	a0,0x4
    116c:	e3450513          	addi	a0,a0,-460 # 3e34 <__etext+0x58c>
    1170:	545000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    1174:	00042783          	lw	a5,0(s0)
    1178:	01c00513          	li	a0,28
    117c:	00178793          	addi	a5,a5,1
    1180:	00f42023          	sw	a5,0(s0)
    1184:	05c010ef          	jal	ra,21e0 <neorv32_cpu_irq_enable>
    1188:	00400613          	li	a2,4
    118c:	00000593          	li	a1,0
    1190:	00000513          	li	a0,0
    1194:	019000ef          	jal	ra,19ac <neorv32_gptmr_setup>
    1198:	00000013          	nop
    119c:	00000013          	nop
    11a0:	01c00513          	li	a0,28
    11a4:	078010ef          	jal	ra,221c <neorv32_cpu_irq_disable>
    11a8:	34202773          	csrr	a4,mcause
    11ac:	800007b7          	lui	a5,0x80000
    11b0:	01c78793          	addi	a5,a5,28 # 8000001c <__ctr0_io_space_begin+0x8000021c>
    11b4:	5cf71263          	bne	a4,a5,1778 <main+0x15e8>
    11b8:	6ac000ef          	jal	ra,1864 <test_ok>
    11bc:	021000ef          	jal	ra,19dc <neorv32_gptmr_disable>
    11c0:	00000793          	li	a5,0
    11c4:	34279073          	csrw	mcause,a5
    11c8:	00042583          	lw	a1,0(s0)
    11cc:	00004537          	lui	a0,0x4
    11d0:	e4c50513          	addi	a0,a0,-436 # 3e4c <__etext+0x5a4>
    11d4:	4e1000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    11d8:	00042783          	lw	a5,0(s0)
    11dc:	00178793          	addi	a5,a5,1
    11e0:	00f42023          	sw	a5,0(s0)
    11e4:	201000ef          	jal	ra,1be4 <neorv32_mtime_get_time>
    11e8:	00050793          	mv	a5,a0
    11ec:	1f450513          	addi	a0,a0,500
    11f0:	00f537b3          	sltu	a5,a0,a5
    11f4:	00b785b3          	add	a1,a5,a1
    11f8:	219000ef          	jal	ra,1c10 <neorv32_mtime_set_timecmp>
    11fc:	00700513          	li	a0,7
    1200:	7e1000ef          	jal	ra,21e0 <neorv32_cpu_irq_enable>
    1204:	10500073          	wfi
    1208:	00700513          	li	a0,7
    120c:	010010ef          	jal	ra,221c <neorv32_cpu_irq_disable>
    1210:	fff00513          	li	a0,-1
    1214:	fff00593          	li	a1,-1
    1218:	1f9000ef          	jal	ra,1c10 <neorv32_mtime_set_timecmp>
    121c:	34202773          	csrr	a4,mcause
    1220:	800007b7          	lui	a5,0x80000
    1224:	00778793          	addi	a5,a5,7 # 80000007 <__ctr0_io_space_begin+0x80000207>
    1228:	54f70c63          	beq	a4,a5,1780 <main+0x15f0>
    122c:	674000ef          	jal	ra,18a0 <test_fail>
    1230:	00000793          	li	a5,0
    1234:	34279073          	csrw	mcause,a5
    1238:	00042583          	lw	a1,0(s0)
    123c:	00004537          	lui	a0,0x4
    1240:	e8050513          	addi	a0,a0,-384 # 3e80 <__etext+0x5d8>
    1244:	471000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    1248:	00042783          	lw	a5,0(s0)
    124c:	00178793          	addi	a5,a5,1
    1250:	00f42023          	sw	a5,0(s0)
    1254:	02c010ef          	jal	ra,2280 <neorv32_cpu_goto_user_mode>
    1258:	301027f3          	csrr	a5,misa
    125c:	34202773          	csrr	a4,mcause
    1260:	00200793          	li	a5,2
    1264:	52f71263          	bne	a4,a5,1788 <main+0x15f8>
    1268:	5fc000ef          	jal	ra,1864 <test_ok>
    126c:	00000793          	li	a5,0
    1270:	34279073          	csrw	mcause,a5
    1274:	00042583          	lw	a1,0(s0)
    1278:	00004537          	lui	a0,0x4
    127c:	eb450513          	addi	a0,a0,-332 # 3eb4 <__etext+0x60c>
    1280:	435000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    1284:	00042783          	lw	a5,0(s0)
    1288:	00200513          	li	a0,2
    128c:	00178793          	addi	a5,a5,1
    1290:	00f42023          	sw	a5,0(s0)
    1294:	2e5010ef          	jal	ra,2d78 <neorv32_rte_exception_uninstall>
    1298:	fff027f3          	csrr	a5,0xfff
    129c:	00005537          	lui	a0,0x5
    12a0:	93c50513          	addi	a0,a0,-1732 # 493c <symbols.0+0x6f8>
    12a4:	411000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    12a8:	342027f3          	csrr	a5,mcause
    12ac:	4e078263          	beqz	a5,1790 <main+0x1600>
    12b0:	5b4000ef          	jal	ra,1864 <test_ok>
    12b4:	000025b7          	lui	a1,0x2
    12b8:	81858593          	addi	a1,a1,-2024 # 1818 <global_trap_handler>
    12bc:	00200513          	li	a0,2
    12c0:	291010ef          	jal	ra,2d50 <neorv32_rte_exception_install>
    12c4:	00042583          	lw	a1,0(s0)
    12c8:	00004537          	lui	a0,0x4
    12cc:	ee450513          	addi	a0,a0,-284 # 3ee4 <__etext+0x63c>
    12d0:	3e5000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    12d4:	7c1000ef          	jal	ra,2294 <neorv32_cpu_pmp_get_num_regions>
    12d8:	00004937          	lui	s2,0x4
    12dc:	52050063          	beqz	a0,17fc <main+0x166c>
    12e0:	00000793          	li	a5,0
    12e4:	34279073          	csrw	mcause,a5
    12e8:	00042783          	lw	a5,0(s0)
    12ec:	00178793          	addi	a5,a5,1
    12f0:	00f42023          	sw	a5,0(s0)
    12f4:	058010ef          	jal	ra,234c <neorv32_cpu_pmp_get_granularity>
    12f8:	ff402483          	lw	s1,-12(zero) # fffffff4 <__ctr0_io_space_begin+0x1f4>
    12fc:	00050593          	mv	a1,a0
    1300:	00050993          	mv	s3,a0
    1304:	00004537          	lui	a0,0x4
    1308:	00048613          	mv	a2,s1
    130c:	f0c50513          	addi	a0,a0,-244 # 3f0c <__etext+0x664>
    1310:	3a5000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    1314:	01800693          	li	a3,24
    1318:	00098613          	mv	a2,s3
    131c:	00048593          	mv	a1,s1
    1320:	00000513          	li	a0,0
    1324:	068010ef          	jal	ra,238c <neorv32_cpu_pmp_configure_region>
    1328:	48051063          	bnez	a0,17a8 <main+0x1618>
    132c:	342027f3          	csrr	a5,mcause
    1330:	46079c63          	bnez	a5,17a8 <main+0x1618>
    1334:	530000ef          	jal	ra,1864 <test_ok>
    1338:	00042583          	lw	a1,0(s0)
    133c:	00004537          	lui	a0,0x4
    1340:	f6850513          	addi	a0,a0,-152 # 3f68 <__etext+0x6c0>
    1344:	371000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    1348:	00042783          	lw	a5,0(s0)
    134c:	00178793          	addi	a5,a5,1
    1350:	00f42023          	sw	a5,0(s0)
    1354:	00000793          	li	a5,0
    1358:	34279073          	csrw	mcause,a5
    135c:	725000ef          	jal	ra,2280 <neorv32_cpu_goto_user_mode>
    1360:	000480e7          	jalr	s1
    1364:	342027f3          	csrr	a5,mcause
    1368:	46079463          	bnez	a5,17d0 <main+0x1640>
    136c:	00000073          	ecall
    1370:	530000ef          	jal	ra,18a0 <test_fail>
    1374:	00042583          	lw	a1,0(s0)
    1378:	00004537          	lui	a0,0x4
    137c:	f8450513          	addi	a0,a0,-124 # 3f84 <__etext+0x6dc>
    1380:	335000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    1384:	00042783          	lw	a5,0(s0)
    1388:	00178793          	addi	a5,a5,1
    138c:	00f42023          	sw	a5,0(s0)
    1390:	00000793          	li	a5,0
    1394:	34279073          	csrw	mcause,a5
    1398:	6e9000ef          	jal	ra,2280 <neorv32_cpu_goto_user_mode>
    139c:	0004a783          	lw	a5,0(s1)
    13a0:	00078c63          	beqz	a5,13b8 <main+0x1228>
    13a4:	00004537          	lui	a0,0x4
    13a8:	01b00613          	li	a2,27
    13ac:	01b00593          	li	a1,27
    13b0:	9c050513          	addi	a0,a0,-1600 # 39c0 <__etext+0x118>
    13b4:	301000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    13b8:	34202773          	csrr	a4,mcause
    13bc:	00500793          	li	a5,5
    13c0:	40f71e63          	bne	a4,a5,17dc <main+0x164c>
    13c4:	00000073          	ecall
    13c8:	49c000ef          	jal	ra,1864 <test_ok>
    13cc:	00042583          	lw	a1,0(s0)
    13d0:	00004537          	lui	a0,0x4
    13d4:	f9c50513          	addi	a0,a0,-100 # 3f9c <__etext+0x6f4>
    13d8:	2dd000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    13dc:	00042783          	lw	a5,0(s0)
    13e0:	00000993          	li	s3,0
    13e4:	00178793          	addi	a5,a5,1
    13e8:	00f42023          	sw	a5,0(s0)
    13ec:	34299073          	csrw	mcause,s3
    13f0:	691000ef          	jal	ra,2280 <neorv32_cpu_goto_user_mode>
    13f4:	0134a023          	sw	s3,0(s1)
    13f8:	34202773          	csrr	a4,mcause
    13fc:	00700793          	li	a5,7
    1400:	3ef71463          	bne	a4,a5,17e8 <main+0x1658>
    1404:	00000073          	ecall
    1408:	45c000ef          	jal	ra,1864 <test_ok>
    140c:	00042583          	lw	a1,0(s0)
    1410:	00004537          	lui	a0,0x4
    1414:	fb850513          	addi	a0,a0,-72 # 3fb8 <__etext+0x710>
    1418:	29d000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    141c:	00042783          	lw	a5,0(s0)
    1420:	00178793          	addi	a5,a5,1
    1424:	00f42023          	sw	a5,0(s0)
    1428:	00000793          	li	a5,0
    142c:	34279073          	csrw	mcause,a5
    1430:	08100793          	li	a5,129
    1434:	3a079073          	csrw	pmpcfg0,a5
    1438:	3a0026f3          	csrr	a3,pmpcfg0
    143c:	01900793          	li	a5,25
    1440:	3a079073          	csrw	pmpcfg0,a5
    1444:	3b002773          	csrr	a4,pmpaddr0
    1448:	ababd7b7          	lui	a5,0xababd
    144c:	dcd78793          	addi	a5,a5,-563 # ababcdcd <__ctr0_io_space_begin+0xababcfcd>
    1450:	3b079073          	csrw	pmpaddr0,a5
    1454:	3a0027f3          	csrr	a5,pmpcfg0
    1458:	00d79a63          	bne	a5,a3,146c <main+0x12dc>
    145c:	3b0027f3          	csrr	a5,pmpaddr0
    1460:	00f71663          	bne	a4,a5,146c <main+0x12dc>
    1464:	342027f3          	csrr	a5,mcause
    1468:	38078663          	beqz	a5,17f4 <main+0x1664>
    146c:	434000ef          	jal	ra,18a0 <test_fail>
    1470:	00000493          	li	s1,0
    1474:	34249073          	csrw	mcause,s1
    1478:	00042583          	lw	a1,0(s0)
    147c:	00004537          	lui	a0,0x4
    1480:	fdc50513          	addi	a0,a0,-36 # 3fdc <__etext+0x734>
    1484:	231000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    1488:	94890513          	addi	a0,s2,-1720 # 3948 <__etext+0xa0>
    148c:	229000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    1490:	34249073          	csrw	mcause,s1
    1494:	00042583          	lw	a1,0(s0)
    1498:	00004537          	lui	a0,0x4
    149c:	00c50513          	addi	a0,a0,12 # 400c <__etext+0x764>
    14a0:	215000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    14a4:	94890513          	addi	a0,s2,-1720
    14a8:	20d000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    14ac:	34249073          	csrw	mcause,s1
    14b0:	00042583          	lw	a1,0(s0)
    14b4:	00004537          	lui	a0,0x4
    14b8:	03c50513          	addi	a0,a0,60 # 403c <__etext+0x794>
    14bc:	1f9000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    14c0:	94890513          	addi	a0,s2,-1720
    14c4:	1f1000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    14c8:	fff00793          	li	a5,-1
    14cc:	32079073          	csrw	mcountinhibit,a5
    14d0:	8141a583          	lw	a1,-2028(gp) # 80000014 <num_hpm_cnts_global>
    14d4:	00004537          	lui	a0,0x4
    14d8:	06c50513          	addi	a0,a0,108 # 406c <__etext+0x7c4>
    14dc:	1d9000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    14e0:	c02025f3          	rdinstret	a1
    14e4:	00004537          	lui	a0,0x4
    14e8:	09c50513          	addi	a0,a0,156 # 409c <__etext+0x7f4>
    14ec:	1c9000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    14f0:	c00025f3          	rdcycle	a1
    14f4:	00004537          	lui	a0,0x4
    14f8:	0b050513          	addi	a0,a0,176 # 40b0 <__etext+0x808>
    14fc:	1b9000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    1500:	b03025f3          	csrr	a1,mhpmcounter3
    1504:	00004537          	lui	a0,0x4
    1508:	0c450513          	addi	a0,a0,196 # 40c4 <__etext+0x81c>
    150c:	1a9000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    1510:	b04025f3          	csrr	a1,mhpmcounter4
    1514:	00004537          	lui	a0,0x4
    1518:	0d850513          	addi	a0,a0,216 # 40d8 <__etext+0x830>
    151c:	199000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    1520:	b05025f3          	csrr	a1,mhpmcounter5
    1524:	00004537          	lui	a0,0x4
    1528:	0ec50513          	addi	a0,a0,236 # 40ec <__etext+0x844>
    152c:	189000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    1530:	b06025f3          	csrr	a1,mhpmcounter6
    1534:	00004537          	lui	a0,0x4
    1538:	10050513          	addi	a0,a0,256 # 4100 <__etext+0x858>
    153c:	179000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    1540:	b07025f3          	csrr	a1,mhpmcounter7
    1544:	00004537          	lui	a0,0x4
    1548:	11450513          	addi	a0,a0,276 # 4114 <__etext+0x86c>
    154c:	169000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    1550:	b08025f3          	csrr	a1,mhpmcounter8
    1554:	00004537          	lui	a0,0x4
    1558:	12850513          	addi	a0,a0,296 # 4128 <__etext+0x880>
    155c:	159000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    1560:	b09025f3          	csrr	a1,mhpmcounter9
    1564:	00004537          	lui	a0,0x4
    1568:	13c50513          	addi	a0,a0,316 # 413c <__etext+0x894>
    156c:	149000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    1570:	b0a025f3          	csrr	a1,mhpmcounter10
    1574:	00004537          	lui	a0,0x4
    1578:	15050513          	addi	a0,a0,336 # 4150 <__etext+0x8a8>
    157c:	139000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    1580:	b0b025f3          	csrr	a1,mhpmcounter11
    1584:	00004537          	lui	a0,0x4
    1588:	16450513          	addi	a0,a0,356 # 4164 <__etext+0x8bc>
    158c:	129000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    1590:	b0c025f3          	csrr	a1,mhpmcounter12
    1594:	00004537          	lui	a0,0x4
    1598:	17850513          	addi	a0,a0,376 # 4178 <__etext+0x8d0>
    159c:	119000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    15a0:	b0d025f3          	csrr	a1,mhpmcounter13
    15a4:	00004537          	lui	a0,0x4
    15a8:	18c50513          	addi	a0,a0,396 # 418c <__etext+0x8e4>
    15ac:	109000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    15b0:	b0e025f3          	csrr	a1,mhpmcounter14
    15b4:	00004537          	lui	a0,0x4
    15b8:	1a050513          	addi	a0,a0,416 # 41a0 <__etext+0x8f8>
    15bc:	0f9000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    15c0:	00042703          	lw	a4,0(s0)
    15c4:	80000437          	lui	s0,0x80000
    15c8:	00840493          	addi	s1,s0,8 # 80000008 <__ctr0_io_space_begin+0x80000208>
    15cc:	800007b7          	lui	a5,0x80000
    15d0:	00c7a583          	lw	a1,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
    15d4:	0004a683          	lw	a3,0(s1)
    15d8:	00004537          	lui	a0,0x4
    15dc:	00070613          	mv	a2,a4
    15e0:	1b450513          	addi	a0,a0,436 # 41b4 <__etext+0x90c>
    15e4:	0d1000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    15e8:	0004a783          	lw	a5,0(s1)
    15ec:	00840413          	addi	s0,s0,8
    15f0:	01b00613          	li	a2,27
    15f4:	01b00593          	li	a1,27
    15f8:	20079863          	bnez	a5,1808 <main+0x1678>
    15fc:	00004537          	lui	a0,0x4
    1600:	1e050513          	addi	a0,a0,480 # 41e0 <__etext+0x938>
    1604:	0b1000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    1608:	00042503          	lw	a0,0(s0)
    160c:	c6dfe06f          	j	278 <main+0xe8>
    1610:	290000ef          	jal	ra,18a0 <test_fail>
    1614:	d85fe06f          	j	398 <main+0x208>
    1618:	00004537          	lui	a0,0x4
    161c:	94850513          	addi	a0,a0,-1720 # 3948 <__etext+0xa0>
    1620:	095000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    1624:	d75fe06f          	j	398 <main+0x208>
    1628:	278000ef          	jal	ra,18a0 <test_fail>
    162c:	dc1fe06f          	j	3ec <main+0x25c>
    1630:	270000ef          	jal	ra,18a0 <test_fail>
    1634:	e0dfe06f          	j	440 <main+0x2b0>
    1638:	268000ef          	jal	ra,18a0 <test_fail>
    163c:	e65fe06f          	j	4a0 <main+0x310>
    1640:	260000ef          	jal	ra,18a0 <test_fail>
    1644:	ee1fe06f          	j	524 <main+0x394>
    1648:	258000ef          	jal	ra,18a0 <test_fail>
    164c:	f25fe06f          	j	570 <main+0x3e0>
    1650:	00004537          	lui	a0,0x4
    1654:	a2050513          	addi	a0,a0,-1504 # 3a20 <__etext+0x178>
    1658:	05d000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    165c:	244000ef          	jal	ra,18a0 <test_fail>
    1660:	f89fe06f          	j	5e8 <main+0x458>
    1664:	00004537          	lui	a0,0x4
    1668:	a3c50513          	addi	a0,a0,-1476 # 3a3c <__etext+0x194>
    166c:	fedff06f          	j	1658 <main+0x14c8>
    1670:	00004537          	lui	a0,0x4
    1674:	94850513          	addi	a0,a0,-1720 # 3948 <__etext+0xa0>
    1678:	03d000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    167c:	f6dfe06f          	j	5e8 <main+0x458>
    1680:	220000ef          	jal	ra,18a0 <test_fail>
    1684:	fa1fe06f          	j	624 <main+0x494>
    1688:	218000ef          	jal	ra,18a0 <test_fail>
    168c:	fd5fe06f          	j	660 <main+0x4d0>
    1690:	210000ef          	jal	ra,18a0 <test_fail>
    1694:	804ff06f          	j	698 <main+0x508>
    1698:	208000ef          	jal	ra,18a0 <test_fail>
    169c:	84cff06f          	j	6e8 <main+0x558>
    16a0:	00004537          	lui	a0,0x4
    16a4:	af450513          	addi	a0,a0,-1292 # 3af4 <__etext+0x24c>
    16a8:	00d000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    16ac:	83cff06f          	j	6e8 <main+0x558>
    16b0:	1f0000ef          	jal	ra,18a0 <test_fail>
    16b4:	874ff06f          	j	728 <main+0x598>
    16b8:	1e8000ef          	jal	ra,18a0 <test_fail>
    16bc:	8c0ff06f          	j	77c <main+0x5ec>
    16c0:	1e0000ef          	jal	ra,18a0 <test_fail>
    16c4:	904ff06f          	j	7c8 <main+0x638>
    16c8:	00004537          	lui	a0,0x4
    16cc:	af450513          	addi	a0,a0,-1292 # 3af4 <__etext+0x24c>
    16d0:	7e4000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    16d4:	8f4ff06f          	j	7c8 <main+0x638>
    16d8:	1c8000ef          	jal	ra,18a0 <test_fail>
    16dc:	928ff06f          	j	804 <main+0x674>
    16e0:	1c0000ef          	jal	ra,18a0 <test_fail>
    16e4:	96cff06f          	j	850 <main+0x6c0>
    16e8:	1b8000ef          	jal	ra,18a0 <test_fail>
    16ec:	9a4ff06f          	j	890 <main+0x700>
    16f0:	1b0000ef          	jal	ra,18a0 <test_fail>
    16f4:	9dcff06f          	j	8d0 <main+0x740>
    16f8:	1a8000ef          	jal	ra,18a0 <test_fail>
    16fc:	a14ff06f          	j	910 <main+0x780>
    1700:	1a0000ef          	jal	ra,18a0 <test_fail>
    1704:	a48ff06f          	j	94c <main+0x7bc>
    1708:	198000ef          	jal	ra,18a0 <test_fail>
    170c:	a80ff06f          	j	98c <main+0x7fc>
    1710:	190000ef          	jal	ra,18a0 <test_fail>
    1714:	afcff06f          	j	a10 <main+0x880>
    1718:	188000ef          	jal	ra,18a0 <test_fail>
    171c:	b58ff06f          	j	a74 <main+0x8e4>
    1720:	180000ef          	jal	ra,18a0 <test_fail>
    1724:	bacff06f          	j	ad0 <main+0x940>
    1728:	178000ef          	jal	ra,18a0 <test_fail>
    172c:	c84ff06f          	j	bb0 <main+0xa20>
    1730:	170000ef          	jal	ra,18a0 <test_fail>
    1734:	cf4ff06f          	j	c28 <main+0xa98>
    1738:	168000ef          	jal	ra,18a0 <test_fail>
    173c:	da0ff06f          	j	cdc <main+0xb4c>
    1740:	160000ef          	jal	ra,18a0 <test_fail>
    1744:	e2cff06f          	j	d70 <main+0xbe0>
    1748:	158000ef          	jal	ra,18a0 <test_fail>
    174c:	eb4ff06f          	j	e00 <main+0xc70>
    1750:	150000ef          	jal	ra,18a0 <test_fail>
    1754:	f40ff06f          	j	e94 <main+0xd04>
    1758:	148000ef          	jal	ra,18a0 <test_fail>
    175c:	fb0ff06f          	j	f0c <main+0xd7c>
    1760:	140000ef          	jal	ra,18a0 <test_fail>
    1764:	81dff06f          	j	f80 <main+0xdf0>
    1768:	138000ef          	jal	ra,18a0 <test_fail>
    176c:	8cdff06f          	j	1038 <main+0xea8>
    1770:	130000ef          	jal	ra,18a0 <test_fail>
    1774:	9ddff06f          	j	1150 <main+0xfc0>
    1778:	128000ef          	jal	ra,18a0 <test_fail>
    177c:	a41ff06f          	j	11bc <main+0x102c>
    1780:	0e4000ef          	jal	ra,1864 <test_ok>
    1784:	aadff06f          	j	1230 <main+0x10a0>
    1788:	118000ef          	jal	ra,18a0 <test_fail>
    178c:	ae1ff06f          	j	126c <main+0x10dc>
    1790:	110000ef          	jal	ra,18a0 <test_fail>
    1794:	342025f3          	csrr	a1,mcause
    1798:	00004537          	lui	a0,0x4
    179c:	ed450513          	addi	a0,a0,-300 # 3ed4 <__etext+0x62c>
    17a0:	714000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    17a4:	b11ff06f          	j	12b4 <main+0x1124>
    17a8:	3a0027f3          	csrr	a5,pmpcfg0
    17ac:	0807f793          	andi	a5,a5,128
    17b0:	00078c63          	beqz	a5,17c8 <main+0x1638>
    17b4:	00004537          	lui	a0,0x4
    17b8:	01b00613          	li	a2,27
    17bc:	01b00593          	li	a1,27
    17c0:	f4c50513          	addi	a0,a0,-180 # 3f4c <__etext+0x6a4>
    17c4:	6f0000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    17c8:	0d8000ef          	jal	ra,18a0 <test_fail>
    17cc:	b6dff06f          	j	1338 <main+0x11a8>
    17d0:	00000073          	ecall
    17d4:	090000ef          	jal	ra,1864 <test_ok>
    17d8:	b9dff06f          	j	1374 <main+0x11e4>
    17dc:	00000073          	ecall
    17e0:	0c0000ef          	jal	ra,18a0 <test_fail>
    17e4:	be9ff06f          	j	13cc <main+0x123c>
    17e8:	00000073          	ecall
    17ec:	0b4000ef          	jal	ra,18a0 <test_fail>
    17f0:	c1dff06f          	j	140c <main+0x127c>
    17f4:	070000ef          	jal	ra,1864 <test_ok>
    17f8:	c79ff06f          	j	1470 <main+0x12e0>
    17fc:	94890513          	addi	a0,s2,-1720
    1800:	6b4000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    1804:	c6dff06f          	j	1470 <main+0x12e0>
    1808:	00004537          	lui	a0,0x4
    180c:	21050513          	addi	a0,a0,528 # 4210 <__etext+0x968>
    1810:	df5ff06f          	j	1604 <main+0x1474>
    1814:	0000                	unimp
    1816:	0000                	unimp

00001818 <global_trap_handler>:
    1818:	000027b7          	lui	a5,0x2
    181c:	80078793          	addi	a5,a5,-2048 # 1800 <main+0x1670>
    1820:	3007a073          	csrs	mstatus,a5
    1824:	00008067          	ret

00001828 <xirq_trap_handler0>:
    1828:	81818793          	addi	a5,gp,-2024 # 80000018 <xirq_trap_handler_ack>
    182c:	0007a703          	lw	a4,0(a5)
    1830:	00270713          	addi	a4,a4,2
    1834:	00e7a023          	sw	a4,0(a5)
    1838:	00008067          	ret

0000183c <xirq_trap_handler1>:
    183c:	81818793          	addi	a5,gp,-2024 # 80000018 <xirq_trap_handler_ack>
    1840:	0007a703          	lw	a4,0(a5)
    1844:	00171713          	slli	a4,a4,0x1
    1848:	00e7a023          	sw	a4,0(a5)
    184c:	00008067          	ret

00001850 <sim_irq_trigger>:
    1850:	ff0007b7          	lui	a5,0xff000
    1854:	00a7a023          	sw	a0,0(a5) # ff000000 <__ctr0_io_space_begin+0xff000200>
    1858:	00000013          	nop
    185c:	0007a023          	sw	zero,0(a5)
    1860:	00008067          	ret

00001864 <test_ok>:
    1864:	00004537          	lui	a0,0x4
    1868:	ff010113          	addi	sp,sp,-16
    186c:	01b00613          	li	a2,27
    1870:	01b00593          	li	a1,27
    1874:	8a850513          	addi	a0,a0,-1880 # 38a8 <__etext>
    1878:	00112623          	sw	ra,12(sp)
    187c:	638000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    1880:	800007b7          	lui	a5,0x80000
    1884:	00c78793          	addi	a5,a5,12 # 8000000c <__ctr0_io_space_begin+0x8000020c>
    1888:	0007a703          	lw	a4,0(a5)
    188c:	00c12083          	lw	ra,12(sp)
    1890:	00170713          	addi	a4,a4,1
    1894:	00e7a023          	sw	a4,0(a5)
    1898:	01010113          	addi	sp,sp,16
    189c:	00008067          	ret

000018a0 <test_fail>:
    18a0:	00004537          	lui	a0,0x4
    18a4:	ff010113          	addi	sp,sp,-16
    18a8:	01b00613          	li	a2,27
    18ac:	01b00593          	li	a1,27
    18b0:	8b850513          	addi	a0,a0,-1864 # 38b8 <__etext+0x10>
    18b4:	00112623          	sw	ra,12(sp)
    18b8:	5fc000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    18bc:	800007b7          	lui	a5,0x80000
    18c0:	00878793          	addi	a5,a5,8 # 80000008 <__ctr0_io_space_begin+0x80000208>
    18c4:	0007a703          	lw	a4,0(a5)
    18c8:	00c12083          	lw	ra,12(sp)
    18cc:	00170713          	addi	a4,a4,1
    18d0:	00e7a023          	sw	a4,0(a5)
    18d4:	01010113          	addi	sp,sp,16
    18d8:	00008067          	ret

000018dc <__neorv32_crt0_after_main>:
    18dc:	fa000793          	li	a5,-96
    18e0:	0007a703          	lw	a4,0(a5)
    18e4:	ff010113          	addi	sp,sp,-16
    18e8:	100006b7          	lui	a3,0x10000
    18ec:	00112623          	sw	ra,12(sp)
    18f0:	00d76733          	or	a4,a4,a3
    18f4:	00e7a023          	sw	a4,0(a5)
    18f8:	0007a703          	lw	a4,0(a5)
    18fc:	fffff6b7          	lui	a3,0xfffff
    1900:	fff68693          	addi	a3,a3,-1 # ffffefff <__ctr0_io_space_begin+0xfffff1ff>
    1904:	00d77733          	and	a4,a4,a3
    1908:	00e7a023          	sw	a4,0(a5)
    190c:	0007a783          	lw	a5,0(a5)
    1910:	00050593          	mv	a1,a0
    1914:	00004537          	lui	a0,0x4
    1918:	fcf02823          	sw	a5,-48(zero) # ffffffd0 <__ctr0_io_space_begin+0x1d0>
    191c:	8101a603          	lw	a2,-2032(gp) # 80000010 <cnt_test>
    1920:	23050513          	addi	a0,a0,560 # 4230 <__etext+0x988>
    1924:	590000ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    1928:	00c12083          	lw	ra,12(sp)
    192c:	00000513          	li	a0,0
    1930:	01010113          	addi	sp,sp,16
    1934:	00008067          	ret

00001938 <neorv32_wdt_available>:
    1938:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
    193c:	01655513          	srli	a0,a0,0x16
    1940:	00157513          	andi	a0,a0,1
    1944:	00008067          	ret

00001948 <neorv32_wdt_setup>:
    1948:	00757513          	andi	a0,a0,7
    194c:	00167613          	andi	a2,a2,1
    1950:	0015f593          	andi	a1,a1,1
    1954:	00151513          	slli	a0,a0,0x1
    1958:	00861613          	slli	a2,a2,0x8
    195c:	00c56533          	or	a0,a0,a2
    1960:	00459593          	slli	a1,a1,0x4
    1964:	fbc00793          	li	a5,-68
    1968:	04000713          	li	a4,64
    196c:	00b56533          	or	a0,a0,a1
    1970:	00e7a023          	sw	a4,0(a5)
    1974:	00156513          	ori	a0,a0,1
    1978:	00a7a023          	sw	a0,0(a5)
    197c:	00008067          	ret

00001980 <neorv32_wdt_disable>:
    1980:	fbc00793          	li	a5,-68
    1984:	0007a023          	sw	zero,0(a5)
    1988:	0007a503          	lw	a0,0(a5)
    198c:	00157513          	andi	a0,a0,1
    1990:	40a00533          	neg	a0,a0
    1994:	00008067          	ret

00001998 <neorv32_wdt_force>:
    1998:	fbc00713          	li	a4,-68
    199c:	00072783          	lw	a5,0(a4)
    19a0:	0807e793          	ori	a5,a5,128
    19a4:	00f72023          	sw	a5,0(a4)
    19a8:	00008067          	ret

000019ac <neorv32_gptmr_setup>:
    19ac:	f6000793          	li	a5,-160
    19b0:	00757513          	andi	a0,a0,7
    19b4:	0015f593          	andi	a1,a1,1
    19b8:	0007a023          	sw	zero,0(a5)
    19bc:	00151513          	slli	a0,a0,0x1
    19c0:	00459593          	slli	a1,a1,0x4
    19c4:	00c7a223          	sw	a2,4(a5)
    19c8:	00b56533          	or	a0,a0,a1
    19cc:	0007a423          	sw	zero,8(a5)
    19d0:	00156513          	ori	a0,a0,1
    19d4:	00a7a023          	sw	a0,0(a5)
    19d8:	00008067          	ret

000019dc <neorv32_gptmr_disable>:
    19dc:	f6000713          	li	a4,-160
    19e0:	00072783          	lw	a5,0(a4)
    19e4:	ffe7f793          	andi	a5,a5,-2
    19e8:	00f72023          	sw	a5,0(a4)
    19ec:	00008067          	ret

000019f0 <__neorv32_xirq_core>:
    19f0:	f8000693          	li	a3,-128
    19f4:	0086a783          	lw	a5,8(a3)
    19f8:	00100713          	li	a4,1
    19fc:	00f71733          	sll	a4,a4,a5
    1a00:	fff74713          	not	a4,a4
    1a04:	00e6a223          	sw	a4,4(a3)
    1a08:	00279713          	slli	a4,a5,0x2
    1a0c:	81c18793          	addi	a5,gp,-2020 # 8000001c <__neorv32_xirq_vector_lut>
    1a10:	0006a423          	sw	zero,8(a3)
    1a14:	00e787b3          	add	a5,a5,a4
    1a18:	0007a783          	lw	a5,0(a5)
    1a1c:	00078067          	jr	a5

00001a20 <__neorv32_xirq_dummy_handler>:
    1a20:	00000013          	nop
    1a24:	00008067          	ret

00001a28 <neorv32_xirq_available>:
    1a28:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
    1a2c:	01c55513          	srli	a0,a0,0x1c
    1a30:	00157513          	andi	a0,a0,1
    1a34:	00008067          	ret

00001a38 <neorv32_xirq_setup>:
    1a38:	f8002023          	sw	zero,-128(zero) # ffffff80 <__ctr0_io_space_begin+0x180>
    1a3c:	81c18793          	addi	a5,gp,-2020 # 8000001c <__neorv32_xirq_vector_lut>
    1a40:	00002737          	lui	a4,0x2
    1a44:	f8002223          	sw	zero,-124(zero) # ffffff84 <__ctr0_io_space_begin+0x184>
    1a48:	08078693          	addi	a3,a5,128
    1a4c:	a2070713          	addi	a4,a4,-1504 # 1a20 <__neorv32_xirq_dummy_handler>
    1a50:	00e7a023          	sw	a4,0(a5)
    1a54:	00478793          	addi	a5,a5,4
    1a58:	fed79ce3          	bne	a5,a3,1a50 <neorv32_xirq_setup+0x18>
    1a5c:	000025b7          	lui	a1,0x2
    1a60:	9f058593          	addi	a1,a1,-1552 # 19f0 <__neorv32_xirq_core>
    1a64:	01500513          	li	a0,21
    1a68:	2e80106f          	j	2d50 <neorv32_rte_exception_install>

00001a6c <neorv32_xirq_install>:
    1a6c:	01f00793          	li	a5,31
    1a70:	02a7ec63          	bltu	a5,a0,1aa8 <neorv32_xirq_install+0x3c>
    1a74:	00251713          	slli	a4,a0,0x2
    1a78:	81c18793          	addi	a5,gp,-2020 # 8000001c <__neorv32_xirq_vector_lut>
    1a7c:	00e787b3          	add	a5,a5,a4
    1a80:	00b7a023          	sw	a1,0(a5)
    1a84:	00100793          	li	a5,1
    1a88:	00a79533          	sll	a0,a5,a0
    1a8c:	fff54793          	not	a5,a0
    1a90:	f8f02223          	sw	a5,-124(zero) # ffffff84 <__ctr0_io_space_begin+0x184>
    1a94:	f8002783          	lw	a5,-128(zero) # ffffff80 <__ctr0_io_space_begin+0x180>
    1a98:	00a7e533          	or	a0,a5,a0
    1a9c:	f8a02023          	sw	a0,-128(zero) # ffffff80 <__ctr0_io_space_begin+0x180>
    1aa0:	00000513          	li	a0,0
    1aa4:	00008067          	ret
    1aa8:	00100513          	li	a0,1
    1aac:	00008067          	ret

00001ab0 <neorv32_slink_available>:
    1ab0:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
    1ab4:	01955513          	srli	a0,a0,0x19
    1ab8:	00157513          	andi	a0,a0,1
    1abc:	00008067          	ret

00001ac0 <neorv32_slink_enable>:
    1ac0:	ec000713          	li	a4,-320
    1ac4:	00072783          	lw	a5,0(a4)
    1ac8:	800006b7          	lui	a3,0x80000
    1acc:	00d7e7b3          	or	a5,a5,a3
    1ad0:	00f72023          	sw	a5,0(a4)
    1ad4:	00008067          	ret

00001ad8 <neorv32_slink_disable>:
    1ad8:	ec000713          	li	a4,-320
    1adc:	00072783          	lw	a5,0(a4)
    1ae0:	00179793          	slli	a5,a5,0x1
    1ae4:	0017d793          	srli	a5,a5,0x1
    1ae8:	00f72023          	sw	a5,0(a4)
    1aec:	00008067          	ret

00001af0 <neorv32_slink_rx_irq_config>:
    1af0:	ec802783          	lw	a5,-312(zero) # fffffec8 <__ctr0_io_space_begin+0xc8>
    1af4:	00757513          	andi	a0,a0,7
    1af8:	00100713          	li	a4,1
    1afc:	00a71733          	sll	a4,a4,a0
    1b00:	02058263          	beqz	a1,1b24 <neorv32_slink_rx_irq_config+0x34>
    1b04:	00f767b3          	or	a5,a4,a5
    1b08:	00850713          	addi	a4,a0,8
    1b0c:	00100513          	li	a0,1
    1b10:	00e51533          	sll	a0,a0,a4
    1b14:	00060e63          	beqz	a2,1b30 <neorv32_slink_rx_irq_config+0x40>
    1b18:	00f567b3          	or	a5,a0,a5
    1b1c:	ecf02423          	sw	a5,-312(zero) # fffffec8 <__ctr0_io_space_begin+0xc8>
    1b20:	00008067          	ret
    1b24:	fff74713          	not	a4,a4
    1b28:	00f777b3          	and	a5,a4,a5
    1b2c:	fddff06f          	j	1b08 <neorv32_slink_rx_irq_config+0x18>
    1b30:	fff54513          	not	a0,a0
    1b34:	00f577b3          	and	a5,a0,a5
    1b38:	fe5ff06f          	j	1b1c <neorv32_slink_rx_irq_config+0x2c>

00001b3c <neorv32_slink_tx_irq_config>:
    1b3c:	00757513          	andi	a0,a0,7
    1b40:	ec802783          	lw	a5,-312(zero) # fffffec8 <__ctr0_io_space_begin+0xc8>
    1b44:	01050693          	addi	a3,a0,16
    1b48:	00100713          	li	a4,1
    1b4c:	00d71733          	sll	a4,a4,a3
    1b50:	02058263          	beqz	a1,1b74 <neorv32_slink_tx_irq_config+0x38>
    1b54:	00f767b3          	or	a5,a4,a5
    1b58:	01850713          	addi	a4,a0,24
    1b5c:	00100513          	li	a0,1
    1b60:	00e51533          	sll	a0,a0,a4
    1b64:	00060e63          	beqz	a2,1b80 <neorv32_slink_tx_irq_config+0x44>
    1b68:	00f567b3          	or	a5,a0,a5
    1b6c:	ecf02423          	sw	a5,-312(zero) # fffffec8 <__ctr0_io_space_begin+0xc8>
    1b70:	00008067          	ret
    1b74:	fff74713          	not	a4,a4
    1b78:	00f777b3          	and	a5,a4,a5
    1b7c:	fddff06f          	j	1b58 <neorv32_slink_tx_irq_config+0x1c>
    1b80:	fff54513          	not	a0,a0
    1b84:	00f577b3          	and	a5,a0,a5
    1b88:	fe5ff06f          	j	1b6c <neorv32_slink_tx_irq_config+0x30>

00001b8c <neorv32_slink_tx0_nonblocking>:
    1b8c:	ed002783          	lw	a5,-304(zero) # fffffed0 <__ctr0_io_space_begin+0xd0>
    1b90:	1007f793          	andi	a5,a5,256
    1b94:	00078863          	beqz	a5,1ba4 <neorv32_slink_tx0_nonblocking+0x18>
    1b98:	eea02023          	sw	a0,-288(zero) # fffffee0 <__ctr0_io_space_begin+0xe0>
    1b9c:	00000513          	li	a0,0
    1ba0:	00008067          	ret
    1ba4:	00100513          	li	a0,1
    1ba8:	00008067          	ret

00001bac <neorv32_slink_rx0_nonblocking>:
    1bac:	ed002783          	lw	a5,-304(zero) # fffffed0 <__ctr0_io_space_begin+0xd0>
    1bb0:	0017f793          	andi	a5,a5,1
    1bb4:	00078a63          	beqz	a5,1bc8 <neorv32_slink_rx0_nonblocking+0x1c>
    1bb8:	ee002783          	lw	a5,-288(zero) # fffffee0 <__ctr0_io_space_begin+0xe0>
    1bbc:	00f52023          	sw	a5,0(a0)
    1bc0:	00000513          	li	a0,0
    1bc4:	00008067          	ret
    1bc8:	00100513          	li	a0,1
    1bcc:	00008067          	ret

00001bd0 <neorv32_mtime_set_time>:
    1bd0:	f9000793          	li	a5,-112
    1bd4:	0007a023          	sw	zero,0(a5)
    1bd8:	00b7a223          	sw	a1,4(a5)
    1bdc:	00a7a023          	sw	a0,0(a5)
    1be0:	00008067          	ret

00001be4 <neorv32_mtime_get_time>:
    1be4:	ff010113          	addi	sp,sp,-16
    1be8:	f9402783          	lw	a5,-108(zero) # ffffff94 <__ctr0_io_space_begin+0x194>
    1bec:	f9002703          	lw	a4,-112(zero) # ffffff90 <__ctr0_io_space_begin+0x190>
    1bf0:	f9402683          	lw	a3,-108(zero) # ffffff94 <__ctr0_io_space_begin+0x194>
    1bf4:	fed79ae3          	bne	a5,a3,1be8 <neorv32_mtime_get_time+0x4>
    1bf8:	00e12023          	sw	a4,0(sp)
    1bfc:	00f12223          	sw	a5,4(sp)
    1c00:	00012503          	lw	a0,0(sp)
    1c04:	00412583          	lw	a1,4(sp)
    1c08:	01010113          	addi	sp,sp,16
    1c0c:	00008067          	ret

00001c10 <neorv32_mtime_set_timecmp>:
    1c10:	f9000793          	li	a5,-112
    1c14:	fff00713          	li	a4,-1
    1c18:	00e7a423          	sw	a4,8(a5)
    1c1c:	00b7a623          	sw	a1,12(a5)
    1c20:	00a7a423          	sw	a0,8(a5)
    1c24:	00008067          	ret

00001c28 <__neorv32_uart_itoa>:
    1c28:	fd010113          	addi	sp,sp,-48
    1c2c:	02812423          	sw	s0,40(sp)
    1c30:	02912223          	sw	s1,36(sp)
    1c34:	03212023          	sw	s2,32(sp)
    1c38:	01312e23          	sw	s3,28(sp)
    1c3c:	01412c23          	sw	s4,24(sp)
    1c40:	02112623          	sw	ra,44(sp)
    1c44:	01512a23          	sw	s5,20(sp)
    1c48:	00004a37          	lui	s4,0x4
    1c4c:	00050493          	mv	s1,a0
    1c50:	00058413          	mv	s0,a1
    1c54:	00058523          	sb	zero,10(a1)
    1c58:	00000993          	li	s3,0
    1c5c:	00410913          	addi	s2,sp,4
    1c60:	238a0a13          	addi	s4,s4,568 # 4238 <numbers.1>
    1c64:	00a00593          	li	a1,10
    1c68:	00048513          	mv	a0,s1
    1c6c:	2b1010ef          	jal	ra,371c <__umodsi3>
    1c70:	00aa0533          	add	a0,s4,a0
    1c74:	00054783          	lbu	a5,0(a0)
    1c78:	01390ab3          	add	s5,s2,s3
    1c7c:	00048513          	mv	a0,s1
    1c80:	00fa8023          	sb	a5,0(s5)
    1c84:	00a00593          	li	a1,10
    1c88:	24d010ef          	jal	ra,36d4 <__udivsi3>
    1c8c:	00198993          	addi	s3,s3,1
    1c90:	00a00793          	li	a5,10
    1c94:	00050493          	mv	s1,a0
    1c98:	fcf996e3          	bne	s3,a5,1c64 <__neorv32_uart_itoa+0x3c>
    1c9c:	00090693          	mv	a3,s2
    1ca0:	00900713          	li	a4,9
    1ca4:	03000613          	li	a2,48
    1ca8:	0096c583          	lbu	a1,9(a3) # 80000009 <__ctr0_io_space_begin+0x80000209>
    1cac:	00070793          	mv	a5,a4
    1cb0:	fff70713          	addi	a4,a4,-1
    1cb4:	01071713          	slli	a4,a4,0x10
    1cb8:	01075713          	srli	a4,a4,0x10
    1cbc:	00c59a63          	bne	a1,a2,1cd0 <__neorv32_uart_itoa+0xa8>
    1cc0:	000684a3          	sb	zero,9(a3)
    1cc4:	fff68693          	addi	a3,a3,-1
    1cc8:	fe0710e3          	bnez	a4,1ca8 <__neorv32_uart_itoa+0x80>
    1ccc:	00000793          	li	a5,0
    1cd0:	00f907b3          	add	a5,s2,a5
    1cd4:	00000593          	li	a1,0
    1cd8:	0007c703          	lbu	a4,0(a5)
    1cdc:	00070c63          	beqz	a4,1cf4 <__neorv32_uart_itoa+0xcc>
    1ce0:	00158693          	addi	a3,a1,1
    1ce4:	00b405b3          	add	a1,s0,a1
    1ce8:	00e58023          	sb	a4,0(a1)
    1cec:	01069593          	slli	a1,a3,0x10
    1cf0:	0105d593          	srli	a1,a1,0x10
    1cf4:	fff78713          	addi	a4,a5,-1
    1cf8:	02f91863          	bne	s2,a5,1d28 <__neorv32_uart_itoa+0x100>
    1cfc:	00b40433          	add	s0,s0,a1
    1d00:	00040023          	sb	zero,0(s0)
    1d04:	02c12083          	lw	ra,44(sp)
    1d08:	02812403          	lw	s0,40(sp)
    1d0c:	02412483          	lw	s1,36(sp)
    1d10:	02012903          	lw	s2,32(sp)
    1d14:	01c12983          	lw	s3,28(sp)
    1d18:	01812a03          	lw	s4,24(sp)
    1d1c:	01412a83          	lw	s5,20(sp)
    1d20:	03010113          	addi	sp,sp,48
    1d24:	00008067          	ret
    1d28:	00070793          	mv	a5,a4
    1d2c:	fadff06f          	j	1cd8 <__neorv32_uart_itoa+0xb0>

00001d30 <__neorv32_uart_tohex>:
    1d30:	00004637          	lui	a2,0x4
    1d34:	00758693          	addi	a3,a1,7
    1d38:	00000713          	li	a4,0
    1d3c:	24460613          	addi	a2,a2,580 # 4244 <symbols.0>
    1d40:	02000813          	li	a6,32
    1d44:	00e557b3          	srl	a5,a0,a4
    1d48:	00f7f793          	andi	a5,a5,15
    1d4c:	00f607b3          	add	a5,a2,a5
    1d50:	0007c783          	lbu	a5,0(a5)
    1d54:	00470713          	addi	a4,a4,4
    1d58:	fff68693          	addi	a3,a3,-1
    1d5c:	00f680a3          	sb	a5,1(a3)
    1d60:	ff0712e3          	bne	a4,a6,1d44 <__neorv32_uart_tohex+0x14>
    1d64:	00058423          	sb	zero,8(a1)
    1d68:	00008067          	ret

00001d6c <neorv32_uart0_available>:
    1d6c:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
    1d70:	01255513          	srli	a0,a0,0x12
    1d74:	00157513          	andi	a0,a0,1
    1d78:	00008067          	ret

00001d7c <neorv32_uart0_setup>:
    1d7c:	ff010113          	addi	sp,sp,-16
    1d80:	00812423          	sw	s0,8(sp)
    1d84:	00912223          	sw	s1,4(sp)
    1d88:	00112623          	sw	ra,12(sp)
    1d8c:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
    1d90:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
    1d94:	00058413          	mv	s0,a1
    1d98:	00151593          	slli	a1,a0,0x1
    1d9c:	00078513          	mv	a0,a5
    1da0:	00060493          	mv	s1,a2
    1da4:	131010ef          	jal	ra,36d4 <__udivsi3>
    1da8:	01051513          	slli	a0,a0,0x10
    1dac:	000017b7          	lui	a5,0x1
    1db0:	01055513          	srli	a0,a0,0x10
    1db4:	00000713          	li	a4,0
    1db8:	ffe78793          	addi	a5,a5,-2 # ffe <main+0xe6e>
    1dbc:	04a7e463          	bltu	a5,a0,1e04 <neorv32_uart0_setup+0x88>
    1dc0:	0034f793          	andi	a5,s1,3
    1dc4:	00347413          	andi	s0,s0,3
    1dc8:	fff50513          	addi	a0,a0,-1
    1dcc:	01479793          	slli	a5,a5,0x14
    1dd0:	01641413          	slli	s0,s0,0x16
    1dd4:	00f567b3          	or	a5,a0,a5
    1dd8:	0087e7b3          	or	a5,a5,s0
    1ddc:	01871713          	slli	a4,a4,0x18
    1de0:	00c12083          	lw	ra,12(sp)
    1de4:	00812403          	lw	s0,8(sp)
    1de8:	00e7e7b3          	or	a5,a5,a4
    1dec:	10000737          	lui	a4,0x10000
    1df0:	00e7e7b3          	or	a5,a5,a4
    1df4:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
    1df8:	00412483          	lw	s1,4(sp)
    1dfc:	01010113          	addi	sp,sp,16
    1e00:	00008067          	ret
    1e04:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffb3a2>
    1e08:	0fd6f693          	andi	a3,a3,253
    1e0c:	00069a63          	bnez	a3,1e20 <neorv32_uart0_setup+0xa4>
    1e10:	00355513          	srli	a0,a0,0x3
    1e14:	00170713          	addi	a4,a4,1
    1e18:	0ff77713          	andi	a4,a4,255
    1e1c:	fa1ff06f          	j	1dbc <neorv32_uart0_setup+0x40>
    1e20:	00155513          	srli	a0,a0,0x1
    1e24:	ff1ff06f          	j	1e14 <neorv32_uart0_setup+0x98>

00001e28 <neorv32_uart0_putc>:
    1e28:	00040737          	lui	a4,0x40
    1e2c:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
    1e30:	00e7f7b3          	and	a5,a5,a4
    1e34:	fe079ce3          	bnez	a5,1e2c <neorv32_uart0_putc+0x4>
    1e38:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
    1e3c:	00008067          	ret

00001e40 <neorv32_uart0_tx_busy>:
    1e40:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
    1e44:	00100513          	li	a0,1
    1e48:	0007c863          	bltz	a5,1e58 <neorv32_uart0_tx_busy+0x18>
    1e4c:	0107d513          	srli	a0,a5,0x10
    1e50:	00154513          	xori	a0,a0,1
    1e54:	00157513          	andi	a0,a0,1
    1e58:	00008067          	ret

00001e5c <neorv32_uart0_print>:
    1e5c:	ff010113          	addi	sp,sp,-16
    1e60:	00812423          	sw	s0,8(sp)
    1e64:	01212023          	sw	s2,0(sp)
    1e68:	00112623          	sw	ra,12(sp)
    1e6c:	00912223          	sw	s1,4(sp)
    1e70:	00050413          	mv	s0,a0
    1e74:	00a00913          	li	s2,10
    1e78:	00044483          	lbu	s1,0(s0)
    1e7c:	00140413          	addi	s0,s0,1
    1e80:	00049e63          	bnez	s1,1e9c <neorv32_uart0_print+0x40>
    1e84:	00c12083          	lw	ra,12(sp)
    1e88:	00812403          	lw	s0,8(sp)
    1e8c:	00412483          	lw	s1,4(sp)
    1e90:	00012903          	lw	s2,0(sp)
    1e94:	01010113          	addi	sp,sp,16
    1e98:	00008067          	ret
    1e9c:	01249663          	bne	s1,s2,1ea8 <neorv32_uart0_print+0x4c>
    1ea0:	00d00513          	li	a0,13
    1ea4:	f85ff0ef          	jal	ra,1e28 <neorv32_uart0_putc>
    1ea8:	00048513          	mv	a0,s1
    1eac:	f7dff0ef          	jal	ra,1e28 <neorv32_uart0_putc>
    1eb0:	fc9ff06f          	j	1e78 <neorv32_uart0_print+0x1c>

00001eb4 <neorv32_uart0_printf>:
    1eb4:	fa010113          	addi	sp,sp,-96
    1eb8:	04f12a23          	sw	a5,84(sp)
    1ebc:	04410793          	addi	a5,sp,68
    1ec0:	02812c23          	sw	s0,56(sp)
    1ec4:	03212823          	sw	s2,48(sp)
    1ec8:	03412423          	sw	s4,40(sp)
    1ecc:	03512223          	sw	s5,36(sp)
    1ed0:	03612023          	sw	s6,32(sp)
    1ed4:	01712e23          	sw	s7,28(sp)
    1ed8:	01812c23          	sw	s8,24(sp)
    1edc:	01912a23          	sw	s9,20(sp)
    1ee0:	02112e23          	sw	ra,60(sp)
    1ee4:	02912a23          	sw	s1,52(sp)
    1ee8:	03312623          	sw	s3,44(sp)
    1eec:	00050413          	mv	s0,a0
    1ef0:	04b12223          	sw	a1,68(sp)
    1ef4:	04c12423          	sw	a2,72(sp)
    1ef8:	04d12623          	sw	a3,76(sp)
    1efc:	04e12823          	sw	a4,80(sp)
    1f00:	05012c23          	sw	a6,88(sp)
    1f04:	05112e23          	sw	a7,92(sp)
    1f08:	00f12023          	sw	a5,0(sp)
    1f0c:	02500a13          	li	s4,37
    1f10:	00a00a93          	li	s5,10
    1f14:	07300913          	li	s2,115
    1f18:	07500b13          	li	s6,117
    1f1c:	07800b93          	li	s7,120
    1f20:	06300c13          	li	s8,99
    1f24:	06900c93          	li	s9,105
    1f28:	00044483          	lbu	s1,0(s0)
    1f2c:	02049c63          	bnez	s1,1f64 <neorv32_uart0_printf+0xb0>
    1f30:	03c12083          	lw	ra,60(sp)
    1f34:	03812403          	lw	s0,56(sp)
    1f38:	03412483          	lw	s1,52(sp)
    1f3c:	03012903          	lw	s2,48(sp)
    1f40:	02c12983          	lw	s3,44(sp)
    1f44:	02812a03          	lw	s4,40(sp)
    1f48:	02412a83          	lw	s5,36(sp)
    1f4c:	02012b03          	lw	s6,32(sp)
    1f50:	01c12b83          	lw	s7,28(sp)
    1f54:	01812c03          	lw	s8,24(sp)
    1f58:	01412c83          	lw	s9,20(sp)
    1f5c:	06010113          	addi	sp,sp,96
    1f60:	00008067          	ret
    1f64:	0d449863          	bne	s1,s4,2034 <neorv32_uart0_printf+0x180>
    1f68:	00240993          	addi	s3,s0,2
    1f6c:	00144403          	lbu	s0,1(s0)
    1f70:	05240263          	beq	s0,s2,1fb4 <neorv32_uart0_printf+0x100>
    1f74:	00896e63          	bltu	s2,s0,1f90 <neorv32_uart0_printf+0xdc>
    1f78:	05840c63          	beq	s0,s8,1fd0 <neorv32_uart0_printf+0x11c>
    1f7c:	07940663          	beq	s0,s9,1fe8 <neorv32_uart0_printf+0x134>
    1f80:	02500513          	li	a0,37
    1f84:	ea5ff0ef          	jal	ra,1e28 <neorv32_uart0_putc>
    1f88:	00040513          	mv	a0,s0
    1f8c:	0540006f          	j	1fe0 <neorv32_uart0_printf+0x12c>
    1f90:	09640663          	beq	s0,s6,201c <neorv32_uart0_printf+0x168>
    1f94:	ff7416e3          	bne	s0,s7,1f80 <neorv32_uart0_printf+0xcc>
    1f98:	00012783          	lw	a5,0(sp)
    1f9c:	00410593          	addi	a1,sp,4
    1fa0:	0007a503          	lw	a0,0(a5)
    1fa4:	00478713          	addi	a4,a5,4
    1fa8:	00e12023          	sw	a4,0(sp)
    1fac:	d85ff0ef          	jal	ra,1d30 <__neorv32_uart_tohex>
    1fb0:	0640006f          	j	2014 <neorv32_uart0_printf+0x160>
    1fb4:	00012783          	lw	a5,0(sp)
    1fb8:	0007a503          	lw	a0,0(a5)
    1fbc:	00478713          	addi	a4,a5,4
    1fc0:	00e12023          	sw	a4,0(sp)
    1fc4:	e99ff0ef          	jal	ra,1e5c <neorv32_uart0_print>
    1fc8:	00098413          	mv	s0,s3
    1fcc:	f5dff06f          	j	1f28 <neorv32_uart0_printf+0x74>
    1fd0:	00012783          	lw	a5,0(sp)
    1fd4:	0007c503          	lbu	a0,0(a5)
    1fd8:	00478713          	addi	a4,a5,4
    1fdc:	00e12023          	sw	a4,0(sp)
    1fe0:	e49ff0ef          	jal	ra,1e28 <neorv32_uart0_putc>
    1fe4:	fe5ff06f          	j	1fc8 <neorv32_uart0_printf+0x114>
    1fe8:	00012783          	lw	a5,0(sp)
    1fec:	0007a403          	lw	s0,0(a5)
    1ff0:	00478713          	addi	a4,a5,4
    1ff4:	00e12023          	sw	a4,0(sp)
    1ff8:	00045863          	bgez	s0,2008 <neorv32_uart0_printf+0x154>
    1ffc:	02d00513          	li	a0,45
    2000:	40800433          	neg	s0,s0
    2004:	e25ff0ef          	jal	ra,1e28 <neorv32_uart0_putc>
    2008:	00410593          	addi	a1,sp,4
    200c:	00040513          	mv	a0,s0
    2010:	c19ff0ef          	jal	ra,1c28 <__neorv32_uart_itoa>
    2014:	00410513          	addi	a0,sp,4
    2018:	fadff06f          	j	1fc4 <neorv32_uart0_printf+0x110>
    201c:	00012783          	lw	a5,0(sp)
    2020:	00410593          	addi	a1,sp,4
    2024:	00478713          	addi	a4,a5,4
    2028:	0007a503          	lw	a0,0(a5)
    202c:	00e12023          	sw	a4,0(sp)
    2030:	fe1ff06f          	j	2010 <neorv32_uart0_printf+0x15c>
    2034:	01549663          	bne	s1,s5,2040 <neorv32_uart0_printf+0x18c>
    2038:	00d00513          	li	a0,13
    203c:	dedff0ef          	jal	ra,1e28 <neorv32_uart0_putc>
    2040:	00140993          	addi	s3,s0,1
    2044:	00048513          	mv	a0,s1
    2048:	f99ff06f          	j	1fe0 <neorv32_uart0_printf+0x12c>

0000204c <neorv32_uart1_available>:
    204c:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
    2050:	01a55513          	srli	a0,a0,0x1a
    2054:	00157513          	andi	a0,a0,1
    2058:	00008067          	ret

0000205c <neorv32_uart1_putc>:
    205c:	00040737          	lui	a4,0x40
    2060:	fd002783          	lw	a5,-48(zero) # ffffffd0 <__ctr0_io_space_begin+0x1d0>
    2064:	00e7f7b3          	and	a5,a5,a4
    2068:	fe079ce3          	bnez	a5,2060 <neorv32_uart1_putc+0x4>
    206c:	fca02a23          	sw	a0,-44(zero) # ffffffd4 <__ctr0_io_space_begin+0x1d4>
    2070:	00008067          	ret

00002074 <neorv32_uart1_tx_busy>:
    2074:	fd002783          	lw	a5,-48(zero) # ffffffd0 <__ctr0_io_space_begin+0x1d0>
    2078:	00100513          	li	a0,1
    207c:	0007c863          	bltz	a5,208c <neorv32_uart1_tx_busy+0x18>
    2080:	0107d513          	srli	a0,a5,0x10
    2084:	00154513          	xori	a0,a0,1
    2088:	00157513          	andi	a0,a0,1
    208c:	00008067          	ret

00002090 <__neorv32_cpu_pmp_cfg_read>:
    2090:	00f57513          	andi	a0,a0,15
    2094:	fff50513          	addi	a0,a0,-1
    2098:	00e00793          	li	a5,14
    209c:	00a7ee63          	bltu	a5,a0,20b8 <__neorv32_cpu_pmp_cfg_read+0x28>
    20a0:	000047b7          	lui	a5,0x4
    20a4:	25878793          	addi	a5,a5,600 # 4258 <symbols.0+0x14>
    20a8:	00251513          	slli	a0,a0,0x2
    20ac:	00f50533          	add	a0,a0,a5
    20b0:	00052783          	lw	a5,0(a0)
    20b4:	00078067          	jr	a5
    20b8:	3a002573          	csrr	a0,pmpcfg0
    20bc:	00008067          	ret
    20c0:	3a102573          	csrr	a0,pmpcfg1
    20c4:	00008067          	ret
    20c8:	3a202573          	csrr	a0,pmpcfg2
    20cc:	00008067          	ret
    20d0:	3a302573          	csrr	a0,pmpcfg3
    20d4:	00008067          	ret
    20d8:	3a402573          	csrr	a0,0x3a4
    20dc:	00008067          	ret
    20e0:	3a502573          	csrr	a0,0x3a5
    20e4:	00008067          	ret
    20e8:	3a602573          	csrr	a0,0x3a6
    20ec:	00008067          	ret
    20f0:	3a702573          	csrr	a0,0x3a7
    20f4:	00008067          	ret
    20f8:	3a802573          	csrr	a0,0x3a8
    20fc:	00008067          	ret
    2100:	3a902573          	csrr	a0,0x3a9
    2104:	00008067          	ret
    2108:	3aa02573          	csrr	a0,0x3aa
    210c:	00008067          	ret
    2110:	3ab02573          	csrr	a0,0x3ab
    2114:	00008067          	ret
    2118:	3ac02573          	csrr	a0,0x3ac
    211c:	00008067          	ret
    2120:	3ad02573          	csrr	a0,0x3ad
    2124:	00008067          	ret
    2128:	3ae02573          	csrr	a0,0x3ae
    212c:	00008067          	ret
    2130:	3af02573          	csrr	a0,0x3af
    2134:	00008067          	ret

00002138 <__neorv32_cpu_pmp_cfg_write>:
    2138:	00f57513          	andi	a0,a0,15
    213c:	fff50513          	addi	a0,a0,-1
    2140:	00e00793          	li	a5,14
    2144:	00a7ee63          	bltu	a5,a0,2160 <__neorv32_cpu_pmp_cfg_write+0x28>
    2148:	000047b7          	lui	a5,0x4
    214c:	29478793          	addi	a5,a5,660 # 4294 <symbols.0+0x50>
    2150:	00251513          	slli	a0,a0,0x2
    2154:	00f50533          	add	a0,a0,a5
    2158:	00052783          	lw	a5,0(a0)
    215c:	00078067          	jr	a5
    2160:	3a059073          	csrw	pmpcfg0,a1
    2164:	00008067          	ret
    2168:	3a159073          	csrw	pmpcfg1,a1
    216c:	00008067          	ret
    2170:	3a259073          	csrw	pmpcfg2,a1
    2174:	00008067          	ret
    2178:	3a359073          	csrw	pmpcfg3,a1
    217c:	00008067          	ret
    2180:	3a459073          	csrw	0x3a4,a1
    2184:	00008067          	ret
    2188:	3a559073          	csrw	0x3a5,a1
    218c:	00008067          	ret
    2190:	3a659073          	csrw	0x3a6,a1
    2194:	00008067          	ret
    2198:	3a759073          	csrw	0x3a7,a1
    219c:	00008067          	ret
    21a0:	3a859073          	csrw	0x3a8,a1
    21a4:	00008067          	ret
    21a8:	3a959073          	csrw	0x3a9,a1
    21ac:	00008067          	ret
    21b0:	3aa59073          	csrw	0x3aa,a1
    21b4:	00008067          	ret
    21b8:	3ab59073          	csrw	0x3ab,a1
    21bc:	00008067          	ret
    21c0:	3ac59073          	csrw	0x3ac,a1
    21c4:	00008067          	ret
    21c8:	3ad59073          	csrw	0x3ad,a1
    21cc:	00008067          	ret
    21d0:	3ae59073          	csrw	0x3ae,a1
    21d4:	00008067          	ret
    21d8:	3af59073          	csrw	0x3af,a1
    21dc:	00008067          	ret

000021e0 <neorv32_cpu_irq_enable>:
    21e0:	01f00793          	li	a5,31
    21e4:	00050713          	mv	a4,a0
    21e8:	02a7e663          	bltu	a5,a0,2214 <neorv32_cpu_irq_enable+0x34>
    21ec:	ffff17b7          	lui	a5,0xffff1
    21f0:	88878793          	addi	a5,a5,-1912 # ffff0888 <__ctr0_io_space_begin+0xffff0a88>
    21f4:	00a7d7b3          	srl	a5,a5,a0
    21f8:	0017f793          	andi	a5,a5,1
    21fc:	00100513          	li	a0,1
    2200:	00078c63          	beqz	a5,2218 <neorv32_cpu_irq_enable+0x38>
    2204:	00e51533          	sll	a0,a0,a4
    2208:	30452073          	csrs	mie,a0
    220c:	00000513          	li	a0,0
    2210:	00008067          	ret
    2214:	00100513          	li	a0,1
    2218:	00008067          	ret

0000221c <neorv32_cpu_irq_disable>:
    221c:	01f00793          	li	a5,31
    2220:	00050713          	mv	a4,a0
    2224:	02a7e663          	bltu	a5,a0,2250 <neorv32_cpu_irq_disable+0x34>
    2228:	ffff17b7          	lui	a5,0xffff1
    222c:	88878793          	addi	a5,a5,-1912 # ffff0888 <__ctr0_io_space_begin+0xffff0a88>
    2230:	00a7d7b3          	srl	a5,a5,a0
    2234:	0017f793          	andi	a5,a5,1
    2238:	00100513          	li	a0,1
    223c:	00078c63          	beqz	a5,2254 <neorv32_cpu_irq_disable+0x38>
    2240:	00e51533          	sll	a0,a0,a4
    2244:	30453073          	csrc	mie,a0
    2248:	00000513          	li	a0,0
    224c:	00008067          	ret
    2250:	00100513          	li	a0,1
    2254:	00008067          	ret

00002258 <neorv32_cpu_set_mcycle>:
    2258:	00000793          	li	a5,0
    225c:	b0079073          	csrw	mcycle,a5
    2260:	b8059073          	csrw	mcycleh,a1
    2264:	b0051073          	csrw	mcycle,a0
    2268:	00008067          	ret

0000226c <neorv32_cpu_set_minstret>:
    226c:	00000793          	li	a5,0
    2270:	b0279073          	csrw	minstret,a5
    2274:	b8259073          	csrw	minstreth,a1
    2278:	b0251073          	csrw	minstret,a0
    227c:	00008067          	ret

00002280 <neorv32_cpu_goto_user_mode>:
    2280:	34109073          	csrw	mepc,ra
    2284:	000020b7          	lui	ra,0x2
    2288:	80008093          	addi	ra,ra,-2048 # 1800 <main+0x1670>
    228c:	3000b073          	csrc	mstatus,ra
    2290:	30200073          	mret

00002294 <neorv32_cpu_pmp_get_num_regions>:
    2294:	fe402503          	lw	a0,-28(zero) # ffffffe4 <__ctr0_io_space_begin+0x1e4>
    2298:	10057513          	andi	a0,a0,256
    229c:	0a050663          	beqz	a0,2348 <neorv32_cpu_pmp_get_num_regions+0xb4>
    22a0:	fe010113          	addi	sp,sp,-32
    22a4:	00912a23          	sw	s1,20(sp)
    22a8:	010104b7          	lui	s1,0x1010
    22ac:	00812c23          	sw	s0,24(sp)
    22b0:	01212823          	sw	s2,16(sp)
    22b4:	00112e23          	sw	ra,28(sp)
    22b8:	01312623          	sw	s3,12(sp)
    22bc:	00000413          	li	s0,0
    22c0:	10148493          	addi	s1,s1,257 # 1010101 <__crt0_copy_data_src_begin+0x100b4a5>
    22c4:	01000913          	li	s2,16
    22c8:	00040513          	mv	a0,s0
    22cc:	00048593          	mv	a1,s1
    22d0:	00140413          	addi	s0,s0,1
    22d4:	e65ff0ef          	jal	ra,2138 <__neorv32_cpu_pmp_cfg_write>
    22d8:	ff2418e3          	bne	s0,s2,22c8 <neorv32_cpu_pmp_get_num_regions+0x34>
    22dc:	01010937          	lui	s2,0x1010
    22e0:	00000413          	li	s0,0
    22e4:	00000493          	li	s1,0
    22e8:	10190913          	addi	s2,s2,257 # 1010101 <__crt0_copy_data_src_begin+0x100b4a5>
    22ec:	01000993          	li	s3,16
    22f0:	00048513          	mv	a0,s1
    22f4:	d9dff0ef          	jal	ra,2090 <__neorv32_cpu_pmp_cfg_read>
    22f8:	01257533          	and	a0,a0,s2
    22fc:	00148493          	addi	s1,s1,1
    2300:	00a40433          	add	s0,s0,a0
    2304:	ff3496e3          	bne	s1,s3,22f0 <neorv32_cpu_pmp_get_num_regions+0x5c>
    2308:	00845793          	srli	a5,s0,0x8
    230c:	0ff47513          	andi	a0,s0,255
    2310:	0ff7f793          	andi	a5,a5,255
    2314:	00f507b3          	add	a5,a0,a5
    2318:	01045513          	srli	a0,s0,0x10
    231c:	0ff57513          	andi	a0,a0,255
    2320:	01845413          	srli	s0,s0,0x18
    2324:	00f50533          	add	a0,a0,a5
    2328:	01c12083          	lw	ra,28(sp)
    232c:	00a40533          	add	a0,s0,a0
    2330:	01812403          	lw	s0,24(sp)
    2334:	01412483          	lw	s1,20(sp)
    2338:	01012903          	lw	s2,16(sp)
    233c:	00c12983          	lw	s3,12(sp)
    2340:	02010113          	addi	sp,sp,32
    2344:	00008067          	ret
    2348:	00008067          	ret

0000234c <neorv32_cpu_pmp_get_granularity>:
    234c:	3a0027f3          	csrr	a5,pmpcfg0
    2350:	f007f793          	andi	a5,a5,-256
    2354:	3a079073          	csrw	pmpcfg0,a5
    2358:	fff00793          	li	a5,-1
    235c:	3b079073          	csrw	pmpaddr0,a5
    2360:	3b002773          	csrr	a4,pmpaddr0
    2364:	01f00513          	li	a0,31
    2368:	00a757b3          	srl	a5,a4,a0
    236c:	0017f793          	andi	a5,a5,1
    2370:	00078663          	beqz	a5,237c <neorv32_cpu_pmp_get_granularity+0x30>
    2374:	fff50513          	addi	a0,a0,-1
    2378:	fe0518e3          	bnez	a0,2368 <neorv32_cpu_pmp_get_granularity+0x1c>
    237c:	00100793          	li	a5,1
    2380:	00350513          	addi	a0,a0,3
    2384:	00a79533          	sll	a0,a5,a0
    2388:	00008067          	ret

0000238c <neorv32_cpu_pmp_configure_region>:
    238c:	00700793          	li	a5,7
    2390:	2ec7f863          	bgeu	a5,a2,2680 <neorv32_cpu_pmp_configure_region+0x2f4>
    2394:	fe010113          	addi	sp,sp,-32
    2398:	00912a23          	sw	s1,20(sp)
    239c:	fff60493          	addi	s1,a2,-1
    23a0:	00812c23          	sw	s0,24(sp)
    23a4:	00112e23          	sw	ra,28(sp)
    23a8:	01212823          	sw	s2,16(sp)
    23ac:	01312623          	sw	s3,12(sp)
    23b0:	01412423          	sw	s4,8(sp)
    23b4:	01512223          	sw	s5,4(sp)
    23b8:	00c4f633          	and	a2,s1,a2
    23bc:	00050413          	mv	s0,a0
    23c0:	00100513          	li	a0,1
    23c4:	12061063          	bnez	a2,24e4 <neorv32_cpu_pmp_configure_region+0x158>
    23c8:	00347a13          	andi	s4,s0,3
    23cc:	003a1713          	slli	a4,s4,0x3
    23d0:	00445993          	srli	s3,s0,0x4
    23d4:	0ff00a13          	li	s4,255
    23d8:	00ea1a33          	sll	s4,s4,a4
    23dc:	00098513          	mv	a0,s3
    23e0:	00058a93          	mv	s5,a1
    23e4:	00e69933          	sll	s2,a3,a4
    23e8:	fffa4a13          	not	s4,s4
    23ec:	ca5ff0ef          	jal	ra,2090 <__neorv32_cpu_pmp_cfg_read>
    23f0:	00aa75b3          	and	a1,s4,a0
    23f4:	00098513          	mv	a0,s3
    23f8:	d41ff0ef          	jal	ra,2138 <__neorv32_cpu_pmp_cfg_write>
    23fc:	0024d793          	srli	a5,s1,0x2
    2400:	fff7c793          	not	a5,a5
    2404:	0157f7b3          	and	a5,a5,s5
    2408:	0034d593          	srli	a1,s1,0x3
    240c:	03f47513          	andi	a0,s0,63
    2410:	00f5e5b3          	or	a1,a1,a5
    2414:	03e00713          	li	a4,62
    2418:	fff50793          	addi	a5,a0,-1
    241c:	00f76e63          	bltu	a4,a5,2438 <neorv32_cpu_pmp_configure_region+0xac>
    2420:	00004737          	lui	a4,0x4
    2424:	00279793          	slli	a5,a5,0x2
    2428:	2d070713          	addi	a4,a4,720 # 42d0 <symbols.0+0x8c>
    242c:	00e787b3          	add	a5,a5,a4
    2430:	0007a783          	lw	a5,0(a5)
    2434:	00078067          	jr	a5
    2438:	3b059073          	csrw	pmpaddr0,a1
    243c:	01000513          	li	a0,16
    2440:	0800006f          	j	24c0 <neorv32_cpu_pmp_configure_region+0x134>
    2444:	3b159073          	csrw	pmpaddr1,a1
    2448:	ff5ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    244c:	3b259073          	csrw	pmpaddr2,a1
    2450:	fedff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    2454:	3b359073          	csrw	pmpaddr3,a1
    2458:	fe5ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    245c:	3b459073          	csrw	pmpaddr4,a1
    2460:	fddff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    2464:	3b559073          	csrw	pmpaddr5,a1
    2468:	fd5ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    246c:	3b659073          	csrw	pmpaddr6,a1
    2470:	fcdff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    2474:	3b759073          	csrw	pmpaddr7,a1
    2478:	fc5ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    247c:	3b859073          	csrw	pmpaddr8,a1
    2480:	fbdff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    2484:	3b959073          	csrw	pmpaddr9,a1
    2488:	fb5ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    248c:	3ba59073          	csrw	pmpaddr10,a1
    2490:	fadff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    2494:	3bb59073          	csrw	pmpaddr11,a1
    2498:	fa5ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    249c:	3bc59073          	csrw	pmpaddr12,a1
    24a0:	f9dff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    24a4:	3bd59073          	csrw	pmpaddr13,a1
    24a8:	f95ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    24ac:	3be59073          	csrw	pmpaddr14,a1
    24b0:	f8dff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    24b4:	3bf59073          	csrw	pmpaddr15,a1
    24b8:	f85ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    24bc:	3c059073          	csrw	0x3c0,a1
    24c0:	00000013          	nop
    24c4:	fff50513          	addi	a0,a0,-1
    24c8:	fe051ce3          	bnez	a0,24c0 <neorv32_cpu_pmp_configure_region+0x134>
    24cc:	00098513          	mv	a0,s3
    24d0:	bc1ff0ef          	jal	ra,2090 <__neorv32_cpu_pmp_cfg_read>
    24d4:	012565b3          	or	a1,a0,s2
    24d8:	00098513          	mv	a0,s3
    24dc:	c5dff0ef          	jal	ra,2138 <__neorv32_cpu_pmp_cfg_write>
    24e0:	00000513          	li	a0,0
    24e4:	01c12083          	lw	ra,28(sp)
    24e8:	01812403          	lw	s0,24(sp)
    24ec:	01412483          	lw	s1,20(sp)
    24f0:	01012903          	lw	s2,16(sp)
    24f4:	00c12983          	lw	s3,12(sp)
    24f8:	00812a03          	lw	s4,8(sp)
    24fc:	00412a83          	lw	s5,4(sp)
    2500:	02010113          	addi	sp,sp,32
    2504:	00008067          	ret
    2508:	3c159073          	csrw	0x3c1,a1
    250c:	f31ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    2510:	3c259073          	csrw	0x3c2,a1
    2514:	f29ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    2518:	3c359073          	csrw	0x3c3,a1
    251c:	f21ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    2520:	3c459073          	csrw	0x3c4,a1
    2524:	f19ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    2528:	3c559073          	csrw	0x3c5,a1
    252c:	f11ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    2530:	3c659073          	csrw	0x3c6,a1
    2534:	f09ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    2538:	3c759073          	csrw	0x3c7,a1
    253c:	f01ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    2540:	3c859073          	csrw	0x3c8,a1
    2544:	ef9ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    2548:	3c959073          	csrw	0x3c9,a1
    254c:	ef1ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    2550:	3ca59073          	csrw	0x3ca,a1
    2554:	ee9ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    2558:	3cb59073          	csrw	0x3cb,a1
    255c:	ee1ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    2560:	3cc59073          	csrw	0x3cc,a1
    2564:	ed9ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    2568:	3cd59073          	csrw	0x3cd,a1
    256c:	ed1ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    2570:	3ce59073          	csrw	0x3ce,a1
    2574:	ec9ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    2578:	3cf59073          	csrw	0x3cf,a1
    257c:	ec1ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    2580:	3d059073          	csrw	0x3d0,a1
    2584:	eb9ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    2588:	3d159073          	csrw	0x3d1,a1
    258c:	eb1ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    2590:	3d259073          	csrw	0x3d2,a1
    2594:	ea9ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    2598:	3d359073          	csrw	0x3d3,a1
    259c:	ea1ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    25a0:	3d459073          	csrw	0x3d4,a1
    25a4:	e99ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    25a8:	3d559073          	csrw	0x3d5,a1
    25ac:	e91ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    25b0:	3d659073          	csrw	0x3d6,a1
    25b4:	e89ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    25b8:	3d759073          	csrw	0x3d7,a1
    25bc:	e81ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    25c0:	3d859073          	csrw	0x3d8,a1
    25c4:	e79ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    25c8:	3d959073          	csrw	0x3d9,a1
    25cc:	e71ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    25d0:	3da59073          	csrw	0x3da,a1
    25d4:	e69ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    25d8:	3db59073          	csrw	0x3db,a1
    25dc:	e61ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    25e0:	3dc59073          	csrw	0x3dc,a1
    25e4:	e59ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    25e8:	3dd59073          	csrw	0x3dd,a1
    25ec:	e51ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    25f0:	3de59073          	csrw	0x3de,a1
    25f4:	e49ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    25f8:	3df59073          	csrw	0x3df,a1
    25fc:	e41ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    2600:	3e059073          	csrw	0x3e0,a1
    2604:	e39ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    2608:	3e159073          	csrw	0x3e1,a1
    260c:	e31ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    2610:	3e259073          	csrw	0x3e2,a1
    2614:	e29ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    2618:	3e359073          	csrw	0x3e3,a1
    261c:	e21ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    2620:	3e459073          	csrw	0x3e4,a1
    2624:	e19ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    2628:	3e559073          	csrw	0x3e5,a1
    262c:	e11ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    2630:	3e659073          	csrw	0x3e6,a1
    2634:	e09ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    2638:	3e759073          	csrw	0x3e7,a1
    263c:	e01ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    2640:	3e859073          	csrw	0x3e8,a1
    2644:	df9ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    2648:	3e959073          	csrw	0x3e9,a1
    264c:	df1ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    2650:	3ea59073          	csrw	0x3ea,a1
    2654:	de9ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    2658:	3eb59073          	csrw	0x3eb,a1
    265c:	de1ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    2660:	3ec59073          	csrw	0x3ec,a1
    2664:	dd9ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    2668:	3ed59073          	csrw	0x3ed,a1
    266c:	dd1ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    2670:	3ee59073          	csrw	0x3ee,a1
    2674:	dc9ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    2678:	3ef59073          	csrw	0x3ef,a1
    267c:	dc1ff06f          	j	243c <neorv32_cpu_pmp_configure_region+0xb0>
    2680:	00100513          	li	a0,1
    2684:	00008067          	ret

00002688 <neorv32_cpu_hpm_get_counters>:
    2688:	fe402503          	lw	a0,-28(zero) # ffffffe4 <__ctr0_io_space_begin+0x1e4>
    268c:	20057513          	andi	a0,a0,512
    2690:	14050a63          	beqz	a0,27e4 <neorv32_cpu_hpm_get_counters+0x15c>
    2694:	320027f3          	csrr	a5,mcountinhibit
    2698:	ff87e793          	ori	a5,a5,-8
    269c:	32079073          	csrw	mcountinhibit,a5
    26a0:	00100793          	li	a5,1
    26a4:	b0379073          	csrw	mhpmcounter3,a5
    26a8:	b0479073          	csrw	mhpmcounter4,a5
    26ac:	b0579073          	csrw	mhpmcounter5,a5
    26b0:	b0679073          	csrw	mhpmcounter6,a5
    26b4:	b0779073          	csrw	mhpmcounter7,a5
    26b8:	b0879073          	csrw	mhpmcounter8,a5
    26bc:	b0979073          	csrw	mhpmcounter9,a5
    26c0:	b0a79073          	csrw	mhpmcounter10,a5
    26c4:	b0b79073          	csrw	mhpmcounter11,a5
    26c8:	b0c79073          	csrw	mhpmcounter12,a5
    26cc:	b0d79073          	csrw	mhpmcounter13,a5
    26d0:	b0e79073          	csrw	mhpmcounter14,a5
    26d4:	b0f79073          	csrw	mhpmcounter15,a5
    26d8:	b1079073          	csrw	mhpmcounter16,a5
    26dc:	b1179073          	csrw	mhpmcounter17,a5
    26e0:	b1279073          	csrw	mhpmcounter18,a5
    26e4:	b1379073          	csrw	mhpmcounter19,a5
    26e8:	b1479073          	csrw	mhpmcounter20,a5
    26ec:	b1579073          	csrw	mhpmcounter21,a5
    26f0:	b1679073          	csrw	mhpmcounter22,a5
    26f4:	b1779073          	csrw	mhpmcounter23,a5
    26f8:	b1879073          	csrw	mhpmcounter24,a5
    26fc:	b1979073          	csrw	mhpmcounter25,a5
    2700:	b1a79073          	csrw	mhpmcounter26,a5
    2704:	b1b79073          	csrw	mhpmcounter27,a5
    2708:	b1c79073          	csrw	mhpmcounter28,a5
    270c:	b1d79073          	csrw	mhpmcounter29,a5
    2710:	b03027f3          	csrr	a5,mhpmcounter3
    2714:	b0402573          	csrr	a0,mhpmcounter4
    2718:	00f50533          	add	a0,a0,a5
    271c:	b05027f3          	csrr	a5,mhpmcounter5
    2720:	00f50533          	add	a0,a0,a5
    2724:	b06027f3          	csrr	a5,mhpmcounter6
    2728:	00f50533          	add	a0,a0,a5
    272c:	b07027f3          	csrr	a5,mhpmcounter7
    2730:	00f50533          	add	a0,a0,a5
    2734:	b08027f3          	csrr	a5,mhpmcounter8
    2738:	00f50533          	add	a0,a0,a5
    273c:	b09027f3          	csrr	a5,mhpmcounter9
    2740:	00f50533          	add	a0,a0,a5
    2744:	b0a027f3          	csrr	a5,mhpmcounter10
    2748:	00f50533          	add	a0,a0,a5
    274c:	b0b027f3          	csrr	a5,mhpmcounter11
    2750:	00f50533          	add	a0,a0,a5
    2754:	b0c027f3          	csrr	a5,mhpmcounter12
    2758:	00f50533          	add	a0,a0,a5
    275c:	b0d027f3          	csrr	a5,mhpmcounter13
    2760:	00f50533          	add	a0,a0,a5
    2764:	b0e027f3          	csrr	a5,mhpmcounter14
    2768:	00f50533          	add	a0,a0,a5
    276c:	b0f027f3          	csrr	a5,mhpmcounter15
    2770:	00f50533          	add	a0,a0,a5
    2774:	b10027f3          	csrr	a5,mhpmcounter16
    2778:	00f50533          	add	a0,a0,a5
    277c:	b11027f3          	csrr	a5,mhpmcounter17
    2780:	00f50533          	add	a0,a0,a5
    2784:	b12027f3          	csrr	a5,mhpmcounter18
    2788:	00f50533          	add	a0,a0,a5
    278c:	b13027f3          	csrr	a5,mhpmcounter19
    2790:	00f50533          	add	a0,a0,a5
    2794:	b14027f3          	csrr	a5,mhpmcounter20
    2798:	00f50533          	add	a0,a0,a5
    279c:	b15027f3          	csrr	a5,mhpmcounter21
    27a0:	00f50533          	add	a0,a0,a5
    27a4:	b16027f3          	csrr	a5,mhpmcounter22
    27a8:	00f50533          	add	a0,a0,a5
    27ac:	b17027f3          	csrr	a5,mhpmcounter23
    27b0:	00f50533          	add	a0,a0,a5
    27b4:	b18027f3          	csrr	a5,mhpmcounter24
    27b8:	00f50533          	add	a0,a0,a5
    27bc:	b19027f3          	csrr	a5,mhpmcounter25
    27c0:	00f50533          	add	a0,a0,a5
    27c4:	b1a027f3          	csrr	a5,mhpmcounter26
    27c8:	00f50533          	add	a0,a0,a5
    27cc:	b1b027f3          	csrr	a5,mhpmcounter27
    27d0:	00f50533          	add	a0,a0,a5
    27d4:	b1c027f3          	csrr	a5,mhpmcounter28
    27d8:	00f50533          	add	a0,a0,a5
    27dc:	b1d027f3          	csrr	a5,mhpmcounter29
    27e0:	00f50533          	add	a0,a0,a5
    27e4:	00008067          	ret

000027e8 <neorv32_twi_available>:
    27e8:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
    27ec:	01455513          	srli	a0,a0,0x14
    27f0:	00157513          	andi	a0,a0,1
    27f4:	00008067          	ret

000027f8 <neorv32_twi_setup>:
    27f8:	00757513          	andi	a0,a0,7
    27fc:	0015f593          	andi	a1,a1,1
    2800:	00351513          	slli	a0,a0,0x3
    2804:	00759593          	slli	a1,a1,0x7
    2808:	fb000793          	li	a5,-80
    280c:	00b56533          	or	a0,a0,a1
    2810:	0007a023          	sw	zero,0(a5)
    2814:	00156513          	ori	a0,a0,1
    2818:	00a7a023          	sw	a0,0(a5)
    281c:	00008067          	ret

00002820 <neorv32_twi_disable>:
    2820:	fb000713          	li	a4,-80
    2824:	00072783          	lw	a5,0(a4)
    2828:	ffe7f793          	andi	a5,a5,-2
    282c:	00f72023          	sw	a5,0(a4)
    2830:	00008067          	ret

00002834 <neorv32_twi_trans>:
    2834:	faa02a23          	sw	a0,-76(zero) # ffffffb4 <__ctr0_io_space_begin+0x1b4>
    2838:	fb002783          	lw	a5,-80(zero) # ffffffb0 <__ctr0_io_space_begin+0x1b0>
    283c:	fe07cee3          	bltz	a5,2838 <neorv32_twi_trans+0x4>
    2840:	fb002503          	lw	a0,-80(zero) # ffffffb0 <__ctr0_io_space_begin+0x1b0>
    2844:	01e55513          	srli	a0,a0,0x1e
    2848:	00154513          	xori	a0,a0,1
    284c:	00157513          	andi	a0,a0,1
    2850:	00008067          	ret

00002854 <neorv32_twi_generate_stop>:
    2854:	fb002783          	lw	a5,-80(zero) # ffffffb0 <__ctr0_io_space_begin+0x1b0>
    2858:	0047e793          	ori	a5,a5,4
    285c:	faf02823          	sw	a5,-80(zero) # ffffffb0 <__ctr0_io_space_begin+0x1b0>
    2860:	fb002783          	lw	a5,-80(zero) # ffffffb0 <__ctr0_io_space_begin+0x1b0>
    2864:	fe07cee3          	bltz	a5,2860 <neorv32_twi_generate_stop+0xc>
    2868:	00008067          	ret

0000286c <neorv32_twi_generate_start>:
    286c:	fb002783          	lw	a5,-80(zero) # ffffffb0 <__ctr0_io_space_begin+0x1b0>
    2870:	0027e793          	ori	a5,a5,2
    2874:	faf02823          	sw	a5,-80(zero) # ffffffb0 <__ctr0_io_space_begin+0x1b0>
    2878:	fb002783          	lw	a5,-80(zero) # ffffffb0 <__ctr0_io_space_begin+0x1b0>
    287c:	fe07cee3          	bltz	a5,2878 <neorv32_twi_generate_start+0xc>
    2880:	00008067          	ret
    2884:	0000                	unimp
    2886:	0000                	unimp
    2888:	0000                	unimp
    288a:	0000                	unimp
    288c:	0000                	unimp
    288e:	0000                	unimp

00002890 <__neorv32_rte_core>:
    2890:	fc010113          	addi	sp,sp,-64
    2894:	02112e23          	sw	ra,60(sp)
    2898:	02512c23          	sw	t0,56(sp)
    289c:	02612a23          	sw	t1,52(sp)
    28a0:	02712823          	sw	t2,48(sp)
    28a4:	02a12623          	sw	a0,44(sp)
    28a8:	02b12423          	sw	a1,40(sp)
    28ac:	02c12223          	sw	a2,36(sp)
    28b0:	02d12023          	sw	a3,32(sp)
    28b4:	00e12e23          	sw	a4,28(sp)
    28b8:	00f12c23          	sw	a5,24(sp)
    28bc:	01012a23          	sw	a6,20(sp)
    28c0:	01112823          	sw	a7,16(sp)
    28c4:	01c12623          	sw	t3,12(sp)
    28c8:	01d12423          	sw	t4,8(sp)
    28cc:	01e12223          	sw	t5,4(sp)
    28d0:	01f12023          	sw	t6,0(sp)
    28d4:	34102773          	csrr	a4,mepc
    28d8:	34071073          	csrw	mscratch,a4
    28dc:	342027f3          	csrr	a5,mcause
    28e0:	0807ca63          	bltz	a5,2974 <__neorv32_rte_core+0xe4>
    28e4:	00071683          	lh	a3,0(a4)
    28e8:	00300593          	li	a1,3
    28ec:	0036f693          	andi	a3,a3,3
    28f0:	00270613          	addi	a2,a4,2
    28f4:	00b69463          	bne	a3,a1,28fc <__neorv32_rte_core+0x6c>
    28f8:	00470613          	addi	a2,a4,4
    28fc:	34161073          	csrw	mepc,a2
    2900:	00b00713          	li	a4,11
    2904:	04f77c63          	bgeu	a4,a5,295c <__neorv32_rte_core+0xcc>
    2908:	000037b7          	lui	a5,0x3
    290c:	b5878793          	addi	a5,a5,-1192 # 2b58 <__neorv32_rte_debug_exc_handler>
    2910:	000780e7          	jalr	a5
    2914:	03c12083          	lw	ra,60(sp)
    2918:	03812283          	lw	t0,56(sp)
    291c:	03412303          	lw	t1,52(sp)
    2920:	03012383          	lw	t2,48(sp)
    2924:	02c12503          	lw	a0,44(sp)
    2928:	02812583          	lw	a1,40(sp)
    292c:	02412603          	lw	a2,36(sp)
    2930:	02012683          	lw	a3,32(sp)
    2934:	01c12703          	lw	a4,28(sp)
    2938:	01812783          	lw	a5,24(sp)
    293c:	01412803          	lw	a6,20(sp)
    2940:	01012883          	lw	a7,16(sp)
    2944:	00c12e03          	lw	t3,12(sp)
    2948:	00812e83          	lw	t4,8(sp)
    294c:	00412f03          	lw	t5,4(sp)
    2950:	00012f83          	lw	t6,0(sp)
    2954:	04010113          	addi	sp,sp,64
    2958:	30200073          	mret
    295c:	00004737          	lui	a4,0x4
    2960:	00279793          	slli	a5,a5,0x2
    2964:	3cc70713          	addi	a4,a4,972 # 43cc <symbols.0+0x188>
    2968:	00e787b3          	add	a5,a5,a4
    296c:	0007a783          	lw	a5,0(a5)
    2970:	00078067          	jr	a5
    2974:	80000737          	lui	a4,0x80000
    2978:	ffd74713          	xori	a4,a4,-3
    297c:	00e787b3          	add	a5,a5,a4
    2980:	01c00713          	li	a4,28
    2984:	f8f762e3          	bltu	a4,a5,2908 <__neorv32_rte_core+0x78>
    2988:	00004737          	lui	a4,0x4
    298c:	00279793          	slli	a5,a5,0x2
    2990:	3fc70713          	addi	a4,a4,1020 # 43fc <symbols.0+0x1b8>
    2994:	00e787b3          	add	a5,a5,a4
    2998:	0007a783          	lw	a5,0(a5)
    299c:	00078067          	jr	a5
    29a0:	89c1a783          	lw	a5,-1892(gp) # 8000009c <__neorv32_rte_vector_lut>
    29a4:	f6dff06f          	j	2910 <__neorv32_rte_core+0x80>
    29a8:	8a01a783          	lw	a5,-1888(gp) # 800000a0 <__neorv32_rte_vector_lut+0x4>
    29ac:	f65ff06f          	j	2910 <__neorv32_rte_core+0x80>
    29b0:	8a41a783          	lw	a5,-1884(gp) # 800000a4 <__neorv32_rte_vector_lut+0x8>
    29b4:	f5dff06f          	j	2910 <__neorv32_rte_core+0x80>
    29b8:	8a81a783          	lw	a5,-1880(gp) # 800000a8 <__neorv32_rte_vector_lut+0xc>
    29bc:	f55ff06f          	j	2910 <__neorv32_rte_core+0x80>
    29c0:	8ac1a783          	lw	a5,-1876(gp) # 800000ac <__neorv32_rte_vector_lut+0x10>
    29c4:	f4dff06f          	j	2910 <__neorv32_rte_core+0x80>
    29c8:	8b01a783          	lw	a5,-1872(gp) # 800000b0 <__neorv32_rte_vector_lut+0x14>
    29cc:	f45ff06f          	j	2910 <__neorv32_rte_core+0x80>
    29d0:	8b41a783          	lw	a5,-1868(gp) # 800000b4 <__neorv32_rte_vector_lut+0x18>
    29d4:	f3dff06f          	j	2910 <__neorv32_rte_core+0x80>
    29d8:	8b81a783          	lw	a5,-1864(gp) # 800000b8 <__neorv32_rte_vector_lut+0x1c>
    29dc:	f35ff06f          	j	2910 <__neorv32_rte_core+0x80>
    29e0:	8bc1a783          	lw	a5,-1860(gp) # 800000bc <__neorv32_rte_vector_lut+0x20>
    29e4:	f2dff06f          	j	2910 <__neorv32_rte_core+0x80>
    29e8:	8c01a783          	lw	a5,-1856(gp) # 800000c0 <__neorv32_rte_vector_lut+0x24>
    29ec:	f25ff06f          	j	2910 <__neorv32_rte_core+0x80>
    29f0:	8c41a783          	lw	a5,-1852(gp) # 800000c4 <__neorv32_rte_vector_lut+0x28>
    29f4:	f1dff06f          	j	2910 <__neorv32_rte_core+0x80>
    29f8:	8c81a783          	lw	a5,-1848(gp) # 800000c8 <__neorv32_rte_vector_lut+0x2c>
    29fc:	f15ff06f          	j	2910 <__neorv32_rte_core+0x80>
    2a00:	8cc1a783          	lw	a5,-1844(gp) # 800000cc <__neorv32_rte_vector_lut+0x30>
    2a04:	f0dff06f          	j	2910 <__neorv32_rte_core+0x80>
    2a08:	8d01a783          	lw	a5,-1840(gp) # 800000d0 <__neorv32_rte_vector_lut+0x34>
    2a0c:	f05ff06f          	j	2910 <__neorv32_rte_core+0x80>
    2a10:	8d41a783          	lw	a5,-1836(gp) # 800000d4 <__neorv32_rte_vector_lut+0x38>
    2a14:	efdff06f          	j	2910 <__neorv32_rte_core+0x80>
    2a18:	8d81a783          	lw	a5,-1832(gp) # 800000d8 <__neorv32_rte_vector_lut+0x3c>
    2a1c:	ef5ff06f          	j	2910 <__neorv32_rte_core+0x80>
    2a20:	8dc1a783          	lw	a5,-1828(gp) # 800000dc <__neorv32_rte_vector_lut+0x40>
    2a24:	eedff06f          	j	2910 <__neorv32_rte_core+0x80>
    2a28:	8e01a783          	lw	a5,-1824(gp) # 800000e0 <__neorv32_rte_vector_lut+0x44>
    2a2c:	ee5ff06f          	j	2910 <__neorv32_rte_core+0x80>
    2a30:	8e41a783          	lw	a5,-1820(gp) # 800000e4 <__neorv32_rte_vector_lut+0x48>
    2a34:	eddff06f          	j	2910 <__neorv32_rte_core+0x80>
    2a38:	8e81a783          	lw	a5,-1816(gp) # 800000e8 <__neorv32_rte_vector_lut+0x4c>
    2a3c:	ed5ff06f          	j	2910 <__neorv32_rte_core+0x80>
    2a40:	8ec1a783          	lw	a5,-1812(gp) # 800000ec <__neorv32_rte_vector_lut+0x50>
    2a44:	ecdff06f          	j	2910 <__neorv32_rte_core+0x80>
    2a48:	8f01a783          	lw	a5,-1808(gp) # 800000f0 <__neorv32_rte_vector_lut+0x54>
    2a4c:	ec5ff06f          	j	2910 <__neorv32_rte_core+0x80>
    2a50:	8f41a783          	lw	a5,-1804(gp) # 800000f4 <__neorv32_rte_vector_lut+0x58>
    2a54:	ebdff06f          	j	2910 <__neorv32_rte_core+0x80>
    2a58:	8f81a783          	lw	a5,-1800(gp) # 800000f8 <__neorv32_rte_vector_lut+0x5c>
    2a5c:	eb5ff06f          	j	2910 <__neorv32_rte_core+0x80>
    2a60:	8fc1a783          	lw	a5,-1796(gp) # 800000fc <__neorv32_rte_vector_lut+0x60>
    2a64:	eadff06f          	j	2910 <__neorv32_rte_core+0x80>
    2a68:	9001a783          	lw	a5,-1792(gp) # 80000100 <__neorv32_rte_vector_lut+0x64>
    2a6c:	ea5ff06f          	j	2910 <__neorv32_rte_core+0x80>
    2a70:	9041a783          	lw	a5,-1788(gp) # 80000104 <__neorv32_rte_vector_lut+0x68>
    2a74:	e9dff06f          	j	2910 <__neorv32_rte_core+0x80>
    2a78:	9081a783          	lw	a5,-1784(gp) # 80000108 <__neorv32_rte_vector_lut+0x6c>
    2a7c:	e95ff06f          	j	2910 <__neorv32_rte_core+0x80>
    2a80:	90c1a783          	lw	a5,-1780(gp) # 8000010c <__neorv32_rte_vector_lut+0x70>
    2a84:	e8dff06f          	j	2910 <__neorv32_rte_core+0x80>
    2a88:	0000                	unimp
    2a8a:	0000                	unimp
    2a8c:	0000                	unimp
    2a8e:	0000                	unimp

00002a90 <__neorv32_rte_print_true_false>:
    2a90:	00050863          	beqz	a0,2aa0 <__neorv32_rte_print_true_false+0x10>
    2a94:	00004537          	lui	a0,0x4
    2a98:	47050513          	addi	a0,a0,1136 # 4470 <symbols.0+0x22c>
    2a9c:	bc0ff06f          	j	1e5c <neorv32_uart0_print>
    2aa0:	00004537          	lui	a0,0x4
    2aa4:	47850513          	addi	a0,a0,1144 # 4478 <symbols.0+0x234>
    2aa8:	ff5ff06f          	j	2a9c <__neorv32_rte_print_true_false+0xc>

00002aac <__neorv32_rte_print_hex_word>:
    2aac:	fe010113          	addi	sp,sp,-32
    2ab0:	01212823          	sw	s2,16(sp)
    2ab4:	00050913          	mv	s2,a0
    2ab8:	00004537          	lui	a0,0x4
    2abc:	00912a23          	sw	s1,20(sp)
    2ac0:	47c50513          	addi	a0,a0,1148 # 447c <symbols.0+0x238>
    2ac4:	000054b7          	lui	s1,0x5
    2ac8:	00812c23          	sw	s0,24(sp)
    2acc:	01312623          	sw	s3,12(sp)
    2ad0:	00112e23          	sw	ra,28(sp)
    2ad4:	01c00413          	li	s0,28
    2ad8:	b84ff0ef          	jal	ra,1e5c <neorv32_uart0_print>
    2adc:	c4c48493          	addi	s1,s1,-948 # 4c4c <hex_symbols.0>
    2ae0:	ffc00993          	li	s3,-4
    2ae4:	008957b3          	srl	a5,s2,s0
    2ae8:	00f7f793          	andi	a5,a5,15
    2aec:	00f487b3          	add	a5,s1,a5
    2af0:	0007c503          	lbu	a0,0(a5)
    2af4:	ffc40413          	addi	s0,s0,-4
    2af8:	b30ff0ef          	jal	ra,1e28 <neorv32_uart0_putc>
    2afc:	ff3414e3          	bne	s0,s3,2ae4 <__neorv32_rte_print_hex_word+0x38>
    2b00:	01c12083          	lw	ra,28(sp)
    2b04:	01812403          	lw	s0,24(sp)
    2b08:	01412483          	lw	s1,20(sp)
    2b0c:	01012903          	lw	s2,16(sp)
    2b10:	00c12983          	lw	s3,12(sp)
    2b14:	02010113          	addi	sp,sp,32
    2b18:	00008067          	ret

00002b1c <__neorv32_rte_print_checkbox>:
    2b1c:	ff010113          	addi	sp,sp,-16
    2b20:	00812423          	sw	s0,8(sp)
    2b24:	00050413          	mv	s0,a0
    2b28:	05b00513          	li	a0,91
    2b2c:	00112623          	sw	ra,12(sp)
    2b30:	af8ff0ef          	jal	ra,1e28 <neorv32_uart0_putc>
    2b34:	07800513          	li	a0,120
    2b38:	00041463          	bnez	s0,2b40 <__neorv32_rte_print_checkbox+0x24>
    2b3c:	02000513          	li	a0,32
    2b40:	ae8ff0ef          	jal	ra,1e28 <neorv32_uart0_putc>
    2b44:	00812403          	lw	s0,8(sp)
    2b48:	00c12083          	lw	ra,12(sp)
    2b4c:	05d00513          	li	a0,93
    2b50:	01010113          	addi	sp,sp,16
    2b54:	ad4ff06f          	j	1e28 <neorv32_uart0_putc>

00002b58 <__neorv32_rte_debug_exc_handler>:
    2b58:	ff010113          	addi	sp,sp,-16
    2b5c:	00112623          	sw	ra,12(sp)
    2b60:	00812423          	sw	s0,8(sp)
    2b64:	00912223          	sw	s1,4(sp)
    2b68:	a04ff0ef          	jal	ra,1d6c <neorv32_uart0_available>
    2b6c:	1c050863          	beqz	a0,2d3c <__neorv32_rte_debug_exc_handler+0x1e4>
    2b70:	00004537          	lui	a0,0x4
    2b74:	48050513          	addi	a0,a0,1152 # 4480 <symbols.0+0x23c>
    2b78:	ae4ff0ef          	jal	ra,1e5c <neorv32_uart0_print>
    2b7c:	34202473          	csrr	s0,mcause
    2b80:	00900713          	li	a4,9
    2b84:	00f47793          	andi	a5,s0,15
    2b88:	03078493          	addi	s1,a5,48
    2b8c:	00f77463          	bgeu	a4,a5,2b94 <__neorv32_rte_debug_exc_handler+0x3c>
    2b90:	05778493          	addi	s1,a5,87
    2b94:	00b00793          	li	a5,11
    2b98:	0087ee63          	bltu	a5,s0,2bb4 <__neorv32_rte_debug_exc_handler+0x5c>
    2b9c:	00004737          	lui	a4,0x4
    2ba0:	00241793          	slli	a5,s0,0x2
    2ba4:	64070713          	addi	a4,a4,1600 # 4640 <symbols.0+0x3fc>
    2ba8:	00e787b3          	add	a5,a5,a4
    2bac:	0007a783          	lw	a5,0(a5)
    2bb0:	00078067          	jr	a5
    2bb4:	800007b7          	lui	a5,0x80000
    2bb8:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
    2bbc:	14e40e63          	beq	s0,a4,2d18 <__neorv32_rte_debug_exc_handler+0x1c0>
    2bc0:	02876a63          	bltu	a4,s0,2bf4 <__neorv32_rte_debug_exc_handler+0x9c>
    2bc4:	00378713          	addi	a4,a5,3
    2bc8:	12e40c63          	beq	s0,a4,2d00 <__neorv32_rte_debug_exc_handler+0x1a8>
    2bcc:	00778793          	addi	a5,a5,7
    2bd0:	12f40e63          	beq	s0,a5,2d0c <__neorv32_rte_debug_exc_handler+0x1b4>
    2bd4:	00004537          	lui	a0,0x4
    2bd8:	5e050513          	addi	a0,a0,1504 # 45e0 <symbols.0+0x39c>
    2bdc:	a80ff0ef          	jal	ra,1e5c <neorv32_uart0_print>
    2be0:	00040513          	mv	a0,s0
    2be4:	ec9ff0ef          	jal	ra,2aac <__neorv32_rte_print_hex_word>
    2be8:	00100793          	li	a5,1
    2bec:	08f40c63          	beq	s0,a5,2c84 <__neorv32_rte_debug_exc_handler+0x12c>
    2bf0:	0280006f          	j	2c18 <__neorv32_rte_debug_exc_handler+0xc0>
    2bf4:	ff07c793          	xori	a5,a5,-16
    2bf8:	00f407b3          	add	a5,s0,a5
    2bfc:	00f00713          	li	a4,15
    2c00:	fcf76ae3          	bltu	a4,a5,2bd4 <__neorv32_rte_debug_exc_handler+0x7c>
    2c04:	00004537          	lui	a0,0x4
    2c08:	5d050513          	addi	a0,a0,1488 # 45d0 <symbols.0+0x38c>
    2c0c:	a50ff0ef          	jal	ra,1e5c <neorv32_uart0_print>
    2c10:	00048513          	mv	a0,s1
    2c14:	a14ff0ef          	jal	ra,1e28 <neorv32_uart0_putc>
    2c18:	ffd47413          	andi	s0,s0,-3
    2c1c:	00500793          	li	a5,5
    2c20:	06f40263          	beq	s0,a5,2c84 <__neorv32_rte_debug_exc_handler+0x12c>
    2c24:	00004537          	lui	a0,0x4
    2c28:	62450513          	addi	a0,a0,1572 # 4624 <symbols.0+0x3e0>
    2c2c:	a30ff0ef          	jal	ra,1e5c <neorv32_uart0_print>
    2c30:	34002573          	csrr	a0,mscratch
    2c34:	e79ff0ef          	jal	ra,2aac <__neorv32_rte_print_hex_word>
    2c38:	00004537          	lui	a0,0x4
    2c3c:	62c50513          	addi	a0,a0,1580 # 462c <symbols.0+0x3e8>
    2c40:	a1cff0ef          	jal	ra,1e5c <neorv32_uart0_print>
    2c44:	34302573          	csrr	a0,mtval
    2c48:	e65ff0ef          	jal	ra,2aac <__neorv32_rte_print_hex_word>
    2c4c:	00812403          	lw	s0,8(sp)
    2c50:	00c12083          	lw	ra,12(sp)
    2c54:	00412483          	lw	s1,4(sp)
    2c58:	00004537          	lui	a0,0x4
    2c5c:	63850513          	addi	a0,a0,1592 # 4638 <symbols.0+0x3f4>
    2c60:	01010113          	addi	sp,sp,16
    2c64:	9f8ff06f          	j	1e5c <neorv32_uart0_print>
    2c68:	00004537          	lui	a0,0x4
    2c6c:	48850513          	addi	a0,a0,1160 # 4488 <symbols.0+0x244>
    2c70:	9ecff0ef          	jal	ra,1e5c <neorv32_uart0_print>
    2c74:	fb1ff06f          	j	2c24 <__neorv32_rte_debug_exc_handler+0xcc>
    2c78:	00004537          	lui	a0,0x4
    2c7c:	4a850513          	addi	a0,a0,1192 # 44a8 <symbols.0+0x264>
    2c80:	9dcff0ef          	jal	ra,1e5c <neorv32_uart0_print>
    2c84:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
    2c88:	0a07d463          	bgez	a5,2d30 <__neorv32_rte_debug_exc_handler+0x1d8>
    2c8c:	0017f793          	andi	a5,a5,1
    2c90:	08078a63          	beqz	a5,2d24 <__neorv32_rte_debug_exc_handler+0x1cc>
    2c94:	00004537          	lui	a0,0x4
    2c98:	5f850513          	addi	a0,a0,1528 # 45f8 <symbols.0+0x3b4>
    2c9c:	fd5ff06f          	j	2c70 <__neorv32_rte_debug_exc_handler+0x118>
    2ca0:	00004537          	lui	a0,0x4
    2ca4:	4c450513          	addi	a0,a0,1220 # 44c4 <symbols.0+0x280>
    2ca8:	fc9ff06f          	j	2c70 <__neorv32_rte_debug_exc_handler+0x118>
    2cac:	00004537          	lui	a0,0x4
    2cb0:	4d850513          	addi	a0,a0,1240 # 44d8 <symbols.0+0x294>
    2cb4:	fbdff06f          	j	2c70 <__neorv32_rte_debug_exc_handler+0x118>
    2cb8:	00004537          	lui	a0,0x4
    2cbc:	4e450513          	addi	a0,a0,1252 # 44e4 <symbols.0+0x2a0>
    2cc0:	fb1ff06f          	j	2c70 <__neorv32_rte_debug_exc_handler+0x118>
    2cc4:	00004537          	lui	a0,0x4
    2cc8:	4fc50513          	addi	a0,a0,1276 # 44fc <symbols.0+0x2b8>
    2ccc:	fb5ff06f          	j	2c80 <__neorv32_rte_debug_exc_handler+0x128>
    2cd0:	00004537          	lui	a0,0x4
    2cd4:	51050513          	addi	a0,a0,1296 # 4510 <symbols.0+0x2cc>
    2cd8:	f99ff06f          	j	2c70 <__neorv32_rte_debug_exc_handler+0x118>
    2cdc:	00004537          	lui	a0,0x4
    2ce0:	52c50513          	addi	a0,a0,1324 # 452c <symbols.0+0x2e8>
    2ce4:	f9dff06f          	j	2c80 <__neorv32_rte_debug_exc_handler+0x128>
    2ce8:	00004537          	lui	a0,0x4
    2cec:	54050513          	addi	a0,a0,1344 # 4540 <symbols.0+0x2fc>
    2cf0:	f81ff06f          	j	2c70 <__neorv32_rte_debug_exc_handler+0x118>
    2cf4:	00004537          	lui	a0,0x4
    2cf8:	56050513          	addi	a0,a0,1376 # 4560 <symbols.0+0x31c>
    2cfc:	f75ff06f          	j	2c70 <__neorv32_rte_debug_exc_handler+0x118>
    2d00:	00004537          	lui	a0,0x4
    2d04:	58050513          	addi	a0,a0,1408 # 4580 <symbols.0+0x33c>
    2d08:	f69ff06f          	j	2c70 <__neorv32_rte_debug_exc_handler+0x118>
    2d0c:	00004537          	lui	a0,0x4
    2d10:	59c50513          	addi	a0,a0,1436 # 459c <symbols.0+0x358>
    2d14:	f5dff06f          	j	2c70 <__neorv32_rte_debug_exc_handler+0x118>
    2d18:	00004537          	lui	a0,0x4
    2d1c:	5b450513          	addi	a0,a0,1460 # 45b4 <symbols.0+0x370>
    2d20:	f51ff06f          	j	2c70 <__neorv32_rte_debug_exc_handler+0x118>
    2d24:	00004537          	lui	a0,0x4
    2d28:	60850513          	addi	a0,a0,1544 # 4608 <symbols.0+0x3c4>
    2d2c:	f45ff06f          	j	2c70 <__neorv32_rte_debug_exc_handler+0x118>
    2d30:	00004537          	lui	a0,0x4
    2d34:	61850513          	addi	a0,a0,1560 # 4618 <symbols.0+0x3d4>
    2d38:	f39ff06f          	j	2c70 <__neorv32_rte_debug_exc_handler+0x118>
    2d3c:	00c12083          	lw	ra,12(sp)
    2d40:	00812403          	lw	s0,8(sp)
    2d44:	00412483          	lw	s1,4(sp)
    2d48:	01010113          	addi	sp,sp,16
    2d4c:	00008067          	ret

00002d50 <neorv32_rte_exception_install>:
    2d50:	01f00793          	li	a5,31
    2d54:	00a7ee63          	bltu	a5,a0,2d70 <neorv32_rte_exception_install+0x20>
    2d58:	89c18793          	addi	a5,gp,-1892 # 8000009c <__neorv32_rte_vector_lut>
    2d5c:	00251513          	slli	a0,a0,0x2
    2d60:	00a78533          	add	a0,a5,a0
    2d64:	00b52023          	sw	a1,0(a0)
    2d68:	00000513          	li	a0,0
    2d6c:	00008067          	ret
    2d70:	00100513          	li	a0,1
    2d74:	00008067          	ret

00002d78 <neorv32_rte_exception_uninstall>:
    2d78:	01f00793          	li	a5,31
    2d7c:	02a7e263          	bltu	a5,a0,2da0 <neorv32_rte_exception_uninstall+0x28>
    2d80:	89c18793          	addi	a5,gp,-1892 # 8000009c <__neorv32_rte_vector_lut>
    2d84:	00251513          	slli	a0,a0,0x2
    2d88:	00a78533          	add	a0,a5,a0
    2d8c:	000037b7          	lui	a5,0x3
    2d90:	b5878793          	addi	a5,a5,-1192 # 2b58 <__neorv32_rte_debug_exc_handler>
    2d94:	00f52023          	sw	a5,0(a0)
    2d98:	00000513          	li	a0,0
    2d9c:	00008067          	ret
    2da0:	00100513          	li	a0,1
    2da4:	00008067          	ret

00002da8 <neorv32_rte_setup>:
    2da8:	ff010113          	addi	sp,sp,-16
    2dac:	000037b7          	lui	a5,0x3
    2db0:	00112623          	sw	ra,12(sp)
    2db4:	00812423          	sw	s0,8(sp)
    2db8:	00912223          	sw	s1,4(sp)
    2dbc:	89078793          	addi	a5,a5,-1904 # 2890 <__neorv32_rte_core>
    2dc0:	30579073          	csrw	mtvec,a5
    2dc4:	00000413          	li	s0,0
    2dc8:	01d00493          	li	s1,29
    2dcc:	00040513          	mv	a0,s0
    2dd0:	00140413          	addi	s0,s0,1
    2dd4:	0ff47413          	andi	s0,s0,255
    2dd8:	fa1ff0ef          	jal	ra,2d78 <neorv32_rte_exception_uninstall>
    2ddc:	fe9418e3          	bne	s0,s1,2dcc <neorv32_rte_setup+0x24>
    2de0:	00c12083          	lw	ra,12(sp)
    2de4:	00812403          	lw	s0,8(sp)
    2de8:	00412483          	lw	s1,4(sp)
    2dec:	01010113          	addi	sp,sp,16
    2df0:	00008067          	ret

00002df4 <neorv32_rte_print_hw_version>:
    2df4:	fe010113          	addi	sp,sp,-32
    2df8:	00112e23          	sw	ra,28(sp)
    2dfc:	00812c23          	sw	s0,24(sp)
    2e00:	00912a23          	sw	s1,20(sp)
    2e04:	01212823          	sw	s2,16(sp)
    2e08:	01312623          	sw	s3,12(sp)
    2e0c:	01412423          	sw	s4,8(sp)
    2e10:	f5dfe0ef          	jal	ra,1d6c <neorv32_uart0_available>
    2e14:	06050663          	beqz	a0,2e80 <neorv32_rte_print_hw_version+0x8c>
    2e18:	00000493          	li	s1,0
    2e1c:	00300a13          	li	s4,3
    2e20:	00400993          	li	s3,4
    2e24:	f13027f3          	csrr	a5,mimpid
    2e28:	40900733          	neg	a4,s1
    2e2c:	00371713          	slli	a4,a4,0x3
    2e30:	01870713          	addi	a4,a4,24
    2e34:	00e7d7b3          	srl	a5,a5,a4
    2e38:	0ff7f793          	andi	a5,a5,255
    2e3c:	0047d513          	srli	a0,a5,0x4
    2e40:	40a00933          	neg	s2,a0
    2e44:	00491913          	slli	s2,s2,0x4
    2e48:	03078793          	addi	a5,a5,48
    2e4c:	0ff97913          	andi	s2,s2,255
    2e50:	0ff7f413          	andi	s0,a5,255
    2e54:	00050663          	beqz	a0,2e60 <neorv32_rte_print_hw_version+0x6c>
    2e58:	03050513          	addi	a0,a0,48
    2e5c:	fcdfe0ef          	jal	ra,1e28 <neorv32_uart0_putc>
    2e60:	01240533          	add	a0,s0,s2
    2e64:	0ff57513          	andi	a0,a0,255
    2e68:	fc1fe0ef          	jal	ra,1e28 <neorv32_uart0_putc>
    2e6c:	01448663          	beq	s1,s4,2e78 <neorv32_rte_print_hw_version+0x84>
    2e70:	02e00513          	li	a0,46
    2e74:	fb5fe0ef          	jal	ra,1e28 <neorv32_uart0_putc>
    2e78:	00148493          	addi	s1,s1,1
    2e7c:	fb3494e3          	bne	s1,s3,2e24 <neorv32_rte_print_hw_version+0x30>
    2e80:	01c12083          	lw	ra,28(sp)
    2e84:	01812403          	lw	s0,24(sp)
    2e88:	01412483          	lw	s1,20(sp)
    2e8c:	01012903          	lw	s2,16(sp)
    2e90:	00c12983          	lw	s3,12(sp)
    2e94:	00812a03          	lw	s4,8(sp)
    2e98:	02010113          	addi	sp,sp,32
    2e9c:	00008067          	ret

00002ea0 <neorv32_rte_print_hw_config>:
    2ea0:	fd010113          	addi	sp,sp,-48
    2ea4:	02112623          	sw	ra,44(sp)
    2ea8:	02812423          	sw	s0,40(sp)
    2eac:	02912223          	sw	s1,36(sp)
    2eb0:	03212023          	sw	s2,32(sp)
    2eb4:	01312e23          	sw	s3,28(sp)
    2eb8:	eb5fe0ef          	jal	ra,1d6c <neorv32_uart0_available>
    2ebc:	5a050863          	beqz	a0,346c <neorv32_rte_print_hw_config+0x5cc>
    2ec0:	00004537          	lui	a0,0x4
    2ec4:	67050513          	addi	a0,a0,1648 # 4670 <symbols.0+0x42c>
    2ec8:	fedfe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    2ecc:	00004537          	lui	a0,0x4
    2ed0:	69c50513          	addi	a0,a0,1692 # 469c <symbols.0+0x458>
    2ed4:	fe1fe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    2ed8:	fe002583          	lw	a1,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
    2edc:	00004537          	lui	a0,0x4
    2ee0:	6b050513          	addi	a0,a0,1712 # 46b0 <symbols.0+0x46c>
    2ee4:	fd1fe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    2ee8:	00004537          	lui	a0,0x4
    2eec:	6cc50513          	addi	a0,a0,1740 # 46cc <symbols.0+0x488>
    2ef0:	fc5fe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    2ef4:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
    2ef8:	000087b7          	lui	a5,0x8
    2efc:	00f57533          	and	a0,a0,a5
    2f00:	b91ff0ef          	jal	ra,2a90 <__neorv32_rte_print_true_false>
    2f04:	00004537          	lui	a0,0x4
    2f08:	6e050513          	addi	a0,a0,1760 # 46e0 <symbols.0+0x49c>
    2f0c:	fa9fe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    2f10:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
    2f14:	000047b7          	lui	a5,0x4
    2f18:	00f57533          	and	a0,a0,a5
    2f1c:	b75ff0ef          	jal	ra,2a90 <__neorv32_rte_print_true_false>
    2f20:	f14025f3          	csrr	a1,mhartid
    2f24:	f1102673          	csrr	a2,mvendorid
    2f28:	00004537          	lui	a0,0x4
    2f2c:	6f450513          	addi	a0,a0,1780 # 46f4 <symbols.0+0x4b0>
    2f30:	f85fe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    2f34:	f1202473          	csrr	s0,marchid
    2f38:	00004537          	lui	a0,0x4
    2f3c:	00040593          	mv	a1,s0
    2f40:	72850513          	addi	a0,a0,1832 # 4728 <symbols.0+0x4e4>
    2f44:	f71fe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    2f48:	01300793          	li	a5,19
    2f4c:	00f41863          	bne	s0,a5,2f5c <neorv32_rte_print_hw_config+0xbc>
    2f50:	00004537          	lui	a0,0x4
    2f54:	74050513          	addi	a0,a0,1856 # 4740 <symbols.0+0x4fc>
    2f58:	f5dfe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    2f5c:	f13025f3          	csrr	a1,mimpid
    2f60:	00004537          	lui	a0,0x4
    2f64:	74c50513          	addi	a0,a0,1868 # 474c <symbols.0+0x508>
    2f68:	f4dfe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    2f6c:	e89ff0ef          	jal	ra,2df4 <neorv32_rte_print_hw_version>
    2f70:	02900513          	li	a0,41
    2f74:	eb5fe0ef          	jal	ra,1e28 <neorv32_uart0_putc>
    2f78:	00004537          	lui	a0,0x4
    2f7c:	76850513          	addi	a0,a0,1896 # 4768 <symbols.0+0x524>
    2f80:	f35fe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    2f84:	301027f3          	csrr	a5,misa
    2f88:	00100713          	li	a4,1
    2f8c:	01e7d793          	srli	a5,a5,0x1e
    2f90:	44e79663          	bne	a5,a4,33dc <neorv32_rte_print_hw_config+0x53c>
    2f94:	00004537          	lui	a0,0x4
    2f98:	78050513          	addi	a0,a0,1920 # 4780 <symbols.0+0x53c>
    2f9c:	f19fe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    2fa0:	00004537          	lui	a0,0x4
    2fa4:	79450513          	addi	a0,a0,1940 # 4794 <symbols.0+0x550>
    2fa8:	f0dfe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    2fac:	30102973          	csrr	s2,misa
    2fb0:	00000413          	li	s0,0
    2fb4:	00100993          	li	s3,1
    2fb8:	01a00493          	li	s1,26
    2fbc:	008997b3          	sll	a5,s3,s0
    2fc0:	0127f7b3          	and	a5,a5,s2
    2fc4:	00078c63          	beqz	a5,2fdc <neorv32_rte_print_hw_config+0x13c>
    2fc8:	04140513          	addi	a0,s0,65
    2fcc:	0ff57513          	andi	a0,a0,255
    2fd0:	e59fe0ef          	jal	ra,1e28 <neorv32_uart0_putc>
    2fd4:	02000513          	li	a0,32
    2fd8:	e51fe0ef          	jal	ra,1e28 <neorv32_uart0_putc>
    2fdc:	00140413          	addi	s0,s0,1
    2fe0:	fc941ee3          	bne	s0,s1,2fbc <neorv32_rte_print_hw_config+0x11c>
    2fe4:	fe402403          	lw	s0,-28(zero) # ffffffe4 <__ctr0_io_space_begin+0x1e4>
    2fe8:	00147793          	andi	a5,s0,1
    2fec:	00078863          	beqz	a5,2ffc <neorv32_rte_print_hw_config+0x15c>
    2ff0:	00004537          	lui	a0,0x4
    2ff4:	7ac50513          	addi	a0,a0,1964 # 47ac <symbols.0+0x568>
    2ff8:	ebdfe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    2ffc:	08047793          	andi	a5,s0,128
    3000:	00078863          	beqz	a5,3010 <neorv32_rte_print_hw_config+0x170>
    3004:	00004537          	lui	a0,0x4
    3008:	7b450513          	addi	a0,a0,1972 # 47b4 <symbols.0+0x570>
    300c:	ea9fe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    3010:	20047793          	andi	a5,s0,512
    3014:	00078863          	beqz	a5,3024 <neorv32_rte_print_hw_config+0x184>
    3018:	00004537          	lui	a0,0x4
    301c:	7bc50513          	addi	a0,a0,1980 # 47bc <symbols.0+0x578>
    3020:	e95fe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    3024:	00247793          	andi	a5,s0,2
    3028:	00078863          	beqz	a5,3038 <neorv32_rte_print_hw_config+0x198>
    302c:	00004537          	lui	a0,0x4
    3030:	7c450513          	addi	a0,a0,1988 # 47c4 <symbols.0+0x580>
    3034:	e81fe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    3038:	00447793          	andi	a5,s0,4
    303c:	00078863          	beqz	a5,304c <neorv32_rte_print_hw_config+0x1ac>
    3040:	00004537          	lui	a0,0x4
    3044:	7d050513          	addi	a0,a0,2000 # 47d0 <symbols.0+0x58c>
    3048:	e6dfe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    304c:	02047793          	andi	a5,s0,32
    3050:	00078863          	beqz	a5,3060 <neorv32_rte_print_hw_config+0x1c0>
    3054:	00004537          	lui	a0,0x4
    3058:	7d850513          	addi	a0,a0,2008 # 47d8 <symbols.0+0x594>
    305c:	e59fe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    3060:	04047793          	andi	a5,s0,64
    3064:	00078863          	beqz	a5,3074 <neorv32_rte_print_hw_config+0x1d4>
    3068:	00004537          	lui	a0,0x4
    306c:	7e050513          	addi	a0,a0,2016 # 47e0 <symbols.0+0x59c>
    3070:	e45fe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    3074:	40047793          	andi	a5,s0,1024
    3078:	00078863          	beqz	a5,3088 <neorv32_rte_print_hw_config+0x1e8>
    307c:	00004537          	lui	a0,0x4
    3080:	7ec50513          	addi	a0,a0,2028 # 47ec <symbols.0+0x5a8>
    3084:	e31fe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    3088:	400007b7          	lui	a5,0x40000
    308c:	00f477b3          	and	a5,s0,a5
    3090:	00078863          	beqz	a5,30a0 <neorv32_rte_print_hw_config+0x200>
    3094:	00004537          	lui	a0,0x4
    3098:	7f450513          	addi	a0,a0,2036 # 47f4 <symbols.0+0x5b0>
    309c:	e19fe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    30a0:	00045863          	bgez	s0,30b0 <neorv32_rte_print_hw_config+0x210>
    30a4:	00005537          	lui	a0,0x5
    30a8:	80050513          	addi	a0,a0,-2048 # 4800 <symbols.0+0x5bc>
    30ac:	e09fe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    30b0:	00005537          	lui	a0,0x5
    30b4:	80c50513          	addi	a0,a0,-2036 # 480c <symbols.0+0x5c8>
    30b8:	dfdfe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    30bc:	9d8ff0ef          	jal	ra,2294 <neorv32_cpu_pmp_get_num_regions>
    30c0:	00a12223          	sw	a0,4(sp)
    30c4:	32050263          	beqz	a0,33e8 <neorv32_rte_print_hw_config+0x548>
    30c8:	a84ff0ef          	jal	ra,234c <neorv32_cpu_pmp_get_granularity>
    30cc:	00412583          	lw	a1,4(sp)
    30d0:	00050613          	mv	a2,a0
    30d4:	00005537          	lui	a0,0x5
    30d8:	82450513          	addi	a0,a0,-2012 # 4824 <symbols.0+0x5e0>
    30dc:	dd9fe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    30e0:	00005537          	lui	a0,0x5
    30e4:	86450513          	addi	a0,a0,-1948 # 4864 <symbols.0+0x620>
    30e8:	dcdfe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    30ec:	00005537          	lui	a0,0x5
    30f0:	88450513          	addi	a0,a0,-1916 # 4884 <symbols.0+0x640>
    30f4:	dc1fe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    30f8:	fe802783          	lw	a5,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
    30fc:	0017f793          	andi	a5,a5,1
    3100:	2e078c63          	beqz	a5,33f8 <neorv32_rte_print_hw_config+0x558>
    3104:	00005537          	lui	a0,0x5
    3108:	8a050513          	addi	a0,a0,-1888 # 48a0 <symbols.0+0x65c>
    310c:	da9fe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    3110:	ff002583          	lw	a1,-16(zero) # fffffff0 <__ctr0_io_space_begin+0x1f0>
    3114:	00005537          	lui	a0,0x5
    3118:	8c850513          	addi	a0,a0,-1848 # 48c8 <symbols.0+0x684>
    311c:	d99fe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    3120:	00005537          	lui	a0,0x5
    3124:	8e450513          	addi	a0,a0,-1820 # 48e4 <symbols.0+0x6a0>
    3128:	d8dfe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    312c:	fe802783          	lw	a5,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
    3130:	0047f793          	andi	a5,a5,4
    3134:	2c078c63          	beqz	a5,340c <neorv32_rte_print_hw_config+0x56c>
    3138:	ff802583          	lw	a1,-8(zero) # fffffff8 <__ctr0_io_space_begin+0x1f8>
    313c:	00005537          	lui	a0,0x5
    3140:	8fc50513          	addi	a0,a0,-1796 # 48fc <symbols.0+0x6b8>
    3144:	d71fe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    3148:	ff402583          	lw	a1,-12(zero) # fffffff4 <__ctr0_io_space_begin+0x1f4>
    314c:	00005537          	lui	a0,0x5
    3150:	90c50513          	addi	a0,a0,-1780 # 490c <symbols.0+0x6c8>
    3154:	d61fe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    3158:	00005537          	lui	a0,0x5
    315c:	92850513          	addi	a0,a0,-1752 # 4928 <symbols.0+0x6e4>
    3160:	d55fe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    3164:	fe802783          	lw	a5,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
    3168:	0087f793          	andi	a5,a5,8
    316c:	2a078863          	beqz	a5,341c <neorv32_rte_print_hw_config+0x57c>
    3170:	ffc02583          	lw	a1,-4(zero) # fffffffc <__ctr0_io_space_begin+0x1fc>
    3174:	00005537          	lui	a0,0x5
    3178:	8fc50513          	addi	a0,a0,-1796 # 48fc <symbols.0+0x6b8>
    317c:	d39fe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    3180:	00005537          	lui	a0,0x5
    3184:	94050513          	addi	a0,a0,-1728 # 4940 <symbols.0+0x6fc>
    3188:	d2dfe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    318c:	fe802783          	lw	a5,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
    3190:	0207f793          	andi	a5,a5,32
    3194:	2c078063          	beqz	a5,3454 <neorv32_rte_print_hw_config+0x5b4>
    3198:	00005537          	lui	a0,0x5
    319c:	95850513          	addi	a0,a0,-1704 # 4958 <symbols.0+0x714>
    31a0:	d15fe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    31a4:	fec02703          	lw	a4,-20(zero) # ffffffec <__ctr0_io_space_begin+0x1ec>
    31a8:	00f77713          	andi	a4,a4,15
    31ac:	00070663          	beqz	a4,31b8 <neorv32_rte_print_hw_config+0x318>
    31b0:	00100793          	li	a5,1
    31b4:	00e79733          	sll	a4,a5,a4
    31b8:	fec02683          	lw	a3,-20(zero) # ffffffec <__ctr0_io_space_begin+0x1ec>
    31bc:	0046d693          	srli	a3,a3,0x4
    31c0:	00f6f693          	andi	a3,a3,15
    31c4:	00068663          	beqz	a3,31d0 <neorv32_rte_print_hw_config+0x330>
    31c8:	00100793          	li	a5,1
    31cc:	00d796b3          	sll	a3,a5,a3
    31d0:	fec02403          	lw	s0,-20(zero) # ffffffec <__ctr0_io_space_begin+0x1ec>
    31d4:	00100493          	li	s1,1
    31d8:	00070593          	mv	a1,a4
    31dc:	00845413          	srli	s0,s0,0x8
    31e0:	00f47413          	andi	s0,s0,15
    31e4:	00849633          	sll	a2,s1,s0
    31e8:	00869533          	sll	a0,a3,s0
    31ec:	00c12623          	sw	a2,12(sp)
    31f0:	00e12423          	sw	a4,8(sp)
    31f4:	00d12223          	sw	a3,4(sp)
    31f8:	4b0000ef          	jal	ra,36a8 <__mulsi3>
    31fc:	00812703          	lw	a4,8(sp)
    3200:	00412683          	lw	a3,4(sp)
    3204:	00c12603          	lw	a2,12(sp)
    3208:	00050593          	mv	a1,a0
    320c:	00005537          	lui	a0,0x5
    3210:	96050513          	addi	a0,a0,-1696 # 4960 <symbols.0+0x71c>
    3214:	ca1fe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    3218:	20041a63          	bnez	s0,342c <neorv32_rte_print_hw_config+0x58c>
    321c:	00005537          	lui	a0,0x5
    3220:	9a050513          	addi	a0,a0,-1632 # 49a0 <symbols.0+0x75c>
    3224:	c91fe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    3228:	00005537          	lui	a0,0x5
    322c:	9d050513          	addi	a0,a0,-1584 # 49d0 <symbols.0+0x78c>
    3230:	c85fe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    3234:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
    3238:	00257513          	andi	a0,a0,2
    323c:	855ff0ef          	jal	ra,2a90 <__neorv32_rte_print_true_false>
    3240:	00005537          	lui	a0,0x5
    3244:	9e850513          	addi	a0,a0,-1560 # 49e8 <symbols.0+0x7a4>
    3248:	c6dfe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    324c:	fe802783          	lw	a5,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
    3250:	0107f793          	andi	a5,a5,16
    3254:	20078663          	beqz	a5,3460 <neorv32_rte_print_hw_config+0x5c0>
    3258:	00005537          	lui	a0,0x5
    325c:	a0050513          	addi	a0,a0,-1536 # 4a00 <symbols.0+0x7bc>
    3260:	c55fe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    3264:	00005537          	lui	a0,0x5
    3268:	a1050513          	addi	a0,a0,-1520 # 4a10 <symbols.0+0x7cc>
    326c:	c49fe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    3270:	fe802403          	lw	s0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
    3274:	00010537          	lui	a0,0x10
    3278:	00a47533          	and	a0,s0,a0
    327c:	8a1ff0ef          	jal	ra,2b1c <__neorv32_rte_print_checkbox>
    3280:	00005537          	lui	a0,0x5
    3284:	a2c50513          	addi	a0,a0,-1492 # 4a2c <symbols.0+0x7e8>
    3288:	c2dfe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    328c:	00020537          	lui	a0,0x20
    3290:	00a47533          	and	a0,s0,a0
    3294:	889ff0ef          	jal	ra,2b1c <__neorv32_rte_print_checkbox>
    3298:	00005537          	lui	a0,0x5
    329c:	a3450513          	addi	a0,a0,-1484 # 4a34 <symbols.0+0x7f0>
    32a0:	c15fe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    32a4:	00040537          	lui	a0,0x40
    32a8:	00a47533          	and	a0,s0,a0
    32ac:	871ff0ef          	jal	ra,2b1c <__neorv32_rte_print_checkbox>
    32b0:	00005537          	lui	a0,0x5
    32b4:	a3c50513          	addi	a0,a0,-1476 # 4a3c <symbols.0+0x7f8>
    32b8:	bfdfe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    32bc:	04000537          	lui	a0,0x4000
    32c0:	00a47533          	and	a0,s0,a0
    32c4:	859ff0ef          	jal	ra,2b1c <__neorv32_rte_print_checkbox>
    32c8:	00005537          	lui	a0,0x5
    32cc:	a4450513          	addi	a0,a0,-1468 # 4a44 <symbols.0+0x800>
    32d0:	be5fe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    32d4:	00080537          	lui	a0,0x80
    32d8:	00a47533          	and	a0,s0,a0
    32dc:	841ff0ef          	jal	ra,2b1c <__neorv32_rte_print_checkbox>
    32e0:	00005537          	lui	a0,0x5
    32e4:	a4c50513          	addi	a0,a0,-1460 # 4a4c <symbols.0+0x808>
    32e8:	bcdfe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    32ec:	00100537          	lui	a0,0x100
    32f0:	00a47533          	and	a0,s0,a0
    32f4:	829ff0ef          	jal	ra,2b1c <__neorv32_rte_print_checkbox>
    32f8:	00005537          	lui	a0,0x5
    32fc:	a5450513          	addi	a0,a0,-1452 # 4a54 <symbols.0+0x810>
    3300:	bb5fe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    3304:	00200537          	lui	a0,0x200
    3308:	00a47533          	and	a0,s0,a0
    330c:	811ff0ef          	jal	ra,2b1c <__neorv32_rte_print_checkbox>
    3310:	00005537          	lui	a0,0x5
    3314:	a5c50513          	addi	a0,a0,-1444 # 4a5c <symbols.0+0x818>
    3318:	b9dfe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    331c:	00400537          	lui	a0,0x400
    3320:	00a47533          	and	a0,s0,a0
    3324:	ff8ff0ef          	jal	ra,2b1c <__neorv32_rte_print_checkbox>
    3328:	00005537          	lui	a0,0x5
    332c:	a6450513          	addi	a0,a0,-1436 # 4a64 <symbols.0+0x820>
    3330:	b85fe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    3334:	01000537          	lui	a0,0x1000
    3338:	00a47533          	and	a0,s0,a0
    333c:	fe0ff0ef          	jal	ra,2b1c <__neorv32_rte_print_checkbox>
    3340:	00005537          	lui	a0,0x5
    3344:	a6c50513          	addi	a0,a0,-1428 # 4a6c <symbols.0+0x828>
    3348:	b6dfe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    334c:	00800537          	lui	a0,0x800
    3350:	00a47533          	and	a0,s0,a0
    3354:	fc8ff0ef          	jal	ra,2b1c <__neorv32_rte_print_checkbox>
    3358:	00005537          	lui	a0,0x5
    335c:	a7450513          	addi	a0,a0,-1420 # 4a74 <symbols.0+0x830>
    3360:	b55fe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    3364:	02000537          	lui	a0,0x2000
    3368:	00a47533          	and	a0,s0,a0
    336c:	fb0ff0ef          	jal	ra,2b1c <__neorv32_rte_print_checkbox>
    3370:	00005537          	lui	a0,0x5
    3374:	a7c50513          	addi	a0,a0,-1412 # 4a7c <symbols.0+0x838>
    3378:	b3dfe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    337c:	08000537          	lui	a0,0x8000
    3380:	00a47533          	and	a0,s0,a0
    3384:	f98ff0ef          	jal	ra,2b1c <__neorv32_rte_print_checkbox>
    3388:	00005537          	lui	a0,0x5
    338c:	a8450513          	addi	a0,a0,-1404 # 4a84 <symbols.0+0x840>
    3390:	b25fe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    3394:	10000537          	lui	a0,0x10000
    3398:	00a47533          	and	a0,s0,a0
    339c:	f80ff0ef          	jal	ra,2b1c <__neorv32_rte_print_checkbox>
    33a0:	00005537          	lui	a0,0x5
    33a4:	a9050513          	addi	a0,a0,-1392 # 4a90 <symbols.0+0x84c>
    33a8:	b0dfe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    33ac:	20000537          	lui	a0,0x20000
    33b0:	00a47533          	and	a0,s0,a0
    33b4:	f68ff0ef          	jal	ra,2b1c <__neorv32_rte_print_checkbox>
    33b8:	02812403          	lw	s0,40(sp)
    33bc:	02c12083          	lw	ra,44(sp)
    33c0:	02412483          	lw	s1,36(sp)
    33c4:	02012903          	lw	s2,32(sp)
    33c8:	01c12983          	lw	s3,28(sp)
    33cc:	00005537          	lui	a0,0x5
    33d0:	a9850513          	addi	a0,a0,-1384 # 4a98 <symbols.0+0x854>
    33d4:	03010113          	addi	sp,sp,48
    33d8:	addfe06f          	j	1eb4 <neorv32_uart0_printf>
    33dc:	00004537          	lui	a0,0x4
    33e0:	78c50513          	addi	a0,a0,1932 # 478c <symbols.0+0x548>
    33e4:	bb9ff06f          	j	2f9c <neorv32_rte_print_hw_config+0xfc>
    33e8:	00005537          	lui	a0,0x5
    33ec:	85050513          	addi	a0,a0,-1968 # 4850 <symbols.0+0x60c>
    33f0:	ac5fe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    33f4:	cedff06f          	j	30e0 <neorv32_rte_print_hw_config+0x240>
    33f8:	ff002583          	lw	a1,-16(zero) # fffffff0 <__ctr0_io_space_begin+0x1f0>
    33fc:	00005537          	lui	a0,0x5
    3400:	8b050513          	addi	a0,a0,-1872 # 48b0 <symbols.0+0x66c>
    3404:	ab1fe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    3408:	d09ff06f          	j	3110 <neorv32_rte_print_hw_config+0x270>
    340c:	00004537          	lui	a0,0x4
    3410:	47850513          	addi	a0,a0,1144 # 4478 <symbols.0+0x234>
    3414:	aa1fe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    3418:	d31ff06f          	j	3148 <neorv32_rte_print_hw_config+0x2a8>
    341c:	00004537          	lui	a0,0x4
    3420:	47850513          	addi	a0,a0,1144 # 4478 <symbols.0+0x234>
    3424:	a91fe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    3428:	d59ff06f          	j	3180 <neorv32_rte_print_hw_config+0x2e0>
    342c:	fec02783          	lw	a5,-20(zero) # ffffffec <__ctr0_io_space_begin+0x1ec>
    3430:	00c7d793          	srli	a5,a5,0xc
    3434:	00f7f793          	andi	a5,a5,15
    3438:	00979863          	bne	a5,s1,3448 <neorv32_rte_print_hw_config+0x5a8>
    343c:	00005537          	lui	a0,0x5
    3440:	9b450513          	addi	a0,a0,-1612 # 49b4 <symbols.0+0x770>
    3444:	de1ff06f          	j	3224 <neorv32_rte_print_hw_config+0x384>
    3448:	00004537          	lui	a0,0x4
    344c:	1dc50513          	addi	a0,a0,476 # 41dc <__etext+0x934>
    3450:	dd5ff06f          	j	3224 <neorv32_rte_print_hw_config+0x384>
    3454:	00004537          	lui	a0,0x4
    3458:	47850513          	addi	a0,a0,1144 # 4478 <symbols.0+0x234>
    345c:	dc9ff06f          	j	3224 <neorv32_rte_print_hw_config+0x384>
    3460:	00005537          	lui	a0,0x5
    3464:	a0850513          	addi	a0,a0,-1528 # 4a08 <symbols.0+0x7c4>
    3468:	df9ff06f          	j	3260 <neorv32_rte_print_hw_config+0x3c0>
    346c:	02c12083          	lw	ra,44(sp)
    3470:	02812403          	lw	s0,40(sp)
    3474:	02412483          	lw	s1,36(sp)
    3478:	02012903          	lw	s2,32(sp)
    347c:	01c12983          	lw	s3,28(sp)
    3480:	03010113          	addi	sp,sp,48
    3484:	00008067          	ret

00003488 <neorv32_rte_print_credits>:
    3488:	ff010113          	addi	sp,sp,-16
    348c:	00112623          	sw	ra,12(sp)
    3490:	8ddfe0ef          	jal	ra,1d6c <neorv32_uart0_available>
    3494:	00050c63          	beqz	a0,34ac <neorv32_rte_print_credits+0x24>
    3498:	00c12083          	lw	ra,12(sp)
    349c:	00005537          	lui	a0,0x5
    34a0:	aa050513          	addi	a0,a0,-1376 # 4aa0 <symbols.0+0x85c>
    34a4:	01010113          	addi	sp,sp,16
    34a8:	9b5fe06f          	j	1e5c <neorv32_uart0_print>
    34ac:	00c12083          	lw	ra,12(sp)
    34b0:	01010113          	addi	sp,sp,16
    34b4:	00008067          	ret

000034b8 <neorv32_rte_print_logo>:
    34b8:	f2010113          	addi	sp,sp,-224
    34bc:	000055b7          	lui	a1,0x5
    34c0:	0b000613          	li	a2,176
    34c4:	b9c58593          	addi	a1,a1,-1124 # 4b9c <symbols.0+0x958>
    34c8:	00010513          	mv	a0,sp
    34cc:	0c112e23          	sw	ra,220(sp)
    34d0:	0c812c23          	sw	s0,216(sp)
    34d4:	0c912a23          	sw	s1,212(sp)
    34d8:	0d212823          	sw	s2,208(sp)
    34dc:	0d312623          	sw	s3,204(sp)
    34e0:	0d412423          	sw	s4,200(sp)
    34e4:	0d512223          	sw	s5,196(sp)
    34e8:	0d612023          	sw	s6,192(sp)
    34ec:	0b712e23          	sw	s7,188(sp)
    34f0:	290000ef          	jal	ra,3780 <memcpy>
    34f4:	879fe0ef          	jal	ra,1d6c <neorv32_uart0_available>
    34f8:	08050863          	beqz	a0,3588 <neorv32_rte_print_logo+0xd0>
    34fc:	00004ab7          	lui	s5,0x4
    3500:	00010413          	mv	s0,sp
    3504:	000a8b13          	mv	s6,s5
    3508:	00400b93          	li	s7,4
    350c:	1dca8513          	addi	a0,s5,476 # 41dc <__etext+0x934>
    3510:	94dfe0ef          	jal	ra,1e5c <neorv32_uart0_print>
    3514:	00040913          	mv	s2,s0
    3518:	00000493          	li	s1,0
    351c:	00092a03          	lw	s4,0(s2)
    3520:	02000993          	li	s3,32
    3524:	02300513          	li	a0,35
    3528:	000a4463          	bltz	s4,3530 <neorv32_rte_print_logo+0x78>
    352c:	02000513          	li	a0,32
    3530:	fff98993          	addi	s3,s3,-1
    3534:	8f5fe0ef          	jal	ra,1e28 <neorv32_uart0_putc>
    3538:	001a1a13          	slli	s4,s4,0x1
    353c:	fe0994e3          	bnez	s3,3524 <neorv32_rte_print_logo+0x6c>
    3540:	00148493          	addi	s1,s1,1
    3544:	00490913          	addi	s2,s2,4
    3548:	fd749ae3          	bne	s1,s7,351c <neorv32_rte_print_logo+0x64>
    354c:	01040413          	addi	s0,s0,16
    3550:	0b010793          	addi	a5,sp,176
    3554:	fa879ce3          	bne	a5,s0,350c <neorv32_rte_print_logo+0x54>
    3558:	0d812403          	lw	s0,216(sp)
    355c:	0dc12083          	lw	ra,220(sp)
    3560:	0d412483          	lw	s1,212(sp)
    3564:	0d012903          	lw	s2,208(sp)
    3568:	0cc12983          	lw	s3,204(sp)
    356c:	0c812a03          	lw	s4,200(sp)
    3570:	0c412a83          	lw	s5,196(sp)
    3574:	0bc12b83          	lw	s7,188(sp)
    3578:	1dcb0513          	addi	a0,s6,476
    357c:	0c012b03          	lw	s6,192(sp)
    3580:	0e010113          	addi	sp,sp,224
    3584:	8d9fe06f          	j	1e5c <neorv32_uart0_print>
    3588:	0dc12083          	lw	ra,220(sp)
    358c:	0d812403          	lw	s0,216(sp)
    3590:	0d412483          	lw	s1,212(sp)
    3594:	0d012903          	lw	s2,208(sp)
    3598:	0cc12983          	lw	s3,204(sp)
    359c:	0c812a03          	lw	s4,200(sp)
    35a0:	0c412a83          	lw	s5,196(sp)
    35a4:	0c012b03          	lw	s6,192(sp)
    35a8:	0bc12b83          	lw	s7,188(sp)
    35ac:	0e010113          	addi	sp,sp,224
    35b0:	00008067          	ret

000035b4 <neorv32_rte_check_isa>:
    35b4:	30102673          	csrr	a2,misa
    35b8:	400007b7          	lui	a5,0x40000
    35bc:	10078793          	addi	a5,a5,256 # 40000100 <__crt0_copy_data_src_begin+0x3fffb4a4>
    35c0:	00f67733          	and	a4,a2,a5
    35c4:	04f70463          	beq	a4,a5,360c <neorv32_rte_check_isa+0x58>
    35c8:	fe010113          	addi	sp,sp,-32
    35cc:	00112e23          	sw	ra,28(sp)
    35d0:	02051463          	bnez	a0,35f8 <neorv32_rte_check_isa+0x44>
    35d4:	400005b7          	lui	a1,0x40000
    35d8:	00005537          	lui	a0,0x5
    35dc:	10058593          	addi	a1,a1,256 # 40000100 <__crt0_copy_data_src_begin+0x3fffb4a4>
    35e0:	b1450513          	addi	a0,a0,-1260 # 4b14 <symbols.0+0x8d0>
    35e4:	8d1fe0ef          	jal	ra,1eb4 <neorv32_uart0_printf>
    35e8:	01c12083          	lw	ra,28(sp)
    35ec:	00100513          	li	a0,1
    35f0:	02010113          	addi	sp,sp,32
    35f4:	00008067          	ret
    35f8:	00c12623          	sw	a2,12(sp)
    35fc:	f70fe0ef          	jal	ra,1d6c <neorv32_uart0_available>
    3600:	00c12603          	lw	a2,12(sp)
    3604:	fc0508e3          	beqz	a0,35d4 <neorv32_rte_check_isa+0x20>
    3608:	fe1ff06f          	j	35e8 <neorv32_rte_check_isa+0x34>
    360c:	00000513          	li	a0,0
    3610:	00008067          	ret

00003614 <neorv32_spi_available>:
    3614:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
    3618:	01355513          	srli	a0,a0,0x13
    361c:	00157513          	andi	a0,a0,1
    3620:	00008067          	ret

00003624 <neorv32_spi_setup>:
    3624:	00757513          	andi	a0,a0,7
    3628:	0036f793          	andi	a5,a3,3
    362c:	00167613          	andi	a2,a2,1
    3630:	00a51513          	slli	a0,a0,0xa
    3634:	00d79793          	slli	a5,a5,0xd
    3638:	0015f593          	andi	a1,a1,1
    363c:	00f567b3          	or	a5,a0,a5
    3640:	00f61613          	slli	a2,a2,0xf
    3644:	00c7e7b3          	or	a5,a5,a2
    3648:	00959593          	slli	a1,a1,0x9
    364c:	fa800713          	li	a4,-88
    3650:	00b7e7b3          	or	a5,a5,a1
    3654:	00072023          	sw	zero,0(a4)
    3658:	1007e793          	ori	a5,a5,256
    365c:	00f72023          	sw	a5,0(a4)
    3660:	00008067          	ret

00003664 <neorv32_spi_disable>:
    3664:	fa800713          	li	a4,-88
    3668:	00072783          	lw	a5,0(a4)
    366c:	eff7f793          	andi	a5,a5,-257
    3670:	00f72023          	sw	a5,0(a4)
    3674:	00008067          	ret

00003678 <neorv32_spi_trans>:
    3678:	faa02623          	sw	a0,-84(zero) # ffffffac <__ctr0_io_space_begin+0x1ac>
    367c:	fa802783          	lw	a5,-88(zero) # ffffffa8 <__ctr0_io_space_begin+0x1a8>
    3680:	fe07cee3          	bltz	a5,367c <neorv32_spi_trans+0x4>
    3684:	fac02503          	lw	a0,-84(zero) # ffffffac <__ctr0_io_space_begin+0x1ac>
    3688:	00008067          	ret

0000368c <neorv32_spi_busy>:
    368c:	fa802503          	lw	a0,-88(zero) # ffffffa8 <__ctr0_io_space_begin+0x1a8>
    3690:	01f55513          	srli	a0,a0,0x1f
    3694:	00008067          	ret

00003698 <neorv32_gpio_port_set>:
    3698:	fc000793          	li	a5,-64
    369c:	00a7a423          	sw	a0,8(a5)
    36a0:	00b7a623          	sw	a1,12(a5)
    36a4:	00008067          	ret

000036a8 <__mulsi3>:
    36a8:	00050613          	mv	a2,a0
    36ac:	00000513          	li	a0,0
    36b0:	0015f693          	andi	a3,a1,1
    36b4:	00068463          	beqz	a3,36bc <__mulsi3+0x14>
    36b8:	00c50533          	add	a0,a0,a2
    36bc:	0015d593          	srli	a1,a1,0x1
    36c0:	00161613          	slli	a2,a2,0x1
    36c4:	fe0596e3          	bnez	a1,36b0 <__mulsi3+0x8>
    36c8:	00008067          	ret

000036cc <__divsi3>:
    36cc:	06054063          	bltz	a0,372c <__umodsi3+0x10>
    36d0:	0605c663          	bltz	a1,373c <__umodsi3+0x20>

000036d4 <__udivsi3>:
    36d4:	00058613          	mv	a2,a1
    36d8:	00050593          	mv	a1,a0
    36dc:	fff00513          	li	a0,-1
    36e0:	02060c63          	beqz	a2,3718 <__udivsi3+0x44>
    36e4:	00100693          	li	a3,1
    36e8:	00b67a63          	bgeu	a2,a1,36fc <__udivsi3+0x28>
    36ec:	00c05863          	blez	a2,36fc <__udivsi3+0x28>
    36f0:	00161613          	slli	a2,a2,0x1
    36f4:	00169693          	slli	a3,a3,0x1
    36f8:	feb66ae3          	bltu	a2,a1,36ec <__udivsi3+0x18>
    36fc:	00000513          	li	a0,0
    3700:	00c5e663          	bltu	a1,a2,370c <__udivsi3+0x38>
    3704:	40c585b3          	sub	a1,a1,a2
    3708:	00d56533          	or	a0,a0,a3
    370c:	0016d693          	srli	a3,a3,0x1
    3710:	00165613          	srli	a2,a2,0x1
    3714:	fe0696e3          	bnez	a3,3700 <__udivsi3+0x2c>
    3718:	00008067          	ret

0000371c <__umodsi3>:
    371c:	00008293          	mv	t0,ra
    3720:	fb5ff0ef          	jal	ra,36d4 <__udivsi3>
    3724:	00058513          	mv	a0,a1
    3728:	00028067          	jr	t0
    372c:	40a00533          	neg	a0,a0
    3730:	00b04863          	bgtz	a1,3740 <__umodsi3+0x24>
    3734:	40b005b3          	neg	a1,a1
    3738:	f9dff06f          	j	36d4 <__udivsi3>
    373c:	40b005b3          	neg	a1,a1
    3740:	00008293          	mv	t0,ra
    3744:	f91ff0ef          	jal	ra,36d4 <__udivsi3>
    3748:	40a00533          	neg	a0,a0
    374c:	00028067          	jr	t0

00003750 <__modsi3>:
    3750:	00008293          	mv	t0,ra
    3754:	0005ca63          	bltz	a1,3768 <__modsi3+0x18>
    3758:	00054c63          	bltz	a0,3770 <__modsi3+0x20>
    375c:	f79ff0ef          	jal	ra,36d4 <__udivsi3>
    3760:	00058513          	mv	a0,a1
    3764:	00028067          	jr	t0
    3768:	40b005b3          	neg	a1,a1
    376c:	fe0558e3          	bgez	a0,375c <__modsi3+0xc>
    3770:	40a00533          	neg	a0,a0
    3774:	f61ff0ef          	jal	ra,36d4 <__udivsi3>
    3778:	40b00533          	neg	a0,a1
    377c:	00028067          	jr	t0

00003780 <memcpy>:
    3780:	00a5c7b3          	xor	a5,a1,a0
    3784:	0037f793          	andi	a5,a5,3
    3788:	00c508b3          	add	a7,a0,a2
    378c:	06079663          	bnez	a5,37f8 <memcpy+0x78>
    3790:	00300793          	li	a5,3
    3794:	06c7f263          	bgeu	a5,a2,37f8 <memcpy+0x78>
    3798:	00357793          	andi	a5,a0,3
    379c:	00050713          	mv	a4,a0
    37a0:	0c079a63          	bnez	a5,3874 <memcpy+0xf4>
    37a4:	ffc8f613          	andi	a2,a7,-4
    37a8:	40e606b3          	sub	a3,a2,a4
    37ac:	02000793          	li	a5,32
    37b0:	02000293          	li	t0,32
    37b4:	06d7c263          	blt	a5,a3,3818 <memcpy+0x98>
    37b8:	00058693          	mv	a3,a1
    37bc:	00070793          	mv	a5,a4
    37c0:	02c77863          	bgeu	a4,a2,37f0 <memcpy+0x70>
    37c4:	0006a803          	lw	a6,0(a3)
    37c8:	00478793          	addi	a5,a5,4
    37cc:	00468693          	addi	a3,a3,4
    37d0:	ff07ae23          	sw	a6,-4(a5)
    37d4:	fec7e8e3          	bltu	a5,a2,37c4 <memcpy+0x44>
    37d8:	fff60793          	addi	a5,a2,-1
    37dc:	40e787b3          	sub	a5,a5,a4
    37e0:	ffc7f793          	andi	a5,a5,-4
    37e4:	00478793          	addi	a5,a5,4
    37e8:	00f70733          	add	a4,a4,a5
    37ec:	00f585b3          	add	a1,a1,a5
    37f0:	01176863          	bltu	a4,a7,3800 <memcpy+0x80>
    37f4:	00008067          	ret
    37f8:	00050713          	mv	a4,a0
    37fc:	ff157ce3          	bgeu	a0,a7,37f4 <memcpy+0x74>
    3800:	0005c783          	lbu	a5,0(a1)
    3804:	00170713          	addi	a4,a4,1
    3808:	00158593          	addi	a1,a1,1
    380c:	fef70fa3          	sb	a5,-1(a4)
    3810:	ff1768e3          	bltu	a4,a7,3800 <memcpy+0x80>
    3814:	00008067          	ret
    3818:	0045a683          	lw	a3,4(a1)
    381c:	01c5a783          	lw	a5,28(a1)
    3820:	0005af83          	lw	t6,0(a1)
    3824:	0085af03          	lw	t5,8(a1)
    3828:	00c5ae83          	lw	t4,12(a1)
    382c:	0105ae03          	lw	t3,16(a1)
    3830:	0145a303          	lw	t1,20(a1)
    3834:	0185a803          	lw	a6,24(a1)
    3838:	00d72223          	sw	a3,4(a4)
    383c:	0205a683          	lw	a3,32(a1)
    3840:	01f72023          	sw	t6,0(a4)
    3844:	01e72423          	sw	t5,8(a4)
    3848:	01d72623          	sw	t4,12(a4)
    384c:	01c72823          	sw	t3,16(a4)
    3850:	00672a23          	sw	t1,20(a4)
    3854:	01072c23          	sw	a6,24(a4)
    3858:	00f72e23          	sw	a5,28(a4)
    385c:	02470713          	addi	a4,a4,36
    3860:	40e607b3          	sub	a5,a2,a4
    3864:	fed72e23          	sw	a3,-4(a4)
    3868:	02458593          	addi	a1,a1,36
    386c:	faf2c6e3          	blt	t0,a5,3818 <memcpy+0x98>
    3870:	f49ff06f          	j	37b8 <memcpy+0x38>
    3874:	0005c683          	lbu	a3,0(a1)
    3878:	00170713          	addi	a4,a4,1
    387c:	00377793          	andi	a5,a4,3
    3880:	fed70fa3          	sb	a3,-1(a4)
    3884:	00158593          	addi	a1,a1,1
    3888:	f0078ee3          	beqz	a5,37a4 <memcpy+0x24>
    388c:	0005c683          	lbu	a3,0(a1)
    3890:	00170713          	addi	a4,a4,1
    3894:	00377793          	andi	a5,a4,3
    3898:	fed70fa3          	sb	a3,-1(a4)
    389c:	00158593          	addi	a1,a1,1
    38a0:	fc079ae3          	bnez	a5,3874 <memcpy+0xf4>
    38a4:	f01ff06f          	j	37a4 <memcpy+0x24>
