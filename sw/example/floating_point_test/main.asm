
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
      18:	11850513          	addi	a0,a0,280 # 12c <__crt0_dummy_trap_handler>
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
      c0:	81418593          	addi	a1,gp,-2028 # 80000014 <__neorv32_rte_vector_lut>
      c4:	88818613          	addi	a2,gp,-1912 # 80000088 <__BSS_END__>

000000c8 <__crt0_clear_bss_loop>:
      c8:	00c5d863          	bge	a1,a2,d8 <__crt0_clear_bss_loop_end>
      cc:	00058023          	sb	zero,0(a1)
      d0:	00158593          	addi	a1,a1,1
      d4:	ff5ff06f          	j	c8 <__crt0_clear_bss_loop>

000000d8 <__crt0_clear_bss_loop_end>:
      d8:	00004597          	auipc	a1,0x4
      dc:	09858593          	addi	a1,a1,152 # 4170 <__crt0_copy_data_src_begin>
      e0:	80000617          	auipc	a2,0x80000
      e4:	f2060613          	addi	a2,a2,-224 # 80000000 <__ctr0_io_space_begin+0x80000200>
      e8:	81418693          	addi	a3,gp,-2028 # 80000014 <__neorv32_rte_vector_lut>

000000ec <__crt0_copy_data_loop>:
      ec:	00d65c63          	bge	a2,a3,104 <__crt0_copy_data_loop_end>
      f0:	00058703          	lb	a4,0(a1)
      f4:	00e60023          	sb	a4,0(a2)
      f8:	00158593          	addi	a1,a1,1
      fc:	00160613          	addi	a2,a2,1
     100:	fedff06f          	j	ec <__crt0_copy_data_loop>

00000104 <__crt0_copy_data_loop_end>:
     104:	00000513          	li	a0,0
     108:	00000593          	li	a1,0
     10c:	06c000ef          	jal	ra,178 <main>

00000110 <__crt0_main_aftermath>:
     110:	34051073          	csrw	mscratch,a0
     114:	00000093          	li	ra,0
     118:	00008463          	beqz	ra,120 <__crt0_main_aftermath_end>
     11c:	000080e7          	jalr	ra

00000120 <__crt0_main_aftermath_end>:
     120:	30047073          	csrci	mstatus,8

00000124 <__crt0_main_aftermath_end_loop>:
     124:	10500073          	wfi
     128:	ffdff06f          	j	124 <__crt0_main_aftermath_end_loop>

0000012c <__crt0_dummy_trap_handler>:
     12c:	ff810113          	addi	sp,sp,-8
     130:	00812023          	sw	s0,0(sp)
     134:	00912223          	sw	s1,4(sp)
     138:	34202473          	csrr	s0,mcause
     13c:	02044663          	bltz	s0,168 <__crt0_dummy_trap_handler_irq>
     140:	34102473          	csrr	s0,mepc

00000144 <__crt0_dummy_trap_handler_exc_c_check>:
     144:	00041483          	lh	s1,0(s0)
     148:	0034f493          	andi	s1,s1,3
     14c:	00240413          	addi	s0,s0,2
     150:	34141073          	csrw	mepc,s0
     154:	00300413          	li	s0,3
     158:	00941863          	bne	s0,s1,168 <__crt0_dummy_trap_handler_irq>

0000015c <__crt0_dummy_trap_handler_exc_uncrompressed>:
     15c:	34102473          	csrr	s0,mepc
     160:	00240413          	addi	s0,s0,2
     164:	34141073          	csrw	mepc,s0

00000168 <__crt0_dummy_trap_handler_irq>:
     168:	00012403          	lw	s0,0(sp)
     16c:	00412483          	lw	s1,4(sp)
     170:	00810113          	addi	sp,sp,8
     174:	30200073          	mret

00000178 <main>:
     178:	00005537          	lui	a0,0x5
     17c:	fd010113          	addi	sp,sp,-48
     180:	00000613          	li	a2,0
     184:	00000593          	li	a1,0
     188:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x990>
     18c:	02112623          	sw	ra,44(sp)
     190:	02812423          	sw	s0,40(sp)
     194:	02912223          	sw	s1,36(sp)
     198:	03212023          	sw	s2,32(sp)
     19c:	01312e23          	sw	s3,28(sp)
     1a0:	01412c23          	sw	s4,24(sp)
     1a4:	4e8010ef          	jal	ra,168c <neorv32_uart0_setup>
     1a8:	431010ef          	jal	ra,1dd8 <neorv32_rte_setup>
     1ac:	00000513          	li	a0,0
     1b0:	475010ef          	jal	ra,1e24 <neorv32_rte_check_isa>
     1b4:	fe402783          	lw	a5,-28(zero) # ffffffe4 <__ctr0_io_space_begin+0x1e4>
     1b8:	0207f793          	andi	a5,a5,32
     1bc:	02079a63          	bnez	a5,1f0 <main+0x78>
     1c0:	00003537          	lui	a0,0x3
     1c4:	72450513          	addi	a0,a0,1828 # 3724 <__etext+0x74>
     1c8:	588010ef          	jal	ra,1750 <neorv32_uart0_print>
     1cc:	00100513          	li	a0,1
     1d0:	02c12083          	lw	ra,44(sp)
     1d4:	02812403          	lw	s0,40(sp)
     1d8:	02412483          	lw	s1,36(sp)
     1dc:	02012903          	lw	s2,32(sp)
     1e0:	01c12983          	lw	s3,28(sp)
     1e4:	01812a03          	lw	s4,24(sp)
     1e8:	03010113          	addi	sp,sp,48
     1ec:	00008067          	ret
     1f0:	00003537          	lui	a0,0x3
     1f4:	75050513          	addi	a0,a0,1872 # 3750 <__etext+0xa0>
     1f8:	5b0010ef          	jal	ra,17a8 <neorv32_uart0_printf>
     1fc:	00003537          	lui	a0,0x3
     200:	77050513          	addi	a0,a0,1904 # 3770 <__etext+0xc0>
     204:	5a4010ef          	jal	ra,17a8 <neorv32_uart0_printf>
     208:	000f44b7          	lui	s1,0xf4
     20c:	00003537          	lui	a0,0x3
     210:	24048593          	addi	a1,s1,576 # f4240 <__crt0_copy_data_src_begin+0xf00d0>
     214:	7a450513          	addi	a0,a0,1956 # 37a4 <__etext+0xf4>
     218:	590010ef          	jal	ra,17a8 <neorv32_uart0_printf>
     21c:	00003537          	lui	a0,0x3
     220:	7c450513          	addi	a0,a0,1988 # 37c4 <__etext+0x114>
     224:	584010ef          	jal	ra,17a8 <neorv32_uart0_printf>
     228:	00000793          	li	a5,0
     22c:	00179073          	fsflags	a5
     230:	01f00513          	li	a0,31
     234:	451010ef          	jal	ra,1e84 <feclearexcept>
     238:	00004537          	lui	a0,0x4
     23c:	00000593          	li	a1,0
     240:	82c50513          	addi	a0,a0,-2004 # 382c <__etext+0x17c>
     244:	564010ef          	jal	ra,17a8 <neorv32_uart0_printf>
     248:	00000913          	li	s2,0
     24c:	00000993          	li	s3,0
     250:	24048493          	addi	s1,s1,576
     254:	1d4010ef          	jal	ra,1428 <get_test_vector>
     258:	00050593          	mv	a1,a0
     25c:	d0150553          	fcvt.s.wu	fa0,a0,rne
     260:	00a12623          	sw	a0,12(sp)
     264:	00058513          	mv	a0,a1
     268:	00b12423          	sw	a1,8(sp)
     26c:	585000ef          	jal	ra,ff0 <riscv_emulate_fcvt_swu>
     270:	00c12703          	lw	a4,12(sp)
     274:	00812583          	lw	a1,8(sp)
     278:	00050693          	mv	a3,a0
     27c:	00000613          	li	a2,0
     280:	00090513          	mv	a0,s2
     284:	204010ef          	jal	ra,1488 <verify_result>
     288:	00190913          	addi	s2,s2,1
     28c:	00a989b3          	add	s3,s3,a0
     290:	fc9912e3          	bne	s2,s1,254 <main+0xdc>
     294:	00098513          	mv	a0,s3
     298:	248010ef          	jal	ra,14e0 <print_report>
     29c:	00004537          	lui	a0,0x4
     2a0:	00100593          	li	a1,1
     2a4:	85c50513          	addi	a0,a0,-1956 # 385c <__etext+0x1ac>
     2a8:	000f4937          	lui	s2,0xf4
     2ac:	4fc010ef          	jal	ra,17a8 <neorv32_uart0_printf>
     2b0:	00000493          	li	s1,0
     2b4:	00000413          	li	s0,0
     2b8:	24090913          	addi	s2,s2,576 # f4240 <__crt0_copy_data_src_begin+0xf00d0>
     2bc:	16c010ef          	jal	ra,1428 <get_test_vector>
     2c0:	00050593          	mv	a1,a0
     2c4:	d0050553          	fcvt.s.w	fa0,a0,rne
     2c8:	00a12623          	sw	a0,12(sp)
     2cc:	00058513          	mv	a0,a1
     2d0:	00b12423          	sw	a1,8(sp)
     2d4:	535000ef          	jal	ra,1008 <riscv_emulate_fcvt_sw>
     2d8:	00c12703          	lw	a4,12(sp)
     2dc:	00812583          	lw	a1,8(sp)
     2e0:	00050693          	mv	a3,a0
     2e4:	00000613          	li	a2,0
     2e8:	00048513          	mv	a0,s1
     2ec:	19c010ef          	jal	ra,1488 <verify_result>
     2f0:	00148493          	addi	s1,s1,1
     2f4:	00a40433          	add	s0,s0,a0
     2f8:	fd2492e3          	bne	s1,s2,2bc <main+0x144>
     2fc:	00040513          	mv	a0,s0
     300:	1e0010ef          	jal	ra,14e0 <print_report>
     304:	00004537          	lui	a0,0x4
     308:	01340433          	add	s0,s0,s3
     30c:	00200593          	li	a1,2
     310:	88c50513          	addi	a0,a0,-1908 # 388c <__etext+0x1dc>
     314:	000f49b7          	lui	s3,0xf4
     318:	490010ef          	jal	ra,17a8 <neorv32_uart0_printf>
     31c:	00000913          	li	s2,0
     320:	00000493          	li	s1,0
     324:	24098993          	addi	s3,s3,576 # f4240 <__crt0_copy_data_src_begin+0xf00d0>
     328:	100010ef          	jal	ra,1428 <get_test_vector>
     32c:	00050593          	mv	a1,a0
     330:	c0150553          	fcvt.wu.s	a0,fa0,rne
     334:	00a12623          	sw	a0,12(sp)
     338:	00058513          	mv	a0,a1
     33c:	00b12423          	sw	a1,8(sp)
     340:	471000ef          	jal	ra,fb0 <riscv_emulate_fcvt_wus>
     344:	00c12703          	lw	a4,12(sp)
     348:	00812583          	lw	a1,8(sp)
     34c:	00050693          	mv	a3,a0
     350:	00000613          	li	a2,0
     354:	00090513          	mv	a0,s2
     358:	130010ef          	jal	ra,1488 <verify_result>
     35c:	00190913          	addi	s2,s2,1
     360:	00a484b3          	add	s1,s1,a0
     364:	fd3912e3          	bne	s2,s3,328 <main+0x1b0>
     368:	00048513          	mv	a0,s1
     36c:	174010ef          	jal	ra,14e0 <print_report>
     370:	00004537          	lui	a0,0x4
     374:	00300593          	li	a1,3
     378:	8bc50513          	addi	a0,a0,-1860 # 38bc <__etext+0x20c>
     37c:	000f49b7          	lui	s3,0xf4
     380:	00940433          	add	s0,s0,s1
     384:	424010ef          	jal	ra,17a8 <neorv32_uart0_printf>
     388:	00000913          	li	s2,0
     38c:	00000493          	li	s1,0
     390:	24098993          	addi	s3,s3,576 # f4240 <__crt0_copy_data_src_begin+0xf00d0>
     394:	094010ef          	jal	ra,1428 <get_test_vector>
     398:	00050593          	mv	a1,a0
     39c:	c0050553          	fcvt.w.s	a0,fa0,rne
     3a0:	00a12623          	sw	a0,12(sp)
     3a4:	00058513          	mv	a0,a1
     3a8:	00b12423          	sw	a1,8(sp)
     3ac:	425000ef          	jal	ra,fd0 <riscv_emulate_fcvt_ws>
     3b0:	00c12703          	lw	a4,12(sp)
     3b4:	00812583          	lw	a1,8(sp)
     3b8:	00050693          	mv	a3,a0
     3bc:	00000613          	li	a2,0
     3c0:	00090513          	mv	a0,s2
     3c4:	0c4010ef          	jal	ra,1488 <verify_result>
     3c8:	00190913          	addi	s2,s2,1
     3cc:	00a484b3          	add	s1,s1,a0
     3d0:	fd3912e3          	bne	s2,s3,394 <main+0x21c>
     3d4:	00048513          	mv	a0,s1
     3d8:	108010ef          	jal	ra,14e0 <print_report>
     3dc:	00004537          	lui	a0,0x4
     3e0:	00400593          	li	a1,4
     3e4:	8ec50513          	addi	a0,a0,-1812 # 38ec <__etext+0x23c>
     3e8:	000f4a37          	lui	s4,0xf4
     3ec:	00940433          	add	s0,s0,s1
     3f0:	3b8010ef          	jal	ra,17a8 <neorv32_uart0_printf>
     3f4:	00000993          	li	s3,0
     3f8:	00000913          	li	s2,0
     3fc:	240a0a13          	addi	s4,s4,576 # f4240 <__crt0_copy_data_src_begin+0xf00d0>
     400:	028010ef          	jal	ra,1428 <get_test_vector>
     404:	00050493          	mv	s1,a0
     408:	020010ef          	jal	ra,1428 <get_test_vector>
     40c:	00050613          	mv	a2,a0
     410:	00060593          	mv	a1,a2
     414:	00048513          	mv	a0,s1
     418:	00b50553          	fadd.s	fa0,fa0,fa1,rne
     41c:	00a12623          	sw	a0,12(sp)
     420:	00048513          	mv	a0,s1
     424:	00c12423          	sw	a2,8(sp)
     428:	101000ef          	jal	ra,d28 <riscv_emulate_fadds>
     42c:	00c12703          	lw	a4,12(sp)
     430:	00812603          	lw	a2,8(sp)
     434:	00050693          	mv	a3,a0
     438:	00048593          	mv	a1,s1
     43c:	00098513          	mv	a0,s3
     440:	048010ef          	jal	ra,1488 <verify_result>
     444:	00198993          	addi	s3,s3,1
     448:	00a90933          	add	s2,s2,a0
     44c:	fb499ae3          	bne	s3,s4,400 <main+0x288>
     450:	00090513          	mv	a0,s2
     454:	08c010ef          	jal	ra,14e0 <print_report>
     458:	00004537          	lui	a0,0x4
     45c:	00500593          	li	a1,5
     460:	90850513          	addi	a0,a0,-1784 # 3908 <__etext+0x258>
     464:	000f4a37          	lui	s4,0xf4
     468:	01240433          	add	s0,s0,s2
     46c:	33c010ef          	jal	ra,17a8 <neorv32_uart0_printf>
     470:	00000993          	li	s3,0
     474:	00000913          	li	s2,0
     478:	240a0a13          	addi	s4,s4,576 # f4240 <__crt0_copy_data_src_begin+0xf00d0>
     47c:	7ad000ef          	jal	ra,1428 <get_test_vector>
     480:	00050493          	mv	s1,a0
     484:	7a5000ef          	jal	ra,1428 <get_test_vector>
     488:	00050613          	mv	a2,a0
     48c:	00060593          	mv	a1,a2
     490:	00048513          	mv	a0,s1
     494:	08b50553          	fsub.s	fa0,fa0,fa1,rne
     498:	00a12623          	sw	a0,12(sp)
     49c:	00048513          	mv	a0,s1
     4a0:	00c12423          	sw	a2,8(sp)
     4a4:	0c9000ef          	jal	ra,d6c <riscv_emulate_fsubs>
     4a8:	00c12703          	lw	a4,12(sp)
     4ac:	00812603          	lw	a2,8(sp)
     4b0:	00050693          	mv	a3,a0
     4b4:	00048593          	mv	a1,s1
     4b8:	00098513          	mv	a0,s3
     4bc:	7cd000ef          	jal	ra,1488 <verify_result>
     4c0:	00198993          	addi	s3,s3,1
     4c4:	00a90933          	add	s2,s2,a0
     4c8:	fb499ae3          	bne	s3,s4,47c <main+0x304>
     4cc:	00090513          	mv	a0,s2
     4d0:	010010ef          	jal	ra,14e0 <print_report>
     4d4:	00004537          	lui	a0,0x4
     4d8:	00600593          	li	a1,6
     4dc:	92850513          	addi	a0,a0,-1752 # 3928 <__etext+0x278>
     4e0:	000f4a37          	lui	s4,0xf4
     4e4:	01240433          	add	s0,s0,s2
     4e8:	2c0010ef          	jal	ra,17a8 <neorv32_uart0_printf>
     4ec:	00000993          	li	s3,0
     4f0:	00000913          	li	s2,0
     4f4:	240a0a13          	addi	s4,s4,576 # f4240 <__crt0_copy_data_src_begin+0xf00d0>
     4f8:	731000ef          	jal	ra,1428 <get_test_vector>
     4fc:	00050493          	mv	s1,a0
     500:	729000ef          	jal	ra,1428 <get_test_vector>
     504:	00050613          	mv	a2,a0
     508:	00060593          	mv	a1,a2
     50c:	00048513          	mv	a0,s1
     510:	10b50553          	fmul.s	fa0,fa0,fa1,rne
     514:	00a12623          	sw	a0,12(sp)
     518:	00048513          	mv	a0,s1
     51c:	00c12423          	sw	a2,8(sp)
     520:	091000ef          	jal	ra,db0 <riscv_emulate_fmuls>
     524:	00c12703          	lw	a4,12(sp)
     528:	00812603          	lw	a2,8(sp)
     52c:	00050693          	mv	a3,a0
     530:	00048593          	mv	a1,s1
     534:	00098513          	mv	a0,s3
     538:	751000ef          	jal	ra,1488 <verify_result>
     53c:	00198993          	addi	s3,s3,1
     540:	00a90933          	add	s2,s2,a0
     544:	fb499ae3          	bne	s3,s4,4f8 <main+0x380>
     548:	00090513          	mv	a0,s2
     54c:	795000ef          	jal	ra,14e0 <print_report>
     550:	00004537          	lui	a0,0x4
     554:	00700593          	li	a1,7
     558:	94c50513          	addi	a0,a0,-1716 # 394c <__etext+0x29c>
     55c:	000f4a37          	lui	s4,0xf4
     560:	01240433          	add	s0,s0,s2
     564:	244010ef          	jal	ra,17a8 <neorv32_uart0_printf>
     568:	00000993          	li	s3,0
     56c:	00000913          	li	s2,0
     570:	240a0a13          	addi	s4,s4,576 # f4240 <__crt0_copy_data_src_begin+0xf00d0>
     574:	6b5000ef          	jal	ra,1428 <get_test_vector>
     578:	00050493          	mv	s1,a0
     57c:	6ad000ef          	jal	ra,1428 <get_test_vector>
     580:	00050613          	mv	a2,a0
     584:	00060593          	mv	a1,a2
     588:	00048513          	mv	a0,s1
     58c:	28b50553          	fmin.s	fa0,fa0,fa1
     590:	00a12623          	sw	a0,12(sp)
     594:	00048513          	mv	a0,s1
     598:	00c12423          	sw	a2,8(sp)
     59c:	059000ef          	jal	ra,df4 <riscv_emulate_fmins>
     5a0:	00c12703          	lw	a4,12(sp)
     5a4:	00812603          	lw	a2,8(sp)
     5a8:	00050693          	mv	a3,a0
     5ac:	00048593          	mv	a1,s1
     5b0:	00098513          	mv	a0,s3
     5b4:	6d5000ef          	jal	ra,1488 <verify_result>
     5b8:	00198993          	addi	s3,s3,1
     5bc:	00a90933          	add	s2,s2,a0
     5c0:	fb499ae3          	bne	s3,s4,574 <main+0x3fc>
     5c4:	00090513          	mv	a0,s2
     5c8:	719000ef          	jal	ra,14e0 <print_report>
     5cc:	00004537          	lui	a0,0x4
     5d0:	00800593          	li	a1,8
     5d4:	97050513          	addi	a0,a0,-1680 # 3970 <__etext+0x2c0>
     5d8:	000f4a37          	lui	s4,0xf4
     5dc:	01240433          	add	s0,s0,s2
     5e0:	1c8010ef          	jal	ra,17a8 <neorv32_uart0_printf>
     5e4:	00000993          	li	s3,0
     5e8:	00000913          	li	s2,0
     5ec:	240a0a13          	addi	s4,s4,576 # f4240 <__crt0_copy_data_src_begin+0xf00d0>
     5f0:	639000ef          	jal	ra,1428 <get_test_vector>
     5f4:	00050493          	mv	s1,a0
     5f8:	631000ef          	jal	ra,1428 <get_test_vector>
     5fc:	00050613          	mv	a2,a0
     600:	00060593          	mv	a1,a2
     604:	00048513          	mv	a0,s1
     608:	28b51553          	fmax.s	fa0,fa0,fa1
     60c:	00a12623          	sw	a0,12(sp)
     610:	00048513          	mv	a0,s1
     614:	00c12423          	sw	a2,8(sp)
     618:	0bd000ef          	jal	ra,ed4 <riscv_emulate_fmaxs>
     61c:	00c12703          	lw	a4,12(sp)
     620:	00812603          	lw	a2,8(sp)
     624:	00050693          	mv	a3,a0
     628:	00048593          	mv	a1,s1
     62c:	00098513          	mv	a0,s3
     630:	659000ef          	jal	ra,1488 <verify_result>
     634:	00198993          	addi	s3,s3,1
     638:	00a90933          	add	s2,s2,a0
     63c:	fb499ae3          	bne	s3,s4,5f0 <main+0x478>
     640:	00090513          	mv	a0,s2
     644:	69d000ef          	jal	ra,14e0 <print_report>
     648:	00004537          	lui	a0,0x4
     64c:	00900593          	li	a1,9
     650:	99450513          	addi	a0,a0,-1644 # 3994 <__etext+0x2e4>
     654:	000f4a37          	lui	s4,0xf4
     658:	01240433          	add	s0,s0,s2
     65c:	14c010ef          	jal	ra,17a8 <neorv32_uart0_printf>
     660:	00000993          	li	s3,0
     664:	00000913          	li	s2,0
     668:	240a0a13          	addi	s4,s4,576 # f4240 <__crt0_copy_data_src_begin+0xf00d0>
     66c:	5bd000ef          	jal	ra,1428 <get_test_vector>
     670:	00050493          	mv	s1,a0
     674:	5b5000ef          	jal	ra,1428 <get_test_vector>
     678:	00050613          	mv	a2,a0
     67c:	00060593          	mv	a1,a2
     680:	00048513          	mv	a0,s1
     684:	a0b52553          	feq.s	a0,fa0,fa1
     688:	00a12623          	sw	a0,12(sp)
     68c:	00048513          	mv	a0,s1
     690:	00c12423          	sw	a2,8(sp)
     694:	18d000ef          	jal	ra,1020 <riscv_emulate_feqs>
     698:	00c12703          	lw	a4,12(sp)
     69c:	00812603          	lw	a2,8(sp)
     6a0:	00050693          	mv	a3,a0
     6a4:	00048593          	mv	a1,s1
     6a8:	00098513          	mv	a0,s3
     6ac:	5dd000ef          	jal	ra,1488 <verify_result>
     6b0:	00198993          	addi	s3,s3,1
     6b4:	00a90933          	add	s2,s2,a0
     6b8:	fb499ae3          	bne	s3,s4,66c <main+0x4f4>
     6bc:	00090513          	mv	a0,s2
     6c0:	621000ef          	jal	ra,14e0 <print_report>
     6c4:	00004537          	lui	a0,0x4
     6c8:	00a00593          	li	a1,10
     6cc:	9b850513          	addi	a0,a0,-1608 # 39b8 <__etext+0x308>
     6d0:	000f4a37          	lui	s4,0xf4
     6d4:	01240433          	add	s0,s0,s2
     6d8:	0d0010ef          	jal	ra,17a8 <neorv32_uart0_printf>
     6dc:	00000993          	li	s3,0
     6e0:	00000913          	li	s2,0
     6e4:	240a0a13          	addi	s4,s4,576 # f4240 <__crt0_copy_data_src_begin+0xf00d0>
     6e8:	541000ef          	jal	ra,1428 <get_test_vector>
     6ec:	00050493          	mv	s1,a0
     6f0:	539000ef          	jal	ra,1428 <get_test_vector>
     6f4:	00050613          	mv	a2,a0
     6f8:	00060593          	mv	a1,a2
     6fc:	00048513          	mv	a0,s1
     700:	a0b51553          	flt.s	a0,fa0,fa1
     704:	00a12623          	sw	a0,12(sp)
     708:	00048513          	mv	a0,s1
     70c:	00c12423          	sw	a2,8(sp)
     710:	1a1000ef          	jal	ra,10b0 <riscv_emulate_flts>
     714:	00c12703          	lw	a4,12(sp)
     718:	00812603          	lw	a2,8(sp)
     71c:	00050693          	mv	a3,a0
     720:	00048593          	mv	a1,s1
     724:	00098513          	mv	a0,s3
     728:	561000ef          	jal	ra,1488 <verify_result>
     72c:	00198993          	addi	s3,s3,1
     730:	00a90933          	add	s2,s2,a0
     734:	fb499ae3          	bne	s3,s4,6e8 <main+0x570>
     738:	00090513          	mv	a0,s2
     73c:	5a5000ef          	jal	ra,14e0 <print_report>
     740:	00004537          	lui	a0,0x4
     744:	00b00593          	li	a1,11
     748:	9e050513          	addi	a0,a0,-1568 # 39e0 <__etext+0x330>
     74c:	000f4a37          	lui	s4,0xf4
     750:	01240433          	add	s0,s0,s2
     754:	054010ef          	jal	ra,17a8 <neorv32_uart0_printf>
     758:	00000993          	li	s3,0
     75c:	00000913          	li	s2,0
     760:	240a0a13          	addi	s4,s4,576 # f4240 <__crt0_copy_data_src_begin+0xf00d0>
     764:	4c5000ef          	jal	ra,1428 <get_test_vector>
     768:	00050493          	mv	s1,a0
     76c:	4bd000ef          	jal	ra,1428 <get_test_vector>
     770:	00050613          	mv	a2,a0
     774:	00060593          	mv	a1,a2
     778:	00048513          	mv	a0,s1
     77c:	a0b50553          	fle.s	a0,fa0,fa1
     780:	00a12623          	sw	a0,12(sp)
     784:	00048513          	mv	a0,s1
     788:	00c12423          	sw	a2,8(sp)
     78c:	1b9000ef          	jal	ra,1144 <riscv_emulate_fles>
     790:	00c12703          	lw	a4,12(sp)
     794:	00812603          	lw	a2,8(sp)
     798:	00050693          	mv	a3,a0
     79c:	00048593          	mv	a1,s1
     7a0:	00098513          	mv	a0,s3
     7a4:	4e5000ef          	jal	ra,1488 <verify_result>
     7a8:	00198993          	addi	s3,s3,1
     7ac:	00a90933          	add	s2,s2,a0
     7b0:	fb499ae3          	bne	s3,s4,764 <main+0x5ec>
     7b4:	00090513          	mv	a0,s2
     7b8:	529000ef          	jal	ra,14e0 <print_report>
     7bc:	00004537          	lui	a0,0x4
     7c0:	00c00593          	li	a1,12
     7c4:	a1050513          	addi	a0,a0,-1520 # 3a10 <__etext+0x360>
     7c8:	000f4a37          	lui	s4,0xf4
     7cc:	01240433          	add	s0,s0,s2
     7d0:	7d9000ef          	jal	ra,17a8 <neorv32_uart0_printf>
     7d4:	00000993          	li	s3,0
     7d8:	00000913          	li	s2,0
     7dc:	240a0a13          	addi	s4,s4,576 # f4240 <__crt0_copy_data_src_begin+0xf00d0>
     7e0:	449000ef          	jal	ra,1428 <get_test_vector>
     7e4:	00050493          	mv	s1,a0
     7e8:	441000ef          	jal	ra,1428 <get_test_vector>
     7ec:	00050613          	mv	a2,a0
     7f0:	00060593          	mv	a1,a2
     7f4:	00048513          	mv	a0,s1
     7f8:	20b50553          	fsgnj.s	fa0,fa0,fa1
     7fc:	00a12623          	sw	a0,12(sp)
     800:	00048513          	mv	a0,s1
     804:	00c12423          	sw	a2,8(sp)
     808:	1d1000ef          	jal	ra,11d8 <riscv_emulate_fsgnjs>
     80c:	00c12703          	lw	a4,12(sp)
     810:	00812603          	lw	a2,8(sp)
     814:	00050693          	mv	a3,a0
     818:	00048593          	mv	a1,s1
     81c:	00098513          	mv	a0,s3
     820:	469000ef          	jal	ra,1488 <verify_result>
     824:	00198993          	addi	s3,s3,1
     828:	00a90933          	add	s2,s2,a0
     82c:	fb499ae3          	bne	s3,s4,7e0 <main+0x668>
     830:	00090513          	mv	a0,s2
     834:	4ad000ef          	jal	ra,14e0 <print_report>
     838:	00004537          	lui	a0,0x4
     83c:	00d00593          	li	a1,13
     840:	a3450513          	addi	a0,a0,-1484 # 3a34 <__etext+0x384>
     844:	000f4a37          	lui	s4,0xf4
     848:	01240433          	add	s0,s0,s2
     84c:	75d000ef          	jal	ra,17a8 <neorv32_uart0_printf>
     850:	00000993          	li	s3,0
     854:	00000913          	li	s2,0
     858:	240a0a13          	addi	s4,s4,576 # f4240 <__crt0_copy_data_src_begin+0xf00d0>
     85c:	3cd000ef          	jal	ra,1428 <get_test_vector>
     860:	00050493          	mv	s1,a0
     864:	3c5000ef          	jal	ra,1428 <get_test_vector>
     868:	00050613          	mv	a2,a0
     86c:	00060593          	mv	a1,a2
     870:	00048513          	mv	a0,s1
     874:	20b51553          	fsgnjn.s	fa0,fa0,fa1
     878:	00a12623          	sw	a0,12(sp)
     87c:	00048513          	mv	a0,s1
     880:	00c12423          	sw	a2,8(sp)
     884:	1b1000ef          	jal	ra,1234 <riscv_emulate_fsgnjns>
     888:	00c12703          	lw	a4,12(sp)
     88c:	00812603          	lw	a2,8(sp)
     890:	00050693          	mv	a3,a0
     894:	00048593          	mv	a1,s1
     898:	00098513          	mv	a0,s3
     89c:	3ed000ef          	jal	ra,1488 <verify_result>
     8a0:	00198993          	addi	s3,s3,1
     8a4:	00a90933          	add	s2,s2,a0
     8a8:	fb499ae3          	bne	s3,s4,85c <main+0x6e4>
     8ac:	00090513          	mv	a0,s2
     8b0:	431000ef          	jal	ra,14e0 <print_report>
     8b4:	00004537          	lui	a0,0x4
     8b8:	00e00593          	li	a1,14
     8bc:	a5c50513          	addi	a0,a0,-1444 # 3a5c <__etext+0x3ac>
     8c0:	000f4a37          	lui	s4,0xf4
     8c4:	01240433          	add	s0,s0,s2
     8c8:	6e1000ef          	jal	ra,17a8 <neorv32_uart0_printf>
     8cc:	00000993          	li	s3,0
     8d0:	00000913          	li	s2,0
     8d4:	240a0a13          	addi	s4,s4,576 # f4240 <__crt0_copy_data_src_begin+0xf00d0>
     8d8:	351000ef          	jal	ra,1428 <get_test_vector>
     8dc:	00050493          	mv	s1,a0
     8e0:	349000ef          	jal	ra,1428 <get_test_vector>
     8e4:	00050613          	mv	a2,a0
     8e8:	00060593          	mv	a1,a2
     8ec:	00048513          	mv	a0,s1
     8f0:	20b52553          	fsgnjx.s	fa0,fa0,fa1
     8f4:	00a12623          	sw	a0,12(sp)
     8f8:	00048513          	mv	a0,s1
     8fc:	00c12423          	sw	a2,8(sp)
     900:	191000ef          	jal	ra,1290 <riscv_emulate_fsgnjxs>
     904:	00c12703          	lw	a4,12(sp)
     908:	00812603          	lw	a2,8(sp)
     90c:	00050693          	mv	a3,a0
     910:	00048593          	mv	a1,s1
     914:	00098513          	mv	a0,s3
     918:	371000ef          	jal	ra,1488 <verify_result>
     91c:	00198993          	addi	s3,s3,1
     920:	00a90933          	add	s2,s2,a0
     924:	fb499ae3          	bne	s3,s4,8d8 <main+0x760>
     928:	00090513          	mv	a0,s2
     92c:	3b5000ef          	jal	ra,14e0 <print_report>
     930:	00004537          	lui	a0,0x4
     934:	00f00593          	li	a1,15
     938:	a8450513          	addi	a0,a0,-1404 # 3a84 <__etext+0x3d4>
     93c:	000f49b7          	lui	s3,0xf4
     940:	01240433          	add	s0,s0,s2
     944:	665000ef          	jal	ra,17a8 <neorv32_uart0_printf>
     948:	00000913          	li	s2,0
     94c:	00000493          	li	s1,0
     950:	24098993          	addi	s3,s3,576 # f4240 <__crt0_copy_data_src_begin+0xf00d0>
     954:	2d5000ef          	jal	ra,1428 <get_test_vector>
     958:	00050593          	mv	a1,a0
     95c:	e0051553          	fclass.s	a0,fa0
     960:	00a12623          	sw	a0,12(sp)
     964:	00058513          	mv	a0,a1
     968:	00b12423          	sw	a1,8(sp)
     96c:	171000ef          	jal	ra,12dc <riscv_emulate_fclasss>
     970:	00c12703          	lw	a4,12(sp)
     974:	00812583          	lw	a1,8(sp)
     978:	00050693          	mv	a3,a0
     97c:	00000613          	li	a2,0
     980:	00090513          	mv	a0,s2
     984:	305000ef          	jal	ra,1488 <verify_result>
     988:	00190913          	addi	s2,s2,1
     98c:	00a484b3          	add	s1,s1,a0
     990:	fd3912e3          	bne	s2,s3,954 <main+0x7dc>
     994:	00048513          	mv	a0,s1
     998:	349000ef          	jal	ra,14e0 <print_report>
     99c:	00004537          	lui	a0,0x4
     9a0:	aa450513          	addi	a0,a0,-1372 # 3aa4 <__etext+0x3f4>
     9a4:	605000ef          	jal	ra,17a8 <neorv32_uart0_printf>
     9a8:	00940433          	add	s0,s0,s1
     9ac:	00000793          	li	a5,0
     9b0:	34279073          	csrw	mcause,a5
     9b4:	275000ef          	jal	ra,1428 <get_test_vector>
     9b8:	00050493          	mv	s1,a0
     9bc:	26d000ef          	jal	ra,1428 <get_test_vector>
     9c0:	00050593          	mv	a1,a0
     9c4:	00048513          	mv	a0,s1
     9c8:	00b50033          	add	zero,a0,a1
     9cc:	18b50553          	fdiv.s	fa0,fa0,fa1,rne
     9d0:	00050533          	add	a0,a0,zero
     9d4:	34202773          	csrr	a4,mcause
     9d8:	00200793          	li	a5,2
     9dc:	01b00613          	li	a2,27
     9e0:	01b00593          	li	a1,27
     9e4:	22f70663          	beq	a4,a5,c10 <main+0xa98>
     9e8:	00003537          	lui	a0,0x3
     9ec:	6f050513          	addi	a0,a0,1776 # 36f0 <__etext+0x40>
     9f0:	5b9000ef          	jal	ra,17a8 <neorv32_uart0_printf>
     9f4:	00140413          	addi	s0,s0,1
     9f8:	00004537          	lui	a0,0x4
     9fc:	ae050513          	addi	a0,a0,-1312 # 3ae0 <__etext+0x430>
     a00:	5a9000ef          	jal	ra,17a8 <neorv32_uart0_printf>
     a04:	00000793          	li	a5,0
     a08:	34279073          	csrw	mcause,a5
     a0c:	21d000ef          	jal	ra,1428 <get_test_vector>
     a10:	00050493          	mv	s1,a0
     a14:	215000ef          	jal	ra,1428 <get_test_vector>
     a18:	00048513          	mv	a0,s1
     a1c:	00050033          	add	zero,a0,zero
     a20:	58b50553          	0x58b50553
     a24:	00050533          	add	a0,a0,zero
     a28:	34202773          	csrr	a4,mcause
     a2c:	00200793          	li	a5,2
     a30:	01b00613          	li	a2,27
     a34:	01b00593          	li	a1,27
     a38:	1ef70463          	beq	a4,a5,c20 <main+0xaa8>
     a3c:	00003537          	lui	a0,0x3
     a40:	6f050513          	addi	a0,a0,1776 # 36f0 <__etext+0x40>
     a44:	565000ef          	jal	ra,17a8 <neorv32_uart0_printf>
     a48:	00140413          	addi	s0,s0,1
     a4c:	00004537          	lui	a0,0x4
     a50:	b2050513          	addi	a0,a0,-1248 # 3b20 <__etext+0x470>
     a54:	555000ef          	jal	ra,17a8 <neorv32_uart0_printf>
     a58:	00000793          	li	a5,0
     a5c:	34279073          	csrw	mcause,a5
     a60:	1c9000ef          	jal	ra,1428 <get_test_vector>
     a64:	00050493          	mv	s1,a0
     a68:	1c1000ef          	jal	ra,1428 <get_test_vector>
     a6c:	80000637          	lui	a2,0x80000
     a70:	00050593          	mv	a1,a0
     a74:	00c4c633          	xor	a2,s1,a2
     a78:	00048513          	mv	a0,s1
     a7c:	00b50033          	add	zero,a0,a1
     a80:	00c58033          	add	zero,a1,a2
     a84:	60b50543          	fmadd.s	fa0,fa0,fa1,fa2,rne
     a88:	00050533          	add	a0,a0,zero
     a8c:	34202773          	csrr	a4,mcause
     a90:	00200793          	li	a5,2
     a94:	01b00613          	li	a2,27
     a98:	01b00593          	li	a1,27
     a9c:	18f70a63          	beq	a4,a5,c30 <main+0xab8>
     aa0:	00003537          	lui	a0,0x3
     aa4:	6f050513          	addi	a0,a0,1776 # 36f0 <__etext+0x40>
     aa8:	501000ef          	jal	ra,17a8 <neorv32_uart0_printf>
     aac:	00140413          	addi	s0,s0,1
     ab0:	00004537          	lui	a0,0x4
     ab4:	b6850513          	addi	a0,a0,-1176 # 3b68 <__etext+0x4b8>
     ab8:	4f1000ef          	jal	ra,17a8 <neorv32_uart0_printf>
     abc:	00000793          	li	a5,0
     ac0:	34279073          	csrw	mcause,a5
     ac4:	165000ef          	jal	ra,1428 <get_test_vector>
     ac8:	00050493          	mv	s1,a0
     acc:	15d000ef          	jal	ra,1428 <get_test_vector>
     ad0:	80000637          	lui	a2,0x80000
     ad4:	00050593          	mv	a1,a0
     ad8:	00c4c633          	xor	a2,s1,a2
     adc:	00048513          	mv	a0,s1
     ae0:	00b50033          	add	zero,a0,a1
     ae4:	00c58033          	add	zero,a1,a2
     ae8:	60b50547          	fmsub.s	fa0,fa0,fa1,fa2,rne
     aec:	00050533          	add	a0,a0,zero
     af0:	34202773          	csrr	a4,mcause
     af4:	00200793          	li	a5,2
     af8:	01b00613          	li	a2,27
     afc:	01b00593          	li	a1,27
     b00:	14f70063          	beq	a4,a5,c40 <main+0xac8>
     b04:	00003537          	lui	a0,0x3
     b08:	6f050513          	addi	a0,a0,1776 # 36f0 <__etext+0x40>
     b0c:	49d000ef          	jal	ra,17a8 <neorv32_uart0_printf>
     b10:	00140413          	addi	s0,s0,1
     b14:	00004537          	lui	a0,0x4
     b18:	bb050513          	addi	a0,a0,-1104 # 3bb0 <__etext+0x500>
     b1c:	48d000ef          	jal	ra,17a8 <neorv32_uart0_printf>
     b20:	00000793          	li	a5,0
     b24:	34279073          	csrw	mcause,a5
     b28:	101000ef          	jal	ra,1428 <get_test_vector>
     b2c:	00050493          	mv	s1,a0
     b30:	0f9000ef          	jal	ra,1428 <get_test_vector>
     b34:	80000637          	lui	a2,0x80000
     b38:	00050593          	mv	a1,a0
     b3c:	00c4c633          	xor	a2,s1,a2
     b40:	00048513          	mv	a0,s1
     b44:	00b50033          	add	zero,a0,a1
     b48:	00c58033          	add	zero,a1,a2
     b4c:	60b5054f          	fnmadd.s	fa0,fa0,fa1,fa2,rne
     b50:	00050533          	add	a0,a0,zero
     b54:	34202773          	csrr	a4,mcause
     b58:	00200793          	li	a5,2
     b5c:	01b00613          	li	a2,27
     b60:	01b00593          	li	a1,27
     b64:	0ef70663          	beq	a4,a5,c50 <main+0xad8>
     b68:	00003537          	lui	a0,0x3
     b6c:	6f050513          	addi	a0,a0,1776 # 36f0 <__etext+0x40>
     b70:	439000ef          	jal	ra,17a8 <neorv32_uart0_printf>
     b74:	00140413          	addi	s0,s0,1
     b78:	00004537          	lui	a0,0x4
     b7c:	c0050513          	addi	a0,a0,-1024 # 3c00 <__etext+0x550>
     b80:	429000ef          	jal	ra,17a8 <neorv32_uart0_printf>
     b84:	00000793          	li	a5,0
     b88:	34279073          	csrw	mcause,a5
     b8c:	09d000ef          	jal	ra,1428 <get_test_vector>
     b90:	00050493          	mv	s1,a0
     b94:	095000ef          	jal	ra,1428 <get_test_vector>
     b98:	80000637          	lui	a2,0x80000
     b9c:	00050593          	mv	a1,a0
     ba0:	00c4c633          	xor	a2,s1,a2
     ba4:	00048513          	mv	a0,s1
     ba8:	00b50033          	add	zero,a0,a1
     bac:	00c58033          	add	zero,a1,a2
     bb0:	60b5054f          	fnmadd.s	fa0,fa0,fa1,fa2,rne
     bb4:	00050533          	add	a0,a0,zero
     bb8:	34202773          	csrr	a4,mcause
     bbc:	00200793          	li	a5,2
     bc0:	01b00613          	li	a2,27
     bc4:	01b00593          	li	a1,27
     bc8:	08f70c63          	beq	a4,a5,c60 <main+0xae8>
     bcc:	00003537          	lui	a0,0x3
     bd0:	6f050513          	addi	a0,a0,1776 # 36f0 <__etext+0x40>
     bd4:	3d5000ef          	jal	ra,17a8 <neorv32_uart0_printf>
     bd8:	00140413          	addi	s0,s0,1
     bdc:	01b00613          	li	a2,27
     be0:	01b00593          	li	a1,27
     be4:	08040663          	beqz	s0,c70 <main+0xaf8>
     be8:	00004537          	lui	a0,0x4
     bec:	c5050513          	addi	a0,a0,-944 # 3c50 <__etext+0x5a0>
     bf0:	3b9000ef          	jal	ra,17a8 <neorv32_uart0_printf>
     bf4:	00f42637          	lui	a2,0xf42
     bf8:	00004537          	lui	a0,0x4
     bfc:	40060613          	addi	a2,a2,1024 # f42400 <__crt0_copy_data_src_begin+0xf3e290>
     c00:	00040593          	mv	a1,s0
     c04:	c8450513          	addi	a0,a0,-892 # 3c84 <__etext+0x5d4>
     c08:	3a1000ef          	jal	ra,17a8 <neorv32_uart0_printf>
     c0c:	dc0ff06f          	j	1cc <main+0x54>
     c10:	00003537          	lui	a0,0x3
     c14:	71450513          	addi	a0,a0,1812 # 3714 <__etext+0x64>
     c18:	391000ef          	jal	ra,17a8 <neorv32_uart0_printf>
     c1c:	dddff06f          	j	9f8 <main+0x880>
     c20:	00003537          	lui	a0,0x3
     c24:	71450513          	addi	a0,a0,1812 # 3714 <__etext+0x64>
     c28:	381000ef          	jal	ra,17a8 <neorv32_uart0_printf>
     c2c:	e21ff06f          	j	a4c <main+0x8d4>
     c30:	00003537          	lui	a0,0x3
     c34:	71450513          	addi	a0,a0,1812 # 3714 <__etext+0x64>
     c38:	371000ef          	jal	ra,17a8 <neorv32_uart0_printf>
     c3c:	e75ff06f          	j	ab0 <main+0x938>
     c40:	00003537          	lui	a0,0x3
     c44:	71450513          	addi	a0,a0,1812 # 3714 <__etext+0x64>
     c48:	361000ef          	jal	ra,17a8 <neorv32_uart0_printf>
     c4c:	ec9ff06f          	j	b14 <main+0x99c>
     c50:	00003537          	lui	a0,0x3
     c54:	71450513          	addi	a0,a0,1812 # 3714 <__etext+0x64>
     c58:	351000ef          	jal	ra,17a8 <neorv32_uart0_printf>
     c5c:	f1dff06f          	j	b78 <main+0xa00>
     c60:	00003537          	lui	a0,0x3
     c64:	71450513          	addi	a0,a0,1812 # 3714 <__etext+0x64>
     c68:	341000ef          	jal	ra,17a8 <neorv32_uart0_printf>
     c6c:	f71ff06f          	j	bdc <main+0xa64>
     c70:	00004537          	lui	a0,0x4
     c74:	ca050513          	addi	a0,a0,-864 # 3ca0 <__etext+0x5f0>
     c78:	331000ef          	jal	ra,17a8 <neorv32_uart0_printf>
     c7c:	00000513          	li	a0,0
     c80:	d50ff06f          	j	1d0 <main+0x58>

00000c84 <subnormal_flush>:
     c84:	ff010113          	addi	sp,sp,-16
     c88:	00912223          	sw	s1,4(sp)
     c8c:	00151493          	slli	s1,a0,0x1
     c90:	0014d493          	srli	s1,s1,0x1
     c94:	00812423          	sw	s0,8(sp)
     c98:	00048593          	mv	a1,s1
     c9c:	00050413          	mv	s0,a0
     ca0:	00048513          	mv	a0,s1
     ca4:	00112623          	sw	ra,12(sp)
     ca8:	384020ef          	jal	ra,302c <__unordsf2>
     cac:	04051c63          	bnez	a0,d04 <subnormal_flush+0x80>
     cb0:	800007b7          	lui	a5,0x80000
     cb4:	0047a583          	lw	a1,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
     cb8:	00048513          	mv	a0,s1
     cbc:	370020ef          	jal	ra,302c <__unordsf2>
     cc0:	00051c63          	bnez	a0,cd8 <subnormal_flush+0x54>
     cc4:	800007b7          	lui	a5,0x80000
     cc8:	0047a583          	lw	a1,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
     ccc:	00048513          	mv	a0,s1
     cd0:	30d010ef          	jal	ra,27dc <__lesf2>
     cd4:	02a04863          	bgtz	a0,d04 <subnormal_flush+0x80>
     cd8:	800007b7          	lui	a5,0x80000
     cdc:	0087a583          	lw	a1,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
     ce0:	00048513          	mv	a0,s1
     ce4:	245010ef          	jal	ra,2728 <__gesf2>
     ce8:	00055e63          	bgez	a0,d04 <subnormal_flush+0x80>
     cec:	00000593          	li	a1,0
     cf0:	00040513          	mv	a0,s0
     cf4:	1cd010ef          	jal	ra,26c0 <__eqsf2>
     cf8:	00050663          	beqz	a0,d04 <subnormal_flush+0x80>
     cfc:	02044063          	bltz	s0,d1c <subnormal_flush+0x98>
     d00:	00000413          	li	s0,0
     d04:	00c12083          	lw	ra,12(sp)
     d08:	00040513          	mv	a0,s0
     d0c:	00812403          	lw	s0,8(sp)
     d10:	00412483          	lw	s1,4(sp)
     d14:	01010113          	addi	sp,sp,16
     d18:	00008067          	ret
     d1c:	800007b7          	lui	a5,0x80000
     d20:	0007a403          	lw	s0,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
     d24:	fe1ff06f          	j	d04 <subnormal_flush+0x80>

00000d28 <riscv_emulate_fadds>:
     d28:	ff010113          	addi	sp,sp,-16
     d2c:	00112623          	sw	ra,12(sp)
     d30:	00812423          	sw	s0,8(sp)
     d34:	00912223          	sw	s1,4(sp)
     d38:	00058493          	mv	s1,a1
     d3c:	f49ff0ef          	jal	ra,c84 <subnormal_flush>
     d40:	00050413          	mv	s0,a0
     d44:	00048513          	mv	a0,s1
     d48:	f3dff0ef          	jal	ra,c84 <subnormal_flush>
     d4c:	00050593          	mv	a1,a0
     d50:	00040513          	mv	a0,s0
     d54:	510010ef          	jal	ra,2264 <__addsf3>
     d58:	00812403          	lw	s0,8(sp)
     d5c:	00c12083          	lw	ra,12(sp)
     d60:	00412483          	lw	s1,4(sp)
     d64:	01010113          	addi	sp,sp,16
     d68:	f1dff06f          	j	c84 <subnormal_flush>

00000d6c <riscv_emulate_fsubs>:
     d6c:	ff010113          	addi	sp,sp,-16
     d70:	00112623          	sw	ra,12(sp)
     d74:	00812423          	sw	s0,8(sp)
     d78:	00912223          	sw	s1,4(sp)
     d7c:	00058493          	mv	s1,a1
     d80:	f05ff0ef          	jal	ra,c84 <subnormal_flush>
     d84:	00050413          	mv	s0,a0
     d88:	00048513          	mv	a0,s1
     d8c:	ef9ff0ef          	jal	ra,c84 <subnormal_flush>
     d90:	00050593          	mv	a1,a0
     d94:	00040513          	mv	a0,s0
     d98:	629010ef          	jal	ra,2bc0 <__subsf3>
     d9c:	00812403          	lw	s0,8(sp)
     da0:	00c12083          	lw	ra,12(sp)
     da4:	00412483          	lw	s1,4(sp)
     da8:	01010113          	addi	sp,sp,16
     dac:	ed9ff06f          	j	c84 <subnormal_flush>

00000db0 <riscv_emulate_fmuls>:
     db0:	ff010113          	addi	sp,sp,-16
     db4:	00112623          	sw	ra,12(sp)
     db8:	00812423          	sw	s0,8(sp)
     dbc:	00912223          	sw	s1,4(sp)
     dc0:	00058493          	mv	s1,a1
     dc4:	ec1ff0ef          	jal	ra,c84 <subnormal_flush>
     dc8:	00050413          	mv	s0,a0
     dcc:	00048513          	mv	a0,s1
     dd0:	eb5ff0ef          	jal	ra,c84 <subnormal_flush>
     dd4:	00050593          	mv	a1,a0
     dd8:	00040513          	mv	a0,s0
     ddc:	2b5010ef          	jal	ra,2890 <__mulsf3>
     de0:	00812403          	lw	s0,8(sp)
     de4:	00c12083          	lw	ra,12(sp)
     de8:	00412483          	lw	s1,4(sp)
     dec:	01010113          	addi	sp,sp,16
     df0:	e95ff06f          	j	c84 <subnormal_flush>

00000df4 <riscv_emulate_fmins>:
     df4:	fe010113          	addi	sp,sp,-32
     df8:	00112e23          	sw	ra,28(sp)
     dfc:	00812c23          	sw	s0,24(sp)
     e00:	00912a23          	sw	s1,20(sp)
     e04:	01212823          	sw	s2,16(sp)
     e08:	00058493          	mv	s1,a1
     e0c:	01312623          	sw	s3,12(sp)
     e10:	e75ff0ef          	jal	ra,c84 <subnormal_flush>
     e14:	00050413          	mv	s0,a0
     e18:	800009b7          	lui	s3,0x80000
     e1c:	00048513          	mv	a0,s1
     e20:	e65ff0ef          	jal	ra,c84 <subnormal_flush>
     e24:	fff9c913          	not	s2,s3
     e28:	012475b3          	and	a1,s0,s2
     e2c:	00050493          	mv	s1,a0
     e30:	01257933          	and	s2,a0,s2
     e34:	00058513          	mv	a0,a1
     e38:	1f4020ef          	jal	ra,302c <__unordsf2>
     e3c:	00090593          	mv	a1,s2
     e40:	02050063          	beqz	a0,e60 <riscv_emulate_fmins+0x6c>
     e44:	00090513          	mv	a0,s2
     e48:	1e4020ef          	jal	ra,302c <__unordsf2>
     e4c:	00048413          	mv	s0,s1
     e50:	06050263          	beqz	a0,eb4 <riscv_emulate_fmins+0xc0>
     e54:	800007b7          	lui	a5,0x80000
     e58:	00c7a403          	lw	s0,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
     e5c:	0580006f          	j	eb4 <riscv_emulate_fmins+0xc0>
     e60:	00090513          	mv	a0,s2
     e64:	1c8020ef          	jal	ra,302c <__unordsf2>
     e68:	04051663          	bnez	a0,eb4 <riscv_emulate_fmins+0xc0>
     e6c:	01341a63          	bne	s0,s3,e80 <riscv_emulate_fmins+0x8c>
     e70:	00049c63          	bnez	s1,e88 <riscv_emulate_fmins+0x94>
     e74:	800007b7          	lui	a5,0x80000
     e78:	0007a403          	lw	s0,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
     e7c:	0380006f          	j	eb4 <riscv_emulate_fmins+0xc0>
     e80:	00041463          	bnez	s0,e88 <riscv_emulate_fmins+0x94>
     e84:	ff3488e3          	beq	s1,s3,e74 <riscv_emulate_fmins+0x80>
     e88:	00048513          	mv	a0,s1
     e8c:	4a0020ef          	jal	ra,332c <__extendsfdf2>
     e90:	00050913          	mv	s2,a0
     e94:	00040513          	mv	a0,s0
     e98:	00058493          	mv	s1,a1
     e9c:	490020ef          	jal	ra,332c <__extendsfdf2>
     ea0:	00090613          	mv	a2,s2
     ea4:	00048693          	mv	a3,s1
     ea8:	06c010ef          	jal	ra,1f14 <fmin>
     eac:	55c020ef          	jal	ra,3408 <__truncdfsf2>
     eb0:	00050413          	mv	s0,a0
     eb4:	01c12083          	lw	ra,28(sp)
     eb8:	00040513          	mv	a0,s0
     ebc:	01812403          	lw	s0,24(sp)
     ec0:	01412483          	lw	s1,20(sp)
     ec4:	01012903          	lw	s2,16(sp)
     ec8:	00c12983          	lw	s3,12(sp)
     ecc:	02010113          	addi	sp,sp,32
     ed0:	00008067          	ret

00000ed4 <riscv_emulate_fmaxs>:
     ed4:	fe010113          	addi	sp,sp,-32
     ed8:	00112e23          	sw	ra,28(sp)
     edc:	00812c23          	sw	s0,24(sp)
     ee0:	00912a23          	sw	s1,20(sp)
     ee4:	01212823          	sw	s2,16(sp)
     ee8:	00058493          	mv	s1,a1
     eec:	01312623          	sw	s3,12(sp)
     ef0:	d95ff0ef          	jal	ra,c84 <subnormal_flush>
     ef4:	00050413          	mv	s0,a0
     ef8:	800009b7          	lui	s3,0x80000
     efc:	00048513          	mv	a0,s1
     f00:	d85ff0ef          	jal	ra,c84 <subnormal_flush>
     f04:	fff9c913          	not	s2,s3
     f08:	012475b3          	and	a1,s0,s2
     f0c:	00050493          	mv	s1,a0
     f10:	01257933          	and	s2,a0,s2
     f14:	00058513          	mv	a0,a1
     f18:	114020ef          	jal	ra,302c <__unordsf2>
     f1c:	00090593          	mv	a1,s2
     f20:	02050063          	beqz	a0,f40 <riscv_emulate_fmaxs+0x6c>
     f24:	00090513          	mv	a0,s2
     f28:	104020ef          	jal	ra,302c <__unordsf2>
     f2c:	00048413          	mv	s0,s1
     f30:	06050063          	beqz	a0,f90 <riscv_emulate_fmaxs+0xbc>
     f34:	800007b7          	lui	a5,0x80000
     f38:	00c7a403          	lw	s0,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
     f3c:	0540006f          	j	f90 <riscv_emulate_fmaxs+0xbc>
     f40:	00090513          	mv	a0,s2
     f44:	0e8020ef          	jal	ra,302c <__unordsf2>
     f48:	04051463          	bnez	a0,f90 <riscv_emulate_fmaxs+0xbc>
     f4c:	01341863          	bne	s0,s3,f5c <riscv_emulate_fmaxs+0x88>
     f50:	00049a63          	bnez	s1,f64 <riscv_emulate_fmaxs+0x90>
     f54:	00000413          	li	s0,0
     f58:	0380006f          	j	f90 <riscv_emulate_fmaxs+0xbc>
     f5c:	00041463          	bnez	s0,f64 <riscv_emulate_fmaxs+0x90>
     f60:	ff348ae3          	beq	s1,s3,f54 <riscv_emulate_fmaxs+0x80>
     f64:	00048513          	mv	a0,s1
     f68:	3c4020ef          	jal	ra,332c <__extendsfdf2>
     f6c:	00050913          	mv	s2,a0
     f70:	00040513          	mv	a0,s0
     f74:	00058493          	mv	s1,a1
     f78:	3b4020ef          	jal	ra,332c <__extendsfdf2>
     f7c:	00090613          	mv	a2,s2
     f80:	00048693          	mv	a3,s1
     f84:	709000ef          	jal	ra,1e8c <fmax>
     f88:	480020ef          	jal	ra,3408 <__truncdfsf2>
     f8c:	00050413          	mv	s0,a0
     f90:	01c12083          	lw	ra,28(sp)
     f94:	00040513          	mv	a0,s0
     f98:	01812403          	lw	s0,24(sp)
     f9c:	01412483          	lw	s1,20(sp)
     fa0:	01012903          	lw	s2,16(sp)
     fa4:	00c12983          	lw	s3,12(sp)
     fa8:	02010113          	addi	sp,sp,32
     fac:	00008067          	ret

00000fb0 <riscv_emulate_fcvt_wus>:
     fb0:	ff010113          	addi	sp,sp,-16
     fb4:	00112623          	sw	ra,12(sp)
     fb8:	ccdff0ef          	jal	ra,c84 <subnormal_flush>
     fbc:	054010ef          	jal	ra,2010 <roundf>
     fc0:	120020ef          	jal	ra,30e0 <__fixunssfsi>
     fc4:	00c12083          	lw	ra,12(sp)
     fc8:	01010113          	addi	sp,sp,16
     fcc:	00008067          	ret

00000fd0 <riscv_emulate_fcvt_ws>:
     fd0:	ff010113          	addi	sp,sp,-16
     fd4:	00112623          	sw	ra,12(sp)
     fd8:	cadff0ef          	jal	ra,c84 <subnormal_flush>
     fdc:	034010ef          	jal	ra,2010 <roundf>
     fe0:	090020ef          	jal	ra,3070 <__fixsfsi>
     fe4:	00c12083          	lw	ra,12(sp)
     fe8:	01010113          	addi	sp,sp,16
     fec:	00008067          	ret

00000ff0 <riscv_emulate_fcvt_swu>:
     ff0:	ff010113          	addi	sp,sp,-16
     ff4:	00112623          	sw	ra,12(sp)
     ff8:	258020ef          	jal	ra,3250 <__floatunsisf>
     ffc:	00c12083          	lw	ra,12(sp)
    1000:	01010113          	addi	sp,sp,16
    1004:	00008067          	ret

00001008 <riscv_emulate_fcvt_sw>:
    1008:	ff010113          	addi	sp,sp,-16
    100c:	00112623          	sw	ra,12(sp)
    1010:	138020ef          	jal	ra,3148 <__floatsisf>
    1014:	00c12083          	lw	ra,12(sp)
    1018:	01010113          	addi	sp,sp,16
    101c:	00008067          	ret

00001020 <riscv_emulate_feqs>:
    1020:	ff010113          	addi	sp,sp,-16
    1024:	00112623          	sw	ra,12(sp)
    1028:	00812423          	sw	s0,8(sp)
    102c:	00912223          	sw	s1,4(sp)
    1030:	00058413          	mv	s0,a1
    1034:	01212023          	sw	s2,0(sp)
    1038:	c4dff0ef          	jal	ra,c84 <subnormal_flush>
    103c:	00050493          	mv	s1,a0
    1040:	00040513          	mv	a0,s0
    1044:	c41ff0ef          	jal	ra,c84 <subnormal_flush>
    1048:	00050913          	mv	s2,a0
    104c:	80000537          	lui	a0,0x80000
    1050:	fff54513          	not	a0,a0
    1054:	012575b3          	and	a1,a0,s2
    1058:	00957533          	and	a0,a0,s1
    105c:	7d1010ef          	jal	ra,302c <__unordsf2>
    1060:	04051463          	bnez	a0,10a8 <riscv_emulate_feqs+0x88>
    1064:	00090593          	mv	a1,s2
    1068:	00048513          	mv	a0,s1
    106c:	00100413          	li	s0,1
    1070:	7bd010ef          	jal	ra,302c <__unordsf2>
    1074:	00051c63          	bnez	a0,108c <riscv_emulate_feqs+0x6c>
    1078:	00090593          	mv	a1,s2
    107c:	00048513          	mv	a0,s1
    1080:	640010ef          	jal	ra,26c0 <__eqsf2>
    1084:	00050463          	beqz	a0,108c <riscv_emulate_feqs+0x6c>
    1088:	00000413          	li	s0,0
    108c:	00040513          	mv	a0,s0
    1090:	00c12083          	lw	ra,12(sp)
    1094:	00812403          	lw	s0,8(sp)
    1098:	00412483          	lw	s1,4(sp)
    109c:	00012903          	lw	s2,0(sp)
    10a0:	01010113          	addi	sp,sp,16
    10a4:	00008067          	ret
    10a8:	00000513          	li	a0,0
    10ac:	fe5ff06f          	j	1090 <riscv_emulate_feqs+0x70>

000010b0 <riscv_emulate_flts>:
    10b0:	ff010113          	addi	sp,sp,-16
    10b4:	00112623          	sw	ra,12(sp)
    10b8:	00812423          	sw	s0,8(sp)
    10bc:	00912223          	sw	s1,4(sp)
    10c0:	00058413          	mv	s0,a1
    10c4:	01212023          	sw	s2,0(sp)
    10c8:	bbdff0ef          	jal	ra,c84 <subnormal_flush>
    10cc:	00050493          	mv	s1,a0
    10d0:	00040513          	mv	a0,s0
    10d4:	bb1ff0ef          	jal	ra,c84 <subnormal_flush>
    10d8:	00050913          	mv	s2,a0
    10dc:	80000537          	lui	a0,0x80000
    10e0:	fff54513          	not	a0,a0
    10e4:	012575b3          	and	a1,a0,s2
    10e8:	00957533          	and	a0,a0,s1
    10ec:	741010ef          	jal	ra,302c <__unordsf2>
    10f0:	04051663          	bnez	a0,113c <riscv_emulate_flts+0x8c>
    10f4:	00090593          	mv	a1,s2
    10f8:	00048513          	mv	a0,s1
    10fc:	00100413          	li	s0,1
    1100:	72d010ef          	jal	ra,302c <__unordsf2>
    1104:	00051c63          	bnez	a0,111c <riscv_emulate_flts+0x6c>
    1108:	00090593          	mv	a1,s2
    110c:	00048513          	mv	a0,s1
    1110:	618010ef          	jal	ra,2728 <__gesf2>
    1114:	00055463          	bgez	a0,111c <riscv_emulate_flts+0x6c>
    1118:	00000413          	li	s0,0
    111c:	00144513          	xori	a0,s0,1
    1120:	0ff57513          	andi	a0,a0,255
    1124:	00c12083          	lw	ra,12(sp)
    1128:	00812403          	lw	s0,8(sp)
    112c:	00412483          	lw	s1,4(sp)
    1130:	00012903          	lw	s2,0(sp)
    1134:	01010113          	addi	sp,sp,16
    1138:	00008067          	ret
    113c:	00000513          	li	a0,0
    1140:	fe5ff06f          	j	1124 <riscv_emulate_flts+0x74>

00001144 <riscv_emulate_fles>:
    1144:	ff010113          	addi	sp,sp,-16
    1148:	00112623          	sw	ra,12(sp)
    114c:	00812423          	sw	s0,8(sp)
    1150:	00912223          	sw	s1,4(sp)
    1154:	00058413          	mv	s0,a1
    1158:	01212023          	sw	s2,0(sp)
    115c:	b29ff0ef          	jal	ra,c84 <subnormal_flush>
    1160:	00050493          	mv	s1,a0
    1164:	00040513          	mv	a0,s0
    1168:	b1dff0ef          	jal	ra,c84 <subnormal_flush>
    116c:	00050913          	mv	s2,a0
    1170:	80000537          	lui	a0,0x80000
    1174:	fff54513          	not	a0,a0
    1178:	012575b3          	and	a1,a0,s2
    117c:	00957533          	and	a0,a0,s1
    1180:	6ad010ef          	jal	ra,302c <__unordsf2>
    1184:	04051663          	bnez	a0,11d0 <riscv_emulate_fles+0x8c>
    1188:	00090593          	mv	a1,s2
    118c:	00048513          	mv	a0,s1
    1190:	00100413          	li	s0,1
    1194:	699010ef          	jal	ra,302c <__unordsf2>
    1198:	00051c63          	bnez	a0,11b0 <riscv_emulate_fles+0x6c>
    119c:	00090593          	mv	a1,s2
    11a0:	00048513          	mv	a0,s1
    11a4:	584010ef          	jal	ra,2728 <__gesf2>
    11a8:	00a04463          	bgtz	a0,11b0 <riscv_emulate_fles+0x6c>
    11ac:	00000413          	li	s0,0
    11b0:	00144513          	xori	a0,s0,1
    11b4:	0ff57513          	andi	a0,a0,255
    11b8:	00c12083          	lw	ra,12(sp)
    11bc:	00812403          	lw	s0,8(sp)
    11c0:	00412483          	lw	s1,4(sp)
    11c4:	00012903          	lw	s2,0(sp)
    11c8:	01010113          	addi	sp,sp,16
    11cc:	00008067          	ret
    11d0:	00000513          	li	a0,0
    11d4:	fe5ff06f          	j	11b8 <riscv_emulate_fles+0x74>

000011d8 <riscv_emulate_fsgnjs>:
    11d8:	ff010113          	addi	sp,sp,-16
    11dc:	00112623          	sw	ra,12(sp)
    11e0:	00812423          	sw	s0,8(sp)
    11e4:	00912223          	sw	s1,4(sp)
    11e8:	00058493          	mv	s1,a1
    11ec:	a99ff0ef          	jal	ra,c84 <subnormal_flush>
    11f0:	00050413          	mv	s0,a0
    11f4:	00048513          	mv	a0,s1
    11f8:	a8dff0ef          	jal	ra,c84 <subnormal_flush>
    11fc:	800007b7          	lui	a5,0x80000
    1200:	00a7f533          	and	a0,a5,a0
    1204:	0087f733          	and	a4,a5,s0
    1208:	00050863          	beqz	a0,1218 <riscv_emulate_fsgnjs+0x40>
    120c:	00071863          	bnez	a4,121c <riscv_emulate_fsgnjs+0x44>
    1210:	0087c433          	xor	s0,a5,s0
    1214:	0080006f          	j	121c <riscv_emulate_fsgnjs+0x44>
    1218:	fe071ce3          	bnez	a4,1210 <riscv_emulate_fsgnjs+0x38>
    121c:	00c12083          	lw	ra,12(sp)
    1220:	00040513          	mv	a0,s0
    1224:	00812403          	lw	s0,8(sp)
    1228:	00412483          	lw	s1,4(sp)
    122c:	01010113          	addi	sp,sp,16
    1230:	00008067          	ret

00001234 <riscv_emulate_fsgnjns>:
    1234:	ff010113          	addi	sp,sp,-16
    1238:	00112623          	sw	ra,12(sp)
    123c:	00812423          	sw	s0,8(sp)
    1240:	00912223          	sw	s1,4(sp)
    1244:	00058493          	mv	s1,a1
    1248:	a3dff0ef          	jal	ra,c84 <subnormal_flush>
    124c:	00050413          	mv	s0,a0
    1250:	00048513          	mv	a0,s1
    1254:	a31ff0ef          	jal	ra,c84 <subnormal_flush>
    1258:	800007b7          	lui	a5,0x80000
    125c:	00a7f533          	and	a0,a5,a0
    1260:	0087f733          	and	a4,a5,s0
    1264:	00050863          	beqz	a0,1274 <riscv_emulate_fsgnjns+0x40>
    1268:	00070863          	beqz	a4,1278 <riscv_emulate_fsgnjns+0x44>
    126c:	0087c433          	xor	s0,a5,s0
    1270:	0080006f          	j	1278 <riscv_emulate_fsgnjns+0x44>
    1274:	fe070ce3          	beqz	a4,126c <riscv_emulate_fsgnjns+0x38>
    1278:	00c12083          	lw	ra,12(sp)
    127c:	00040513          	mv	a0,s0
    1280:	00812403          	lw	s0,8(sp)
    1284:	00412483          	lw	s1,4(sp)
    1288:	01010113          	addi	sp,sp,16
    128c:	00008067          	ret

00001290 <riscv_emulate_fsgnjxs>:
    1290:	ff010113          	addi	sp,sp,-16
    1294:	00112623          	sw	ra,12(sp)
    1298:	00812423          	sw	s0,8(sp)
    129c:	00912223          	sw	s1,4(sp)
    12a0:	00058493          	mv	s1,a1
    12a4:	9e1ff0ef          	jal	ra,c84 <subnormal_flush>
    12a8:	00050413          	mv	s0,a0
    12ac:	00048513          	mv	a0,s1
    12b0:	9d5ff0ef          	jal	ra,c84 <subnormal_flush>
    12b4:	800007b7          	lui	a5,0x80000
    12b8:	00a7f533          	and	a0,a5,a0
    12bc:	00050463          	beqz	a0,12c4 <riscv_emulate_fsgnjxs+0x34>
    12c0:	0087c433          	xor	s0,a5,s0
    12c4:	00c12083          	lw	ra,12(sp)
    12c8:	00040513          	mv	a0,s0
    12cc:	00812403          	lw	s0,8(sp)
    12d0:	00412483          	lw	s1,4(sp)
    12d4:	01010113          	addi	sp,sp,16
    12d8:	00008067          	ret

000012dc <riscv_emulate_fclasss>:
    12dc:	ff010113          	addi	sp,sp,-16
    12e0:	00112623          	sw	ra,12(sp)
    12e4:	00812423          	sw	s0,8(sp)
    12e8:	00912223          	sw	s1,4(sp)
    12ec:	999ff0ef          	jal	ra,c84 <subnormal_flush>
    12f0:	00151493          	slli	s1,a0,0x1
    12f4:	0014d493          	srli	s1,s1,0x1
    12f8:	00050413          	mv	s0,a0
    12fc:	00048593          	mv	a1,s1
    1300:	00048513          	mv	a0,s1
    1304:	529010ef          	jal	ra,302c <__unordsf2>
    1308:	00000793          	li	a5,0
    130c:	04051e63          	bnez	a0,1368 <riscv_emulate_fclasss+0x8c>
    1310:	800007b7          	lui	a5,0x80000
    1314:	0047a583          	lw	a1,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
    1318:	00048513          	mv	a0,s1
    131c:	511010ef          	jal	ra,302c <__unordsf2>
    1320:	00051e63          	bnez	a0,133c <riscv_emulate_fclasss+0x60>
    1324:	800007b7          	lui	a5,0x80000
    1328:	0047a583          	lw	a1,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
    132c:	00048513          	mv	a0,s1
    1330:	4ac010ef          	jal	ra,27dc <__lesf2>
    1334:	00100793          	li	a5,1
    1338:	02a04863          	bgtz	a0,1368 <riscv_emulate_fclasss+0x8c>
    133c:	800007b7          	lui	a5,0x80000
    1340:	0087a583          	lw	a1,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
    1344:	00048513          	mv	a0,s1
    1348:	3e0010ef          	jal	ra,2728 <__gesf2>
    134c:	00400793          	li	a5,4
    1350:	00055c63          	bgez	a0,1368 <riscv_emulate_fclasss+0x8c>
    1354:	00000593          	li	a1,0
    1358:	00040513          	mv	a0,s0
    135c:	364010ef          	jal	ra,26c0 <__eqsf2>
    1360:	00a037b3          	snez	a5,a0
    1364:	00278793          	addi	a5,a5,2
    1368:	80000737          	lui	a4,0x80000
    136c:	00100693          	li	a3,1
    1370:	00877733          	and	a4,a4,s0
    1374:	02d79263          	bne	a5,a3,1398 <riscv_emulate_fclasss+0xbc>
    1378:	08000513          	li	a0,128
    137c:	00070463          	beqz	a4,1384 <riscv_emulate_fclasss+0xa8>
    1380:	00100513          	li	a0,1
    1384:	00c12083          	lw	ra,12(sp)
    1388:	00812403          	lw	s0,8(sp)
    138c:	00412483          	lw	s1,4(sp)
    1390:	01010113          	addi	sp,sp,16
    1394:	00008067          	ret
    1398:	00200693          	li	a3,2
    139c:	02d78a63          	beq	a5,a3,13d0 <riscv_emulate_fclasss+0xf4>
    13a0:	00400693          	li	a3,4
    13a4:	02d78e63          	beq	a5,a3,13e0 <riscv_emulate_fclasss+0x104>
    13a8:	00300693          	li	a3,3
    13ac:	04d78263          	beq	a5,a3,13f0 <riscv_emulate_fclasss+0x114>
    13b0:	00000513          	li	a0,0
    13b4:	fc0798e3          	bnez	a5,1384 <riscv_emulate_fclasss+0xa8>
    13b8:	01645413          	srli	s0,s0,0x16
    13bc:	00147413          	andi	s0,s0,1
    13c0:	20000513          	li	a0,512
    13c4:	fc0410e3          	bnez	s0,1384 <riscv_emulate_fclasss+0xa8>
    13c8:	10000513          	li	a0,256
    13cc:	fb9ff06f          	j	1384 <riscv_emulate_fclasss+0xa8>
    13d0:	00800513          	li	a0,8
    13d4:	fa0718e3          	bnez	a4,1384 <riscv_emulate_fclasss+0xa8>
    13d8:	01000513          	li	a0,16
    13dc:	fa9ff06f          	j	1384 <riscv_emulate_fclasss+0xa8>
    13e0:	00200513          	li	a0,2
    13e4:	fa0710e3          	bnez	a4,1384 <riscv_emulate_fclasss+0xa8>
    13e8:	04000513          	li	a0,64
    13ec:	f99ff06f          	j	1384 <riscv_emulate_fclasss+0xa8>
    13f0:	02000513          	li	a0,32
    13f4:	f80708e3          	beqz	a4,1384 <riscv_emulate_fclasss+0xa8>
    13f8:	00400513          	li	a0,4
    13fc:	f89ff06f          	j	1384 <riscv_emulate_fclasss+0xa8>

00001400 <xorshift32>:
    1400:	81018793          	addi	a5,gp,-2032 # 80000010 <x32.0>
    1404:	0007a503          	lw	a0,0(a5)
    1408:	00d51713          	slli	a4,a0,0xd
    140c:	00a74733          	xor	a4,a4,a0
    1410:	01175513          	srli	a0,a4,0x11
    1414:	00e54733          	xor	a4,a0,a4
    1418:	00571513          	slli	a0,a4,0x5
    141c:	00e54533          	xor	a0,a0,a4
    1420:	00a7a023          	sw	a0,0(a5)
    1424:	00008067          	ret

00001428 <get_test_vector>:
    1428:	ff010113          	addi	sp,sp,-16
    142c:	00112623          	sw	ra,12(sp)
    1430:	fd1ff0ef          	jal	ra,1400 <xorshift32>
    1434:	0ff57513          	andi	a0,a0,255
    1438:	0ff00793          	li	a5,255
    143c:	04f51063          	bne	a0,a5,147c <get_test_vector+0x54>
    1440:	fc1ff0ef          	jal	ra,1400 <xorshift32>
    1444:	00a55793          	srli	a5,a0,0xa
    1448:	0037f793          	andi	a5,a5,3
    144c:	fff78793          	addi	a5,a5,-1
    1450:	00200713          	li	a4,2
    1454:	7f800537          	lui	a0,0x7f800
    1458:	00f76c63          	bltu	a4,a5,1470 <get_test_vector+0x48>
    145c:	00004737          	lui	a4,0x4
    1460:	00279793          	slli	a5,a5,0x2
    1464:	cd870713          	addi	a4,a4,-808 # 3cd8 <CSWTCH.162>
    1468:	00f707b3          	add	a5,a4,a5
    146c:	0007a503          	lw	a0,0(a5)
    1470:	00c12083          	lw	ra,12(sp)
    1474:	01010113          	addi	sp,sp,16
    1478:	00008067          	ret
    147c:	00c12083          	lw	ra,12(sp)
    1480:	01010113          	addi	sp,sp,16
    1484:	f7dff06f          	j	1400 <xorshift32>

00001488 <verify_result>:
    1488:	04e68863          	beq	a3,a4,14d8 <verify_result+0x50>
    148c:	00070793          	mv	a5,a4
    1490:	00068713          	mv	a4,a3
    1494:	00060693          	mv	a3,a2
    1498:	00058613          	mv	a2,a1
    149c:	00050593          	mv	a1,a0
    14a0:	00003537          	lui	a0,0x3
    14a4:	ff010113          	addi	sp,sp,-16
    14a8:	6b050513          	addi	a0,a0,1712 # 36b0 <__etext>
    14ac:	00112623          	sw	ra,12(sp)
    14b0:	2f8000ef          	jal	ra,17a8 <neorv32_uart0_printf>
    14b4:	00003537          	lui	a0,0x3
    14b8:	6f050513          	addi	a0,a0,1776 # 36f0 <__etext+0x40>
    14bc:	01b00613          	li	a2,27
    14c0:	01b00593          	li	a1,27
    14c4:	2e4000ef          	jal	ra,17a8 <neorv32_uart0_printf>
    14c8:	00c12083          	lw	ra,12(sp)
    14cc:	00100513          	li	a0,1
    14d0:	01010113          	addi	sp,sp,16
    14d4:	00008067          	ret
    14d8:	00000513          	li	a0,0
    14dc:	00008067          	ret

000014e0 <print_report>:
    14e0:	ff010113          	addi	sp,sp,-16
    14e4:	00050593          	mv	a1,a0
    14e8:	00812423          	sw	s0,8(sp)
    14ec:	000f4637          	lui	a2,0xf4
    14f0:	00050413          	mv	s0,a0
    14f4:	00003537          	lui	a0,0x3
    14f8:	24060613          	addi	a2,a2,576 # f4240 <__crt0_copy_data_src_begin+0xf00d0>
    14fc:	70450513          	addi	a0,a0,1796 # 3704 <__etext+0x54>
    1500:	00112623          	sw	ra,12(sp)
    1504:	2a4000ef          	jal	ra,17a8 <neorv32_uart0_printf>
    1508:	01b00613          	li	a2,27
    150c:	01b00593          	li	a1,27
    1510:	00041e63          	bnez	s0,152c <print_report+0x4c>
    1514:	00003537          	lui	a0,0x3
    1518:	71450513          	addi	a0,a0,1812 # 3714 <__etext+0x64>
    151c:	00812403          	lw	s0,8(sp)
    1520:	00c12083          	lw	ra,12(sp)
    1524:	01010113          	addi	sp,sp,16
    1528:	2800006f          	j	17a8 <neorv32_uart0_printf>
    152c:	00003537          	lui	a0,0x3
    1530:	6f050513          	addi	a0,a0,1776 # 36f0 <__etext+0x40>
    1534:	fe9ff06f          	j	151c <print_report+0x3c>

00001538 <__neorv32_uart_itoa>:
    1538:	fd010113          	addi	sp,sp,-48
    153c:	02812423          	sw	s0,40(sp)
    1540:	02912223          	sw	s1,36(sp)
    1544:	03212023          	sw	s2,32(sp)
    1548:	01312e23          	sw	s3,28(sp)
    154c:	01412c23          	sw	s4,24(sp)
    1550:	02112623          	sw	ra,44(sp)
    1554:	01512a23          	sw	s5,20(sp)
    1558:	00004a37          	lui	s4,0x4
    155c:	00050493          	mv	s1,a0
    1560:	00058413          	mv	s0,a1
    1564:	00058523          	sb	zero,10(a1)
    1568:	00000993          	li	s3,0
    156c:	00410913          	addi	s2,sp,4
    1570:	ce4a0a13          	addi	s4,s4,-796 # 3ce4 <numbers.1>
    1574:	00a00593          	li	a1,10
    1578:	00048513          	mv	a0,s1
    157c:	084020ef          	jal	ra,3600 <__umodsi3>
    1580:	00aa0533          	add	a0,s4,a0
    1584:	00054783          	lbu	a5,0(a0)
    1588:	01390ab3          	add	s5,s2,s3
    158c:	00048513          	mv	a0,s1
    1590:	00fa8023          	sb	a5,0(s5)
    1594:	00a00593          	li	a1,10
    1598:	020020ef          	jal	ra,35b8 <__udivsi3>
    159c:	00198993          	addi	s3,s3,1 # 80000001 <__ctr0_io_space_begin+0x80000201>
    15a0:	00a00793          	li	a5,10
    15a4:	00050493          	mv	s1,a0
    15a8:	fcf996e3          	bne	s3,a5,1574 <__neorv32_uart_itoa+0x3c>
    15ac:	00090693          	mv	a3,s2
    15b0:	00900713          	li	a4,9
    15b4:	03000613          	li	a2,48
    15b8:	0096c583          	lbu	a1,9(a3)
    15bc:	00070793          	mv	a5,a4
    15c0:	fff70713          	addi	a4,a4,-1
    15c4:	01071713          	slli	a4,a4,0x10
    15c8:	01075713          	srli	a4,a4,0x10
    15cc:	00c59a63          	bne	a1,a2,15e0 <__neorv32_uart_itoa+0xa8>
    15d0:	000684a3          	sb	zero,9(a3)
    15d4:	fff68693          	addi	a3,a3,-1
    15d8:	fe0710e3          	bnez	a4,15b8 <__neorv32_uart_itoa+0x80>
    15dc:	00000793          	li	a5,0
    15e0:	00f907b3          	add	a5,s2,a5
    15e4:	00000593          	li	a1,0
    15e8:	0007c703          	lbu	a4,0(a5)
    15ec:	00070c63          	beqz	a4,1604 <__neorv32_uart_itoa+0xcc>
    15f0:	00158693          	addi	a3,a1,1
    15f4:	00b405b3          	add	a1,s0,a1
    15f8:	00e58023          	sb	a4,0(a1)
    15fc:	01069593          	slli	a1,a3,0x10
    1600:	0105d593          	srli	a1,a1,0x10
    1604:	fff78713          	addi	a4,a5,-1
    1608:	02f91863          	bne	s2,a5,1638 <__neorv32_uart_itoa+0x100>
    160c:	00b40433          	add	s0,s0,a1
    1610:	00040023          	sb	zero,0(s0)
    1614:	02c12083          	lw	ra,44(sp)
    1618:	02812403          	lw	s0,40(sp)
    161c:	02412483          	lw	s1,36(sp)
    1620:	02012903          	lw	s2,32(sp)
    1624:	01c12983          	lw	s3,28(sp)
    1628:	01812a03          	lw	s4,24(sp)
    162c:	01412a83          	lw	s5,20(sp)
    1630:	03010113          	addi	sp,sp,48
    1634:	00008067          	ret
    1638:	00070793          	mv	a5,a4
    163c:	fadff06f          	j	15e8 <__neorv32_uart_itoa+0xb0>

00001640 <__neorv32_uart_tohex>:
    1640:	00004637          	lui	a2,0x4
    1644:	00758693          	addi	a3,a1,7
    1648:	00000713          	li	a4,0
    164c:	cf060613          	addi	a2,a2,-784 # 3cf0 <symbols.0>
    1650:	02000813          	li	a6,32
    1654:	00e557b3          	srl	a5,a0,a4
    1658:	00f7f793          	andi	a5,a5,15
    165c:	00f607b3          	add	a5,a2,a5
    1660:	0007c783          	lbu	a5,0(a5)
    1664:	00470713          	addi	a4,a4,4
    1668:	fff68693          	addi	a3,a3,-1
    166c:	00f680a3          	sb	a5,1(a3)
    1670:	ff0712e3          	bne	a4,a6,1654 <__neorv32_uart_tohex+0x14>
    1674:	00058423          	sb	zero,8(a1)
    1678:	00008067          	ret

0000167c <neorv32_uart0_available>:
    167c:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
    1680:	01255513          	srli	a0,a0,0x12
    1684:	00157513          	andi	a0,a0,1
    1688:	00008067          	ret

0000168c <neorv32_uart0_setup>:
    168c:	ff010113          	addi	sp,sp,-16
    1690:	00812423          	sw	s0,8(sp)
    1694:	00912223          	sw	s1,4(sp)
    1698:	00112623          	sw	ra,12(sp)
    169c:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
    16a0:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
    16a4:	00058413          	mv	s0,a1
    16a8:	00151593          	slli	a1,a0,0x1
    16ac:	00078513          	mv	a0,a5
    16b0:	00060493          	mv	s1,a2
    16b4:	705010ef          	jal	ra,35b8 <__udivsi3>
    16b8:	01051513          	slli	a0,a0,0x10
    16bc:	000017b7          	lui	a5,0x1
    16c0:	01055513          	srli	a0,a0,0x10
    16c4:	00000713          	li	a4,0
    16c8:	ffe78793          	addi	a5,a5,-2 # ffe <riscv_emulate_fcvt_swu+0xe>
    16cc:	04a7e463          	bltu	a5,a0,1714 <neorv32_uart0_setup+0x88>
    16d0:	0034f793          	andi	a5,s1,3
    16d4:	00347413          	andi	s0,s0,3
    16d8:	fff50513          	addi	a0,a0,-1
    16dc:	01479793          	slli	a5,a5,0x14
    16e0:	01641413          	slli	s0,s0,0x16
    16e4:	00f567b3          	or	a5,a0,a5
    16e8:	0087e7b3          	or	a5,a5,s0
    16ec:	01871713          	slli	a4,a4,0x18
    16f0:	00c12083          	lw	ra,12(sp)
    16f4:	00812403          	lw	s0,8(sp)
    16f8:	00e7e7b3          	or	a5,a5,a4
    16fc:	10000737          	lui	a4,0x10000
    1700:	00e7e7b3          	or	a5,a5,a4
    1704:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
    1708:	00412483          	lw	s1,4(sp)
    170c:	01010113          	addi	sp,sp,16
    1710:	00008067          	ret
    1714:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffbe8e>
    1718:	0fd6f693          	andi	a3,a3,253
    171c:	00069a63          	bnez	a3,1730 <neorv32_uart0_setup+0xa4>
    1720:	00355513          	srli	a0,a0,0x3
    1724:	00170713          	addi	a4,a4,1
    1728:	0ff77713          	andi	a4,a4,255
    172c:	fa1ff06f          	j	16cc <neorv32_uart0_setup+0x40>
    1730:	00155513          	srli	a0,a0,0x1
    1734:	ff1ff06f          	j	1724 <neorv32_uart0_setup+0x98>

00001738 <neorv32_uart0_putc>:
    1738:	00040737          	lui	a4,0x40
    173c:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
    1740:	00e7f7b3          	and	a5,a5,a4
    1744:	fe079ce3          	bnez	a5,173c <neorv32_uart0_putc+0x4>
    1748:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
    174c:	00008067          	ret

00001750 <neorv32_uart0_print>:
    1750:	ff010113          	addi	sp,sp,-16
    1754:	00812423          	sw	s0,8(sp)
    1758:	01212023          	sw	s2,0(sp)
    175c:	00112623          	sw	ra,12(sp)
    1760:	00912223          	sw	s1,4(sp)
    1764:	00050413          	mv	s0,a0
    1768:	00a00913          	li	s2,10
    176c:	00044483          	lbu	s1,0(s0)
    1770:	00140413          	addi	s0,s0,1
    1774:	00049e63          	bnez	s1,1790 <neorv32_uart0_print+0x40>
    1778:	00c12083          	lw	ra,12(sp)
    177c:	00812403          	lw	s0,8(sp)
    1780:	00412483          	lw	s1,4(sp)
    1784:	00012903          	lw	s2,0(sp)
    1788:	01010113          	addi	sp,sp,16
    178c:	00008067          	ret
    1790:	01249663          	bne	s1,s2,179c <neorv32_uart0_print+0x4c>
    1794:	00d00513          	li	a0,13
    1798:	fa1ff0ef          	jal	ra,1738 <neorv32_uart0_putc>
    179c:	00048513          	mv	a0,s1
    17a0:	f99ff0ef          	jal	ra,1738 <neorv32_uart0_putc>
    17a4:	fc9ff06f          	j	176c <neorv32_uart0_print+0x1c>

000017a8 <neorv32_uart0_printf>:
    17a8:	fa010113          	addi	sp,sp,-96
    17ac:	04f12a23          	sw	a5,84(sp)
    17b0:	04410793          	addi	a5,sp,68
    17b4:	02812c23          	sw	s0,56(sp)
    17b8:	03212823          	sw	s2,48(sp)
    17bc:	03412423          	sw	s4,40(sp)
    17c0:	03512223          	sw	s5,36(sp)
    17c4:	03612023          	sw	s6,32(sp)
    17c8:	01712e23          	sw	s7,28(sp)
    17cc:	01812c23          	sw	s8,24(sp)
    17d0:	01912a23          	sw	s9,20(sp)
    17d4:	02112e23          	sw	ra,60(sp)
    17d8:	02912a23          	sw	s1,52(sp)
    17dc:	03312623          	sw	s3,44(sp)
    17e0:	00050413          	mv	s0,a0
    17e4:	04b12223          	sw	a1,68(sp)
    17e8:	04c12423          	sw	a2,72(sp)
    17ec:	04d12623          	sw	a3,76(sp)
    17f0:	04e12823          	sw	a4,80(sp)
    17f4:	05012c23          	sw	a6,88(sp)
    17f8:	05112e23          	sw	a7,92(sp)
    17fc:	00f12023          	sw	a5,0(sp)
    1800:	02500a13          	li	s4,37
    1804:	00a00a93          	li	s5,10
    1808:	07300913          	li	s2,115
    180c:	07500b13          	li	s6,117
    1810:	07800b93          	li	s7,120
    1814:	06300c13          	li	s8,99
    1818:	06900c93          	li	s9,105
    181c:	00044483          	lbu	s1,0(s0)
    1820:	02049c63          	bnez	s1,1858 <neorv32_uart0_printf+0xb0>
    1824:	03c12083          	lw	ra,60(sp)
    1828:	03812403          	lw	s0,56(sp)
    182c:	03412483          	lw	s1,52(sp)
    1830:	03012903          	lw	s2,48(sp)
    1834:	02c12983          	lw	s3,44(sp)
    1838:	02812a03          	lw	s4,40(sp)
    183c:	02412a83          	lw	s5,36(sp)
    1840:	02012b03          	lw	s6,32(sp)
    1844:	01c12b83          	lw	s7,28(sp)
    1848:	01812c03          	lw	s8,24(sp)
    184c:	01412c83          	lw	s9,20(sp)
    1850:	06010113          	addi	sp,sp,96
    1854:	00008067          	ret
    1858:	0d449863          	bne	s1,s4,1928 <neorv32_uart0_printf+0x180>
    185c:	00240993          	addi	s3,s0,2
    1860:	00144403          	lbu	s0,1(s0)
    1864:	05240263          	beq	s0,s2,18a8 <neorv32_uart0_printf+0x100>
    1868:	00896e63          	bltu	s2,s0,1884 <neorv32_uart0_printf+0xdc>
    186c:	05840c63          	beq	s0,s8,18c4 <neorv32_uart0_printf+0x11c>
    1870:	07940663          	beq	s0,s9,18dc <neorv32_uart0_printf+0x134>
    1874:	02500513          	li	a0,37
    1878:	ec1ff0ef          	jal	ra,1738 <neorv32_uart0_putc>
    187c:	00040513          	mv	a0,s0
    1880:	0540006f          	j	18d4 <neorv32_uart0_printf+0x12c>
    1884:	09640663          	beq	s0,s6,1910 <neorv32_uart0_printf+0x168>
    1888:	ff7416e3          	bne	s0,s7,1874 <neorv32_uart0_printf+0xcc>
    188c:	00012783          	lw	a5,0(sp)
    1890:	00410593          	addi	a1,sp,4
    1894:	0007a503          	lw	a0,0(a5)
    1898:	00478713          	addi	a4,a5,4
    189c:	00e12023          	sw	a4,0(sp)
    18a0:	da1ff0ef          	jal	ra,1640 <__neorv32_uart_tohex>
    18a4:	0640006f          	j	1908 <neorv32_uart0_printf+0x160>
    18a8:	00012783          	lw	a5,0(sp)
    18ac:	0007a503          	lw	a0,0(a5)
    18b0:	00478713          	addi	a4,a5,4
    18b4:	00e12023          	sw	a4,0(sp)
    18b8:	e99ff0ef          	jal	ra,1750 <neorv32_uart0_print>
    18bc:	00098413          	mv	s0,s3
    18c0:	f5dff06f          	j	181c <neorv32_uart0_printf+0x74>
    18c4:	00012783          	lw	a5,0(sp)
    18c8:	0007c503          	lbu	a0,0(a5)
    18cc:	00478713          	addi	a4,a5,4
    18d0:	00e12023          	sw	a4,0(sp)
    18d4:	e65ff0ef          	jal	ra,1738 <neorv32_uart0_putc>
    18d8:	fe5ff06f          	j	18bc <neorv32_uart0_printf+0x114>
    18dc:	00012783          	lw	a5,0(sp)
    18e0:	0007a403          	lw	s0,0(a5)
    18e4:	00478713          	addi	a4,a5,4
    18e8:	00e12023          	sw	a4,0(sp)
    18ec:	00045863          	bgez	s0,18fc <neorv32_uart0_printf+0x154>
    18f0:	02d00513          	li	a0,45
    18f4:	40800433          	neg	s0,s0
    18f8:	e41ff0ef          	jal	ra,1738 <neorv32_uart0_putc>
    18fc:	00410593          	addi	a1,sp,4
    1900:	00040513          	mv	a0,s0
    1904:	c35ff0ef          	jal	ra,1538 <__neorv32_uart_itoa>
    1908:	00410513          	addi	a0,sp,4
    190c:	fadff06f          	j	18b8 <neorv32_uart0_printf+0x110>
    1910:	00012783          	lw	a5,0(sp)
    1914:	00410593          	addi	a1,sp,4
    1918:	00478713          	addi	a4,a5,4
    191c:	0007a503          	lw	a0,0(a5)
    1920:	00e12023          	sw	a4,0(sp)
    1924:	fe1ff06f          	j	1904 <neorv32_uart0_printf+0x15c>
    1928:	01549663          	bne	s1,s5,1934 <neorv32_uart0_printf+0x18c>
    192c:	00d00513          	li	a0,13
    1930:	e09ff0ef          	jal	ra,1738 <neorv32_uart0_putc>
    1934:	00140993          	addi	s3,s0,1
    1938:	00048513          	mv	a0,s1
    193c:	f99ff06f          	j	18d4 <neorv32_uart0_printf+0x12c>

00001940 <__neorv32_rte_core>:
    1940:	fc010113          	addi	sp,sp,-64
    1944:	02112e23          	sw	ra,60(sp)
    1948:	02512c23          	sw	t0,56(sp)
    194c:	02612a23          	sw	t1,52(sp)
    1950:	02712823          	sw	t2,48(sp)
    1954:	02a12623          	sw	a0,44(sp)
    1958:	02b12423          	sw	a1,40(sp)
    195c:	02c12223          	sw	a2,36(sp)
    1960:	02d12023          	sw	a3,32(sp)
    1964:	00e12e23          	sw	a4,28(sp)
    1968:	00f12c23          	sw	a5,24(sp)
    196c:	01012a23          	sw	a6,20(sp)
    1970:	01112823          	sw	a7,16(sp)
    1974:	01c12623          	sw	t3,12(sp)
    1978:	01d12423          	sw	t4,8(sp)
    197c:	01e12223          	sw	t5,4(sp)
    1980:	01f12023          	sw	t6,0(sp)
    1984:	34102773          	csrr	a4,mepc
    1988:	34071073          	csrw	mscratch,a4
    198c:	342027f3          	csrr	a5,mcause
    1990:	0807ca63          	bltz	a5,1a24 <__neorv32_rte_core+0xe4>
    1994:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3be90>
    1998:	00300593          	li	a1,3
    199c:	0036f693          	andi	a3,a3,3
    19a0:	00270613          	addi	a2,a4,2
    19a4:	00b69463          	bne	a3,a1,19ac <__neorv32_rte_core+0x6c>
    19a8:	00470613          	addi	a2,a4,4
    19ac:	34161073          	csrw	mepc,a2
    19b0:	00b00713          	li	a4,11
    19b4:	04f77c63          	bgeu	a4,a5,1a0c <__neorv32_rte_core+0xcc>
    19b8:	000027b7          	lui	a5,0x2
    19bc:	bb078793          	addi	a5,a5,-1104 # 1bb0 <__neorv32_rte_debug_exc_handler>
    19c0:	000780e7          	jalr	a5
    19c4:	03c12083          	lw	ra,60(sp)
    19c8:	03812283          	lw	t0,56(sp)
    19cc:	03412303          	lw	t1,52(sp)
    19d0:	03012383          	lw	t2,48(sp)
    19d4:	02c12503          	lw	a0,44(sp)
    19d8:	02812583          	lw	a1,40(sp)
    19dc:	02412603          	lw	a2,36(sp)
    19e0:	02012683          	lw	a3,32(sp)
    19e4:	01c12703          	lw	a4,28(sp)
    19e8:	01812783          	lw	a5,24(sp)
    19ec:	01412803          	lw	a6,20(sp)
    19f0:	01012883          	lw	a7,16(sp)
    19f4:	00c12e03          	lw	t3,12(sp)
    19f8:	00812e83          	lw	t4,8(sp)
    19fc:	00412f03          	lw	t5,4(sp)
    1a00:	00012f83          	lw	t6,0(sp)
    1a04:	04010113          	addi	sp,sp,64
    1a08:	30200073          	mret
    1a0c:	00004737          	lui	a4,0x4
    1a10:	00279793          	slli	a5,a5,0x2
    1a14:	d0470713          	addi	a4,a4,-764 # 3d04 <symbols.0+0x14>
    1a18:	00e787b3          	add	a5,a5,a4
    1a1c:	0007a783          	lw	a5,0(a5)
    1a20:	00078067          	jr	a5
    1a24:	80000737          	lui	a4,0x80000
    1a28:	ffd74713          	xori	a4,a4,-3
    1a2c:	00e787b3          	add	a5,a5,a4
    1a30:	01c00713          	li	a4,28
    1a34:	f8f762e3          	bltu	a4,a5,19b8 <__neorv32_rte_core+0x78>
    1a38:	00004737          	lui	a4,0x4
    1a3c:	00279793          	slli	a5,a5,0x2
    1a40:	d3470713          	addi	a4,a4,-716 # 3d34 <symbols.0+0x44>
    1a44:	00e787b3          	add	a5,a5,a4
    1a48:	0007a783          	lw	a5,0(a5)
    1a4c:	00078067          	jr	a5
    1a50:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut>
    1a54:	f6dff06f          	j	19c0 <__neorv32_rte_core+0x80>
    1a58:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x4>
    1a5c:	f65ff06f          	j	19c0 <__neorv32_rte_core+0x80>
    1a60:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x8>
    1a64:	f5dff06f          	j	19c0 <__neorv32_rte_core+0x80>
    1a68:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0xc>
    1a6c:	f55ff06f          	j	19c0 <__neorv32_rte_core+0x80>
    1a70:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x10>
    1a74:	f4dff06f          	j	19c0 <__neorv32_rte_core+0x80>
    1a78:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x14>
    1a7c:	f45ff06f          	j	19c0 <__neorv32_rte_core+0x80>
    1a80:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x18>
    1a84:	f3dff06f          	j	19c0 <__neorv32_rte_core+0x80>
    1a88:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x1c>
    1a8c:	f35ff06f          	j	19c0 <__neorv32_rte_core+0x80>
    1a90:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x20>
    1a94:	f2dff06f          	j	19c0 <__neorv32_rte_core+0x80>
    1a98:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x24>
    1a9c:	f25ff06f          	j	19c0 <__neorv32_rte_core+0x80>
    1aa0:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x28>
    1aa4:	f1dff06f          	j	19c0 <__neorv32_rte_core+0x80>
    1aa8:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x2c>
    1aac:	f15ff06f          	j	19c0 <__neorv32_rte_core+0x80>
    1ab0:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x30>
    1ab4:	f0dff06f          	j	19c0 <__neorv32_rte_core+0x80>
    1ab8:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x34>
    1abc:	f05ff06f          	j	19c0 <__neorv32_rte_core+0x80>
    1ac0:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x38>
    1ac4:	efdff06f          	j	19c0 <__neorv32_rte_core+0x80>
    1ac8:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x3c>
    1acc:	ef5ff06f          	j	19c0 <__neorv32_rte_core+0x80>
    1ad0:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x40>
    1ad4:	eedff06f          	j	19c0 <__neorv32_rte_core+0x80>
    1ad8:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x44>
    1adc:	ee5ff06f          	j	19c0 <__neorv32_rte_core+0x80>
    1ae0:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x48>
    1ae4:	eddff06f          	j	19c0 <__neorv32_rte_core+0x80>
    1ae8:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x4c>
    1aec:	ed5ff06f          	j	19c0 <__neorv32_rte_core+0x80>
    1af0:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x50>
    1af4:	ecdff06f          	j	19c0 <__neorv32_rte_core+0x80>
    1af8:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x54>
    1afc:	ec5ff06f          	j	19c0 <__neorv32_rte_core+0x80>
    1b00:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x58>
    1b04:	ebdff06f          	j	19c0 <__neorv32_rte_core+0x80>
    1b08:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x5c>
    1b0c:	eb5ff06f          	j	19c0 <__neorv32_rte_core+0x80>
    1b10:	8741a783          	lw	a5,-1932(gp) # 80000074 <__neorv32_rte_vector_lut+0x60>
    1b14:	eadff06f          	j	19c0 <__neorv32_rte_core+0x80>
    1b18:	8781a783          	lw	a5,-1928(gp) # 80000078 <__neorv32_rte_vector_lut+0x64>
    1b1c:	ea5ff06f          	j	19c0 <__neorv32_rte_core+0x80>
    1b20:	87c1a783          	lw	a5,-1924(gp) # 8000007c <__neorv32_rte_vector_lut+0x68>
    1b24:	e9dff06f          	j	19c0 <__neorv32_rte_core+0x80>
    1b28:	8801a783          	lw	a5,-1920(gp) # 80000080 <__neorv32_rte_vector_lut+0x6c>
    1b2c:	e95ff06f          	j	19c0 <__neorv32_rte_core+0x80>
    1b30:	8841a783          	lw	a5,-1916(gp) # 80000084 <__neorv32_rte_vector_lut+0x70>
    1b34:	e8dff06f          	j	19c0 <__neorv32_rte_core+0x80>
    1b38:	0000                	unimp
    1b3a:	0000                	unimp
    1b3c:	0000                	unimp
    1b3e:	0000                	unimp

00001b40 <__neorv32_rte_print_hex_word>:
    1b40:	fe010113          	addi	sp,sp,-32
    1b44:	01212823          	sw	s2,16(sp)
    1b48:	00050913          	mv	s2,a0
    1b4c:	00004537          	lui	a0,0x4
    1b50:	00912a23          	sw	s1,20(sp)
    1b54:	da850513          	addi	a0,a0,-600 # 3da8 <symbols.0+0xb8>
    1b58:	000044b7          	lui	s1,0x4
    1b5c:	00812c23          	sw	s0,24(sp)
    1b60:	01312623          	sw	s3,12(sp)
    1b64:	00112e23          	sw	ra,28(sp)
    1b68:	01c00413          	li	s0,28
    1b6c:	be5ff0ef          	jal	ra,1750 <neorv32_uart0_print>
    1b70:	02448493          	addi	s1,s1,36 # 4024 <hex_symbols.0>
    1b74:	ffc00993          	li	s3,-4
    1b78:	008957b3          	srl	a5,s2,s0
    1b7c:	00f7f793          	andi	a5,a5,15
    1b80:	00f487b3          	add	a5,s1,a5
    1b84:	0007c503          	lbu	a0,0(a5)
    1b88:	ffc40413          	addi	s0,s0,-4
    1b8c:	badff0ef          	jal	ra,1738 <neorv32_uart0_putc>
    1b90:	ff3414e3          	bne	s0,s3,1b78 <__neorv32_rte_print_hex_word+0x38>
    1b94:	01c12083          	lw	ra,28(sp)
    1b98:	01812403          	lw	s0,24(sp)
    1b9c:	01412483          	lw	s1,20(sp)
    1ba0:	01012903          	lw	s2,16(sp)
    1ba4:	00c12983          	lw	s3,12(sp)
    1ba8:	02010113          	addi	sp,sp,32
    1bac:	00008067          	ret

00001bb0 <__neorv32_rte_debug_exc_handler>:
    1bb0:	ff010113          	addi	sp,sp,-16
    1bb4:	00112623          	sw	ra,12(sp)
    1bb8:	00812423          	sw	s0,8(sp)
    1bbc:	00912223          	sw	s1,4(sp)
    1bc0:	abdff0ef          	jal	ra,167c <neorv32_uart0_available>
    1bc4:	1c050863          	beqz	a0,1d94 <__neorv32_rte_debug_exc_handler+0x1e4>
    1bc8:	00004537          	lui	a0,0x4
    1bcc:	dac50513          	addi	a0,a0,-596 # 3dac <symbols.0+0xbc>
    1bd0:	b81ff0ef          	jal	ra,1750 <neorv32_uart0_print>
    1bd4:	34202473          	csrr	s0,mcause
    1bd8:	00900713          	li	a4,9
    1bdc:	00f47793          	andi	a5,s0,15
    1be0:	03078493          	addi	s1,a5,48
    1be4:	00f77463          	bgeu	a4,a5,1bec <__neorv32_rte_debug_exc_handler+0x3c>
    1be8:	05778493          	addi	s1,a5,87
    1bec:	00b00793          	li	a5,11
    1bf0:	0087ee63          	bltu	a5,s0,1c0c <__neorv32_rte_debug_exc_handler+0x5c>
    1bf4:	00004737          	lui	a4,0x4
    1bf8:	00241793          	slli	a5,s0,0x2
    1bfc:	f6c70713          	addi	a4,a4,-148 # 3f6c <symbols.0+0x27c>
    1c00:	00e787b3          	add	a5,a5,a4
    1c04:	0007a783          	lw	a5,0(a5)
    1c08:	00078067          	jr	a5
    1c0c:	800007b7          	lui	a5,0x80000
    1c10:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
    1c14:	14e40e63          	beq	s0,a4,1d70 <__neorv32_rte_debug_exc_handler+0x1c0>
    1c18:	02876a63          	bltu	a4,s0,1c4c <__neorv32_rte_debug_exc_handler+0x9c>
    1c1c:	00378713          	addi	a4,a5,3
    1c20:	12e40c63          	beq	s0,a4,1d58 <__neorv32_rte_debug_exc_handler+0x1a8>
    1c24:	00778793          	addi	a5,a5,7
    1c28:	12f40e63          	beq	s0,a5,1d64 <__neorv32_rte_debug_exc_handler+0x1b4>
    1c2c:	00004537          	lui	a0,0x4
    1c30:	f0c50513          	addi	a0,a0,-244 # 3f0c <symbols.0+0x21c>
    1c34:	b1dff0ef          	jal	ra,1750 <neorv32_uart0_print>
    1c38:	00040513          	mv	a0,s0
    1c3c:	f05ff0ef          	jal	ra,1b40 <__neorv32_rte_print_hex_word>
    1c40:	00100793          	li	a5,1
    1c44:	08f40c63          	beq	s0,a5,1cdc <__neorv32_rte_debug_exc_handler+0x12c>
    1c48:	0280006f          	j	1c70 <__neorv32_rte_debug_exc_handler+0xc0>
    1c4c:	ff07c793          	xori	a5,a5,-16
    1c50:	00f407b3          	add	a5,s0,a5
    1c54:	00f00713          	li	a4,15
    1c58:	fcf76ae3          	bltu	a4,a5,1c2c <__neorv32_rte_debug_exc_handler+0x7c>
    1c5c:	00004537          	lui	a0,0x4
    1c60:	efc50513          	addi	a0,a0,-260 # 3efc <symbols.0+0x20c>
    1c64:	aedff0ef          	jal	ra,1750 <neorv32_uart0_print>
    1c68:	00048513          	mv	a0,s1
    1c6c:	acdff0ef          	jal	ra,1738 <neorv32_uart0_putc>
    1c70:	ffd47413          	andi	s0,s0,-3
    1c74:	00500793          	li	a5,5
    1c78:	06f40263          	beq	s0,a5,1cdc <__neorv32_rte_debug_exc_handler+0x12c>
    1c7c:	00004537          	lui	a0,0x4
    1c80:	f5050513          	addi	a0,a0,-176 # 3f50 <symbols.0+0x260>
    1c84:	acdff0ef          	jal	ra,1750 <neorv32_uart0_print>
    1c88:	34002573          	csrr	a0,mscratch
    1c8c:	eb5ff0ef          	jal	ra,1b40 <__neorv32_rte_print_hex_word>
    1c90:	00004537          	lui	a0,0x4
    1c94:	f5850513          	addi	a0,a0,-168 # 3f58 <symbols.0+0x268>
    1c98:	ab9ff0ef          	jal	ra,1750 <neorv32_uart0_print>
    1c9c:	34302573          	csrr	a0,mtval
    1ca0:	ea1ff0ef          	jal	ra,1b40 <__neorv32_rte_print_hex_word>
    1ca4:	00812403          	lw	s0,8(sp)
    1ca8:	00c12083          	lw	ra,12(sp)
    1cac:	00412483          	lw	s1,4(sp)
    1cb0:	00004537          	lui	a0,0x4
    1cb4:	f6450513          	addi	a0,a0,-156 # 3f64 <symbols.0+0x274>
    1cb8:	01010113          	addi	sp,sp,16
    1cbc:	a95ff06f          	j	1750 <neorv32_uart0_print>
    1cc0:	00004537          	lui	a0,0x4
    1cc4:	db450513          	addi	a0,a0,-588 # 3db4 <symbols.0+0xc4>
    1cc8:	a89ff0ef          	jal	ra,1750 <neorv32_uart0_print>
    1ccc:	fb1ff06f          	j	1c7c <__neorv32_rte_debug_exc_handler+0xcc>
    1cd0:	00004537          	lui	a0,0x4
    1cd4:	dd450513          	addi	a0,a0,-556 # 3dd4 <symbols.0+0xe4>
    1cd8:	a79ff0ef          	jal	ra,1750 <neorv32_uart0_print>
    1cdc:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
    1ce0:	0a07d463          	bgez	a5,1d88 <__neorv32_rte_debug_exc_handler+0x1d8>
    1ce4:	0017f793          	andi	a5,a5,1
    1ce8:	08078a63          	beqz	a5,1d7c <__neorv32_rte_debug_exc_handler+0x1cc>
    1cec:	00004537          	lui	a0,0x4
    1cf0:	f2450513          	addi	a0,a0,-220 # 3f24 <symbols.0+0x234>
    1cf4:	fd5ff06f          	j	1cc8 <__neorv32_rte_debug_exc_handler+0x118>
    1cf8:	00004537          	lui	a0,0x4
    1cfc:	df050513          	addi	a0,a0,-528 # 3df0 <symbols.0+0x100>
    1d00:	fc9ff06f          	j	1cc8 <__neorv32_rte_debug_exc_handler+0x118>
    1d04:	00004537          	lui	a0,0x4
    1d08:	e0450513          	addi	a0,a0,-508 # 3e04 <symbols.0+0x114>
    1d0c:	fbdff06f          	j	1cc8 <__neorv32_rte_debug_exc_handler+0x118>
    1d10:	00004537          	lui	a0,0x4
    1d14:	e1050513          	addi	a0,a0,-496 # 3e10 <symbols.0+0x120>
    1d18:	fb1ff06f          	j	1cc8 <__neorv32_rte_debug_exc_handler+0x118>
    1d1c:	00004537          	lui	a0,0x4
    1d20:	e2850513          	addi	a0,a0,-472 # 3e28 <symbols.0+0x138>
    1d24:	fb5ff06f          	j	1cd8 <__neorv32_rte_debug_exc_handler+0x128>
    1d28:	00004537          	lui	a0,0x4
    1d2c:	e3c50513          	addi	a0,a0,-452 # 3e3c <symbols.0+0x14c>
    1d30:	f99ff06f          	j	1cc8 <__neorv32_rte_debug_exc_handler+0x118>
    1d34:	00004537          	lui	a0,0x4
    1d38:	e5850513          	addi	a0,a0,-424 # 3e58 <symbols.0+0x168>
    1d3c:	f9dff06f          	j	1cd8 <__neorv32_rte_debug_exc_handler+0x128>
    1d40:	00004537          	lui	a0,0x4
    1d44:	e6c50513          	addi	a0,a0,-404 # 3e6c <symbols.0+0x17c>
    1d48:	f81ff06f          	j	1cc8 <__neorv32_rte_debug_exc_handler+0x118>
    1d4c:	00004537          	lui	a0,0x4
    1d50:	e8c50513          	addi	a0,a0,-372 # 3e8c <symbols.0+0x19c>
    1d54:	f75ff06f          	j	1cc8 <__neorv32_rte_debug_exc_handler+0x118>
    1d58:	00004537          	lui	a0,0x4
    1d5c:	eac50513          	addi	a0,a0,-340 # 3eac <symbols.0+0x1bc>
    1d60:	f69ff06f          	j	1cc8 <__neorv32_rte_debug_exc_handler+0x118>
    1d64:	00004537          	lui	a0,0x4
    1d68:	ec850513          	addi	a0,a0,-312 # 3ec8 <symbols.0+0x1d8>
    1d6c:	f5dff06f          	j	1cc8 <__neorv32_rte_debug_exc_handler+0x118>
    1d70:	00004537          	lui	a0,0x4
    1d74:	ee050513          	addi	a0,a0,-288 # 3ee0 <symbols.0+0x1f0>
    1d78:	f51ff06f          	j	1cc8 <__neorv32_rte_debug_exc_handler+0x118>
    1d7c:	00004537          	lui	a0,0x4
    1d80:	f3450513          	addi	a0,a0,-204 # 3f34 <symbols.0+0x244>
    1d84:	f45ff06f          	j	1cc8 <__neorv32_rte_debug_exc_handler+0x118>
    1d88:	00004537          	lui	a0,0x4
    1d8c:	f4450513          	addi	a0,a0,-188 # 3f44 <symbols.0+0x254>
    1d90:	f39ff06f          	j	1cc8 <__neorv32_rte_debug_exc_handler+0x118>
    1d94:	00c12083          	lw	ra,12(sp)
    1d98:	00812403          	lw	s0,8(sp)
    1d9c:	00412483          	lw	s1,4(sp)
    1da0:	01010113          	addi	sp,sp,16
    1da4:	00008067          	ret

00001da8 <neorv32_rte_exception_uninstall>:
    1da8:	01f00793          	li	a5,31
    1dac:	02a7e263          	bltu	a5,a0,1dd0 <neorv32_rte_exception_uninstall+0x28>
    1db0:	81418793          	addi	a5,gp,-2028 # 80000014 <__neorv32_rte_vector_lut>
    1db4:	00251513          	slli	a0,a0,0x2
    1db8:	00a78533          	add	a0,a5,a0
    1dbc:	000027b7          	lui	a5,0x2
    1dc0:	bb078793          	addi	a5,a5,-1104 # 1bb0 <__neorv32_rte_debug_exc_handler>
    1dc4:	00f52023          	sw	a5,0(a0)
    1dc8:	00000513          	li	a0,0
    1dcc:	00008067          	ret
    1dd0:	00100513          	li	a0,1
    1dd4:	00008067          	ret

00001dd8 <neorv32_rte_setup>:
    1dd8:	ff010113          	addi	sp,sp,-16
    1ddc:	000027b7          	lui	a5,0x2
    1de0:	00112623          	sw	ra,12(sp)
    1de4:	00812423          	sw	s0,8(sp)
    1de8:	00912223          	sw	s1,4(sp)
    1dec:	94078793          	addi	a5,a5,-1728 # 1940 <__neorv32_rte_core>
    1df0:	30579073          	csrw	mtvec,a5
    1df4:	00000413          	li	s0,0
    1df8:	01d00493          	li	s1,29
    1dfc:	00040513          	mv	a0,s0
    1e00:	00140413          	addi	s0,s0,1
    1e04:	0ff47413          	andi	s0,s0,255
    1e08:	fa1ff0ef          	jal	ra,1da8 <neorv32_rte_exception_uninstall>
    1e0c:	fe9418e3          	bne	s0,s1,1dfc <neorv32_rte_setup+0x24>
    1e10:	00c12083          	lw	ra,12(sp)
    1e14:	00812403          	lw	s0,8(sp)
    1e18:	00412483          	lw	s1,4(sp)
    1e1c:	01010113          	addi	sp,sp,16
    1e20:	00008067          	ret

00001e24 <neorv32_rte_check_isa>:
    1e24:	30102673          	csrr	a2,misa
    1e28:	400007b7          	lui	a5,0x40000
    1e2c:	10078793          	addi	a5,a5,256 # 40000100 <__crt0_copy_data_src_begin+0x3fffbf90>
    1e30:	00f67733          	and	a4,a2,a5
    1e34:	04f70463          	beq	a4,a5,1e7c <neorv32_rte_check_isa+0x58>
    1e38:	fe010113          	addi	sp,sp,-32
    1e3c:	00112e23          	sw	ra,28(sp)
    1e40:	02051463          	bnez	a0,1e68 <neorv32_rte_check_isa+0x44>
    1e44:	400005b7          	lui	a1,0x40000
    1e48:	00004537          	lui	a0,0x4
    1e4c:	10058593          	addi	a1,a1,256 # 40000100 <__crt0_copy_data_src_begin+0x3fffbf90>
    1e50:	f9c50513          	addi	a0,a0,-100 # 3f9c <symbols.0+0x2ac>
    1e54:	955ff0ef          	jal	ra,17a8 <neorv32_uart0_printf>
    1e58:	01c12083          	lw	ra,28(sp)
    1e5c:	00100513          	li	a0,1
    1e60:	02010113          	addi	sp,sp,32
    1e64:	00008067          	ret
    1e68:	00c12623          	sw	a2,12(sp)
    1e6c:	811ff0ef          	jal	ra,167c <neorv32_uart0_available>
    1e70:	00c12603          	lw	a2,12(sp)
    1e74:	fc0508e3          	beqz	a0,1e44 <neorv32_rte_check_isa+0x20>
    1e78:	fe1ff06f          	j	1e58 <neorv32_rte_check_isa+0x34>
    1e7c:	00000513          	li	a0,0
    1e80:	00008067          	ret

00001e84 <feclearexcept>:
    1e84:	00000513          	li	a0,0
    1e88:	00008067          	ret

00001e8c <fmax>:
    1e8c:	fe010113          	addi	sp,sp,-32
    1e90:	00812c23          	sw	s0,24(sp)
    1e94:	00912a23          	sw	s1,20(sp)
    1e98:	01212823          	sw	s2,16(sp)
    1e9c:	01312623          	sw	s3,12(sp)
    1ea0:	00112e23          	sw	ra,28(sp)
    1ea4:	00050493          	mv	s1,a0
    1ea8:	00058413          	mv	s0,a1
    1eac:	00060993          	mv	s3,a2
    1eb0:	00068913          	mv	s2,a3
    1eb4:	0e8000ef          	jal	ra,1f9c <__fpclassifyd>
    1eb8:	02051863          	bnez	a0,1ee8 <fmax+0x5c>
    1ebc:	00098493          	mv	s1,s3
    1ec0:	00090413          	mv	s0,s2
    1ec4:	01c12083          	lw	ra,28(sp)
    1ec8:	00040593          	mv	a1,s0
    1ecc:	01812403          	lw	s0,24(sp)
    1ed0:	01012903          	lw	s2,16(sp)
    1ed4:	00c12983          	lw	s3,12(sp)
    1ed8:	00048513          	mv	a0,s1
    1edc:	01412483          	lw	s1,20(sp)
    1ee0:	02010113          	addi	sp,sp,32
    1ee4:	00008067          	ret
    1ee8:	00098513          	mv	a0,s3
    1eec:	00090593          	mv	a1,s2
    1ef0:	0ac000ef          	jal	ra,1f9c <__fpclassifyd>
    1ef4:	fc0508e3          	beqz	a0,1ec4 <fmax+0x38>
    1ef8:	00098613          	mv	a2,s3
    1efc:	00048513          	mv	a0,s1
    1f00:	00090693          	mv	a3,s2
    1f04:	00040593          	mv	a1,s0
    1f08:	194000ef          	jal	ra,209c <__gedf2>
    1f0c:	faa04ce3          	bgtz	a0,1ec4 <fmax+0x38>
    1f10:	fadff06f          	j	1ebc <fmax+0x30>

00001f14 <fmin>:
    1f14:	fe010113          	addi	sp,sp,-32
    1f18:	00812c23          	sw	s0,24(sp)
    1f1c:	00912a23          	sw	s1,20(sp)
    1f20:	01212823          	sw	s2,16(sp)
    1f24:	01312623          	sw	s3,12(sp)
    1f28:	00112e23          	sw	ra,28(sp)
    1f2c:	00050493          	mv	s1,a0
    1f30:	00058413          	mv	s0,a1
    1f34:	00060993          	mv	s3,a2
    1f38:	00068913          	mv	s2,a3
    1f3c:	060000ef          	jal	ra,1f9c <__fpclassifyd>
    1f40:	02051863          	bnez	a0,1f70 <fmin+0x5c>
    1f44:	00098493          	mv	s1,s3
    1f48:	00090413          	mv	s0,s2
    1f4c:	01c12083          	lw	ra,28(sp)
    1f50:	00040593          	mv	a1,s0
    1f54:	01812403          	lw	s0,24(sp)
    1f58:	01012903          	lw	s2,16(sp)
    1f5c:	00c12983          	lw	s3,12(sp)
    1f60:	00048513          	mv	a0,s1
    1f64:	01412483          	lw	s1,20(sp)
    1f68:	02010113          	addi	sp,sp,32
    1f6c:	00008067          	ret
    1f70:	00098513          	mv	a0,s3
    1f74:	00090593          	mv	a1,s2
    1f78:	024000ef          	jal	ra,1f9c <__fpclassifyd>
    1f7c:	fc0508e3          	beqz	a0,1f4c <fmin+0x38>
    1f80:	00098613          	mv	a2,s3
    1f84:	00048513          	mv	a0,s1
    1f88:	00090693          	mv	a3,s2
    1f8c:	00040593          	mv	a1,s0
    1f90:	1f0000ef          	jal	ra,2180 <__ledf2>
    1f94:	fa054ce3          	bltz	a0,1f4c <fmin+0x38>
    1f98:	fadff06f          	j	1f44 <fmin+0x30>

00001f9c <__fpclassifyd>:
    1f9c:	00b56733          	or	a4,a0,a1
    1fa0:	00050793          	mv	a5,a0
    1fa4:	04070e63          	beqz	a4,2000 <__fpclassifyd+0x64>
    1fa8:	80000737          	lui	a4,0x80000
    1fac:	04e58463          	beq	a1,a4,1ff4 <__fpclassifyd+0x58>
    1fb0:	fff00737          	lui	a4,0xfff00
    1fb4:	00b70733          	add	a4,a4,a1
    1fb8:	7fe006b7          	lui	a3,0x7fe00
    1fbc:	00400513          	li	a0,4
    1fc0:	02d76863          	bltu	a4,a3,1ff0 <__fpclassifyd+0x54>
    1fc4:	7ff00737          	lui	a4,0x7ff00
    1fc8:	00b70733          	add	a4,a4,a1
    1fcc:	02d76263          	bltu	a4,a3,1ff0 <__fpclassifyd+0x54>
    1fd0:	7ff00737          	lui	a4,0x7ff00
    1fd4:	00b776b3          	and	a3,a4,a1
    1fd8:	00300513          	li	a0,3
    1fdc:	00068a63          	beqz	a3,1ff0 <__fpclassifyd+0x54>
    1fe0:	00159593          	slli	a1,a1,0x1
    1fe4:	0015d593          	srli	a1,a1,0x1
    1fe8:	00000513          	li	a0,0
    1fec:	00e58e63          	beq	a1,a4,2008 <__fpclassifyd+0x6c>
    1ff0:	00008067          	ret
    1ff4:	00200513          	li	a0,2
    1ff8:	fc079ce3          	bnez	a5,1fd0 <__fpclassifyd+0x34>
    1ffc:	00008067          	ret
    2000:	00200513          	li	a0,2
    2004:	00008067          	ret
    2008:	0017b513          	seqz	a0,a5
    200c:	00008067          	ret

00002010 <roundf>:
    2010:	01755793          	srli	a5,a0,0x17
    2014:	0ff7f793          	andi	a5,a5,255
    2018:	f8178793          	addi	a5,a5,-127
    201c:	01600693          	li	a3,22
    2020:	04f6cc63          	blt	a3,a5,2078 <roundf+0x68>
    2024:	0207cc63          	bltz	a5,205c <roundf+0x4c>
    2028:	008006b7          	lui	a3,0x800
    202c:	fff68693          	addi	a3,a3,-1 # 7fffff <__crt0_copy_data_src_begin+0x7fbe8f>
    2030:	40f6d6b3          	sra	a3,a3,a5
    2034:	00a6f633          	and	a2,a3,a0
    2038:	00050593          	mv	a1,a0
    203c:	00060c63          	beqz	a2,2054 <roundf+0x44>
    2040:	004005b7          	lui	a1,0x400
    2044:	40f5d5b3          	sra	a1,a1,a5
    2048:	00a58733          	add	a4,a1,a0
    204c:	fff6c593          	not	a1,a3
    2050:	00e5f5b3          	and	a1,a1,a4
    2054:	00058513          	mv	a0,a1
    2058:	00008067          	ret
    205c:	800005b7          	lui	a1,0x80000
    2060:	fff00693          	li	a3,-1
    2064:	00a5f5b3          	and	a1,a1,a0
    2068:	fed796e3          	bne	a5,a3,2054 <roundf+0x44>
    206c:	3f8007b7          	lui	a5,0x3f800
    2070:	00f5e5b3          	or	a1,a1,a5
    2074:	fe1ff06f          	j	2054 <roundf+0x44>
    2078:	08000693          	li	a3,128
    207c:	00050593          	mv	a1,a0
    2080:	fcd79ae3          	bne	a5,a3,2054 <roundf+0x44>
    2084:	ff010113          	addi	sp,sp,-16
    2088:	00112623          	sw	ra,12(sp)
    208c:	1d8000ef          	jal	ra,2264 <__addsf3>
    2090:	00c12083          	lw	ra,12(sp)
    2094:	01010113          	addi	sp,sp,16
    2098:	00008067          	ret

0000209c <__gedf2>:
    209c:	00100737          	lui	a4,0x100
    20a0:	fff70713          	addi	a4,a4,-1 # fffff <__crt0_copy_data_src_begin+0xfbe8f>
    20a4:	0145d813          	srli	a6,a1,0x14
    20a8:	00b778b3          	and	a7,a4,a1
    20ac:	00050793          	mv	a5,a0
    20b0:	00050313          	mv	t1,a0
    20b4:	7ff87813          	andi	a6,a6,2047
    20b8:	01f5d513          	srli	a0,a1,0x1f
    20bc:	7ff00e93          	li	t4,2047
    20c0:	0146d593          	srli	a1,a3,0x14
    20c4:	00d77733          	and	a4,a4,a3
    20c8:	00060e13          	mv	t3,a2
    20cc:	7ff5f593          	andi	a1,a1,2047
    20d0:	01f6d693          	srli	a3,a3,0x1f
    20d4:	01d81a63          	bne	a6,t4,20e8 <__gedf2+0x4c>
    20d8:	00f8eeb3          	or	t4,a7,a5
    20dc:	080e8a63          	beqz	t4,2170 <__gedf2+0xd4>
    20e0:	ffe00513          	li	a0,-2
    20e4:	00008067          	ret
    20e8:	01d59663          	bne	a1,t4,20f4 <__gedf2+0x58>
    20ec:	00c76eb3          	or	t4,a4,a2
    20f0:	fe0e98e3          	bnez	t4,20e0 <__gedf2+0x44>
    20f4:	08081063          	bnez	a6,2174 <__gedf2+0xd8>
    20f8:	00f8e7b3          	or	a5,a7,a5
    20fc:	0017b793          	seqz	a5,a5
    2100:	00059663          	bnez	a1,210c <__gedf2+0x70>
    2104:	00c76633          	or	a2,a4,a2
    2108:	04060c63          	beqz	a2,2160 <__gedf2+0xc4>
    210c:	00079c63          	bnez	a5,2124 <__gedf2+0x88>
    2110:	00d51463          	bne	a0,a3,2118 <__gedf2+0x7c>
    2114:	0305d063          	bge	a1,a6,2134 <__gedf2+0x98>
    2118:	04050063          	beqz	a0,2158 <__gedf2+0xbc>
    211c:	fff00513          	li	a0,-1
    2120:	00008067          	ret
    2124:	fff00513          	li	a0,-1
    2128:	00068a63          	beqz	a3,213c <__gedf2+0xa0>
    212c:	00068513          	mv	a0,a3
    2130:	00008067          	ret
    2134:	00b85663          	bge	a6,a1,2140 <__gedf2+0xa4>
    2138:	fe0502e3          	beqz	a0,211c <__gedf2+0x80>
    213c:	00008067          	ret
    2140:	fd176ce3          	bltu	a4,a7,2118 <__gedf2+0x7c>
    2144:	02e89263          	bne	a7,a4,2168 <__gedf2+0xcc>
    2148:	fc6e68e3          	bltu	t3,t1,2118 <__gedf2+0x7c>
    214c:	ffc366e3          	bltu	t1,t3,2138 <__gedf2+0x9c>
    2150:	00000513          	li	a0,0
    2154:	00008067          	ret
    2158:	00100513          	li	a0,1
    215c:	00008067          	ret
    2160:	fe0798e3          	bnez	a5,2150 <__gedf2+0xb4>
    2164:	fb5ff06f          	j	2118 <__gedf2+0x7c>
    2168:	fce8e8e3          	bltu	a7,a4,2138 <__gedf2+0x9c>
    216c:	fe5ff06f          	j	2150 <__gedf2+0xb4>
    2170:	f7058ee3          	beq	a1,a6,20ec <__gedf2+0x50>
    2174:	f8059ee3          	bnez	a1,2110 <__gedf2+0x74>
    2178:	00000793          	li	a5,0
    217c:	f89ff06f          	j	2104 <__gedf2+0x68>

00002180 <__ledf2>:
    2180:	00100737          	lui	a4,0x100
    2184:	fff70713          	addi	a4,a4,-1 # fffff <__crt0_copy_data_src_begin+0xfbe8f>
    2188:	0145d813          	srli	a6,a1,0x14
    218c:	00b778b3          	and	a7,a4,a1
    2190:	00050793          	mv	a5,a0
    2194:	00050313          	mv	t1,a0
    2198:	7ff87813          	andi	a6,a6,2047
    219c:	01f5d513          	srli	a0,a1,0x1f
    21a0:	7ff00e93          	li	t4,2047
    21a4:	0146d593          	srli	a1,a3,0x14
    21a8:	00d77733          	and	a4,a4,a3
    21ac:	00060e13          	mv	t3,a2
    21b0:	7ff5f593          	andi	a1,a1,2047
    21b4:	01f6d693          	srli	a3,a3,0x1f
    21b8:	01d81a63          	bne	a6,t4,21cc <__ledf2+0x4c>
    21bc:	00f8eeb3          	or	t4,a7,a5
    21c0:	080e8a63          	beqz	t4,2254 <__ledf2+0xd4>
    21c4:	00200513          	li	a0,2
    21c8:	00008067          	ret
    21cc:	01d59663          	bne	a1,t4,21d8 <__ledf2+0x58>
    21d0:	00c76eb3          	or	t4,a4,a2
    21d4:	fe0e98e3          	bnez	t4,21c4 <__ledf2+0x44>
    21d8:	08081063          	bnez	a6,2258 <__ledf2+0xd8>
    21dc:	00f8e7b3          	or	a5,a7,a5
    21e0:	0017b793          	seqz	a5,a5
    21e4:	00059663          	bnez	a1,21f0 <__ledf2+0x70>
    21e8:	00c76633          	or	a2,a4,a2
    21ec:	04060c63          	beqz	a2,2244 <__ledf2+0xc4>
    21f0:	00079c63          	bnez	a5,2208 <__ledf2+0x88>
    21f4:	00d51463          	bne	a0,a3,21fc <__ledf2+0x7c>
    21f8:	0305d063          	bge	a1,a6,2218 <__ledf2+0x98>
    21fc:	04050063          	beqz	a0,223c <__ledf2+0xbc>
    2200:	fff00513          	li	a0,-1
    2204:	00008067          	ret
    2208:	fff00513          	li	a0,-1
    220c:	00068a63          	beqz	a3,2220 <__ledf2+0xa0>
    2210:	00068513          	mv	a0,a3
    2214:	00008067          	ret
    2218:	00b85663          	bge	a6,a1,2224 <__ledf2+0xa4>
    221c:	fe0502e3          	beqz	a0,2200 <__ledf2+0x80>
    2220:	00008067          	ret
    2224:	fd176ce3          	bltu	a4,a7,21fc <__ledf2+0x7c>
    2228:	02e89263          	bne	a7,a4,224c <__ledf2+0xcc>
    222c:	fc6e68e3          	bltu	t3,t1,21fc <__ledf2+0x7c>
    2230:	ffc366e3          	bltu	t1,t3,221c <__ledf2+0x9c>
    2234:	00000513          	li	a0,0
    2238:	00008067          	ret
    223c:	00100513          	li	a0,1
    2240:	00008067          	ret
    2244:	fe0798e3          	bnez	a5,2234 <__ledf2+0xb4>
    2248:	fb5ff06f          	j	21fc <__ledf2+0x7c>
    224c:	fce8e8e3          	bltu	a7,a4,221c <__ledf2+0x9c>
    2250:	fe5ff06f          	j	2234 <__ledf2+0xb4>
    2254:	f7058ee3          	beq	a1,a6,21d0 <__ledf2+0x50>
    2258:	f8059ee3          	bnez	a1,21f4 <__ledf2+0x74>
    225c:	00000793          	li	a5,0
    2260:	f89ff06f          	j	21e8 <__ledf2+0x68>

00002264 <__addsf3>:
    2264:	00800737          	lui	a4,0x800
    2268:	ff010113          	addi	sp,sp,-16
    226c:	fff70713          	addi	a4,a4,-1 # 7fffff <__crt0_copy_data_src_begin+0x7fbe8f>
    2270:	00a777b3          	and	a5,a4,a0
    2274:	00812423          	sw	s0,8(sp)
    2278:	00912223          	sw	s1,4(sp)
    227c:	01755413          	srli	s0,a0,0x17
    2280:	01f55493          	srli	s1,a0,0x1f
    2284:	0175d513          	srli	a0,a1,0x17
    2288:	00b77733          	and	a4,a4,a1
    228c:	0ff47413          	andi	s0,s0,255
    2290:	0ff57513          	andi	a0,a0,255
    2294:	00112623          	sw	ra,12(sp)
    2298:	01212023          	sw	s2,0(sp)
    229c:	01f5d593          	srli	a1,a1,0x1f
    22a0:	00379793          	slli	a5,a5,0x3
    22a4:	00371713          	slli	a4,a4,0x3
    22a8:	40a406b3          	sub	a3,s0,a0
    22ac:	18b49a63          	bne	s1,a1,2440 <__addsf3+0x1dc>
    22b0:	0ad05063          	blez	a3,2350 <__addsf3+0xec>
    22b4:	02051663          	bnez	a0,22e0 <__addsf3+0x7c>
    22b8:	18070063          	beqz	a4,2438 <__addsf3+0x1d4>
    22bc:	fff68613          	addi	a2,a3,-1
    22c0:	00061863          	bnez	a2,22d0 <__addsf3+0x6c>
    22c4:	00e787b3          	add	a5,a5,a4
    22c8:	00100413          	li	s0,1
    22cc:	0500006f          	j	231c <__addsf3+0xb8>
    22d0:	0ff00593          	li	a1,255
    22d4:	02b69063          	bne	a3,a1,22f4 <__addsf3+0x90>
    22d8:	0ff00413          	li	s0,255
    22dc:	1180006f          	j	23f4 <__addsf3+0x190>
    22e0:	0ff00613          	li	a2,255
    22e4:	10c40863          	beq	s0,a2,23f4 <__addsf3+0x190>
    22e8:	04000637          	lui	a2,0x4000
    22ec:	00c76733          	or	a4,a4,a2
    22f0:	00068613          	mv	a2,a3
    22f4:	01b00593          	li	a1,27
    22f8:	00100693          	li	a3,1
    22fc:	00c5ce63          	blt	a1,a2,2318 <__addsf3+0xb4>
    2300:	02000693          	li	a3,32
    2304:	40c686b3          	sub	a3,a3,a2
    2308:	00c755b3          	srl	a1,a4,a2
    230c:	00d71733          	sll	a4,a4,a3
    2310:	00e03733          	snez	a4,a4
    2314:	00e5e6b3          	or	a3,a1,a4
    2318:	00d787b3          	add	a5,a5,a3
    231c:	04000737          	lui	a4,0x4000
    2320:	00e7f733          	and	a4,a5,a4
    2324:	0c070863          	beqz	a4,23f4 <__addsf3+0x190>
    2328:	00140413          	addi	s0,s0,1
    232c:	0ff00713          	li	a4,255
    2330:	30e40263          	beq	s0,a4,2634 <__addsf3+0x3d0>
    2334:	7e000737          	lui	a4,0x7e000
    2338:	0017f693          	andi	a3,a5,1
    233c:	fff70713          	addi	a4,a4,-1 # 7dffffff <__crt0_copy_data_src_begin+0x7dffbe8f>
    2340:	0017d793          	srli	a5,a5,0x1
    2344:	00e7f7b3          	and	a5,a5,a4
    2348:	00d7e7b3          	or	a5,a5,a3
    234c:	0a80006f          	j	23f4 <__addsf3+0x190>
    2350:	06068663          	beqz	a3,23bc <__addsf3+0x158>
    2354:	408506b3          	sub	a3,a0,s0
    2358:	02041063          	bnez	s0,2378 <__addsf3+0x114>
    235c:	2c078263          	beqz	a5,2620 <__addsf3+0x3bc>
    2360:	fff68613          	addi	a2,a3,-1
    2364:	f60600e3          	beqz	a2,22c4 <__addsf3+0x60>
    2368:	0ff00593          	li	a1,255
    236c:	02b69063          	bne	a3,a1,238c <__addsf3+0x128>
    2370:	00070793          	mv	a5,a4
    2374:	f65ff06f          	j	22d8 <__addsf3+0x74>
    2378:	0ff00613          	li	a2,255
    237c:	fec50ae3          	beq	a0,a2,2370 <__addsf3+0x10c>
    2380:	04000637          	lui	a2,0x4000
    2384:	00c7e7b3          	or	a5,a5,a2
    2388:	00068613          	mv	a2,a3
    238c:	01b00593          	li	a1,27
    2390:	00100693          	li	a3,1
    2394:	00c5ce63          	blt	a1,a2,23b0 <__addsf3+0x14c>
    2398:	02000693          	li	a3,32
    239c:	40c686b3          	sub	a3,a3,a2
    23a0:	00c7d5b3          	srl	a1,a5,a2
    23a4:	00d797b3          	sll	a5,a5,a3
    23a8:	00f037b3          	snez	a5,a5
    23ac:	00f5e6b3          	or	a3,a1,a5
    23b0:	00e687b3          	add	a5,a3,a4
    23b4:	00050413          	mv	s0,a0
    23b8:	f65ff06f          	j	231c <__addsf3+0xb8>
    23bc:	00140693          	addi	a3,s0,1
    23c0:	0fe6f613          	andi	a2,a3,254
    23c4:	06061263          	bnez	a2,2428 <__addsf3+0x1c4>
    23c8:	04041463          	bnez	s0,2410 <__addsf3+0x1ac>
    23cc:	24078e63          	beqz	a5,2628 <__addsf3+0x3c4>
    23d0:	02070263          	beqz	a4,23f4 <__addsf3+0x190>
    23d4:	00e787b3          	add	a5,a5,a4
    23d8:	04000737          	lui	a4,0x4000
    23dc:	00e7f733          	and	a4,a5,a4
    23e0:	00070a63          	beqz	a4,23f4 <__addsf3+0x190>
    23e4:	fc000737          	lui	a4,0xfc000
    23e8:	fff70713          	addi	a4,a4,-1 # fbffffff <__ctr0_io_space_begin+0xfc0001ff>
    23ec:	00e7f7b3          	and	a5,a5,a4
    23f0:	00100413          	li	s0,1
    23f4:	0077f713          	andi	a4,a5,7
    23f8:	24070063          	beqz	a4,2638 <__addsf3+0x3d4>
    23fc:	00f7f713          	andi	a4,a5,15
    2400:	00400693          	li	a3,4
    2404:	22d70a63          	beq	a4,a3,2638 <__addsf3+0x3d4>
    2408:	00478793          	addi	a5,a5,4 # 3f800004 <__crt0_copy_data_src_begin+0x3f7fbe94>
    240c:	22c0006f          	j	2638 <__addsf3+0x3d4>
    2410:	f60780e3          	beqz	a5,2370 <__addsf3+0x10c>
    2414:	ec0702e3          	beqz	a4,22d8 <__addsf3+0x74>
    2418:	00000493          	li	s1,0
    241c:	020007b7          	lui	a5,0x2000
    2420:	0ff00413          	li	s0,255
    2424:	2140006f          	j	2638 <__addsf3+0x3d4>
    2428:	0ff00613          	li	a2,255
    242c:	20c68263          	beq	a3,a2,2630 <__addsf3+0x3cc>
    2430:	00e787b3          	add	a5,a5,a4
    2434:	0017d793          	srli	a5,a5,0x1
    2438:	00068413          	mv	s0,a3
    243c:	fb9ff06f          	j	23f4 <__addsf3+0x190>
    2440:	08d05063          	blez	a3,24c0 <__addsf3+0x25c>
    2444:	06051263          	bnez	a0,24a8 <__addsf3+0x244>
    2448:	fe0708e3          	beqz	a4,2438 <__addsf3+0x1d4>
    244c:	fff68613          	addi	a2,a3,-1
    2450:	00061863          	bnez	a2,2460 <__addsf3+0x1fc>
    2454:	40e787b3          	sub	a5,a5,a4
    2458:	00100413          	li	s0,1
    245c:	0340006f          	j	2490 <__addsf3+0x22c>
    2460:	0ff00593          	li	a1,255
    2464:	e6b68ae3          	beq	a3,a1,22d8 <__addsf3+0x74>
    2468:	01b00593          	li	a1,27
    246c:	00100693          	li	a3,1
    2470:	00c5ce63          	blt	a1,a2,248c <__addsf3+0x228>
    2474:	02000693          	li	a3,32
    2478:	40c686b3          	sub	a3,a3,a2
    247c:	00c755b3          	srl	a1,a4,a2
    2480:	00d71733          	sll	a4,a4,a3
    2484:	00e03733          	snez	a4,a4
    2488:	00e5e6b3          	or	a3,a1,a4
    248c:	40d787b3          	sub	a5,a5,a3
    2490:	04000937          	lui	s2,0x4000
    2494:	0127f733          	and	a4,a5,s2
    2498:	f4070ee3          	beqz	a4,23f4 <__addsf3+0x190>
    249c:	fff90913          	addi	s2,s2,-1 # 3ffffff <__crt0_copy_data_src_begin+0x3ffbe8f>
    24a0:	0127f933          	and	s2,a5,s2
    24a4:	1180006f          	j	25bc <__addsf3+0x358>
    24a8:	0ff00613          	li	a2,255
    24ac:	f4c404e3          	beq	s0,a2,23f4 <__addsf3+0x190>
    24b0:	04000637          	lui	a2,0x4000
    24b4:	00c76733          	or	a4,a4,a2
    24b8:	00068613          	mv	a2,a3
    24bc:	fadff06f          	j	2468 <__addsf3+0x204>
    24c0:	08068063          	beqz	a3,2540 <__addsf3+0x2dc>
    24c4:	408506b3          	sub	a3,a0,s0
    24c8:	02041863          	bnez	s0,24f8 <__addsf3+0x294>
    24cc:	1e078063          	beqz	a5,26ac <__addsf3+0x448>
    24d0:	fff68613          	addi	a2,a3,-1
    24d4:	00061863          	bnez	a2,24e4 <__addsf3+0x280>
    24d8:	40f707b3          	sub	a5,a4,a5
    24dc:	00058493          	mv	s1,a1
    24e0:	f79ff06f          	j	2458 <__addsf3+0x1f4>
    24e4:	0ff00813          	li	a6,255
    24e8:	03069263          	bne	a3,a6,250c <__addsf3+0x2a8>
    24ec:	00070793          	mv	a5,a4
    24f0:	0ff00413          	li	s0,255
    24f4:	06c0006f          	j	2560 <__addsf3+0x2fc>
    24f8:	0ff00613          	li	a2,255
    24fc:	fec508e3          	beq	a0,a2,24ec <__addsf3+0x288>
    2500:	04000637          	lui	a2,0x4000
    2504:	00c7e7b3          	or	a5,a5,a2
    2508:	00068613          	mv	a2,a3
    250c:	01b00813          	li	a6,27
    2510:	00100693          	li	a3,1
    2514:	00c84e63          	blt	a6,a2,2530 <__addsf3+0x2cc>
    2518:	02000693          	li	a3,32
    251c:	40c686b3          	sub	a3,a3,a2
    2520:	00c7d833          	srl	a6,a5,a2
    2524:	00d797b3          	sll	a5,a5,a3
    2528:	00f037b3          	snez	a5,a5
    252c:	00f866b3          	or	a3,a6,a5
    2530:	40d707b3          	sub	a5,a4,a3
    2534:	00050413          	mv	s0,a0
    2538:	00058493          	mv	s1,a1
    253c:	f55ff06f          	j	2490 <__addsf3+0x22c>
    2540:	00140693          	addi	a3,s0,1
    2544:	0fe6f693          	andi	a3,a3,254
    2548:	04069e63          	bnez	a3,25a4 <__addsf3+0x340>
    254c:	04041263          	bnez	s0,2590 <__addsf3+0x32c>
    2550:	00079c63          	bnez	a5,2568 <__addsf3+0x304>
    2554:	00000493          	li	s1,0
    2558:	0e070063          	beqz	a4,2638 <__addsf3+0x3d4>
    255c:	00070793          	mv	a5,a4
    2560:	00058493          	mv	s1,a1
    2564:	e91ff06f          	j	23f4 <__addsf3+0x190>
    2568:	e80706e3          	beqz	a4,23f4 <__addsf3+0x190>
    256c:	40e786b3          	sub	a3,a5,a4
    2570:	04000637          	lui	a2,0x4000
    2574:	00c6f633          	and	a2,a3,a2
    2578:	40f707b3          	sub	a5,a4,a5
    257c:	fe0612e3          	bnez	a2,2560 <__addsf3+0x2fc>
    2580:	00000793          	li	a5,0
    2584:	08068063          	beqz	a3,2604 <__addsf3+0x3a0>
    2588:	00068793          	mv	a5,a3
    258c:	e69ff06f          	j	23f4 <__addsf3+0x190>
    2590:	e80792e3          	bnez	a5,2414 <__addsf3+0x1b0>
    2594:	e80702e3          	beqz	a4,2418 <__addsf3+0x1b4>
    2598:	00070793          	mv	a5,a4
    259c:	00058493          	mv	s1,a1
    25a0:	d39ff06f          	j	22d8 <__addsf3+0x74>
    25a4:	40e78933          	sub	s2,a5,a4
    25a8:	040006b7          	lui	a3,0x4000
    25ac:	00d976b3          	and	a3,s2,a3
    25b0:	04068463          	beqz	a3,25f8 <__addsf3+0x394>
    25b4:	40f70933          	sub	s2,a4,a5
    25b8:	00058493          	mv	s1,a1
    25bc:	00090513          	mv	a0,s2
    25c0:	0a4010ef          	jal	ra,3664 <__clzsi2>
    25c4:	ffb50513          	addi	a0,a0,-5
    25c8:	00a91933          	sll	s2,s2,a0
    25cc:	04854063          	blt	a0,s0,260c <__addsf3+0x3a8>
    25d0:	40850533          	sub	a0,a0,s0
    25d4:	00150513          	addi	a0,a0,1
    25d8:	02000413          	li	s0,32
    25dc:	00a957b3          	srl	a5,s2,a0
    25e0:	40a40533          	sub	a0,s0,a0
    25e4:	00a91933          	sll	s2,s2,a0
    25e8:	01203933          	snez	s2,s2
    25ec:	0127e7b3          	or	a5,a5,s2
    25f0:	00000413          	li	s0,0
    25f4:	e01ff06f          	j	23f4 <__addsf3+0x190>
    25f8:	fc0912e3          	bnez	s2,25bc <__addsf3+0x358>
    25fc:	00000793          	li	a5,0
    2600:	00000413          	li	s0,0
    2604:	00000493          	li	s1,0
    2608:	0300006f          	j	2638 <__addsf3+0x3d4>
    260c:	fc0007b7          	lui	a5,0xfc000
    2610:	fff78793          	addi	a5,a5,-1 # fbffffff <__ctr0_io_space_begin+0xfc0001ff>
    2614:	40a40433          	sub	s0,s0,a0
    2618:	00f977b3          	and	a5,s2,a5
    261c:	dd9ff06f          	j	23f4 <__addsf3+0x190>
    2620:	00070793          	mv	a5,a4
    2624:	e15ff06f          	j	2438 <__addsf3+0x1d4>
    2628:	00070793          	mv	a5,a4
    262c:	dc9ff06f          	j	23f4 <__addsf3+0x190>
    2630:	0ff00413          	li	s0,255
    2634:	00000793          	li	a5,0
    2638:	04000737          	lui	a4,0x4000
    263c:	00e7f733          	and	a4,a5,a4
    2640:	00070e63          	beqz	a4,265c <__addsf3+0x3f8>
    2644:	00140413          	addi	s0,s0,1
    2648:	0ff00713          	li	a4,255
    264c:	06e40663          	beq	s0,a4,26b8 <__addsf3+0x454>
    2650:	fc000737          	lui	a4,0xfc000
    2654:	fff70713          	addi	a4,a4,-1 # fbffffff <__ctr0_io_space_begin+0xfc0001ff>
    2658:	00e7f7b3          	and	a5,a5,a4
    265c:	0ff00713          	li	a4,255
    2660:	0037d793          	srli	a5,a5,0x3
    2664:	00e41863          	bne	s0,a4,2674 <__addsf3+0x410>
    2668:	00078663          	beqz	a5,2674 <__addsf3+0x410>
    266c:	004007b7          	lui	a5,0x400
    2670:	00000493          	li	s1,0
    2674:	7f800537          	lui	a0,0x7f800
    2678:	01741413          	slli	s0,s0,0x17
    267c:	00979793          	slli	a5,a5,0x9
    2680:	00a47433          	and	s0,s0,a0
    2684:	0097d793          	srli	a5,a5,0x9
    2688:	00c12083          	lw	ra,12(sp)
    268c:	00f467b3          	or	a5,s0,a5
    2690:	00812403          	lw	s0,8(sp)
    2694:	01f49513          	slli	a0,s1,0x1f
    2698:	00012903          	lw	s2,0(sp)
    269c:	00412483          	lw	s1,4(sp)
    26a0:	00a7e533          	or	a0,a5,a0
    26a4:	01010113          	addi	sp,sp,16
    26a8:	00008067          	ret
    26ac:	00070793          	mv	a5,a4
    26b0:	00068413          	mv	s0,a3
    26b4:	eadff06f          	j	2560 <__addsf3+0x2fc>
    26b8:	00000793          	li	a5,0
    26bc:	fa1ff06f          	j	265c <__addsf3+0x3f8>

000026c0 <__eqsf2>:
    26c0:	01755693          	srli	a3,a0,0x17
    26c4:	008007b7          	lui	a5,0x800
    26c8:	fff78793          	addi	a5,a5,-1 # 7fffff <__crt0_copy_data_src_begin+0x7fbe8f>
    26cc:	0175d613          	srli	a2,a1,0x17
    26d0:	0ff6f693          	andi	a3,a3,255
    26d4:	0ff00893          	li	a7,255
    26d8:	00a7f833          	and	a6,a5,a0
    26dc:	01f55713          	srli	a4,a0,0x1f
    26e0:	00b7f7b3          	and	a5,a5,a1
    26e4:	0ff67613          	andi	a2,a2,255
    26e8:	01f5d593          	srli	a1,a1,0x1f
    26ec:	00100513          	li	a0,1
    26f0:	01169a63          	bne	a3,a7,2704 <__eqsf2+0x44>
    26f4:	00081663          	bnez	a6,2700 <__eqsf2+0x40>
    26f8:	00d61463          	bne	a2,a3,2700 <__eqsf2+0x40>
    26fc:	00078a63          	beqz	a5,2710 <__eqsf2+0x50>
    2700:	00008067          	ret
    2704:	ff160ee3          	beq	a2,a7,2700 <__eqsf2+0x40>
    2708:	fec69ce3          	bne	a3,a2,2700 <__eqsf2+0x40>
    270c:	fef81ae3          	bne	a6,a5,2700 <__eqsf2+0x40>
    2710:	00000513          	li	a0,0
    2714:	feb706e3          	beq	a4,a1,2700 <__eqsf2+0x40>
    2718:	00100513          	li	a0,1
    271c:	fe0692e3          	bnez	a3,2700 <__eqsf2+0x40>
    2720:	01003533          	snez	a0,a6
    2724:	00008067          	ret

00002728 <__gesf2>:
    2728:	01755693          	srli	a3,a0,0x17
    272c:	008007b7          	lui	a5,0x800
    2730:	fff78793          	addi	a5,a5,-1 # 7fffff <__crt0_copy_data_src_begin+0x7fbe8f>
    2734:	0175d713          	srli	a4,a1,0x17
    2738:	0ff6f693          	andi	a3,a3,255
    273c:	0ff00813          	li	a6,255
    2740:	00a7f633          	and	a2,a5,a0
    2744:	0ff77713          	andi	a4,a4,255
    2748:	00b7f7b3          	and	a5,a5,a1
    274c:	01f55513          	srli	a0,a0,0x1f
    2750:	01f5d593          	srli	a1,a1,0x1f
    2754:	01069863          	bne	a3,a6,2764 <__gesf2+0x3c>
    2758:	06060a63          	beqz	a2,27cc <__gesf2+0xa4>
    275c:	ffe00513          	li	a0,-2
    2760:	00008067          	ret
    2764:	01071463          	bne	a4,a6,276c <__gesf2+0x44>
    2768:	fe079ae3          	bnez	a5,275c <__gesf2+0x34>
    276c:	06069263          	bnez	a3,27d0 <__gesf2+0xa8>
    2770:	00071463          	bnez	a4,2778 <__gesf2+0x50>
    2774:	04078863          	beqz	a5,27c4 <__gesf2+0x9c>
    2778:	00060c63          	beqz	a2,2790 <__gesf2+0x68>
    277c:	00b51463          	bne	a0,a1,2784 <__gesf2+0x5c>
    2780:	02d75063          	bge	a4,a3,27a0 <__gesf2+0x78>
    2784:	02050c63          	beqz	a0,27bc <__gesf2+0x94>
    2788:	fff00513          	li	a0,-1
    278c:	00008067          	ret
    2790:	fff00513          	li	a0,-1
    2794:	00058a63          	beqz	a1,27a8 <__gesf2+0x80>
    2798:	00058513          	mv	a0,a1
    279c:	00008067          	ret
    27a0:	00e6d663          	bge	a3,a4,27ac <__gesf2+0x84>
    27a4:	fe0502e3          	beqz	a0,2788 <__gesf2+0x60>
    27a8:	00008067          	ret
    27ac:	fcc7ece3          	bltu	a5,a2,2784 <__gesf2+0x5c>
    27b0:	fef66ae3          	bltu	a2,a5,27a4 <__gesf2+0x7c>
    27b4:	00000513          	li	a0,0
    27b8:	00008067          	ret
    27bc:	00100513          	li	a0,1
    27c0:	00008067          	ret
    27c4:	fe0608e3          	beqz	a2,27b4 <__gesf2+0x8c>
    27c8:	fbdff06f          	j	2784 <__gesf2+0x5c>
    27cc:	f8d70ee3          	beq	a4,a3,2768 <__gesf2+0x40>
    27d0:	fa0716e3          	bnez	a4,277c <__gesf2+0x54>
    27d4:	fa0788e3          	beqz	a5,2784 <__gesf2+0x5c>
    27d8:	fa5ff06f          	j	277c <__gesf2+0x54>

000027dc <__lesf2>:
    27dc:	01755693          	srli	a3,a0,0x17
    27e0:	008007b7          	lui	a5,0x800
    27e4:	fff78793          	addi	a5,a5,-1 # 7fffff <__crt0_copy_data_src_begin+0x7fbe8f>
    27e8:	0175d713          	srli	a4,a1,0x17
    27ec:	0ff6f693          	andi	a3,a3,255
    27f0:	0ff00813          	li	a6,255
    27f4:	00a7f633          	and	a2,a5,a0
    27f8:	0ff77713          	andi	a4,a4,255
    27fc:	00b7f7b3          	and	a5,a5,a1
    2800:	01f55513          	srli	a0,a0,0x1f
    2804:	01f5d593          	srli	a1,a1,0x1f
    2808:	01069863          	bne	a3,a6,2818 <__lesf2+0x3c>
    280c:	06060a63          	beqz	a2,2880 <__lesf2+0xa4>
    2810:	00200513          	li	a0,2
    2814:	00008067          	ret
    2818:	01071463          	bne	a4,a6,2820 <__lesf2+0x44>
    281c:	fe079ae3          	bnez	a5,2810 <__lesf2+0x34>
    2820:	06069263          	bnez	a3,2884 <__lesf2+0xa8>
    2824:	00071463          	bnez	a4,282c <__lesf2+0x50>
    2828:	04078863          	beqz	a5,2878 <__lesf2+0x9c>
    282c:	00060c63          	beqz	a2,2844 <__lesf2+0x68>
    2830:	00b51463          	bne	a0,a1,2838 <__lesf2+0x5c>
    2834:	02d75063          	bge	a4,a3,2854 <__lesf2+0x78>
    2838:	02050c63          	beqz	a0,2870 <__lesf2+0x94>
    283c:	fff00513          	li	a0,-1
    2840:	00008067          	ret
    2844:	fff00513          	li	a0,-1
    2848:	00058a63          	beqz	a1,285c <__lesf2+0x80>
    284c:	00058513          	mv	a0,a1
    2850:	00008067          	ret
    2854:	00e6d663          	bge	a3,a4,2860 <__lesf2+0x84>
    2858:	fe0502e3          	beqz	a0,283c <__lesf2+0x60>
    285c:	00008067          	ret
    2860:	fcc7ece3          	bltu	a5,a2,2838 <__lesf2+0x5c>
    2864:	fef66ae3          	bltu	a2,a5,2858 <__lesf2+0x7c>
    2868:	00000513          	li	a0,0
    286c:	00008067          	ret
    2870:	00100513          	li	a0,1
    2874:	00008067          	ret
    2878:	fe0608e3          	beqz	a2,2868 <__lesf2+0x8c>
    287c:	fbdff06f          	j	2838 <__lesf2+0x5c>
    2880:	f8d70ee3          	beq	a4,a3,281c <__lesf2+0x40>
    2884:	fa0716e3          	bnez	a4,2830 <__lesf2+0x54>
    2888:	fa0788e3          	beqz	a5,2838 <__lesf2+0x5c>
    288c:	fa5ff06f          	j	2830 <__lesf2+0x54>

00002890 <__mulsf3>:
    2890:	fe010113          	addi	sp,sp,-32
    2894:	01212823          	sw	s2,16(sp)
    2898:	01755913          	srli	s2,a0,0x17
    289c:	00912a23          	sw	s1,20(sp)
    28a0:	01312623          	sw	s3,12(sp)
    28a4:	01412423          	sw	s4,8(sp)
    28a8:	00951493          	slli	s1,a0,0x9
    28ac:	00112e23          	sw	ra,28(sp)
    28b0:	00812c23          	sw	s0,24(sp)
    28b4:	01512223          	sw	s5,4(sp)
    28b8:	0ff97913          	andi	s2,s2,255
    28bc:	00058a13          	mv	s4,a1
    28c0:	0094d493          	srli	s1,s1,0x9
    28c4:	01f55993          	srli	s3,a0,0x1f
    28c8:	08090663          	beqz	s2,2954 <__mulsf3+0xc4>
    28cc:	0ff00793          	li	a5,255
    28d0:	0af90263          	beq	s2,a5,2974 <__mulsf3+0xe4>
    28d4:	00349493          	slli	s1,s1,0x3
    28d8:	040007b7          	lui	a5,0x4000
    28dc:	00f4e4b3          	or	s1,s1,a5
    28e0:	f8190913          	addi	s2,s2,-127
    28e4:	00000a93          	li	s5,0
    28e8:	017a5513          	srli	a0,s4,0x17
    28ec:	009a1413          	slli	s0,s4,0x9
    28f0:	0ff57513          	andi	a0,a0,255
    28f4:	00945413          	srli	s0,s0,0x9
    28f8:	01fa5a13          	srli	s4,s4,0x1f
    28fc:	08050c63          	beqz	a0,2994 <__mulsf3+0x104>
    2900:	0ff00793          	li	a5,255
    2904:	0af50863          	beq	a0,a5,29b4 <__mulsf3+0x124>
    2908:	00341413          	slli	s0,s0,0x3
    290c:	040007b7          	lui	a5,0x4000
    2910:	00f46433          	or	s0,s0,a5
    2914:	f8150513          	addi	a0,a0,-127 # 7f7fff81 <__crt0_copy_data_src_begin+0x7f7fbe11>
    2918:	00000793          	li	a5,0
    291c:	002a9713          	slli	a4,s5,0x2
    2920:	00f76733          	or	a4,a4,a5
    2924:	00a90933          	add	s2,s2,a0
    2928:	fff70713          	addi	a4,a4,-1
    292c:	00e00693          	li	a3,14
    2930:	0149c833          	xor	a6,s3,s4
    2934:	00190893          	addi	a7,s2,1
    2938:	08e6ee63          	bltu	a3,a4,29d4 <__mulsf3+0x144>
    293c:	000046b7          	lui	a3,0x4
    2940:	00271713          	slli	a4,a4,0x2
    2944:	03468693          	addi	a3,a3,52 # 4034 <hex_symbols.0+0x10>
    2948:	00d70733          	add	a4,a4,a3
    294c:	00072703          	lw	a4,0(a4)
    2950:	00070067          	jr	a4
    2954:	02048a63          	beqz	s1,2988 <__mulsf3+0xf8>
    2958:	00048513          	mv	a0,s1
    295c:	509000ef          	jal	ra,3664 <__clzsi2>
    2960:	ffb50793          	addi	a5,a0,-5
    2964:	f8a00913          	li	s2,-118
    2968:	00f494b3          	sll	s1,s1,a5
    296c:	40a90933          	sub	s2,s2,a0
    2970:	f75ff06f          	j	28e4 <__mulsf3+0x54>
    2974:	0ff00913          	li	s2,255
    2978:	00200a93          	li	s5,2
    297c:	f60486e3          	beqz	s1,28e8 <__mulsf3+0x58>
    2980:	00300a93          	li	s5,3
    2984:	f65ff06f          	j	28e8 <__mulsf3+0x58>
    2988:	00000913          	li	s2,0
    298c:	00100a93          	li	s5,1
    2990:	f59ff06f          	j	28e8 <__mulsf3+0x58>
    2994:	02040a63          	beqz	s0,29c8 <__mulsf3+0x138>
    2998:	00040513          	mv	a0,s0
    299c:	4c9000ef          	jal	ra,3664 <__clzsi2>
    29a0:	ffb50793          	addi	a5,a0,-5
    29a4:	00f41433          	sll	s0,s0,a5
    29a8:	f8a00793          	li	a5,-118
    29ac:	40a78533          	sub	a0,a5,a0
    29b0:	f69ff06f          	j	2918 <__mulsf3+0x88>
    29b4:	0ff00513          	li	a0,255
    29b8:	00200793          	li	a5,2
    29bc:	f60400e3          	beqz	s0,291c <__mulsf3+0x8c>
    29c0:	00300793          	li	a5,3
    29c4:	f59ff06f          	j	291c <__mulsf3+0x8c>
    29c8:	00000513          	li	a0,0
    29cc:	00100793          	li	a5,1
    29d0:	f4dff06f          	j	291c <__mulsf3+0x8c>
    29d4:	00010f37          	lui	t5,0x10
    29d8:	ffff0e93          	addi	t4,t5,-1 # ffff <__crt0_copy_data_src_begin+0xbe8f>
    29dc:	0104df93          	srli	t6,s1,0x10
    29e0:	01045793          	srli	a5,s0,0x10
    29e4:	01d4f4b3          	and	s1,s1,t4
    29e8:	01d47433          	and	s0,s0,t4
    29ec:	00048513          	mv	a0,s1
    29f0:	00040593          	mv	a1,s0
    29f4:	399000ef          	jal	ra,358c <__mulsi3>
    29f8:	00050313          	mv	t1,a0
    29fc:	00078593          	mv	a1,a5
    2a00:	00048513          	mv	a0,s1
    2a04:	389000ef          	jal	ra,358c <__mulsi3>
    2a08:	00050e13          	mv	t3,a0
    2a0c:	00040593          	mv	a1,s0
    2a10:	000f8513          	mv	a0,t6
    2a14:	379000ef          	jal	ra,358c <__mulsi3>
    2a18:	00050713          	mv	a4,a0
    2a1c:	00078593          	mv	a1,a5
    2a20:	000f8513          	mv	a0,t6
    2a24:	369000ef          	jal	ra,358c <__mulsi3>
    2a28:	01035793          	srli	a5,t1,0x10
    2a2c:	00ee0e33          	add	t3,t3,a4
    2a30:	01c787b3          	add	a5,a5,t3
    2a34:	00e7f463          	bgeu	a5,a4,2a3c <__mulsf3+0x1ac>
    2a38:	01e50533          	add	a0,a0,t5
    2a3c:	01d7f733          	and	a4,a5,t4
    2a40:	01071713          	slli	a4,a4,0x10
    2a44:	01d37333          	and	t1,t1,t4
    2a48:	00670733          	add	a4,a4,t1
    2a4c:	00671413          	slli	s0,a4,0x6
    2a50:	00803433          	snez	s0,s0
    2a54:	0107d793          	srli	a5,a5,0x10
    2a58:	01a75713          	srli	a4,a4,0x1a
    2a5c:	00e46733          	or	a4,s0,a4
    2a60:	00a78433          	add	s0,a5,a0
    2a64:	00641413          	slli	s0,s0,0x6
    2a68:	00e46433          	or	s0,s0,a4
    2a6c:	080007b7          	lui	a5,0x8000
    2a70:	00f477b3          	and	a5,s0,a5
    2a74:	08078e63          	beqz	a5,2b10 <__mulsf3+0x280>
    2a78:	00145793          	srli	a5,s0,0x1
    2a7c:	00147413          	andi	s0,s0,1
    2a80:	0087e433          	or	s0,a5,s0
    2a84:	07f88713          	addi	a4,a7,127
    2a88:	08e05863          	blez	a4,2b18 <__mulsf3+0x288>
    2a8c:	00747793          	andi	a5,s0,7
    2a90:	00078a63          	beqz	a5,2aa4 <__mulsf3+0x214>
    2a94:	00f47793          	andi	a5,s0,15
    2a98:	00400693          	li	a3,4
    2a9c:	00d78463          	beq	a5,a3,2aa4 <__mulsf3+0x214>
    2aa0:	00440413          	addi	s0,s0,4
    2aa4:	080007b7          	lui	a5,0x8000
    2aa8:	00f477b3          	and	a5,s0,a5
    2aac:	00078a63          	beqz	a5,2ac0 <__mulsf3+0x230>
    2ab0:	f80007b7          	lui	a5,0xf8000
    2ab4:	fff78793          	addi	a5,a5,-1 # f7ffffff <__ctr0_io_space_begin+0xf80001ff>
    2ab8:	00f47433          	and	s0,s0,a5
    2abc:	08088713          	addi	a4,a7,128
    2ac0:	0fe00793          	li	a5,254
    2ac4:	00345413          	srli	s0,s0,0x3
    2ac8:	0ae7da63          	bge	a5,a4,2b7c <__mulsf3+0x2ec>
    2acc:	00000413          	li	s0,0
    2ad0:	0ff00713          	li	a4,255
    2ad4:	0a80006f          	j	2b7c <__mulsf3+0x2ec>
    2ad8:	00098813          	mv	a6,s3
    2adc:	00048413          	mv	s0,s1
    2ae0:	000a8793          	mv	a5,s5
    2ae4:	00200713          	li	a4,2
    2ae8:	fee782e3          	beq	a5,a4,2acc <__mulsf3+0x23c>
    2aec:	00300713          	li	a4,3
    2af0:	08e78063          	beq	a5,a4,2b70 <__mulsf3+0x2e0>
    2af4:	00100713          	li	a4,1
    2af8:	f8e796e3          	bne	a5,a4,2a84 <__mulsf3+0x1f4>
    2afc:	00000413          	li	s0,0
    2b00:	00000713          	li	a4,0
    2b04:	0780006f          	j	2b7c <__mulsf3+0x2ec>
    2b08:	000a0813          	mv	a6,s4
    2b0c:	fd9ff06f          	j	2ae4 <__mulsf3+0x254>
    2b10:	00090893          	mv	a7,s2
    2b14:	f71ff06f          	j	2a84 <__mulsf3+0x1f4>
    2b18:	00100793          	li	a5,1
    2b1c:	40e787b3          	sub	a5,a5,a4
    2b20:	01b00713          	li	a4,27
    2b24:	fcf74ce3          	blt	a4,a5,2afc <__mulsf3+0x26c>
    2b28:	09e88893          	addi	a7,a7,158
    2b2c:	00f457b3          	srl	a5,s0,a5
    2b30:	01141433          	sll	s0,s0,a7
    2b34:	00803433          	snez	s0,s0
    2b38:	0087e433          	or	s0,a5,s0
    2b3c:	00747793          	andi	a5,s0,7
    2b40:	00078a63          	beqz	a5,2b54 <__mulsf3+0x2c4>
    2b44:	00f47793          	andi	a5,s0,15
    2b48:	00400713          	li	a4,4
    2b4c:	00e78463          	beq	a5,a4,2b54 <__mulsf3+0x2c4>
    2b50:	00440413          	addi	s0,s0,4
    2b54:	040007b7          	lui	a5,0x4000
    2b58:	00f477b3          	and	a5,s0,a5
    2b5c:	00345413          	srli	s0,s0,0x3
    2b60:	fa0780e3          	beqz	a5,2b00 <__mulsf3+0x270>
    2b64:	00000413          	li	s0,0
    2b68:	00100713          	li	a4,1
    2b6c:	0100006f          	j	2b7c <__mulsf3+0x2ec>
    2b70:	00400437          	lui	s0,0x400
    2b74:	0ff00713          	li	a4,255
    2b78:	00000813          	li	a6,0
    2b7c:	01771793          	slli	a5,a4,0x17
    2b80:	00941413          	slli	s0,s0,0x9
    2b84:	7f800737          	lui	a4,0x7f800
    2b88:	00e7f7b3          	and	a5,a5,a4
    2b8c:	00945413          	srli	s0,s0,0x9
    2b90:	0087e433          	or	s0,a5,s0
    2b94:	01f81513          	slli	a0,a6,0x1f
    2b98:	01c12083          	lw	ra,28(sp)
    2b9c:	00a46533          	or	a0,s0,a0
    2ba0:	01812403          	lw	s0,24(sp)
    2ba4:	01412483          	lw	s1,20(sp)
    2ba8:	01012903          	lw	s2,16(sp)
    2bac:	00c12983          	lw	s3,12(sp)
    2bb0:	00812a03          	lw	s4,8(sp)
    2bb4:	00412a83          	lw	s5,4(sp)
    2bb8:	02010113          	addi	sp,sp,32
    2bbc:	00008067          	ret

00002bc0 <__subsf3>:
    2bc0:	00800737          	lui	a4,0x800
    2bc4:	ff010113          	addi	sp,sp,-16
    2bc8:	fff70713          	addi	a4,a4,-1 # 7fffff <__crt0_copy_data_src_begin+0x7fbe8f>
    2bcc:	0175d613          	srli	a2,a1,0x17
    2bd0:	00a777b3          	and	a5,a4,a0
    2bd4:	00812423          	sw	s0,8(sp)
    2bd8:	00b77733          	and	a4,a4,a1
    2bdc:	00912223          	sw	s1,4(sp)
    2be0:	01755413          	srli	s0,a0,0x17
    2be4:	00112623          	sw	ra,12(sp)
    2be8:	01212023          	sw	s2,0(sp)
    2bec:	0ff67613          	andi	a2,a2,255
    2bf0:	0ff00693          	li	a3,255
    2bf4:	0ff47413          	andi	s0,s0,255
    2bf8:	01f55493          	srli	s1,a0,0x1f
    2bfc:	00379793          	slli	a5,a5,0x3
    2c00:	01f5d593          	srli	a1,a1,0x1f
    2c04:	00371713          	slli	a4,a4,0x3
    2c08:	00d61463          	bne	a2,a3,2c10 <__subsf3+0x50>
    2c0c:	00071463          	bnez	a4,2c14 <__subsf3+0x54>
    2c10:	0015c593          	xori	a1,a1,1
    2c14:	40c406b3          	sub	a3,s0,a2
    2c18:	18959a63          	bne	a1,s1,2dac <__subsf3+0x1ec>
    2c1c:	0ad05063          	blez	a3,2cbc <__subsf3+0xfc>
    2c20:	02061663          	bnez	a2,2c4c <__subsf3+0x8c>
    2c24:	18070063          	beqz	a4,2da4 <__subsf3+0x1e4>
    2c28:	fff68613          	addi	a2,a3,-1
    2c2c:	00061863          	bnez	a2,2c3c <__subsf3+0x7c>
    2c30:	00e787b3          	add	a5,a5,a4
    2c34:	00100413          	li	s0,1
    2c38:	0500006f          	j	2c88 <__subsf3+0xc8>
    2c3c:	0ff00593          	li	a1,255
    2c40:	02b69063          	bne	a3,a1,2c60 <__subsf3+0xa0>
    2c44:	0ff00413          	li	s0,255
    2c48:	1180006f          	j	2d60 <__subsf3+0x1a0>
    2c4c:	0ff00613          	li	a2,255
    2c50:	10c40863          	beq	s0,a2,2d60 <__subsf3+0x1a0>
    2c54:	04000637          	lui	a2,0x4000
    2c58:	00c76733          	or	a4,a4,a2
    2c5c:	00068613          	mv	a2,a3
    2c60:	01b00593          	li	a1,27
    2c64:	00100693          	li	a3,1
    2c68:	00c5ce63          	blt	a1,a2,2c84 <__subsf3+0xc4>
    2c6c:	02000693          	li	a3,32
    2c70:	40c686b3          	sub	a3,a3,a2
    2c74:	00c755b3          	srl	a1,a4,a2
    2c78:	00d71733          	sll	a4,a4,a3
    2c7c:	00e03733          	snez	a4,a4
    2c80:	00e5e6b3          	or	a3,a1,a4
    2c84:	00d787b3          	add	a5,a5,a3
    2c88:	04000737          	lui	a4,0x4000
    2c8c:	00e7f733          	and	a4,a5,a4
    2c90:	0c070863          	beqz	a4,2d60 <__subsf3+0x1a0>
    2c94:	00140413          	addi	s0,s0,1 # 400001 <__crt0_copy_data_src_begin+0x3fbe91>
    2c98:	0ff00713          	li	a4,255
    2c9c:	30e40263          	beq	s0,a4,2fa0 <__subsf3+0x3e0>
    2ca0:	7e000737          	lui	a4,0x7e000
    2ca4:	0017f693          	andi	a3,a5,1
    2ca8:	fff70713          	addi	a4,a4,-1 # 7dffffff <__crt0_copy_data_src_begin+0x7dffbe8f>
    2cac:	0017d793          	srli	a5,a5,0x1
    2cb0:	00e7f7b3          	and	a5,a5,a4
    2cb4:	00d7e7b3          	or	a5,a5,a3
    2cb8:	0a80006f          	j	2d60 <__subsf3+0x1a0>
    2cbc:	06068663          	beqz	a3,2d28 <__subsf3+0x168>
    2cc0:	408606b3          	sub	a3,a2,s0
    2cc4:	02041063          	bnez	s0,2ce4 <__subsf3+0x124>
    2cc8:	2c078263          	beqz	a5,2f8c <__subsf3+0x3cc>
    2ccc:	fff68593          	addi	a1,a3,-1
    2cd0:	f60580e3          	beqz	a1,2c30 <__subsf3+0x70>
    2cd4:	0ff00513          	li	a0,255
    2cd8:	02a69063          	bne	a3,a0,2cf8 <__subsf3+0x138>
    2cdc:	00070793          	mv	a5,a4
    2ce0:	f65ff06f          	j	2c44 <__subsf3+0x84>
    2ce4:	0ff00593          	li	a1,255
    2ce8:	feb60ae3          	beq	a2,a1,2cdc <__subsf3+0x11c>
    2cec:	040005b7          	lui	a1,0x4000
    2cf0:	00b7e7b3          	or	a5,a5,a1
    2cf4:	00068593          	mv	a1,a3
    2cf8:	01b00513          	li	a0,27
    2cfc:	00100693          	li	a3,1
    2d00:	00b54e63          	blt	a0,a1,2d1c <__subsf3+0x15c>
    2d04:	02000693          	li	a3,32
    2d08:	40b686b3          	sub	a3,a3,a1
    2d0c:	00b7d533          	srl	a0,a5,a1
    2d10:	00d797b3          	sll	a5,a5,a3
    2d14:	00f037b3          	snez	a5,a5
    2d18:	00f566b3          	or	a3,a0,a5
    2d1c:	00e687b3          	add	a5,a3,a4
    2d20:	00060413          	mv	s0,a2
    2d24:	f65ff06f          	j	2c88 <__subsf3+0xc8>
    2d28:	00140693          	addi	a3,s0,1
    2d2c:	0fe6f613          	andi	a2,a3,254
    2d30:	06061263          	bnez	a2,2d94 <__subsf3+0x1d4>
    2d34:	04041463          	bnez	s0,2d7c <__subsf3+0x1bc>
    2d38:	24078e63          	beqz	a5,2f94 <__subsf3+0x3d4>
    2d3c:	02070263          	beqz	a4,2d60 <__subsf3+0x1a0>
    2d40:	00e787b3          	add	a5,a5,a4
    2d44:	04000737          	lui	a4,0x4000
    2d48:	00e7f733          	and	a4,a5,a4
    2d4c:	00070a63          	beqz	a4,2d60 <__subsf3+0x1a0>
    2d50:	fc000737          	lui	a4,0xfc000
    2d54:	fff70713          	addi	a4,a4,-1 # fbffffff <__ctr0_io_space_begin+0xfc0001ff>
    2d58:	00e7f7b3          	and	a5,a5,a4
    2d5c:	00100413          	li	s0,1
    2d60:	0077f713          	andi	a4,a5,7
    2d64:	24070063          	beqz	a4,2fa4 <__subsf3+0x3e4>
    2d68:	00f7f713          	andi	a4,a5,15
    2d6c:	00400693          	li	a3,4
    2d70:	22d70a63          	beq	a4,a3,2fa4 <__subsf3+0x3e4>
    2d74:	00478793          	addi	a5,a5,4 # 4000004 <__crt0_copy_data_src_begin+0x3ffbe94>
    2d78:	22c0006f          	j	2fa4 <__subsf3+0x3e4>
    2d7c:	f60780e3          	beqz	a5,2cdc <__subsf3+0x11c>
    2d80:	ec0702e3          	beqz	a4,2c44 <__subsf3+0x84>
    2d84:	00000493          	li	s1,0
    2d88:	020007b7          	lui	a5,0x2000
    2d8c:	0ff00413          	li	s0,255
    2d90:	2140006f          	j	2fa4 <__subsf3+0x3e4>
    2d94:	0ff00613          	li	a2,255
    2d98:	20c68263          	beq	a3,a2,2f9c <__subsf3+0x3dc>
    2d9c:	00e787b3          	add	a5,a5,a4
    2da0:	0017d793          	srli	a5,a5,0x1
    2da4:	00068413          	mv	s0,a3
    2da8:	fb9ff06f          	j	2d60 <__subsf3+0x1a0>
    2dac:	08d05063          	blez	a3,2e2c <__subsf3+0x26c>
    2db0:	06061263          	bnez	a2,2e14 <__subsf3+0x254>
    2db4:	fe0708e3          	beqz	a4,2da4 <__subsf3+0x1e4>
    2db8:	fff68613          	addi	a2,a3,-1
    2dbc:	00061863          	bnez	a2,2dcc <__subsf3+0x20c>
    2dc0:	40e787b3          	sub	a5,a5,a4
    2dc4:	00100413          	li	s0,1
    2dc8:	0340006f          	j	2dfc <__subsf3+0x23c>
    2dcc:	0ff00593          	li	a1,255
    2dd0:	e6b68ae3          	beq	a3,a1,2c44 <__subsf3+0x84>
    2dd4:	01b00593          	li	a1,27
    2dd8:	00100693          	li	a3,1
    2ddc:	00c5ce63          	blt	a1,a2,2df8 <__subsf3+0x238>
    2de0:	02000693          	li	a3,32
    2de4:	40c686b3          	sub	a3,a3,a2
    2de8:	00c755b3          	srl	a1,a4,a2
    2dec:	00d71733          	sll	a4,a4,a3
    2df0:	00e03733          	snez	a4,a4
    2df4:	00e5e6b3          	or	a3,a1,a4
    2df8:	40d787b3          	sub	a5,a5,a3
    2dfc:	04000937          	lui	s2,0x4000
    2e00:	0127f733          	and	a4,a5,s2
    2e04:	f4070ee3          	beqz	a4,2d60 <__subsf3+0x1a0>
    2e08:	fff90913          	addi	s2,s2,-1 # 3ffffff <__crt0_copy_data_src_begin+0x3ffbe8f>
    2e0c:	0127f933          	and	s2,a5,s2
    2e10:	1180006f          	j	2f28 <__subsf3+0x368>
    2e14:	0ff00613          	li	a2,255
    2e18:	f4c404e3          	beq	s0,a2,2d60 <__subsf3+0x1a0>
    2e1c:	04000637          	lui	a2,0x4000
    2e20:	00c76733          	or	a4,a4,a2
    2e24:	00068613          	mv	a2,a3
    2e28:	fadff06f          	j	2dd4 <__subsf3+0x214>
    2e2c:	08068063          	beqz	a3,2eac <__subsf3+0x2ec>
    2e30:	408606b3          	sub	a3,a2,s0
    2e34:	02041863          	bnez	s0,2e64 <__subsf3+0x2a4>
    2e38:	1e078063          	beqz	a5,3018 <__subsf3+0x458>
    2e3c:	fff68513          	addi	a0,a3,-1
    2e40:	00051863          	bnez	a0,2e50 <__subsf3+0x290>
    2e44:	40f707b3          	sub	a5,a4,a5
    2e48:	00058493          	mv	s1,a1
    2e4c:	f79ff06f          	j	2dc4 <__subsf3+0x204>
    2e50:	0ff00813          	li	a6,255
    2e54:	03069263          	bne	a3,a6,2e78 <__subsf3+0x2b8>
    2e58:	00070793          	mv	a5,a4
    2e5c:	0ff00413          	li	s0,255
    2e60:	06c0006f          	j	2ecc <__subsf3+0x30c>
    2e64:	0ff00513          	li	a0,255
    2e68:	fea608e3          	beq	a2,a0,2e58 <__subsf3+0x298>
    2e6c:	04000537          	lui	a0,0x4000
    2e70:	00a7e7b3          	or	a5,a5,a0
    2e74:	00068513          	mv	a0,a3
    2e78:	01b00813          	li	a6,27
    2e7c:	00100693          	li	a3,1
    2e80:	00a84e63          	blt	a6,a0,2e9c <__subsf3+0x2dc>
    2e84:	02000693          	li	a3,32
    2e88:	40a686b3          	sub	a3,a3,a0
    2e8c:	00a7d833          	srl	a6,a5,a0
    2e90:	00d797b3          	sll	a5,a5,a3
    2e94:	00f037b3          	snez	a5,a5
    2e98:	00f866b3          	or	a3,a6,a5
    2e9c:	40d707b3          	sub	a5,a4,a3
    2ea0:	00060413          	mv	s0,a2
    2ea4:	00058493          	mv	s1,a1
    2ea8:	f55ff06f          	j	2dfc <__subsf3+0x23c>
    2eac:	00140693          	addi	a3,s0,1
    2eb0:	0fe6f693          	andi	a3,a3,254
    2eb4:	04069e63          	bnez	a3,2f10 <__subsf3+0x350>
    2eb8:	04041263          	bnez	s0,2efc <__subsf3+0x33c>
    2ebc:	00079c63          	bnez	a5,2ed4 <__subsf3+0x314>
    2ec0:	00000493          	li	s1,0
    2ec4:	0e070063          	beqz	a4,2fa4 <__subsf3+0x3e4>
    2ec8:	00070793          	mv	a5,a4
    2ecc:	00058493          	mv	s1,a1
    2ed0:	e91ff06f          	j	2d60 <__subsf3+0x1a0>
    2ed4:	e80706e3          	beqz	a4,2d60 <__subsf3+0x1a0>
    2ed8:	40e786b3          	sub	a3,a5,a4
    2edc:	04000637          	lui	a2,0x4000
    2ee0:	00c6f633          	and	a2,a3,a2
    2ee4:	40f707b3          	sub	a5,a4,a5
    2ee8:	fe0612e3          	bnez	a2,2ecc <__subsf3+0x30c>
    2eec:	00000793          	li	a5,0
    2ef0:	08068063          	beqz	a3,2f70 <__subsf3+0x3b0>
    2ef4:	00068793          	mv	a5,a3
    2ef8:	e69ff06f          	j	2d60 <__subsf3+0x1a0>
    2efc:	e80792e3          	bnez	a5,2d80 <__subsf3+0x1c0>
    2f00:	e80702e3          	beqz	a4,2d84 <__subsf3+0x1c4>
    2f04:	00070793          	mv	a5,a4
    2f08:	00058493          	mv	s1,a1
    2f0c:	d39ff06f          	j	2c44 <__subsf3+0x84>
    2f10:	40e78933          	sub	s2,a5,a4
    2f14:	040006b7          	lui	a3,0x4000
    2f18:	00d976b3          	and	a3,s2,a3
    2f1c:	04068463          	beqz	a3,2f64 <__subsf3+0x3a4>
    2f20:	40f70933          	sub	s2,a4,a5
    2f24:	00058493          	mv	s1,a1
    2f28:	00090513          	mv	a0,s2
    2f2c:	738000ef          	jal	ra,3664 <__clzsi2>
    2f30:	ffb50513          	addi	a0,a0,-5 # 3fffffb <__crt0_copy_data_src_begin+0x3ffbe8b>
    2f34:	00a91933          	sll	s2,s2,a0
    2f38:	04854063          	blt	a0,s0,2f78 <__subsf3+0x3b8>
    2f3c:	40850533          	sub	a0,a0,s0
    2f40:	00150513          	addi	a0,a0,1
    2f44:	02000413          	li	s0,32
    2f48:	00a957b3          	srl	a5,s2,a0
    2f4c:	40a40533          	sub	a0,s0,a0
    2f50:	00a91933          	sll	s2,s2,a0
    2f54:	01203933          	snez	s2,s2
    2f58:	0127e7b3          	or	a5,a5,s2
    2f5c:	00000413          	li	s0,0
    2f60:	e01ff06f          	j	2d60 <__subsf3+0x1a0>
    2f64:	fc0912e3          	bnez	s2,2f28 <__subsf3+0x368>
    2f68:	00000793          	li	a5,0
    2f6c:	00000413          	li	s0,0
    2f70:	00000493          	li	s1,0
    2f74:	0300006f          	j	2fa4 <__subsf3+0x3e4>
    2f78:	fc0007b7          	lui	a5,0xfc000
    2f7c:	fff78793          	addi	a5,a5,-1 # fbffffff <__ctr0_io_space_begin+0xfc0001ff>
    2f80:	40a40433          	sub	s0,s0,a0
    2f84:	00f977b3          	and	a5,s2,a5
    2f88:	dd9ff06f          	j	2d60 <__subsf3+0x1a0>
    2f8c:	00070793          	mv	a5,a4
    2f90:	e15ff06f          	j	2da4 <__subsf3+0x1e4>
    2f94:	00070793          	mv	a5,a4
    2f98:	dc9ff06f          	j	2d60 <__subsf3+0x1a0>
    2f9c:	0ff00413          	li	s0,255
    2fa0:	00000793          	li	a5,0
    2fa4:	04000737          	lui	a4,0x4000
    2fa8:	00e7f733          	and	a4,a5,a4
    2fac:	00070e63          	beqz	a4,2fc8 <__subsf3+0x408>
    2fb0:	00140413          	addi	s0,s0,1
    2fb4:	0ff00713          	li	a4,255
    2fb8:	06e40663          	beq	s0,a4,3024 <__subsf3+0x464>
    2fbc:	fc000737          	lui	a4,0xfc000
    2fc0:	fff70713          	addi	a4,a4,-1 # fbffffff <__ctr0_io_space_begin+0xfc0001ff>
    2fc4:	00e7f7b3          	and	a5,a5,a4
    2fc8:	0ff00713          	li	a4,255
    2fcc:	0037d793          	srli	a5,a5,0x3
    2fd0:	00e41863          	bne	s0,a4,2fe0 <__subsf3+0x420>
    2fd4:	00078663          	beqz	a5,2fe0 <__subsf3+0x420>
    2fd8:	004007b7          	lui	a5,0x400
    2fdc:	00000493          	li	s1,0
    2fe0:	7f800537          	lui	a0,0x7f800
    2fe4:	01741413          	slli	s0,s0,0x17
    2fe8:	00979793          	slli	a5,a5,0x9
    2fec:	00a47433          	and	s0,s0,a0
    2ff0:	0097d793          	srli	a5,a5,0x9
    2ff4:	00c12083          	lw	ra,12(sp)
    2ff8:	00f467b3          	or	a5,s0,a5
    2ffc:	00812403          	lw	s0,8(sp)
    3000:	01f49513          	slli	a0,s1,0x1f
    3004:	00012903          	lw	s2,0(sp)
    3008:	00412483          	lw	s1,4(sp)
    300c:	00a7e533          	or	a0,a5,a0
    3010:	01010113          	addi	sp,sp,16
    3014:	00008067          	ret
    3018:	00070793          	mv	a5,a4
    301c:	00068413          	mv	s0,a3
    3020:	eadff06f          	j	2ecc <__subsf3+0x30c>
    3024:	00000793          	li	a5,0
    3028:	fa1ff06f          	j	2fc8 <__subsf3+0x408>

0000302c <__unordsf2>:
    302c:	008007b7          	lui	a5,0x800
    3030:	fff78793          	addi	a5,a5,-1 # 7fffff <__crt0_copy_data_src_begin+0x7fbe8f>
    3034:	00a7f733          	and	a4,a5,a0
    3038:	01755513          	srli	a0,a0,0x17
    303c:	00b7f7b3          	and	a5,a5,a1
    3040:	0ff57513          	andi	a0,a0,255
    3044:	0175d593          	srli	a1,a1,0x17
    3048:	0ff00693          	li	a3,255
    304c:	0ff5f593          	andi	a1,a1,255
    3050:	00d51663          	bne	a0,a3,305c <__unordsf2+0x30>
    3054:	00100513          	li	a0,1
    3058:	00071a63          	bnez	a4,306c <__unordsf2+0x40>
    305c:	0ff00713          	li	a4,255
    3060:	00000513          	li	a0,0
    3064:	00e59463          	bne	a1,a4,306c <__unordsf2+0x40>
    3068:	00f03533          	snez	a0,a5
    306c:	00008067          	ret

00003070 <__fixsfsi>:
    3070:	00800637          	lui	a2,0x800
    3074:	01755713          	srli	a4,a0,0x17
    3078:	fff60793          	addi	a5,a2,-1 # 7fffff <__crt0_copy_data_src_begin+0x7fbe8f>
    307c:	0ff77713          	andi	a4,a4,255
    3080:	07e00593          	li	a1,126
    3084:	00a7f7b3          	and	a5,a5,a0
    3088:	01f55693          	srli	a3,a0,0x1f
    308c:	04e5d663          	bge	a1,a4,30d8 <__fixsfsi+0x68>
    3090:	09d00593          	li	a1,157
    3094:	00e5da63          	bge	a1,a4,30a8 <__fixsfsi+0x38>
    3098:	80000537          	lui	a0,0x80000
    309c:	fff54513          	not	a0,a0
    30a0:	00a68533          	add	a0,a3,a0
    30a4:	00008067          	ret
    30a8:	00c7e533          	or	a0,a5,a2
    30ac:	09500793          	li	a5,149
    30b0:	00e7dc63          	bge	a5,a4,30c8 <__fixsfsi+0x58>
    30b4:	f6a70713          	addi	a4,a4,-150
    30b8:	00e51533          	sll	a0,a0,a4
    30bc:	02068063          	beqz	a3,30dc <__fixsfsi+0x6c>
    30c0:	40a00533          	neg	a0,a0
    30c4:	00008067          	ret
    30c8:	09600793          	li	a5,150
    30cc:	40e78733          	sub	a4,a5,a4
    30d0:	00e55533          	srl	a0,a0,a4
    30d4:	fe9ff06f          	j	30bc <__fixsfsi+0x4c>
    30d8:	00000513          	li	a0,0
    30dc:	00008067          	ret

000030e0 <__fixunssfsi>:
    30e0:	008005b7          	lui	a1,0x800
    30e4:	01755793          	srli	a5,a0,0x17
    30e8:	fff58693          	addi	a3,a1,-1 # 7fffff <__crt0_copy_data_src_begin+0x7fbe8f>
    30ec:	0ff7f793          	andi	a5,a5,255
    30f0:	07e00613          	li	a2,126
    30f4:	00a6f6b3          	and	a3,a3,a0
    30f8:	01f55713          	srli	a4,a0,0x1f
    30fc:	04f65263          	bge	a2,a5,3140 <__fixunssfsi+0x60>
    3100:	09f00613          	li	a2,159
    3104:	40e60633          	sub	a2,a2,a4
    3108:	fff70513          	addi	a0,a4,-1
    310c:	02c7dc63          	bge	a5,a2,3144 <__fixunssfsi+0x64>
    3110:	00000513          	li	a0,0
    3114:	02071863          	bnez	a4,3144 <__fixunssfsi+0x64>
    3118:	09500713          	li	a4,149
    311c:	00b6e533          	or	a0,a3,a1
    3120:	00f75863          	bge	a4,a5,3130 <__fixunssfsi+0x50>
    3124:	f6a78793          	addi	a5,a5,-150
    3128:	00f51533          	sll	a0,a0,a5
    312c:	00008067          	ret
    3130:	09600713          	li	a4,150
    3134:	40f707b3          	sub	a5,a4,a5
    3138:	00f55533          	srl	a0,a0,a5
    313c:	00008067          	ret
    3140:	00000513          	li	a0,0
    3144:	00008067          	ret

00003148 <__floatsisf>:
    3148:	ff010113          	addi	sp,sp,-16
    314c:	00112623          	sw	ra,12(sp)
    3150:	00812423          	sw	s0,8(sp)
    3154:	00912223          	sw	s1,4(sp)
    3158:	0e050663          	beqz	a0,3244 <__floatsisf+0xfc>
    315c:	41f55793          	srai	a5,a0,0x1f
    3160:	00a7c433          	xor	s0,a5,a0
    3164:	40f40433          	sub	s0,s0,a5
    3168:	01f55493          	srli	s1,a0,0x1f
    316c:	00040513          	mv	a0,s0
    3170:	4f4000ef          	jal	ra,3664 <__clzsi2>
    3174:	09e00793          	li	a5,158
    3178:	00050713          	mv	a4,a0
    317c:	40a78533          	sub	a0,a5,a0
    3180:	09600793          	li	a5,150
    3184:	04a7c063          	blt	a5,a0,31c4 <__floatsisf+0x7c>
    3188:	00800793          	li	a5,8
    318c:	00e7d663          	bge	a5,a4,3198 <__floatsisf+0x50>
    3190:	ff870713          	addi	a4,a4,-8
    3194:	00e41433          	sll	s0,s0,a4
    3198:	00941413          	slli	s0,s0,0x9
    319c:	01751513          	slli	a0,a0,0x17
    31a0:	00945413          	srli	s0,s0,0x9
    31a4:	00856433          	or	s0,a0,s0
    31a8:	01f49513          	slli	a0,s1,0x1f
    31ac:	00c12083          	lw	ra,12(sp)
    31b0:	00a46533          	or	a0,s0,a0
    31b4:	00812403          	lw	s0,8(sp)
    31b8:	00412483          	lw	s1,4(sp)
    31bc:	01010113          	addi	sp,sp,16
    31c0:	00008067          	ret
    31c4:	09900793          	li	a5,153
    31c8:	02a7d063          	bge	a5,a0,31e8 <__floatsisf+0xa0>
    31cc:	00500793          	li	a5,5
    31d0:	40e787b3          	sub	a5,a5,a4
    31d4:	01b70693          	addi	a3,a4,27
    31d8:	00f457b3          	srl	a5,s0,a5
    31dc:	00d41433          	sll	s0,s0,a3
    31e0:	00803433          	snez	s0,s0
    31e4:	0087e433          	or	s0,a5,s0
    31e8:	00500793          	li	a5,5
    31ec:	00e7d663          	bge	a5,a4,31f8 <__floatsisf+0xb0>
    31f0:	ffb70793          	addi	a5,a4,-5
    31f4:	00f41433          	sll	s0,s0,a5
    31f8:	fc0006b7          	lui	a3,0xfc000
    31fc:	fff68693          	addi	a3,a3,-1 # fbffffff <__ctr0_io_space_begin+0xfc0001ff>
    3200:	00747793          	andi	a5,s0,7
    3204:	00d476b3          	and	a3,s0,a3
    3208:	00078a63          	beqz	a5,321c <__floatsisf+0xd4>
    320c:	00f47413          	andi	s0,s0,15
    3210:	00400793          	li	a5,4
    3214:	00f40463          	beq	s0,a5,321c <__floatsisf+0xd4>
    3218:	00468693          	addi	a3,a3,4
    321c:	040007b7          	lui	a5,0x4000
    3220:	00f6f7b3          	and	a5,a3,a5
    3224:	00078c63          	beqz	a5,323c <__floatsisf+0xf4>
    3228:	fc0007b7          	lui	a5,0xfc000
    322c:	fff78793          	addi	a5,a5,-1 # fbffffff <__ctr0_io_space_begin+0xfc0001ff>
    3230:	00f6f6b3          	and	a3,a3,a5
    3234:	09f00793          	li	a5,159
    3238:	40e78533          	sub	a0,a5,a4
    323c:	0036d413          	srli	s0,a3,0x3
    3240:	f59ff06f          	j	3198 <__floatsisf+0x50>
    3244:	00000493          	li	s1,0
    3248:	00000413          	li	s0,0
    324c:	f4dff06f          	j	3198 <__floatsisf+0x50>

00003250 <__floatunsisf>:
    3250:	ff010113          	addi	sp,sp,-16
    3254:	00812423          	sw	s0,8(sp)
    3258:	00112623          	sw	ra,12(sp)
    325c:	00050413          	mv	s0,a0
    3260:	00000793          	li	a5,0
    3264:	02050463          	beqz	a0,328c <__floatunsisf+0x3c>
    3268:	3fc000ef          	jal	ra,3664 <__clzsi2>
    326c:	09e00793          	li	a5,158
    3270:	40a787b3          	sub	a5,a5,a0
    3274:	09600713          	li	a4,150
    3278:	02f74a63          	blt	a4,a5,32ac <__floatunsisf+0x5c>
    327c:	00800713          	li	a4,8
    3280:	00a75663          	bge	a4,a0,328c <__floatunsisf+0x3c>
    3284:	ff850513          	addi	a0,a0,-8 # 7ffffff8 <__ctr0_io_space_begin+0x800001f8>
    3288:	00a41433          	sll	s0,s0,a0
    328c:	00941413          	slli	s0,s0,0x9
    3290:	00945413          	srli	s0,s0,0x9
    3294:	01779513          	slli	a0,a5,0x17
    3298:	00c12083          	lw	ra,12(sp)
    329c:	00856533          	or	a0,a0,s0
    32a0:	00812403          	lw	s0,8(sp)
    32a4:	01010113          	addi	sp,sp,16
    32a8:	00008067          	ret
    32ac:	09900713          	li	a4,153
    32b0:	02f75063          	bge	a4,a5,32d0 <__floatunsisf+0x80>
    32b4:	01b50713          	addi	a4,a0,27
    32b8:	00500693          	li	a3,5
    32bc:	00e41733          	sll	a4,s0,a4
    32c0:	40a686b3          	sub	a3,a3,a0
    32c4:	00e03733          	snez	a4,a4
    32c8:	00d45433          	srl	s0,s0,a3
    32cc:	00876433          	or	s0,a4,s0
    32d0:	00500713          	li	a4,5
    32d4:	00a75663          	bge	a4,a0,32e0 <__floatunsisf+0x90>
    32d8:	ffb50713          	addi	a4,a0,-5
    32dc:	00e41433          	sll	s0,s0,a4
    32e0:	fc000737          	lui	a4,0xfc000
    32e4:	fff70713          	addi	a4,a4,-1 # fbffffff <__ctr0_io_space_begin+0xfc0001ff>
    32e8:	00747693          	andi	a3,s0,7
    32ec:	00e47733          	and	a4,s0,a4
    32f0:	00068a63          	beqz	a3,3304 <__floatunsisf+0xb4>
    32f4:	00f47413          	andi	s0,s0,15
    32f8:	00400693          	li	a3,4
    32fc:	00d40463          	beq	s0,a3,3304 <__floatunsisf+0xb4>
    3300:	00470713          	addi	a4,a4,4
    3304:	040006b7          	lui	a3,0x4000
    3308:	00d776b3          	and	a3,a4,a3
    330c:	00068c63          	beqz	a3,3324 <__floatunsisf+0xd4>
    3310:	fc0007b7          	lui	a5,0xfc000
    3314:	fff78793          	addi	a5,a5,-1 # fbffffff <__ctr0_io_space_begin+0xfc0001ff>
    3318:	00f77733          	and	a4,a4,a5
    331c:	09f00793          	li	a5,159
    3320:	40a787b3          	sub	a5,a5,a0
    3324:	00375413          	srli	s0,a4,0x3
    3328:	f65ff06f          	j	328c <__floatunsisf+0x3c>

0000332c <__extendsfdf2>:
    332c:	01755713          	srli	a4,a0,0x17
    3330:	0ff77713          	andi	a4,a4,255
    3334:	ff010113          	addi	sp,sp,-16
    3338:	00170793          	addi	a5,a4,1
    333c:	00812423          	sw	s0,8(sp)
    3340:	00912223          	sw	s1,4(sp)
    3344:	00951413          	slli	s0,a0,0x9
    3348:	00112623          	sw	ra,12(sp)
    334c:	0fe7f793          	andi	a5,a5,254
    3350:	00945413          	srli	s0,s0,0x9
    3354:	01f55493          	srli	s1,a0,0x1f
    3358:	04078263          	beqz	a5,339c <__extendsfdf2+0x70>
    335c:	00345793          	srli	a5,s0,0x3
    3360:	38070713          	addi	a4,a4,896
    3364:	01d41413          	slli	s0,s0,0x1d
    3368:	00c79793          	slli	a5,a5,0xc
    336c:	01471713          	slli	a4,a4,0x14
    3370:	00c7d793          	srli	a5,a5,0xc
    3374:	01f49513          	slli	a0,s1,0x1f
    3378:	00f767b3          	or	a5,a4,a5
    337c:	00c12083          	lw	ra,12(sp)
    3380:	00a7e733          	or	a4,a5,a0
    3384:	00040513          	mv	a0,s0
    3388:	00812403          	lw	s0,8(sp)
    338c:	00412483          	lw	s1,4(sp)
    3390:	00070593          	mv	a1,a4
    3394:	01010113          	addi	sp,sp,16
    3398:	00008067          	ret
    339c:	04071663          	bnez	a4,33e8 <__extendsfdf2+0xbc>
    33a0:	00000793          	li	a5,0
    33a4:	fc0402e3          	beqz	s0,3368 <__extendsfdf2+0x3c>
    33a8:	00040513          	mv	a0,s0
    33ac:	2b8000ef          	jal	ra,3664 <__clzsi2>
    33b0:	00a00793          	li	a5,10
    33b4:	02a7c263          	blt	a5,a0,33d8 <__extendsfdf2+0xac>
    33b8:	00b00793          	li	a5,11
    33bc:	40a787b3          	sub	a5,a5,a0
    33c0:	01550713          	addi	a4,a0,21
    33c4:	00f457b3          	srl	a5,s0,a5
    33c8:	00e41433          	sll	s0,s0,a4
    33cc:	38900713          	li	a4,905
    33d0:	40a70733          	sub	a4,a4,a0
    33d4:	f95ff06f          	j	3368 <__extendsfdf2+0x3c>
    33d8:	ff550793          	addi	a5,a0,-11
    33dc:	00f417b3          	sll	a5,s0,a5
    33e0:	00000413          	li	s0,0
    33e4:	fe9ff06f          	j	33cc <__extendsfdf2+0xa0>
    33e8:	00000793          	li	a5,0
    33ec:	00040a63          	beqz	s0,3400 <__extendsfdf2+0xd4>
    33f0:	00345793          	srli	a5,s0,0x3
    33f4:	00080737          	lui	a4,0x80
    33f8:	01d41413          	slli	s0,s0,0x1d
    33fc:	00e7e7b3          	or	a5,a5,a4
    3400:	7ff00713          	li	a4,2047
    3404:	f65ff06f          	j	3368 <__extendsfdf2+0x3c>

00003408 <__truncdfsf2>:
    3408:	0145d613          	srli	a2,a1,0x14
    340c:	7ff67613          	andi	a2,a2,2047
    3410:	00c59693          	slli	a3,a1,0xc
    3414:	00160713          	addi	a4,a2,1
    3418:	0096d793          	srli	a5,a3,0x9
    341c:	7fe77713          	andi	a4,a4,2046
    3420:	01d55693          	srli	a3,a0,0x1d
    3424:	00f6e6b3          	or	a3,a3,a5
    3428:	01f5d593          	srli	a1,a1,0x1f
    342c:	00351793          	slli	a5,a0,0x3
    3430:	0a070663          	beqz	a4,34dc <__truncdfsf2+0xd4>
    3434:	c8060713          	addi	a4,a2,-896
    3438:	0fe00813          	li	a6,254
    343c:	0ce84263          	blt	a6,a4,3500 <__truncdfsf2+0xf8>
    3440:	08e04063          	bgtz	a4,34c0 <__truncdfsf2+0xb8>
    3444:	fe900513          	li	a0,-23
    3448:	12a74063          	blt	a4,a0,3568 <__truncdfsf2+0x160>
    344c:	00800537          	lui	a0,0x800
    3450:	00a6e6b3          	or	a3,a3,a0
    3454:	01e00513          	li	a0,30
    3458:	40e50533          	sub	a0,a0,a4
    345c:	01f00813          	li	a6,31
    3460:	02a84863          	blt	a6,a0,3490 <__truncdfsf2+0x88>
    3464:	c8260613          	addi	a2,a2,-894
    3468:	00a7d533          	srl	a0,a5,a0
    346c:	00c797b3          	sll	a5,a5,a2
    3470:	00f037b3          	snez	a5,a5
    3474:	00c696b3          	sll	a3,a3,a2
    3478:	00d7e7b3          	or	a5,a5,a3
    347c:	00f567b3          	or	a5,a0,a5
    3480:	00000713          	li	a4,0
    3484:	0077f693          	andi	a3,a5,7
    3488:	08068063          	beqz	a3,3508 <__truncdfsf2+0x100>
    348c:	0e40006f          	j	3570 <__truncdfsf2+0x168>
    3490:	ffe00813          	li	a6,-2
    3494:	40e80733          	sub	a4,a6,a4
    3498:	02000893          	li	a7,32
    349c:	00e6d733          	srl	a4,a3,a4
    34a0:	00000813          	li	a6,0
    34a4:	01150663          	beq	a0,a7,34b0 <__truncdfsf2+0xa8>
    34a8:	ca260613          	addi	a2,a2,-862
    34ac:	00c69833          	sll	a6,a3,a2
    34b0:	00f867b3          	or	a5,a6,a5
    34b4:	00f037b3          	snez	a5,a5
    34b8:	00f767b3          	or	a5,a4,a5
    34bc:	fc5ff06f          	j	3480 <__truncdfsf2+0x78>
    34c0:	00651513          	slli	a0,a0,0x6
    34c4:	00a03533          	snez	a0,a0
    34c8:	00369693          	slli	a3,a3,0x3
    34cc:	01d7d793          	srli	a5,a5,0x1d
    34d0:	00d566b3          	or	a3,a0,a3
    34d4:	00f6e7b3          	or	a5,a3,a5
    34d8:	fadff06f          	j	3484 <__truncdfsf2+0x7c>
    34dc:	00f6e7b3          	or	a5,a3,a5
    34e0:	00061663          	bnez	a2,34ec <__truncdfsf2+0xe4>
    34e4:	00f037b3          	snez	a5,a5
    34e8:	f99ff06f          	j	3480 <__truncdfsf2+0x78>
    34ec:	0ff00713          	li	a4,255
    34f0:	00078c63          	beqz	a5,3508 <__truncdfsf2+0x100>
    34f4:	00369693          	slli	a3,a3,0x3
    34f8:	020007b7          	lui	a5,0x2000
    34fc:	fd9ff06f          	j	34d4 <__truncdfsf2+0xcc>
    3500:	00000793          	li	a5,0
    3504:	0ff00713          	li	a4,255
    3508:	040006b7          	lui	a3,0x4000
    350c:	00d7f6b3          	and	a3,a5,a3
    3510:	00068e63          	beqz	a3,352c <__truncdfsf2+0x124>
    3514:	00170713          	addi	a4,a4,1 # 80001 <__crt0_copy_data_src_begin+0x7be91>
    3518:	0ff00693          	li	a3,255
    351c:	06d70463          	beq	a4,a3,3584 <__truncdfsf2+0x17c>
    3520:	fc0006b7          	lui	a3,0xfc000
    3524:	fff68693          	addi	a3,a3,-1 # fbffffff <__ctr0_io_space_begin+0xfc0001ff>
    3528:	00d7f7b3          	and	a5,a5,a3
    352c:	0ff00693          	li	a3,255
    3530:	0037d793          	srli	a5,a5,0x3
    3534:	00d71863          	bne	a4,a3,3544 <__truncdfsf2+0x13c>
    3538:	00078663          	beqz	a5,3544 <__truncdfsf2+0x13c>
    353c:	004007b7          	lui	a5,0x400
    3540:	00000593          	li	a1,0
    3544:	7f800537          	lui	a0,0x7f800
    3548:	01771713          	slli	a4,a4,0x17
    354c:	00979793          	slli	a5,a5,0x9
    3550:	00a77733          	and	a4,a4,a0
    3554:	0097d793          	srli	a5,a5,0x9
    3558:	00f767b3          	or	a5,a4,a5
    355c:	01f59513          	slli	a0,a1,0x1f
    3560:	00a7e533          	or	a0,a5,a0
    3564:	00008067          	ret
    3568:	00100793          	li	a5,1
    356c:	00000713          	li	a4,0
    3570:	00f7f693          	andi	a3,a5,15
    3574:	00400613          	li	a2,4
    3578:	f8c688e3          	beq	a3,a2,3508 <__truncdfsf2+0x100>
    357c:	00478793          	addi	a5,a5,4 # 400004 <__crt0_copy_data_src_begin+0x3fbe94>
    3580:	f89ff06f          	j	3508 <__truncdfsf2+0x100>
    3584:	00000793          	li	a5,0
    3588:	fa5ff06f          	j	352c <__truncdfsf2+0x124>

0000358c <__mulsi3>:
    358c:	00050613          	mv	a2,a0
    3590:	00000513          	li	a0,0
    3594:	0015f693          	andi	a3,a1,1
    3598:	00068463          	beqz	a3,35a0 <__mulsi3+0x14>
    359c:	00c50533          	add	a0,a0,a2
    35a0:	0015d593          	srli	a1,a1,0x1
    35a4:	00161613          	slli	a2,a2,0x1
    35a8:	fe0596e3          	bnez	a1,3594 <__mulsi3+0x8>
    35ac:	00008067          	ret

000035b0 <__divsi3>:
    35b0:	06054063          	bltz	a0,3610 <__umodsi3+0x10>
    35b4:	0605c663          	bltz	a1,3620 <__umodsi3+0x20>

000035b8 <__udivsi3>:
    35b8:	00058613          	mv	a2,a1
    35bc:	00050593          	mv	a1,a0
    35c0:	fff00513          	li	a0,-1
    35c4:	02060c63          	beqz	a2,35fc <__udivsi3+0x44>
    35c8:	00100693          	li	a3,1
    35cc:	00b67a63          	bgeu	a2,a1,35e0 <__udivsi3+0x28>
    35d0:	00c05863          	blez	a2,35e0 <__udivsi3+0x28>
    35d4:	00161613          	slli	a2,a2,0x1
    35d8:	00169693          	slli	a3,a3,0x1
    35dc:	feb66ae3          	bltu	a2,a1,35d0 <__udivsi3+0x18>
    35e0:	00000513          	li	a0,0
    35e4:	00c5e663          	bltu	a1,a2,35f0 <__udivsi3+0x38>
    35e8:	40c585b3          	sub	a1,a1,a2
    35ec:	00d56533          	or	a0,a0,a3
    35f0:	0016d693          	srli	a3,a3,0x1
    35f4:	00165613          	srli	a2,a2,0x1
    35f8:	fe0696e3          	bnez	a3,35e4 <__udivsi3+0x2c>
    35fc:	00008067          	ret

00003600 <__umodsi3>:
    3600:	00008293          	mv	t0,ra
    3604:	fb5ff0ef          	jal	ra,35b8 <__udivsi3>
    3608:	00058513          	mv	a0,a1
    360c:	00028067          	jr	t0
    3610:	40a00533          	neg	a0,a0
    3614:	00b04863          	bgtz	a1,3624 <__umodsi3+0x24>
    3618:	40b005b3          	neg	a1,a1
    361c:	f9dff06f          	j	35b8 <__udivsi3>
    3620:	40b005b3          	neg	a1,a1
    3624:	00008293          	mv	t0,ra
    3628:	f91ff0ef          	jal	ra,35b8 <__udivsi3>
    362c:	40a00533          	neg	a0,a0
    3630:	00028067          	jr	t0

00003634 <__modsi3>:
    3634:	00008293          	mv	t0,ra
    3638:	0005ca63          	bltz	a1,364c <__modsi3+0x18>
    363c:	00054c63          	bltz	a0,3654 <__modsi3+0x20>
    3640:	f79ff0ef          	jal	ra,35b8 <__udivsi3>
    3644:	00058513          	mv	a0,a1
    3648:	00028067          	jr	t0
    364c:	40b005b3          	neg	a1,a1
    3650:	fe0558e3          	bgez	a0,3640 <__modsi3+0xc>
    3654:	40a00533          	neg	a0,a0
    3658:	f61ff0ef          	jal	ra,35b8 <__udivsi3>
    365c:	40b00533          	neg	a0,a1
    3660:	00028067          	jr	t0

00003664 <__clzsi2>:
    3664:	000107b7          	lui	a5,0x10
    3668:	02f57a63          	bgeu	a0,a5,369c <__clzsi2+0x38>
    366c:	0ff00793          	li	a5,255
    3670:	00a7b7b3          	sltu	a5,a5,a0
    3674:	00379793          	slli	a5,a5,0x3
    3678:	00004737          	lui	a4,0x4
    367c:	02000693          	li	a3,32
    3680:	40f686b3          	sub	a3,a3,a5
    3684:	00f55533          	srl	a0,a0,a5
    3688:	07070793          	addi	a5,a4,112 # 4070 <__clz_tab>
    368c:	00a78533          	add	a0,a5,a0
    3690:	00054503          	lbu	a0,0(a0) # 7f800000 <__crt0_copy_data_src_begin+0x7f7fbe90>
    3694:	40a68533          	sub	a0,a3,a0
    3698:	00008067          	ret
    369c:	01000737          	lui	a4,0x1000
    36a0:	01000793          	li	a5,16
    36a4:	fce56ae3          	bltu	a0,a4,3678 <__clzsi2+0x14>
    36a8:	01800793          	li	a5,24
    36ac:	fcdff06f          	j	3678 <__clzsi2+0x14>
