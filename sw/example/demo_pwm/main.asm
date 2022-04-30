
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
  c8:	87418613          	addi	a2,gp,-1932 # 80000074 <__BSS_END__>

000000cc <__crt0_clear_bss_loop>:
  cc:	00c5d863          	bge	a1,a2,dc <__crt0_clear_bss_loop_end>
  d0:	00058023          	sb	zero,0(a1)
  d4:	00158593          	addi	a1,a1,1
  d8:	ff5ff06f          	j	cc <__crt0_clear_bss_loop>

000000dc <__crt0_clear_bss_loop_end>:
  dc:	00001597          	auipc	a1,0x1
  e0:	10458593          	addi	a1,a1,260 # 11e0 <__crt0_copy_data_src_begin>
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
 180:	fe010113          	addi	sp,sp,-32
 184:	00112e23          	sw	ra,28(sp)
 188:	00812c23          	sw	s0,24(sp)
 18c:	00912a23          	sw	s1,20(sp)
 190:	01212823          	sw	s2,16(sp)
 194:	01312623          	sw	s3,12(sp)
 198:	4dc000ef          	jal	ra,674 <neorv32_pwm_available>
 19c:	0a050863          	beqz	a0,24c <main+0xcc>
 1a0:	2cd000ef          	jal	ra,c6c <neorv32_rte_setup>
 1a4:	20c000ef          	jal	ra,3b0 <neorv32_uart0_available>
 1a8:	02050663          	beqz	a0,1d4 <main+0x54>
 1ac:	00005537          	lui	a0,0x5
 1b0:	00000613          	li	a2,0
 1b4:	00000593          	li	a1,0
 1b8:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3920>
 1bc:	204000ef          	jal	ra,3c0 <neorv32_uart0_setup>
 1c0:	00000513          	li	a0,0
 1c4:	2f1000ef          	jal	ra,cb4 <neorv32_rte_check_isa>
 1c8:	00001537          	lui	a0,0x1
 1cc:	e7c50513          	addi	a0,a0,-388 # e7c <__etext>
 1d0:	2b4000ef          	jal	ra,484 <neorv32_uart0_print>
 1d4:	00000593          	li	a1,0
 1d8:	00000513          	li	a0,0
 1dc:	4c4000ef          	jal	ra,6a0 <neorv32_pwm_set>
 1e0:	00000593          	li	a1,0
 1e4:	00100513          	li	a0,1
 1e8:	4b8000ef          	jal	ra,6a0 <neorv32_pwm_set>
 1ec:	00300513          	li	a0,3
 1f0:	494000ef          	jal	ra,684 <neorv32_pwm_setup>
 1f4:	00000493          	li	s1,0
 1f8:	00100913          	li	s2,1
 1fc:	00000413          	li	s0,0
 200:	08000993          	li	s3,128
 204:	00090a63          	beqz	s2,218 <main+0x98>
 208:	03340e63          	beq	s0,s3,244 <main+0xc4>
 20c:	00140413          	addi	s0,s0,1
 210:	0ff47413          	andi	s0,s0,255
 214:	0100006f          	j	224 <main+0xa4>
 218:	02041263          	bnez	s0,23c <main+0xbc>
 21c:	0014c493          	xori	s1,s1,1
 220:	00100913          	li	s2,1
 224:	00048513          	mv	a0,s1
 228:	00040593          	mv	a1,s0
 22c:	474000ef          	jal	ra,6a0 <neorv32_pwm_set>
 230:	00a00513          	li	a0,10
 234:	4d0000ef          	jal	ra,704 <neorv32_cpu_delay_ms>
 238:	fcdff06f          	j	204 <main+0x84>
 23c:	fff40413          	addi	s0,s0,-1
 240:	fd1ff06f          	j	210 <main+0x90>
 244:	00000913          	li	s2,0
 248:	fddff06f          	j	224 <main+0xa4>
 24c:	01c12083          	lw	ra,28(sp)
 250:	01812403          	lw	s0,24(sp)
 254:	01412483          	lw	s1,20(sp)
 258:	01012903          	lw	s2,16(sp)
 25c:	00c12983          	lw	s3,12(sp)
 260:	00100513          	li	a0,1
 264:	02010113          	addi	sp,sp,32
 268:	00008067          	ret

0000026c <__neorv32_uart_itoa>:
 26c:	fd010113          	addi	sp,sp,-48
 270:	02812423          	sw	s0,40(sp)
 274:	02912223          	sw	s1,36(sp)
 278:	03212023          	sw	s2,32(sp)
 27c:	01312e23          	sw	s3,28(sp)
 280:	01412c23          	sw	s4,24(sp)
 284:	02112623          	sw	ra,44(sp)
 288:	01512a23          	sw	s5,20(sp)
 28c:	00001a37          	lui	s4,0x1
 290:	00050493          	mv	s1,a0
 294:	00058413          	mv	s0,a1
 298:	00058523          	sb	zero,10(a1)
 29c:	00000993          	li	s3,0
 2a0:	00410913          	addi	s2,sp,4
 2a4:	e90a0a13          	addi	s4,s4,-368 # e90 <numbers.1>
 2a8:	00a00593          	li	a1,10
 2ac:	00048513          	mv	a0,s1
 2b0:	369000ef          	jal	ra,e18 <__umodsi3>
 2b4:	00aa0533          	add	a0,s4,a0
 2b8:	00054783          	lbu	a5,0(a0)
 2bc:	01390ab3          	add	s5,s2,s3
 2c0:	00048513          	mv	a0,s1
 2c4:	00fa8023          	sb	a5,0(s5)
 2c8:	00a00593          	li	a1,10
 2cc:	305000ef          	jal	ra,dd0 <__udivsi3>
 2d0:	00198993          	addi	s3,s3,1
 2d4:	00a00793          	li	a5,10
 2d8:	00050493          	mv	s1,a0
 2dc:	fcf996e3          	bne	s3,a5,2a8 <__neorv32_uart_itoa+0x3c>
 2e0:	00090693          	mv	a3,s2
 2e4:	00900713          	li	a4,9
 2e8:	03000613          	li	a2,48
 2ec:	0096c583          	lbu	a1,9(a3)
 2f0:	00070793          	mv	a5,a4
 2f4:	fff70713          	addi	a4,a4,-1
 2f8:	01071713          	slli	a4,a4,0x10
 2fc:	01075713          	srli	a4,a4,0x10
 300:	00c59a63          	bne	a1,a2,314 <__neorv32_uart_itoa+0xa8>
 304:	000684a3          	sb	zero,9(a3)
 308:	fff68693          	addi	a3,a3,-1
 30c:	fe0710e3          	bnez	a4,2ec <__neorv32_uart_itoa+0x80>
 310:	00000793          	li	a5,0
 314:	00f907b3          	add	a5,s2,a5
 318:	00000593          	li	a1,0
 31c:	0007c703          	lbu	a4,0(a5)
 320:	00070c63          	beqz	a4,338 <__neorv32_uart_itoa+0xcc>
 324:	00158693          	addi	a3,a1,1
 328:	00b405b3          	add	a1,s0,a1
 32c:	00e58023          	sb	a4,0(a1)
 330:	01069593          	slli	a1,a3,0x10
 334:	0105d593          	srli	a1,a1,0x10
 338:	fff78713          	addi	a4,a5,-1
 33c:	02f91863          	bne	s2,a5,36c <__neorv32_uart_itoa+0x100>
 340:	00b40433          	add	s0,s0,a1
 344:	00040023          	sb	zero,0(s0)
 348:	02c12083          	lw	ra,44(sp)
 34c:	02812403          	lw	s0,40(sp)
 350:	02412483          	lw	s1,36(sp)
 354:	02012903          	lw	s2,32(sp)
 358:	01c12983          	lw	s3,28(sp)
 35c:	01812a03          	lw	s4,24(sp)
 360:	01412a83          	lw	s5,20(sp)
 364:	03010113          	addi	sp,sp,48
 368:	00008067          	ret
 36c:	00070793          	mv	a5,a4
 370:	fadff06f          	j	31c <__neorv32_uart_itoa+0xb0>

00000374 <__neorv32_uart_tohex>:
 374:	00001637          	lui	a2,0x1
 378:	00758693          	addi	a3,a1,7
 37c:	00000713          	li	a4,0
 380:	e9c60613          	addi	a2,a2,-356 # e9c <symbols.0>
 384:	02000813          	li	a6,32
 388:	00e557b3          	srl	a5,a0,a4
 38c:	00f7f793          	andi	a5,a5,15
 390:	00f607b3          	add	a5,a2,a5
 394:	0007c783          	lbu	a5,0(a5)
 398:	00470713          	addi	a4,a4,4
 39c:	fff68693          	addi	a3,a3,-1
 3a0:	00f680a3          	sb	a5,1(a3)
 3a4:	ff0712e3          	bne	a4,a6,388 <__neorv32_uart_tohex+0x14>
 3a8:	00058423          	sb	zero,8(a1)
 3ac:	00008067          	ret

000003b0 <neorv32_uart0_available>:
 3b0:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 3b4:	01255513          	srli	a0,a0,0x12
 3b8:	00157513          	andi	a0,a0,1
 3bc:	00008067          	ret

000003c0 <neorv32_uart0_setup>:
 3c0:	ff010113          	addi	sp,sp,-16
 3c4:	00812423          	sw	s0,8(sp)
 3c8:	00912223          	sw	s1,4(sp)
 3cc:	00112623          	sw	ra,12(sp)
 3d0:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 3d4:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 3d8:	00058413          	mv	s0,a1
 3dc:	00151593          	slli	a1,a0,0x1
 3e0:	00078513          	mv	a0,a5
 3e4:	00060493          	mv	s1,a2
 3e8:	1e9000ef          	jal	ra,dd0 <__udivsi3>
 3ec:	01051513          	slli	a0,a0,0x10
 3f0:	000017b7          	lui	a5,0x1
 3f4:	01055513          	srli	a0,a0,0x10
 3f8:	00000713          	li	a4,0
 3fc:	ffe78793          	addi	a5,a5,-2 # ffe <symbols.0+0x162>
 400:	04a7e463          	bltu	a5,a0,448 <neorv32_uart0_setup+0x88>
 404:	0034f793          	andi	a5,s1,3
 408:	00347413          	andi	s0,s0,3
 40c:	fff50513          	addi	a0,a0,-1
 410:	01479793          	slli	a5,a5,0x14
 414:	01641413          	slli	s0,s0,0x16
 418:	00f567b3          	or	a5,a0,a5
 41c:	0087e7b3          	or	a5,a5,s0
 420:	01871713          	slli	a4,a4,0x18
 424:	00c12083          	lw	ra,12(sp)
 428:	00812403          	lw	s0,8(sp)
 42c:	00e7e7b3          	or	a5,a5,a4
 430:	10000737          	lui	a4,0x10000
 434:	00e7e7b3          	or	a5,a5,a4
 438:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 43c:	00412483          	lw	s1,4(sp)
 440:	01010113          	addi	sp,sp,16
 444:	00008067          	ret
 448:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffee1e>
 44c:	0fd6f693          	andi	a3,a3,253
 450:	00069a63          	bnez	a3,464 <neorv32_uart0_setup+0xa4>
 454:	00355513          	srli	a0,a0,0x3
 458:	00170713          	addi	a4,a4,1
 45c:	0ff77713          	andi	a4,a4,255
 460:	fa1ff06f          	j	400 <neorv32_uart0_setup+0x40>
 464:	00155513          	srli	a0,a0,0x1
 468:	ff1ff06f          	j	458 <neorv32_uart0_setup+0x98>

0000046c <neorv32_uart0_putc>:
 46c:	00040737          	lui	a4,0x40
 470:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 474:	00e7f7b3          	and	a5,a5,a4
 478:	fe079ce3          	bnez	a5,470 <neorv32_uart0_putc+0x4>
 47c:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 480:	00008067          	ret

00000484 <neorv32_uart0_print>:
 484:	ff010113          	addi	sp,sp,-16
 488:	00812423          	sw	s0,8(sp)
 48c:	01212023          	sw	s2,0(sp)
 490:	00112623          	sw	ra,12(sp)
 494:	00912223          	sw	s1,4(sp)
 498:	00050413          	mv	s0,a0
 49c:	00a00913          	li	s2,10
 4a0:	00044483          	lbu	s1,0(s0)
 4a4:	00140413          	addi	s0,s0,1
 4a8:	00049e63          	bnez	s1,4c4 <neorv32_uart0_print+0x40>
 4ac:	00c12083          	lw	ra,12(sp)
 4b0:	00812403          	lw	s0,8(sp)
 4b4:	00412483          	lw	s1,4(sp)
 4b8:	00012903          	lw	s2,0(sp)
 4bc:	01010113          	addi	sp,sp,16
 4c0:	00008067          	ret
 4c4:	01249663          	bne	s1,s2,4d0 <neorv32_uart0_print+0x4c>
 4c8:	00d00513          	li	a0,13
 4cc:	fa1ff0ef          	jal	ra,46c <neorv32_uart0_putc>
 4d0:	00048513          	mv	a0,s1
 4d4:	f99ff0ef          	jal	ra,46c <neorv32_uart0_putc>
 4d8:	fc9ff06f          	j	4a0 <neorv32_uart0_print+0x1c>

000004dc <neorv32_uart0_printf>:
 4dc:	fa010113          	addi	sp,sp,-96
 4e0:	04f12a23          	sw	a5,84(sp)
 4e4:	04410793          	addi	a5,sp,68
 4e8:	02812c23          	sw	s0,56(sp)
 4ec:	03212823          	sw	s2,48(sp)
 4f0:	03412423          	sw	s4,40(sp)
 4f4:	03512223          	sw	s5,36(sp)
 4f8:	03612023          	sw	s6,32(sp)
 4fc:	01712e23          	sw	s7,28(sp)
 500:	01812c23          	sw	s8,24(sp)
 504:	01912a23          	sw	s9,20(sp)
 508:	02112e23          	sw	ra,60(sp)
 50c:	02912a23          	sw	s1,52(sp)
 510:	03312623          	sw	s3,44(sp)
 514:	00050413          	mv	s0,a0
 518:	04b12223          	sw	a1,68(sp)
 51c:	04c12423          	sw	a2,72(sp)
 520:	04d12623          	sw	a3,76(sp)
 524:	04e12823          	sw	a4,80(sp)
 528:	05012c23          	sw	a6,88(sp)
 52c:	05112e23          	sw	a7,92(sp)
 530:	00f12023          	sw	a5,0(sp)
 534:	02500a13          	li	s4,37
 538:	00a00a93          	li	s5,10
 53c:	07300913          	li	s2,115
 540:	07500b13          	li	s6,117
 544:	07800b93          	li	s7,120
 548:	06300c13          	li	s8,99
 54c:	06900c93          	li	s9,105
 550:	00044483          	lbu	s1,0(s0)
 554:	02049c63          	bnez	s1,58c <neorv32_uart0_printf+0xb0>
 558:	03c12083          	lw	ra,60(sp)
 55c:	03812403          	lw	s0,56(sp)
 560:	03412483          	lw	s1,52(sp)
 564:	03012903          	lw	s2,48(sp)
 568:	02c12983          	lw	s3,44(sp)
 56c:	02812a03          	lw	s4,40(sp)
 570:	02412a83          	lw	s5,36(sp)
 574:	02012b03          	lw	s6,32(sp)
 578:	01c12b83          	lw	s7,28(sp)
 57c:	01812c03          	lw	s8,24(sp)
 580:	01412c83          	lw	s9,20(sp)
 584:	06010113          	addi	sp,sp,96
 588:	00008067          	ret
 58c:	0d449863          	bne	s1,s4,65c <neorv32_uart0_printf+0x180>
 590:	00240993          	addi	s3,s0,2
 594:	00144403          	lbu	s0,1(s0)
 598:	05240263          	beq	s0,s2,5dc <neorv32_uart0_printf+0x100>
 59c:	00896e63          	bltu	s2,s0,5b8 <neorv32_uart0_printf+0xdc>
 5a0:	05840c63          	beq	s0,s8,5f8 <neorv32_uart0_printf+0x11c>
 5a4:	07940663          	beq	s0,s9,610 <neorv32_uart0_printf+0x134>
 5a8:	02500513          	li	a0,37
 5ac:	ec1ff0ef          	jal	ra,46c <neorv32_uart0_putc>
 5b0:	00040513          	mv	a0,s0
 5b4:	0540006f          	j	608 <neorv32_uart0_printf+0x12c>
 5b8:	09640663          	beq	s0,s6,644 <neorv32_uart0_printf+0x168>
 5bc:	ff7416e3          	bne	s0,s7,5a8 <neorv32_uart0_printf+0xcc>
 5c0:	00012783          	lw	a5,0(sp)
 5c4:	00410593          	addi	a1,sp,4
 5c8:	0007a503          	lw	a0,0(a5)
 5cc:	00478713          	addi	a4,a5,4
 5d0:	00e12023          	sw	a4,0(sp)
 5d4:	da1ff0ef          	jal	ra,374 <__neorv32_uart_tohex>
 5d8:	0640006f          	j	63c <neorv32_uart0_printf+0x160>
 5dc:	00012783          	lw	a5,0(sp)
 5e0:	0007a503          	lw	a0,0(a5)
 5e4:	00478713          	addi	a4,a5,4
 5e8:	00e12023          	sw	a4,0(sp)
 5ec:	e99ff0ef          	jal	ra,484 <neorv32_uart0_print>
 5f0:	00098413          	mv	s0,s3
 5f4:	f5dff06f          	j	550 <neorv32_uart0_printf+0x74>
 5f8:	00012783          	lw	a5,0(sp)
 5fc:	0007c503          	lbu	a0,0(a5)
 600:	00478713          	addi	a4,a5,4
 604:	00e12023          	sw	a4,0(sp)
 608:	e65ff0ef          	jal	ra,46c <neorv32_uart0_putc>
 60c:	fe5ff06f          	j	5f0 <neorv32_uart0_printf+0x114>
 610:	00012783          	lw	a5,0(sp)
 614:	0007a403          	lw	s0,0(a5)
 618:	00478713          	addi	a4,a5,4
 61c:	00e12023          	sw	a4,0(sp)
 620:	00045863          	bgez	s0,630 <neorv32_uart0_printf+0x154>
 624:	02d00513          	li	a0,45
 628:	40800433          	neg	s0,s0
 62c:	e41ff0ef          	jal	ra,46c <neorv32_uart0_putc>
 630:	00410593          	addi	a1,sp,4
 634:	00040513          	mv	a0,s0
 638:	c35ff0ef          	jal	ra,26c <__neorv32_uart_itoa>
 63c:	00410513          	addi	a0,sp,4
 640:	fadff06f          	j	5ec <neorv32_uart0_printf+0x110>
 644:	00012783          	lw	a5,0(sp)
 648:	00410593          	addi	a1,sp,4
 64c:	00478713          	addi	a4,a5,4
 650:	0007a503          	lw	a0,0(a5)
 654:	00e12023          	sw	a4,0(sp)
 658:	fe1ff06f          	j	638 <neorv32_uart0_printf+0x15c>
 65c:	01549663          	bne	s1,s5,668 <neorv32_uart0_printf+0x18c>
 660:	00d00513          	li	a0,13
 664:	e09ff0ef          	jal	ra,46c <neorv32_uart0_putc>
 668:	00140993          	addi	s3,s0,1
 66c:	00048513          	mv	a0,s1
 670:	f99ff06f          	j	608 <neorv32_uart0_printf+0x12c>

00000674 <neorv32_pwm_available>:
 674:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 678:	01555513          	srli	a0,a0,0x15
 67c:	00157513          	andi	a0,a0,1
 680:	00008067          	ret

00000684 <neorv32_pwm_setup>:
 684:	00757513          	andi	a0,a0,7
 688:	e8000793          	li	a5,-384
 68c:	00151513          	slli	a0,a0,0x1
 690:	0007a023          	sw	zero,0(a5)
 694:	00156513          	ori	a0,a0,1
 698:	00a7a023          	sw	a0,0(a5)
 69c:	00008067          	ret

000006a0 <neorv32_pwm_set>:
 6a0:	03b00793          	li	a5,59
 6a4:	02a7e863          	bltu	a5,a0,6d4 <neorv32_pwm_set+0x34>
 6a8:	00357713          	andi	a4,a0,3
 6ac:	0fc57513          	andi	a0,a0,252
 6b0:	e8452683          	lw	a3,-380(a0)
 6b4:	00371713          	slli	a4,a4,0x3
 6b8:	0ff00793          	li	a5,255
 6bc:	00e797b3          	sll	a5,a5,a4
 6c0:	fff7c793          	not	a5,a5
 6c4:	00d7f7b3          	and	a5,a5,a3
 6c8:	00e595b3          	sll	a1,a1,a4
 6cc:	00f5e5b3          	or	a1,a1,a5
 6d0:	e8b52223          	sw	a1,-380(a0)
 6d4:	00008067          	ret

000006d8 <neorv32_cpu_get_systime>:
 6d8:	ff010113          	addi	sp,sp,-16
 6dc:	c81026f3          	rdtimeh	a3
 6e0:	c0102773          	rdtime	a4
 6e4:	c81027f3          	rdtimeh	a5
 6e8:	fed79ae3          	bne	a5,a3,6dc <neorv32_cpu_get_systime+0x4>
 6ec:	00e12023          	sw	a4,0(sp)
 6f0:	00f12223          	sw	a5,4(sp)
 6f4:	00012503          	lw	a0,0(sp)
 6f8:	00412583          	lw	a1,4(sp)
 6fc:	01010113          	addi	sp,sp,16
 700:	00008067          	ret

00000704 <neorv32_cpu_delay_ms>:
 704:	fd010113          	addi	sp,sp,-48
 708:	00a12623          	sw	a0,12(sp)
 70c:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 710:	3e800593          	li	a1,1000
 714:	02112623          	sw	ra,44(sp)
 718:	02812423          	sw	s0,40(sp)
 71c:	02912223          	sw	s1,36(sp)
 720:	03212023          	sw	s2,32(sp)
 724:	01312e23          	sw	s3,28(sp)
 728:	6a8000ef          	jal	ra,dd0 <__udivsi3>
 72c:	00c12603          	lw	a2,12(sp)
 730:	00000693          	li	a3,0
 734:	00000593          	li	a1,0
 738:	600000ef          	jal	ra,d38 <__muldi3>
 73c:	00050413          	mv	s0,a0
 740:	00058993          	mv	s3,a1
 744:	f95ff0ef          	jal	ra,6d8 <neorv32_cpu_get_systime>
 748:	00058913          	mv	s2,a1
 74c:	00050493          	mv	s1,a0
 750:	f89ff0ef          	jal	ra,6d8 <neorv32_cpu_get_systime>
 754:	00b96663          	bltu	s2,a1,760 <neorv32_cpu_delay_ms+0x5c>
 758:	05259263          	bne	a1,s2,79c <neorv32_cpu_delay_ms+0x98>
 75c:	04a4f063          	bgeu	s1,a0,79c <neorv32_cpu_delay_ms+0x98>
 760:	008484b3          	add	s1,s1,s0
 764:	0084b433          	sltu	s0,s1,s0
 768:	01390933          	add	s2,s2,s3
 76c:	01240433          	add	s0,s0,s2
 770:	f69ff0ef          	jal	ra,6d8 <neorv32_cpu_get_systime>
 774:	fe85eee3          	bltu	a1,s0,770 <neorv32_cpu_delay_ms+0x6c>
 778:	00b41463          	bne	s0,a1,780 <neorv32_cpu_delay_ms+0x7c>
 77c:	fe956ae3          	bltu	a0,s1,770 <neorv32_cpu_delay_ms+0x6c>
 780:	02c12083          	lw	ra,44(sp)
 784:	02812403          	lw	s0,40(sp)
 788:	02412483          	lw	s1,36(sp)
 78c:	02012903          	lw	s2,32(sp)
 790:	01c12983          	lw	s3,28(sp)
 794:	03010113          	addi	sp,sp,48
 798:	00008067          	ret
 79c:	01c99913          	slli	s2,s3,0x1c
 7a0:	00445413          	srli	s0,s0,0x4
 7a4:	00896433          	or	s0,s2,s0

000007a8 <__neorv32_cpu_delay_ms_start>:
 7a8:	00040a63          	beqz	s0,7bc <__neorv32_cpu_delay_ms_end>
 7ac:	00040863          	beqz	s0,7bc <__neorv32_cpu_delay_ms_end>
 7b0:	fff40413          	addi	s0,s0,-1
 7b4:	00000013          	nop
 7b8:	ff1ff06f          	j	7a8 <__neorv32_cpu_delay_ms_start>

000007bc <__neorv32_cpu_delay_ms_end>:
 7bc:	fc5ff06f          	j	780 <neorv32_cpu_delay_ms+0x7c>

000007c0 <__neorv32_rte_core>:
 7c0:	fc010113          	addi	sp,sp,-64
 7c4:	02112e23          	sw	ra,60(sp)
 7c8:	02512c23          	sw	t0,56(sp)
 7cc:	02612a23          	sw	t1,52(sp)
 7d0:	02712823          	sw	t2,48(sp)
 7d4:	02a12623          	sw	a0,44(sp)
 7d8:	02b12423          	sw	a1,40(sp)
 7dc:	02c12223          	sw	a2,36(sp)
 7e0:	02d12023          	sw	a3,32(sp)
 7e4:	00e12e23          	sw	a4,28(sp)
 7e8:	00f12c23          	sw	a5,24(sp)
 7ec:	01012a23          	sw	a6,20(sp)
 7f0:	01112823          	sw	a7,16(sp)
 7f4:	01c12623          	sw	t3,12(sp)
 7f8:	01d12423          	sw	t4,8(sp)
 7fc:	01e12223          	sw	t5,4(sp)
 800:	01f12023          	sw	t6,0(sp)
 804:	34102773          	csrr	a4,mepc
 808:	34071073          	csrw	mscratch,a4
 80c:	342027f3          	csrr	a5,mcause
 810:	0807ca63          	bltz	a5,8a4 <__neorv32_rte_core+0xe4>
 814:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3ee20>
 818:	00300593          	li	a1,3
 81c:	0036f693          	andi	a3,a3,3
 820:	00270613          	addi	a2,a4,2
 824:	00b69463          	bne	a3,a1,82c <__neorv32_rte_core+0x6c>
 828:	00470613          	addi	a2,a4,4
 82c:	34161073          	csrw	mepc,a2
 830:	00b00713          	li	a4,11
 834:	04f77c63          	bgeu	a4,a5,88c <__neorv32_rte_core+0xcc>
 838:	000017b7          	lui	a5,0x1
 83c:	a4078793          	addi	a5,a5,-1472 # a40 <__neorv32_rte_debug_exc_handler>
 840:	000780e7          	jalr	a5
 844:	03c12083          	lw	ra,60(sp)
 848:	03812283          	lw	t0,56(sp)
 84c:	03412303          	lw	t1,52(sp)
 850:	03012383          	lw	t2,48(sp)
 854:	02c12503          	lw	a0,44(sp)
 858:	02812583          	lw	a1,40(sp)
 85c:	02412603          	lw	a2,36(sp)
 860:	02012683          	lw	a3,32(sp)
 864:	01c12703          	lw	a4,28(sp)
 868:	01812783          	lw	a5,24(sp)
 86c:	01412803          	lw	a6,20(sp)
 870:	01012883          	lw	a7,16(sp)
 874:	00c12e03          	lw	t3,12(sp)
 878:	00812e83          	lw	t4,8(sp)
 87c:	00412f03          	lw	t5,4(sp)
 880:	00012f83          	lw	t6,0(sp)
 884:	04010113          	addi	sp,sp,64
 888:	30200073          	mret
 88c:	00001737          	lui	a4,0x1
 890:	00279793          	slli	a5,a5,0x2
 894:	eb070713          	addi	a4,a4,-336 # eb0 <symbols.0+0x14>
 898:	00e787b3          	add	a5,a5,a4
 89c:	0007a783          	lw	a5,0(a5)
 8a0:	00078067          	jr	a5
 8a4:	80000737          	lui	a4,0x80000
 8a8:	ffd74713          	xori	a4,a4,-3
 8ac:	00e787b3          	add	a5,a5,a4
 8b0:	01c00713          	li	a4,28
 8b4:	f8f762e3          	bltu	a4,a5,838 <__neorv32_rte_core+0x78>
 8b8:	00001737          	lui	a4,0x1
 8bc:	00279793          	slli	a5,a5,0x2
 8c0:	ee070713          	addi	a4,a4,-288 # ee0 <symbols.0+0x44>
 8c4:	00e787b3          	add	a5,a5,a4
 8c8:	0007a783          	lw	a5,0(a5)
 8cc:	00078067          	jr	a5
 8d0:	800007b7          	lui	a5,0x80000
 8d4:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 8d8:	f69ff06f          	j	840 <__neorv32_rte_core+0x80>
 8dc:	800007b7          	lui	a5,0x80000
 8e0:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 8e4:	f5dff06f          	j	840 <__neorv32_rte_core+0x80>
 8e8:	800007b7          	lui	a5,0x80000
 8ec:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 8f0:	f51ff06f          	j	840 <__neorv32_rte_core+0x80>
 8f4:	800007b7          	lui	a5,0x80000
 8f8:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
 8fc:	f45ff06f          	j	840 <__neorv32_rte_core+0x80>
 900:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
 904:	f3dff06f          	j	840 <__neorv32_rte_core+0x80>
 908:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
 90c:	f35ff06f          	j	840 <__neorv32_rte_core+0x80>
 910:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
 914:	f2dff06f          	j	840 <__neorv32_rte_core+0x80>
 918:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
 91c:	f25ff06f          	j	840 <__neorv32_rte_core+0x80>
 920:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
 924:	f1dff06f          	j	840 <__neorv32_rte_core+0x80>
 928:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
 92c:	f15ff06f          	j	840 <__neorv32_rte_core+0x80>
 930:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
 934:	f0dff06f          	j	840 <__neorv32_rte_core+0x80>
 938:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
 93c:	f05ff06f          	j	840 <__neorv32_rte_core+0x80>
 940:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
 944:	efdff06f          	j	840 <__neorv32_rte_core+0x80>
 948:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
 94c:	ef5ff06f          	j	840 <__neorv32_rte_core+0x80>
 950:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
 954:	eedff06f          	j	840 <__neorv32_rte_core+0x80>
 958:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
 95c:	ee5ff06f          	j	840 <__neorv32_rte_core+0x80>
 960:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 964:	eddff06f          	j	840 <__neorv32_rte_core+0x80>
 968:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 96c:	ed5ff06f          	j	840 <__neorv32_rte_core+0x80>
 970:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 974:	ecdff06f          	j	840 <__neorv32_rte_core+0x80>
 978:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 97c:	ec5ff06f          	j	840 <__neorv32_rte_core+0x80>
 980:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 984:	ebdff06f          	j	840 <__neorv32_rte_core+0x80>
 988:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 98c:	eb5ff06f          	j	840 <__neorv32_rte_core+0x80>
 990:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 994:	eadff06f          	j	840 <__neorv32_rte_core+0x80>
 998:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 99c:	ea5ff06f          	j	840 <__neorv32_rte_core+0x80>
 9a0:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 9a4:	e9dff06f          	j	840 <__neorv32_rte_core+0x80>
 9a8:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 9ac:	e95ff06f          	j	840 <__neorv32_rte_core+0x80>
 9b0:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 9b4:	e8dff06f          	j	840 <__neorv32_rte_core+0x80>
 9b8:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 9bc:	e85ff06f          	j	840 <__neorv32_rte_core+0x80>
 9c0:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 9c4:	e7dff06f          	j	840 <__neorv32_rte_core+0x80>
 9c8:	0000                	unimp
 9ca:	0000                	unimp
 9cc:	0000                	unimp
 9ce:	0000                	unimp

000009d0 <__neorv32_rte_print_hex_word>:
 9d0:	fe010113          	addi	sp,sp,-32
 9d4:	01212823          	sw	s2,16(sp)
 9d8:	00050913          	mv	s2,a0
 9dc:	00001537          	lui	a0,0x1
 9e0:	00912a23          	sw	s1,20(sp)
 9e4:	f5450513          	addi	a0,a0,-172 # f54 <symbols.0+0xb8>
 9e8:	000014b7          	lui	s1,0x1
 9ec:	00812c23          	sw	s0,24(sp)
 9f0:	01312623          	sw	s3,12(sp)
 9f4:	00112e23          	sw	ra,28(sp)
 9f8:	01c00413          	li	s0,28
 9fc:	a89ff0ef          	jal	ra,484 <neorv32_uart0_print>
 a00:	1d048493          	addi	s1,s1,464 # 11d0 <hex_symbols.0>
 a04:	ffc00993          	li	s3,-4
 a08:	008957b3          	srl	a5,s2,s0
 a0c:	00f7f793          	andi	a5,a5,15
 a10:	00f487b3          	add	a5,s1,a5
 a14:	0007c503          	lbu	a0,0(a5)
 a18:	ffc40413          	addi	s0,s0,-4
 a1c:	a51ff0ef          	jal	ra,46c <neorv32_uart0_putc>
 a20:	ff3414e3          	bne	s0,s3,a08 <__neorv32_rte_print_hex_word+0x38>
 a24:	01c12083          	lw	ra,28(sp)
 a28:	01812403          	lw	s0,24(sp)
 a2c:	01412483          	lw	s1,20(sp)
 a30:	01012903          	lw	s2,16(sp)
 a34:	00c12983          	lw	s3,12(sp)
 a38:	02010113          	addi	sp,sp,32
 a3c:	00008067          	ret

00000a40 <__neorv32_rte_debug_exc_handler>:
 a40:	ff010113          	addi	sp,sp,-16
 a44:	00112623          	sw	ra,12(sp)
 a48:	00812423          	sw	s0,8(sp)
 a4c:	00912223          	sw	s1,4(sp)
 a50:	961ff0ef          	jal	ra,3b0 <neorv32_uart0_available>
 a54:	1c050863          	beqz	a0,c24 <__neorv32_rte_debug_exc_handler+0x1e4>
 a58:	00001537          	lui	a0,0x1
 a5c:	f5850513          	addi	a0,a0,-168 # f58 <symbols.0+0xbc>
 a60:	a25ff0ef          	jal	ra,484 <neorv32_uart0_print>
 a64:	34202473          	csrr	s0,mcause
 a68:	00900713          	li	a4,9
 a6c:	00f47793          	andi	a5,s0,15
 a70:	03078493          	addi	s1,a5,48
 a74:	00f77463          	bgeu	a4,a5,a7c <__neorv32_rte_debug_exc_handler+0x3c>
 a78:	05778493          	addi	s1,a5,87
 a7c:	00b00793          	li	a5,11
 a80:	0087ee63          	bltu	a5,s0,a9c <__neorv32_rte_debug_exc_handler+0x5c>
 a84:	00001737          	lui	a4,0x1
 a88:	00241793          	slli	a5,s0,0x2
 a8c:	11870713          	addi	a4,a4,280 # 1118 <symbols.0+0x27c>
 a90:	00e787b3          	add	a5,a5,a4
 a94:	0007a783          	lw	a5,0(a5)
 a98:	00078067          	jr	a5
 a9c:	800007b7          	lui	a5,0x80000
 aa0:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 aa4:	14e40e63          	beq	s0,a4,c00 <__neorv32_rte_debug_exc_handler+0x1c0>
 aa8:	02876a63          	bltu	a4,s0,adc <__neorv32_rte_debug_exc_handler+0x9c>
 aac:	00378713          	addi	a4,a5,3
 ab0:	12e40c63          	beq	s0,a4,be8 <__neorv32_rte_debug_exc_handler+0x1a8>
 ab4:	00778793          	addi	a5,a5,7
 ab8:	12f40e63          	beq	s0,a5,bf4 <__neorv32_rte_debug_exc_handler+0x1b4>
 abc:	00001537          	lui	a0,0x1
 ac0:	0b850513          	addi	a0,a0,184 # 10b8 <symbols.0+0x21c>
 ac4:	9c1ff0ef          	jal	ra,484 <neorv32_uart0_print>
 ac8:	00040513          	mv	a0,s0
 acc:	f05ff0ef          	jal	ra,9d0 <__neorv32_rte_print_hex_word>
 ad0:	00100793          	li	a5,1
 ad4:	08f40c63          	beq	s0,a5,b6c <__neorv32_rte_debug_exc_handler+0x12c>
 ad8:	0280006f          	j	b00 <__neorv32_rte_debug_exc_handler+0xc0>
 adc:	ff07c793          	xori	a5,a5,-16
 ae0:	00f407b3          	add	a5,s0,a5
 ae4:	00f00713          	li	a4,15
 ae8:	fcf76ae3          	bltu	a4,a5,abc <__neorv32_rte_debug_exc_handler+0x7c>
 aec:	00001537          	lui	a0,0x1
 af0:	0a850513          	addi	a0,a0,168 # 10a8 <symbols.0+0x20c>
 af4:	991ff0ef          	jal	ra,484 <neorv32_uart0_print>
 af8:	00048513          	mv	a0,s1
 afc:	971ff0ef          	jal	ra,46c <neorv32_uart0_putc>
 b00:	ffd47413          	andi	s0,s0,-3
 b04:	00500793          	li	a5,5
 b08:	06f40263          	beq	s0,a5,b6c <__neorv32_rte_debug_exc_handler+0x12c>
 b0c:	00001537          	lui	a0,0x1
 b10:	0fc50513          	addi	a0,a0,252 # 10fc <symbols.0+0x260>
 b14:	971ff0ef          	jal	ra,484 <neorv32_uart0_print>
 b18:	34002573          	csrr	a0,mscratch
 b1c:	eb5ff0ef          	jal	ra,9d0 <__neorv32_rte_print_hex_word>
 b20:	00001537          	lui	a0,0x1
 b24:	10450513          	addi	a0,a0,260 # 1104 <symbols.0+0x268>
 b28:	95dff0ef          	jal	ra,484 <neorv32_uart0_print>
 b2c:	34302573          	csrr	a0,mtval
 b30:	ea1ff0ef          	jal	ra,9d0 <__neorv32_rte_print_hex_word>
 b34:	00812403          	lw	s0,8(sp)
 b38:	00c12083          	lw	ra,12(sp)
 b3c:	00412483          	lw	s1,4(sp)
 b40:	00001537          	lui	a0,0x1
 b44:	11050513          	addi	a0,a0,272 # 1110 <symbols.0+0x274>
 b48:	01010113          	addi	sp,sp,16
 b4c:	939ff06f          	j	484 <neorv32_uart0_print>
 b50:	00001537          	lui	a0,0x1
 b54:	f6050513          	addi	a0,a0,-160 # f60 <symbols.0+0xc4>
 b58:	92dff0ef          	jal	ra,484 <neorv32_uart0_print>
 b5c:	fb1ff06f          	j	b0c <__neorv32_rte_debug_exc_handler+0xcc>
 b60:	00001537          	lui	a0,0x1
 b64:	f8050513          	addi	a0,a0,-128 # f80 <symbols.0+0xe4>
 b68:	91dff0ef          	jal	ra,484 <neorv32_uart0_print>
 b6c:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 b70:	0a07d463          	bgez	a5,c18 <__neorv32_rte_debug_exc_handler+0x1d8>
 b74:	0017f793          	andi	a5,a5,1
 b78:	08078a63          	beqz	a5,c0c <__neorv32_rte_debug_exc_handler+0x1cc>
 b7c:	00001537          	lui	a0,0x1
 b80:	0d050513          	addi	a0,a0,208 # 10d0 <symbols.0+0x234>
 b84:	fd5ff06f          	j	b58 <__neorv32_rte_debug_exc_handler+0x118>
 b88:	00001537          	lui	a0,0x1
 b8c:	f9c50513          	addi	a0,a0,-100 # f9c <symbols.0+0x100>
 b90:	fc9ff06f          	j	b58 <__neorv32_rte_debug_exc_handler+0x118>
 b94:	00001537          	lui	a0,0x1
 b98:	fb050513          	addi	a0,a0,-80 # fb0 <symbols.0+0x114>
 b9c:	fbdff06f          	j	b58 <__neorv32_rte_debug_exc_handler+0x118>
 ba0:	00001537          	lui	a0,0x1
 ba4:	fbc50513          	addi	a0,a0,-68 # fbc <symbols.0+0x120>
 ba8:	fb1ff06f          	j	b58 <__neorv32_rte_debug_exc_handler+0x118>
 bac:	00001537          	lui	a0,0x1
 bb0:	fd450513          	addi	a0,a0,-44 # fd4 <symbols.0+0x138>
 bb4:	fb5ff06f          	j	b68 <__neorv32_rte_debug_exc_handler+0x128>
 bb8:	00001537          	lui	a0,0x1
 bbc:	fe850513          	addi	a0,a0,-24 # fe8 <symbols.0+0x14c>
 bc0:	f99ff06f          	j	b58 <__neorv32_rte_debug_exc_handler+0x118>
 bc4:	00001537          	lui	a0,0x1
 bc8:	00450513          	addi	a0,a0,4 # 1004 <symbols.0+0x168>
 bcc:	f9dff06f          	j	b68 <__neorv32_rte_debug_exc_handler+0x128>
 bd0:	00001537          	lui	a0,0x1
 bd4:	01850513          	addi	a0,a0,24 # 1018 <symbols.0+0x17c>
 bd8:	f81ff06f          	j	b58 <__neorv32_rte_debug_exc_handler+0x118>
 bdc:	00001537          	lui	a0,0x1
 be0:	03850513          	addi	a0,a0,56 # 1038 <symbols.0+0x19c>
 be4:	f75ff06f          	j	b58 <__neorv32_rte_debug_exc_handler+0x118>
 be8:	00001537          	lui	a0,0x1
 bec:	05850513          	addi	a0,a0,88 # 1058 <symbols.0+0x1bc>
 bf0:	f69ff06f          	j	b58 <__neorv32_rte_debug_exc_handler+0x118>
 bf4:	00001537          	lui	a0,0x1
 bf8:	07450513          	addi	a0,a0,116 # 1074 <symbols.0+0x1d8>
 bfc:	f5dff06f          	j	b58 <__neorv32_rte_debug_exc_handler+0x118>
 c00:	00001537          	lui	a0,0x1
 c04:	08c50513          	addi	a0,a0,140 # 108c <symbols.0+0x1f0>
 c08:	f51ff06f          	j	b58 <__neorv32_rte_debug_exc_handler+0x118>
 c0c:	00001537          	lui	a0,0x1
 c10:	0e050513          	addi	a0,a0,224 # 10e0 <symbols.0+0x244>
 c14:	f45ff06f          	j	b58 <__neorv32_rte_debug_exc_handler+0x118>
 c18:	00001537          	lui	a0,0x1
 c1c:	0f050513          	addi	a0,a0,240 # 10f0 <symbols.0+0x254>
 c20:	f39ff06f          	j	b58 <__neorv32_rte_debug_exc_handler+0x118>
 c24:	00c12083          	lw	ra,12(sp)
 c28:	00812403          	lw	s0,8(sp)
 c2c:	00412483          	lw	s1,4(sp)
 c30:	01010113          	addi	sp,sp,16
 c34:	00008067          	ret

00000c38 <neorv32_rte_exception_uninstall>:
 c38:	01f00793          	li	a5,31
 c3c:	02a7e463          	bltu	a5,a0,c64 <neorv32_rte_exception_uninstall+0x2c>
 c40:	800007b7          	lui	a5,0x80000
 c44:	00078793          	mv	a5,a5
 c48:	00251513          	slli	a0,a0,0x2
 c4c:	00a78533          	add	a0,a5,a0
 c50:	000017b7          	lui	a5,0x1
 c54:	a4078793          	addi	a5,a5,-1472 # a40 <__neorv32_rte_debug_exc_handler>
 c58:	00f52023          	sw	a5,0(a0)
 c5c:	00000513          	li	a0,0
 c60:	00008067          	ret
 c64:	00100513          	li	a0,1
 c68:	00008067          	ret

00000c6c <neorv32_rte_setup>:
 c6c:	ff010113          	addi	sp,sp,-16
 c70:	00112623          	sw	ra,12(sp)
 c74:	00812423          	sw	s0,8(sp)
 c78:	00912223          	sw	s1,4(sp)
 c7c:	7c000793          	li	a5,1984
 c80:	30579073          	csrw	mtvec,a5
 c84:	00000413          	li	s0,0
 c88:	01d00493          	li	s1,29
 c8c:	00040513          	mv	a0,s0
 c90:	00140413          	addi	s0,s0,1
 c94:	0ff47413          	andi	s0,s0,255
 c98:	fa1ff0ef          	jal	ra,c38 <neorv32_rte_exception_uninstall>
 c9c:	fe9418e3          	bne	s0,s1,c8c <neorv32_rte_setup+0x20>
 ca0:	00c12083          	lw	ra,12(sp)
 ca4:	00812403          	lw	s0,8(sp)
 ca8:	00412483          	lw	s1,4(sp)
 cac:	01010113          	addi	sp,sp,16
 cb0:	00008067          	ret

00000cb4 <neorv32_rte_check_isa>:
 cb4:	30102673          	csrr	a2,misa
 cb8:	400007b7          	lui	a5,0x40000
 cbc:	10078793          	addi	a5,a5,256 # 40000100 <__crt0_copy_data_src_begin+0x3fffef20>
 cc0:	00f67733          	and	a4,a2,a5
 cc4:	04f70463          	beq	a4,a5,d0c <neorv32_rte_check_isa+0x58>
 cc8:	fe010113          	addi	sp,sp,-32
 ccc:	00112e23          	sw	ra,28(sp)
 cd0:	02051463          	bnez	a0,cf8 <neorv32_rte_check_isa+0x44>
 cd4:	400005b7          	lui	a1,0x40000
 cd8:	00001537          	lui	a0,0x1
 cdc:	10058593          	addi	a1,a1,256 # 40000100 <__crt0_copy_data_src_begin+0x3fffef20>
 ce0:	14850513          	addi	a0,a0,328 # 1148 <symbols.0+0x2ac>
 ce4:	ff8ff0ef          	jal	ra,4dc <neorv32_uart0_printf>
 ce8:	01c12083          	lw	ra,28(sp)
 cec:	00100513          	li	a0,1
 cf0:	02010113          	addi	sp,sp,32
 cf4:	00008067          	ret
 cf8:	00c12623          	sw	a2,12(sp)
 cfc:	eb4ff0ef          	jal	ra,3b0 <neorv32_uart0_available>
 d00:	00c12603          	lw	a2,12(sp)
 d04:	fc0508e3          	beqz	a0,cd4 <neorv32_rte_check_isa+0x20>
 d08:	fe1ff06f          	j	ce8 <neorv32_rte_check_isa+0x34>
 d0c:	00000513          	li	a0,0
 d10:	00008067          	ret

00000d14 <__mulsi3>:
 d14:	00050613          	mv	a2,a0
 d18:	00000513          	li	a0,0
 d1c:	0015f693          	andi	a3,a1,1
 d20:	00068463          	beqz	a3,d28 <__mulsi3+0x14>
 d24:	00c50533          	add	a0,a0,a2
 d28:	0015d593          	srli	a1,a1,0x1
 d2c:	00161613          	slli	a2,a2,0x1
 d30:	fe0596e3          	bnez	a1,d1c <__mulsi3+0x8>
 d34:	00008067          	ret

00000d38 <__muldi3>:
 d38:	00050313          	mv	t1,a0
 d3c:	ff010113          	addi	sp,sp,-16
 d40:	00060513          	mv	a0,a2
 d44:	00068893          	mv	a7,a3
 d48:	00112623          	sw	ra,12(sp)
 d4c:	00030613          	mv	a2,t1
 d50:	00050693          	mv	a3,a0
 d54:	00000713          	li	a4,0
 d58:	00000793          	li	a5,0
 d5c:	00000813          	li	a6,0
 d60:	0016fe13          	andi	t3,a3,1
 d64:	00171e93          	slli	t4,a4,0x1
 d68:	000e0c63          	beqz	t3,d80 <__muldi3+0x48>
 d6c:	01060e33          	add	t3,a2,a6
 d70:	010e3833          	sltu	a6,t3,a6
 d74:	00e787b3          	add	a5,a5,a4
 d78:	00f807b3          	add	a5,a6,a5
 d7c:	000e0813          	mv	a6,t3
 d80:	01f65713          	srli	a4,a2,0x1f
 d84:	0016d693          	srli	a3,a3,0x1
 d88:	00eee733          	or	a4,t4,a4
 d8c:	00161613          	slli	a2,a2,0x1
 d90:	fc0698e3          	bnez	a3,d60 <__muldi3+0x28>
 d94:	00058663          	beqz	a1,da0 <__muldi3+0x68>
 d98:	f7dff0ef          	jal	ra,d14 <__mulsi3>
 d9c:	00a787b3          	add	a5,a5,a0
 da0:	00088a63          	beqz	a7,db4 <__muldi3+0x7c>
 da4:	00030513          	mv	a0,t1
 da8:	00088593          	mv	a1,a7
 dac:	f69ff0ef          	jal	ra,d14 <__mulsi3>
 db0:	00f507b3          	add	a5,a0,a5
 db4:	00c12083          	lw	ra,12(sp)
 db8:	00080513          	mv	a0,a6
 dbc:	00078593          	mv	a1,a5
 dc0:	01010113          	addi	sp,sp,16
 dc4:	00008067          	ret

00000dc8 <__divsi3>:
 dc8:	06054063          	bltz	a0,e28 <__umodsi3+0x10>
 dcc:	0605c663          	bltz	a1,e38 <__umodsi3+0x20>

00000dd0 <__udivsi3>:
 dd0:	00058613          	mv	a2,a1
 dd4:	00050593          	mv	a1,a0
 dd8:	fff00513          	li	a0,-1
 ddc:	02060c63          	beqz	a2,e14 <__udivsi3+0x44>
 de0:	00100693          	li	a3,1
 de4:	00b67a63          	bgeu	a2,a1,df8 <__udivsi3+0x28>
 de8:	00c05863          	blez	a2,df8 <__udivsi3+0x28>
 dec:	00161613          	slli	a2,a2,0x1
 df0:	00169693          	slli	a3,a3,0x1
 df4:	feb66ae3          	bltu	a2,a1,de8 <__udivsi3+0x18>
 df8:	00000513          	li	a0,0
 dfc:	00c5e663          	bltu	a1,a2,e08 <__udivsi3+0x38>
 e00:	40c585b3          	sub	a1,a1,a2
 e04:	00d56533          	or	a0,a0,a3
 e08:	0016d693          	srli	a3,a3,0x1
 e0c:	00165613          	srli	a2,a2,0x1
 e10:	fe0696e3          	bnez	a3,dfc <__udivsi3+0x2c>
 e14:	00008067          	ret

00000e18 <__umodsi3>:
 e18:	00008293          	mv	t0,ra
 e1c:	fb5ff0ef          	jal	ra,dd0 <__udivsi3>
 e20:	00058513          	mv	a0,a1
 e24:	00028067          	jr	t0
 e28:	40a00533          	neg	a0,a0
 e2c:	00b04863          	bgtz	a1,e3c <__umodsi3+0x24>
 e30:	40b005b3          	neg	a1,a1
 e34:	f9dff06f          	j	dd0 <__udivsi3>
 e38:	40b005b3          	neg	a1,a1
 e3c:	00008293          	mv	t0,ra
 e40:	f91ff0ef          	jal	ra,dd0 <__udivsi3>
 e44:	40a00533          	neg	a0,a0
 e48:	00028067          	jr	t0

00000e4c <__modsi3>:
 e4c:	00008293          	mv	t0,ra
 e50:	0005ca63          	bltz	a1,e64 <__modsi3+0x18>
 e54:	00054c63          	bltz	a0,e6c <__modsi3+0x20>
 e58:	f79ff0ef          	jal	ra,dd0 <__udivsi3>
 e5c:	00058513          	mv	a0,a1
 e60:	00028067          	jr	t0
 e64:	40b005b3          	neg	a1,a1
 e68:	fe0558e3          	bgez	a0,e58 <__modsi3+0xc>
 e6c:	40a00533          	neg	a0,a0
 e70:	f61ff0ef          	jal	ra,dd0 <__udivsi3>
 e74:	40b00533          	neg	a0,a1
 e78:	00028067          	jr	t0
