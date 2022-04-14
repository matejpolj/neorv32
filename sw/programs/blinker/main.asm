
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
  e0:	1f058593          	addi	a1,a1,496 # 12cc <__crt0_copy_data_src_begin>
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
 180:	00005537          	lui	a0,0x5
 184:	fd010113          	addi	sp,sp,-48
 188:	00000613          	li	a2,0
 18c:	00000593          	li	a1,0
 190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3834>
 194:	02112623          	sw	ra,44(sp)
 198:	02812423          	sw	s0,40(sp)
 19c:	02912223          	sw	s1,36(sp)
 1a0:	03212023          	sw	s2,32(sp)
 1a4:	01312e23          	sw	s3,28(sp)
 1a8:	01412c23          	sw	s4,24(sp)
 1ac:	01512a23          	sw	s5,20(sp)
 1b0:	01612823          	sw	s6,16(sp)
 1b4:	2c4000ef          	jal	ra,478 <neorv32_uart0_setup>
 1b8:	361000ef          	jal	ra,d18 <neorv32_gpio_available>
 1bc:	02051e63          	bnez	a0,1f8 <main+0x78>
 1c0:	00001537          	lui	a0,0x1
 1c4:	eb850513          	addi	a0,a0,-328 # eb8 <__etext>
 1c8:	374000ef          	jal	ra,53c <neorv32_uart0_print>
 1cc:	00100513          	li	a0,1
 1d0:	02c12083          	lw	ra,44(sp)
 1d4:	02812403          	lw	s0,40(sp)
 1d8:	02412483          	lw	s1,36(sp)
 1dc:	02012903          	lw	s2,32(sp)
 1e0:	01c12983          	lw	s3,28(sp)
 1e4:	01812a03          	lw	s4,24(sp)
 1e8:	01412a83          	lw	s5,20(sp)
 1ec:	01012b03          	lw	s6,16(sp)
 1f0:	03010113          	addi	sp,sp,48
 1f4:	00008067          	ret
 1f8:	2d5000ef          	jal	ra,ccc <neorv32_rte_setup>
 1fc:	00001537          	lui	a0,0x1
 200:	edc50513          	addi	a0,a0,-292 # edc <__etext+0x24>
 204:	338000ef          	jal	ra,53c <neorv32_uart0_print>
 208:	00000593          	li	a1,0
 20c:	000019b7          	lui	s3,0x1
 210:	00001a37          	lui	s4,0x1
 214:	00001ab7          	lui	s5,0x1
 218:	00100b13          	li	s6,1
 21c:	00001937          	lui	s2,0x1
 220:	000014b7          	lui	s1,0x1
 224:	efc98513          	addi	a0,s3,-260 # efc <__etext+0x44>
 228:	00b12623          	sw	a1,12(sp)
 22c:	310000ef          	jal	ra,53c <neorv32_uart0_print>
 230:	00000513          	li	a0,0
 234:	074000ef          	jal	ra,2a8 <getButtonState>
 238:	00c12583          	lw	a1,12(sp)
 23c:	00050413          	mv	s0,a0
 240:	f24a0513          	addi	a0,s4,-220 # f24 <__etext+0x6c>
 244:	350000ef          	jal	ra,594 <neorv32_uart0_printf>
 248:	f3ca8513          	addi	a0,s5,-196 # f3c <__etext+0x84>
 24c:	2f0000ef          	jal	ra,53c <neorv32_uart0_print>
 250:	00300513          	li	a0,3
 254:	054000ef          	jal	ra,2a8 <getButtonState>
 258:	03650e63          	beq	a0,s6,294 <main+0x114>
 25c:	00000513          	li	a0,0
 260:	2c9000ef          	jal	ra,d28 <neorv32_gpio_pin_get>
 264:	00050593          	mv	a1,a0
 268:	f8890513          	addi	a0,s2,-120 # f88 <__etext+0xd0>
 26c:	328000ef          	jal	ra,594 <neorv32_uart0_printf>
 270:	3e800513          	li	a0,1000
 274:	4e4000ef          	jal	ra,758 <neorv32_cpu_delay_ms>
 278:	fc002583          	lw	a1,-64(zero) # ffffffc0 <__ctr0_io_space_begin+0x1c0>
 27c:	f9848513          	addi	a0,s1,-104 # f98 <__etext+0xe0>
 280:	314000ef          	jal	ra,594 <neorv32_uart0_printf>
 284:	3e800513          	li	a0,1000
 288:	4d0000ef          	jal	ra,758 <neorv32_cpu_delay_ms>
 28c:	00040593          	mv	a1,s0
 290:	f95ff06f          	j	224 <main+0xa4>
 294:	00001537          	lui	a0,0x1
 298:	fbc50513          	addi	a0,a0,-68 # fbc <__etext+0x104>
 29c:	2a0000ef          	jal	ra,53c <neorv32_uart0_print>
 2a0:	00000513          	li	a0,0
 2a4:	f2dff06f          	j	1d0 <main+0x50>

000002a8 <getButtonState>:
 2a8:	ff010113          	addi	sp,sp,-16
 2ac:	00112623          	sw	ra,12(sp)
 2b0:	00812423          	sw	s0,8(sp)
 2b4:	00912223          	sw	s1,4(sp)
 2b8:	00050493          	mv	s1,a0
 2bc:	26d000ef          	jal	ra,d28 <neorv32_gpio_pin_get>
 2c0:	00050593          	mv	a1,a0
 2c4:	00050413          	mv	s0,a0
 2c8:	00001537          	lui	a0,0x1
 2cc:	fdc50513          	addi	a0,a0,-36 # fdc <__etext+0x124>
 2d0:	2c4000ef          	jal	ra,594 <neorv32_uart0_printf>
 2d4:	00500513          	li	a0,5
 2d8:	480000ef          	jal	ra,758 <neorv32_cpu_delay_ms>
 2dc:	00048513          	mv	a0,s1
 2e0:	249000ef          	jal	ra,d28 <neorv32_gpio_pin_get>
 2e4:	00050493          	mv	s1,a0
 2e8:	00050593          	mv	a1,a0
 2ec:	00001537          	lui	a0,0x1
 2f0:	ff050513          	addi	a0,a0,-16 # ff0 <__etext+0x138>
 2f4:	2a0000ef          	jal	ra,594 <neorv32_uart0_printf>
 2f8:	009477b3          	and	a5,s0,s1
 2fc:	00100513          	li	a0,1
 300:	00079863          	bnez	a5,310 <getButtonState+0x68>
 304:	00946533          	or	a0,s0,s1
 308:	00050463          	beqz	a0,310 <getButtonState+0x68>
 30c:	00200513          	li	a0,2
 310:	00c12083          	lw	ra,12(sp)
 314:	00812403          	lw	s0,8(sp)
 318:	00412483          	lw	s1,4(sp)
 31c:	01010113          	addi	sp,sp,16
 320:	00008067          	ret

00000324 <__neorv32_uart_itoa>:
 324:	fd010113          	addi	sp,sp,-48
 328:	02812423          	sw	s0,40(sp)
 32c:	02912223          	sw	s1,36(sp)
 330:	03212023          	sw	s2,32(sp)
 334:	01312e23          	sw	s3,28(sp)
 338:	01412c23          	sw	s4,24(sp)
 33c:	02112623          	sw	ra,44(sp)
 340:	01512a23          	sw	s5,20(sp)
 344:	00001a37          	lui	s4,0x1
 348:	00050493          	mv	s1,a0
 34c:	00058413          	mv	s0,a1
 350:	00058523          	sb	zero,10(a1)
 354:	00000993          	li	s3,0
 358:	00410913          	addi	s2,sp,4
 35c:	004a0a13          	addi	s4,s4,4 # 1004 <numbers.1>
 360:	00a00593          	li	a1,10
 364:	00048513          	mv	a0,s1
 368:	2ed000ef          	jal	ra,e54 <__umodsi3>
 36c:	00aa0533          	add	a0,s4,a0
 370:	00054783          	lbu	a5,0(a0)
 374:	01390ab3          	add	s5,s2,s3
 378:	00048513          	mv	a0,s1
 37c:	00fa8023          	sb	a5,0(s5)
 380:	00a00593          	li	a1,10
 384:	289000ef          	jal	ra,e0c <__udivsi3>
 388:	00198993          	addi	s3,s3,1
 38c:	00a00793          	li	a5,10
 390:	00050493          	mv	s1,a0
 394:	fcf996e3          	bne	s3,a5,360 <__neorv32_uart_itoa+0x3c>
 398:	00090693          	mv	a3,s2
 39c:	00900713          	li	a4,9
 3a0:	03000613          	li	a2,48
 3a4:	0096c583          	lbu	a1,9(a3)
 3a8:	00070793          	mv	a5,a4
 3ac:	fff70713          	addi	a4,a4,-1
 3b0:	01071713          	slli	a4,a4,0x10
 3b4:	01075713          	srli	a4,a4,0x10
 3b8:	00c59a63          	bne	a1,a2,3cc <__neorv32_uart_itoa+0xa8>
 3bc:	000684a3          	sb	zero,9(a3)
 3c0:	fff68693          	addi	a3,a3,-1
 3c4:	fe0710e3          	bnez	a4,3a4 <__neorv32_uart_itoa+0x80>
 3c8:	00000793          	li	a5,0
 3cc:	00f907b3          	add	a5,s2,a5
 3d0:	00000593          	li	a1,0
 3d4:	0007c703          	lbu	a4,0(a5)
 3d8:	00070c63          	beqz	a4,3f0 <__neorv32_uart_itoa+0xcc>
 3dc:	00158693          	addi	a3,a1,1
 3e0:	00b405b3          	add	a1,s0,a1
 3e4:	00e58023          	sb	a4,0(a1)
 3e8:	01069593          	slli	a1,a3,0x10
 3ec:	0105d593          	srli	a1,a1,0x10
 3f0:	fff78713          	addi	a4,a5,-1
 3f4:	02f91863          	bne	s2,a5,424 <__neorv32_uart_itoa+0x100>
 3f8:	00b40433          	add	s0,s0,a1
 3fc:	00040023          	sb	zero,0(s0)
 400:	02c12083          	lw	ra,44(sp)
 404:	02812403          	lw	s0,40(sp)
 408:	02412483          	lw	s1,36(sp)
 40c:	02012903          	lw	s2,32(sp)
 410:	01c12983          	lw	s3,28(sp)
 414:	01812a03          	lw	s4,24(sp)
 418:	01412a83          	lw	s5,20(sp)
 41c:	03010113          	addi	sp,sp,48
 420:	00008067          	ret
 424:	00070793          	mv	a5,a4
 428:	fadff06f          	j	3d4 <__neorv32_uart_itoa+0xb0>

0000042c <__neorv32_uart_tohex>:
 42c:	00001637          	lui	a2,0x1
 430:	00758693          	addi	a3,a1,7
 434:	00000713          	li	a4,0
 438:	01060613          	addi	a2,a2,16 # 1010 <symbols.0>
 43c:	02000813          	li	a6,32
 440:	00e557b3          	srl	a5,a0,a4
 444:	00f7f793          	andi	a5,a5,15
 448:	00f607b3          	add	a5,a2,a5
 44c:	0007c783          	lbu	a5,0(a5)
 450:	00470713          	addi	a4,a4,4
 454:	fff68693          	addi	a3,a3,-1
 458:	00f680a3          	sb	a5,1(a3)
 45c:	ff0712e3          	bne	a4,a6,440 <__neorv32_uart_tohex+0x14>
 460:	00058423          	sb	zero,8(a1)
 464:	00008067          	ret

00000468 <neorv32_uart0_available>:
 468:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 46c:	01255513          	srli	a0,a0,0x12
 470:	00157513          	andi	a0,a0,1
 474:	00008067          	ret

00000478 <neorv32_uart0_setup>:
 478:	ff010113          	addi	sp,sp,-16
 47c:	00812423          	sw	s0,8(sp)
 480:	00912223          	sw	s1,4(sp)
 484:	00112623          	sw	ra,12(sp)
 488:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 48c:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 490:	00058413          	mv	s0,a1
 494:	00151593          	slli	a1,a0,0x1
 498:	00078513          	mv	a0,a5
 49c:	00060493          	mv	s1,a2
 4a0:	16d000ef          	jal	ra,e0c <__udivsi3>
 4a4:	01051513          	slli	a0,a0,0x10
 4a8:	000017b7          	lui	a5,0x1
 4ac:	01055513          	srli	a0,a0,0x10
 4b0:	00000713          	li	a4,0
 4b4:	ffe78793          	addi	a5,a5,-2 # ffe <__etext+0x146>
 4b8:	04a7e463          	bltu	a5,a0,500 <neorv32_uart0_setup+0x88>
 4bc:	0034f793          	andi	a5,s1,3
 4c0:	00347413          	andi	s0,s0,3
 4c4:	fff50513          	addi	a0,a0,-1
 4c8:	01479793          	slli	a5,a5,0x14
 4cc:	01641413          	slli	s0,s0,0x16
 4d0:	00f567b3          	or	a5,a0,a5
 4d4:	0087e7b3          	or	a5,a5,s0
 4d8:	01871713          	slli	a4,a4,0x18
 4dc:	00c12083          	lw	ra,12(sp)
 4e0:	00812403          	lw	s0,8(sp)
 4e4:	00e7e7b3          	or	a5,a5,a4
 4e8:	10000737          	lui	a4,0x10000
 4ec:	00e7e7b3          	or	a5,a5,a4
 4f0:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 4f4:	00412483          	lw	s1,4(sp)
 4f8:	01010113          	addi	sp,sp,16
 4fc:	00008067          	ret
 500:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffed32>
 504:	0fd6f693          	andi	a3,a3,253
 508:	00069a63          	bnez	a3,51c <neorv32_uart0_setup+0xa4>
 50c:	00355513          	srli	a0,a0,0x3
 510:	00170713          	addi	a4,a4,1
 514:	0ff77713          	andi	a4,a4,255
 518:	fa1ff06f          	j	4b8 <neorv32_uart0_setup+0x40>
 51c:	00155513          	srli	a0,a0,0x1
 520:	ff1ff06f          	j	510 <neorv32_uart0_setup+0x98>

00000524 <neorv32_uart0_putc>:
 524:	00040737          	lui	a4,0x40
 528:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 52c:	00e7f7b3          	and	a5,a5,a4
 530:	fe079ce3          	bnez	a5,528 <neorv32_uart0_putc+0x4>
 534:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 538:	00008067          	ret

0000053c <neorv32_uart0_print>:
 53c:	ff010113          	addi	sp,sp,-16
 540:	00812423          	sw	s0,8(sp)
 544:	01212023          	sw	s2,0(sp)
 548:	00112623          	sw	ra,12(sp)
 54c:	00912223          	sw	s1,4(sp)
 550:	00050413          	mv	s0,a0
 554:	00a00913          	li	s2,10
 558:	00044483          	lbu	s1,0(s0)
 55c:	00140413          	addi	s0,s0,1
 560:	00049e63          	bnez	s1,57c <neorv32_uart0_print+0x40>
 564:	00c12083          	lw	ra,12(sp)
 568:	00812403          	lw	s0,8(sp)
 56c:	00412483          	lw	s1,4(sp)
 570:	00012903          	lw	s2,0(sp)
 574:	01010113          	addi	sp,sp,16
 578:	00008067          	ret
 57c:	01249663          	bne	s1,s2,588 <neorv32_uart0_print+0x4c>
 580:	00d00513          	li	a0,13
 584:	fa1ff0ef          	jal	ra,524 <neorv32_uart0_putc>
 588:	00048513          	mv	a0,s1
 58c:	f99ff0ef          	jal	ra,524 <neorv32_uart0_putc>
 590:	fc9ff06f          	j	558 <neorv32_uart0_print+0x1c>

00000594 <neorv32_uart0_printf>:
 594:	fa010113          	addi	sp,sp,-96
 598:	04f12a23          	sw	a5,84(sp)
 59c:	04410793          	addi	a5,sp,68
 5a0:	02812c23          	sw	s0,56(sp)
 5a4:	03212823          	sw	s2,48(sp)
 5a8:	03412423          	sw	s4,40(sp)
 5ac:	03512223          	sw	s5,36(sp)
 5b0:	03612023          	sw	s6,32(sp)
 5b4:	01712e23          	sw	s7,28(sp)
 5b8:	01812c23          	sw	s8,24(sp)
 5bc:	01912a23          	sw	s9,20(sp)
 5c0:	02112e23          	sw	ra,60(sp)
 5c4:	02912a23          	sw	s1,52(sp)
 5c8:	03312623          	sw	s3,44(sp)
 5cc:	00050413          	mv	s0,a0
 5d0:	04b12223          	sw	a1,68(sp)
 5d4:	04c12423          	sw	a2,72(sp)
 5d8:	04d12623          	sw	a3,76(sp)
 5dc:	04e12823          	sw	a4,80(sp)
 5e0:	05012c23          	sw	a6,88(sp)
 5e4:	05112e23          	sw	a7,92(sp)
 5e8:	00f12023          	sw	a5,0(sp)
 5ec:	02500a13          	li	s4,37
 5f0:	00a00a93          	li	s5,10
 5f4:	07300913          	li	s2,115
 5f8:	07500b13          	li	s6,117
 5fc:	07800b93          	li	s7,120
 600:	06300c13          	li	s8,99
 604:	06900c93          	li	s9,105
 608:	00044483          	lbu	s1,0(s0)
 60c:	02049c63          	bnez	s1,644 <neorv32_uart0_printf+0xb0>
 610:	03c12083          	lw	ra,60(sp)
 614:	03812403          	lw	s0,56(sp)
 618:	03412483          	lw	s1,52(sp)
 61c:	03012903          	lw	s2,48(sp)
 620:	02c12983          	lw	s3,44(sp)
 624:	02812a03          	lw	s4,40(sp)
 628:	02412a83          	lw	s5,36(sp)
 62c:	02012b03          	lw	s6,32(sp)
 630:	01c12b83          	lw	s7,28(sp)
 634:	01812c03          	lw	s8,24(sp)
 638:	01412c83          	lw	s9,20(sp)
 63c:	06010113          	addi	sp,sp,96
 640:	00008067          	ret
 644:	0d449863          	bne	s1,s4,714 <neorv32_uart0_printf+0x180>
 648:	00240993          	addi	s3,s0,2
 64c:	00144403          	lbu	s0,1(s0)
 650:	05240263          	beq	s0,s2,694 <neorv32_uart0_printf+0x100>
 654:	00896e63          	bltu	s2,s0,670 <neorv32_uart0_printf+0xdc>
 658:	05840c63          	beq	s0,s8,6b0 <neorv32_uart0_printf+0x11c>
 65c:	07940663          	beq	s0,s9,6c8 <neorv32_uart0_printf+0x134>
 660:	02500513          	li	a0,37
 664:	ec1ff0ef          	jal	ra,524 <neorv32_uart0_putc>
 668:	00040513          	mv	a0,s0
 66c:	0540006f          	j	6c0 <neorv32_uart0_printf+0x12c>
 670:	09640663          	beq	s0,s6,6fc <neorv32_uart0_printf+0x168>
 674:	ff7416e3          	bne	s0,s7,660 <neorv32_uart0_printf+0xcc>
 678:	00012783          	lw	a5,0(sp)
 67c:	00410593          	addi	a1,sp,4
 680:	0007a503          	lw	a0,0(a5)
 684:	00478713          	addi	a4,a5,4
 688:	00e12023          	sw	a4,0(sp)
 68c:	da1ff0ef          	jal	ra,42c <__neorv32_uart_tohex>
 690:	0640006f          	j	6f4 <neorv32_uart0_printf+0x160>
 694:	00012783          	lw	a5,0(sp)
 698:	0007a503          	lw	a0,0(a5)
 69c:	00478713          	addi	a4,a5,4
 6a0:	00e12023          	sw	a4,0(sp)
 6a4:	e99ff0ef          	jal	ra,53c <neorv32_uart0_print>
 6a8:	00098413          	mv	s0,s3
 6ac:	f5dff06f          	j	608 <neorv32_uart0_printf+0x74>
 6b0:	00012783          	lw	a5,0(sp)
 6b4:	0007c503          	lbu	a0,0(a5)
 6b8:	00478713          	addi	a4,a5,4
 6bc:	00e12023          	sw	a4,0(sp)
 6c0:	e65ff0ef          	jal	ra,524 <neorv32_uart0_putc>
 6c4:	fe5ff06f          	j	6a8 <neorv32_uart0_printf+0x114>
 6c8:	00012783          	lw	a5,0(sp)
 6cc:	0007a403          	lw	s0,0(a5)
 6d0:	00478713          	addi	a4,a5,4
 6d4:	00e12023          	sw	a4,0(sp)
 6d8:	00045863          	bgez	s0,6e8 <neorv32_uart0_printf+0x154>
 6dc:	02d00513          	li	a0,45
 6e0:	40800433          	neg	s0,s0
 6e4:	e41ff0ef          	jal	ra,524 <neorv32_uart0_putc>
 6e8:	00410593          	addi	a1,sp,4
 6ec:	00040513          	mv	a0,s0
 6f0:	c35ff0ef          	jal	ra,324 <__neorv32_uart_itoa>
 6f4:	00410513          	addi	a0,sp,4
 6f8:	fadff06f          	j	6a4 <neorv32_uart0_printf+0x110>
 6fc:	00012783          	lw	a5,0(sp)
 700:	00410593          	addi	a1,sp,4
 704:	00478713          	addi	a4,a5,4
 708:	0007a503          	lw	a0,0(a5)
 70c:	00e12023          	sw	a4,0(sp)
 710:	fe1ff06f          	j	6f0 <neorv32_uart0_printf+0x15c>
 714:	01549663          	bne	s1,s5,720 <neorv32_uart0_printf+0x18c>
 718:	00d00513          	li	a0,13
 71c:	e09ff0ef          	jal	ra,524 <neorv32_uart0_putc>
 720:	00140993          	addi	s3,s0,1
 724:	00048513          	mv	a0,s1
 728:	f99ff06f          	j	6c0 <neorv32_uart0_printf+0x12c>

0000072c <neorv32_cpu_get_systime>:
 72c:	ff010113          	addi	sp,sp,-16
 730:	c81026f3          	rdtimeh	a3
 734:	c0102773          	rdtime	a4
 738:	c81027f3          	rdtimeh	a5
 73c:	fed79ae3          	bne	a5,a3,730 <neorv32_cpu_get_systime+0x4>
 740:	00e12023          	sw	a4,0(sp)
 744:	00f12223          	sw	a5,4(sp)
 748:	00012503          	lw	a0,0(sp)
 74c:	00412583          	lw	a1,4(sp)
 750:	01010113          	addi	sp,sp,16
 754:	00008067          	ret

00000758 <neorv32_cpu_delay_ms>:
 758:	fd010113          	addi	sp,sp,-48
 75c:	00a12623          	sw	a0,12(sp)
 760:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 764:	3e800593          	li	a1,1000
 768:	02112623          	sw	ra,44(sp)
 76c:	02812423          	sw	s0,40(sp)
 770:	02912223          	sw	s1,36(sp)
 774:	03212023          	sw	s2,32(sp)
 778:	01312e23          	sw	s3,28(sp)
 77c:	690000ef          	jal	ra,e0c <__udivsi3>
 780:	00c12603          	lw	a2,12(sp)
 784:	00000693          	li	a3,0
 788:	00000593          	li	a1,0
 78c:	5e8000ef          	jal	ra,d74 <__muldi3>
 790:	00050413          	mv	s0,a0
 794:	00058993          	mv	s3,a1
 798:	f95ff0ef          	jal	ra,72c <neorv32_cpu_get_systime>
 79c:	00058913          	mv	s2,a1
 7a0:	00050493          	mv	s1,a0
 7a4:	f89ff0ef          	jal	ra,72c <neorv32_cpu_get_systime>
 7a8:	00b96663          	bltu	s2,a1,7b4 <neorv32_cpu_delay_ms+0x5c>
 7ac:	05259263          	bne	a1,s2,7f0 <neorv32_cpu_delay_ms+0x98>
 7b0:	04a4f063          	bgeu	s1,a0,7f0 <neorv32_cpu_delay_ms+0x98>
 7b4:	008484b3          	add	s1,s1,s0
 7b8:	0084b433          	sltu	s0,s1,s0
 7bc:	01390933          	add	s2,s2,s3
 7c0:	01240433          	add	s0,s0,s2
 7c4:	f69ff0ef          	jal	ra,72c <neorv32_cpu_get_systime>
 7c8:	fe85eee3          	bltu	a1,s0,7c4 <neorv32_cpu_delay_ms+0x6c>
 7cc:	00b41463          	bne	s0,a1,7d4 <neorv32_cpu_delay_ms+0x7c>
 7d0:	fe956ae3          	bltu	a0,s1,7c4 <neorv32_cpu_delay_ms+0x6c>
 7d4:	02c12083          	lw	ra,44(sp)
 7d8:	02812403          	lw	s0,40(sp)
 7dc:	02412483          	lw	s1,36(sp)
 7e0:	02012903          	lw	s2,32(sp)
 7e4:	01c12983          	lw	s3,28(sp)
 7e8:	03010113          	addi	sp,sp,48
 7ec:	00008067          	ret
 7f0:	01c99913          	slli	s2,s3,0x1c
 7f4:	00445413          	srli	s0,s0,0x4
 7f8:	00896433          	or	s0,s2,s0

000007fc <__neorv32_cpu_delay_ms_start>:
 7fc:	00040a63          	beqz	s0,810 <__neorv32_cpu_delay_ms_end>
 800:	00040863          	beqz	s0,810 <__neorv32_cpu_delay_ms_end>
 804:	fff40413          	addi	s0,s0,-1
 808:	00000013          	nop
 80c:	ff1ff06f          	j	7fc <__neorv32_cpu_delay_ms_start>

00000810 <__neorv32_cpu_delay_ms_end>:
 810:	fc5ff06f          	j	7d4 <neorv32_cpu_delay_ms+0x7c>
 814:	0000                	unimp
 816:	0000                	unimp
 818:	0000                	unimp
 81a:	0000                	unimp
 81c:	0000                	unimp
 81e:	0000                	unimp

00000820 <__neorv32_rte_core>:
 820:	fc010113          	addi	sp,sp,-64
 824:	02112e23          	sw	ra,60(sp)
 828:	02512c23          	sw	t0,56(sp)
 82c:	02612a23          	sw	t1,52(sp)
 830:	02712823          	sw	t2,48(sp)
 834:	02a12623          	sw	a0,44(sp)
 838:	02b12423          	sw	a1,40(sp)
 83c:	02c12223          	sw	a2,36(sp)
 840:	02d12023          	sw	a3,32(sp)
 844:	00e12e23          	sw	a4,28(sp)
 848:	00f12c23          	sw	a5,24(sp)
 84c:	01012a23          	sw	a6,20(sp)
 850:	01112823          	sw	a7,16(sp)
 854:	01c12623          	sw	t3,12(sp)
 858:	01d12423          	sw	t4,8(sp)
 85c:	01e12223          	sw	t5,4(sp)
 860:	01f12023          	sw	t6,0(sp)
 864:	34102773          	csrr	a4,mepc
 868:	34071073          	csrw	mscratch,a4
 86c:	342027f3          	csrr	a5,mcause
 870:	0807ca63          	bltz	a5,904 <__neorv32_rte_core+0xe4>
 874:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3ed34>
 878:	00300593          	li	a1,3
 87c:	0036f693          	andi	a3,a3,3
 880:	00270613          	addi	a2,a4,2
 884:	00b69463          	bne	a3,a1,88c <__neorv32_rte_core+0x6c>
 888:	00470613          	addi	a2,a4,4
 88c:	34161073          	csrw	mepc,a2
 890:	00b00713          	li	a4,11
 894:	04f77c63          	bgeu	a4,a5,8ec <__neorv32_rte_core+0xcc>
 898:	000017b7          	lui	a5,0x1
 89c:	aa078793          	addi	a5,a5,-1376 # aa0 <__neorv32_rte_debug_exc_handler>
 8a0:	000780e7          	jalr	a5
 8a4:	03c12083          	lw	ra,60(sp)
 8a8:	03812283          	lw	t0,56(sp)
 8ac:	03412303          	lw	t1,52(sp)
 8b0:	03012383          	lw	t2,48(sp)
 8b4:	02c12503          	lw	a0,44(sp)
 8b8:	02812583          	lw	a1,40(sp)
 8bc:	02412603          	lw	a2,36(sp)
 8c0:	02012683          	lw	a3,32(sp)
 8c4:	01c12703          	lw	a4,28(sp)
 8c8:	01812783          	lw	a5,24(sp)
 8cc:	01412803          	lw	a6,20(sp)
 8d0:	01012883          	lw	a7,16(sp)
 8d4:	00c12e03          	lw	t3,12(sp)
 8d8:	00812e83          	lw	t4,8(sp)
 8dc:	00412f03          	lw	t5,4(sp)
 8e0:	00012f83          	lw	t6,0(sp)
 8e4:	04010113          	addi	sp,sp,64
 8e8:	30200073          	mret
 8ec:	00001737          	lui	a4,0x1
 8f0:	00279793          	slli	a5,a5,0x2
 8f4:	02470713          	addi	a4,a4,36 # 1024 <symbols.0+0x14>
 8f8:	00e787b3          	add	a5,a5,a4
 8fc:	0007a783          	lw	a5,0(a5)
 900:	00078067          	jr	a5
 904:	80000737          	lui	a4,0x80000
 908:	ffd74713          	xori	a4,a4,-3
 90c:	00e787b3          	add	a5,a5,a4
 910:	01c00713          	li	a4,28
 914:	f8f762e3          	bltu	a4,a5,898 <__neorv32_rte_core+0x78>
 918:	00001737          	lui	a4,0x1
 91c:	00279793          	slli	a5,a5,0x2
 920:	05470713          	addi	a4,a4,84 # 1054 <symbols.0+0x44>
 924:	00e787b3          	add	a5,a5,a4
 928:	0007a783          	lw	a5,0(a5)
 92c:	00078067          	jr	a5
 930:	800007b7          	lui	a5,0x80000
 934:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 938:	f69ff06f          	j	8a0 <__neorv32_rte_core+0x80>
 93c:	800007b7          	lui	a5,0x80000
 940:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 944:	f5dff06f          	j	8a0 <__neorv32_rte_core+0x80>
 948:	800007b7          	lui	a5,0x80000
 94c:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 950:	f51ff06f          	j	8a0 <__neorv32_rte_core+0x80>
 954:	800007b7          	lui	a5,0x80000
 958:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
 95c:	f45ff06f          	j	8a0 <__neorv32_rte_core+0x80>
 960:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
 964:	f3dff06f          	j	8a0 <__neorv32_rte_core+0x80>
 968:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
 96c:	f35ff06f          	j	8a0 <__neorv32_rte_core+0x80>
 970:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
 974:	f2dff06f          	j	8a0 <__neorv32_rte_core+0x80>
 978:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
 97c:	f25ff06f          	j	8a0 <__neorv32_rte_core+0x80>
 980:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
 984:	f1dff06f          	j	8a0 <__neorv32_rte_core+0x80>
 988:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
 98c:	f15ff06f          	j	8a0 <__neorv32_rte_core+0x80>
 990:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
 994:	f0dff06f          	j	8a0 <__neorv32_rte_core+0x80>
 998:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
 99c:	f05ff06f          	j	8a0 <__neorv32_rte_core+0x80>
 9a0:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
 9a4:	efdff06f          	j	8a0 <__neorv32_rte_core+0x80>
 9a8:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
 9ac:	ef5ff06f          	j	8a0 <__neorv32_rte_core+0x80>
 9b0:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
 9b4:	eedff06f          	j	8a0 <__neorv32_rte_core+0x80>
 9b8:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
 9bc:	ee5ff06f          	j	8a0 <__neorv32_rte_core+0x80>
 9c0:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 9c4:	eddff06f          	j	8a0 <__neorv32_rte_core+0x80>
 9c8:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 9cc:	ed5ff06f          	j	8a0 <__neorv32_rte_core+0x80>
 9d0:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 9d4:	ecdff06f          	j	8a0 <__neorv32_rte_core+0x80>
 9d8:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 9dc:	ec5ff06f          	j	8a0 <__neorv32_rte_core+0x80>
 9e0:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 9e4:	ebdff06f          	j	8a0 <__neorv32_rte_core+0x80>
 9e8:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 9ec:	eb5ff06f          	j	8a0 <__neorv32_rte_core+0x80>
 9f0:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 9f4:	eadff06f          	j	8a0 <__neorv32_rte_core+0x80>
 9f8:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 9fc:	ea5ff06f          	j	8a0 <__neorv32_rte_core+0x80>
 a00:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 a04:	e9dff06f          	j	8a0 <__neorv32_rte_core+0x80>
 a08:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 a0c:	e95ff06f          	j	8a0 <__neorv32_rte_core+0x80>
 a10:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 a14:	e8dff06f          	j	8a0 <__neorv32_rte_core+0x80>
 a18:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 a1c:	e85ff06f          	j	8a0 <__neorv32_rte_core+0x80>
 a20:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 a24:	e7dff06f          	j	8a0 <__neorv32_rte_core+0x80>
 a28:	0000                	unimp
 a2a:	0000                	unimp
 a2c:	0000                	unimp
 a2e:	0000                	unimp

00000a30 <__neorv32_rte_print_hex_word>:
 a30:	fe010113          	addi	sp,sp,-32
 a34:	01212823          	sw	s2,16(sp)
 a38:	00050913          	mv	s2,a0
 a3c:	00001537          	lui	a0,0x1
 a40:	00912a23          	sw	s1,20(sp)
 a44:	0c850513          	addi	a0,a0,200 # 10c8 <symbols.0+0xb8>
 a48:	000014b7          	lui	s1,0x1
 a4c:	00812c23          	sw	s0,24(sp)
 a50:	01312623          	sw	s3,12(sp)
 a54:	00112e23          	sw	ra,28(sp)
 a58:	01c00413          	li	s0,28
 a5c:	ae1ff0ef          	jal	ra,53c <neorv32_uart0_print>
 a60:	2bc48493          	addi	s1,s1,700 # 12bc <hex_symbols.0>
 a64:	ffc00993          	li	s3,-4
 a68:	008957b3          	srl	a5,s2,s0
 a6c:	00f7f793          	andi	a5,a5,15
 a70:	00f487b3          	add	a5,s1,a5
 a74:	0007c503          	lbu	a0,0(a5)
 a78:	ffc40413          	addi	s0,s0,-4
 a7c:	aa9ff0ef          	jal	ra,524 <neorv32_uart0_putc>
 a80:	ff3414e3          	bne	s0,s3,a68 <__neorv32_rte_print_hex_word+0x38>
 a84:	01c12083          	lw	ra,28(sp)
 a88:	01812403          	lw	s0,24(sp)
 a8c:	01412483          	lw	s1,20(sp)
 a90:	01012903          	lw	s2,16(sp)
 a94:	00c12983          	lw	s3,12(sp)
 a98:	02010113          	addi	sp,sp,32
 a9c:	00008067          	ret

00000aa0 <__neorv32_rte_debug_exc_handler>:
 aa0:	ff010113          	addi	sp,sp,-16
 aa4:	00112623          	sw	ra,12(sp)
 aa8:	00812423          	sw	s0,8(sp)
 aac:	00912223          	sw	s1,4(sp)
 ab0:	9b9ff0ef          	jal	ra,468 <neorv32_uart0_available>
 ab4:	1c050863          	beqz	a0,c84 <__neorv32_rte_debug_exc_handler+0x1e4>
 ab8:	00001537          	lui	a0,0x1
 abc:	0cc50513          	addi	a0,a0,204 # 10cc <symbols.0+0xbc>
 ac0:	a7dff0ef          	jal	ra,53c <neorv32_uart0_print>
 ac4:	34202473          	csrr	s0,mcause
 ac8:	00900713          	li	a4,9
 acc:	00f47793          	andi	a5,s0,15
 ad0:	03078493          	addi	s1,a5,48
 ad4:	00f77463          	bgeu	a4,a5,adc <__neorv32_rte_debug_exc_handler+0x3c>
 ad8:	05778493          	addi	s1,a5,87
 adc:	00b00793          	li	a5,11
 ae0:	0087ee63          	bltu	a5,s0,afc <__neorv32_rte_debug_exc_handler+0x5c>
 ae4:	00001737          	lui	a4,0x1
 ae8:	00241793          	slli	a5,s0,0x2
 aec:	28c70713          	addi	a4,a4,652 # 128c <symbols.0+0x27c>
 af0:	00e787b3          	add	a5,a5,a4
 af4:	0007a783          	lw	a5,0(a5)
 af8:	00078067          	jr	a5
 afc:	800007b7          	lui	a5,0x80000
 b00:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 b04:	14e40e63          	beq	s0,a4,c60 <__neorv32_rte_debug_exc_handler+0x1c0>
 b08:	02876a63          	bltu	a4,s0,b3c <__neorv32_rte_debug_exc_handler+0x9c>
 b0c:	00378713          	addi	a4,a5,3
 b10:	12e40c63          	beq	s0,a4,c48 <__neorv32_rte_debug_exc_handler+0x1a8>
 b14:	00778793          	addi	a5,a5,7
 b18:	12f40e63          	beq	s0,a5,c54 <__neorv32_rte_debug_exc_handler+0x1b4>
 b1c:	00001537          	lui	a0,0x1
 b20:	22c50513          	addi	a0,a0,556 # 122c <symbols.0+0x21c>
 b24:	a19ff0ef          	jal	ra,53c <neorv32_uart0_print>
 b28:	00040513          	mv	a0,s0
 b2c:	f05ff0ef          	jal	ra,a30 <__neorv32_rte_print_hex_word>
 b30:	00100793          	li	a5,1
 b34:	08f40c63          	beq	s0,a5,bcc <__neorv32_rte_debug_exc_handler+0x12c>
 b38:	0280006f          	j	b60 <__neorv32_rte_debug_exc_handler+0xc0>
 b3c:	ff07c793          	xori	a5,a5,-16
 b40:	00f407b3          	add	a5,s0,a5
 b44:	00f00713          	li	a4,15
 b48:	fcf76ae3          	bltu	a4,a5,b1c <__neorv32_rte_debug_exc_handler+0x7c>
 b4c:	00001537          	lui	a0,0x1
 b50:	21c50513          	addi	a0,a0,540 # 121c <symbols.0+0x20c>
 b54:	9e9ff0ef          	jal	ra,53c <neorv32_uart0_print>
 b58:	00048513          	mv	a0,s1
 b5c:	9c9ff0ef          	jal	ra,524 <neorv32_uart0_putc>
 b60:	ffd47413          	andi	s0,s0,-3
 b64:	00500793          	li	a5,5
 b68:	06f40263          	beq	s0,a5,bcc <__neorv32_rte_debug_exc_handler+0x12c>
 b6c:	00001537          	lui	a0,0x1
 b70:	27050513          	addi	a0,a0,624 # 1270 <symbols.0+0x260>
 b74:	9c9ff0ef          	jal	ra,53c <neorv32_uart0_print>
 b78:	34002573          	csrr	a0,mscratch
 b7c:	eb5ff0ef          	jal	ra,a30 <__neorv32_rte_print_hex_word>
 b80:	00001537          	lui	a0,0x1
 b84:	27850513          	addi	a0,a0,632 # 1278 <symbols.0+0x268>
 b88:	9b5ff0ef          	jal	ra,53c <neorv32_uart0_print>
 b8c:	34302573          	csrr	a0,mtval
 b90:	ea1ff0ef          	jal	ra,a30 <__neorv32_rte_print_hex_word>
 b94:	00812403          	lw	s0,8(sp)
 b98:	00c12083          	lw	ra,12(sp)
 b9c:	00412483          	lw	s1,4(sp)
 ba0:	00001537          	lui	a0,0x1
 ba4:	28450513          	addi	a0,a0,644 # 1284 <symbols.0+0x274>
 ba8:	01010113          	addi	sp,sp,16
 bac:	991ff06f          	j	53c <neorv32_uart0_print>
 bb0:	00001537          	lui	a0,0x1
 bb4:	0d450513          	addi	a0,a0,212 # 10d4 <symbols.0+0xc4>
 bb8:	985ff0ef          	jal	ra,53c <neorv32_uart0_print>
 bbc:	fb1ff06f          	j	b6c <__neorv32_rte_debug_exc_handler+0xcc>
 bc0:	00001537          	lui	a0,0x1
 bc4:	0f450513          	addi	a0,a0,244 # 10f4 <symbols.0+0xe4>
 bc8:	975ff0ef          	jal	ra,53c <neorv32_uart0_print>
 bcc:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 bd0:	0a07d463          	bgez	a5,c78 <__neorv32_rte_debug_exc_handler+0x1d8>
 bd4:	0017f793          	andi	a5,a5,1
 bd8:	08078a63          	beqz	a5,c6c <__neorv32_rte_debug_exc_handler+0x1cc>
 bdc:	00001537          	lui	a0,0x1
 be0:	24450513          	addi	a0,a0,580 # 1244 <symbols.0+0x234>
 be4:	fd5ff06f          	j	bb8 <__neorv32_rte_debug_exc_handler+0x118>
 be8:	00001537          	lui	a0,0x1
 bec:	11050513          	addi	a0,a0,272 # 1110 <symbols.0+0x100>
 bf0:	fc9ff06f          	j	bb8 <__neorv32_rte_debug_exc_handler+0x118>
 bf4:	00001537          	lui	a0,0x1
 bf8:	12450513          	addi	a0,a0,292 # 1124 <symbols.0+0x114>
 bfc:	fbdff06f          	j	bb8 <__neorv32_rte_debug_exc_handler+0x118>
 c00:	00001537          	lui	a0,0x1
 c04:	13050513          	addi	a0,a0,304 # 1130 <symbols.0+0x120>
 c08:	fb1ff06f          	j	bb8 <__neorv32_rte_debug_exc_handler+0x118>
 c0c:	00001537          	lui	a0,0x1
 c10:	14850513          	addi	a0,a0,328 # 1148 <symbols.0+0x138>
 c14:	fb5ff06f          	j	bc8 <__neorv32_rte_debug_exc_handler+0x128>
 c18:	00001537          	lui	a0,0x1
 c1c:	15c50513          	addi	a0,a0,348 # 115c <symbols.0+0x14c>
 c20:	f99ff06f          	j	bb8 <__neorv32_rte_debug_exc_handler+0x118>
 c24:	00001537          	lui	a0,0x1
 c28:	17850513          	addi	a0,a0,376 # 1178 <symbols.0+0x168>
 c2c:	f9dff06f          	j	bc8 <__neorv32_rte_debug_exc_handler+0x128>
 c30:	00001537          	lui	a0,0x1
 c34:	18c50513          	addi	a0,a0,396 # 118c <symbols.0+0x17c>
 c38:	f81ff06f          	j	bb8 <__neorv32_rte_debug_exc_handler+0x118>
 c3c:	00001537          	lui	a0,0x1
 c40:	1ac50513          	addi	a0,a0,428 # 11ac <symbols.0+0x19c>
 c44:	f75ff06f          	j	bb8 <__neorv32_rte_debug_exc_handler+0x118>
 c48:	00001537          	lui	a0,0x1
 c4c:	1cc50513          	addi	a0,a0,460 # 11cc <symbols.0+0x1bc>
 c50:	f69ff06f          	j	bb8 <__neorv32_rte_debug_exc_handler+0x118>
 c54:	00001537          	lui	a0,0x1
 c58:	1e850513          	addi	a0,a0,488 # 11e8 <symbols.0+0x1d8>
 c5c:	f5dff06f          	j	bb8 <__neorv32_rte_debug_exc_handler+0x118>
 c60:	00001537          	lui	a0,0x1
 c64:	20050513          	addi	a0,a0,512 # 1200 <symbols.0+0x1f0>
 c68:	f51ff06f          	j	bb8 <__neorv32_rte_debug_exc_handler+0x118>
 c6c:	00001537          	lui	a0,0x1
 c70:	25450513          	addi	a0,a0,596 # 1254 <symbols.0+0x244>
 c74:	f45ff06f          	j	bb8 <__neorv32_rte_debug_exc_handler+0x118>
 c78:	00001537          	lui	a0,0x1
 c7c:	26450513          	addi	a0,a0,612 # 1264 <symbols.0+0x254>
 c80:	f39ff06f          	j	bb8 <__neorv32_rte_debug_exc_handler+0x118>
 c84:	00c12083          	lw	ra,12(sp)
 c88:	00812403          	lw	s0,8(sp)
 c8c:	00412483          	lw	s1,4(sp)
 c90:	01010113          	addi	sp,sp,16
 c94:	00008067          	ret

00000c98 <neorv32_rte_exception_uninstall>:
 c98:	01f00793          	li	a5,31
 c9c:	02a7e463          	bltu	a5,a0,cc4 <neorv32_rte_exception_uninstall+0x2c>
 ca0:	800007b7          	lui	a5,0x80000
 ca4:	00078793          	mv	a5,a5
 ca8:	00251513          	slli	a0,a0,0x2
 cac:	00a78533          	add	a0,a5,a0
 cb0:	000017b7          	lui	a5,0x1
 cb4:	aa078793          	addi	a5,a5,-1376 # aa0 <__neorv32_rte_debug_exc_handler>
 cb8:	00f52023          	sw	a5,0(a0)
 cbc:	00000513          	li	a0,0
 cc0:	00008067          	ret
 cc4:	00100513          	li	a0,1
 cc8:	00008067          	ret

00000ccc <neorv32_rte_setup>:
 ccc:	ff010113          	addi	sp,sp,-16
 cd0:	000017b7          	lui	a5,0x1
 cd4:	00112623          	sw	ra,12(sp)
 cd8:	00812423          	sw	s0,8(sp)
 cdc:	00912223          	sw	s1,4(sp)
 ce0:	82078793          	addi	a5,a5,-2016 # 820 <__neorv32_rte_core>
 ce4:	30579073          	csrw	mtvec,a5
 ce8:	00000413          	li	s0,0
 cec:	01d00493          	li	s1,29
 cf0:	00040513          	mv	a0,s0
 cf4:	00140413          	addi	s0,s0,1
 cf8:	0ff47413          	andi	s0,s0,255
 cfc:	f9dff0ef          	jal	ra,c98 <neorv32_rte_exception_uninstall>
 d00:	fe9418e3          	bne	s0,s1,cf0 <neorv32_rte_setup+0x24>
 d04:	00c12083          	lw	ra,12(sp)
 d08:	00812403          	lw	s0,8(sp)
 d0c:	00412483          	lw	s1,4(sp)
 d10:	01010113          	addi	sp,sp,16
 d14:	00008067          	ret

00000d18 <neorv32_gpio_available>:
 d18:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 d1c:	01055513          	srli	a0,a0,0x10
 d20:	00157513          	andi	a0,a0,1
 d24:	00008067          	ret

00000d28 <neorv32_gpio_pin_get>:
 d28:	00050793          	mv	a5,a0
 d2c:	01f00713          	li	a4,31
 d30:	00100513          	li	a0,1
 d34:	00f51533          	sll	a0,a0,a5
 d38:	00f74863          	blt	a4,a5,d48 <neorv32_gpio_pin_get+0x20>
 d3c:	fc002783          	lw	a5,-64(zero) # ffffffc0 <__ctr0_io_space_begin+0x1c0>
 d40:	00a7f533          	and	a0,a5,a0
 d44:	00008067          	ret
 d48:	fc402783          	lw	a5,-60(zero) # ffffffc4 <__ctr0_io_space_begin+0x1c4>
 d4c:	ff5ff06f          	j	d40 <neorv32_gpio_pin_get+0x18>

00000d50 <__mulsi3>:
 d50:	00050613          	mv	a2,a0
 d54:	00000513          	li	a0,0
 d58:	0015f693          	andi	a3,a1,1
 d5c:	00068463          	beqz	a3,d64 <__mulsi3+0x14>
 d60:	00c50533          	add	a0,a0,a2
 d64:	0015d593          	srli	a1,a1,0x1
 d68:	00161613          	slli	a2,a2,0x1
 d6c:	fe0596e3          	bnez	a1,d58 <__mulsi3+0x8>
 d70:	00008067          	ret

00000d74 <__muldi3>:
 d74:	00050313          	mv	t1,a0
 d78:	ff010113          	addi	sp,sp,-16
 d7c:	00060513          	mv	a0,a2
 d80:	00068893          	mv	a7,a3
 d84:	00112623          	sw	ra,12(sp)
 d88:	00030613          	mv	a2,t1
 d8c:	00050693          	mv	a3,a0
 d90:	00000713          	li	a4,0
 d94:	00000793          	li	a5,0
 d98:	00000813          	li	a6,0
 d9c:	0016fe13          	andi	t3,a3,1
 da0:	00171e93          	slli	t4,a4,0x1
 da4:	000e0c63          	beqz	t3,dbc <__muldi3+0x48>
 da8:	01060e33          	add	t3,a2,a6
 dac:	010e3833          	sltu	a6,t3,a6
 db0:	00e787b3          	add	a5,a5,a4
 db4:	00f807b3          	add	a5,a6,a5
 db8:	000e0813          	mv	a6,t3
 dbc:	01f65713          	srli	a4,a2,0x1f
 dc0:	0016d693          	srli	a3,a3,0x1
 dc4:	00eee733          	or	a4,t4,a4
 dc8:	00161613          	slli	a2,a2,0x1
 dcc:	fc0698e3          	bnez	a3,d9c <__muldi3+0x28>
 dd0:	00058663          	beqz	a1,ddc <__muldi3+0x68>
 dd4:	f7dff0ef          	jal	ra,d50 <__mulsi3>
 dd8:	00a787b3          	add	a5,a5,a0
 ddc:	00088a63          	beqz	a7,df0 <__muldi3+0x7c>
 de0:	00030513          	mv	a0,t1
 de4:	00088593          	mv	a1,a7
 de8:	f69ff0ef          	jal	ra,d50 <__mulsi3>
 dec:	00f507b3          	add	a5,a0,a5
 df0:	00c12083          	lw	ra,12(sp)
 df4:	00080513          	mv	a0,a6
 df8:	00078593          	mv	a1,a5
 dfc:	01010113          	addi	sp,sp,16
 e00:	00008067          	ret

00000e04 <__divsi3>:
 e04:	06054063          	bltz	a0,e64 <__umodsi3+0x10>
 e08:	0605c663          	bltz	a1,e74 <__umodsi3+0x20>

00000e0c <__udivsi3>:
 e0c:	00058613          	mv	a2,a1
 e10:	00050593          	mv	a1,a0
 e14:	fff00513          	li	a0,-1
 e18:	02060c63          	beqz	a2,e50 <__udivsi3+0x44>
 e1c:	00100693          	li	a3,1
 e20:	00b67a63          	bgeu	a2,a1,e34 <__udivsi3+0x28>
 e24:	00c05863          	blez	a2,e34 <__udivsi3+0x28>
 e28:	00161613          	slli	a2,a2,0x1
 e2c:	00169693          	slli	a3,a3,0x1
 e30:	feb66ae3          	bltu	a2,a1,e24 <__udivsi3+0x18>
 e34:	00000513          	li	a0,0
 e38:	00c5e663          	bltu	a1,a2,e44 <__udivsi3+0x38>
 e3c:	40c585b3          	sub	a1,a1,a2
 e40:	00d56533          	or	a0,a0,a3
 e44:	0016d693          	srli	a3,a3,0x1
 e48:	00165613          	srli	a2,a2,0x1
 e4c:	fe0696e3          	bnez	a3,e38 <__udivsi3+0x2c>
 e50:	00008067          	ret

00000e54 <__umodsi3>:
 e54:	00008293          	mv	t0,ra
 e58:	fb5ff0ef          	jal	ra,e0c <__udivsi3>
 e5c:	00058513          	mv	a0,a1
 e60:	00028067          	jr	t0
 e64:	40a00533          	neg	a0,a0
 e68:	00b04863          	bgtz	a1,e78 <__umodsi3+0x24>
 e6c:	40b005b3          	neg	a1,a1
 e70:	f9dff06f          	j	e0c <__udivsi3>
 e74:	40b005b3          	neg	a1,a1
 e78:	00008293          	mv	t0,ra
 e7c:	f91ff0ef          	jal	ra,e0c <__udivsi3>
 e80:	40a00533          	neg	a0,a0
 e84:	00028067          	jr	t0

00000e88 <__modsi3>:
 e88:	00008293          	mv	t0,ra
 e8c:	0005ca63          	bltz	a1,ea0 <__modsi3+0x18>
 e90:	00054c63          	bltz	a0,ea8 <__modsi3+0x20>
 e94:	f79ff0ef          	jal	ra,e0c <__udivsi3>
 e98:	00058513          	mv	a0,a1
 e9c:	00028067          	jr	t0
 ea0:	40b005b3          	neg	a1,a1
 ea4:	fe0558e3          	bgez	a0,e94 <__modsi3+0xc>
 ea8:	40a00533          	neg	a0,a0
 eac:	f61ff0ef          	jal	ra,e0c <__udivsi3>
 eb0:	40b00533          	neg	a0,a1
 eb4:	00028067          	jr	t0
