
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
      18:	11c50513          	addi	a0,a0,284 # 130 <__crt0_dummy_trap_handler>
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
      c0:	82818593          	addi	a1,gp,-2008 # 80000028 <__neorv32_rte_vector_lut>
      c4:	89c18613          	addi	a2,gp,-1892 # 8000009c <__BSS_END__>

000000c8 <__crt0_clear_bss_loop>:
      c8:	00c5d863          	bge	a1,a2,d8 <__crt0_clear_bss_loop_end>
      cc:	00058023          	sb	zero,0(a1)
      d0:	00158593          	addi	a1,a1,1
      d4:	ff5ff06f          	j	c8 <__crt0_clear_bss_loop>

000000d8 <__crt0_clear_bss_loop_end>:
      d8:	00003597          	auipc	a1,0x3
      dc:	94058593          	addi	a1,a1,-1728 # 2a18 <__crt0_copy_data_src_begin>
      e0:	80000617          	auipc	a2,0x80000
      e4:	f2060613          	addi	a2,a2,-224 # 80000000 <__ctr0_io_space_begin+0x80000200>
      e8:	80000697          	auipc	a3,0x80000
      ec:	f4068693          	addi	a3,a3,-192 # 80000028 <__ctr0_io_space_begin+0x80000228>

000000f0 <__crt0_copy_data_loop>:
      f0:	00d65c63          	bge	a2,a3,108 <__crt0_copy_data_loop_end>
      f4:	00058703          	lb	a4,0(a1)
      f8:	00e60023          	sb	a4,0(a2)
      fc:	00158593          	addi	a1,a1,1
     100:	00160613          	addi	a2,a2,1
     104:	fedff06f          	j	f0 <__crt0_copy_data_loop>

00000108 <__crt0_copy_data_loop_end>:
     108:	00000513          	li	a0,0
     10c:	00000593          	li	a1,0
     110:	06c000ef          	jal	ra,17c <main>

00000114 <__crt0_main_aftermath>:
     114:	34051073          	csrw	mscratch,a0
     118:	00000093          	li	ra,0
     11c:	00008463          	beqz	ra,124 <__crt0_main_aftermath_end>
     120:	000080e7          	jalr	ra

00000124 <__crt0_main_aftermath_end>:
     124:	30047073          	csrci	mstatus,8

00000128 <__crt0_main_aftermath_end_loop>:
     128:	10500073          	wfi
     12c:	ffdff06f          	j	128 <__crt0_main_aftermath_end_loop>

00000130 <__crt0_dummy_trap_handler>:
     130:	ff810113          	addi	sp,sp,-8
     134:	00812023          	sw	s0,0(sp)
     138:	00912223          	sw	s1,4(sp)
     13c:	34202473          	csrr	s0,mcause
     140:	02044663          	bltz	s0,16c <__crt0_dummy_trap_handler_irq>
     144:	34102473          	csrr	s0,mepc

00000148 <__crt0_dummy_trap_handler_exc_c_check>:
     148:	00041483          	lh	s1,0(s0)
     14c:	0034f493          	andi	s1,s1,3
     150:	00240413          	addi	s0,s0,2
     154:	34141073          	csrw	mepc,s0
     158:	00300413          	li	s0,3
     15c:	00941863          	bne	s0,s1,16c <__crt0_dummy_trap_handler_irq>

00000160 <__crt0_dummy_trap_handler_exc_uncrompressed>:
     160:	34102473          	csrr	s0,mepc
     164:	00240413          	addi	s0,s0,2
     168:	34141073          	csrw	mepc,s0

0000016c <__crt0_dummy_trap_handler_irq>:
     16c:	00012403          	lw	s0,0(sp)
     170:	00412483          	lw	s1,4(sp)
     174:	00810113          	addi	sp,sp,8
     178:	30200073          	mret

0000017c <main>:
     17c:	fb010113          	addi	sp,sp,-80
     180:	04112623          	sw	ra,76(sp)
     184:	04812423          	sw	s0,72(sp)
     188:	04912223          	sw	s1,68(sp)
     18c:	05212023          	sw	s2,64(sp)
     190:	03312e23          	sw	s3,60(sp)
     194:	03412c23          	sw	s4,56(sp)
     198:	03512a23          	sw	s5,52(sp)
     19c:	03612823          	sw	s6,48(sp)
     1a0:	03712623          	sw	s7,44(sp)
     1a4:	03812423          	sw	s8,40(sp)
     1a8:	03912223          	sw	s9,36(sp)
     1ac:	03a12023          	sw	s10,32(sp)
     1b0:	01b12e23          	sw	s11,28(sp)
     1b4:	291000ef          	jal	ra,c44 <neorv32_rte_setup>
     1b8:	2e8000ef          	jal	ra,4a0 <neorv32_uart0_available>
     1bc:	02050663          	beqz	a0,1e8 <main+0x6c>
     1c0:	00005537          	lui	a0,0x5
     1c4:	00000613          	li	a2,0
     1c8:	00000593          	li	a1,0
     1cc:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x20e8>
     1d0:	2e0000ef          	jal	ra,4b0 <neorv32_uart0_setup>
     1d4:	00000513          	li	a0,0
     1d8:	2c5000ef          	jal	ra,c9c <neorv32_rte_check_isa>
     1dc:	00002537          	lui	a0,0x2
     1e0:	50c50513          	addi	a0,a0,1292 # 250c <__etext>
     1e4:	390000ef          	jal	ra,574 <neorv32_uart0_print>
     1e8:	800007b7          	lui	a5,0x80000
     1ec:	0007ad03          	lw	s10,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
     1f0:	0047ad83          	lw	s11,4(a5)
     1f4:	8101a903          	lw	s2,-2032(gp) # 80000010 <__DATA_BEGIN__+0x10>
     1f8:	8141a983          	lw	s3,-2028(gp) # 80000014 <__DATA_BEGIN__+0x14>
     1fc:	8181aa03          	lw	s4,-2024(gp) # 80000018 <__DATA_BEGIN__+0x18>
     200:	81c1aa83          	lw	s5,-2020(gp) # 8000001c <__DATA_BEGIN__+0x1c>
     204:	8201ab03          	lw	s6,-2016(gp) # 80000020 <__DATA_BEGIN__+0x20>
     208:	8241ab83          	lw	s7,-2012(gp) # 80000024 <__DATA_BEGIN__+0x24>
     20c:	00000493          	li	s1,0
     210:	57c000ef          	jal	ra,78c <neorv32_cpu_get_systime>
     214:	00050413          	mv	s0,a0
     218:	00058c13          	mv	s8,a1
     21c:	00100793          	li	a5,1
     220:	000d0813          	mv	a6,s10
     224:	000d8713          	mv	a4,s11
     228:	00078513          	mv	a0,a5
     22c:	00e12623          	sw	a4,12(sp)
     230:	01012423          	sw	a6,8(sp)
     234:	00f12223          	sw	a5,4(sp)
     238:	108020ef          	jal	ra,2340 <__floatsidf>
     23c:	8081a603          	lw	a2,-2040(gp) # 80000008 <__DATA_BEGIN__+0x8>
     240:	80c1a683          	lw	a3,-2036(gp) # 8000000c <__DATA_BEGIN__+0xc>
     244:	275010ef          	jal	ra,1cb8 <__muldf3>
     248:	00090613          	mv	a2,s2
     24c:	00098693          	mv	a3,s3
     250:	2b1000ef          	jal	ra,d00 <__adddf3>
     254:	00050613          	mv	a2,a0
     258:	00058693          	mv	a3,a1
     25c:	25d010ef          	jal	ra,1cb8 <__muldf3>
     260:	00090613          	mv	a2,s2
     264:	00098693          	mv	a3,s3
     268:	299000ef          	jal	ra,d00 <__adddf3>
     26c:	00050613          	mv	a2,a0
     270:	00058693          	mv	a3,a1
     274:	000a0513          	mv	a0,s4
     278:	000a8593          	mv	a1,s5
     27c:	25c010ef          	jal	ra,14d8 <__divdf3>
     280:	00812803          	lw	a6,8(sp)
     284:	00c12703          	lw	a4,12(sp)
     288:	00058693          	mv	a3,a1
     28c:	00050613          	mv	a2,a0
     290:	00070593          	mv	a1,a4
     294:	00080513          	mv	a0,a6
     298:	269000ef          	jal	ra,d00 <__adddf3>
     29c:	00412783          	lw	a5,4(sp)
     2a0:	000016b7          	lui	a3,0x1
     2a4:	bb868893          	addi	a7,a3,-1096 # bb8 <__neorv32_rte_debug_exc_handler+0x19c>
     2a8:	00178793          	addi	a5,a5,1
     2ac:	00050813          	mv	a6,a0
     2b0:	00058713          	mv	a4,a1
     2b4:	f7179ae3          	bne	a5,a7,228 <main+0xac>
     2b8:	8081a603          	lw	a2,-2040(gp) # 80000008 <__DATA_BEGIN__+0x8>
     2bc:	80c1a683          	lw	a3,-2036(gp) # 8000000c <__DATA_BEGIN__+0xc>
     2c0:	1f9010ef          	jal	ra,1cb8 <__muldf3>
     2c4:	00a12623          	sw	a0,12(sp)
     2c8:	00b12423          	sw	a1,8(sp)
     2cc:	4c0000ef          	jal	ra,78c <neorv32_cpu_get_systime>
     2d0:	00812803          	lw	a6,8(sp)
     2d4:	00c12883          	lw	a7,12(sp)
     2d8:	40850433          	sub	s0,a0,s0
     2dc:	008537b3          	sltu	a5,a0,s0
     2e0:	41858c33          	sub	s8,a1,s8
     2e4:	40fc07b3          	sub	a5,s8,a5
     2e8:	000b0613          	mv	a2,s6
     2ec:	000b8693          	mv	a3,s7
     2f0:	00088513          	mv	a0,a7
     2f4:	00080593          	mv	a1,a6
     2f8:	00f12223          	sw	a5,4(sp)
     2fc:	1bd010ef          	jal	ra,1cb8 <__muldf3>
     300:	00412783          	lw	a5,4(sp)
     304:	00050613          	mv	a2,a0
     308:	00002537          	lui	a0,0x2
     30c:	00048813          	mv	a6,s1
     310:	00058693          	mv	a3,a1
     314:	00040713          	mv	a4,s0
     318:	52050513          	addi	a0,a0,1312 # 2520 <__etext+0x14>
     31c:	2b0000ef          	jal	ra,5cc <neorv32_uart0_printf>
     320:	00148493          	addi	s1,s1,1
     324:	00a00793          	li	a5,10
     328:	eef494e3          	bne	s1,a5,210 <main+0x94>
     32c:	ee1ff06f          	j	20c <main+0x90>

00000330 <__neorv32_uart_itoa>:
     330:	fd010113          	addi	sp,sp,-48
     334:	02812423          	sw	s0,40(sp)
     338:	02912223          	sw	s1,36(sp)
     33c:	03212023          	sw	s2,32(sp)
     340:	01312e23          	sw	s3,28(sp)
     344:	01412c23          	sw	s4,24(sp)
     348:	02112623          	sw	ra,44(sp)
     34c:	01512a23          	sw	s5,20(sp)
     350:	00002a37          	lui	s4,0x2
     354:	00050493          	mv	s1,a0
     358:	00058413          	mv	s0,a1
     35c:	00058523          	sb	zero,10(a1)
     360:	00000993          	li	s3,0
     364:	00410913          	addi	s2,sp,4
     368:	54ca0a13          	addi	s4,s4,1356 # 254c <numbers.1>
     36c:	00a00593          	li	a1,10
     370:	00048513          	mv	a0,s1
     374:	0e8020ef          	jal	ra,245c <__umodsi3>
     378:	00aa0533          	add	a0,s4,a0
     37c:	00054783          	lbu	a5,0(a0)
     380:	01390ab3          	add	s5,s2,s3
     384:	00048513          	mv	a0,s1
     388:	00fa8023          	sb	a5,0(s5)
     38c:	00a00593          	li	a1,10
     390:	084020ef          	jal	ra,2414 <__udivsi3>
     394:	00198993          	addi	s3,s3,1
     398:	00a00793          	li	a5,10
     39c:	00050493          	mv	s1,a0
     3a0:	fcf996e3          	bne	s3,a5,36c <__neorv32_uart_itoa+0x3c>
     3a4:	00090693          	mv	a3,s2
     3a8:	00900713          	li	a4,9
     3ac:	03000613          	li	a2,48
     3b0:	0096c583          	lbu	a1,9(a3)
     3b4:	00070793          	mv	a5,a4
     3b8:	fff70713          	addi	a4,a4,-1
     3bc:	01071713          	slli	a4,a4,0x10
     3c0:	01075713          	srli	a4,a4,0x10
     3c4:	00c59a63          	bne	a1,a2,3d8 <__neorv32_uart_itoa+0xa8>
     3c8:	000684a3          	sb	zero,9(a3)
     3cc:	fff68693          	addi	a3,a3,-1
     3d0:	fe0710e3          	bnez	a4,3b0 <__neorv32_uart_itoa+0x80>
     3d4:	00000793          	li	a5,0
     3d8:	00f907b3          	add	a5,s2,a5
     3dc:	00000593          	li	a1,0
     3e0:	0007c703          	lbu	a4,0(a5)
     3e4:	00070c63          	beqz	a4,3fc <__neorv32_uart_itoa+0xcc>
     3e8:	00158693          	addi	a3,a1,1
     3ec:	00b405b3          	add	a1,s0,a1
     3f0:	00e58023          	sb	a4,0(a1)
     3f4:	01069593          	slli	a1,a3,0x10
     3f8:	0105d593          	srli	a1,a1,0x10
     3fc:	fff78713          	addi	a4,a5,-1
     400:	02f91863          	bne	s2,a5,430 <__neorv32_uart_itoa+0x100>
     404:	00b40433          	add	s0,s0,a1
     408:	00040023          	sb	zero,0(s0)
     40c:	02c12083          	lw	ra,44(sp)
     410:	02812403          	lw	s0,40(sp)
     414:	02412483          	lw	s1,36(sp)
     418:	02012903          	lw	s2,32(sp)
     41c:	01c12983          	lw	s3,28(sp)
     420:	01812a03          	lw	s4,24(sp)
     424:	01412a83          	lw	s5,20(sp)
     428:	03010113          	addi	sp,sp,48
     42c:	00008067          	ret
     430:	00070793          	mv	a5,a4
     434:	fadff06f          	j	3e0 <__neorv32_uart_itoa+0xb0>

00000438 <__neorv32_uart_tohex>:
     438:	00002637          	lui	a2,0x2
     43c:	00758693          	addi	a3,a1,7
     440:	00000713          	li	a4,0
     444:	55860613          	addi	a2,a2,1368 # 2558 <symbols.0>
     448:	02000813          	li	a6,32
     44c:	00e557b3          	srl	a5,a0,a4
     450:	00f7f793          	andi	a5,a5,15
     454:	00f607b3          	add	a5,a2,a5
     458:	0007c783          	lbu	a5,0(a5)
     45c:	00470713          	addi	a4,a4,4
     460:	fff68693          	addi	a3,a3,-1
     464:	00f680a3          	sb	a5,1(a3)
     468:	ff0712e3          	bne	a4,a6,44c <__neorv32_uart_tohex+0x14>
     46c:	00058423          	sb	zero,8(a1)
     470:	00008067          	ret

00000474 <__neorv32_uart_touppercase.constprop.0>:
     474:	00b50693          	addi	a3,a0,11
     478:	01900613          	li	a2,25
     47c:	00054783          	lbu	a5,0(a0)
     480:	f9f78713          	addi	a4,a5,-97
     484:	0ff77713          	andi	a4,a4,255
     488:	00e66663          	bltu	a2,a4,494 <__neorv32_uart_touppercase.constprop.0+0x20>
     48c:	fe078793          	addi	a5,a5,-32
     490:	00f50023          	sb	a5,0(a0)
     494:	00150513          	addi	a0,a0,1
     498:	fed512e3          	bne	a0,a3,47c <__neorv32_uart_touppercase.constprop.0+0x8>
     49c:	00008067          	ret

000004a0 <neorv32_uart0_available>:
     4a0:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     4a4:	01255513          	srli	a0,a0,0x12
     4a8:	00157513          	andi	a0,a0,1
     4ac:	00008067          	ret

000004b0 <neorv32_uart0_setup>:
     4b0:	ff010113          	addi	sp,sp,-16
     4b4:	00812423          	sw	s0,8(sp)
     4b8:	00912223          	sw	s1,4(sp)
     4bc:	00112623          	sw	ra,12(sp)
     4c0:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     4c4:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
     4c8:	00058413          	mv	s0,a1
     4cc:	00151593          	slli	a1,a0,0x1
     4d0:	00078513          	mv	a0,a5
     4d4:	00060493          	mv	s1,a2
     4d8:	73d010ef          	jal	ra,2414 <__udivsi3>
     4dc:	01051513          	slli	a0,a0,0x10
     4e0:	000017b7          	lui	a5,0x1
     4e4:	01055513          	srli	a0,a0,0x10
     4e8:	00000713          	li	a4,0
     4ec:	ffe78793          	addi	a5,a5,-2 # ffe <__adddf3+0x2fe>
     4f0:	04a7e463          	bltu	a5,a0,538 <neorv32_uart0_setup+0x88>
     4f4:	0034f793          	andi	a5,s1,3
     4f8:	00347413          	andi	s0,s0,3
     4fc:	fff50513          	addi	a0,a0,-1
     500:	01479793          	slli	a5,a5,0x14
     504:	01641413          	slli	s0,s0,0x16
     508:	00f567b3          	or	a5,a0,a5
     50c:	0087e7b3          	or	a5,a5,s0
     510:	01871713          	slli	a4,a4,0x18
     514:	00c12083          	lw	ra,12(sp)
     518:	00812403          	lw	s0,8(sp)
     51c:	00e7e7b3          	or	a5,a5,a4
     520:	10000737          	lui	a4,0x10000
     524:	00e7e7b3          	or	a5,a5,a4
     528:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     52c:	00412483          	lw	s1,4(sp)
     530:	01010113          	addi	sp,sp,16
     534:	00008067          	ret
     538:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffd5e6>
     53c:	0fd6f693          	andi	a3,a3,253
     540:	00069a63          	bnez	a3,554 <neorv32_uart0_setup+0xa4>
     544:	00355513          	srli	a0,a0,0x3
     548:	00170713          	addi	a4,a4,1
     54c:	0ff77713          	andi	a4,a4,255
     550:	fa1ff06f          	j	4f0 <neorv32_uart0_setup+0x40>
     554:	00155513          	srli	a0,a0,0x1
     558:	ff1ff06f          	j	548 <neorv32_uart0_setup+0x98>

0000055c <neorv32_uart0_putc>:
     55c:	00040737          	lui	a4,0x40
     560:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     564:	00e7f7b3          	and	a5,a5,a4
     568:	fe079ce3          	bnez	a5,560 <neorv32_uart0_putc+0x4>
     56c:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
     570:	00008067          	ret

00000574 <neorv32_uart0_print>:
     574:	ff010113          	addi	sp,sp,-16
     578:	00812423          	sw	s0,8(sp)
     57c:	01212023          	sw	s2,0(sp)
     580:	00112623          	sw	ra,12(sp)
     584:	00912223          	sw	s1,4(sp)
     588:	00050413          	mv	s0,a0
     58c:	00a00913          	li	s2,10
     590:	00044483          	lbu	s1,0(s0)
     594:	00140413          	addi	s0,s0,1
     598:	00049e63          	bnez	s1,5b4 <neorv32_uart0_print+0x40>
     59c:	00c12083          	lw	ra,12(sp)
     5a0:	00812403          	lw	s0,8(sp)
     5a4:	00412483          	lw	s1,4(sp)
     5a8:	00012903          	lw	s2,0(sp)
     5ac:	01010113          	addi	sp,sp,16
     5b0:	00008067          	ret
     5b4:	01249663          	bne	s1,s2,5c0 <neorv32_uart0_print+0x4c>
     5b8:	00d00513          	li	a0,13
     5bc:	fa1ff0ef          	jal	ra,55c <neorv32_uart0_putc>
     5c0:	00048513          	mv	a0,s1
     5c4:	f99ff0ef          	jal	ra,55c <neorv32_uart0_putc>
     5c8:	fc9ff06f          	j	590 <neorv32_uart0_print+0x1c>

000005cc <neorv32_uart0_printf>:
     5cc:	fa010113          	addi	sp,sp,-96
     5d0:	04f12a23          	sw	a5,84(sp)
     5d4:	04410793          	addi	a5,sp,68
     5d8:	02812c23          	sw	s0,56(sp)
     5dc:	03212823          	sw	s2,48(sp)
     5e0:	03312623          	sw	s3,44(sp)
     5e4:	03512223          	sw	s5,36(sp)
     5e8:	03612023          	sw	s6,32(sp)
     5ec:	01712e23          	sw	s7,28(sp)
     5f0:	01812c23          	sw	s8,24(sp)
     5f4:	01912a23          	sw	s9,20(sp)
     5f8:	02112e23          	sw	ra,60(sp)
     5fc:	02912a23          	sw	s1,52(sp)
     600:	03412423          	sw	s4,40(sp)
     604:	00050413          	mv	s0,a0
     608:	04b12223          	sw	a1,68(sp)
     60c:	04c12423          	sw	a2,72(sp)
     610:	04d12623          	sw	a3,76(sp)
     614:	04e12823          	sw	a4,80(sp)
     618:	05012c23          	sw	a6,88(sp)
     61c:	05112e23          	sw	a7,92(sp)
     620:	00f12023          	sw	a5,0(sp)
     624:	02500a93          	li	s5,37
     628:	00a00b13          	li	s6,10
     62c:	07000913          	li	s2,112
     630:	05800993          	li	s3,88
     634:	07500b93          	li	s7,117
     638:	07800c13          	li	s8,120
     63c:	07300c93          	li	s9,115
     640:	00044483          	lbu	s1,0(s0)
     644:	02049c63          	bnez	s1,67c <neorv32_uart0_printf+0xb0>
     648:	03c12083          	lw	ra,60(sp)
     64c:	03812403          	lw	s0,56(sp)
     650:	03412483          	lw	s1,52(sp)
     654:	03012903          	lw	s2,48(sp)
     658:	02c12983          	lw	s3,44(sp)
     65c:	02812a03          	lw	s4,40(sp)
     660:	02412a83          	lw	s5,36(sp)
     664:	02012b03          	lw	s6,32(sp)
     668:	01c12b83          	lw	s7,28(sp)
     66c:	01812c03          	lw	s8,24(sp)
     670:	01412c83          	lw	s9,20(sp)
     674:	06010113          	addi	sp,sp,96
     678:	00008067          	ret
     67c:	0f549c63          	bne	s1,s5,774 <neorv32_uart0_printf+0x1a8>
     680:	00240a13          	addi	s4,s0,2
     684:	00144403          	lbu	s0,1(s0)
     688:	0d240263          	beq	s0,s2,74c <neorv32_uart0_printf+0x180>
     68c:	06896463          	bltu	s2,s0,6f4 <neorv32_uart0_printf+0x128>
     690:	06300793          	li	a5,99
     694:	08f40463          	beq	s0,a5,71c <neorv32_uart0_printf+0x150>
     698:	0087ec63          	bltu	a5,s0,6b0 <neorv32_uart0_printf+0xe4>
     69c:	0b340863          	beq	s0,s3,74c <neorv32_uart0_printf+0x180>
     6a0:	02500513          	li	a0,37
     6a4:	eb9ff0ef          	jal	ra,55c <neorv32_uart0_putc>
     6a8:	00040513          	mv	a0,s0
     6ac:	0800006f          	j	72c <neorv32_uart0_printf+0x160>
     6b0:	06400793          	li	a5,100
     6b4:	00f40663          	beq	s0,a5,6c0 <neorv32_uart0_printf+0xf4>
     6b8:	06900793          	li	a5,105
     6bc:	fef412e3          	bne	s0,a5,6a0 <neorv32_uart0_printf+0xd4>
     6c0:	00012783          	lw	a5,0(sp)
     6c4:	0007a403          	lw	s0,0(a5)
     6c8:	00478713          	addi	a4,a5,4
     6cc:	00e12023          	sw	a4,0(sp)
     6d0:	00045863          	bgez	s0,6e0 <neorv32_uart0_printf+0x114>
     6d4:	02d00513          	li	a0,45
     6d8:	40800433          	neg	s0,s0
     6dc:	e81ff0ef          	jal	ra,55c <neorv32_uart0_putc>
     6e0:	00410593          	addi	a1,sp,4
     6e4:	00040513          	mv	a0,s0
     6e8:	c49ff0ef          	jal	ra,330 <__neorv32_uart_itoa>
     6ec:	00410513          	addi	a0,sp,4
     6f0:	0200006f          	j	710 <neorv32_uart0_printf+0x144>
     6f4:	05740063          	beq	s0,s7,734 <neorv32_uart0_printf+0x168>
     6f8:	05840a63          	beq	s0,s8,74c <neorv32_uart0_printf+0x180>
     6fc:	fb9412e3          	bne	s0,s9,6a0 <neorv32_uart0_printf+0xd4>
     700:	00012783          	lw	a5,0(sp)
     704:	0007a503          	lw	a0,0(a5)
     708:	00478713          	addi	a4,a5,4
     70c:	00e12023          	sw	a4,0(sp)
     710:	e65ff0ef          	jal	ra,574 <neorv32_uart0_print>
     714:	000a0413          	mv	s0,s4
     718:	f29ff06f          	j	640 <neorv32_uart0_printf+0x74>
     71c:	00012783          	lw	a5,0(sp)
     720:	0007c503          	lbu	a0,0(a5)
     724:	00478713          	addi	a4,a5,4
     728:	00e12023          	sw	a4,0(sp)
     72c:	e31ff0ef          	jal	ra,55c <neorv32_uart0_putc>
     730:	fe5ff06f          	j	714 <neorv32_uart0_printf+0x148>
     734:	00012783          	lw	a5,0(sp)
     738:	00410593          	addi	a1,sp,4
     73c:	00478713          	addi	a4,a5,4
     740:	0007a503          	lw	a0,0(a5)
     744:	00e12023          	sw	a4,0(sp)
     748:	fa1ff06f          	j	6e8 <neorv32_uart0_printf+0x11c>
     74c:	00012783          	lw	a5,0(sp)
     750:	00410593          	addi	a1,sp,4
     754:	0007a503          	lw	a0,0(a5)
     758:	00478713          	addi	a4,a5,4
     75c:	00e12023          	sw	a4,0(sp)
     760:	cd9ff0ef          	jal	ra,438 <__neorv32_uart_tohex>
     764:	f93414e3          	bne	s0,s3,6ec <neorv32_uart0_printf+0x120>
     768:	00410513          	addi	a0,sp,4
     76c:	d09ff0ef          	jal	ra,474 <__neorv32_uart_touppercase.constprop.0>
     770:	f7dff06f          	j	6ec <neorv32_uart0_printf+0x120>
     774:	01649663          	bne	s1,s6,780 <neorv32_uart0_printf+0x1b4>
     778:	00d00513          	li	a0,13
     77c:	de1ff0ef          	jal	ra,55c <neorv32_uart0_putc>
     780:	00140a13          	addi	s4,s0,1
     784:	00048513          	mv	a0,s1
     788:	fa5ff06f          	j	72c <neorv32_uart0_printf+0x160>

0000078c <neorv32_cpu_get_systime>:
     78c:	c81027f3          	rdtimeh	a5
     790:	c0102573          	rdtime	a0
     794:	c81025f3          	rdtimeh	a1
     798:	fef59ae3          	bne	a1,a5,78c <neorv32_cpu_get_systime>
     79c:	00008067          	ret

000007a0 <__neorv32_rte_core>:
     7a0:	fc010113          	addi	sp,sp,-64
     7a4:	02112e23          	sw	ra,60(sp)
     7a8:	02512c23          	sw	t0,56(sp)
     7ac:	02612a23          	sw	t1,52(sp)
     7b0:	02712823          	sw	t2,48(sp)
     7b4:	02a12623          	sw	a0,44(sp)
     7b8:	02b12423          	sw	a1,40(sp)
     7bc:	02c12223          	sw	a2,36(sp)
     7c0:	02d12023          	sw	a3,32(sp)
     7c4:	00e12e23          	sw	a4,28(sp)
     7c8:	00f12c23          	sw	a5,24(sp)
     7cc:	01012a23          	sw	a6,20(sp)
     7d0:	01112823          	sw	a7,16(sp)
     7d4:	01c12623          	sw	t3,12(sp)
     7d8:	01d12423          	sw	t4,8(sp)
     7dc:	01e12223          	sw	t5,4(sp)
     7e0:	01f12023          	sw	t6,0(sp)
     7e4:	341026f3          	csrr	a3,mepc
     7e8:	34069073          	csrw	mscratch,a3
     7ec:	342027f3          	csrr	a5,mcause
     7f0:	0607c063          	bltz	a5,850 <__neorv32_rte_core+0xb0>
     7f4:	0006d703          	lhu	a4,0(a3)
     7f8:	01071713          	slli	a4,a4,0x10
     7fc:	01075713          	srli	a4,a4,0x10
     800:	00468593          	addi	a1,a3,4
     804:	30102673          	csrr	a2,misa
     808:	00467613          	andi	a2,a2,4
     80c:	00060a63          	beqz	a2,820 <__neorv32_rte_core+0x80>
     810:	00377713          	andi	a4,a4,3
     814:	00300613          	li	a2,3
     818:	00c70463          	beq	a4,a2,820 <__neorv32_rte_core+0x80>
     81c:	00268593          	addi	a1,a3,2
     820:	34159073          	csrw	mepc,a1
     824:	00b00713          	li	a4,11
     828:	00f77863          	bgeu	a4,a5,838 <__neorv32_rte_core+0x98>
     82c:	000017b7          	lui	a5,0x1
     830:	a1c78793          	addi	a5,a5,-1508 # a1c <__neorv32_rte_debug_exc_handler>
     834:	04c0006f          	j	880 <__neorv32_rte_core+0xe0>
     838:	00002737          	lui	a4,0x2
     83c:	00279793          	slli	a5,a5,0x2
     840:	56c70713          	addi	a4,a4,1388 # 256c <symbols.0+0x14>
     844:	00e787b3          	add	a5,a5,a4
     848:	0007a783          	lw	a5,0(a5)
     84c:	00078067          	jr	a5
     850:	80000737          	lui	a4,0x80000
     854:	ffd74713          	xori	a4,a4,-3
     858:	00e787b3          	add	a5,a5,a4
     85c:	01c00713          	li	a4,28
     860:	fcf766e3          	bltu	a4,a5,82c <__neorv32_rte_core+0x8c>
     864:	00002737          	lui	a4,0x2
     868:	00279793          	slli	a5,a5,0x2
     86c:	59c70713          	addi	a4,a4,1436 # 259c <symbols.0+0x44>
     870:	00e787b3          	add	a5,a5,a4
     874:	0007a783          	lw	a5,0(a5)
     878:	00078067          	jr	a5
     87c:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut>
     880:	000780e7          	jalr	a5
     884:	03c12083          	lw	ra,60(sp)
     888:	03812283          	lw	t0,56(sp)
     88c:	03412303          	lw	t1,52(sp)
     890:	03012383          	lw	t2,48(sp)
     894:	02c12503          	lw	a0,44(sp)
     898:	02812583          	lw	a1,40(sp)
     89c:	02412603          	lw	a2,36(sp)
     8a0:	02012683          	lw	a3,32(sp)
     8a4:	01c12703          	lw	a4,28(sp)
     8a8:	01812783          	lw	a5,24(sp)
     8ac:	01412803          	lw	a6,20(sp)
     8b0:	01012883          	lw	a7,16(sp)
     8b4:	00c12e03          	lw	t3,12(sp)
     8b8:	00812e83          	lw	t4,8(sp)
     8bc:	00412f03          	lw	t5,4(sp)
     8c0:	00012f83          	lw	t6,0(sp)
     8c4:	04010113          	addi	sp,sp,64
     8c8:	30200073          	mret
     8cc:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x4>
     8d0:	fb1ff06f          	j	880 <__neorv32_rte_core+0xe0>
     8d4:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x8>
     8d8:	fa9ff06f          	j	880 <__neorv32_rte_core+0xe0>
     8dc:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0xc>
     8e0:	fa1ff06f          	j	880 <__neorv32_rte_core+0xe0>
     8e4:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x10>
     8e8:	f99ff06f          	j	880 <__neorv32_rte_core+0xe0>
     8ec:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x14>
     8f0:	f91ff06f          	j	880 <__neorv32_rte_core+0xe0>
     8f4:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x18>
     8f8:	f89ff06f          	j	880 <__neorv32_rte_core+0xe0>
     8fc:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x1c>
     900:	f81ff06f          	j	880 <__neorv32_rte_core+0xe0>
     904:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x20>
     908:	f79ff06f          	j	880 <__neorv32_rte_core+0xe0>
     90c:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x24>
     910:	f71ff06f          	j	880 <__neorv32_rte_core+0xe0>
     914:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x28>
     918:	f69ff06f          	j	880 <__neorv32_rte_core+0xe0>
     91c:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x2c>
     920:	f61ff06f          	j	880 <__neorv32_rte_core+0xe0>
     924:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x30>
     928:	f59ff06f          	j	880 <__neorv32_rte_core+0xe0>
     92c:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x34>
     930:	f51ff06f          	j	880 <__neorv32_rte_core+0xe0>
     934:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x38>
     938:	f49ff06f          	j	880 <__neorv32_rte_core+0xe0>
     93c:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x3c>
     940:	f41ff06f          	j	880 <__neorv32_rte_core+0xe0>
     944:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x40>
     948:	f39ff06f          	j	880 <__neorv32_rte_core+0xe0>
     94c:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x44>
     950:	f31ff06f          	j	880 <__neorv32_rte_core+0xe0>
     954:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x48>
     958:	f29ff06f          	j	880 <__neorv32_rte_core+0xe0>
     95c:	8741a783          	lw	a5,-1932(gp) # 80000074 <__neorv32_rte_vector_lut+0x4c>
     960:	f21ff06f          	j	880 <__neorv32_rte_core+0xe0>
     964:	8781a783          	lw	a5,-1928(gp) # 80000078 <__neorv32_rte_vector_lut+0x50>
     968:	f19ff06f          	j	880 <__neorv32_rte_core+0xe0>
     96c:	87c1a783          	lw	a5,-1924(gp) # 8000007c <__neorv32_rte_vector_lut+0x54>
     970:	f11ff06f          	j	880 <__neorv32_rte_core+0xe0>
     974:	8801a783          	lw	a5,-1920(gp) # 80000080 <__neorv32_rte_vector_lut+0x58>
     978:	f09ff06f          	j	880 <__neorv32_rte_core+0xe0>
     97c:	8841a783          	lw	a5,-1916(gp) # 80000084 <__neorv32_rte_vector_lut+0x5c>
     980:	f01ff06f          	j	880 <__neorv32_rte_core+0xe0>
     984:	8881a783          	lw	a5,-1912(gp) # 80000088 <__neorv32_rte_vector_lut+0x60>
     988:	ef9ff06f          	j	880 <__neorv32_rte_core+0xe0>
     98c:	88c1a783          	lw	a5,-1908(gp) # 8000008c <__neorv32_rte_vector_lut+0x64>
     990:	ef1ff06f          	j	880 <__neorv32_rte_core+0xe0>
     994:	8901a783          	lw	a5,-1904(gp) # 80000090 <__neorv32_rte_vector_lut+0x68>
     998:	ee9ff06f          	j	880 <__neorv32_rte_core+0xe0>
     99c:	8941a783          	lw	a5,-1900(gp) # 80000094 <__neorv32_rte_vector_lut+0x6c>
     9a0:	ee1ff06f          	j	880 <__neorv32_rte_core+0xe0>
     9a4:	8981a783          	lw	a5,-1896(gp) # 80000098 <__neorv32_rte_vector_lut+0x70>
     9a8:	ed9ff06f          	j	880 <__neorv32_rte_core+0xe0>

000009ac <__neorv32_rte_print_hex_word>:
     9ac:	fe010113          	addi	sp,sp,-32
     9b0:	01212823          	sw	s2,16(sp)
     9b4:	00050913          	mv	s2,a0
     9b8:	00002537          	lui	a0,0x2
     9bc:	00912a23          	sw	s1,20(sp)
     9c0:	61050513          	addi	a0,a0,1552 # 2610 <symbols.0+0xb8>
     9c4:	000034b7          	lui	s1,0x3
     9c8:	00812c23          	sw	s0,24(sp)
     9cc:	01312623          	sw	s3,12(sp)
     9d0:	00112e23          	sw	ra,28(sp)
     9d4:	01c00413          	li	s0,28
     9d8:	b9dff0ef          	jal	ra,574 <neorv32_uart0_print>
     9dc:	89048493          	addi	s1,s1,-1904 # 2890 <hex_symbols.0>
     9e0:	ffc00993          	li	s3,-4
     9e4:	008957b3          	srl	a5,s2,s0
     9e8:	00f7f793          	andi	a5,a5,15
     9ec:	00f487b3          	add	a5,s1,a5
     9f0:	0007c503          	lbu	a0,0(a5)
     9f4:	ffc40413          	addi	s0,s0,-4
     9f8:	b65ff0ef          	jal	ra,55c <neorv32_uart0_putc>
     9fc:	ff3414e3          	bne	s0,s3,9e4 <__neorv32_rte_print_hex_word+0x38>
     a00:	01c12083          	lw	ra,28(sp)
     a04:	01812403          	lw	s0,24(sp)
     a08:	01412483          	lw	s1,20(sp)
     a0c:	01012903          	lw	s2,16(sp)
     a10:	00c12983          	lw	s3,12(sp)
     a14:	02010113          	addi	sp,sp,32
     a18:	00008067          	ret

00000a1c <__neorv32_rte_debug_exc_handler>:
     a1c:	ff010113          	addi	sp,sp,-16
     a20:	00112623          	sw	ra,12(sp)
     a24:	00812423          	sw	s0,8(sp)
     a28:	00912223          	sw	s1,4(sp)
     a2c:	a75ff0ef          	jal	ra,4a0 <neorv32_uart0_available>
     a30:	1c050863          	beqz	a0,c00 <__neorv32_rte_debug_exc_handler+0x1e4>
     a34:	00002537          	lui	a0,0x2
     a38:	61450513          	addi	a0,a0,1556 # 2614 <symbols.0+0xbc>
     a3c:	b39ff0ef          	jal	ra,574 <neorv32_uart0_print>
     a40:	34202473          	csrr	s0,mcause
     a44:	00900713          	li	a4,9
     a48:	00f47793          	andi	a5,s0,15
     a4c:	03078493          	addi	s1,a5,48
     a50:	00f77463          	bgeu	a4,a5,a58 <__neorv32_rte_debug_exc_handler+0x3c>
     a54:	05778493          	addi	s1,a5,87
     a58:	00b00793          	li	a5,11
     a5c:	0087ee63          	bltu	a5,s0,a78 <__neorv32_rte_debug_exc_handler+0x5c>
     a60:	00002737          	lui	a4,0x2
     a64:	00241793          	slli	a5,s0,0x2
     a68:	7d870713          	addi	a4,a4,2008 # 27d8 <symbols.0+0x280>
     a6c:	00e787b3          	add	a5,a5,a4
     a70:	0007a783          	lw	a5,0(a5)
     a74:	00078067          	jr	a5
     a78:	800007b7          	lui	a5,0x80000
     a7c:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
     a80:	14e40e63          	beq	s0,a4,bdc <__neorv32_rte_debug_exc_handler+0x1c0>
     a84:	02876a63          	bltu	a4,s0,ab8 <__neorv32_rte_debug_exc_handler+0x9c>
     a88:	00378713          	addi	a4,a5,3
     a8c:	12e40c63          	beq	s0,a4,bc4 <__neorv32_rte_debug_exc_handler+0x1a8>
     a90:	00778793          	addi	a5,a5,7
     a94:	12f40e63          	beq	s0,a5,bd0 <__neorv32_rte_debug_exc_handler+0x1b4>
     a98:	00002537          	lui	a0,0x2
     a9c:	77450513          	addi	a0,a0,1908 # 2774 <symbols.0+0x21c>
     aa0:	ad5ff0ef          	jal	ra,574 <neorv32_uart0_print>
     aa4:	00040513          	mv	a0,s0
     aa8:	f05ff0ef          	jal	ra,9ac <__neorv32_rte_print_hex_word>
     aac:	00100793          	li	a5,1
     ab0:	08f40c63          	beq	s0,a5,b48 <__neorv32_rte_debug_exc_handler+0x12c>
     ab4:	0280006f          	j	adc <__neorv32_rte_debug_exc_handler+0xc0>
     ab8:	ff07c793          	xori	a5,a5,-16
     abc:	00f407b3          	add	a5,s0,a5
     ac0:	00f00713          	li	a4,15
     ac4:	fcf76ae3          	bltu	a4,a5,a98 <__neorv32_rte_debug_exc_handler+0x7c>
     ac8:	00002537          	lui	a0,0x2
     acc:	76450513          	addi	a0,a0,1892 # 2764 <symbols.0+0x20c>
     ad0:	aa5ff0ef          	jal	ra,574 <neorv32_uart0_print>
     ad4:	00048513          	mv	a0,s1
     ad8:	a85ff0ef          	jal	ra,55c <neorv32_uart0_putc>
     adc:	ffd47413          	andi	s0,s0,-3
     ae0:	00500793          	li	a5,5
     ae4:	06f40263          	beq	s0,a5,b48 <__neorv32_rte_debug_exc_handler+0x12c>
     ae8:	00002537          	lui	a0,0x2
     aec:	7b850513          	addi	a0,a0,1976 # 27b8 <symbols.0+0x260>
     af0:	a85ff0ef          	jal	ra,574 <neorv32_uart0_print>
     af4:	34002573          	csrr	a0,mscratch
     af8:	eb5ff0ef          	jal	ra,9ac <__neorv32_rte_print_hex_word>
     afc:	00002537          	lui	a0,0x2
     b00:	7c050513          	addi	a0,a0,1984 # 27c0 <symbols.0+0x268>
     b04:	a71ff0ef          	jal	ra,574 <neorv32_uart0_print>
     b08:	34302573          	csrr	a0,mtval
     b0c:	ea1ff0ef          	jal	ra,9ac <__neorv32_rte_print_hex_word>
     b10:	00812403          	lw	s0,8(sp)
     b14:	00c12083          	lw	ra,12(sp)
     b18:	00412483          	lw	s1,4(sp)
     b1c:	00002537          	lui	a0,0x2
     b20:	7cc50513          	addi	a0,a0,1996 # 27cc <symbols.0+0x274>
     b24:	01010113          	addi	sp,sp,16
     b28:	a4dff06f          	j	574 <neorv32_uart0_print>
     b2c:	00002537          	lui	a0,0x2
     b30:	61c50513          	addi	a0,a0,1564 # 261c <symbols.0+0xc4>
     b34:	a41ff0ef          	jal	ra,574 <neorv32_uart0_print>
     b38:	fb1ff06f          	j	ae8 <__neorv32_rte_debug_exc_handler+0xcc>
     b3c:	00002537          	lui	a0,0x2
     b40:	63c50513          	addi	a0,a0,1596 # 263c <symbols.0+0xe4>
     b44:	a31ff0ef          	jal	ra,574 <neorv32_uart0_print>
     b48:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
     b4c:	0a07d463          	bgez	a5,bf4 <__neorv32_rte_debug_exc_handler+0x1d8>
     b50:	0017f793          	andi	a5,a5,1
     b54:	08078a63          	beqz	a5,be8 <__neorv32_rte_debug_exc_handler+0x1cc>
     b58:	00002537          	lui	a0,0x2
     b5c:	78c50513          	addi	a0,a0,1932 # 278c <symbols.0+0x234>
     b60:	fd5ff06f          	j	b34 <__neorv32_rte_debug_exc_handler+0x118>
     b64:	00002537          	lui	a0,0x2
     b68:	65850513          	addi	a0,a0,1624 # 2658 <symbols.0+0x100>
     b6c:	fc9ff06f          	j	b34 <__neorv32_rte_debug_exc_handler+0x118>
     b70:	00002537          	lui	a0,0x2
     b74:	66c50513          	addi	a0,a0,1644 # 266c <symbols.0+0x114>
     b78:	fbdff06f          	j	b34 <__neorv32_rte_debug_exc_handler+0x118>
     b7c:	00002537          	lui	a0,0x2
     b80:	67850513          	addi	a0,a0,1656 # 2678 <symbols.0+0x120>
     b84:	fb1ff06f          	j	b34 <__neorv32_rte_debug_exc_handler+0x118>
     b88:	00002537          	lui	a0,0x2
     b8c:	69050513          	addi	a0,a0,1680 # 2690 <symbols.0+0x138>
     b90:	fb5ff06f          	j	b44 <__neorv32_rte_debug_exc_handler+0x128>
     b94:	00002537          	lui	a0,0x2
     b98:	6a450513          	addi	a0,a0,1700 # 26a4 <symbols.0+0x14c>
     b9c:	f99ff06f          	j	b34 <__neorv32_rte_debug_exc_handler+0x118>
     ba0:	00002537          	lui	a0,0x2
     ba4:	6c050513          	addi	a0,a0,1728 # 26c0 <symbols.0+0x168>
     ba8:	f9dff06f          	j	b44 <__neorv32_rte_debug_exc_handler+0x128>
     bac:	00002537          	lui	a0,0x2
     bb0:	6d450513          	addi	a0,a0,1748 # 26d4 <symbols.0+0x17c>
     bb4:	f81ff06f          	j	b34 <__neorv32_rte_debug_exc_handler+0x118>
     bb8:	00002537          	lui	a0,0x2
     bbc:	6f450513          	addi	a0,a0,1780 # 26f4 <symbols.0+0x19c>
     bc0:	f75ff06f          	j	b34 <__neorv32_rte_debug_exc_handler+0x118>
     bc4:	00002537          	lui	a0,0x2
     bc8:	71450513          	addi	a0,a0,1812 # 2714 <symbols.0+0x1bc>
     bcc:	f69ff06f          	j	b34 <__neorv32_rte_debug_exc_handler+0x118>
     bd0:	00002537          	lui	a0,0x2
     bd4:	73050513          	addi	a0,a0,1840 # 2730 <symbols.0+0x1d8>
     bd8:	f5dff06f          	j	b34 <__neorv32_rte_debug_exc_handler+0x118>
     bdc:	00002537          	lui	a0,0x2
     be0:	74850513          	addi	a0,a0,1864 # 2748 <symbols.0+0x1f0>
     be4:	f51ff06f          	j	b34 <__neorv32_rte_debug_exc_handler+0x118>
     be8:	00002537          	lui	a0,0x2
     bec:	79c50513          	addi	a0,a0,1948 # 279c <symbols.0+0x244>
     bf0:	f45ff06f          	j	b34 <__neorv32_rte_debug_exc_handler+0x118>
     bf4:	00002537          	lui	a0,0x2
     bf8:	7ac50513          	addi	a0,a0,1964 # 27ac <symbols.0+0x254>
     bfc:	f39ff06f          	j	b34 <__neorv32_rte_debug_exc_handler+0x118>
     c00:	00c12083          	lw	ra,12(sp)
     c04:	00812403          	lw	s0,8(sp)
     c08:	00412483          	lw	s1,4(sp)
     c0c:	01010113          	addi	sp,sp,16
     c10:	00008067          	ret

00000c14 <neorv32_rte_exception_uninstall>:
     c14:	01f00793          	li	a5,31
     c18:	02a7e263          	bltu	a5,a0,c3c <neorv32_rte_exception_uninstall+0x28>
     c1c:	82818793          	addi	a5,gp,-2008 # 80000028 <__neorv32_rte_vector_lut>
     c20:	00251513          	slli	a0,a0,0x2
     c24:	00a78533          	add	a0,a5,a0
     c28:	000017b7          	lui	a5,0x1
     c2c:	a1c78793          	addi	a5,a5,-1508 # a1c <__neorv32_rte_debug_exc_handler>
     c30:	00f52023          	sw	a5,0(a0)
     c34:	00000513          	li	a0,0
     c38:	00008067          	ret
     c3c:	00100513          	li	a0,1
     c40:	00008067          	ret

00000c44 <neorv32_rte_setup>:
     c44:	ff010113          	addi	sp,sp,-16
     c48:	00112623          	sw	ra,12(sp)
     c4c:	00812423          	sw	s0,8(sp)
     c50:	00912223          	sw	s1,4(sp)
     c54:	7a000793          	li	a5,1952
     c58:	30579073          	csrw	mtvec,a5
     c5c:	00000793          	li	a5,0
     c60:	30479073          	csrw	mie,a5
     c64:	34479073          	csrw	mip,a5
     c68:	f6002e23          	sw	zero,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
     c6c:	00000413          	li	s0,0
     c70:	01d00493          	li	s1,29
     c74:	00040513          	mv	a0,s0
     c78:	00140413          	addi	s0,s0,1
     c7c:	0ff47413          	andi	s0,s0,255
     c80:	f95ff0ef          	jal	ra,c14 <neorv32_rte_exception_uninstall>
     c84:	fe9418e3          	bne	s0,s1,c74 <neorv32_rte_setup+0x30>
     c88:	00c12083          	lw	ra,12(sp)
     c8c:	00812403          	lw	s0,8(sp)
     c90:	00412483          	lw	s1,4(sp)
     c94:	01010113          	addi	sp,sp,16
     c98:	00008067          	ret

00000c9c <neorv32_rte_check_isa>:
     c9c:	30102673          	csrr	a2,misa
     ca0:	400005b7          	lui	a1,0x40000
     ca4:	10058593          	addi	a1,a1,256 # 40000100 <__crt0_copy_data_src_begin+0x3fffd6e8>
     ca8:	00b677b3          	and	a5,a2,a1
     cac:	04b78663          	beq	a5,a1,cf8 <neorv32_rte_check_isa+0x5c>
     cb0:	00050663          	beqz	a0,cbc <neorv32_rte_check_isa+0x20>
     cb4:	00100513          	li	a0,1
     cb8:	00008067          	ret
     cbc:	fe010113          	addi	sp,sp,-32
     cc0:	00c12623          	sw	a2,12(sp)
     cc4:	00112e23          	sw	ra,28(sp)
     cc8:	fd8ff0ef          	jal	ra,4a0 <neorv32_uart0_available>
     ccc:	400007b7          	lui	a5,0x40000
     cd0:	00c12603          	lw	a2,12(sp)
     cd4:	10078593          	addi	a1,a5,256 # 40000100 <__crt0_copy_data_src_begin+0x3fffd6e8>
     cd8:	00050863          	beqz	a0,ce8 <neorv32_rte_check_isa+0x4c>
     cdc:	00003537          	lui	a0,0x3
     ce0:	80850513          	addi	a0,a0,-2040 # 2808 <symbols.0+0x2b0>
     ce4:	8e9ff0ef          	jal	ra,5cc <neorv32_uart0_printf>
     ce8:	01c12083          	lw	ra,28(sp)
     cec:	00100513          	li	a0,1
     cf0:	02010113          	addi	sp,sp,32
     cf4:	00008067          	ret
     cf8:	00000513          	li	a0,0
     cfc:	00008067          	ret

00000d00 <__adddf3>:
     d00:	00100837          	lui	a6,0x100
     d04:	fff80813          	addi	a6,a6,-1 # fffff <__crt0_copy_data_src_begin+0xfd5e7>
     d08:	fe010113          	addi	sp,sp,-32
     d0c:	00b877b3          	and	a5,a6,a1
     d10:	0145d713          	srli	a4,a1,0x14
     d14:	00d87833          	and	a6,a6,a3
     d18:	0146d313          	srli	t1,a3,0x14
     d1c:	00812c23          	sw	s0,24(sp)
     d20:	00379793          	slli	a5,a5,0x3
     d24:	7ff77413          	andi	s0,a4,2047
     d28:	01d55713          	srli	a4,a0,0x1d
     d2c:	00381813          	slli	a6,a6,0x3
     d30:	00912a23          	sw	s1,20(sp)
     d34:	00f767b3          	or	a5,a4,a5
     d38:	01f5d493          	srli	s1,a1,0x1f
     d3c:	01d65713          	srli	a4,a2,0x1d
     d40:	7ff37313          	andi	t1,t1,2047
     d44:	00112e23          	sw	ra,28(sp)
     d48:	01212823          	sw	s2,16(sp)
     d4c:	01312623          	sw	s3,12(sp)
     d50:	01f6d693          	srli	a3,a3,0x1f
     d54:	01076733          	or	a4,a4,a6
     d58:	00351593          	slli	a1,a0,0x3
     d5c:	00361613          	slli	a2,a2,0x3
     d60:	40640833          	sub	a6,s0,t1
     d64:	2cd49863          	bne	s1,a3,1034 <__adddf3+0x334>
     d68:	13005063          	blez	a6,e88 <__adddf3+0x188>
     d6c:	04031063          	bnez	t1,dac <__adddf3+0xac>
     d70:	00c766b3          	or	a3,a4,a2
     d74:	70068c63          	beqz	a3,148c <__adddf3+0x78c>
     d78:	fff80513          	addi	a0,a6,-1
     d7c:	02051063          	bnez	a0,d9c <__adddf3+0x9c>
     d80:	00c58633          	add	a2,a1,a2
     d84:	00b63533          	sltu	a0,a2,a1
     d88:	00e787b3          	add	a5,a5,a4
     d8c:	00a787b3          	add	a5,a5,a0
     d90:	00060593          	mv	a1,a2
     d94:	00100413          	li	s0,1
     d98:	0700006f          	j	e08 <__adddf3+0x108>
     d9c:	7ff00693          	li	a3,2047
     da0:	02d81063          	bne	a6,a3,dc0 <__adddf3+0xc0>
     da4:	7ff00413          	li	s0,2047
     da8:	2140006f          	j	fbc <__adddf3+0x2bc>
     dac:	7ff00693          	li	a3,2047
     db0:	20d40663          	beq	s0,a3,fbc <__adddf3+0x2bc>
     db4:	008006b7          	lui	a3,0x800
     db8:	00d76733          	or	a4,a4,a3
     dbc:	00080513          	mv	a0,a6
     dc0:	03800693          	li	a3,56
     dc4:	0aa6cc63          	blt	a3,a0,e7c <__adddf3+0x17c>
     dc8:	01f00693          	li	a3,31
     dcc:	06a6ce63          	blt	a3,a0,e48 <__adddf3+0x148>
     dd0:	02000813          	li	a6,32
     dd4:	40a80833          	sub	a6,a6,a0
     dd8:	010716b3          	sll	a3,a4,a6
     ddc:	00a658b3          	srl	a7,a2,a0
     de0:	01061633          	sll	a2,a2,a6
     de4:	0116e6b3          	or	a3,a3,a7
     de8:	00c03633          	snez	a2,a2
     dec:	00c6e633          	or	a2,a3,a2
     df0:	00a75733          	srl	a4,a4,a0
     df4:	00b60633          	add	a2,a2,a1
     df8:	00b63533          	sltu	a0,a2,a1
     dfc:	00f70733          	add	a4,a4,a5
     e00:	00a707b3          	add	a5,a4,a0
     e04:	00060593          	mv	a1,a2
     e08:	00800737          	lui	a4,0x800
     e0c:	00e7f733          	and	a4,a5,a4
     e10:	1a070663          	beqz	a4,fbc <__adddf3+0x2bc>
     e14:	00140413          	addi	s0,s0,1
     e18:	7ff00713          	li	a4,2047
     e1c:	5ce40a63          	beq	s0,a4,13f0 <__adddf3+0x6f0>
     e20:	ff800737          	lui	a4,0xff800
     e24:	fff70713          	addi	a4,a4,-1 # ff7fffff <__ctr0_io_space_begin+0xff8001ff>
     e28:	00e7f7b3          	and	a5,a5,a4
     e2c:	0015f513          	andi	a0,a1,1
     e30:	0015d713          	srli	a4,a1,0x1
     e34:	00a76533          	or	a0,a4,a0
     e38:	01f79593          	slli	a1,a5,0x1f
     e3c:	00a5e5b3          	or	a1,a1,a0
     e40:	0017d793          	srli	a5,a5,0x1
     e44:	1780006f          	j	fbc <__adddf3+0x2bc>
     e48:	fe050693          	addi	a3,a0,-32
     e4c:	02000893          	li	a7,32
     e50:	00d756b3          	srl	a3,a4,a3
     e54:	00000813          	li	a6,0
     e58:	01150863          	beq	a0,a7,e68 <__adddf3+0x168>
     e5c:	04000813          	li	a6,64
     e60:	40a80533          	sub	a0,a6,a0
     e64:	00a71833          	sll	a6,a4,a0
     e68:	00c86633          	or	a2,a6,a2
     e6c:	00c03633          	snez	a2,a2
     e70:	00c6e633          	or	a2,a3,a2
     e74:	00000713          	li	a4,0
     e78:	f7dff06f          	j	df4 <__adddf3+0xf4>
     e7c:	00c76633          	or	a2,a4,a2
     e80:	00c03633          	snez	a2,a2
     e84:	ff1ff06f          	j	e74 <__adddf3+0x174>
     e88:	0e080263          	beqz	a6,f6c <__adddf3+0x26c>
     e8c:	40830533          	sub	a0,t1,s0
     e90:	02041e63          	bnez	s0,ecc <__adddf3+0x1cc>
     e94:	00b7e6b3          	or	a3,a5,a1
     e98:	52068c63          	beqz	a3,13d0 <__adddf3+0x6d0>
     e9c:	fff50693          	addi	a3,a0,-1
     ea0:	00069c63          	bnez	a3,eb8 <__adddf3+0x1b8>
     ea4:	00c585b3          	add	a1,a1,a2
     ea8:	00e787b3          	add	a5,a5,a4
     eac:	00c5b633          	sltu	a2,a1,a2
     eb0:	00c787b3          	add	a5,a5,a2
     eb4:	ee1ff06f          	j	d94 <__adddf3+0x94>
     eb8:	7ff00813          	li	a6,2047
     ebc:	03051263          	bne	a0,a6,ee0 <__adddf3+0x1e0>
     ec0:	00070793          	mv	a5,a4
     ec4:	00060593          	mv	a1,a2
     ec8:	eddff06f          	j	da4 <__adddf3+0xa4>
     ecc:	7ff00693          	li	a3,2047
     ed0:	fed308e3          	beq	t1,a3,ec0 <__adddf3+0x1c0>
     ed4:	008006b7          	lui	a3,0x800
     ed8:	00d7e7b3          	or	a5,a5,a3
     edc:	00050693          	mv	a3,a0
     ee0:	03800513          	li	a0,56
     ee4:	06d54e63          	blt	a0,a3,f60 <__adddf3+0x260>
     ee8:	01f00513          	li	a0,31
     eec:	04d54063          	blt	a0,a3,f2c <__adddf3+0x22c>
     ef0:	02000813          	li	a6,32
     ef4:	40d80833          	sub	a6,a6,a3
     ef8:	01079533          	sll	a0,a5,a6
     efc:	00d5d8b3          	srl	a7,a1,a3
     f00:	010595b3          	sll	a1,a1,a6
     f04:	01156533          	or	a0,a0,a7
     f08:	00b035b3          	snez	a1,a1
     f0c:	00b56533          	or	a0,a0,a1
     f10:	00d7d7b3          	srl	a5,a5,a3
     f14:	00c505b3          	add	a1,a0,a2
     f18:	00e787b3          	add	a5,a5,a4
     f1c:	00c5b633          	sltu	a2,a1,a2
     f20:	00c787b3          	add	a5,a5,a2
     f24:	00030413          	mv	s0,t1
     f28:	ee1ff06f          	j	e08 <__adddf3+0x108>
     f2c:	fe068513          	addi	a0,a3,-32 # 7fffe0 <__crt0_copy_data_src_begin+0x7fd5c8>
     f30:	02000893          	li	a7,32
     f34:	00a7d833          	srl	a6,a5,a0
     f38:	00000513          	li	a0,0
     f3c:	01168863          	beq	a3,a7,f4c <__adddf3+0x24c>
     f40:	04000513          	li	a0,64
     f44:	40d50533          	sub	a0,a0,a3
     f48:	00a79533          	sll	a0,a5,a0
     f4c:	00b56533          	or	a0,a0,a1
     f50:	00a03533          	snez	a0,a0
     f54:	00a86533          	or	a0,a6,a0
     f58:	00000793          	li	a5,0
     f5c:	fb9ff06f          	j	f14 <__adddf3+0x214>
     f60:	00b7e533          	or	a0,a5,a1
     f64:	00a03533          	snez	a0,a0
     f68:	ff1ff06f          	j	f58 <__adddf3+0x258>
     f6c:	00140693          	addi	a3,s0,1
     f70:	7fe6f513          	andi	a0,a3,2046
     f74:	08051863          	bnez	a0,1004 <__adddf3+0x304>
     f78:	00b7e6b3          	or	a3,a5,a1
     f7c:	06041463          	bnez	s0,fe4 <__adddf3+0x2e4>
     f80:	46068063          	beqz	a3,13e0 <__adddf3+0x6e0>
     f84:	00c766b3          	or	a3,a4,a2
     f88:	02068a63          	beqz	a3,fbc <__adddf3+0x2bc>
     f8c:	00c58633          	add	a2,a1,a2
     f90:	00e787b3          	add	a5,a5,a4
     f94:	00b63533          	sltu	a0,a2,a1
     f98:	00a787b3          	add	a5,a5,a0
     f9c:	00800737          	lui	a4,0x800
     fa0:	00e7f733          	and	a4,a5,a4
     fa4:	00060593          	mv	a1,a2
     fa8:	00070a63          	beqz	a4,fbc <__adddf3+0x2bc>
     fac:	ff800737          	lui	a4,0xff800
     fb0:	fff70713          	addi	a4,a4,-1 # ff7fffff <__ctr0_io_space_begin+0xff8001ff>
     fb4:	00e7f7b3          	and	a5,a5,a4
     fb8:	00100413          	li	s0,1
     fbc:	0075f713          	andi	a4,a1,7
     fc0:	42070c63          	beqz	a4,13f8 <__adddf3+0x6f8>
     fc4:	00f5f713          	andi	a4,a1,15
     fc8:	00400693          	li	a3,4
     fcc:	42d70663          	beq	a4,a3,13f8 <__adddf3+0x6f8>
     fd0:	00458713          	addi	a4,a1,4
     fd4:	00b73533          	sltu	a0,a4,a1
     fd8:	00a787b3          	add	a5,a5,a0
     fdc:	00070593          	mv	a1,a4
     fe0:	4180006f          	j	13f8 <__adddf3+0x6f8>
     fe4:	ec068ee3          	beqz	a3,ec0 <__adddf3+0x1c0>
     fe8:	00c76633          	or	a2,a4,a2
     fec:	da060ce3          	beqz	a2,da4 <__adddf3+0xa4>
     ff0:	00000493          	li	s1,0
     ff4:	004007b7          	lui	a5,0x400
     ff8:	00000593          	li	a1,0
     ffc:	7ff00413          	li	s0,2047
    1000:	3f80006f          	j	13f8 <__adddf3+0x6f8>
    1004:	7ff00513          	li	a0,2047
    1008:	3ea68263          	beq	a3,a0,13ec <__adddf3+0x6ec>
    100c:	00c58633          	add	a2,a1,a2
    1010:	00b63533          	sltu	a0,a2,a1
    1014:	00e787b3          	add	a5,a5,a4
    1018:	00a787b3          	add	a5,a5,a0
    101c:	01f79513          	slli	a0,a5,0x1f
    1020:	00165613          	srli	a2,a2,0x1
    1024:	00c565b3          	or	a1,a0,a2
    1028:	0017d793          	srli	a5,a5,0x1
    102c:	00068413          	mv	s0,a3
    1030:	f8dff06f          	j	fbc <__adddf3+0x2bc>
    1034:	0f005c63          	blez	a6,112c <__adddf3+0x42c>
    1038:	08031e63          	bnez	t1,10d4 <__adddf3+0x3d4>
    103c:	00c766b3          	or	a3,a4,a2
    1040:	44068663          	beqz	a3,148c <__adddf3+0x78c>
    1044:	fff80513          	addi	a0,a6,-1
    1048:	02051063          	bnez	a0,1068 <__adddf3+0x368>
    104c:	40c58633          	sub	a2,a1,a2
    1050:	00c5b533          	sltu	a0,a1,a2
    1054:	40e787b3          	sub	a5,a5,a4
    1058:	40a787b3          	sub	a5,a5,a0
    105c:	00060593          	mv	a1,a2
    1060:	00100413          	li	s0,1
    1064:	0540006f          	j	10b8 <__adddf3+0x3b8>
    1068:	7ff00693          	li	a3,2047
    106c:	d2d80ce3          	beq	a6,a3,da4 <__adddf3+0xa4>
    1070:	03800693          	li	a3,56
    1074:	0aa6c663          	blt	a3,a0,1120 <__adddf3+0x420>
    1078:	01f00693          	li	a3,31
    107c:	06a6c863          	blt	a3,a0,10ec <__adddf3+0x3ec>
    1080:	02000813          	li	a6,32
    1084:	40a80833          	sub	a6,a6,a0
    1088:	010716b3          	sll	a3,a4,a6
    108c:	00a658b3          	srl	a7,a2,a0
    1090:	01061633          	sll	a2,a2,a6
    1094:	0116e6b3          	or	a3,a3,a7
    1098:	00c03633          	snez	a2,a2
    109c:	00c6e633          	or	a2,a3,a2
    10a0:	00a75733          	srl	a4,a4,a0
    10a4:	40c58633          	sub	a2,a1,a2
    10a8:	00c5b533          	sltu	a0,a1,a2
    10ac:	40e78733          	sub	a4,a5,a4
    10b0:	40a707b3          	sub	a5,a4,a0
    10b4:	00060593          	mv	a1,a2
    10b8:	00800937          	lui	s2,0x800
    10bc:	0127f733          	and	a4,a5,s2
    10c0:	ee070ee3          	beqz	a4,fbc <__adddf3+0x2bc>
    10c4:	fff90913          	addi	s2,s2,-1 # 7fffff <__crt0_copy_data_src_begin+0x7fd5e7>
    10c8:	0127f933          	and	s2,a5,s2
    10cc:	00058993          	mv	s3,a1
    10d0:	2140006f          	j	12e4 <__adddf3+0x5e4>
    10d4:	7ff00693          	li	a3,2047
    10d8:	eed402e3          	beq	s0,a3,fbc <__adddf3+0x2bc>
    10dc:	008006b7          	lui	a3,0x800
    10e0:	00d76733          	or	a4,a4,a3
    10e4:	00080513          	mv	a0,a6
    10e8:	f89ff06f          	j	1070 <__adddf3+0x370>
    10ec:	fe050693          	addi	a3,a0,-32
    10f0:	02000893          	li	a7,32
    10f4:	00d756b3          	srl	a3,a4,a3
    10f8:	00000813          	li	a6,0
    10fc:	01150863          	beq	a0,a7,110c <__adddf3+0x40c>
    1100:	04000813          	li	a6,64
    1104:	40a80533          	sub	a0,a6,a0
    1108:	00a71833          	sll	a6,a4,a0
    110c:	00c86633          	or	a2,a6,a2
    1110:	00c03633          	snez	a2,a2
    1114:	00c6e633          	or	a2,a3,a2
    1118:	00000713          	li	a4,0
    111c:	f89ff06f          	j	10a4 <__adddf3+0x3a4>
    1120:	00c76633          	or	a2,a4,a2
    1124:	00c03633          	snez	a2,a2
    1128:	ff1ff06f          	j	1118 <__adddf3+0x418>
    112c:	0e080863          	beqz	a6,121c <__adddf3+0x51c>
    1130:	40830533          	sub	a0,t1,s0
    1134:	04041263          	bnez	s0,1178 <__adddf3+0x478>
    1138:	00b7e833          	or	a6,a5,a1
    113c:	34080c63          	beqz	a6,1494 <__adddf3+0x794>
    1140:	fff50813          	addi	a6,a0,-1
    1144:	00081e63          	bnez	a6,1160 <__adddf3+0x460>
    1148:	40b605b3          	sub	a1,a2,a1
    114c:	40f707b3          	sub	a5,a4,a5
    1150:	00b63633          	sltu	a2,a2,a1
    1154:	40c787b3          	sub	a5,a5,a2
    1158:	00068493          	mv	s1,a3
    115c:	f05ff06f          	j	1060 <__adddf3+0x360>
    1160:	7ff00893          	li	a7,2047
    1164:	03151463          	bne	a0,a7,118c <__adddf3+0x48c>
    1168:	00070793          	mv	a5,a4
    116c:	00060593          	mv	a1,a2
    1170:	7ff00413          	li	s0,2047
    1174:	0d00006f          	j	1244 <__adddf3+0x544>
    1178:	7ff00813          	li	a6,2047
    117c:	ff0306e3          	beq	t1,a6,1168 <__adddf3+0x468>
    1180:	00800837          	lui	a6,0x800
    1184:	0107e7b3          	or	a5,a5,a6
    1188:	00050813          	mv	a6,a0
    118c:	03800513          	li	a0,56
    1190:	09054063          	blt	a0,a6,1210 <__adddf3+0x510>
    1194:	01f00513          	li	a0,31
    1198:	05054263          	blt	a0,a6,11dc <__adddf3+0x4dc>
    119c:	02000893          	li	a7,32
    11a0:	410888b3          	sub	a7,a7,a6
    11a4:	01179533          	sll	a0,a5,a7
    11a8:	0105de33          	srl	t3,a1,a6
    11ac:	011595b3          	sll	a1,a1,a7
    11b0:	01c56533          	or	a0,a0,t3
    11b4:	00b035b3          	snez	a1,a1
    11b8:	00b56533          	or	a0,a0,a1
    11bc:	0107d7b3          	srl	a5,a5,a6
    11c0:	40a605b3          	sub	a1,a2,a0
    11c4:	40f707b3          	sub	a5,a4,a5
    11c8:	00b63633          	sltu	a2,a2,a1
    11cc:	40c787b3          	sub	a5,a5,a2
    11d0:	00030413          	mv	s0,t1
    11d4:	00068493          	mv	s1,a3
    11d8:	ee1ff06f          	j	10b8 <__adddf3+0x3b8>
    11dc:	fe080513          	addi	a0,a6,-32 # 7fffe0 <__crt0_copy_data_src_begin+0x7fd5c8>
    11e0:	02000e13          	li	t3,32
    11e4:	00a7d8b3          	srl	a7,a5,a0
    11e8:	00000513          	li	a0,0
    11ec:	01c80863          	beq	a6,t3,11fc <__adddf3+0x4fc>
    11f0:	04000513          	li	a0,64
    11f4:	41050533          	sub	a0,a0,a6
    11f8:	00a79533          	sll	a0,a5,a0
    11fc:	00b56533          	or	a0,a0,a1
    1200:	00a03533          	snez	a0,a0
    1204:	00a8e533          	or	a0,a7,a0
    1208:	00000793          	li	a5,0
    120c:	fb5ff06f          	j	11c0 <__adddf3+0x4c0>
    1210:	00b7e533          	or	a0,a5,a1
    1214:	00a03533          	snez	a0,a0
    1218:	ff1ff06f          	j	1208 <__adddf3+0x508>
    121c:	00140513          	addi	a0,s0,1
    1220:	7fe57513          	andi	a0,a0,2046
    1224:	08051863          	bnez	a0,12b4 <__adddf3+0x5b4>
    1228:	00b7e833          	or	a6,a5,a1
    122c:	00c76533          	or	a0,a4,a2
    1230:	06041263          	bnez	s0,1294 <__adddf3+0x594>
    1234:	00081c63          	bnez	a6,124c <__adddf3+0x54c>
    1238:	26050663          	beqz	a0,14a4 <__adddf3+0x7a4>
    123c:	00070793          	mv	a5,a4
    1240:	00060593          	mv	a1,a2
    1244:	00068493          	mv	s1,a3
    1248:	d75ff06f          	j	fbc <__adddf3+0x2bc>
    124c:	d60508e3          	beqz	a0,fbc <__adddf3+0x2bc>
    1250:	40c58833          	sub	a6,a1,a2
    1254:	0105b8b3          	sltu	a7,a1,a6
    1258:	40e78533          	sub	a0,a5,a4
    125c:	41150533          	sub	a0,a0,a7
    1260:	008008b7          	lui	a7,0x800
    1264:	011578b3          	and	a7,a0,a7
    1268:	00088c63          	beqz	a7,1280 <__adddf3+0x580>
    126c:	40b605b3          	sub	a1,a2,a1
    1270:	40f707b3          	sub	a5,a4,a5
    1274:	00b63633          	sltu	a2,a2,a1
    1278:	40c787b3          	sub	a5,a5,a2
    127c:	fc9ff06f          	j	1244 <__adddf3+0x544>
    1280:	00a865b3          	or	a1,a6,a0
    1284:	22058863          	beqz	a1,14b4 <__adddf3+0x7b4>
    1288:	00050793          	mv	a5,a0
    128c:	00080593          	mv	a1,a6
    1290:	d2dff06f          	j	fbc <__adddf3+0x2bc>
    1294:	00081c63          	bnez	a6,12ac <__adddf3+0x5ac>
    1298:	22050263          	beqz	a0,14bc <__adddf3+0x7bc>
    129c:	00070793          	mv	a5,a4
    12a0:	00060593          	mv	a1,a2
    12a4:	00068493          	mv	s1,a3
    12a8:	afdff06f          	j	da4 <__adddf3+0xa4>
    12ac:	ae050ce3          	beqz	a0,da4 <__adddf3+0xa4>
    12b0:	d41ff06f          	j	ff0 <__adddf3+0x2f0>
    12b4:	40c589b3          	sub	s3,a1,a2
    12b8:	0135b533          	sltu	a0,a1,s3
    12bc:	40e78933          	sub	s2,a5,a4
    12c0:	40a90933          	sub	s2,s2,a0
    12c4:	00800537          	lui	a0,0x800
    12c8:	00a97533          	and	a0,s2,a0
    12cc:	08050463          	beqz	a0,1354 <__adddf3+0x654>
    12d0:	40b609b3          	sub	s3,a2,a1
    12d4:	40f707b3          	sub	a5,a4,a5
    12d8:	01363633          	sltu	a2,a2,s3
    12dc:	40c78933          	sub	s2,a5,a2
    12e0:	00068493          	mv	s1,a3
    12e4:	08090263          	beqz	s2,1368 <__adddf3+0x668>
    12e8:	00090513          	mv	a0,s2
    12ec:	1d4010ef          	jal	ra,24c0 <__clzsi2>
    12f0:	ff850713          	addi	a4,a0,-8 # 7ffff8 <__crt0_copy_data_src_begin+0x7fd5e0>
    12f4:	01f00793          	li	a5,31
    12f8:	08e7c063          	blt	a5,a4,1378 <__adddf3+0x678>
    12fc:	02000793          	li	a5,32
    1300:	40e787b3          	sub	a5,a5,a4
    1304:	00e91933          	sll	s2,s2,a4
    1308:	00f9d7b3          	srl	a5,s3,a5
    130c:	0127e7b3          	or	a5,a5,s2
    1310:	00e995b3          	sll	a1,s3,a4
    1314:	0a874463          	blt	a4,s0,13bc <__adddf3+0x6bc>
    1318:	40870733          	sub	a4,a4,s0
    131c:	00170693          	addi	a3,a4,1
    1320:	01f00613          	li	a2,31
    1324:	06d64263          	blt	a2,a3,1388 <__adddf3+0x688>
    1328:	02000713          	li	a4,32
    132c:	40d70733          	sub	a4,a4,a3
    1330:	00e79633          	sll	a2,a5,a4
    1334:	00d5d533          	srl	a0,a1,a3
    1338:	00e595b3          	sll	a1,a1,a4
    133c:	00a66633          	or	a2,a2,a0
    1340:	00b035b3          	snez	a1,a1
    1344:	00b665b3          	or	a1,a2,a1
    1348:	00d7d7b3          	srl	a5,a5,a3
    134c:	00000413          	li	s0,0
    1350:	c6dff06f          	j	fbc <__adddf3+0x2bc>
    1354:	0129e5b3          	or	a1,s3,s2
    1358:	f80596e3          	bnez	a1,12e4 <__adddf3+0x5e4>
    135c:	00000793          	li	a5,0
    1360:	00000413          	li	s0,0
    1364:	1480006f          	j	14ac <__adddf3+0x7ac>
    1368:	00098513          	mv	a0,s3
    136c:	154010ef          	jal	ra,24c0 <__clzsi2>
    1370:	02050513          	addi	a0,a0,32
    1374:	f7dff06f          	j	12f0 <__adddf3+0x5f0>
    1378:	fd850793          	addi	a5,a0,-40
    137c:	00f997b3          	sll	a5,s3,a5
    1380:	00000593          	li	a1,0
    1384:	f91ff06f          	j	1314 <__adddf3+0x614>
    1388:	fe170713          	addi	a4,a4,-31
    138c:	02000613          	li	a2,32
    1390:	00e7d733          	srl	a4,a5,a4
    1394:	00000513          	li	a0,0
    1398:	00c68863          	beq	a3,a2,13a8 <__adddf3+0x6a8>
    139c:	04000513          	li	a0,64
    13a0:	40d50533          	sub	a0,a0,a3
    13a4:	00a79533          	sll	a0,a5,a0
    13a8:	00a5e533          	or	a0,a1,a0
    13ac:	00a03533          	snez	a0,a0
    13b0:	00a765b3          	or	a1,a4,a0
    13b4:	00000793          	li	a5,0
    13b8:	f95ff06f          	j	134c <__adddf3+0x64c>
    13bc:	40e40433          	sub	s0,s0,a4
    13c0:	ff800737          	lui	a4,0xff800
    13c4:	fff70713          	addi	a4,a4,-1 # ff7fffff <__ctr0_io_space_begin+0xff8001ff>
    13c8:	00e7f7b3          	and	a5,a5,a4
    13cc:	bf1ff06f          	j	fbc <__adddf3+0x2bc>
    13d0:	00070793          	mv	a5,a4
    13d4:	00060593          	mv	a1,a2
    13d8:	00050413          	mv	s0,a0
    13dc:	be1ff06f          	j	fbc <__adddf3+0x2bc>
    13e0:	00070793          	mv	a5,a4
    13e4:	00060593          	mv	a1,a2
    13e8:	bd5ff06f          	j	fbc <__adddf3+0x2bc>
    13ec:	7ff00413          	li	s0,2047
    13f0:	00000793          	li	a5,0
    13f4:	00000593          	li	a1,0
    13f8:	00800737          	lui	a4,0x800
    13fc:	00e7f733          	and	a4,a5,a4
    1400:	00070e63          	beqz	a4,141c <__adddf3+0x71c>
    1404:	00140413          	addi	s0,s0,1
    1408:	7ff00713          	li	a4,2047
    140c:	0ce40063          	beq	s0,a4,14cc <__adddf3+0x7cc>
    1410:	ff800737          	lui	a4,0xff800
    1414:	fff70713          	addi	a4,a4,-1 # ff7fffff <__ctr0_io_space_begin+0xff8001ff>
    1418:	00e7f7b3          	and	a5,a5,a4
    141c:	01d79713          	slli	a4,a5,0x1d
    1420:	0035d513          	srli	a0,a1,0x3
    1424:	00a76533          	or	a0,a4,a0
    1428:	7ff00713          	li	a4,2047
    142c:	0037d793          	srli	a5,a5,0x3
    1430:	00e41e63          	bne	s0,a4,144c <__adddf3+0x74c>
    1434:	00f56533          	or	a0,a0,a5
    1438:	00000793          	li	a5,0
    143c:	00050863          	beqz	a0,144c <__adddf3+0x74c>
    1440:	000807b7          	lui	a5,0x80
    1444:	00000513          	li	a0,0
    1448:	00000493          	li	s1,0
    144c:	01441713          	slli	a4,s0,0x14
    1450:	7ff006b7          	lui	a3,0x7ff00
    1454:	00c79793          	slli	a5,a5,0xc
    1458:	01c12083          	lw	ra,28(sp)
    145c:	01812403          	lw	s0,24(sp)
    1460:	00d77733          	and	a4,a4,a3
    1464:	00c7d793          	srli	a5,a5,0xc
    1468:	01f49493          	slli	s1,s1,0x1f
    146c:	00f767b3          	or	a5,a4,a5
    1470:	0097e733          	or	a4,a5,s1
    1474:	01012903          	lw	s2,16(sp)
    1478:	01412483          	lw	s1,20(sp)
    147c:	00c12983          	lw	s3,12(sp)
    1480:	00070593          	mv	a1,a4
    1484:	02010113          	addi	sp,sp,32
    1488:	00008067          	ret
    148c:	00080413          	mv	s0,a6
    1490:	b2dff06f          	j	fbc <__adddf3+0x2bc>
    1494:	00070793          	mv	a5,a4
    1498:	00060593          	mv	a1,a2
    149c:	00050413          	mv	s0,a0
    14a0:	da5ff06f          	j	1244 <__adddf3+0x544>
    14a4:	00000793          	li	a5,0
    14a8:	00000593          	li	a1,0
    14ac:	00000493          	li	s1,0
    14b0:	f49ff06f          	j	13f8 <__adddf3+0x6f8>
    14b4:	00000793          	li	a5,0
    14b8:	ff5ff06f          	j	14ac <__adddf3+0x7ac>
    14bc:	00000593          	li	a1,0
    14c0:	00000493          	li	s1,0
    14c4:	004007b7          	lui	a5,0x400
    14c8:	b35ff06f          	j	ffc <__adddf3+0x2fc>
    14cc:	00000793          	li	a5,0
    14d0:	00000593          	li	a1,0
    14d4:	f49ff06f          	j	141c <__adddf3+0x71c>

000014d8 <__divdf3>:
    14d8:	fb010113          	addi	sp,sp,-80
    14dc:	05212023          	sw	s2,64(sp)
    14e0:	0145d913          	srli	s2,a1,0x14
    14e4:	04912223          	sw	s1,68(sp)
    14e8:	03312e23          	sw	s3,60(sp)
    14ec:	03512a23          	sw	s5,52(sp)
    14f0:	03612823          	sw	s6,48(sp)
    14f4:	03712623          	sw	s7,44(sp)
    14f8:	00c59493          	slli	s1,a1,0xc
    14fc:	04112623          	sw	ra,76(sp)
    1500:	04812423          	sw	s0,72(sp)
    1504:	03412c23          	sw	s4,56(sp)
    1508:	03812423          	sw	s8,40(sp)
    150c:	03912223          	sw	s9,36(sp)
    1510:	03a12023          	sw	s10,32(sp)
    1514:	01b12e23          	sw	s11,28(sp)
    1518:	7ff97913          	andi	s2,s2,2047
    151c:	00050993          	mv	s3,a0
    1520:	00060b93          	mv	s7,a2
    1524:	00068b13          	mv	s6,a3
    1528:	00c4d493          	srli	s1,s1,0xc
    152c:	01f5da93          	srli	s5,a1,0x1f
    1530:	0a090063          	beqz	s2,15d0 <__divdf3+0xf8>
    1534:	7ff00793          	li	a5,2047
    1538:	0ef90e63          	beq	s2,a5,1634 <__divdf3+0x15c>
    153c:	01d55c93          	srli	s9,a0,0x1d
    1540:	00349493          	slli	s1,s1,0x3
    1544:	009ce4b3          	or	s1,s9,s1
    1548:	00800cb7          	lui	s9,0x800
    154c:	0194ecb3          	or	s9,s1,s9
    1550:	00351413          	slli	s0,a0,0x3
    1554:	c0190913          	addi	s2,s2,-1023
    1558:	00000c13          	li	s8,0
    155c:	014b5513          	srli	a0,s6,0x14
    1560:	00cb1593          	slli	a1,s6,0xc
    1564:	7ff57513          	andi	a0,a0,2047
    1568:	00c5d993          	srli	s3,a1,0xc
    156c:	01fb5b13          	srli	s6,s6,0x1f
    1570:	10050063          	beqz	a0,1670 <__divdf3+0x198>
    1574:	7ff00793          	li	a5,2047
    1578:	16f50063          	beq	a0,a5,16d8 <__divdf3+0x200>
    157c:	00399593          	slli	a1,s3,0x3
    1580:	01dbd793          	srli	a5,s7,0x1d
    1584:	00b7e5b3          	or	a1,a5,a1
    1588:	008009b7          	lui	s3,0x800
    158c:	0135e9b3          	or	s3,a1,s3
    1590:	003b9693          	slli	a3,s7,0x3
    1594:	c0150513          	addi	a0,a0,-1023
    1598:	00000793          	li	a5,0
    159c:	002c1713          	slli	a4,s8,0x2
    15a0:	00f76733          	or	a4,a4,a5
    15a4:	fff70713          	addi	a4,a4,-1
    15a8:	00e00613          	li	a2,14
    15ac:	016ac4b3          	xor	s1,s5,s6
    15b0:	40a90933          	sub	s2,s2,a0
    15b4:	14e66e63          	bltu	a2,a4,1710 <__divdf3+0x238>
    15b8:	00003637          	lui	a2,0x3
    15bc:	00271713          	slli	a4,a4,0x2
    15c0:	8a060613          	addi	a2,a2,-1888 # 28a0 <hex_symbols.0+0x10>
    15c4:	00c70733          	add	a4,a4,a2
    15c8:	00072703          	lw	a4,0(a4)
    15cc:	00070067          	jr	a4
    15d0:	00a4ecb3          	or	s9,s1,a0
    15d4:	060c8e63          	beqz	s9,1650 <__divdf3+0x178>
    15d8:	04048063          	beqz	s1,1618 <__divdf3+0x140>
    15dc:	00048513          	mv	a0,s1
    15e0:	6e1000ef          	jal	ra,24c0 <__clzsi2>
    15e4:	ff550793          	addi	a5,a0,-11
    15e8:	01c00713          	li	a4,28
    15ec:	02f74c63          	blt	a4,a5,1624 <__divdf3+0x14c>
    15f0:	01d00c93          	li	s9,29
    15f4:	ff850413          	addi	s0,a0,-8
    15f8:	40fc8cb3          	sub	s9,s9,a5
    15fc:	008494b3          	sll	s1,s1,s0
    1600:	0199dcb3          	srl	s9,s3,s9
    1604:	009cecb3          	or	s9,s9,s1
    1608:	00899433          	sll	s0,s3,s0
    160c:	c0d00913          	li	s2,-1011
    1610:	40a90933          	sub	s2,s2,a0
    1614:	f45ff06f          	j	1558 <__divdf3+0x80>
    1618:	6a9000ef          	jal	ra,24c0 <__clzsi2>
    161c:	02050513          	addi	a0,a0,32
    1620:	fc5ff06f          	j	15e4 <__divdf3+0x10c>
    1624:	fd850493          	addi	s1,a0,-40
    1628:	00999cb3          	sll	s9,s3,s1
    162c:	00000413          	li	s0,0
    1630:	fddff06f          	j	160c <__divdf3+0x134>
    1634:	00a4ecb3          	or	s9,s1,a0
    1638:	020c8463          	beqz	s9,1660 <__divdf3+0x188>
    163c:	00050413          	mv	s0,a0
    1640:	00048c93          	mv	s9,s1
    1644:	7ff00913          	li	s2,2047
    1648:	00300c13          	li	s8,3
    164c:	f11ff06f          	j	155c <__divdf3+0x84>
    1650:	00000413          	li	s0,0
    1654:	00000913          	li	s2,0
    1658:	00100c13          	li	s8,1
    165c:	f01ff06f          	j	155c <__divdf3+0x84>
    1660:	00000413          	li	s0,0
    1664:	7ff00913          	li	s2,2047
    1668:	00200c13          	li	s8,2
    166c:	ef1ff06f          	j	155c <__divdf3+0x84>
    1670:	0179e6b3          	or	a3,s3,s7
    1674:	06068e63          	beqz	a3,16f0 <__divdf3+0x218>
    1678:	04098063          	beqz	s3,16b8 <__divdf3+0x1e0>
    167c:	00098513          	mv	a0,s3
    1680:	641000ef          	jal	ra,24c0 <__clzsi2>
    1684:	ff550793          	addi	a5,a0,-11
    1688:	01c00713          	li	a4,28
    168c:	02f74e63          	blt	a4,a5,16c8 <__divdf3+0x1f0>
    1690:	01d00613          	li	a2,29
    1694:	ff850693          	addi	a3,a0,-8
    1698:	40f60633          	sub	a2,a2,a5
    169c:	00d995b3          	sll	a1,s3,a3
    16a0:	00cbd633          	srl	a2,s7,a2
    16a4:	00b669b3          	or	s3,a2,a1
    16a8:	00db96b3          	sll	a3,s7,a3
    16ac:	c0d00713          	li	a4,-1011
    16b0:	40a70533          	sub	a0,a4,a0
    16b4:	ee5ff06f          	j	1598 <__divdf3+0xc0>
    16b8:	000b8513          	mv	a0,s7
    16bc:	605000ef          	jal	ra,24c0 <__clzsi2>
    16c0:	02050513          	addi	a0,a0,32
    16c4:	fc1ff06f          	j	1684 <__divdf3+0x1ac>
    16c8:	fd850593          	addi	a1,a0,-40
    16cc:	00bb99b3          	sll	s3,s7,a1
    16d0:	00000693          	li	a3,0
    16d4:	fd9ff06f          	j	16ac <__divdf3+0x1d4>
    16d8:	0179e6b3          	or	a3,s3,s7
    16dc:	02068263          	beqz	a3,1700 <__divdf3+0x228>
    16e0:	000b8693          	mv	a3,s7
    16e4:	7ff00513          	li	a0,2047
    16e8:	00300793          	li	a5,3
    16ec:	eb1ff06f          	j	159c <__divdf3+0xc4>
    16f0:	00000993          	li	s3,0
    16f4:	00000513          	li	a0,0
    16f8:	00100793          	li	a5,1
    16fc:	ea1ff06f          	j	159c <__divdf3+0xc4>
    1700:	00000993          	li	s3,0
    1704:	7ff00513          	li	a0,2047
    1708:	00200793          	li	a5,2
    170c:	e91ff06f          	j	159c <__divdf3+0xc4>
    1710:	0199e663          	bltu	s3,s9,171c <__divdf3+0x244>
    1714:	453c9a63          	bne	s9,s3,1b68 <__divdf3+0x690>
    1718:	44d46863          	bltu	s0,a3,1b68 <__divdf3+0x690>
    171c:	01fc9713          	slli	a4,s9,0x1f
    1720:	00145793          	srli	a5,s0,0x1
    1724:	01f41d93          	slli	s11,s0,0x1f
    1728:	001cdc93          	srli	s9,s9,0x1
    172c:	00f76433          	or	s0,a4,a5
    1730:	00899593          	slli	a1,s3,0x8
    1734:	0186da93          	srli	s5,a3,0x18
    1738:	00baeab3          	or	s5,s5,a1
    173c:	0105db93          	srli	s7,a1,0x10
    1740:	000b8593          	mv	a1,s7
    1744:	010a9c13          	slli	s8,s5,0x10
    1748:	000c8513          	mv	a0,s9
    174c:	00869b13          	slli	s6,a3,0x8
    1750:	010c5c13          	srli	s8,s8,0x10
    1754:	4c1000ef          	jal	ra,2414 <__udivsi3>
    1758:	00050593          	mv	a1,a0
    175c:	00050d13          	mv	s10,a0
    1760:	000c0513          	mv	a0,s8
    1764:	485000ef          	jal	ra,23e8 <__mulsi3>
    1768:	00050993          	mv	s3,a0
    176c:	000b8593          	mv	a1,s7
    1770:	000c8513          	mv	a0,s9
    1774:	4e9000ef          	jal	ra,245c <__umodsi3>
    1778:	01051513          	slli	a0,a0,0x10
    177c:	01045713          	srli	a4,s0,0x10
    1780:	00a76733          	or	a4,a4,a0
    1784:	000d0a13          	mv	s4,s10
    1788:	01377e63          	bgeu	a4,s3,17a4 <__divdf3+0x2cc>
    178c:	01570733          	add	a4,a4,s5
    1790:	fffd0a13          	addi	s4,s10,-1
    1794:	01576863          	bltu	a4,s5,17a4 <__divdf3+0x2cc>
    1798:	01377663          	bgeu	a4,s3,17a4 <__divdf3+0x2cc>
    179c:	ffed0a13          	addi	s4,s10,-2
    17a0:	01570733          	add	a4,a4,s5
    17a4:	413709b3          	sub	s3,a4,s3
    17a8:	000b8593          	mv	a1,s7
    17ac:	00098513          	mv	a0,s3
    17b0:	465000ef          	jal	ra,2414 <__udivsi3>
    17b4:	00050593          	mv	a1,a0
    17b8:	00050d13          	mv	s10,a0
    17bc:	000c0513          	mv	a0,s8
    17c0:	429000ef          	jal	ra,23e8 <__mulsi3>
    17c4:	00050c93          	mv	s9,a0
    17c8:	000b8593          	mv	a1,s7
    17cc:	00098513          	mv	a0,s3
    17d0:	48d000ef          	jal	ra,245c <__umodsi3>
    17d4:	01041413          	slli	s0,s0,0x10
    17d8:	01051513          	slli	a0,a0,0x10
    17dc:	01045413          	srli	s0,s0,0x10
    17e0:	00a46433          	or	s0,s0,a0
    17e4:	000d0793          	mv	a5,s10
    17e8:	01947e63          	bgeu	s0,s9,1804 <__divdf3+0x32c>
    17ec:	01540433          	add	s0,s0,s5
    17f0:	fffd0793          	addi	a5,s10,-1
    17f4:	01546863          	bltu	s0,s5,1804 <__divdf3+0x32c>
    17f8:	01947663          	bgeu	s0,s9,1804 <__divdf3+0x32c>
    17fc:	ffed0793          	addi	a5,s10,-2
    1800:	01540433          	add	s0,s0,s5
    1804:	010a1813          	slli	a6,s4,0x10
    1808:	00010e37          	lui	t3,0x10
    180c:	00f86833          	or	a6,a6,a5
    1810:	41940433          	sub	s0,s0,s9
    1814:	fffe0c93          	addi	s9,t3,-1 # ffff <__crt0_copy_data_src_begin+0xd5e7>
    1818:	019878b3          	and	a7,a6,s9
    181c:	019b7cb3          	and	s9,s6,s9
    1820:	01085713          	srli	a4,a6,0x10
    1824:	010b5d13          	srli	s10,s6,0x10
    1828:	00088513          	mv	a0,a7
    182c:	000c8593          	mv	a1,s9
    1830:	3b9000ef          	jal	ra,23e8 <__mulsi3>
    1834:	00050793          	mv	a5,a0
    1838:	000d0593          	mv	a1,s10
    183c:	00088513          	mv	a0,a7
    1840:	3a9000ef          	jal	ra,23e8 <__mulsi3>
    1844:	00050893          	mv	a7,a0
    1848:	000c8593          	mv	a1,s9
    184c:	00070513          	mv	a0,a4
    1850:	399000ef          	jal	ra,23e8 <__mulsi3>
    1854:	00050313          	mv	t1,a0
    1858:	000d0593          	mv	a1,s10
    185c:	00070513          	mv	a0,a4
    1860:	389000ef          	jal	ra,23e8 <__mulsi3>
    1864:	0107d713          	srli	a4,a5,0x10
    1868:	006888b3          	add	a7,a7,t1
    186c:	01170733          	add	a4,a4,a7
    1870:	00050613          	mv	a2,a0
    1874:	00677463          	bgeu	a4,t1,187c <__divdf3+0x3a4>
    1878:	01c50633          	add	a2,a0,t3
    187c:	00010537          	lui	a0,0x10
    1880:	fff50513          	addi	a0,a0,-1 # ffff <__crt0_copy_data_src_begin+0xd5e7>
    1884:	01075693          	srli	a3,a4,0x10
    1888:	00a77a33          	and	s4,a4,a0
    188c:	010a1a13          	slli	s4,s4,0x10
    1890:	00a7f7b3          	and	a5,a5,a0
    1894:	00c686b3          	add	a3,a3,a2
    1898:	00fa0a33          	add	s4,s4,a5
    189c:	00d46863          	bltu	s0,a3,18ac <__divdf3+0x3d4>
    18a0:	00080993          	mv	s3,a6
    18a4:	04d41463          	bne	s0,a3,18ec <__divdf3+0x414>
    18a8:	054df263          	bgeu	s11,s4,18ec <__divdf3+0x414>
    18ac:	016d8db3          	add	s11,s11,s6
    18b0:	016db7b3          	sltu	a5,s11,s6
    18b4:	015787b3          	add	a5,a5,s5
    18b8:	00f40433          	add	s0,s0,a5
    18bc:	fff80993          	addi	s3,a6,-1
    18c0:	008ae663          	bltu	s5,s0,18cc <__divdf3+0x3f4>
    18c4:	028a9463          	bne	s5,s0,18ec <__divdf3+0x414>
    18c8:	036de263          	bltu	s11,s6,18ec <__divdf3+0x414>
    18cc:	00d46663          	bltu	s0,a3,18d8 <__divdf3+0x400>
    18d0:	00869e63          	bne	a3,s0,18ec <__divdf3+0x414>
    18d4:	014dfc63          	bgeu	s11,s4,18ec <__divdf3+0x414>
    18d8:	016d8db3          	add	s11,s11,s6
    18dc:	016db7b3          	sltu	a5,s11,s6
    18e0:	015787b3          	add	a5,a5,s5
    18e4:	ffe80993          	addi	s3,a6,-2
    18e8:	00f40433          	add	s0,s0,a5
    18ec:	414d8a33          	sub	s4,s11,s4
    18f0:	40d40433          	sub	s0,s0,a3
    18f4:	014db7b3          	sltu	a5,s11,s4
    18f8:	40f40433          	sub	s0,s0,a5
    18fc:	fff00693          	li	a3,-1
    1900:	1a8a8263          	beq	s5,s0,1aa4 <__divdf3+0x5cc>
    1904:	000b8593          	mv	a1,s7
    1908:	00040513          	mv	a0,s0
    190c:	309000ef          	jal	ra,2414 <__udivsi3>
    1910:	00050593          	mv	a1,a0
    1914:	00a12623          	sw	a0,12(sp)
    1918:	000c0513          	mv	a0,s8
    191c:	2cd000ef          	jal	ra,23e8 <__mulsi3>
    1920:	00a12423          	sw	a0,8(sp)
    1924:	000b8593          	mv	a1,s7
    1928:	00040513          	mv	a0,s0
    192c:	331000ef          	jal	ra,245c <__umodsi3>
    1930:	00c12683          	lw	a3,12(sp)
    1934:	00812703          	lw	a4,8(sp)
    1938:	01051513          	slli	a0,a0,0x10
    193c:	010a5793          	srli	a5,s4,0x10
    1940:	00a7e7b3          	or	a5,a5,a0
    1944:	00068d93          	mv	s11,a3
    1948:	00e7fe63          	bgeu	a5,a4,1964 <__divdf3+0x48c>
    194c:	015787b3          	add	a5,a5,s5
    1950:	fff68d93          	addi	s11,a3,-1 # 7fefffff <__crt0_copy_data_src_begin+0x7fefd5e7>
    1954:	0157e863          	bltu	a5,s5,1964 <__divdf3+0x48c>
    1958:	00e7f663          	bgeu	a5,a4,1964 <__divdf3+0x48c>
    195c:	ffe68d93          	addi	s11,a3,-2
    1960:	015787b3          	add	a5,a5,s5
    1964:	40e78433          	sub	s0,a5,a4
    1968:	000b8593          	mv	a1,s7
    196c:	00040513          	mv	a0,s0
    1970:	2a5000ef          	jal	ra,2414 <__udivsi3>
    1974:	00050593          	mv	a1,a0
    1978:	00a12423          	sw	a0,8(sp)
    197c:	000c0513          	mv	a0,s8
    1980:	269000ef          	jal	ra,23e8 <__mulsi3>
    1984:	00050c13          	mv	s8,a0
    1988:	000b8593          	mv	a1,s7
    198c:	00040513          	mv	a0,s0
    1990:	2cd000ef          	jal	ra,245c <__umodsi3>
    1994:	00812703          	lw	a4,8(sp)
    1998:	010a1a13          	slli	s4,s4,0x10
    199c:	01051793          	slli	a5,a0,0x10
    19a0:	010a5a13          	srli	s4,s4,0x10
    19a4:	00fa67b3          	or	a5,s4,a5
    19a8:	00070693          	mv	a3,a4
    19ac:	0187fe63          	bgeu	a5,s8,19c8 <__divdf3+0x4f0>
    19b0:	015787b3          	add	a5,a5,s5
    19b4:	fff70693          	addi	a3,a4,-1
    19b8:	0157e863          	bltu	a5,s5,19c8 <__divdf3+0x4f0>
    19bc:	0187f663          	bgeu	a5,s8,19c8 <__divdf3+0x4f0>
    19c0:	ffe70693          	addi	a3,a4,-2
    19c4:	015787b3          	add	a5,a5,s5
    19c8:	010d9813          	slli	a6,s11,0x10
    19cc:	00d86833          	or	a6,a6,a3
    19d0:	01081893          	slli	a7,a6,0x10
    19d4:	0108d893          	srli	a7,a7,0x10
    19d8:	418787b3          	sub	a5,a5,s8
    19dc:	01085713          	srli	a4,a6,0x10
    19e0:	00088513          	mv	a0,a7
    19e4:	000c8593          	mv	a1,s9
    19e8:	201000ef          	jal	ra,23e8 <__mulsi3>
    19ec:	00050313          	mv	t1,a0
    19f0:	000d0593          	mv	a1,s10
    19f4:	00088513          	mv	a0,a7
    19f8:	1f1000ef          	jal	ra,23e8 <__mulsi3>
    19fc:	00050893          	mv	a7,a0
    1a00:	000c8593          	mv	a1,s9
    1a04:	00070513          	mv	a0,a4
    1a08:	1e1000ef          	jal	ra,23e8 <__mulsi3>
    1a0c:	00050e13          	mv	t3,a0
    1a10:	000d0593          	mv	a1,s10
    1a14:	00070513          	mv	a0,a4
    1a18:	1d1000ef          	jal	ra,23e8 <__mulsi3>
    1a1c:	01035713          	srli	a4,t1,0x10
    1a20:	01c888b3          	add	a7,a7,t3
    1a24:	01170733          	add	a4,a4,a7
    1a28:	00050693          	mv	a3,a0
    1a2c:	01c77663          	bgeu	a4,t3,1a38 <__divdf3+0x560>
    1a30:	00010637          	lui	a2,0x10
    1a34:	00c506b3          	add	a3,a0,a2
    1a38:	00010537          	lui	a0,0x10
    1a3c:	fff50513          	addi	a0,a0,-1 # ffff <__crt0_copy_data_src_begin+0xd5e7>
    1a40:	01075613          	srli	a2,a4,0x10
    1a44:	00a77733          	and	a4,a4,a0
    1a48:	01071713          	slli	a4,a4,0x10
    1a4c:	00a37533          	and	a0,t1,a0
    1a50:	00d60633          	add	a2,a2,a3
    1a54:	00a70533          	add	a0,a4,a0
    1a58:	00c7e863          	bltu	a5,a2,1a68 <__divdf3+0x590>
    1a5c:	24c79a63          	bne	a5,a2,1cb0 <__divdf3+0x7d8>
    1a60:	00080693          	mv	a3,a6
    1a64:	04050063          	beqz	a0,1aa4 <__divdf3+0x5cc>
    1a68:	00fa87b3          	add	a5,s5,a5
    1a6c:	fff80693          	addi	a3,a6,-1
    1a70:	0357e463          	bltu	a5,s5,1a98 <__divdf3+0x5c0>
    1a74:	00c7e663          	bltu	a5,a2,1a80 <__divdf3+0x5a8>
    1a78:	22c79a63          	bne	a5,a2,1cac <__divdf3+0x7d4>
    1a7c:	02ab7063          	bgeu	s6,a0,1a9c <__divdf3+0x5c4>
    1a80:	001b1713          	slli	a4,s6,0x1
    1a84:	01673b33          	sltu	s6,a4,s6
    1a88:	015b0ab3          	add	s5,s6,s5
    1a8c:	ffe80693          	addi	a3,a6,-2
    1a90:	015787b3          	add	a5,a5,s5
    1a94:	00070b13          	mv	s6,a4
    1a98:	00c79463          	bne	a5,a2,1aa0 <__divdf3+0x5c8>
    1a9c:	00ab0463          	beq	s6,a0,1aa4 <__divdf3+0x5cc>
    1aa0:	0016e693          	ori	a3,a3,1
    1aa4:	3ff90793          	addi	a5,s2,1023
    1aa8:	12f05063          	blez	a5,1bc8 <__divdf3+0x6f0>
    1aac:	0076f713          	andi	a4,a3,7
    1ab0:	02070063          	beqz	a4,1ad0 <__divdf3+0x5f8>
    1ab4:	00f6f713          	andi	a4,a3,15
    1ab8:	00400613          	li	a2,4
    1abc:	00c70a63          	beq	a4,a2,1ad0 <__divdf3+0x5f8>
    1ac0:	00468613          	addi	a2,a3,4
    1ac4:	00d636b3          	sltu	a3,a2,a3
    1ac8:	00d989b3          	add	s3,s3,a3
    1acc:	00060693          	mv	a3,a2
    1ad0:	01000737          	lui	a4,0x1000
    1ad4:	00e9f733          	and	a4,s3,a4
    1ad8:	00070a63          	beqz	a4,1aec <__divdf3+0x614>
    1adc:	ff0007b7          	lui	a5,0xff000
    1ae0:	fff78793          	addi	a5,a5,-1 # feffffff <__ctr0_io_space_begin+0xff0001ff>
    1ae4:	00f9f9b3          	and	s3,s3,a5
    1ae8:	40090793          	addi	a5,s2,1024
    1aec:	7fe00713          	li	a4,2046
    1af0:	0af74663          	blt	a4,a5,1b9c <__divdf3+0x6c4>
    1af4:	0036d693          	srli	a3,a3,0x3
    1af8:	01d99713          	slli	a4,s3,0x1d
    1afc:	00d76733          	or	a4,a4,a3
    1b00:	0039d593          	srli	a1,s3,0x3
    1b04:	01479793          	slli	a5,a5,0x14
    1b08:	7ff006b7          	lui	a3,0x7ff00
    1b0c:	00c59593          	slli	a1,a1,0xc
    1b10:	04c12083          	lw	ra,76(sp)
    1b14:	04812403          	lw	s0,72(sp)
    1b18:	00d7f7b3          	and	a5,a5,a3
    1b1c:	00c5d593          	srli	a1,a1,0xc
    1b20:	00b7e5b3          	or	a1,a5,a1
    1b24:	01f49493          	slli	s1,s1,0x1f
    1b28:	0095e7b3          	or	a5,a1,s1
    1b2c:	04012903          	lw	s2,64(sp)
    1b30:	04412483          	lw	s1,68(sp)
    1b34:	03c12983          	lw	s3,60(sp)
    1b38:	03812a03          	lw	s4,56(sp)
    1b3c:	03412a83          	lw	s5,52(sp)
    1b40:	03012b03          	lw	s6,48(sp)
    1b44:	02c12b83          	lw	s7,44(sp)
    1b48:	02812c03          	lw	s8,40(sp)
    1b4c:	02412c83          	lw	s9,36(sp)
    1b50:	02012d03          	lw	s10,32(sp)
    1b54:	01c12d83          	lw	s11,28(sp)
    1b58:	00070513          	mv	a0,a4
    1b5c:	00078593          	mv	a1,a5
    1b60:	05010113          	addi	sp,sp,80
    1b64:	00008067          	ret
    1b68:	fff90913          	addi	s2,s2,-1
    1b6c:	00000d93          	li	s11,0
    1b70:	bc1ff06f          	j	1730 <__divdf3+0x258>
    1b74:	000a8493          	mv	s1,s5
    1b78:	000c8993          	mv	s3,s9
    1b7c:	00040693          	mv	a3,s0
    1b80:	000c0793          	mv	a5,s8
    1b84:	00300713          	li	a4,3
    1b88:	0ee78a63          	beq	a5,a4,1c7c <__divdf3+0x7a4>
    1b8c:	00100713          	li	a4,1
    1b90:	10e78063          	beq	a5,a4,1c90 <__divdf3+0x7b8>
    1b94:	00200713          	li	a4,2
    1b98:	f0e796e3          	bne	a5,a4,1aa4 <__divdf3+0x5cc>
    1b9c:	00000593          	li	a1,0
    1ba0:	00000713          	li	a4,0
    1ba4:	7ff00793          	li	a5,2047
    1ba8:	f5dff06f          	j	1b04 <__divdf3+0x62c>
    1bac:	000b0493          	mv	s1,s6
    1bb0:	fd5ff06f          	j	1b84 <__divdf3+0x6ac>
    1bb4:	000809b7          	lui	s3,0x80
    1bb8:	00000693          	li	a3,0
    1bbc:	00000493          	li	s1,0
    1bc0:	00300793          	li	a5,3
    1bc4:	fc1ff06f          	j	1b84 <__divdf3+0x6ac>
    1bc8:	00100593          	li	a1,1
    1bcc:	40f585b3          	sub	a1,a1,a5
    1bd0:	03800713          	li	a4,56
    1bd4:	0ab74e63          	blt	a4,a1,1c90 <__divdf3+0x7b8>
    1bd8:	01f00713          	li	a4,31
    1bdc:	06b74663          	blt	a4,a1,1c48 <__divdf3+0x770>
    1be0:	41e90913          	addi	s2,s2,1054
    1be4:	012997b3          	sll	a5,s3,s2
    1be8:	00b6d733          	srl	a4,a3,a1
    1bec:	01269933          	sll	s2,a3,s2
    1bf0:	00e7e7b3          	or	a5,a5,a4
    1bf4:	01203933          	snez	s2,s2
    1bf8:	0127e7b3          	or	a5,a5,s2
    1bfc:	00b9d5b3          	srl	a1,s3,a1
    1c00:	0077f713          	andi	a4,a5,7
    1c04:	02070063          	beqz	a4,1c24 <__divdf3+0x74c>
    1c08:	00f7f713          	andi	a4,a5,15
    1c0c:	00400693          	li	a3,4
    1c10:	00d70a63          	beq	a4,a3,1c24 <__divdf3+0x74c>
    1c14:	00478713          	addi	a4,a5,4
    1c18:	00f737b3          	sltu	a5,a4,a5
    1c1c:	00f585b3          	add	a1,a1,a5
    1c20:	00070793          	mv	a5,a4
    1c24:	00800737          	lui	a4,0x800
    1c28:	00e5f733          	and	a4,a1,a4
    1c2c:	06071863          	bnez	a4,1c9c <__divdf3+0x7c4>
    1c30:	01d59713          	slli	a4,a1,0x1d
    1c34:	0037d793          	srli	a5,a5,0x3
    1c38:	00f76733          	or	a4,a4,a5
    1c3c:	0035d593          	srli	a1,a1,0x3
    1c40:	00000793          	li	a5,0
    1c44:	ec1ff06f          	j	1b04 <__divdf3+0x62c>
    1c48:	fe100713          	li	a4,-31
    1c4c:	40f707b3          	sub	a5,a4,a5
    1c50:	02000613          	li	a2,32
    1c54:	00f9d7b3          	srl	a5,s3,a5
    1c58:	00000713          	li	a4,0
    1c5c:	00c58663          	beq	a1,a2,1c68 <__divdf3+0x790>
    1c60:	43e90713          	addi	a4,s2,1086
    1c64:	00e99733          	sll	a4,s3,a4
    1c68:	00d76733          	or	a4,a4,a3
    1c6c:	00e03733          	snez	a4,a4
    1c70:	00e7e7b3          	or	a5,a5,a4
    1c74:	00000593          	li	a1,0
    1c78:	f89ff06f          	j	1c00 <__divdf3+0x728>
    1c7c:	000805b7          	lui	a1,0x80
    1c80:	00000713          	li	a4,0
    1c84:	7ff00793          	li	a5,2047
    1c88:	00000493          	li	s1,0
    1c8c:	e79ff06f          	j	1b04 <__divdf3+0x62c>
    1c90:	00000593          	li	a1,0
    1c94:	00000713          	li	a4,0
    1c98:	fa9ff06f          	j	1c40 <__divdf3+0x768>
    1c9c:	00000593          	li	a1,0
    1ca0:	00000713          	li	a4,0
    1ca4:	00100793          	li	a5,1
    1ca8:	e5dff06f          	j	1b04 <__divdf3+0x62c>
    1cac:	00068813          	mv	a6,a3
    1cb0:	00080693          	mv	a3,a6
    1cb4:	dedff06f          	j	1aa0 <__divdf3+0x5c8>

00001cb8 <__muldf3>:
    1cb8:	fd010113          	addi	sp,sp,-48
    1cbc:	01312e23          	sw	s3,28(sp)
    1cc0:	0145d993          	srli	s3,a1,0x14
    1cc4:	02812423          	sw	s0,40(sp)
    1cc8:	02912223          	sw	s1,36(sp)
    1ccc:	01412c23          	sw	s4,24(sp)
    1cd0:	01512a23          	sw	s5,20(sp)
    1cd4:	01712623          	sw	s7,12(sp)
    1cd8:	00c59493          	slli	s1,a1,0xc
    1cdc:	02112623          	sw	ra,44(sp)
    1ce0:	03212023          	sw	s2,32(sp)
    1ce4:	01612823          	sw	s6,16(sp)
    1ce8:	7ff9f993          	andi	s3,s3,2047
    1cec:	00050413          	mv	s0,a0
    1cf0:	00060b93          	mv	s7,a2
    1cf4:	00068a93          	mv	s5,a3
    1cf8:	00c4d493          	srli	s1,s1,0xc
    1cfc:	01f5da13          	srli	s4,a1,0x1f
    1d00:	0a098263          	beqz	s3,1da4 <__muldf3+0xec>
    1d04:	7ff00793          	li	a5,2047
    1d08:	10f98063          	beq	s3,a5,1e08 <__muldf3+0x150>
    1d0c:	01d55793          	srli	a5,a0,0x1d
    1d10:	00349493          	slli	s1,s1,0x3
    1d14:	0097e4b3          	or	s1,a5,s1
    1d18:	008007b7          	lui	a5,0x800
    1d1c:	00f4e4b3          	or	s1,s1,a5
    1d20:	00351913          	slli	s2,a0,0x3
    1d24:	c0198993          	addi	s3,s3,-1023 # 7fc01 <__crt0_copy_data_src_begin+0x7d1e9>
    1d28:	00000b13          	li	s6,0
    1d2c:	014ad513          	srli	a0,s5,0x14
    1d30:	00ca9413          	slli	s0,s5,0xc
    1d34:	7ff57513          	andi	a0,a0,2047
    1d38:	00c45413          	srli	s0,s0,0xc
    1d3c:	01fada93          	srli	s5,s5,0x1f
    1d40:	10050063          	beqz	a0,1e40 <__muldf3+0x188>
    1d44:	7ff00793          	li	a5,2047
    1d48:	16f50063          	beq	a0,a5,1ea8 <__muldf3+0x1f0>
    1d4c:	01dbd793          	srli	a5,s7,0x1d
    1d50:	00341413          	slli	s0,s0,0x3
    1d54:	0087e433          	or	s0,a5,s0
    1d58:	008007b7          	lui	a5,0x800
    1d5c:	00f46433          	or	s0,s0,a5
    1d60:	c0150513          	addi	a0,a0,-1023
    1d64:	003b9793          	slli	a5,s7,0x3
    1d68:	00000713          	li	a4,0
    1d6c:	002b1693          	slli	a3,s6,0x2
    1d70:	00e6e6b3          	or	a3,a3,a4
    1d74:	00a989b3          	add	s3,s3,a0
    1d78:	fff68693          	addi	a3,a3,-1 # 7fefffff <__crt0_copy_data_src_begin+0x7fefd5e7>
    1d7c:	00e00613          	li	a2,14
    1d80:	015a4833          	xor	a6,s4,s5
    1d84:	00198893          	addi	a7,s3,1
    1d88:	14d66c63          	bltu	a2,a3,1ee0 <__muldf3+0x228>
    1d8c:	00003637          	lui	a2,0x3
    1d90:	00269693          	slli	a3,a3,0x2
    1d94:	8dc60613          	addi	a2,a2,-1828 # 28dc <hex_symbols.0+0x4c>
    1d98:	00c686b3          	add	a3,a3,a2
    1d9c:	0006a683          	lw	a3,0(a3)
    1da0:	00068067          	jr	a3
    1da4:	00a4e933          	or	s2,s1,a0
    1da8:	06090c63          	beqz	s2,1e20 <__muldf3+0x168>
    1dac:	04048063          	beqz	s1,1dec <__muldf3+0x134>
    1db0:	00048513          	mv	a0,s1
    1db4:	70c000ef          	jal	ra,24c0 <__clzsi2>
    1db8:	ff550713          	addi	a4,a0,-11
    1dbc:	01c00793          	li	a5,28
    1dc0:	02e7cc63          	blt	a5,a4,1df8 <__muldf3+0x140>
    1dc4:	01d00793          	li	a5,29
    1dc8:	ff850913          	addi	s2,a0,-8
    1dcc:	40e787b3          	sub	a5,a5,a4
    1dd0:	012494b3          	sll	s1,s1,s2
    1dd4:	00f457b3          	srl	a5,s0,a5
    1dd8:	0097e4b3          	or	s1,a5,s1
    1ddc:	01241933          	sll	s2,s0,s2
    1de0:	c0d00993          	li	s3,-1011
    1de4:	40a989b3          	sub	s3,s3,a0
    1de8:	f41ff06f          	j	1d28 <__muldf3+0x70>
    1dec:	6d4000ef          	jal	ra,24c0 <__clzsi2>
    1df0:	02050513          	addi	a0,a0,32
    1df4:	fc5ff06f          	j	1db8 <__muldf3+0x100>
    1df8:	fd850493          	addi	s1,a0,-40
    1dfc:	009414b3          	sll	s1,s0,s1
    1e00:	00000913          	li	s2,0
    1e04:	fddff06f          	j	1de0 <__muldf3+0x128>
    1e08:	00a4e933          	or	s2,s1,a0
    1e0c:	02090263          	beqz	s2,1e30 <__muldf3+0x178>
    1e10:	00050913          	mv	s2,a0
    1e14:	7ff00993          	li	s3,2047
    1e18:	00300b13          	li	s6,3
    1e1c:	f11ff06f          	j	1d2c <__muldf3+0x74>
    1e20:	00000493          	li	s1,0
    1e24:	00000993          	li	s3,0
    1e28:	00100b13          	li	s6,1
    1e2c:	f01ff06f          	j	1d2c <__muldf3+0x74>
    1e30:	00000493          	li	s1,0
    1e34:	7ff00993          	li	s3,2047
    1e38:	00200b13          	li	s6,2
    1e3c:	ef1ff06f          	j	1d2c <__muldf3+0x74>
    1e40:	017467b3          	or	a5,s0,s7
    1e44:	06078e63          	beqz	a5,1ec0 <__muldf3+0x208>
    1e48:	04040063          	beqz	s0,1e88 <__muldf3+0x1d0>
    1e4c:	00040513          	mv	a0,s0
    1e50:	670000ef          	jal	ra,24c0 <__clzsi2>
    1e54:	ff550693          	addi	a3,a0,-11
    1e58:	01c00793          	li	a5,28
    1e5c:	02d7ce63          	blt	a5,a3,1e98 <__muldf3+0x1e0>
    1e60:	01d00713          	li	a4,29
    1e64:	ff850793          	addi	a5,a0,-8
    1e68:	40d70733          	sub	a4,a4,a3
    1e6c:	00f41433          	sll	s0,s0,a5
    1e70:	00ebd733          	srl	a4,s7,a4
    1e74:	00876433          	or	s0,a4,s0
    1e78:	00fb97b3          	sll	a5,s7,a5
    1e7c:	c0d00713          	li	a4,-1011
    1e80:	40a70533          	sub	a0,a4,a0
    1e84:	ee5ff06f          	j	1d68 <__muldf3+0xb0>
    1e88:	000b8513          	mv	a0,s7
    1e8c:	634000ef          	jal	ra,24c0 <__clzsi2>
    1e90:	02050513          	addi	a0,a0,32
    1e94:	fc1ff06f          	j	1e54 <__muldf3+0x19c>
    1e98:	fd850413          	addi	s0,a0,-40
    1e9c:	008b9433          	sll	s0,s7,s0
    1ea0:	00000793          	li	a5,0
    1ea4:	fd9ff06f          	j	1e7c <__muldf3+0x1c4>
    1ea8:	017467b3          	or	a5,s0,s7
    1eac:	02078263          	beqz	a5,1ed0 <__muldf3+0x218>
    1eb0:	000b8793          	mv	a5,s7
    1eb4:	7ff00513          	li	a0,2047
    1eb8:	00300713          	li	a4,3
    1ebc:	eb1ff06f          	j	1d6c <__muldf3+0xb4>
    1ec0:	00000413          	li	s0,0
    1ec4:	00000513          	li	a0,0
    1ec8:	00100713          	li	a4,1
    1ecc:	ea1ff06f          	j	1d6c <__muldf3+0xb4>
    1ed0:	00000413          	li	s0,0
    1ed4:	7ff00513          	li	a0,2047
    1ed8:	00200713          	li	a4,2
    1edc:	e91ff06f          	j	1d6c <__muldf3+0xb4>
    1ee0:	00010ab7          	lui	s5,0x10
    1ee4:	fffa8e93          	addi	t4,s5,-1 # ffff <__crt0_copy_data_src_begin+0xd5e7>
    1ee8:	01095f93          	srli	t6,s2,0x10
    1eec:	01d7fa33          	and	s4,a5,t4
    1ef0:	01d97933          	and	s2,s2,t4
    1ef4:	0107d293          	srli	t0,a5,0x10
    1ef8:	00090513          	mv	a0,s2
    1efc:	000a0593          	mv	a1,s4
    1f00:	4e8000ef          	jal	ra,23e8 <__mulsi3>
    1f04:	00050393          	mv	t2,a0
    1f08:	00028593          	mv	a1,t0
    1f0c:	00090513          	mv	a0,s2
    1f10:	4d8000ef          	jal	ra,23e8 <__mulsi3>
    1f14:	00050313          	mv	t1,a0
    1f18:	000a0593          	mv	a1,s4
    1f1c:	000f8513          	mv	a0,t6
    1f20:	4c8000ef          	jal	ra,23e8 <__mulsi3>
    1f24:	00050e13          	mv	t3,a0
    1f28:	00028593          	mv	a1,t0
    1f2c:	000f8513          	mv	a0,t6
    1f30:	4b8000ef          	jal	ra,23e8 <__mulsi3>
    1f34:	0103d713          	srli	a4,t2,0x10
    1f38:	01c30333          	add	t1,t1,t3
    1f3c:	00670733          	add	a4,a4,t1
    1f40:	00050f13          	mv	t5,a0
    1f44:	01c77463          	bgeu	a4,t3,1f4c <__muldf3+0x294>
    1f48:	01550f33          	add	t5,a0,s5
    1f4c:	01d77e33          	and	t3,a4,t4
    1f50:	01d3f3b3          	and	t2,t2,t4
    1f54:	010e1e13          	slli	t3,t3,0x10
    1f58:	007e0e33          	add	t3,t3,t2
    1f5c:	01045393          	srli	t2,s0,0x10
    1f60:	01d47433          	and	s0,s0,t4
    1f64:	01075a93          	srli	s5,a4,0x10
    1f68:	00090513          	mv	a0,s2
    1f6c:	00040593          	mv	a1,s0
    1f70:	478000ef          	jal	ra,23e8 <__mulsi3>
    1f74:	00050e93          	mv	t4,a0
    1f78:	00038593          	mv	a1,t2
    1f7c:	00090513          	mv	a0,s2
    1f80:	468000ef          	jal	ra,23e8 <__mulsi3>
    1f84:	00050793          	mv	a5,a0
    1f88:	00040593          	mv	a1,s0
    1f8c:	000f8513          	mv	a0,t6
    1f90:	458000ef          	jal	ra,23e8 <__mulsi3>
    1f94:	00050313          	mv	t1,a0
    1f98:	00038593          	mv	a1,t2
    1f9c:	000f8513          	mv	a0,t6
    1fa0:	448000ef          	jal	ra,23e8 <__mulsi3>
    1fa4:	010ed693          	srli	a3,t4,0x10
    1fa8:	006787b3          	add	a5,a5,t1
    1fac:	00f686b3          	add	a3,a3,a5
    1fb0:	00050713          	mv	a4,a0
    1fb4:	0066f663          	bgeu	a3,t1,1fc0 <__muldf3+0x308>
    1fb8:	000107b7          	lui	a5,0x10
    1fbc:	00f50733          	add	a4,a0,a5
    1fc0:	00010937          	lui	s2,0x10
    1fc4:	fff90793          	addi	a5,s2,-1 # ffff <__crt0_copy_data_src_begin+0xd5e7>
    1fc8:	0106df93          	srli	t6,a3,0x10
    1fcc:	00f6f6b3          	and	a3,a3,a5
    1fd0:	01069693          	slli	a3,a3,0x10
    1fd4:	00fefeb3          	and	t4,t4,a5
    1fd8:	01d68eb3          	add	t4,a3,t4
    1fdc:	0104db13          	srli	s6,s1,0x10
    1fe0:	00f4f4b3          	and	s1,s1,a5
    1fe4:	00ef8fb3          	add	t6,t6,a4
    1fe8:	01da8ab3          	add	s5,s5,t4
    1fec:	00048513          	mv	a0,s1
    1ff0:	000a0593          	mv	a1,s4
    1ff4:	3f4000ef          	jal	ra,23e8 <__mulsi3>
    1ff8:	00050713          	mv	a4,a0
    1ffc:	00028593          	mv	a1,t0
    2000:	00048513          	mv	a0,s1
    2004:	3e4000ef          	jal	ra,23e8 <__mulsi3>
    2008:	00050313          	mv	t1,a0
    200c:	000a0593          	mv	a1,s4
    2010:	000b0513          	mv	a0,s6
    2014:	3d4000ef          	jal	ra,23e8 <__mulsi3>
    2018:	00050a13          	mv	s4,a0
    201c:	00028593          	mv	a1,t0
    2020:	000b0513          	mv	a0,s6
    2024:	3c4000ef          	jal	ra,23e8 <__mulsi3>
    2028:	01075793          	srli	a5,a4,0x10
    202c:	01430333          	add	t1,t1,s4
    2030:	006787b3          	add	a5,a5,t1
    2034:	00050613          	mv	a2,a0
    2038:	0147f463          	bgeu	a5,s4,2040 <__muldf3+0x388>
    203c:	01250633          	add	a2,a0,s2
    2040:	00010a37          	lui	s4,0x10
    2044:	fffa0513          	addi	a0,s4,-1 # ffff <__crt0_copy_data_src_begin+0xd5e7>
    2048:	00a7f333          	and	t1,a5,a0
    204c:	00a77733          	and	a4,a4,a0
    2050:	0107d293          	srli	t0,a5,0x10
    2054:	01031313          	slli	t1,t1,0x10
    2058:	00c282b3          	add	t0,t0,a2
    205c:	00e30333          	add	t1,t1,a4
    2060:	00048513          	mv	a0,s1
    2064:	00040593          	mv	a1,s0
    2068:	380000ef          	jal	ra,23e8 <__mulsi3>
    206c:	00050913          	mv	s2,a0
    2070:	00038593          	mv	a1,t2
    2074:	00048513          	mv	a0,s1
    2078:	370000ef          	jal	ra,23e8 <__mulsi3>
    207c:	00050793          	mv	a5,a0
    2080:	00040593          	mv	a1,s0
    2084:	000b0513          	mv	a0,s6
    2088:	360000ef          	jal	ra,23e8 <__mulsi3>
    208c:	00050493          	mv	s1,a0
    2090:	00038593          	mv	a1,t2
    2094:	000b0513          	mv	a0,s6
    2098:	350000ef          	jal	ra,23e8 <__mulsi3>
    209c:	01095413          	srli	s0,s2,0x10
    20a0:	009787b3          	add	a5,a5,s1
    20a4:	00f407b3          	add	a5,s0,a5
    20a8:	00050393          	mv	t2,a0
    20ac:	0097f463          	bgeu	a5,s1,20b4 <__muldf3+0x3fc>
    20b0:	014503b3          	add	t2,a0,s4
    20b4:	00010737          	lui	a4,0x10
    20b8:	fff70713          	addi	a4,a4,-1 # ffff <__crt0_copy_data_src_begin+0xd5e7>
    20bc:	00e7f6b3          	and	a3,a5,a4
    20c0:	01069693          	slli	a3,a3,0x10
    20c4:	00e97733          	and	a4,s2,a4
    20c8:	015f0f33          	add	t5,t5,s5
    20cc:	00e686b3          	add	a3,a3,a4
    20d0:	01df3eb3          	sltu	t4,t5,t4
    20d4:	01f68733          	add	a4,a3,t6
    20d8:	01d70433          	add	s0,a4,t4
    20dc:	006f0f33          	add	t5,t5,t1
    20e0:	006f3333          	sltu	t1,t5,t1
    20e4:	00540633          	add	a2,s0,t0
    20e8:	006605b3          	add	a1,a2,t1
    20ec:	01d43eb3          	sltu	t4,s0,t4
    20f0:	01f73733          	sltu	a4,a4,t6
    20f4:	0107d413          	srli	s0,a5,0x10
    20f8:	01d76733          	or	a4,a4,t4
    20fc:	00563633          	sltu	a2,a2,t0
    2100:	0065b333          	sltu	t1,a1,t1
    2104:	00870733          	add	a4,a4,s0
    2108:	00666333          	or	t1,a2,t1
    210c:	00670433          	add	s0,a4,t1
    2110:	00740433          	add	s0,s0,t2
    2114:	0175d793          	srli	a5,a1,0x17
    2118:	00941413          	slli	s0,s0,0x9
    211c:	00f46433          	or	s0,s0,a5
    2120:	009f1793          	slli	a5,t5,0x9
    2124:	01c7e7b3          	or	a5,a5,t3
    2128:	00f037b3          	snez	a5,a5
    212c:	017f5f13          	srli	t5,t5,0x17
    2130:	00959713          	slli	a4,a1,0x9
    2134:	01e7e7b3          	or	a5,a5,t5
    2138:	00e7e7b3          	or	a5,a5,a4
    213c:	01000737          	lui	a4,0x1000
    2140:	00e47733          	and	a4,s0,a4
    2144:	10070663          	beqz	a4,2250 <__muldf3+0x598>
    2148:	0017d713          	srli	a4,a5,0x1
    214c:	0017f793          	andi	a5,a5,1
    2150:	00f767b3          	or	a5,a4,a5
    2154:	01f41713          	slli	a4,s0,0x1f
    2158:	00e7e7b3          	or	a5,a5,a4
    215c:	00145413          	srli	s0,s0,0x1
    2160:	3ff88693          	addi	a3,a7,1023 # 8003ff <__crt0_copy_data_src_begin+0x7fd9e7>
    2164:	0ed05a63          	blez	a3,2258 <__muldf3+0x5a0>
    2168:	0077f713          	andi	a4,a5,7
    216c:	02070063          	beqz	a4,218c <__muldf3+0x4d4>
    2170:	00f7f713          	andi	a4,a5,15
    2174:	00400613          	li	a2,4
    2178:	00c70a63          	beq	a4,a2,218c <__muldf3+0x4d4>
    217c:	00478713          	addi	a4,a5,4 # 10004 <__crt0_copy_data_src_begin+0xd5ec>
    2180:	00f737b3          	sltu	a5,a4,a5
    2184:	00f40433          	add	s0,s0,a5
    2188:	00070793          	mv	a5,a4
    218c:	01000737          	lui	a4,0x1000
    2190:	00e47733          	and	a4,s0,a4
    2194:	00070a63          	beqz	a4,21a8 <__muldf3+0x4f0>
    2198:	ff000737          	lui	a4,0xff000
    219c:	fff70713          	addi	a4,a4,-1 # feffffff <__ctr0_io_space_begin+0xff0001ff>
    21a0:	00e47433          	and	s0,s0,a4
    21a4:	40088693          	addi	a3,a7,1024
    21a8:	7fe00713          	li	a4,2046
    21ac:	16d74a63          	blt	a4,a3,2320 <__muldf3+0x668>
    21b0:	0037d713          	srli	a4,a5,0x3
    21b4:	01d41793          	slli	a5,s0,0x1d
    21b8:	00e7e7b3          	or	a5,a5,a4
    21bc:	00345413          	srli	s0,s0,0x3
    21c0:	01469713          	slli	a4,a3,0x14
    21c4:	00c41413          	slli	s0,s0,0xc
    21c8:	7ff006b7          	lui	a3,0x7ff00
    21cc:	00d77733          	and	a4,a4,a3
    21d0:	00c45413          	srli	s0,s0,0xc
    21d4:	00876433          	or	s0,a4,s0
    21d8:	01f81813          	slli	a6,a6,0x1f
    21dc:	02c12083          	lw	ra,44(sp)
    21e0:	01046733          	or	a4,s0,a6
    21e4:	02812403          	lw	s0,40(sp)
    21e8:	02412483          	lw	s1,36(sp)
    21ec:	02012903          	lw	s2,32(sp)
    21f0:	01c12983          	lw	s3,28(sp)
    21f4:	01812a03          	lw	s4,24(sp)
    21f8:	01412a83          	lw	s5,20(sp)
    21fc:	01012b03          	lw	s6,16(sp)
    2200:	00c12b83          	lw	s7,12(sp)
    2204:	00078513          	mv	a0,a5
    2208:	00070593          	mv	a1,a4
    220c:	03010113          	addi	sp,sp,48
    2210:	00008067          	ret
    2214:	000a0813          	mv	a6,s4
    2218:	00048413          	mv	s0,s1
    221c:	00090793          	mv	a5,s2
    2220:	000b0713          	mv	a4,s6
    2224:	00200693          	li	a3,2
    2228:	0ed70c63          	beq	a4,a3,2320 <__muldf3+0x668>
    222c:	00300693          	li	a3,3
    2230:	0cd70e63          	beq	a4,a3,230c <__muldf3+0x654>
    2234:	00100693          	li	a3,1
    2238:	f2d714e3          	bne	a4,a3,2160 <__muldf3+0x4a8>
    223c:	00000413          	li	s0,0
    2240:	00000793          	li	a5,0
    2244:	08c0006f          	j	22d0 <__muldf3+0x618>
    2248:	000a8813          	mv	a6,s5
    224c:	fd9ff06f          	j	2224 <__muldf3+0x56c>
    2250:	00098893          	mv	a7,s3
    2254:	f0dff06f          	j	2160 <__muldf3+0x4a8>
    2258:	00100613          	li	a2,1
    225c:	40d60633          	sub	a2,a2,a3
    2260:	03800713          	li	a4,56
    2264:	fcc74ce3          	blt	a4,a2,223c <__muldf3+0x584>
    2268:	01f00713          	li	a4,31
    226c:	06c74663          	blt	a4,a2,22d8 <__muldf3+0x620>
    2270:	41e88893          	addi	a7,a7,1054
    2274:	01141733          	sll	a4,s0,a7
    2278:	00c7d6b3          	srl	a3,a5,a2
    227c:	011797b3          	sll	a5,a5,a7
    2280:	00d76733          	or	a4,a4,a3
    2284:	00f037b3          	snez	a5,a5
    2288:	00f767b3          	or	a5,a4,a5
    228c:	00c45433          	srl	s0,s0,a2
    2290:	0077f713          	andi	a4,a5,7
    2294:	02070063          	beqz	a4,22b4 <__muldf3+0x5fc>
    2298:	00f7f713          	andi	a4,a5,15
    229c:	00400693          	li	a3,4
    22a0:	00d70a63          	beq	a4,a3,22b4 <__muldf3+0x5fc>
    22a4:	00478713          	addi	a4,a5,4
    22a8:	00f737b3          	sltu	a5,a4,a5
    22ac:	00f40433          	add	s0,s0,a5
    22b0:	00070793          	mv	a5,a4
    22b4:	00800737          	lui	a4,0x800
    22b8:	00e47733          	and	a4,s0,a4
    22bc:	06071a63          	bnez	a4,2330 <__muldf3+0x678>
    22c0:	01d41713          	slli	a4,s0,0x1d
    22c4:	0037d793          	srli	a5,a5,0x3
    22c8:	00f767b3          	or	a5,a4,a5
    22cc:	00345413          	srli	s0,s0,0x3
    22d0:	00000693          	li	a3,0
    22d4:	eedff06f          	j	21c0 <__muldf3+0x508>
    22d8:	fe100713          	li	a4,-31
    22dc:	40d70733          	sub	a4,a4,a3
    22e0:	02000593          	li	a1,32
    22e4:	00e45733          	srl	a4,s0,a4
    22e8:	00000693          	li	a3,0
    22ec:	00b60663          	beq	a2,a1,22f8 <__muldf3+0x640>
    22f0:	43e88893          	addi	a7,a7,1086
    22f4:	011416b3          	sll	a3,s0,a7
    22f8:	00f6e7b3          	or	a5,a3,a5
    22fc:	00f037b3          	snez	a5,a5
    2300:	00f767b3          	or	a5,a4,a5
    2304:	00000413          	li	s0,0
    2308:	f89ff06f          	j	2290 <__muldf3+0x5d8>
    230c:	00080437          	lui	s0,0x80
    2310:	00000793          	li	a5,0
    2314:	7ff00693          	li	a3,2047
    2318:	00000813          	li	a6,0
    231c:	ea5ff06f          	j	21c0 <__muldf3+0x508>
    2320:	00000413          	li	s0,0
    2324:	00000793          	li	a5,0
    2328:	7ff00693          	li	a3,2047
    232c:	e95ff06f          	j	21c0 <__muldf3+0x508>
    2330:	00000413          	li	s0,0
    2334:	00000793          	li	a5,0
    2338:	00100693          	li	a3,1
    233c:	e85ff06f          	j	21c0 <__muldf3+0x508>

00002340 <__floatsidf>:
    2340:	ff010113          	addi	sp,sp,-16
    2344:	00112623          	sw	ra,12(sp)
    2348:	00812423          	sw	s0,8(sp)
    234c:	00912223          	sw	s1,4(sp)
    2350:	08050663          	beqz	a0,23dc <__floatsidf+0x9c>
    2354:	41f55793          	srai	a5,a0,0x1f
    2358:	00a7c433          	xor	s0,a5,a0
    235c:	40f40433          	sub	s0,s0,a5
    2360:	01f55493          	srli	s1,a0,0x1f
    2364:	00040513          	mv	a0,s0
    2368:	158000ef          	jal	ra,24c0 <__clzsi2>
    236c:	41e00713          	li	a4,1054
    2370:	00a00793          	li	a5,10
    2374:	40a70733          	sub	a4,a4,a0
    2378:	04a7c863          	blt	a5,a0,23c8 <__floatsidf+0x88>
    237c:	00b00793          	li	a5,11
    2380:	40a787b3          	sub	a5,a5,a0
    2384:	01550513          	addi	a0,a0,21
    2388:	00f457b3          	srl	a5,s0,a5
    238c:	00a41433          	sll	s0,s0,a0
    2390:	00048513          	mv	a0,s1
    2394:	00c79793          	slli	a5,a5,0xc
    2398:	01471713          	slli	a4,a4,0x14
    239c:	00c7d793          	srli	a5,a5,0xc
    23a0:	01f51513          	slli	a0,a0,0x1f
    23a4:	00f767b3          	or	a5,a4,a5
    23a8:	00c12083          	lw	ra,12(sp)
    23ac:	00a7e733          	or	a4,a5,a0
    23b0:	00040513          	mv	a0,s0
    23b4:	00812403          	lw	s0,8(sp)
    23b8:	00412483          	lw	s1,4(sp)
    23bc:	00070593          	mv	a1,a4
    23c0:	01010113          	addi	sp,sp,16
    23c4:	00008067          	ret
    23c8:	ff550513          	addi	a0,a0,-11
    23cc:	00a417b3          	sll	a5,s0,a0
    23d0:	00048513          	mv	a0,s1
    23d4:	00000413          	li	s0,0
    23d8:	fbdff06f          	j	2394 <__floatsidf+0x54>
    23dc:	00000713          	li	a4,0
    23e0:	00000793          	li	a5,0
    23e4:	ff1ff06f          	j	23d4 <__floatsidf+0x94>

000023e8 <__mulsi3>:
    23e8:	00050613          	mv	a2,a0
    23ec:	00000513          	li	a0,0
    23f0:	0015f693          	andi	a3,a1,1
    23f4:	00068463          	beqz	a3,23fc <__mulsi3+0x14>
    23f8:	00c50533          	add	a0,a0,a2
    23fc:	0015d593          	srli	a1,a1,0x1
    2400:	00161613          	slli	a2,a2,0x1
    2404:	fe0596e3          	bnez	a1,23f0 <__mulsi3+0x8>
    2408:	00008067          	ret

0000240c <__divsi3>:
    240c:	06054063          	bltz	a0,246c <__umodsi3+0x10>
    2410:	0605c663          	bltz	a1,247c <__umodsi3+0x20>

00002414 <__udivsi3>:
    2414:	00058613          	mv	a2,a1
    2418:	00050593          	mv	a1,a0
    241c:	fff00513          	li	a0,-1
    2420:	02060c63          	beqz	a2,2458 <__udivsi3+0x44>
    2424:	00100693          	li	a3,1
    2428:	00b67a63          	bgeu	a2,a1,243c <__udivsi3+0x28>
    242c:	00c05863          	blez	a2,243c <__udivsi3+0x28>
    2430:	00161613          	slli	a2,a2,0x1
    2434:	00169693          	slli	a3,a3,0x1
    2438:	feb66ae3          	bltu	a2,a1,242c <__udivsi3+0x18>
    243c:	00000513          	li	a0,0
    2440:	00c5e663          	bltu	a1,a2,244c <__udivsi3+0x38>
    2444:	40c585b3          	sub	a1,a1,a2
    2448:	00d56533          	or	a0,a0,a3
    244c:	0016d693          	srli	a3,a3,0x1
    2450:	00165613          	srli	a2,a2,0x1
    2454:	fe0696e3          	bnez	a3,2440 <__udivsi3+0x2c>
    2458:	00008067          	ret

0000245c <__umodsi3>:
    245c:	00008293          	mv	t0,ra
    2460:	fb5ff0ef          	jal	ra,2414 <__udivsi3>
    2464:	00058513          	mv	a0,a1
    2468:	00028067          	jr	t0
    246c:	40a00533          	neg	a0,a0
    2470:	00b04863          	bgtz	a1,2480 <__umodsi3+0x24>
    2474:	40b005b3          	neg	a1,a1
    2478:	f9dff06f          	j	2414 <__udivsi3>
    247c:	40b005b3          	neg	a1,a1
    2480:	00008293          	mv	t0,ra
    2484:	f91ff0ef          	jal	ra,2414 <__udivsi3>
    2488:	40a00533          	neg	a0,a0
    248c:	00028067          	jr	t0

00002490 <__modsi3>:
    2490:	00008293          	mv	t0,ra
    2494:	0005ca63          	bltz	a1,24a8 <__modsi3+0x18>
    2498:	00054c63          	bltz	a0,24b0 <__modsi3+0x20>
    249c:	f79ff0ef          	jal	ra,2414 <__udivsi3>
    24a0:	00058513          	mv	a0,a1
    24a4:	00028067          	jr	t0
    24a8:	40b005b3          	neg	a1,a1
    24ac:	fe0558e3          	bgez	a0,249c <__modsi3+0xc>
    24b0:	40a00533          	neg	a0,a0
    24b4:	f61ff0ef          	jal	ra,2414 <__udivsi3>
    24b8:	40b00533          	neg	a0,a1
    24bc:	00028067          	jr	t0

000024c0 <__clzsi2>:
    24c0:	000107b7          	lui	a5,0x10
    24c4:	02f57a63          	bgeu	a0,a5,24f8 <__clzsi2+0x38>
    24c8:	0ff00793          	li	a5,255
    24cc:	00a7b7b3          	sltu	a5,a5,a0
    24d0:	00379793          	slli	a5,a5,0x3
    24d4:	00003737          	lui	a4,0x3
    24d8:	02000693          	li	a3,32
    24dc:	40f686b3          	sub	a3,a3,a5
    24e0:	00f55533          	srl	a0,a0,a5
    24e4:	91870793          	addi	a5,a4,-1768 # 2918 <__clz_tab>
    24e8:	00a78533          	add	a0,a5,a0
    24ec:	00054503          	lbu	a0,0(a0)
    24f0:	40a68533          	sub	a0,a3,a0
    24f4:	00008067          	ret
    24f8:	01000737          	lui	a4,0x1000
    24fc:	01000793          	li	a5,16
    2500:	fce56ae3          	bltu	a0,a4,24d4 <__clzsi2+0x14>
    2504:	01800793          	li	a5,24
    2508:	fcdff06f          	j	24d4 <__clzsi2+0x14>
