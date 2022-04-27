
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
  e0:	19058593          	addi	a1,a1,400 # 126c <__crt0_copy_data_src_begin>
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
 190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3894>
 194:	02112623          	sw	ra,44(sp)
 198:	02812423          	sw	s0,40(sp)
 19c:	02912223          	sw	s1,36(sp)
 1a0:	03212023          	sw	s2,32(sp)
 1a4:	01312e23          	sw	s3,28(sp)
 1a8:	330000ef          	jal	ra,4d8 <neorv32_uart0_setup>
 1ac:	3cd000ef          	jal	ra,d78 <neorv32_gpio_available>
 1b0:	14050663          	beqz	a0,2fc <main+0x17c>
 1b4:	379000ef          	jal	ra,d2c <neorv32_rte_setup>
 1b8:	00001537          	lui	a0,0x1
 1bc:	f3c50513          	addi	a0,a0,-196 # f3c <__etext+0x24>
 1c0:	3dc000ef          	jal	ra,59c <neorv32_uart0_print>
 1c4:	00000593          	li	a1,0
 1c8:	00001937          	lui	s2,0x1
 1cc:	000019b7          	lui	s3,0x1
 1d0:	00001437          	lui	s0,0x1
 1d4:	f5c90513          	addi	a0,s2,-164 # f5c <__etext+0x44>
 1d8:	00b12623          	sw	a1,12(sp)
 1dc:	3c0000ef          	jal	ra,59c <neorv32_uart0_print>
 1e0:	00000513          	li	a0,0
 1e4:	144000ef          	jal	ra,328 <getButtonState>
 1e8:	00c12583          	lw	a1,12(sp)
 1ec:	00050493          	mv	s1,a0
 1f0:	00a58663          	beq	a1,a0,1fc <main+0x7c>
 1f4:	f8498513          	addi	a0,s3,-124 # f84 <__etext+0x6c>
 1f8:	3fc000ef          	jal	ra,5f4 <neorv32_uart0_printf>
 1fc:	00000513          	li	a0,0
 200:	389000ef          	jal	ra,d88 <neorv32_gpio_pin_get>
 204:	00050593          	mv	a1,a0
 208:	f9c40513          	addi	a0,s0,-100 # f9c <__etext+0x84>
 20c:	3e8000ef          	jal	ra,5f4 <neorv32_uart0_printf>
 210:	00100513          	li	a0,1
 214:	375000ef          	jal	ra,d88 <neorv32_gpio_pin_get>
 218:	00050593          	mv	a1,a0
 21c:	f9c40513          	addi	a0,s0,-100
 220:	3d4000ef          	jal	ra,5f4 <neorv32_uart0_printf>
 224:	00200513          	li	a0,2
 228:	361000ef          	jal	ra,d88 <neorv32_gpio_pin_get>
 22c:	00050593          	mv	a1,a0
 230:	f9c40513          	addi	a0,s0,-100
 234:	3c0000ef          	jal	ra,5f4 <neorv32_uart0_printf>
 238:	00300513          	li	a0,3
 23c:	34d000ef          	jal	ra,d88 <neorv32_gpio_pin_get>
 240:	00050593          	mv	a1,a0
 244:	f9c40513          	addi	a0,s0,-100
 248:	3ac000ef          	jal	ra,5f4 <neorv32_uart0_printf>
 24c:	00400513          	li	a0,4
 250:	339000ef          	jal	ra,d88 <neorv32_gpio_pin_get>
 254:	00050593          	mv	a1,a0
 258:	f9c40513          	addi	a0,s0,-100
 25c:	398000ef          	jal	ra,5f4 <neorv32_uart0_printf>
 260:	00500513          	li	a0,5
 264:	325000ef          	jal	ra,d88 <neorv32_gpio_pin_get>
 268:	00050593          	mv	a1,a0
 26c:	f9c40513          	addi	a0,s0,-100
 270:	384000ef          	jal	ra,5f4 <neorv32_uart0_printf>
 274:	00600513          	li	a0,6
 278:	311000ef          	jal	ra,d88 <neorv32_gpio_pin_get>
 27c:	00050593          	mv	a1,a0
 280:	f9c40513          	addi	a0,s0,-100
 284:	370000ef          	jal	ra,5f4 <neorv32_uart0_printf>
 288:	00700513          	li	a0,7
 28c:	2fd000ef          	jal	ra,d88 <neorv32_gpio_pin_get>
 290:	00050593          	mv	a1,a0
 294:	f9c40513          	addi	a0,s0,-100
 298:	35c000ef          	jal	ra,5f4 <neorv32_uart0_printf>
 29c:	00800513          	li	a0,8
 2a0:	2e9000ef          	jal	ra,d88 <neorv32_gpio_pin_get>
 2a4:	00050593          	mv	a1,a0
 2a8:	f9c40513          	addi	a0,s0,-100
 2ac:	348000ef          	jal	ra,5f4 <neorv32_uart0_printf>
 2b0:	00900513          	li	a0,9
 2b4:	2d5000ef          	jal	ra,d88 <neorv32_gpio_pin_get>
 2b8:	00050593          	mv	a1,a0
 2bc:	f9c40513          	addi	a0,s0,-100
 2c0:	334000ef          	jal	ra,5f4 <neorv32_uart0_printf>
 2c4:	00a00513          	li	a0,10
 2c8:	2c1000ef          	jal	ra,d88 <neorv32_gpio_pin_get>
 2cc:	00050593          	mv	a1,a0
 2d0:	f9c40513          	addi	a0,s0,-100
 2d4:	320000ef          	jal	ra,5f4 <neorv32_uart0_printf>
 2d8:	00b00513          	li	a0,11
 2dc:	2ad000ef          	jal	ra,d88 <neorv32_gpio_pin_get>
 2e0:	00050593          	mv	a1,a0
 2e4:	f9c40513          	addi	a0,s0,-100
 2e8:	30c000ef          	jal	ra,5f4 <neorv32_uart0_printf>
 2ec:	7d000513          	li	a0,2000
 2f0:	4c8000ef          	jal	ra,7b8 <neorv32_cpu_delay_ms>
 2f4:	00048593          	mv	a1,s1
 2f8:	eddff06f          	j	1d4 <main+0x54>
 2fc:	00001537          	lui	a0,0x1
 300:	f1850513          	addi	a0,a0,-232 # f18 <__etext>
 304:	298000ef          	jal	ra,59c <neorv32_uart0_print>
 308:	02c12083          	lw	ra,44(sp)
 30c:	02812403          	lw	s0,40(sp)
 310:	02412483          	lw	s1,36(sp)
 314:	02012903          	lw	s2,32(sp)
 318:	01c12983          	lw	s3,28(sp)
 31c:	00100513          	li	a0,1
 320:	03010113          	addi	sp,sp,48
 324:	00008067          	ret

00000328 <getButtonState>:
 328:	ff010113          	addi	sp,sp,-16
 32c:	00112623          	sw	ra,12(sp)
 330:	00812423          	sw	s0,8(sp)
 334:	00912223          	sw	s1,4(sp)
 338:	00050493          	mv	s1,a0
 33c:	24d000ef          	jal	ra,d88 <neorv32_gpio_pin_get>
 340:	00050413          	mv	s0,a0
 344:	00500513          	li	a0,5
 348:	470000ef          	jal	ra,7b8 <neorv32_cpu_delay_ms>
 34c:	00048513          	mv	a0,s1
 350:	239000ef          	jal	ra,d88 <neorv32_gpio_pin_get>
 354:	00a477b3          	and	a5,s0,a0
 358:	00079a63          	bnez	a5,36c <getButtonState+0x44>
 35c:	00a46533          	or	a0,s0,a0
 360:	00050863          	beqz	a0,370 <getButtonState+0x48>
 364:	00200513          	li	a0,2
 368:	0080006f          	j	370 <getButtonState+0x48>
 36c:	00100513          	li	a0,1
 370:	00c12083          	lw	ra,12(sp)
 374:	00812403          	lw	s0,8(sp)
 378:	00412483          	lw	s1,4(sp)
 37c:	01010113          	addi	sp,sp,16
 380:	00008067          	ret

00000384 <__neorv32_uart_itoa>:
 384:	fd010113          	addi	sp,sp,-48
 388:	02812423          	sw	s0,40(sp)
 38c:	02912223          	sw	s1,36(sp)
 390:	03212023          	sw	s2,32(sp)
 394:	01312e23          	sw	s3,28(sp)
 398:	01412c23          	sw	s4,24(sp)
 39c:	02112623          	sw	ra,44(sp)
 3a0:	01512a23          	sw	s5,20(sp)
 3a4:	00001a37          	lui	s4,0x1
 3a8:	00050493          	mv	s1,a0
 3ac:	00058413          	mv	s0,a1
 3b0:	00058523          	sb	zero,10(a1)
 3b4:	00000993          	li	s3,0
 3b8:	00410913          	addi	s2,sp,4
 3bc:	fa4a0a13          	addi	s4,s4,-92 # fa4 <numbers.1>
 3c0:	00a00593          	li	a1,10
 3c4:	00048513          	mv	a0,s1
 3c8:	2ed000ef          	jal	ra,eb4 <__umodsi3>
 3cc:	00aa0533          	add	a0,s4,a0
 3d0:	00054783          	lbu	a5,0(a0)
 3d4:	01390ab3          	add	s5,s2,s3
 3d8:	00048513          	mv	a0,s1
 3dc:	00fa8023          	sb	a5,0(s5)
 3e0:	00a00593          	li	a1,10
 3e4:	289000ef          	jal	ra,e6c <__udivsi3>
 3e8:	00198993          	addi	s3,s3,1
 3ec:	00a00793          	li	a5,10
 3f0:	00050493          	mv	s1,a0
 3f4:	fcf996e3          	bne	s3,a5,3c0 <__neorv32_uart_itoa+0x3c>
 3f8:	00090693          	mv	a3,s2
 3fc:	00900713          	li	a4,9
 400:	03000613          	li	a2,48
 404:	0096c583          	lbu	a1,9(a3)
 408:	00070793          	mv	a5,a4
 40c:	fff70713          	addi	a4,a4,-1
 410:	01071713          	slli	a4,a4,0x10
 414:	01075713          	srli	a4,a4,0x10
 418:	00c59a63          	bne	a1,a2,42c <__neorv32_uart_itoa+0xa8>
 41c:	000684a3          	sb	zero,9(a3)
 420:	fff68693          	addi	a3,a3,-1
 424:	fe0710e3          	bnez	a4,404 <__neorv32_uart_itoa+0x80>
 428:	00000793          	li	a5,0
 42c:	00f907b3          	add	a5,s2,a5
 430:	00000593          	li	a1,0
 434:	0007c703          	lbu	a4,0(a5)
 438:	00070c63          	beqz	a4,450 <__neorv32_uart_itoa+0xcc>
 43c:	00158693          	addi	a3,a1,1
 440:	00b405b3          	add	a1,s0,a1
 444:	00e58023          	sb	a4,0(a1)
 448:	01069593          	slli	a1,a3,0x10
 44c:	0105d593          	srli	a1,a1,0x10
 450:	fff78713          	addi	a4,a5,-1
 454:	02f91863          	bne	s2,a5,484 <__neorv32_uart_itoa+0x100>
 458:	00b40433          	add	s0,s0,a1
 45c:	00040023          	sb	zero,0(s0)
 460:	02c12083          	lw	ra,44(sp)
 464:	02812403          	lw	s0,40(sp)
 468:	02412483          	lw	s1,36(sp)
 46c:	02012903          	lw	s2,32(sp)
 470:	01c12983          	lw	s3,28(sp)
 474:	01812a03          	lw	s4,24(sp)
 478:	01412a83          	lw	s5,20(sp)
 47c:	03010113          	addi	sp,sp,48
 480:	00008067          	ret
 484:	00070793          	mv	a5,a4
 488:	fadff06f          	j	434 <__neorv32_uart_itoa+0xb0>

0000048c <__neorv32_uart_tohex>:
 48c:	00001637          	lui	a2,0x1
 490:	00758693          	addi	a3,a1,7
 494:	00000713          	li	a4,0
 498:	fb060613          	addi	a2,a2,-80 # fb0 <symbols.0>
 49c:	02000813          	li	a6,32
 4a0:	00e557b3          	srl	a5,a0,a4
 4a4:	00f7f793          	andi	a5,a5,15
 4a8:	00f607b3          	add	a5,a2,a5
 4ac:	0007c783          	lbu	a5,0(a5)
 4b0:	00470713          	addi	a4,a4,4
 4b4:	fff68693          	addi	a3,a3,-1
 4b8:	00f680a3          	sb	a5,1(a3)
 4bc:	ff0712e3          	bne	a4,a6,4a0 <__neorv32_uart_tohex+0x14>
 4c0:	00058423          	sb	zero,8(a1)
 4c4:	00008067          	ret

000004c8 <neorv32_uart0_available>:
 4c8:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 4cc:	01255513          	srli	a0,a0,0x12
 4d0:	00157513          	andi	a0,a0,1
 4d4:	00008067          	ret

000004d8 <neorv32_uart0_setup>:
 4d8:	ff010113          	addi	sp,sp,-16
 4dc:	00812423          	sw	s0,8(sp)
 4e0:	00912223          	sw	s1,4(sp)
 4e4:	00112623          	sw	ra,12(sp)
 4e8:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 4ec:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 4f0:	00058413          	mv	s0,a1
 4f4:	00151593          	slli	a1,a0,0x1
 4f8:	00078513          	mv	a0,a5
 4fc:	00060493          	mv	s1,a2
 500:	16d000ef          	jal	ra,e6c <__udivsi3>
 504:	01051513          	slli	a0,a0,0x10
 508:	000017b7          	lui	a5,0x1
 50c:	01055513          	srli	a0,a0,0x10
 510:	00000713          	li	a4,0
 514:	ffe78793          	addi	a5,a5,-2 # ffe <symbols.0+0x4e>
 518:	04a7e463          	bltu	a5,a0,560 <neorv32_uart0_setup+0x88>
 51c:	0034f793          	andi	a5,s1,3
 520:	00347413          	andi	s0,s0,3
 524:	fff50513          	addi	a0,a0,-1
 528:	01479793          	slli	a5,a5,0x14
 52c:	01641413          	slli	s0,s0,0x16
 530:	00f567b3          	or	a5,a0,a5
 534:	0087e7b3          	or	a5,a5,s0
 538:	01871713          	slli	a4,a4,0x18
 53c:	00c12083          	lw	ra,12(sp)
 540:	00812403          	lw	s0,8(sp)
 544:	00e7e7b3          	or	a5,a5,a4
 548:	10000737          	lui	a4,0x10000
 54c:	00e7e7b3          	or	a5,a5,a4
 550:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 554:	00412483          	lw	s1,4(sp)
 558:	01010113          	addi	sp,sp,16
 55c:	00008067          	ret
 560:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffed92>
 564:	0fd6f693          	andi	a3,a3,253
 568:	00069a63          	bnez	a3,57c <neorv32_uart0_setup+0xa4>
 56c:	00355513          	srli	a0,a0,0x3
 570:	00170713          	addi	a4,a4,1
 574:	0ff77713          	andi	a4,a4,255
 578:	fa1ff06f          	j	518 <neorv32_uart0_setup+0x40>
 57c:	00155513          	srli	a0,a0,0x1
 580:	ff1ff06f          	j	570 <neorv32_uart0_setup+0x98>

00000584 <neorv32_uart0_putc>:
 584:	00040737          	lui	a4,0x40
 588:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 58c:	00e7f7b3          	and	a5,a5,a4
 590:	fe079ce3          	bnez	a5,588 <neorv32_uart0_putc+0x4>
 594:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 598:	00008067          	ret

0000059c <neorv32_uart0_print>:
 59c:	ff010113          	addi	sp,sp,-16
 5a0:	00812423          	sw	s0,8(sp)
 5a4:	01212023          	sw	s2,0(sp)
 5a8:	00112623          	sw	ra,12(sp)
 5ac:	00912223          	sw	s1,4(sp)
 5b0:	00050413          	mv	s0,a0
 5b4:	00a00913          	li	s2,10
 5b8:	00044483          	lbu	s1,0(s0)
 5bc:	00140413          	addi	s0,s0,1
 5c0:	00049e63          	bnez	s1,5dc <neorv32_uart0_print+0x40>
 5c4:	00c12083          	lw	ra,12(sp)
 5c8:	00812403          	lw	s0,8(sp)
 5cc:	00412483          	lw	s1,4(sp)
 5d0:	00012903          	lw	s2,0(sp)
 5d4:	01010113          	addi	sp,sp,16
 5d8:	00008067          	ret
 5dc:	01249663          	bne	s1,s2,5e8 <neorv32_uart0_print+0x4c>
 5e0:	00d00513          	li	a0,13
 5e4:	fa1ff0ef          	jal	ra,584 <neorv32_uart0_putc>
 5e8:	00048513          	mv	a0,s1
 5ec:	f99ff0ef          	jal	ra,584 <neorv32_uart0_putc>
 5f0:	fc9ff06f          	j	5b8 <neorv32_uart0_print+0x1c>

000005f4 <neorv32_uart0_printf>:
 5f4:	fa010113          	addi	sp,sp,-96
 5f8:	04f12a23          	sw	a5,84(sp)
 5fc:	04410793          	addi	a5,sp,68
 600:	02812c23          	sw	s0,56(sp)
 604:	03212823          	sw	s2,48(sp)
 608:	03412423          	sw	s4,40(sp)
 60c:	03512223          	sw	s5,36(sp)
 610:	03612023          	sw	s6,32(sp)
 614:	01712e23          	sw	s7,28(sp)
 618:	01812c23          	sw	s8,24(sp)
 61c:	01912a23          	sw	s9,20(sp)
 620:	02112e23          	sw	ra,60(sp)
 624:	02912a23          	sw	s1,52(sp)
 628:	03312623          	sw	s3,44(sp)
 62c:	00050413          	mv	s0,a0
 630:	04b12223          	sw	a1,68(sp)
 634:	04c12423          	sw	a2,72(sp)
 638:	04d12623          	sw	a3,76(sp)
 63c:	04e12823          	sw	a4,80(sp)
 640:	05012c23          	sw	a6,88(sp)
 644:	05112e23          	sw	a7,92(sp)
 648:	00f12023          	sw	a5,0(sp)
 64c:	02500a13          	li	s4,37
 650:	00a00a93          	li	s5,10
 654:	07300913          	li	s2,115
 658:	07500b13          	li	s6,117
 65c:	07800b93          	li	s7,120
 660:	06300c13          	li	s8,99
 664:	06900c93          	li	s9,105
 668:	00044483          	lbu	s1,0(s0)
 66c:	02049c63          	bnez	s1,6a4 <neorv32_uart0_printf+0xb0>
 670:	03c12083          	lw	ra,60(sp)
 674:	03812403          	lw	s0,56(sp)
 678:	03412483          	lw	s1,52(sp)
 67c:	03012903          	lw	s2,48(sp)
 680:	02c12983          	lw	s3,44(sp)
 684:	02812a03          	lw	s4,40(sp)
 688:	02412a83          	lw	s5,36(sp)
 68c:	02012b03          	lw	s6,32(sp)
 690:	01c12b83          	lw	s7,28(sp)
 694:	01812c03          	lw	s8,24(sp)
 698:	01412c83          	lw	s9,20(sp)
 69c:	06010113          	addi	sp,sp,96
 6a0:	00008067          	ret
 6a4:	0d449863          	bne	s1,s4,774 <neorv32_uart0_printf+0x180>
 6a8:	00240993          	addi	s3,s0,2
 6ac:	00144403          	lbu	s0,1(s0)
 6b0:	05240263          	beq	s0,s2,6f4 <neorv32_uart0_printf+0x100>
 6b4:	00896e63          	bltu	s2,s0,6d0 <neorv32_uart0_printf+0xdc>
 6b8:	05840c63          	beq	s0,s8,710 <neorv32_uart0_printf+0x11c>
 6bc:	07940663          	beq	s0,s9,728 <neorv32_uart0_printf+0x134>
 6c0:	02500513          	li	a0,37
 6c4:	ec1ff0ef          	jal	ra,584 <neorv32_uart0_putc>
 6c8:	00040513          	mv	a0,s0
 6cc:	0540006f          	j	720 <neorv32_uart0_printf+0x12c>
 6d0:	09640663          	beq	s0,s6,75c <neorv32_uart0_printf+0x168>
 6d4:	ff7416e3          	bne	s0,s7,6c0 <neorv32_uart0_printf+0xcc>
 6d8:	00012783          	lw	a5,0(sp)
 6dc:	00410593          	addi	a1,sp,4
 6e0:	0007a503          	lw	a0,0(a5)
 6e4:	00478713          	addi	a4,a5,4
 6e8:	00e12023          	sw	a4,0(sp)
 6ec:	da1ff0ef          	jal	ra,48c <__neorv32_uart_tohex>
 6f0:	0640006f          	j	754 <neorv32_uart0_printf+0x160>
 6f4:	00012783          	lw	a5,0(sp)
 6f8:	0007a503          	lw	a0,0(a5)
 6fc:	00478713          	addi	a4,a5,4
 700:	00e12023          	sw	a4,0(sp)
 704:	e99ff0ef          	jal	ra,59c <neorv32_uart0_print>
 708:	00098413          	mv	s0,s3
 70c:	f5dff06f          	j	668 <neorv32_uart0_printf+0x74>
 710:	00012783          	lw	a5,0(sp)
 714:	0007c503          	lbu	a0,0(a5)
 718:	00478713          	addi	a4,a5,4
 71c:	00e12023          	sw	a4,0(sp)
 720:	e65ff0ef          	jal	ra,584 <neorv32_uart0_putc>
 724:	fe5ff06f          	j	708 <neorv32_uart0_printf+0x114>
 728:	00012783          	lw	a5,0(sp)
 72c:	0007a403          	lw	s0,0(a5)
 730:	00478713          	addi	a4,a5,4
 734:	00e12023          	sw	a4,0(sp)
 738:	00045863          	bgez	s0,748 <neorv32_uart0_printf+0x154>
 73c:	02d00513          	li	a0,45
 740:	40800433          	neg	s0,s0
 744:	e41ff0ef          	jal	ra,584 <neorv32_uart0_putc>
 748:	00410593          	addi	a1,sp,4
 74c:	00040513          	mv	a0,s0
 750:	c35ff0ef          	jal	ra,384 <__neorv32_uart_itoa>
 754:	00410513          	addi	a0,sp,4
 758:	fadff06f          	j	704 <neorv32_uart0_printf+0x110>
 75c:	00012783          	lw	a5,0(sp)
 760:	00410593          	addi	a1,sp,4
 764:	00478713          	addi	a4,a5,4
 768:	0007a503          	lw	a0,0(a5)
 76c:	00e12023          	sw	a4,0(sp)
 770:	fe1ff06f          	j	750 <neorv32_uart0_printf+0x15c>
 774:	01549663          	bne	s1,s5,780 <neorv32_uart0_printf+0x18c>
 778:	00d00513          	li	a0,13
 77c:	e09ff0ef          	jal	ra,584 <neorv32_uart0_putc>
 780:	00140993          	addi	s3,s0,1
 784:	00048513          	mv	a0,s1
 788:	f99ff06f          	j	720 <neorv32_uart0_printf+0x12c>

0000078c <neorv32_cpu_get_systime>:
 78c:	ff010113          	addi	sp,sp,-16
 790:	c81026f3          	rdtimeh	a3
 794:	c0102773          	rdtime	a4
 798:	c81027f3          	rdtimeh	a5
 79c:	fed79ae3          	bne	a5,a3,790 <neorv32_cpu_get_systime+0x4>
 7a0:	00e12023          	sw	a4,0(sp)
 7a4:	00f12223          	sw	a5,4(sp)
 7a8:	00012503          	lw	a0,0(sp)
 7ac:	00412583          	lw	a1,4(sp)
 7b0:	01010113          	addi	sp,sp,16
 7b4:	00008067          	ret

000007b8 <neorv32_cpu_delay_ms>:
 7b8:	fd010113          	addi	sp,sp,-48
 7bc:	00a12623          	sw	a0,12(sp)
 7c0:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 7c4:	3e800593          	li	a1,1000
 7c8:	02112623          	sw	ra,44(sp)
 7cc:	02812423          	sw	s0,40(sp)
 7d0:	02912223          	sw	s1,36(sp)
 7d4:	03212023          	sw	s2,32(sp)
 7d8:	01312e23          	sw	s3,28(sp)
 7dc:	690000ef          	jal	ra,e6c <__udivsi3>
 7e0:	00c12603          	lw	a2,12(sp)
 7e4:	00000693          	li	a3,0
 7e8:	00000593          	li	a1,0
 7ec:	5e8000ef          	jal	ra,dd4 <__muldi3>
 7f0:	00050413          	mv	s0,a0
 7f4:	00058993          	mv	s3,a1
 7f8:	f95ff0ef          	jal	ra,78c <neorv32_cpu_get_systime>
 7fc:	00058913          	mv	s2,a1
 800:	00050493          	mv	s1,a0
 804:	f89ff0ef          	jal	ra,78c <neorv32_cpu_get_systime>
 808:	00b96663          	bltu	s2,a1,814 <neorv32_cpu_delay_ms+0x5c>
 80c:	05259263          	bne	a1,s2,850 <neorv32_cpu_delay_ms+0x98>
 810:	04a4f063          	bgeu	s1,a0,850 <neorv32_cpu_delay_ms+0x98>
 814:	008484b3          	add	s1,s1,s0
 818:	0084b433          	sltu	s0,s1,s0
 81c:	01390933          	add	s2,s2,s3
 820:	01240433          	add	s0,s0,s2
 824:	f69ff0ef          	jal	ra,78c <neorv32_cpu_get_systime>
 828:	fe85eee3          	bltu	a1,s0,824 <neorv32_cpu_delay_ms+0x6c>
 82c:	00b41463          	bne	s0,a1,834 <neorv32_cpu_delay_ms+0x7c>
 830:	fe956ae3          	bltu	a0,s1,824 <neorv32_cpu_delay_ms+0x6c>
 834:	02c12083          	lw	ra,44(sp)
 838:	02812403          	lw	s0,40(sp)
 83c:	02412483          	lw	s1,36(sp)
 840:	02012903          	lw	s2,32(sp)
 844:	01c12983          	lw	s3,28(sp)
 848:	03010113          	addi	sp,sp,48
 84c:	00008067          	ret
 850:	01c99913          	slli	s2,s3,0x1c
 854:	00445413          	srli	s0,s0,0x4
 858:	00896433          	or	s0,s2,s0

0000085c <__neorv32_cpu_delay_ms_start>:
 85c:	00040a63          	beqz	s0,870 <__neorv32_cpu_delay_ms_end>
 860:	00040863          	beqz	s0,870 <__neorv32_cpu_delay_ms_end>
 864:	fff40413          	addi	s0,s0,-1
 868:	00000013          	nop
 86c:	ff1ff06f          	j	85c <__neorv32_cpu_delay_ms_start>

00000870 <__neorv32_cpu_delay_ms_end>:
 870:	fc5ff06f          	j	834 <neorv32_cpu_delay_ms+0x7c>
 874:	0000                	unimp
 876:	0000                	unimp
 878:	0000                	unimp
 87a:	0000                	unimp
 87c:	0000                	unimp
 87e:	0000                	unimp

00000880 <__neorv32_rte_core>:
 880:	fc010113          	addi	sp,sp,-64
 884:	02112e23          	sw	ra,60(sp)
 888:	02512c23          	sw	t0,56(sp)
 88c:	02612a23          	sw	t1,52(sp)
 890:	02712823          	sw	t2,48(sp)
 894:	02a12623          	sw	a0,44(sp)
 898:	02b12423          	sw	a1,40(sp)
 89c:	02c12223          	sw	a2,36(sp)
 8a0:	02d12023          	sw	a3,32(sp)
 8a4:	00e12e23          	sw	a4,28(sp)
 8a8:	00f12c23          	sw	a5,24(sp)
 8ac:	01012a23          	sw	a6,20(sp)
 8b0:	01112823          	sw	a7,16(sp)
 8b4:	01c12623          	sw	t3,12(sp)
 8b8:	01d12423          	sw	t4,8(sp)
 8bc:	01e12223          	sw	t5,4(sp)
 8c0:	01f12023          	sw	t6,0(sp)
 8c4:	34102773          	csrr	a4,mepc
 8c8:	34071073          	csrw	mscratch,a4
 8cc:	342027f3          	csrr	a5,mcause
 8d0:	0807ca63          	bltz	a5,964 <__neorv32_rte_core+0xe4>
 8d4:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3ed94>
 8d8:	00300593          	li	a1,3
 8dc:	0036f693          	andi	a3,a3,3
 8e0:	00270613          	addi	a2,a4,2
 8e4:	00b69463          	bne	a3,a1,8ec <__neorv32_rte_core+0x6c>
 8e8:	00470613          	addi	a2,a4,4
 8ec:	34161073          	csrw	mepc,a2
 8f0:	00b00713          	li	a4,11
 8f4:	04f77c63          	bgeu	a4,a5,94c <__neorv32_rte_core+0xcc>
 8f8:	000017b7          	lui	a5,0x1
 8fc:	b0078793          	addi	a5,a5,-1280 # b00 <__neorv32_rte_debug_exc_handler>
 900:	000780e7          	jalr	a5
 904:	03c12083          	lw	ra,60(sp)
 908:	03812283          	lw	t0,56(sp)
 90c:	03412303          	lw	t1,52(sp)
 910:	03012383          	lw	t2,48(sp)
 914:	02c12503          	lw	a0,44(sp)
 918:	02812583          	lw	a1,40(sp)
 91c:	02412603          	lw	a2,36(sp)
 920:	02012683          	lw	a3,32(sp)
 924:	01c12703          	lw	a4,28(sp)
 928:	01812783          	lw	a5,24(sp)
 92c:	01412803          	lw	a6,20(sp)
 930:	01012883          	lw	a7,16(sp)
 934:	00c12e03          	lw	t3,12(sp)
 938:	00812e83          	lw	t4,8(sp)
 93c:	00412f03          	lw	t5,4(sp)
 940:	00012f83          	lw	t6,0(sp)
 944:	04010113          	addi	sp,sp,64
 948:	30200073          	mret
 94c:	00001737          	lui	a4,0x1
 950:	00279793          	slli	a5,a5,0x2
 954:	fc470713          	addi	a4,a4,-60 # fc4 <symbols.0+0x14>
 958:	00e787b3          	add	a5,a5,a4
 95c:	0007a783          	lw	a5,0(a5)
 960:	00078067          	jr	a5
 964:	80000737          	lui	a4,0x80000
 968:	ffd74713          	xori	a4,a4,-3
 96c:	00e787b3          	add	a5,a5,a4
 970:	01c00713          	li	a4,28
 974:	f8f762e3          	bltu	a4,a5,8f8 <__neorv32_rte_core+0x78>
 978:	00001737          	lui	a4,0x1
 97c:	00279793          	slli	a5,a5,0x2
 980:	ff470713          	addi	a4,a4,-12 # ff4 <symbols.0+0x44>
 984:	00e787b3          	add	a5,a5,a4
 988:	0007a783          	lw	a5,0(a5)
 98c:	00078067          	jr	a5
 990:	800007b7          	lui	a5,0x80000
 994:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 998:	f69ff06f          	j	900 <__neorv32_rte_core+0x80>
 99c:	800007b7          	lui	a5,0x80000
 9a0:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 9a4:	f5dff06f          	j	900 <__neorv32_rte_core+0x80>
 9a8:	800007b7          	lui	a5,0x80000
 9ac:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 9b0:	f51ff06f          	j	900 <__neorv32_rte_core+0x80>
 9b4:	800007b7          	lui	a5,0x80000
 9b8:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
 9bc:	f45ff06f          	j	900 <__neorv32_rte_core+0x80>
 9c0:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
 9c4:	f3dff06f          	j	900 <__neorv32_rte_core+0x80>
 9c8:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
 9cc:	f35ff06f          	j	900 <__neorv32_rte_core+0x80>
 9d0:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
 9d4:	f2dff06f          	j	900 <__neorv32_rte_core+0x80>
 9d8:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
 9dc:	f25ff06f          	j	900 <__neorv32_rte_core+0x80>
 9e0:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
 9e4:	f1dff06f          	j	900 <__neorv32_rte_core+0x80>
 9e8:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
 9ec:	f15ff06f          	j	900 <__neorv32_rte_core+0x80>
 9f0:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
 9f4:	f0dff06f          	j	900 <__neorv32_rte_core+0x80>
 9f8:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
 9fc:	f05ff06f          	j	900 <__neorv32_rte_core+0x80>
 a00:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
 a04:	efdff06f          	j	900 <__neorv32_rte_core+0x80>
 a08:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
 a0c:	ef5ff06f          	j	900 <__neorv32_rte_core+0x80>
 a10:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
 a14:	eedff06f          	j	900 <__neorv32_rte_core+0x80>
 a18:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
 a1c:	ee5ff06f          	j	900 <__neorv32_rte_core+0x80>
 a20:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 a24:	eddff06f          	j	900 <__neorv32_rte_core+0x80>
 a28:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 a2c:	ed5ff06f          	j	900 <__neorv32_rte_core+0x80>
 a30:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 a34:	ecdff06f          	j	900 <__neorv32_rte_core+0x80>
 a38:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 a3c:	ec5ff06f          	j	900 <__neorv32_rte_core+0x80>
 a40:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 a44:	ebdff06f          	j	900 <__neorv32_rte_core+0x80>
 a48:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 a4c:	eb5ff06f          	j	900 <__neorv32_rte_core+0x80>
 a50:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 a54:	eadff06f          	j	900 <__neorv32_rte_core+0x80>
 a58:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 a5c:	ea5ff06f          	j	900 <__neorv32_rte_core+0x80>
 a60:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 a64:	e9dff06f          	j	900 <__neorv32_rte_core+0x80>
 a68:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 a6c:	e95ff06f          	j	900 <__neorv32_rte_core+0x80>
 a70:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 a74:	e8dff06f          	j	900 <__neorv32_rte_core+0x80>
 a78:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 a7c:	e85ff06f          	j	900 <__neorv32_rte_core+0x80>
 a80:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 a84:	e7dff06f          	j	900 <__neorv32_rte_core+0x80>
 a88:	0000                	unimp
 a8a:	0000                	unimp
 a8c:	0000                	unimp
 a8e:	0000                	unimp

00000a90 <__neorv32_rte_print_hex_word>:
 a90:	fe010113          	addi	sp,sp,-32
 a94:	01212823          	sw	s2,16(sp)
 a98:	00050913          	mv	s2,a0
 a9c:	00001537          	lui	a0,0x1
 aa0:	00912a23          	sw	s1,20(sp)
 aa4:	06850513          	addi	a0,a0,104 # 1068 <symbols.0+0xb8>
 aa8:	000014b7          	lui	s1,0x1
 aac:	00812c23          	sw	s0,24(sp)
 ab0:	01312623          	sw	s3,12(sp)
 ab4:	00112e23          	sw	ra,28(sp)
 ab8:	01c00413          	li	s0,28
 abc:	ae1ff0ef          	jal	ra,59c <neorv32_uart0_print>
 ac0:	25c48493          	addi	s1,s1,604 # 125c <hex_symbols.0>
 ac4:	ffc00993          	li	s3,-4
 ac8:	008957b3          	srl	a5,s2,s0
 acc:	00f7f793          	andi	a5,a5,15
 ad0:	00f487b3          	add	a5,s1,a5
 ad4:	0007c503          	lbu	a0,0(a5)
 ad8:	ffc40413          	addi	s0,s0,-4
 adc:	aa9ff0ef          	jal	ra,584 <neorv32_uart0_putc>
 ae0:	ff3414e3          	bne	s0,s3,ac8 <__neorv32_rte_print_hex_word+0x38>
 ae4:	01c12083          	lw	ra,28(sp)
 ae8:	01812403          	lw	s0,24(sp)
 aec:	01412483          	lw	s1,20(sp)
 af0:	01012903          	lw	s2,16(sp)
 af4:	00c12983          	lw	s3,12(sp)
 af8:	02010113          	addi	sp,sp,32
 afc:	00008067          	ret

00000b00 <__neorv32_rte_debug_exc_handler>:
 b00:	ff010113          	addi	sp,sp,-16
 b04:	00112623          	sw	ra,12(sp)
 b08:	00812423          	sw	s0,8(sp)
 b0c:	00912223          	sw	s1,4(sp)
 b10:	9b9ff0ef          	jal	ra,4c8 <neorv32_uart0_available>
 b14:	1c050863          	beqz	a0,ce4 <__neorv32_rte_debug_exc_handler+0x1e4>
 b18:	00001537          	lui	a0,0x1
 b1c:	06c50513          	addi	a0,a0,108 # 106c <symbols.0+0xbc>
 b20:	a7dff0ef          	jal	ra,59c <neorv32_uart0_print>
 b24:	34202473          	csrr	s0,mcause
 b28:	00900713          	li	a4,9
 b2c:	00f47793          	andi	a5,s0,15
 b30:	03078493          	addi	s1,a5,48
 b34:	00f77463          	bgeu	a4,a5,b3c <__neorv32_rte_debug_exc_handler+0x3c>
 b38:	05778493          	addi	s1,a5,87
 b3c:	00b00793          	li	a5,11
 b40:	0087ee63          	bltu	a5,s0,b5c <__neorv32_rte_debug_exc_handler+0x5c>
 b44:	00001737          	lui	a4,0x1
 b48:	00241793          	slli	a5,s0,0x2
 b4c:	22c70713          	addi	a4,a4,556 # 122c <symbols.0+0x27c>
 b50:	00e787b3          	add	a5,a5,a4
 b54:	0007a783          	lw	a5,0(a5)
 b58:	00078067          	jr	a5
 b5c:	800007b7          	lui	a5,0x80000
 b60:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 b64:	14e40e63          	beq	s0,a4,cc0 <__neorv32_rte_debug_exc_handler+0x1c0>
 b68:	02876a63          	bltu	a4,s0,b9c <__neorv32_rte_debug_exc_handler+0x9c>
 b6c:	00378713          	addi	a4,a5,3
 b70:	12e40c63          	beq	s0,a4,ca8 <__neorv32_rte_debug_exc_handler+0x1a8>
 b74:	00778793          	addi	a5,a5,7
 b78:	12f40e63          	beq	s0,a5,cb4 <__neorv32_rte_debug_exc_handler+0x1b4>
 b7c:	00001537          	lui	a0,0x1
 b80:	1cc50513          	addi	a0,a0,460 # 11cc <symbols.0+0x21c>
 b84:	a19ff0ef          	jal	ra,59c <neorv32_uart0_print>
 b88:	00040513          	mv	a0,s0
 b8c:	f05ff0ef          	jal	ra,a90 <__neorv32_rte_print_hex_word>
 b90:	00100793          	li	a5,1
 b94:	08f40c63          	beq	s0,a5,c2c <__neorv32_rte_debug_exc_handler+0x12c>
 b98:	0280006f          	j	bc0 <__neorv32_rte_debug_exc_handler+0xc0>
 b9c:	ff07c793          	xori	a5,a5,-16
 ba0:	00f407b3          	add	a5,s0,a5
 ba4:	00f00713          	li	a4,15
 ba8:	fcf76ae3          	bltu	a4,a5,b7c <__neorv32_rte_debug_exc_handler+0x7c>
 bac:	00001537          	lui	a0,0x1
 bb0:	1bc50513          	addi	a0,a0,444 # 11bc <symbols.0+0x20c>
 bb4:	9e9ff0ef          	jal	ra,59c <neorv32_uart0_print>
 bb8:	00048513          	mv	a0,s1
 bbc:	9c9ff0ef          	jal	ra,584 <neorv32_uart0_putc>
 bc0:	ffd47413          	andi	s0,s0,-3
 bc4:	00500793          	li	a5,5
 bc8:	06f40263          	beq	s0,a5,c2c <__neorv32_rte_debug_exc_handler+0x12c>
 bcc:	00001537          	lui	a0,0x1
 bd0:	21050513          	addi	a0,a0,528 # 1210 <symbols.0+0x260>
 bd4:	9c9ff0ef          	jal	ra,59c <neorv32_uart0_print>
 bd8:	34002573          	csrr	a0,mscratch
 bdc:	eb5ff0ef          	jal	ra,a90 <__neorv32_rte_print_hex_word>
 be0:	00001537          	lui	a0,0x1
 be4:	21850513          	addi	a0,a0,536 # 1218 <symbols.0+0x268>
 be8:	9b5ff0ef          	jal	ra,59c <neorv32_uart0_print>
 bec:	34302573          	csrr	a0,mtval
 bf0:	ea1ff0ef          	jal	ra,a90 <__neorv32_rte_print_hex_word>
 bf4:	00812403          	lw	s0,8(sp)
 bf8:	00c12083          	lw	ra,12(sp)
 bfc:	00412483          	lw	s1,4(sp)
 c00:	00001537          	lui	a0,0x1
 c04:	22450513          	addi	a0,a0,548 # 1224 <symbols.0+0x274>
 c08:	01010113          	addi	sp,sp,16
 c0c:	991ff06f          	j	59c <neorv32_uart0_print>
 c10:	00001537          	lui	a0,0x1
 c14:	07450513          	addi	a0,a0,116 # 1074 <symbols.0+0xc4>
 c18:	985ff0ef          	jal	ra,59c <neorv32_uart0_print>
 c1c:	fb1ff06f          	j	bcc <__neorv32_rte_debug_exc_handler+0xcc>
 c20:	00001537          	lui	a0,0x1
 c24:	09450513          	addi	a0,a0,148 # 1094 <symbols.0+0xe4>
 c28:	975ff0ef          	jal	ra,59c <neorv32_uart0_print>
 c2c:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 c30:	0a07d463          	bgez	a5,cd8 <__neorv32_rte_debug_exc_handler+0x1d8>
 c34:	0017f793          	andi	a5,a5,1
 c38:	08078a63          	beqz	a5,ccc <__neorv32_rte_debug_exc_handler+0x1cc>
 c3c:	00001537          	lui	a0,0x1
 c40:	1e450513          	addi	a0,a0,484 # 11e4 <symbols.0+0x234>
 c44:	fd5ff06f          	j	c18 <__neorv32_rte_debug_exc_handler+0x118>
 c48:	00001537          	lui	a0,0x1
 c4c:	0b050513          	addi	a0,a0,176 # 10b0 <symbols.0+0x100>
 c50:	fc9ff06f          	j	c18 <__neorv32_rte_debug_exc_handler+0x118>
 c54:	00001537          	lui	a0,0x1
 c58:	0c450513          	addi	a0,a0,196 # 10c4 <symbols.0+0x114>
 c5c:	fbdff06f          	j	c18 <__neorv32_rte_debug_exc_handler+0x118>
 c60:	00001537          	lui	a0,0x1
 c64:	0d050513          	addi	a0,a0,208 # 10d0 <symbols.0+0x120>
 c68:	fb1ff06f          	j	c18 <__neorv32_rte_debug_exc_handler+0x118>
 c6c:	00001537          	lui	a0,0x1
 c70:	0e850513          	addi	a0,a0,232 # 10e8 <symbols.0+0x138>
 c74:	fb5ff06f          	j	c28 <__neorv32_rte_debug_exc_handler+0x128>
 c78:	00001537          	lui	a0,0x1
 c7c:	0fc50513          	addi	a0,a0,252 # 10fc <symbols.0+0x14c>
 c80:	f99ff06f          	j	c18 <__neorv32_rte_debug_exc_handler+0x118>
 c84:	00001537          	lui	a0,0x1
 c88:	11850513          	addi	a0,a0,280 # 1118 <symbols.0+0x168>
 c8c:	f9dff06f          	j	c28 <__neorv32_rte_debug_exc_handler+0x128>
 c90:	00001537          	lui	a0,0x1
 c94:	12c50513          	addi	a0,a0,300 # 112c <symbols.0+0x17c>
 c98:	f81ff06f          	j	c18 <__neorv32_rte_debug_exc_handler+0x118>
 c9c:	00001537          	lui	a0,0x1
 ca0:	14c50513          	addi	a0,a0,332 # 114c <symbols.0+0x19c>
 ca4:	f75ff06f          	j	c18 <__neorv32_rte_debug_exc_handler+0x118>
 ca8:	00001537          	lui	a0,0x1
 cac:	16c50513          	addi	a0,a0,364 # 116c <symbols.0+0x1bc>
 cb0:	f69ff06f          	j	c18 <__neorv32_rte_debug_exc_handler+0x118>
 cb4:	00001537          	lui	a0,0x1
 cb8:	18850513          	addi	a0,a0,392 # 1188 <symbols.0+0x1d8>
 cbc:	f5dff06f          	j	c18 <__neorv32_rte_debug_exc_handler+0x118>
 cc0:	00001537          	lui	a0,0x1
 cc4:	1a050513          	addi	a0,a0,416 # 11a0 <symbols.0+0x1f0>
 cc8:	f51ff06f          	j	c18 <__neorv32_rte_debug_exc_handler+0x118>
 ccc:	00001537          	lui	a0,0x1
 cd0:	1f450513          	addi	a0,a0,500 # 11f4 <symbols.0+0x244>
 cd4:	f45ff06f          	j	c18 <__neorv32_rte_debug_exc_handler+0x118>
 cd8:	00001537          	lui	a0,0x1
 cdc:	20450513          	addi	a0,a0,516 # 1204 <symbols.0+0x254>
 ce0:	f39ff06f          	j	c18 <__neorv32_rte_debug_exc_handler+0x118>
 ce4:	00c12083          	lw	ra,12(sp)
 ce8:	00812403          	lw	s0,8(sp)
 cec:	00412483          	lw	s1,4(sp)
 cf0:	01010113          	addi	sp,sp,16
 cf4:	00008067          	ret

00000cf8 <neorv32_rte_exception_uninstall>:
 cf8:	01f00793          	li	a5,31
 cfc:	02a7e463          	bltu	a5,a0,d24 <neorv32_rte_exception_uninstall+0x2c>
 d00:	800007b7          	lui	a5,0x80000
 d04:	00078793          	mv	a5,a5
 d08:	00251513          	slli	a0,a0,0x2
 d0c:	00a78533          	add	a0,a5,a0
 d10:	000017b7          	lui	a5,0x1
 d14:	b0078793          	addi	a5,a5,-1280 # b00 <__neorv32_rte_debug_exc_handler>
 d18:	00f52023          	sw	a5,0(a0)
 d1c:	00000513          	li	a0,0
 d20:	00008067          	ret
 d24:	00100513          	li	a0,1
 d28:	00008067          	ret

00000d2c <neorv32_rte_setup>:
 d2c:	ff010113          	addi	sp,sp,-16
 d30:	000017b7          	lui	a5,0x1
 d34:	00112623          	sw	ra,12(sp)
 d38:	00812423          	sw	s0,8(sp)
 d3c:	00912223          	sw	s1,4(sp)
 d40:	88078793          	addi	a5,a5,-1920 # 880 <__neorv32_rte_core>
 d44:	30579073          	csrw	mtvec,a5
 d48:	00000413          	li	s0,0
 d4c:	01d00493          	li	s1,29
 d50:	00040513          	mv	a0,s0
 d54:	00140413          	addi	s0,s0,1
 d58:	0ff47413          	andi	s0,s0,255
 d5c:	f9dff0ef          	jal	ra,cf8 <neorv32_rte_exception_uninstall>
 d60:	fe9418e3          	bne	s0,s1,d50 <neorv32_rte_setup+0x24>
 d64:	00c12083          	lw	ra,12(sp)
 d68:	00812403          	lw	s0,8(sp)
 d6c:	00412483          	lw	s1,4(sp)
 d70:	01010113          	addi	sp,sp,16
 d74:	00008067          	ret

00000d78 <neorv32_gpio_available>:
 d78:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 d7c:	01055513          	srli	a0,a0,0x10
 d80:	00157513          	andi	a0,a0,1
 d84:	00008067          	ret

00000d88 <neorv32_gpio_pin_get>:
 d88:	00050793          	mv	a5,a0
 d8c:	01f00713          	li	a4,31
 d90:	00100513          	li	a0,1
 d94:	00f51533          	sll	a0,a0,a5
 d98:	00f74863          	blt	a4,a5,da8 <neorv32_gpio_pin_get+0x20>
 d9c:	fc002783          	lw	a5,-64(zero) # ffffffc0 <__ctr0_io_space_begin+0x1c0>
 da0:	00a7f533          	and	a0,a5,a0
 da4:	00008067          	ret
 da8:	fc402783          	lw	a5,-60(zero) # ffffffc4 <__ctr0_io_space_begin+0x1c4>
 dac:	ff5ff06f          	j	da0 <neorv32_gpio_pin_get+0x18>

00000db0 <__mulsi3>:
 db0:	00050613          	mv	a2,a0
 db4:	00000513          	li	a0,0
 db8:	0015f693          	andi	a3,a1,1
 dbc:	00068463          	beqz	a3,dc4 <__mulsi3+0x14>
 dc0:	00c50533          	add	a0,a0,a2
 dc4:	0015d593          	srli	a1,a1,0x1
 dc8:	00161613          	slli	a2,a2,0x1
 dcc:	fe0596e3          	bnez	a1,db8 <__mulsi3+0x8>
 dd0:	00008067          	ret

00000dd4 <__muldi3>:
 dd4:	00050313          	mv	t1,a0
 dd8:	ff010113          	addi	sp,sp,-16
 ddc:	00060513          	mv	a0,a2
 de0:	00068893          	mv	a7,a3
 de4:	00112623          	sw	ra,12(sp)
 de8:	00030613          	mv	a2,t1
 dec:	00050693          	mv	a3,a0
 df0:	00000713          	li	a4,0
 df4:	00000793          	li	a5,0
 df8:	00000813          	li	a6,0
 dfc:	0016fe13          	andi	t3,a3,1
 e00:	00171e93          	slli	t4,a4,0x1
 e04:	000e0c63          	beqz	t3,e1c <__muldi3+0x48>
 e08:	01060e33          	add	t3,a2,a6
 e0c:	010e3833          	sltu	a6,t3,a6
 e10:	00e787b3          	add	a5,a5,a4
 e14:	00f807b3          	add	a5,a6,a5
 e18:	000e0813          	mv	a6,t3
 e1c:	01f65713          	srli	a4,a2,0x1f
 e20:	0016d693          	srli	a3,a3,0x1
 e24:	00eee733          	or	a4,t4,a4
 e28:	00161613          	slli	a2,a2,0x1
 e2c:	fc0698e3          	bnez	a3,dfc <__muldi3+0x28>
 e30:	00058663          	beqz	a1,e3c <__muldi3+0x68>
 e34:	f7dff0ef          	jal	ra,db0 <__mulsi3>
 e38:	00a787b3          	add	a5,a5,a0
 e3c:	00088a63          	beqz	a7,e50 <__muldi3+0x7c>
 e40:	00030513          	mv	a0,t1
 e44:	00088593          	mv	a1,a7
 e48:	f69ff0ef          	jal	ra,db0 <__mulsi3>
 e4c:	00f507b3          	add	a5,a0,a5
 e50:	00c12083          	lw	ra,12(sp)
 e54:	00080513          	mv	a0,a6
 e58:	00078593          	mv	a1,a5
 e5c:	01010113          	addi	sp,sp,16
 e60:	00008067          	ret

00000e64 <__divsi3>:
 e64:	06054063          	bltz	a0,ec4 <__umodsi3+0x10>
 e68:	0605c663          	bltz	a1,ed4 <__umodsi3+0x20>

00000e6c <__udivsi3>:
 e6c:	00058613          	mv	a2,a1
 e70:	00050593          	mv	a1,a0
 e74:	fff00513          	li	a0,-1
 e78:	02060c63          	beqz	a2,eb0 <__udivsi3+0x44>
 e7c:	00100693          	li	a3,1
 e80:	00b67a63          	bgeu	a2,a1,e94 <__udivsi3+0x28>
 e84:	00c05863          	blez	a2,e94 <__udivsi3+0x28>
 e88:	00161613          	slli	a2,a2,0x1
 e8c:	00169693          	slli	a3,a3,0x1
 e90:	feb66ae3          	bltu	a2,a1,e84 <__udivsi3+0x18>
 e94:	00000513          	li	a0,0
 e98:	00c5e663          	bltu	a1,a2,ea4 <__udivsi3+0x38>
 e9c:	40c585b3          	sub	a1,a1,a2
 ea0:	00d56533          	or	a0,a0,a3
 ea4:	0016d693          	srli	a3,a3,0x1
 ea8:	00165613          	srli	a2,a2,0x1
 eac:	fe0696e3          	bnez	a3,e98 <__udivsi3+0x2c>
 eb0:	00008067          	ret

00000eb4 <__umodsi3>:
 eb4:	00008293          	mv	t0,ra
 eb8:	fb5ff0ef          	jal	ra,e6c <__udivsi3>
 ebc:	00058513          	mv	a0,a1
 ec0:	00028067          	jr	t0
 ec4:	40a00533          	neg	a0,a0
 ec8:	00b04863          	bgtz	a1,ed8 <__umodsi3+0x24>
 ecc:	40b005b3          	neg	a1,a1
 ed0:	f9dff06f          	j	e6c <__udivsi3>
 ed4:	40b005b3          	neg	a1,a1
 ed8:	00008293          	mv	t0,ra
 edc:	f91ff0ef          	jal	ra,e6c <__udivsi3>
 ee0:	40a00533          	neg	a0,a0
 ee4:	00028067          	jr	t0

00000ee8 <__modsi3>:
 ee8:	00008293          	mv	t0,ra
 eec:	0005ca63          	bltz	a1,f00 <__modsi3+0x18>
 ef0:	00054c63          	bltz	a0,f08 <__modsi3+0x20>
 ef4:	f79ff0ef          	jal	ra,e6c <__udivsi3>
 ef8:	00058513          	mv	a0,a1
 efc:	00028067          	jr	t0
 f00:	40b005b3          	neg	a1,a1
 f04:	fe0558e3          	bgez	a0,ef4 <__modsi3+0xc>
 f08:	40a00533          	neg	a0,a0
 f0c:	f61ff0ef          	jal	ra,e6c <__udivsi3>
 f10:	40b00533          	neg	a0,a1
 f14:	00028067          	jr	t0
