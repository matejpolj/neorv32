
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
  18:	12050513          	addi	a0,a0,288 # 134 <__crt0_dummy_trap_handler>
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
  c4:	f4058593          	addi	a1,a1,-192 # 80000000 <__ctr0_io_space_begin+0x80000200>
  c8:	8f418613          	addi	a2,gp,-1804 # 800000f4 <__BSS_END__>

000000cc <__crt0_clear_bss_loop>:
  cc:	00c5d863          	bge	a1,a2,dc <__crt0_clear_bss_loop_end>
  d0:	00058023          	sb	zero,0(a1)
  d4:	00158593          	addi	a1,a1,1
  d8:	ff5ff06f          	j	cc <__crt0_clear_bss_loop>

000000dc <__crt0_clear_bss_loop_end>:
  dc:	00001597          	auipc	a1,0x1
  e0:	fac58593          	addi	a1,a1,-84 # 1088 <__crt0_copy_data_src_begin>
  e4:	80000617          	auipc	a2,0x80000
  e8:	f1c60613          	addi	a2,a2,-228 # 80000000 <__ctr0_io_space_begin+0x80000200>
  ec:	80000697          	auipc	a3,0x80000
  f0:	f1468693          	addi	a3,a3,-236 # 80000000 <__ctr0_io_space_begin+0x80000200>

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
 114:	06c000ef          	jal	ra,180 <main>

00000118 <__crt0_main_aftermath>:
 118:	34051073          	csrw	mscratch,a0
 11c:	00000093          	li	ra,0
 120:	00008463          	beqz	ra,128 <__crt0_main_aftermath_end>
 124:	000080e7          	jalr	ra

00000128 <__crt0_main_aftermath_end>:
 128:	30047073          	csrci	mstatus,8

0000012c <__crt0_main_aftermath_end_loop>:
 12c:	10500073          	wfi
 130:	ffdff06f          	j	12c <__crt0_main_aftermath_end_loop>

00000134 <__crt0_dummy_trap_handler>:
 134:	ff810113          	addi	sp,sp,-8
 138:	00812023          	sw	s0,0(sp)
 13c:	00912223          	sw	s1,4(sp)
 140:	34202473          	csrr	s0,mcause
 144:	02044663          	bltz	s0,170 <__crt0_dummy_trap_handler_irq>
 148:	34102473          	csrr	s0,mepc

0000014c <__crt0_dummy_trap_handler_exc_c_check>:
 14c:	00041483          	lh	s1,0(s0)
 150:	0034f493          	andi	s1,s1,3
 154:	00240413          	addi	s0,s0,2
 158:	34141073          	csrw	mepc,s0
 15c:	00300413          	li	s0,3
 160:	00941863          	bne	s0,s1,170 <__crt0_dummy_trap_handler_irq>

00000164 <__crt0_dummy_trap_handler_exc_uncrompressed>:
 164:	34102473          	csrr	s0,mepc
 168:	00240413          	addi	s0,s0,2
 16c:	34141073          	csrw	mepc,s0

00000170 <__crt0_dummy_trap_handler_irq>:
 170:	00012403          	lw	s0,0(sp)
 174:	00412483          	lw	s1,4(sp)
 178:	00810113          	addi	sp,sp,8
 17c:	30200073          	mret

00000180 <main>:
 180:	ff010113          	addi	sp,sp,-16
 184:	00112623          	sw	ra,12(sp)
 188:	00812423          	sw	s0,8(sp)
 18c:	295000ef          	jal	ra,c20 <neorv32_rte_setup>
 190:	00005537          	lui	a0,0x5
 194:	00000613          	li	a2,0
 198:	00000593          	li	a1,0
 19c:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3a78>
 1a0:	2d0000ef          	jal	ra,470 <neorv32_uart0_setup>
 1a4:	0e8000ef          	jal	ra,28c <neorv32_xirq_available>
 1a8:	02051263          	bnez	a0,1cc <main+0x4c>
 1ac:	00001537          	lui	a0,0x1
 1b0:	d3c50513          	addi	a0,a0,-708 # d3c <__etext+0x20>
 1b4:	3d8000ef          	jal	ra,58c <neorv32_uart0_printf>
 1b8:	00c12083          	lw	ra,12(sp)
 1bc:	00812403          	lw	s0,8(sp)
 1c0:	00100513          	li	a0,1
 1c4:	01010113          	addi	sp,sp,16
 1c8:	00008067          	ret
 1cc:	00001537          	lui	a0,0x1
 1d0:	d5450513          	addi	a0,a0,-684 # d54 <__etext+0x38>
 1d4:	3b8000ef          	jal	ra,58c <neorv32_uart0_printf>
 1d8:	0c4000ef          	jal	ra,29c <neorv32_xirq_setup>
 1dc:	00050863          	beqz	a0,1ec <main+0x6c>
 1e0:	00001537          	lui	a0,0x1
 1e4:	d8850513          	addi	a0,a0,-632 # d88 <__etext+0x6c>
 1e8:	fcdff06f          	j	1b4 <main+0x34>
 1ec:	22c00593          	li	a1,556
 1f0:	0e4000ef          	jal	ra,2d4 <neorv32_xirq_install>
 1f4:	00050413          	mv	s0,a0
 1f8:	23c00593          	li	a1,572
 1fc:	00100513          	li	a0,1
 200:	0d4000ef          	jal	ra,2d4 <neorv32_xirq_install>
 204:	00a40433          	add	s0,s0,a0
 208:	00040863          	beqz	s0,218 <main+0x98>
 20c:	00001537          	lui	a0,0x1
 210:	da450513          	addi	a0,a0,-604 # da4 <__etext+0x88>
 214:	fa1ff06f          	j	1b4 <main+0x34>
 218:	0b4000ef          	jal	ra,2cc <neorv32_xirq_global_enable>
 21c:	30046073          	csrsi	mstatus,8
 220:	00000013          	nop
 224:	00000013          	nop
 228:	0000006f          	j	228 <main+0xa8>

0000022c <xirq_handler_ch0>:
 22c:	00001537          	lui	a0,0x1
 230:	00000593          	li	a1,0
 234:	d1c50513          	addi	a0,a0,-740 # d1c <__etext>
 238:	3540006f          	j	58c <neorv32_uart0_printf>

0000023c <xirq_handler_ch1>:
 23c:	00001537          	lui	a0,0x1
 240:	00100593          	li	a1,1
 244:	d1c50513          	addi	a0,a0,-740 # d1c <__etext>
 248:	3440006f          	j	58c <neorv32_uart0_printf>
 24c:	0000                	unimp
 24e:	0000                	unimp

00000250 <__neorv32_xirq_core>:
 250:	f8000693          	li	a3,-128
 254:	0086a783          	lw	a5,8(a3)
 258:	00100713          	li	a4,1
 25c:	00f71733          	sll	a4,a4,a5
 260:	fff74713          	not	a4,a4
 264:	00e6a223          	sw	a4,4(a3)
 268:	00279713          	slli	a4,a5,0x2
 26c:	800007b7          	lui	a5,0x80000
 270:	00078793          	mv	a5,a5
 274:	0006a423          	sw	zero,8(a3)
 278:	00e787b3          	add	a5,a5,a4
 27c:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 280:	00078067          	jr	a5

00000284 <__neorv32_xirq_dummy_handler>:
 284:	00000013          	nop
 288:	00008067          	ret

0000028c <neorv32_xirq_available>:
 28c:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 290:	01c55513          	srli	a0,a0,0x1c
 294:	00157513          	andi	a0,a0,1
 298:	00008067          	ret

0000029c <neorv32_xirq_setup>:
 29c:	800007b7          	lui	a5,0x80000
 2a0:	f8002023          	sw	zero,-128(zero) # ffffff80 <__ctr0_io_space_begin+0x180>
 2a4:	00078793          	mv	a5,a5
 2a8:	f8002223          	sw	zero,-124(zero) # ffffff84 <__ctr0_io_space_begin+0x184>
 2ac:	08078693          	addi	a3,a5,128 # 80000080 <__ctr0_io_space_begin+0x80000280>
 2b0:	28400713          	li	a4,644
 2b4:	00e7a023          	sw	a4,0(a5)
 2b8:	00478793          	addi	a5,a5,4
 2bc:	fed79ce3          	bne	a5,a3,2b4 <neorv32_xirq_setup+0x18>
 2c0:	25000593          	li	a1,592
 2c4:	01500513          	li	a0,21
 2c8:	1010006f          	j	bc8 <neorv32_rte_exception_install>

000002cc <neorv32_xirq_global_enable>:
 2cc:	01800513          	li	a0,24
 2d0:	4540006f          	j	724 <neorv32_cpu_irq_enable>

000002d4 <neorv32_xirq_install>:
 2d4:	01f00793          	li	a5,31
 2d8:	02a7ee63          	bltu	a5,a0,314 <neorv32_xirq_install+0x40>
 2dc:	800007b7          	lui	a5,0x80000
 2e0:	00251713          	slli	a4,a0,0x2
 2e4:	00078793          	mv	a5,a5
 2e8:	00e787b3          	add	a5,a5,a4
 2ec:	00b7a023          	sw	a1,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 2f0:	00100793          	li	a5,1
 2f4:	00a79533          	sll	a0,a5,a0
 2f8:	fff54793          	not	a5,a0
 2fc:	f8f02223          	sw	a5,-124(zero) # ffffff84 <__ctr0_io_space_begin+0x184>
 300:	f8002783          	lw	a5,-128(zero) # ffffff80 <__ctr0_io_space_begin+0x180>
 304:	00a7e533          	or	a0,a5,a0
 308:	f8a02023          	sw	a0,-128(zero) # ffffff80 <__ctr0_io_space_begin+0x180>
 30c:	00000513          	li	a0,0
 310:	00008067          	ret
 314:	00100513          	li	a0,1
 318:	00008067          	ret

0000031c <__neorv32_uart_itoa>:
 31c:	fd010113          	addi	sp,sp,-48
 320:	02812423          	sw	s0,40(sp)
 324:	02912223          	sw	s1,36(sp)
 328:	03212023          	sw	s2,32(sp)
 32c:	01312e23          	sw	s3,28(sp)
 330:	01412c23          	sw	s4,24(sp)
 334:	02112623          	sw	ra,44(sp)
 338:	01512a23          	sw	s5,20(sp)
 33c:	00001a37          	lui	s4,0x1
 340:	00050493          	mv	s1,a0
 344:	00058413          	mv	s0,a1
 348:	00058523          	sb	zero,10(a1)
 34c:	00000993          	li	s3,0
 350:	00410913          	addi	s2,sp,4
 354:	dc0a0a13          	addi	s4,s4,-576 # dc0 <numbers.1>
 358:	00a00593          	li	a1,10
 35c:	00048513          	mv	a0,s1
 360:	159000ef          	jal	ra,cb8 <__umodsi3>
 364:	00aa0533          	add	a0,s4,a0
 368:	00054783          	lbu	a5,0(a0)
 36c:	01390ab3          	add	s5,s2,s3
 370:	00048513          	mv	a0,s1
 374:	00fa8023          	sb	a5,0(s5)
 378:	00a00593          	li	a1,10
 37c:	0f5000ef          	jal	ra,c70 <__udivsi3>
 380:	00198993          	addi	s3,s3,1
 384:	00a00793          	li	a5,10
 388:	00050493          	mv	s1,a0
 38c:	fcf996e3          	bne	s3,a5,358 <__neorv32_uart_itoa+0x3c>
 390:	00090693          	mv	a3,s2
 394:	00900713          	li	a4,9
 398:	03000613          	li	a2,48
 39c:	0096c583          	lbu	a1,9(a3)
 3a0:	00070793          	mv	a5,a4
 3a4:	fff70713          	addi	a4,a4,-1
 3a8:	01071713          	slli	a4,a4,0x10
 3ac:	01075713          	srli	a4,a4,0x10
 3b0:	00c59a63          	bne	a1,a2,3c4 <__neorv32_uart_itoa+0xa8>
 3b4:	000684a3          	sb	zero,9(a3)
 3b8:	fff68693          	addi	a3,a3,-1
 3bc:	fe0710e3          	bnez	a4,39c <__neorv32_uart_itoa+0x80>
 3c0:	00000793          	li	a5,0
 3c4:	00f907b3          	add	a5,s2,a5
 3c8:	00000593          	li	a1,0
 3cc:	0007c703          	lbu	a4,0(a5)
 3d0:	00070c63          	beqz	a4,3e8 <__neorv32_uart_itoa+0xcc>
 3d4:	00158693          	addi	a3,a1,1
 3d8:	00b405b3          	add	a1,s0,a1
 3dc:	00e58023          	sb	a4,0(a1)
 3e0:	01069593          	slli	a1,a3,0x10
 3e4:	0105d593          	srli	a1,a1,0x10
 3e8:	fff78713          	addi	a4,a5,-1
 3ec:	02f91863          	bne	s2,a5,41c <__neorv32_uart_itoa+0x100>
 3f0:	00b40433          	add	s0,s0,a1
 3f4:	00040023          	sb	zero,0(s0)
 3f8:	02c12083          	lw	ra,44(sp)
 3fc:	02812403          	lw	s0,40(sp)
 400:	02412483          	lw	s1,36(sp)
 404:	02012903          	lw	s2,32(sp)
 408:	01c12983          	lw	s3,28(sp)
 40c:	01812a03          	lw	s4,24(sp)
 410:	01412a83          	lw	s5,20(sp)
 414:	03010113          	addi	sp,sp,48
 418:	00008067          	ret
 41c:	00070793          	mv	a5,a4
 420:	fadff06f          	j	3cc <__neorv32_uart_itoa+0xb0>

00000424 <__neorv32_uart_tohex>:
 424:	00001637          	lui	a2,0x1
 428:	00758693          	addi	a3,a1,7
 42c:	00000713          	li	a4,0
 430:	dcc60613          	addi	a2,a2,-564 # dcc <symbols.0>
 434:	02000813          	li	a6,32
 438:	00e557b3          	srl	a5,a0,a4
 43c:	00f7f793          	andi	a5,a5,15
 440:	00f607b3          	add	a5,a2,a5
 444:	0007c783          	lbu	a5,0(a5)
 448:	00470713          	addi	a4,a4,4
 44c:	fff68693          	addi	a3,a3,-1
 450:	00f680a3          	sb	a5,1(a3)
 454:	ff0712e3          	bne	a4,a6,438 <__neorv32_uart_tohex+0x14>
 458:	00058423          	sb	zero,8(a1)
 45c:	00008067          	ret

00000460 <neorv32_uart0_available>:
 460:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 464:	01255513          	srli	a0,a0,0x12
 468:	00157513          	andi	a0,a0,1
 46c:	00008067          	ret

00000470 <neorv32_uart0_setup>:
 470:	ff010113          	addi	sp,sp,-16
 474:	00812423          	sw	s0,8(sp)
 478:	00912223          	sw	s1,4(sp)
 47c:	00112623          	sw	ra,12(sp)
 480:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 484:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 488:	00058413          	mv	s0,a1
 48c:	00151593          	slli	a1,a0,0x1
 490:	00078513          	mv	a0,a5
 494:	00060493          	mv	s1,a2
 498:	7d8000ef          	jal	ra,c70 <__udivsi3>
 49c:	01051513          	slli	a0,a0,0x10
 4a0:	000017b7          	lui	a5,0x1
 4a4:	01055513          	srli	a0,a0,0x10
 4a8:	00000713          	li	a4,0
 4ac:	ffe78793          	addi	a5,a5,-2 # ffe <symbols.0+0x232>
 4b0:	04a7e463          	bltu	a5,a0,4f8 <neorv32_uart0_setup+0x88>
 4b4:	0034f793          	andi	a5,s1,3
 4b8:	00347413          	andi	s0,s0,3
 4bc:	fff50513          	addi	a0,a0,-1
 4c0:	01479793          	slli	a5,a5,0x14
 4c4:	01641413          	slli	s0,s0,0x16
 4c8:	00f567b3          	or	a5,a0,a5
 4cc:	0087e7b3          	or	a5,a5,s0
 4d0:	01871713          	slli	a4,a4,0x18
 4d4:	00c12083          	lw	ra,12(sp)
 4d8:	00812403          	lw	s0,8(sp)
 4dc:	00e7e7b3          	or	a5,a5,a4
 4e0:	10000737          	lui	a4,0x10000
 4e4:	00e7e7b3          	or	a5,a5,a4
 4e8:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 4ec:	00412483          	lw	s1,4(sp)
 4f0:	01010113          	addi	sp,sp,16
 4f4:	00008067          	ret
 4f8:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffef76>
 4fc:	0fd6f693          	andi	a3,a3,253
 500:	00069a63          	bnez	a3,514 <neorv32_uart0_setup+0xa4>
 504:	00355513          	srli	a0,a0,0x3
 508:	00170713          	addi	a4,a4,1
 50c:	0ff77713          	andi	a4,a4,255
 510:	fa1ff06f          	j	4b0 <neorv32_uart0_setup+0x40>
 514:	00155513          	srli	a0,a0,0x1
 518:	ff1ff06f          	j	508 <neorv32_uart0_setup+0x98>

0000051c <neorv32_uart0_putc>:
 51c:	00040737          	lui	a4,0x40
 520:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 524:	00e7f7b3          	and	a5,a5,a4
 528:	fe079ce3          	bnez	a5,520 <neorv32_uart0_putc+0x4>
 52c:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 530:	00008067          	ret

00000534 <neorv32_uart0_print>:
 534:	ff010113          	addi	sp,sp,-16
 538:	00812423          	sw	s0,8(sp)
 53c:	01212023          	sw	s2,0(sp)
 540:	00112623          	sw	ra,12(sp)
 544:	00912223          	sw	s1,4(sp)
 548:	00050413          	mv	s0,a0
 54c:	00a00913          	li	s2,10
 550:	00044483          	lbu	s1,0(s0)
 554:	00140413          	addi	s0,s0,1
 558:	00049e63          	bnez	s1,574 <neorv32_uart0_print+0x40>
 55c:	00c12083          	lw	ra,12(sp)
 560:	00812403          	lw	s0,8(sp)
 564:	00412483          	lw	s1,4(sp)
 568:	00012903          	lw	s2,0(sp)
 56c:	01010113          	addi	sp,sp,16
 570:	00008067          	ret
 574:	01249663          	bne	s1,s2,580 <neorv32_uart0_print+0x4c>
 578:	00d00513          	li	a0,13
 57c:	fa1ff0ef          	jal	ra,51c <neorv32_uart0_putc>
 580:	00048513          	mv	a0,s1
 584:	f99ff0ef          	jal	ra,51c <neorv32_uart0_putc>
 588:	fc9ff06f          	j	550 <neorv32_uart0_print+0x1c>

0000058c <neorv32_uart0_printf>:
 58c:	fa010113          	addi	sp,sp,-96
 590:	04f12a23          	sw	a5,84(sp)
 594:	04410793          	addi	a5,sp,68
 598:	02812c23          	sw	s0,56(sp)
 59c:	03212823          	sw	s2,48(sp)
 5a0:	03412423          	sw	s4,40(sp)
 5a4:	03512223          	sw	s5,36(sp)
 5a8:	03612023          	sw	s6,32(sp)
 5ac:	01712e23          	sw	s7,28(sp)
 5b0:	01812c23          	sw	s8,24(sp)
 5b4:	01912a23          	sw	s9,20(sp)
 5b8:	02112e23          	sw	ra,60(sp)
 5bc:	02912a23          	sw	s1,52(sp)
 5c0:	03312623          	sw	s3,44(sp)
 5c4:	00050413          	mv	s0,a0
 5c8:	04b12223          	sw	a1,68(sp)
 5cc:	04c12423          	sw	a2,72(sp)
 5d0:	04d12623          	sw	a3,76(sp)
 5d4:	04e12823          	sw	a4,80(sp)
 5d8:	05012c23          	sw	a6,88(sp)
 5dc:	05112e23          	sw	a7,92(sp)
 5e0:	00f12023          	sw	a5,0(sp)
 5e4:	02500a13          	li	s4,37
 5e8:	00a00a93          	li	s5,10
 5ec:	07300913          	li	s2,115
 5f0:	07500b13          	li	s6,117
 5f4:	07800b93          	li	s7,120
 5f8:	06300c13          	li	s8,99
 5fc:	06900c93          	li	s9,105
 600:	00044483          	lbu	s1,0(s0)
 604:	02049c63          	bnez	s1,63c <neorv32_uart0_printf+0xb0>
 608:	03c12083          	lw	ra,60(sp)
 60c:	03812403          	lw	s0,56(sp)
 610:	03412483          	lw	s1,52(sp)
 614:	03012903          	lw	s2,48(sp)
 618:	02c12983          	lw	s3,44(sp)
 61c:	02812a03          	lw	s4,40(sp)
 620:	02412a83          	lw	s5,36(sp)
 624:	02012b03          	lw	s6,32(sp)
 628:	01c12b83          	lw	s7,28(sp)
 62c:	01812c03          	lw	s8,24(sp)
 630:	01412c83          	lw	s9,20(sp)
 634:	06010113          	addi	sp,sp,96
 638:	00008067          	ret
 63c:	0d449863          	bne	s1,s4,70c <neorv32_uart0_printf+0x180>
 640:	00240993          	addi	s3,s0,2
 644:	00144403          	lbu	s0,1(s0)
 648:	05240263          	beq	s0,s2,68c <neorv32_uart0_printf+0x100>
 64c:	00896e63          	bltu	s2,s0,668 <neorv32_uart0_printf+0xdc>
 650:	05840c63          	beq	s0,s8,6a8 <neorv32_uart0_printf+0x11c>
 654:	07940663          	beq	s0,s9,6c0 <neorv32_uart0_printf+0x134>
 658:	02500513          	li	a0,37
 65c:	ec1ff0ef          	jal	ra,51c <neorv32_uart0_putc>
 660:	00040513          	mv	a0,s0
 664:	0540006f          	j	6b8 <neorv32_uart0_printf+0x12c>
 668:	09640663          	beq	s0,s6,6f4 <neorv32_uart0_printf+0x168>
 66c:	ff7416e3          	bne	s0,s7,658 <neorv32_uart0_printf+0xcc>
 670:	00012783          	lw	a5,0(sp)
 674:	00410593          	addi	a1,sp,4
 678:	0007a503          	lw	a0,0(a5)
 67c:	00478713          	addi	a4,a5,4
 680:	00e12023          	sw	a4,0(sp)
 684:	da1ff0ef          	jal	ra,424 <__neorv32_uart_tohex>
 688:	0640006f          	j	6ec <neorv32_uart0_printf+0x160>
 68c:	00012783          	lw	a5,0(sp)
 690:	0007a503          	lw	a0,0(a5)
 694:	00478713          	addi	a4,a5,4
 698:	00e12023          	sw	a4,0(sp)
 69c:	e99ff0ef          	jal	ra,534 <neorv32_uart0_print>
 6a0:	00098413          	mv	s0,s3
 6a4:	f5dff06f          	j	600 <neorv32_uart0_printf+0x74>
 6a8:	00012783          	lw	a5,0(sp)
 6ac:	0007c503          	lbu	a0,0(a5)
 6b0:	00478713          	addi	a4,a5,4
 6b4:	00e12023          	sw	a4,0(sp)
 6b8:	e65ff0ef          	jal	ra,51c <neorv32_uart0_putc>
 6bc:	fe5ff06f          	j	6a0 <neorv32_uart0_printf+0x114>
 6c0:	00012783          	lw	a5,0(sp)
 6c4:	0007a403          	lw	s0,0(a5)
 6c8:	00478713          	addi	a4,a5,4
 6cc:	00e12023          	sw	a4,0(sp)
 6d0:	00045863          	bgez	s0,6e0 <neorv32_uart0_printf+0x154>
 6d4:	02d00513          	li	a0,45
 6d8:	40800433          	neg	s0,s0
 6dc:	e41ff0ef          	jal	ra,51c <neorv32_uart0_putc>
 6e0:	00410593          	addi	a1,sp,4
 6e4:	00040513          	mv	a0,s0
 6e8:	c35ff0ef          	jal	ra,31c <__neorv32_uart_itoa>
 6ec:	00410513          	addi	a0,sp,4
 6f0:	fadff06f          	j	69c <neorv32_uart0_printf+0x110>
 6f4:	00012783          	lw	a5,0(sp)
 6f8:	00410593          	addi	a1,sp,4
 6fc:	00478713          	addi	a4,a5,4
 700:	0007a503          	lw	a0,0(a5)
 704:	00e12023          	sw	a4,0(sp)
 708:	fe1ff06f          	j	6e8 <neorv32_uart0_printf+0x15c>
 70c:	01549663          	bne	s1,s5,718 <neorv32_uart0_printf+0x18c>
 710:	00d00513          	li	a0,13
 714:	e09ff0ef          	jal	ra,51c <neorv32_uart0_putc>
 718:	00140993          	addi	s3,s0,1
 71c:	00048513          	mv	a0,s1
 720:	f99ff06f          	j	6b8 <neorv32_uart0_printf+0x12c>

00000724 <neorv32_cpu_irq_enable>:
 724:	01f00793          	li	a5,31
 728:	00050713          	mv	a4,a0
 72c:	02a7e663          	bltu	a5,a0,758 <neorv32_cpu_irq_enable+0x34>
 730:	ffff17b7          	lui	a5,0xffff1
 734:	88878793          	addi	a5,a5,-1912 # ffff0888 <__ctr0_io_space_begin+0xffff0a88>
 738:	00a7d7b3          	srl	a5,a5,a0
 73c:	0017f793          	andi	a5,a5,1
 740:	00100513          	li	a0,1
 744:	00078c63          	beqz	a5,75c <neorv32_cpu_irq_enable+0x38>
 748:	00e51533          	sll	a0,a0,a4
 74c:	30452073          	csrs	mie,a0
 750:	00000513          	li	a0,0
 754:	00008067          	ret
 758:	00100513          	li	a0,1
 75c:	00008067          	ret

00000760 <__neorv32_rte_core>:
 760:	fc010113          	addi	sp,sp,-64
 764:	02112e23          	sw	ra,60(sp)
 768:	02512c23          	sw	t0,56(sp)
 76c:	02612a23          	sw	t1,52(sp)
 770:	02712823          	sw	t2,48(sp)
 774:	02a12623          	sw	a0,44(sp)
 778:	02b12423          	sw	a1,40(sp)
 77c:	02c12223          	sw	a2,36(sp)
 780:	02d12023          	sw	a3,32(sp)
 784:	00e12e23          	sw	a4,28(sp)
 788:	00f12c23          	sw	a5,24(sp)
 78c:	01012a23          	sw	a6,20(sp)
 790:	01112823          	sw	a7,16(sp)
 794:	01c12623          	sw	t3,12(sp)
 798:	01d12423          	sw	t4,8(sp)
 79c:	01e12223          	sw	t5,4(sp)
 7a0:	01f12023          	sw	t6,0(sp)
 7a4:	34102773          	csrr	a4,mepc
 7a8:	34071073          	csrw	mscratch,a4
 7ac:	342027f3          	csrr	a5,mcause
 7b0:	0807ca63          	bltz	a5,844 <__neorv32_rte_core+0xe4>
 7b4:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3ef78>
 7b8:	00300593          	li	a1,3
 7bc:	0036f693          	andi	a3,a3,3
 7c0:	00270613          	addi	a2,a4,2
 7c4:	00b69463          	bne	a3,a1,7cc <__neorv32_rte_core+0x6c>
 7c8:	00470613          	addi	a2,a4,4
 7cc:	34161073          	csrw	mepc,a2
 7d0:	00b00713          	li	a4,11
 7d4:	04f77c63          	bgeu	a4,a5,82c <__neorv32_rte_core+0xcc>
 7d8:	000017b7          	lui	a5,0x1
 7dc:	9d078793          	addi	a5,a5,-1584 # 9d0 <__neorv32_rte_debug_exc_handler>
 7e0:	000780e7          	jalr	a5
 7e4:	03c12083          	lw	ra,60(sp)
 7e8:	03812283          	lw	t0,56(sp)
 7ec:	03412303          	lw	t1,52(sp)
 7f0:	03012383          	lw	t2,48(sp)
 7f4:	02c12503          	lw	a0,44(sp)
 7f8:	02812583          	lw	a1,40(sp)
 7fc:	02412603          	lw	a2,36(sp)
 800:	02012683          	lw	a3,32(sp)
 804:	01c12703          	lw	a4,28(sp)
 808:	01812783          	lw	a5,24(sp)
 80c:	01412803          	lw	a6,20(sp)
 810:	01012883          	lw	a7,16(sp)
 814:	00c12e03          	lw	t3,12(sp)
 818:	00812e83          	lw	t4,8(sp)
 81c:	00412f03          	lw	t5,4(sp)
 820:	00012f83          	lw	t6,0(sp)
 824:	04010113          	addi	sp,sp,64
 828:	30200073          	mret
 82c:	00001737          	lui	a4,0x1
 830:	00279793          	slli	a5,a5,0x2
 834:	de070713          	addi	a4,a4,-544 # de0 <symbols.0+0x14>
 838:	00e787b3          	add	a5,a5,a4
 83c:	0007a783          	lw	a5,0(a5)
 840:	00078067          	jr	a5
 844:	80000737          	lui	a4,0x80000
 848:	ffd74713          	xori	a4,a4,-3
 84c:	00e787b3          	add	a5,a5,a4
 850:	01c00713          	li	a4,28
 854:	f8f762e3          	bltu	a4,a5,7d8 <__neorv32_rte_core+0x78>
 858:	00001737          	lui	a4,0x1
 85c:	00279793          	slli	a5,a5,0x2
 860:	e1070713          	addi	a4,a4,-496 # e10 <symbols.0+0x44>
 864:	00e787b3          	add	a5,a5,a4
 868:	0007a783          	lw	a5,0(a5)
 86c:	00078067          	jr	a5
 870:	8801a783          	lw	a5,-1920(gp) # 80000080 <__neorv32_rte_vector_lut>
 874:	f6dff06f          	j	7e0 <__neorv32_rte_core+0x80>
 878:	8841a783          	lw	a5,-1916(gp) # 80000084 <__neorv32_rte_vector_lut+0x4>
 87c:	f65ff06f          	j	7e0 <__neorv32_rte_core+0x80>
 880:	8881a783          	lw	a5,-1912(gp) # 80000088 <__neorv32_rte_vector_lut+0x8>
 884:	f5dff06f          	j	7e0 <__neorv32_rte_core+0x80>
 888:	88c1a783          	lw	a5,-1908(gp) # 8000008c <__neorv32_rte_vector_lut+0xc>
 88c:	f55ff06f          	j	7e0 <__neorv32_rte_core+0x80>
 890:	8901a783          	lw	a5,-1904(gp) # 80000090 <__neorv32_rte_vector_lut+0x10>
 894:	f4dff06f          	j	7e0 <__neorv32_rte_core+0x80>
 898:	8941a783          	lw	a5,-1900(gp) # 80000094 <__neorv32_rte_vector_lut+0x14>
 89c:	f45ff06f          	j	7e0 <__neorv32_rte_core+0x80>
 8a0:	8981a783          	lw	a5,-1896(gp) # 80000098 <__neorv32_rte_vector_lut+0x18>
 8a4:	f3dff06f          	j	7e0 <__neorv32_rte_core+0x80>
 8a8:	89c1a783          	lw	a5,-1892(gp) # 8000009c <__neorv32_rte_vector_lut+0x1c>
 8ac:	f35ff06f          	j	7e0 <__neorv32_rte_core+0x80>
 8b0:	8a01a783          	lw	a5,-1888(gp) # 800000a0 <__neorv32_rte_vector_lut+0x20>
 8b4:	f2dff06f          	j	7e0 <__neorv32_rte_core+0x80>
 8b8:	8a41a783          	lw	a5,-1884(gp) # 800000a4 <__neorv32_rte_vector_lut+0x24>
 8bc:	f25ff06f          	j	7e0 <__neorv32_rte_core+0x80>
 8c0:	8a81a783          	lw	a5,-1880(gp) # 800000a8 <__neorv32_rte_vector_lut+0x28>
 8c4:	f1dff06f          	j	7e0 <__neorv32_rte_core+0x80>
 8c8:	8ac1a783          	lw	a5,-1876(gp) # 800000ac <__neorv32_rte_vector_lut+0x2c>
 8cc:	f15ff06f          	j	7e0 <__neorv32_rte_core+0x80>
 8d0:	8b01a783          	lw	a5,-1872(gp) # 800000b0 <__neorv32_rte_vector_lut+0x30>
 8d4:	f0dff06f          	j	7e0 <__neorv32_rte_core+0x80>
 8d8:	8b41a783          	lw	a5,-1868(gp) # 800000b4 <__neorv32_rte_vector_lut+0x34>
 8dc:	f05ff06f          	j	7e0 <__neorv32_rte_core+0x80>
 8e0:	8b81a783          	lw	a5,-1864(gp) # 800000b8 <__neorv32_rte_vector_lut+0x38>
 8e4:	efdff06f          	j	7e0 <__neorv32_rte_core+0x80>
 8e8:	8bc1a783          	lw	a5,-1860(gp) # 800000bc <__neorv32_rte_vector_lut+0x3c>
 8ec:	ef5ff06f          	j	7e0 <__neorv32_rte_core+0x80>
 8f0:	8c01a783          	lw	a5,-1856(gp) # 800000c0 <__neorv32_rte_vector_lut+0x40>
 8f4:	eedff06f          	j	7e0 <__neorv32_rte_core+0x80>
 8f8:	8c41a783          	lw	a5,-1852(gp) # 800000c4 <__neorv32_rte_vector_lut+0x44>
 8fc:	ee5ff06f          	j	7e0 <__neorv32_rte_core+0x80>
 900:	8c81a783          	lw	a5,-1848(gp) # 800000c8 <__neorv32_rte_vector_lut+0x48>
 904:	eddff06f          	j	7e0 <__neorv32_rte_core+0x80>
 908:	8cc1a783          	lw	a5,-1844(gp) # 800000cc <__neorv32_rte_vector_lut+0x4c>
 90c:	ed5ff06f          	j	7e0 <__neorv32_rte_core+0x80>
 910:	8d01a783          	lw	a5,-1840(gp) # 800000d0 <__neorv32_rte_vector_lut+0x50>
 914:	ecdff06f          	j	7e0 <__neorv32_rte_core+0x80>
 918:	8d41a783          	lw	a5,-1836(gp) # 800000d4 <__neorv32_rte_vector_lut+0x54>
 91c:	ec5ff06f          	j	7e0 <__neorv32_rte_core+0x80>
 920:	8d81a783          	lw	a5,-1832(gp) # 800000d8 <__neorv32_rte_vector_lut+0x58>
 924:	ebdff06f          	j	7e0 <__neorv32_rte_core+0x80>
 928:	8dc1a783          	lw	a5,-1828(gp) # 800000dc <__neorv32_rte_vector_lut+0x5c>
 92c:	eb5ff06f          	j	7e0 <__neorv32_rte_core+0x80>
 930:	8e01a783          	lw	a5,-1824(gp) # 800000e0 <__neorv32_rte_vector_lut+0x60>
 934:	eadff06f          	j	7e0 <__neorv32_rte_core+0x80>
 938:	8e41a783          	lw	a5,-1820(gp) # 800000e4 <__neorv32_rte_vector_lut+0x64>
 93c:	ea5ff06f          	j	7e0 <__neorv32_rte_core+0x80>
 940:	8e81a783          	lw	a5,-1816(gp) # 800000e8 <__neorv32_rte_vector_lut+0x68>
 944:	e9dff06f          	j	7e0 <__neorv32_rte_core+0x80>
 948:	8ec1a783          	lw	a5,-1812(gp) # 800000ec <__neorv32_rte_vector_lut+0x6c>
 94c:	e95ff06f          	j	7e0 <__neorv32_rte_core+0x80>
 950:	8f01a783          	lw	a5,-1808(gp) # 800000f0 <__neorv32_rte_vector_lut+0x70>
 954:	e8dff06f          	j	7e0 <__neorv32_rte_core+0x80>
 958:	0000                	unimp
 95a:	0000                	unimp
 95c:	0000                	unimp
 95e:	0000                	unimp

00000960 <__neorv32_rte_print_hex_word>:
 960:	fe010113          	addi	sp,sp,-32
 964:	01212823          	sw	s2,16(sp)
 968:	00050913          	mv	s2,a0
 96c:	00001537          	lui	a0,0x1
 970:	00912a23          	sw	s1,20(sp)
 974:	e8450513          	addi	a0,a0,-380 # e84 <symbols.0+0xb8>
 978:	000014b7          	lui	s1,0x1
 97c:	00812c23          	sw	s0,24(sp)
 980:	01312623          	sw	s3,12(sp)
 984:	00112e23          	sw	ra,28(sp)
 988:	01c00413          	li	s0,28
 98c:	ba9ff0ef          	jal	ra,534 <neorv32_uart0_print>
 990:	07848493          	addi	s1,s1,120 # 1078 <hex_symbols.0>
 994:	ffc00993          	li	s3,-4
 998:	008957b3          	srl	a5,s2,s0
 99c:	00f7f793          	andi	a5,a5,15
 9a0:	00f487b3          	add	a5,s1,a5
 9a4:	0007c503          	lbu	a0,0(a5)
 9a8:	ffc40413          	addi	s0,s0,-4
 9ac:	b71ff0ef          	jal	ra,51c <neorv32_uart0_putc>
 9b0:	ff3414e3          	bne	s0,s3,998 <__neorv32_rte_print_hex_word+0x38>
 9b4:	01c12083          	lw	ra,28(sp)
 9b8:	01812403          	lw	s0,24(sp)
 9bc:	01412483          	lw	s1,20(sp)
 9c0:	01012903          	lw	s2,16(sp)
 9c4:	00c12983          	lw	s3,12(sp)
 9c8:	02010113          	addi	sp,sp,32
 9cc:	00008067          	ret

000009d0 <__neorv32_rte_debug_exc_handler>:
 9d0:	ff010113          	addi	sp,sp,-16
 9d4:	00112623          	sw	ra,12(sp)
 9d8:	00812423          	sw	s0,8(sp)
 9dc:	00912223          	sw	s1,4(sp)
 9e0:	a81ff0ef          	jal	ra,460 <neorv32_uart0_available>
 9e4:	1c050863          	beqz	a0,bb4 <__neorv32_rte_debug_exc_handler+0x1e4>
 9e8:	00001537          	lui	a0,0x1
 9ec:	e8850513          	addi	a0,a0,-376 # e88 <symbols.0+0xbc>
 9f0:	b45ff0ef          	jal	ra,534 <neorv32_uart0_print>
 9f4:	34202473          	csrr	s0,mcause
 9f8:	00900713          	li	a4,9
 9fc:	00f47793          	andi	a5,s0,15
 a00:	03078493          	addi	s1,a5,48
 a04:	00f77463          	bgeu	a4,a5,a0c <__neorv32_rte_debug_exc_handler+0x3c>
 a08:	05778493          	addi	s1,a5,87
 a0c:	00b00793          	li	a5,11
 a10:	0087ee63          	bltu	a5,s0,a2c <__neorv32_rte_debug_exc_handler+0x5c>
 a14:	00001737          	lui	a4,0x1
 a18:	00241793          	slli	a5,s0,0x2
 a1c:	04870713          	addi	a4,a4,72 # 1048 <symbols.0+0x27c>
 a20:	00e787b3          	add	a5,a5,a4
 a24:	0007a783          	lw	a5,0(a5)
 a28:	00078067          	jr	a5
 a2c:	800007b7          	lui	a5,0x80000
 a30:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 a34:	14e40e63          	beq	s0,a4,b90 <__neorv32_rte_debug_exc_handler+0x1c0>
 a38:	02876a63          	bltu	a4,s0,a6c <__neorv32_rte_debug_exc_handler+0x9c>
 a3c:	00378713          	addi	a4,a5,3
 a40:	12e40c63          	beq	s0,a4,b78 <__neorv32_rte_debug_exc_handler+0x1a8>
 a44:	00778793          	addi	a5,a5,7
 a48:	12f40e63          	beq	s0,a5,b84 <__neorv32_rte_debug_exc_handler+0x1b4>
 a4c:	00001537          	lui	a0,0x1
 a50:	fe850513          	addi	a0,a0,-24 # fe8 <symbols.0+0x21c>
 a54:	ae1ff0ef          	jal	ra,534 <neorv32_uart0_print>
 a58:	00040513          	mv	a0,s0
 a5c:	f05ff0ef          	jal	ra,960 <__neorv32_rte_print_hex_word>
 a60:	00100793          	li	a5,1
 a64:	08f40c63          	beq	s0,a5,afc <__neorv32_rte_debug_exc_handler+0x12c>
 a68:	0280006f          	j	a90 <__neorv32_rte_debug_exc_handler+0xc0>
 a6c:	ff07c793          	xori	a5,a5,-16
 a70:	00f407b3          	add	a5,s0,a5
 a74:	00f00713          	li	a4,15
 a78:	fcf76ae3          	bltu	a4,a5,a4c <__neorv32_rte_debug_exc_handler+0x7c>
 a7c:	00001537          	lui	a0,0x1
 a80:	fd850513          	addi	a0,a0,-40 # fd8 <symbols.0+0x20c>
 a84:	ab1ff0ef          	jal	ra,534 <neorv32_uart0_print>
 a88:	00048513          	mv	a0,s1
 a8c:	a91ff0ef          	jal	ra,51c <neorv32_uart0_putc>
 a90:	ffd47413          	andi	s0,s0,-3
 a94:	00500793          	li	a5,5
 a98:	06f40263          	beq	s0,a5,afc <__neorv32_rte_debug_exc_handler+0x12c>
 a9c:	00001537          	lui	a0,0x1
 aa0:	02c50513          	addi	a0,a0,44 # 102c <symbols.0+0x260>
 aa4:	a91ff0ef          	jal	ra,534 <neorv32_uart0_print>
 aa8:	34002573          	csrr	a0,mscratch
 aac:	eb5ff0ef          	jal	ra,960 <__neorv32_rte_print_hex_word>
 ab0:	00001537          	lui	a0,0x1
 ab4:	03450513          	addi	a0,a0,52 # 1034 <symbols.0+0x268>
 ab8:	a7dff0ef          	jal	ra,534 <neorv32_uart0_print>
 abc:	34302573          	csrr	a0,mtval
 ac0:	ea1ff0ef          	jal	ra,960 <__neorv32_rte_print_hex_word>
 ac4:	00812403          	lw	s0,8(sp)
 ac8:	00c12083          	lw	ra,12(sp)
 acc:	00412483          	lw	s1,4(sp)
 ad0:	00001537          	lui	a0,0x1
 ad4:	04050513          	addi	a0,a0,64 # 1040 <symbols.0+0x274>
 ad8:	01010113          	addi	sp,sp,16
 adc:	a59ff06f          	j	534 <neorv32_uart0_print>
 ae0:	00001537          	lui	a0,0x1
 ae4:	e9050513          	addi	a0,a0,-368 # e90 <symbols.0+0xc4>
 ae8:	a4dff0ef          	jal	ra,534 <neorv32_uart0_print>
 aec:	fb1ff06f          	j	a9c <__neorv32_rte_debug_exc_handler+0xcc>
 af0:	00001537          	lui	a0,0x1
 af4:	eb050513          	addi	a0,a0,-336 # eb0 <symbols.0+0xe4>
 af8:	a3dff0ef          	jal	ra,534 <neorv32_uart0_print>
 afc:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 b00:	0a07d463          	bgez	a5,ba8 <__neorv32_rte_debug_exc_handler+0x1d8>
 b04:	0017f793          	andi	a5,a5,1
 b08:	08078a63          	beqz	a5,b9c <__neorv32_rte_debug_exc_handler+0x1cc>
 b0c:	00001537          	lui	a0,0x1
 b10:	00050513          	mv	a0,a0
 b14:	fd5ff06f          	j	ae8 <__neorv32_rte_debug_exc_handler+0x118>
 b18:	00001537          	lui	a0,0x1
 b1c:	ecc50513          	addi	a0,a0,-308 # ecc <symbols.0+0x100>
 b20:	fc9ff06f          	j	ae8 <__neorv32_rte_debug_exc_handler+0x118>
 b24:	00001537          	lui	a0,0x1
 b28:	ee050513          	addi	a0,a0,-288 # ee0 <symbols.0+0x114>
 b2c:	fbdff06f          	j	ae8 <__neorv32_rte_debug_exc_handler+0x118>
 b30:	00001537          	lui	a0,0x1
 b34:	eec50513          	addi	a0,a0,-276 # eec <symbols.0+0x120>
 b38:	fb1ff06f          	j	ae8 <__neorv32_rte_debug_exc_handler+0x118>
 b3c:	00001537          	lui	a0,0x1
 b40:	f0450513          	addi	a0,a0,-252 # f04 <symbols.0+0x138>
 b44:	fb5ff06f          	j	af8 <__neorv32_rte_debug_exc_handler+0x128>
 b48:	00001537          	lui	a0,0x1
 b4c:	f1850513          	addi	a0,a0,-232 # f18 <symbols.0+0x14c>
 b50:	f99ff06f          	j	ae8 <__neorv32_rte_debug_exc_handler+0x118>
 b54:	00001537          	lui	a0,0x1
 b58:	f3450513          	addi	a0,a0,-204 # f34 <symbols.0+0x168>
 b5c:	f9dff06f          	j	af8 <__neorv32_rte_debug_exc_handler+0x128>
 b60:	00001537          	lui	a0,0x1
 b64:	f4850513          	addi	a0,a0,-184 # f48 <symbols.0+0x17c>
 b68:	f81ff06f          	j	ae8 <__neorv32_rte_debug_exc_handler+0x118>
 b6c:	00001537          	lui	a0,0x1
 b70:	f6850513          	addi	a0,a0,-152 # f68 <symbols.0+0x19c>
 b74:	f75ff06f          	j	ae8 <__neorv32_rte_debug_exc_handler+0x118>
 b78:	00001537          	lui	a0,0x1
 b7c:	f8850513          	addi	a0,a0,-120 # f88 <symbols.0+0x1bc>
 b80:	f69ff06f          	j	ae8 <__neorv32_rte_debug_exc_handler+0x118>
 b84:	00001537          	lui	a0,0x1
 b88:	fa450513          	addi	a0,a0,-92 # fa4 <symbols.0+0x1d8>
 b8c:	f5dff06f          	j	ae8 <__neorv32_rte_debug_exc_handler+0x118>
 b90:	00001537          	lui	a0,0x1
 b94:	fbc50513          	addi	a0,a0,-68 # fbc <symbols.0+0x1f0>
 b98:	f51ff06f          	j	ae8 <__neorv32_rte_debug_exc_handler+0x118>
 b9c:	00001537          	lui	a0,0x1
 ba0:	01050513          	addi	a0,a0,16 # 1010 <symbols.0+0x244>
 ba4:	f45ff06f          	j	ae8 <__neorv32_rte_debug_exc_handler+0x118>
 ba8:	00001537          	lui	a0,0x1
 bac:	02050513          	addi	a0,a0,32 # 1020 <symbols.0+0x254>
 bb0:	f39ff06f          	j	ae8 <__neorv32_rte_debug_exc_handler+0x118>
 bb4:	00c12083          	lw	ra,12(sp)
 bb8:	00812403          	lw	s0,8(sp)
 bbc:	00412483          	lw	s1,4(sp)
 bc0:	01010113          	addi	sp,sp,16
 bc4:	00008067          	ret

00000bc8 <neorv32_rte_exception_install>:
 bc8:	01f00793          	li	a5,31
 bcc:	00a7ee63          	bltu	a5,a0,be8 <neorv32_rte_exception_install+0x20>
 bd0:	88018793          	addi	a5,gp,-1920 # 80000080 <__neorv32_rte_vector_lut>
 bd4:	00251513          	slli	a0,a0,0x2
 bd8:	00a78533          	add	a0,a5,a0
 bdc:	00b52023          	sw	a1,0(a0)
 be0:	00000513          	li	a0,0
 be4:	00008067          	ret
 be8:	00100513          	li	a0,1
 bec:	00008067          	ret

00000bf0 <neorv32_rte_exception_uninstall>:
 bf0:	01f00793          	li	a5,31
 bf4:	02a7e263          	bltu	a5,a0,c18 <neorv32_rte_exception_uninstall+0x28>
 bf8:	88018793          	addi	a5,gp,-1920 # 80000080 <__neorv32_rte_vector_lut>
 bfc:	00251513          	slli	a0,a0,0x2
 c00:	00a78533          	add	a0,a5,a0
 c04:	000017b7          	lui	a5,0x1
 c08:	9d078793          	addi	a5,a5,-1584 # 9d0 <__neorv32_rte_debug_exc_handler>
 c0c:	00f52023          	sw	a5,0(a0)
 c10:	00000513          	li	a0,0
 c14:	00008067          	ret
 c18:	00100513          	li	a0,1
 c1c:	00008067          	ret

00000c20 <neorv32_rte_setup>:
 c20:	ff010113          	addi	sp,sp,-16
 c24:	00112623          	sw	ra,12(sp)
 c28:	00812423          	sw	s0,8(sp)
 c2c:	00912223          	sw	s1,4(sp)
 c30:	76000793          	li	a5,1888
 c34:	30579073          	csrw	mtvec,a5
 c38:	00000413          	li	s0,0
 c3c:	01d00493          	li	s1,29
 c40:	00040513          	mv	a0,s0
 c44:	00140413          	addi	s0,s0,1
 c48:	0ff47413          	andi	s0,s0,255
 c4c:	fa5ff0ef          	jal	ra,bf0 <neorv32_rte_exception_uninstall>
 c50:	fe9418e3          	bne	s0,s1,c40 <neorv32_rte_setup+0x20>
 c54:	00c12083          	lw	ra,12(sp)
 c58:	00812403          	lw	s0,8(sp)
 c5c:	00412483          	lw	s1,4(sp)
 c60:	01010113          	addi	sp,sp,16
 c64:	00008067          	ret

00000c68 <__divsi3>:
 c68:	06054063          	bltz	a0,cc8 <__umodsi3+0x10>
 c6c:	0605c663          	bltz	a1,cd8 <__umodsi3+0x20>

00000c70 <__udivsi3>:
 c70:	00058613          	mv	a2,a1
 c74:	00050593          	mv	a1,a0
 c78:	fff00513          	li	a0,-1
 c7c:	02060c63          	beqz	a2,cb4 <__udivsi3+0x44>
 c80:	00100693          	li	a3,1
 c84:	00b67a63          	bgeu	a2,a1,c98 <__udivsi3+0x28>
 c88:	00c05863          	blez	a2,c98 <__udivsi3+0x28>
 c8c:	00161613          	slli	a2,a2,0x1
 c90:	00169693          	slli	a3,a3,0x1
 c94:	feb66ae3          	bltu	a2,a1,c88 <__udivsi3+0x18>
 c98:	00000513          	li	a0,0
 c9c:	00c5e663          	bltu	a1,a2,ca8 <__udivsi3+0x38>
 ca0:	40c585b3          	sub	a1,a1,a2
 ca4:	00d56533          	or	a0,a0,a3
 ca8:	0016d693          	srli	a3,a3,0x1
 cac:	00165613          	srli	a2,a2,0x1
 cb0:	fe0696e3          	bnez	a3,c9c <__udivsi3+0x2c>
 cb4:	00008067          	ret

00000cb8 <__umodsi3>:
 cb8:	00008293          	mv	t0,ra
 cbc:	fb5ff0ef          	jal	ra,c70 <__udivsi3>
 cc0:	00058513          	mv	a0,a1
 cc4:	00028067          	jr	t0
 cc8:	40a00533          	neg	a0,a0
 ccc:	00b04863          	bgtz	a1,cdc <__umodsi3+0x24>
 cd0:	40b005b3          	neg	a1,a1
 cd4:	f9dff06f          	j	c70 <__udivsi3>
 cd8:	40b005b3          	neg	a1,a1
 cdc:	00008293          	mv	t0,ra
 ce0:	f91ff0ef          	jal	ra,c70 <__udivsi3>
 ce4:	40a00533          	neg	a0,a0
 ce8:	00028067          	jr	t0

00000cec <__modsi3>:
 cec:	00008293          	mv	t0,ra
 cf0:	0005ca63          	bltz	a1,d04 <__modsi3+0x18>
 cf4:	00054c63          	bltz	a0,d0c <__modsi3+0x20>
 cf8:	f79ff0ef          	jal	ra,c70 <__udivsi3>
 cfc:	00058513          	mv	a0,a1
 d00:	00028067          	jr	t0
 d04:	40b005b3          	neg	a1,a1
 d08:	fe0558e3          	bgez	a0,cf8 <__modsi3+0xc>
 d0c:	40a00533          	neg	a0,a0
 d10:	f61ff0ef          	jal	ra,c70 <__udivsi3>
 d14:	40b00533          	neg	a0,a1
 d18:	00028067          	jr	t0
