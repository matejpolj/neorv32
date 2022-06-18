
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
  e0:	1e858593          	addi	a1,a1,488 # 12c4 <__crt0_copy_data_src_begin>
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
 18c:	00912223          	sw	s1,4(sp)
 190:	01212023          	sw	s2,0(sp)
 194:	138000ef          	jal	ra,2cc <neorv32_pwm_available>
 198:	0c050863          	beqz	a0,268 <main+0xe8>
 19c:	419000ef          	jal	ra,db4 <neorv32_gpio_available>
 1a0:	0c050463          	beqz	a0,268 <main+0xe8>
 1a4:	351000ef          	jal	ra,cf4 <neorv32_rte_setup>
 1a8:	30c000ef          	jal	ra,4b4 <neorv32_uart0_available>
 1ac:	02050663          	beqz	a0,1d8 <main+0x58>
 1b0:	00005537          	lui	a0,0x5
 1b4:	00000613          	li	a2,0
 1b8:	00000593          	li	a1,0
 1bc:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x383c>
 1c0:	304000ef          	jal	ra,4c4 <neorv32_uart0_setup>
 1c4:	00000513          	li	a0,0
 1c8:	389000ef          	jal	ra,d50 <neorv32_rte_check_isa>
 1cc:	00001537          	lui	a0,0x1
 1d0:	f5450513          	addi	a0,a0,-172 # f54 <__etext>
 1d4:	3b4000ef          	jal	ra,588 <neorv32_uart0_print>
 1d8:	00000593          	li	a1,0
 1dc:	00000513          	li	a0,0
 1e0:	118000ef          	jal	ra,2f8 <neorv32_pwm_set>
 1e4:	00000593          	li	a1,0
 1e8:	00100513          	li	a0,1
 1ec:	10c000ef          	jal	ra,2f8 <neorv32_pwm_set>
 1f0:	00300513          	li	a0,3
 1f4:	0e8000ef          	jal	ra,2dc <neorv32_pwm_setup>
 1f8:	00000413          	li	s0,0
 1fc:	00000493          	li	s1,0
 200:	00900513          	li	a0,9
 204:	080000ef          	jal	ra,284 <getButtonState>
 208:	00050913          	mv	s2,a0
 20c:	00a00513          	li	a0,10
 210:	074000ef          	jal	ra,284 <getButtonState>
 214:	0ff97913          	andi	s2,s2,255
 218:	0ff57513          	andi	a0,a0,255
 21c:	00090a63          	beqz	s2,230 <main+0xb0>
 220:	00848493          	addi	s1,s1,8
 224:	ff840413          	addi	s0,s0,-8
 228:	0ff4f493          	andi	s1,s1,255
 22c:	0ff47413          	andi	s0,s0,255
 230:	00050a63          	beqz	a0,244 <main+0xc4>
 234:	00840413          	addi	s0,s0,8
 238:	ff848493          	addi	s1,s1,-8
 23c:	0ff47413          	andi	s0,s0,255
 240:	0ff4f493          	andi	s1,s1,255
 244:	00048593          	mv	a1,s1
 248:	00000513          	li	a0,0
 24c:	0ac000ef          	jal	ra,2f8 <neorv32_pwm_set>
 250:	00040593          	mv	a1,s0
 254:	00100513          	li	a0,1
 258:	0a0000ef          	jal	ra,2f8 <neorv32_pwm_set>
 25c:	00a00513          	li	a0,10
 260:	540000ef          	jal	ra,7a0 <neorv32_cpu_delay_ms>
 264:	f9dff06f          	j	200 <main+0x80>
 268:	00c12083          	lw	ra,12(sp)
 26c:	00812403          	lw	s0,8(sp)
 270:	00412483          	lw	s1,4(sp)
 274:	00012903          	lw	s2,0(sp)
 278:	00100513          	li	a0,1
 27c:	01010113          	addi	sp,sp,16
 280:	00008067          	ret

00000284 <getButtonState>:
 284:	ff010113          	addi	sp,sp,-16
 288:	00112623          	sw	ra,12(sp)
 28c:	00812423          	sw	s0,8(sp)
 290:	00912223          	sw	s1,4(sp)
 294:	00050493          	mv	s1,a0
 298:	32d000ef          	jal	ra,dc4 <neorv32_gpio_pin_get>
 29c:	00050413          	mv	s0,a0
 2a0:	00500513          	li	a0,5
 2a4:	4fc000ef          	jal	ra,7a0 <neorv32_cpu_delay_ms>
 2a8:	00048513          	mv	a0,s1
 2ac:	319000ef          	jal	ra,dc4 <neorv32_gpio_pin_get>
 2b0:	00a40463          	beq	s0,a0,2b8 <getButtonState+0x34>
 2b4:	00200513          	li	a0,2
 2b8:	00c12083          	lw	ra,12(sp)
 2bc:	00812403          	lw	s0,8(sp)
 2c0:	00412483          	lw	s1,4(sp)
 2c4:	01010113          	addi	sp,sp,16
 2c8:	00008067          	ret

000002cc <neorv32_pwm_available>:
 2cc:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 2d0:	01555513          	srli	a0,a0,0x15
 2d4:	00157513          	andi	a0,a0,1
 2d8:	00008067          	ret

000002dc <neorv32_pwm_setup>:
 2dc:	00757513          	andi	a0,a0,7
 2e0:	e8000793          	li	a5,-384
 2e4:	00151513          	slli	a0,a0,0x1
 2e8:	0007a023          	sw	zero,0(a5)
 2ec:	00156513          	ori	a0,a0,1
 2f0:	00a7a023          	sw	a0,0(a5)
 2f4:	00008067          	ret

000002f8 <neorv32_pwm_set>:
 2f8:	03b00793          	li	a5,59
 2fc:	02a7e863          	bltu	a5,a0,32c <neorv32_pwm_set+0x34>
 300:	00357713          	andi	a4,a0,3
 304:	0fc57513          	andi	a0,a0,252
 308:	e8452683          	lw	a3,-380(a0)
 30c:	00371713          	slli	a4,a4,0x3
 310:	0ff00793          	li	a5,255
 314:	00e797b3          	sll	a5,a5,a4
 318:	fff7c793          	not	a5,a5
 31c:	00d7f7b3          	and	a5,a5,a3
 320:	00e595b3          	sll	a1,a1,a4
 324:	00f5e5b3          	or	a1,a1,a5
 328:	e8b52223          	sw	a1,-380(a0)
 32c:	00008067          	ret

00000330 <neorv32_mtime_get_time>:
 330:	f9402583          	lw	a1,-108(zero) # ffffff94 <__ctr0_io_space_begin+0x194>
 334:	f9002503          	lw	a0,-112(zero) # ffffff90 <__ctr0_io_space_begin+0x190>
 338:	f9402783          	lw	a5,-108(zero) # ffffff94 <__ctr0_io_space_begin+0x194>
 33c:	fef59ae3          	bne	a1,a5,330 <neorv32_mtime_get_time>
 340:	00008067          	ret

00000344 <__neorv32_uart_itoa>:
 344:	fd010113          	addi	sp,sp,-48
 348:	02812423          	sw	s0,40(sp)
 34c:	02912223          	sw	s1,36(sp)
 350:	03212023          	sw	s2,32(sp)
 354:	01312e23          	sw	s3,28(sp)
 358:	01412c23          	sw	s4,24(sp)
 35c:	02112623          	sw	ra,44(sp)
 360:	01512a23          	sw	s5,20(sp)
 364:	00001a37          	lui	s4,0x1
 368:	00050493          	mv	s1,a0
 36c:	00058413          	mv	s0,a1
 370:	00058523          	sb	zero,10(a1)
 374:	00000993          	li	s3,0
 378:	00410913          	addi	s2,sp,4
 37c:	f70a0a13          	addi	s4,s4,-144 # f70 <numbers.1>
 380:	00a00593          	li	a1,10
 384:	00048513          	mv	a0,s1
 388:	369000ef          	jal	ra,ef0 <__umodsi3>
 38c:	00aa0533          	add	a0,s4,a0
 390:	00054783          	lbu	a5,0(a0)
 394:	01390ab3          	add	s5,s2,s3
 398:	00048513          	mv	a0,s1
 39c:	00fa8023          	sb	a5,0(s5)
 3a0:	00a00593          	li	a1,10
 3a4:	305000ef          	jal	ra,ea8 <__udivsi3>
 3a8:	00198993          	addi	s3,s3,1
 3ac:	00a00793          	li	a5,10
 3b0:	00050493          	mv	s1,a0
 3b4:	fcf996e3          	bne	s3,a5,380 <__neorv32_uart_itoa+0x3c>
 3b8:	00090693          	mv	a3,s2
 3bc:	00900713          	li	a4,9
 3c0:	03000613          	li	a2,48
 3c4:	0096c583          	lbu	a1,9(a3)
 3c8:	00070793          	mv	a5,a4
 3cc:	fff70713          	addi	a4,a4,-1
 3d0:	01071713          	slli	a4,a4,0x10
 3d4:	01075713          	srli	a4,a4,0x10
 3d8:	00c59a63          	bne	a1,a2,3ec <__neorv32_uart_itoa+0xa8>
 3dc:	000684a3          	sb	zero,9(a3)
 3e0:	fff68693          	addi	a3,a3,-1
 3e4:	fe0710e3          	bnez	a4,3c4 <__neorv32_uart_itoa+0x80>
 3e8:	00000793          	li	a5,0
 3ec:	00f907b3          	add	a5,s2,a5
 3f0:	00000593          	li	a1,0
 3f4:	0007c703          	lbu	a4,0(a5)
 3f8:	00070c63          	beqz	a4,410 <__neorv32_uart_itoa+0xcc>
 3fc:	00158693          	addi	a3,a1,1
 400:	00b405b3          	add	a1,s0,a1
 404:	00e58023          	sb	a4,0(a1)
 408:	01069593          	slli	a1,a3,0x10
 40c:	0105d593          	srli	a1,a1,0x10
 410:	fff78713          	addi	a4,a5,-1
 414:	02f91863          	bne	s2,a5,444 <__neorv32_uart_itoa+0x100>
 418:	00b40433          	add	s0,s0,a1
 41c:	00040023          	sb	zero,0(s0)
 420:	02c12083          	lw	ra,44(sp)
 424:	02812403          	lw	s0,40(sp)
 428:	02412483          	lw	s1,36(sp)
 42c:	02012903          	lw	s2,32(sp)
 430:	01c12983          	lw	s3,28(sp)
 434:	01812a03          	lw	s4,24(sp)
 438:	01412a83          	lw	s5,20(sp)
 43c:	03010113          	addi	sp,sp,48
 440:	00008067          	ret
 444:	00070793          	mv	a5,a4
 448:	fadff06f          	j	3f4 <__neorv32_uart_itoa+0xb0>

0000044c <__neorv32_uart_tohex>:
 44c:	00001637          	lui	a2,0x1
 450:	00758693          	addi	a3,a1,7
 454:	00000713          	li	a4,0
 458:	f7c60613          	addi	a2,a2,-132 # f7c <symbols.0>
 45c:	02000813          	li	a6,32
 460:	00e557b3          	srl	a5,a0,a4
 464:	00f7f793          	andi	a5,a5,15
 468:	00f607b3          	add	a5,a2,a5
 46c:	0007c783          	lbu	a5,0(a5)
 470:	00470713          	addi	a4,a4,4
 474:	fff68693          	addi	a3,a3,-1
 478:	00f680a3          	sb	a5,1(a3)
 47c:	ff0712e3          	bne	a4,a6,460 <__neorv32_uart_tohex+0x14>
 480:	00058423          	sb	zero,8(a1)
 484:	00008067          	ret

00000488 <__neorv32_uart_touppercase.constprop.0>:
 488:	00b50693          	addi	a3,a0,11
 48c:	01900613          	li	a2,25
 490:	00054783          	lbu	a5,0(a0)
 494:	f9f78713          	addi	a4,a5,-97
 498:	0ff77713          	andi	a4,a4,255
 49c:	00e66663          	bltu	a2,a4,4a8 <__neorv32_uart_touppercase.constprop.0+0x20>
 4a0:	fe078793          	addi	a5,a5,-32
 4a4:	00f50023          	sb	a5,0(a0)
 4a8:	00150513          	addi	a0,a0,1
 4ac:	fed512e3          	bne	a0,a3,490 <__neorv32_uart_touppercase.constprop.0+0x8>
 4b0:	00008067          	ret

000004b4 <neorv32_uart0_available>:
 4b4:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 4b8:	01255513          	srli	a0,a0,0x12
 4bc:	00157513          	andi	a0,a0,1
 4c0:	00008067          	ret

000004c4 <neorv32_uart0_setup>:
 4c4:	ff010113          	addi	sp,sp,-16
 4c8:	00812423          	sw	s0,8(sp)
 4cc:	00912223          	sw	s1,4(sp)
 4d0:	00112623          	sw	ra,12(sp)
 4d4:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 4d8:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 4dc:	00058413          	mv	s0,a1
 4e0:	00151593          	slli	a1,a0,0x1
 4e4:	00078513          	mv	a0,a5
 4e8:	00060493          	mv	s1,a2
 4ec:	1bd000ef          	jal	ra,ea8 <__udivsi3>
 4f0:	01051513          	slli	a0,a0,0x10
 4f4:	000017b7          	lui	a5,0x1
 4f8:	01055513          	srli	a0,a0,0x10
 4fc:	00000713          	li	a4,0
 500:	ffe78793          	addi	a5,a5,-2 # ffe <symbols.0+0x82>
 504:	04a7e463          	bltu	a5,a0,54c <neorv32_uart0_setup+0x88>
 508:	0034f793          	andi	a5,s1,3
 50c:	00347413          	andi	s0,s0,3
 510:	fff50513          	addi	a0,a0,-1
 514:	01479793          	slli	a5,a5,0x14
 518:	01641413          	slli	s0,s0,0x16
 51c:	00f567b3          	or	a5,a0,a5
 520:	0087e7b3          	or	a5,a5,s0
 524:	01871713          	slli	a4,a4,0x18
 528:	00c12083          	lw	ra,12(sp)
 52c:	00812403          	lw	s0,8(sp)
 530:	00e7e7b3          	or	a5,a5,a4
 534:	10000737          	lui	a4,0x10000
 538:	00e7e7b3          	or	a5,a5,a4
 53c:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 540:	00412483          	lw	s1,4(sp)
 544:	01010113          	addi	sp,sp,16
 548:	00008067          	ret
 54c:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffed3a>
 550:	0fd6f693          	andi	a3,a3,253
 554:	00069a63          	bnez	a3,568 <neorv32_uart0_setup+0xa4>
 558:	00355513          	srli	a0,a0,0x3
 55c:	00170713          	addi	a4,a4,1
 560:	0ff77713          	andi	a4,a4,255
 564:	fa1ff06f          	j	504 <neorv32_uart0_setup+0x40>
 568:	00155513          	srli	a0,a0,0x1
 56c:	ff1ff06f          	j	55c <neorv32_uart0_setup+0x98>

00000570 <neorv32_uart0_putc>:
 570:	00040737          	lui	a4,0x40
 574:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 578:	00e7f7b3          	and	a5,a5,a4
 57c:	fe079ce3          	bnez	a5,574 <neorv32_uart0_putc+0x4>
 580:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 584:	00008067          	ret

00000588 <neorv32_uart0_print>:
 588:	ff010113          	addi	sp,sp,-16
 58c:	00812423          	sw	s0,8(sp)
 590:	01212023          	sw	s2,0(sp)
 594:	00112623          	sw	ra,12(sp)
 598:	00912223          	sw	s1,4(sp)
 59c:	00050413          	mv	s0,a0
 5a0:	00a00913          	li	s2,10
 5a4:	00044483          	lbu	s1,0(s0)
 5a8:	00140413          	addi	s0,s0,1
 5ac:	00049e63          	bnez	s1,5c8 <neorv32_uart0_print+0x40>
 5b0:	00c12083          	lw	ra,12(sp)
 5b4:	00812403          	lw	s0,8(sp)
 5b8:	00412483          	lw	s1,4(sp)
 5bc:	00012903          	lw	s2,0(sp)
 5c0:	01010113          	addi	sp,sp,16
 5c4:	00008067          	ret
 5c8:	01249663          	bne	s1,s2,5d4 <neorv32_uart0_print+0x4c>
 5cc:	00d00513          	li	a0,13
 5d0:	fa1ff0ef          	jal	ra,570 <neorv32_uart0_putc>
 5d4:	00048513          	mv	a0,s1
 5d8:	f99ff0ef          	jal	ra,570 <neorv32_uart0_putc>
 5dc:	fc9ff06f          	j	5a4 <neorv32_uart0_print+0x1c>

000005e0 <neorv32_uart0_printf>:
 5e0:	fa010113          	addi	sp,sp,-96
 5e4:	04f12a23          	sw	a5,84(sp)
 5e8:	04410793          	addi	a5,sp,68
 5ec:	02812c23          	sw	s0,56(sp)
 5f0:	03212823          	sw	s2,48(sp)
 5f4:	03312623          	sw	s3,44(sp)
 5f8:	03512223          	sw	s5,36(sp)
 5fc:	03612023          	sw	s6,32(sp)
 600:	01712e23          	sw	s7,28(sp)
 604:	01812c23          	sw	s8,24(sp)
 608:	01912a23          	sw	s9,20(sp)
 60c:	02112e23          	sw	ra,60(sp)
 610:	02912a23          	sw	s1,52(sp)
 614:	03412423          	sw	s4,40(sp)
 618:	00050413          	mv	s0,a0
 61c:	04b12223          	sw	a1,68(sp)
 620:	04c12423          	sw	a2,72(sp)
 624:	04d12623          	sw	a3,76(sp)
 628:	04e12823          	sw	a4,80(sp)
 62c:	05012c23          	sw	a6,88(sp)
 630:	05112e23          	sw	a7,92(sp)
 634:	00f12023          	sw	a5,0(sp)
 638:	02500a93          	li	s5,37
 63c:	00a00b13          	li	s6,10
 640:	07000913          	li	s2,112
 644:	05800993          	li	s3,88
 648:	07500b93          	li	s7,117
 64c:	07800c13          	li	s8,120
 650:	07300c93          	li	s9,115
 654:	00044483          	lbu	s1,0(s0)
 658:	02049c63          	bnez	s1,690 <neorv32_uart0_printf+0xb0>
 65c:	03c12083          	lw	ra,60(sp)
 660:	03812403          	lw	s0,56(sp)
 664:	03412483          	lw	s1,52(sp)
 668:	03012903          	lw	s2,48(sp)
 66c:	02c12983          	lw	s3,44(sp)
 670:	02812a03          	lw	s4,40(sp)
 674:	02412a83          	lw	s5,36(sp)
 678:	02012b03          	lw	s6,32(sp)
 67c:	01c12b83          	lw	s7,28(sp)
 680:	01812c03          	lw	s8,24(sp)
 684:	01412c83          	lw	s9,20(sp)
 688:	06010113          	addi	sp,sp,96
 68c:	00008067          	ret
 690:	0f549c63          	bne	s1,s5,788 <neorv32_uart0_printf+0x1a8>
 694:	00240a13          	addi	s4,s0,2
 698:	00144403          	lbu	s0,1(s0)
 69c:	0d240263          	beq	s0,s2,760 <neorv32_uart0_printf+0x180>
 6a0:	06896463          	bltu	s2,s0,708 <neorv32_uart0_printf+0x128>
 6a4:	06300793          	li	a5,99
 6a8:	08f40463          	beq	s0,a5,730 <neorv32_uart0_printf+0x150>
 6ac:	0087ec63          	bltu	a5,s0,6c4 <neorv32_uart0_printf+0xe4>
 6b0:	0b340863          	beq	s0,s3,760 <neorv32_uart0_printf+0x180>
 6b4:	02500513          	li	a0,37
 6b8:	eb9ff0ef          	jal	ra,570 <neorv32_uart0_putc>
 6bc:	00040513          	mv	a0,s0
 6c0:	0800006f          	j	740 <neorv32_uart0_printf+0x160>
 6c4:	06400793          	li	a5,100
 6c8:	00f40663          	beq	s0,a5,6d4 <neorv32_uart0_printf+0xf4>
 6cc:	06900793          	li	a5,105
 6d0:	fef412e3          	bne	s0,a5,6b4 <neorv32_uart0_printf+0xd4>
 6d4:	00012783          	lw	a5,0(sp)
 6d8:	0007a403          	lw	s0,0(a5)
 6dc:	00478713          	addi	a4,a5,4
 6e0:	00e12023          	sw	a4,0(sp)
 6e4:	00045863          	bgez	s0,6f4 <neorv32_uart0_printf+0x114>
 6e8:	02d00513          	li	a0,45
 6ec:	40800433          	neg	s0,s0
 6f0:	e81ff0ef          	jal	ra,570 <neorv32_uart0_putc>
 6f4:	00410593          	addi	a1,sp,4
 6f8:	00040513          	mv	a0,s0
 6fc:	c49ff0ef          	jal	ra,344 <__neorv32_uart_itoa>
 700:	00410513          	addi	a0,sp,4
 704:	0200006f          	j	724 <neorv32_uart0_printf+0x144>
 708:	05740063          	beq	s0,s7,748 <neorv32_uart0_printf+0x168>
 70c:	05840a63          	beq	s0,s8,760 <neorv32_uart0_printf+0x180>
 710:	fb9412e3          	bne	s0,s9,6b4 <neorv32_uart0_printf+0xd4>
 714:	00012783          	lw	a5,0(sp)
 718:	0007a503          	lw	a0,0(a5)
 71c:	00478713          	addi	a4,a5,4
 720:	00e12023          	sw	a4,0(sp)
 724:	e65ff0ef          	jal	ra,588 <neorv32_uart0_print>
 728:	000a0413          	mv	s0,s4
 72c:	f29ff06f          	j	654 <neorv32_uart0_printf+0x74>
 730:	00012783          	lw	a5,0(sp)
 734:	0007c503          	lbu	a0,0(a5)
 738:	00478713          	addi	a4,a5,4
 73c:	00e12023          	sw	a4,0(sp)
 740:	e31ff0ef          	jal	ra,570 <neorv32_uart0_putc>
 744:	fe5ff06f          	j	728 <neorv32_uart0_printf+0x148>
 748:	00012783          	lw	a5,0(sp)
 74c:	00410593          	addi	a1,sp,4
 750:	00478713          	addi	a4,a5,4
 754:	0007a503          	lw	a0,0(a5)
 758:	00e12023          	sw	a4,0(sp)
 75c:	fa1ff06f          	j	6fc <neorv32_uart0_printf+0x11c>
 760:	00012783          	lw	a5,0(sp)
 764:	00410593          	addi	a1,sp,4
 768:	0007a503          	lw	a0,0(a5)
 76c:	00478713          	addi	a4,a5,4
 770:	00e12023          	sw	a4,0(sp)
 774:	cd9ff0ef          	jal	ra,44c <__neorv32_uart_tohex>
 778:	f93414e3          	bne	s0,s3,700 <neorv32_uart0_printf+0x120>
 77c:	00410513          	addi	a0,sp,4
 780:	d09ff0ef          	jal	ra,488 <__neorv32_uart_touppercase.constprop.0>
 784:	f7dff06f          	j	700 <neorv32_uart0_printf+0x120>
 788:	01649663          	bne	s1,s6,794 <neorv32_uart0_printf+0x1b4>
 78c:	00d00513          	li	a0,13
 790:	de1ff0ef          	jal	ra,570 <neorv32_uart0_putc>
 794:	00140a13          	addi	s4,s0,1
 798:	00048513          	mv	a0,s1
 79c:	fa5ff06f          	j	740 <neorv32_uart0_printf+0x160>

000007a0 <neorv32_cpu_delay_ms>:
 7a0:	fe010113          	addi	sp,sp,-32
 7a4:	00a12623          	sw	a0,12(sp)
 7a8:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 7ac:	3e800593          	li	a1,1000
 7b0:	00112e23          	sw	ra,28(sp)
 7b4:	00812c23          	sw	s0,24(sp)
 7b8:	00912a23          	sw	s1,20(sp)
 7bc:	6ec000ef          	jal	ra,ea8 <__udivsi3>
 7c0:	00c12603          	lw	a2,12(sp)
 7c4:	00000693          	li	a3,0
 7c8:	00000593          	li	a1,0
 7cc:	644000ef          	jal	ra,e10 <__muldi3>
 7d0:	fe802783          	lw	a5,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 7d4:	00020737          	lui	a4,0x20
 7d8:	00050413          	mv	s0,a0
 7dc:	00e7f7b3          	and	a5,a5,a4
 7e0:	00058493          	mv	s1,a1
 7e4:	02078e63          	beqz	a5,820 <neorv32_cpu_delay_ms+0x80>
 7e8:	b49ff0ef          	jal	ra,330 <neorv32_mtime_get_time>
 7ec:	00850433          	add	s0,a0,s0
 7f0:	00a43533          	sltu	a0,s0,a0
 7f4:	009584b3          	add	s1,a1,s1
 7f8:	009504b3          	add	s1,a0,s1
 7fc:	b35ff0ef          	jal	ra,330 <neorv32_mtime_get_time>
 800:	fe95eee3          	bltu	a1,s1,7fc <neorv32_cpu_delay_ms+0x5c>
 804:	00b49463          	bne	s1,a1,80c <neorv32_cpu_delay_ms+0x6c>
 808:	fe856ae3          	bltu	a0,s0,7fc <neorv32_cpu_delay_ms+0x5c>
 80c:	01c12083          	lw	ra,28(sp)
 810:	01812403          	lw	s0,24(sp)
 814:	01412483          	lw	s1,20(sp)
 818:	02010113          	addi	sp,sp,32
 81c:	00008067          	ret
 820:	01c59493          	slli	s1,a1,0x1c
 824:	00455513          	srli	a0,a0,0x4
 828:	00a4e533          	or	a0,s1,a0

0000082c <__neorv32_cpu_delay_ms_start>:
 82c:	00050a63          	beqz	a0,840 <__neorv32_cpu_delay_ms_end>
 830:	00050863          	beqz	a0,840 <__neorv32_cpu_delay_ms_end>
 834:	fff50513          	addi	a0,a0,-1
 838:	00000013          	nop
 83c:	ff1ff06f          	j	82c <__neorv32_cpu_delay_ms_start>

00000840 <__neorv32_cpu_delay_ms_end>:
 840:	fcdff06f          	j	80c <neorv32_cpu_delay_ms+0x6c>

00000844 <__neorv32_rte_core>:
 844:	fc010113          	addi	sp,sp,-64
 848:	02112e23          	sw	ra,60(sp)
 84c:	02512c23          	sw	t0,56(sp)
 850:	02612a23          	sw	t1,52(sp)
 854:	02712823          	sw	t2,48(sp)
 858:	02a12623          	sw	a0,44(sp)
 85c:	02b12423          	sw	a1,40(sp)
 860:	02c12223          	sw	a2,36(sp)
 864:	02d12023          	sw	a3,32(sp)
 868:	00e12e23          	sw	a4,28(sp)
 86c:	00f12c23          	sw	a5,24(sp)
 870:	01012a23          	sw	a6,20(sp)
 874:	01112823          	sw	a7,16(sp)
 878:	01c12623          	sw	t3,12(sp)
 87c:	01d12423          	sw	t4,8(sp)
 880:	01e12223          	sw	t5,4(sp)
 884:	01f12023          	sw	t6,0(sp)
 888:	341026f3          	csrr	a3,mepc
 88c:	34069073          	csrw	mscratch,a3
 890:	342027f3          	csrr	a5,mcause
 894:	0607c063          	bltz	a5,8f4 <__neorv32_rte_core+0xb0>
 898:	0006d703          	lhu	a4,0(a3)
 89c:	01071713          	slli	a4,a4,0x10
 8a0:	01075713          	srli	a4,a4,0x10
 8a4:	00468593          	addi	a1,a3,4
 8a8:	30102673          	csrr	a2,misa
 8ac:	00467613          	andi	a2,a2,4
 8b0:	00060a63          	beqz	a2,8c4 <__neorv32_rte_core+0x80>
 8b4:	00377713          	andi	a4,a4,3
 8b8:	00300613          	li	a2,3
 8bc:	00c70463          	beq	a4,a2,8c4 <__neorv32_rte_core+0x80>
 8c0:	00268593          	addi	a1,a3,2
 8c4:	34159073          	csrw	mepc,a1
 8c8:	00b00713          	li	a4,11
 8cc:	00f77863          	bgeu	a4,a5,8dc <__neorv32_rte_core+0x98>
 8d0:	000017b7          	lui	a5,0x1
 8d4:	ac878793          	addi	a5,a5,-1336 # ac8 <__neorv32_rte_debug_exc_handler>
 8d8:	0500006f          	j	928 <__neorv32_rte_core+0xe4>
 8dc:	00001737          	lui	a4,0x1
 8e0:	00279793          	slli	a5,a5,0x2
 8e4:	f9070713          	addi	a4,a4,-112 # f90 <symbols.0+0x14>
 8e8:	00e787b3          	add	a5,a5,a4
 8ec:	0007a783          	lw	a5,0(a5)
 8f0:	00078067          	jr	a5
 8f4:	80000737          	lui	a4,0x80000
 8f8:	ffd74713          	xori	a4,a4,-3
 8fc:	00e787b3          	add	a5,a5,a4
 900:	01c00713          	li	a4,28
 904:	fcf766e3          	bltu	a4,a5,8d0 <__neorv32_rte_core+0x8c>
 908:	00001737          	lui	a4,0x1
 90c:	00279793          	slli	a5,a5,0x2
 910:	fc070713          	addi	a4,a4,-64 # fc0 <symbols.0+0x44>
 914:	00e787b3          	add	a5,a5,a4
 918:	0007a783          	lw	a5,0(a5)
 91c:	00078067          	jr	a5
 920:	800007b7          	lui	a5,0x80000
 924:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 928:	000780e7          	jalr	a5
 92c:	03c12083          	lw	ra,60(sp)
 930:	03812283          	lw	t0,56(sp)
 934:	03412303          	lw	t1,52(sp)
 938:	03012383          	lw	t2,48(sp)
 93c:	02c12503          	lw	a0,44(sp)
 940:	02812583          	lw	a1,40(sp)
 944:	02412603          	lw	a2,36(sp)
 948:	02012683          	lw	a3,32(sp)
 94c:	01c12703          	lw	a4,28(sp)
 950:	01812783          	lw	a5,24(sp)
 954:	01412803          	lw	a6,20(sp)
 958:	01012883          	lw	a7,16(sp)
 95c:	00c12e03          	lw	t3,12(sp)
 960:	00812e83          	lw	t4,8(sp)
 964:	00412f03          	lw	t5,4(sp)
 968:	00012f83          	lw	t6,0(sp)
 96c:	04010113          	addi	sp,sp,64
 970:	30200073          	mret
 974:	800007b7          	lui	a5,0x80000
 978:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 97c:	fadff06f          	j	928 <__neorv32_rte_core+0xe4>
 980:	8081a783          	lw	a5,-2040(gp) # 80000008 <__neorv32_rte_vector_lut+0x8>
 984:	fa5ff06f          	j	928 <__neorv32_rte_core+0xe4>
 988:	80c1a783          	lw	a5,-2036(gp) # 8000000c <__neorv32_rte_vector_lut+0xc>
 98c:	f9dff06f          	j	928 <__neorv32_rte_core+0xe4>
 990:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
 994:	f95ff06f          	j	928 <__neorv32_rte_core+0xe4>
 998:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
 99c:	f8dff06f          	j	928 <__neorv32_rte_core+0xe4>
 9a0:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
 9a4:	f85ff06f          	j	928 <__neorv32_rte_core+0xe4>
 9a8:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
 9ac:	f7dff06f          	j	928 <__neorv32_rte_core+0xe4>
 9b0:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
 9b4:	f75ff06f          	j	928 <__neorv32_rte_core+0xe4>
 9b8:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
 9bc:	f6dff06f          	j	928 <__neorv32_rte_core+0xe4>
 9c0:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
 9c4:	f65ff06f          	j	928 <__neorv32_rte_core+0xe4>
 9c8:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
 9cc:	f5dff06f          	j	928 <__neorv32_rte_core+0xe4>
 9d0:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
 9d4:	f55ff06f          	j	928 <__neorv32_rte_core+0xe4>
 9d8:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
 9dc:	f4dff06f          	j	928 <__neorv32_rte_core+0xe4>
 9e0:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
 9e4:	f45ff06f          	j	928 <__neorv32_rte_core+0xe4>
 9e8:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
 9ec:	f3dff06f          	j	928 <__neorv32_rte_core+0xe4>
 9f0:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 9f4:	f35ff06f          	j	928 <__neorv32_rte_core+0xe4>
 9f8:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 9fc:	f2dff06f          	j	928 <__neorv32_rte_core+0xe4>
 a00:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 a04:	f25ff06f          	j	928 <__neorv32_rte_core+0xe4>
 a08:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 a0c:	f1dff06f          	j	928 <__neorv32_rte_core+0xe4>
 a10:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 a14:	f15ff06f          	j	928 <__neorv32_rte_core+0xe4>
 a18:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 a1c:	f0dff06f          	j	928 <__neorv32_rte_core+0xe4>
 a20:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 a24:	f05ff06f          	j	928 <__neorv32_rte_core+0xe4>
 a28:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 a2c:	efdff06f          	j	928 <__neorv32_rte_core+0xe4>
 a30:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 a34:	ef5ff06f          	j	928 <__neorv32_rte_core+0xe4>
 a38:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 a3c:	eedff06f          	j	928 <__neorv32_rte_core+0xe4>
 a40:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 a44:	ee5ff06f          	j	928 <__neorv32_rte_core+0xe4>
 a48:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 a4c:	eddff06f          	j	928 <__neorv32_rte_core+0xe4>
 a50:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 a54:	ed5ff06f          	j	928 <__neorv32_rte_core+0xe4>

00000a58 <__neorv32_rte_print_hex_word>:
 a58:	fe010113          	addi	sp,sp,-32
 a5c:	01212823          	sw	s2,16(sp)
 a60:	00050913          	mv	s2,a0
 a64:	00001537          	lui	a0,0x1
 a68:	00912a23          	sw	s1,20(sp)
 a6c:	03450513          	addi	a0,a0,52 # 1034 <symbols.0+0xb8>
 a70:	000014b7          	lui	s1,0x1
 a74:	00812c23          	sw	s0,24(sp)
 a78:	01312623          	sw	s3,12(sp)
 a7c:	00112e23          	sw	ra,28(sp)
 a80:	01c00413          	li	s0,28
 a84:	b05ff0ef          	jal	ra,588 <neorv32_uart0_print>
 a88:	2b448493          	addi	s1,s1,692 # 12b4 <hex_symbols.0>
 a8c:	ffc00993          	li	s3,-4
 a90:	008957b3          	srl	a5,s2,s0
 a94:	00f7f793          	andi	a5,a5,15
 a98:	00f487b3          	add	a5,s1,a5
 a9c:	0007c503          	lbu	a0,0(a5)
 aa0:	ffc40413          	addi	s0,s0,-4
 aa4:	acdff0ef          	jal	ra,570 <neorv32_uart0_putc>
 aa8:	ff3414e3          	bne	s0,s3,a90 <__neorv32_rte_print_hex_word+0x38>
 aac:	01c12083          	lw	ra,28(sp)
 ab0:	01812403          	lw	s0,24(sp)
 ab4:	01412483          	lw	s1,20(sp)
 ab8:	01012903          	lw	s2,16(sp)
 abc:	00c12983          	lw	s3,12(sp)
 ac0:	02010113          	addi	sp,sp,32
 ac4:	00008067          	ret

00000ac8 <__neorv32_rte_debug_exc_handler>:
 ac8:	ff010113          	addi	sp,sp,-16
 acc:	00112623          	sw	ra,12(sp)
 ad0:	00812423          	sw	s0,8(sp)
 ad4:	00912223          	sw	s1,4(sp)
 ad8:	9ddff0ef          	jal	ra,4b4 <neorv32_uart0_available>
 adc:	1c050863          	beqz	a0,cac <__neorv32_rte_debug_exc_handler+0x1e4>
 ae0:	00001537          	lui	a0,0x1
 ae4:	03850513          	addi	a0,a0,56 # 1038 <symbols.0+0xbc>
 ae8:	aa1ff0ef          	jal	ra,588 <neorv32_uart0_print>
 aec:	34202473          	csrr	s0,mcause
 af0:	00900713          	li	a4,9
 af4:	00f47793          	andi	a5,s0,15
 af8:	03078493          	addi	s1,a5,48
 afc:	00f77463          	bgeu	a4,a5,b04 <__neorv32_rte_debug_exc_handler+0x3c>
 b00:	05778493          	addi	s1,a5,87
 b04:	00b00793          	li	a5,11
 b08:	0087ee63          	bltu	a5,s0,b24 <__neorv32_rte_debug_exc_handler+0x5c>
 b0c:	00001737          	lui	a4,0x1
 b10:	00241793          	slli	a5,s0,0x2
 b14:	1fc70713          	addi	a4,a4,508 # 11fc <symbols.0+0x280>
 b18:	00e787b3          	add	a5,a5,a4
 b1c:	0007a783          	lw	a5,0(a5)
 b20:	00078067          	jr	a5
 b24:	800007b7          	lui	a5,0x80000
 b28:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 b2c:	14e40e63          	beq	s0,a4,c88 <__neorv32_rte_debug_exc_handler+0x1c0>
 b30:	02876a63          	bltu	a4,s0,b64 <__neorv32_rte_debug_exc_handler+0x9c>
 b34:	00378713          	addi	a4,a5,3
 b38:	12e40c63          	beq	s0,a4,c70 <__neorv32_rte_debug_exc_handler+0x1a8>
 b3c:	00778793          	addi	a5,a5,7
 b40:	12f40e63          	beq	s0,a5,c7c <__neorv32_rte_debug_exc_handler+0x1b4>
 b44:	00001537          	lui	a0,0x1
 b48:	19850513          	addi	a0,a0,408 # 1198 <symbols.0+0x21c>
 b4c:	a3dff0ef          	jal	ra,588 <neorv32_uart0_print>
 b50:	00040513          	mv	a0,s0
 b54:	f05ff0ef          	jal	ra,a58 <__neorv32_rte_print_hex_word>
 b58:	00100793          	li	a5,1
 b5c:	08f40c63          	beq	s0,a5,bf4 <__neorv32_rte_debug_exc_handler+0x12c>
 b60:	0280006f          	j	b88 <__neorv32_rte_debug_exc_handler+0xc0>
 b64:	ff07c793          	xori	a5,a5,-16
 b68:	00f407b3          	add	a5,s0,a5
 b6c:	00f00713          	li	a4,15
 b70:	fcf76ae3          	bltu	a4,a5,b44 <__neorv32_rte_debug_exc_handler+0x7c>
 b74:	00001537          	lui	a0,0x1
 b78:	18850513          	addi	a0,a0,392 # 1188 <symbols.0+0x20c>
 b7c:	a0dff0ef          	jal	ra,588 <neorv32_uart0_print>
 b80:	00048513          	mv	a0,s1
 b84:	9edff0ef          	jal	ra,570 <neorv32_uart0_putc>
 b88:	ffd47413          	andi	s0,s0,-3
 b8c:	00500793          	li	a5,5
 b90:	06f40263          	beq	s0,a5,bf4 <__neorv32_rte_debug_exc_handler+0x12c>
 b94:	00001537          	lui	a0,0x1
 b98:	1dc50513          	addi	a0,a0,476 # 11dc <symbols.0+0x260>
 b9c:	9edff0ef          	jal	ra,588 <neorv32_uart0_print>
 ba0:	34002573          	csrr	a0,mscratch
 ba4:	eb5ff0ef          	jal	ra,a58 <__neorv32_rte_print_hex_word>
 ba8:	00001537          	lui	a0,0x1
 bac:	1e450513          	addi	a0,a0,484 # 11e4 <symbols.0+0x268>
 bb0:	9d9ff0ef          	jal	ra,588 <neorv32_uart0_print>
 bb4:	34302573          	csrr	a0,mtval
 bb8:	ea1ff0ef          	jal	ra,a58 <__neorv32_rte_print_hex_word>
 bbc:	00812403          	lw	s0,8(sp)
 bc0:	00c12083          	lw	ra,12(sp)
 bc4:	00412483          	lw	s1,4(sp)
 bc8:	00001537          	lui	a0,0x1
 bcc:	1f050513          	addi	a0,a0,496 # 11f0 <symbols.0+0x274>
 bd0:	01010113          	addi	sp,sp,16
 bd4:	9b5ff06f          	j	588 <neorv32_uart0_print>
 bd8:	00001537          	lui	a0,0x1
 bdc:	04050513          	addi	a0,a0,64 # 1040 <symbols.0+0xc4>
 be0:	9a9ff0ef          	jal	ra,588 <neorv32_uart0_print>
 be4:	fb1ff06f          	j	b94 <__neorv32_rte_debug_exc_handler+0xcc>
 be8:	00001537          	lui	a0,0x1
 bec:	06050513          	addi	a0,a0,96 # 1060 <symbols.0+0xe4>
 bf0:	999ff0ef          	jal	ra,588 <neorv32_uart0_print>
 bf4:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 bf8:	0a07d463          	bgez	a5,ca0 <__neorv32_rte_debug_exc_handler+0x1d8>
 bfc:	0017f793          	andi	a5,a5,1
 c00:	08078a63          	beqz	a5,c94 <__neorv32_rte_debug_exc_handler+0x1cc>
 c04:	00001537          	lui	a0,0x1
 c08:	1b050513          	addi	a0,a0,432 # 11b0 <symbols.0+0x234>
 c0c:	fd5ff06f          	j	be0 <__neorv32_rte_debug_exc_handler+0x118>
 c10:	00001537          	lui	a0,0x1
 c14:	07c50513          	addi	a0,a0,124 # 107c <symbols.0+0x100>
 c18:	fc9ff06f          	j	be0 <__neorv32_rte_debug_exc_handler+0x118>
 c1c:	00001537          	lui	a0,0x1
 c20:	09050513          	addi	a0,a0,144 # 1090 <symbols.0+0x114>
 c24:	fbdff06f          	j	be0 <__neorv32_rte_debug_exc_handler+0x118>
 c28:	00001537          	lui	a0,0x1
 c2c:	09c50513          	addi	a0,a0,156 # 109c <symbols.0+0x120>
 c30:	fb1ff06f          	j	be0 <__neorv32_rte_debug_exc_handler+0x118>
 c34:	00001537          	lui	a0,0x1
 c38:	0b450513          	addi	a0,a0,180 # 10b4 <symbols.0+0x138>
 c3c:	fb5ff06f          	j	bf0 <__neorv32_rte_debug_exc_handler+0x128>
 c40:	00001537          	lui	a0,0x1
 c44:	0c850513          	addi	a0,a0,200 # 10c8 <symbols.0+0x14c>
 c48:	f99ff06f          	j	be0 <__neorv32_rte_debug_exc_handler+0x118>
 c4c:	00001537          	lui	a0,0x1
 c50:	0e450513          	addi	a0,a0,228 # 10e4 <symbols.0+0x168>
 c54:	f9dff06f          	j	bf0 <__neorv32_rte_debug_exc_handler+0x128>
 c58:	00001537          	lui	a0,0x1
 c5c:	0f850513          	addi	a0,a0,248 # 10f8 <symbols.0+0x17c>
 c60:	f81ff06f          	j	be0 <__neorv32_rte_debug_exc_handler+0x118>
 c64:	00001537          	lui	a0,0x1
 c68:	11850513          	addi	a0,a0,280 # 1118 <symbols.0+0x19c>
 c6c:	f75ff06f          	j	be0 <__neorv32_rte_debug_exc_handler+0x118>
 c70:	00001537          	lui	a0,0x1
 c74:	13850513          	addi	a0,a0,312 # 1138 <symbols.0+0x1bc>
 c78:	f69ff06f          	j	be0 <__neorv32_rte_debug_exc_handler+0x118>
 c7c:	00001537          	lui	a0,0x1
 c80:	15450513          	addi	a0,a0,340 # 1154 <symbols.0+0x1d8>
 c84:	f5dff06f          	j	be0 <__neorv32_rte_debug_exc_handler+0x118>
 c88:	00001537          	lui	a0,0x1
 c8c:	16c50513          	addi	a0,a0,364 # 116c <symbols.0+0x1f0>
 c90:	f51ff06f          	j	be0 <__neorv32_rte_debug_exc_handler+0x118>
 c94:	00001537          	lui	a0,0x1
 c98:	1c050513          	addi	a0,a0,448 # 11c0 <symbols.0+0x244>
 c9c:	f45ff06f          	j	be0 <__neorv32_rte_debug_exc_handler+0x118>
 ca0:	00001537          	lui	a0,0x1
 ca4:	1d050513          	addi	a0,a0,464 # 11d0 <symbols.0+0x254>
 ca8:	f39ff06f          	j	be0 <__neorv32_rte_debug_exc_handler+0x118>
 cac:	00c12083          	lw	ra,12(sp)
 cb0:	00812403          	lw	s0,8(sp)
 cb4:	00412483          	lw	s1,4(sp)
 cb8:	01010113          	addi	sp,sp,16
 cbc:	00008067          	ret

00000cc0 <neorv32_rte_exception_uninstall>:
 cc0:	01f00793          	li	a5,31
 cc4:	02a7e463          	bltu	a5,a0,cec <neorv32_rte_exception_uninstall+0x2c>
 cc8:	800007b7          	lui	a5,0x80000
 ccc:	00078793          	mv	a5,a5
 cd0:	00251513          	slli	a0,a0,0x2
 cd4:	00a78533          	add	a0,a5,a0
 cd8:	000017b7          	lui	a5,0x1
 cdc:	ac878793          	addi	a5,a5,-1336 # ac8 <__neorv32_rte_debug_exc_handler>
 ce0:	00f52023          	sw	a5,0(a0)
 ce4:	00000513          	li	a0,0
 ce8:	00008067          	ret
 cec:	00100513          	li	a0,1
 cf0:	00008067          	ret

00000cf4 <neorv32_rte_setup>:
 cf4:	ff010113          	addi	sp,sp,-16
 cf8:	000017b7          	lui	a5,0x1
 cfc:	00112623          	sw	ra,12(sp)
 d00:	00812423          	sw	s0,8(sp)
 d04:	00912223          	sw	s1,4(sp)
 d08:	84478793          	addi	a5,a5,-1980 # 844 <__neorv32_rte_core>
 d0c:	30579073          	csrw	mtvec,a5
 d10:	00000793          	li	a5,0
 d14:	30479073          	csrw	mie,a5
 d18:	34479073          	csrw	mip,a5
 d1c:	f6002e23          	sw	zero,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 d20:	00000413          	li	s0,0
 d24:	01d00493          	li	s1,29
 d28:	00040513          	mv	a0,s0
 d2c:	00140413          	addi	s0,s0,1
 d30:	0ff47413          	andi	s0,s0,255
 d34:	f8dff0ef          	jal	ra,cc0 <neorv32_rte_exception_uninstall>
 d38:	fe9418e3          	bne	s0,s1,d28 <neorv32_rte_setup+0x34>
 d3c:	00c12083          	lw	ra,12(sp)
 d40:	00812403          	lw	s0,8(sp)
 d44:	00412483          	lw	s1,4(sp)
 d48:	01010113          	addi	sp,sp,16
 d4c:	00008067          	ret

00000d50 <neorv32_rte_check_isa>:
 d50:	30102673          	csrr	a2,misa
 d54:	400005b7          	lui	a1,0x40000
 d58:	10058593          	addi	a1,a1,256 # 40000100 <__crt0_copy_data_src_begin+0x3fffee3c>
 d5c:	00b677b3          	and	a5,a2,a1
 d60:	04b78663          	beq	a5,a1,dac <neorv32_rte_check_isa+0x5c>
 d64:	00050663          	beqz	a0,d70 <neorv32_rte_check_isa+0x20>
 d68:	00100513          	li	a0,1
 d6c:	00008067          	ret
 d70:	fe010113          	addi	sp,sp,-32
 d74:	00c12623          	sw	a2,12(sp)
 d78:	00112e23          	sw	ra,28(sp)
 d7c:	f38ff0ef          	jal	ra,4b4 <neorv32_uart0_available>
 d80:	400007b7          	lui	a5,0x40000
 d84:	00c12603          	lw	a2,12(sp)
 d88:	10078593          	addi	a1,a5,256 # 40000100 <__crt0_copy_data_src_begin+0x3fffee3c>
 d8c:	00050863          	beqz	a0,d9c <neorv32_rte_check_isa+0x4c>
 d90:	00001537          	lui	a0,0x1
 d94:	22c50513          	addi	a0,a0,556 # 122c <symbols.0+0x2b0>
 d98:	849ff0ef          	jal	ra,5e0 <neorv32_uart0_printf>
 d9c:	01c12083          	lw	ra,28(sp)
 da0:	00100513          	li	a0,1
 da4:	02010113          	addi	sp,sp,32
 da8:	00008067          	ret
 dac:	00000513          	li	a0,0
 db0:	00008067          	ret

00000db4 <neorv32_gpio_available>:
 db4:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 db8:	01055513          	srli	a0,a0,0x10
 dbc:	00157513          	andi	a0,a0,1
 dc0:	00008067          	ret

00000dc4 <neorv32_gpio_pin_get>:
 dc4:	00050793          	mv	a5,a0
 dc8:	01f00713          	li	a4,31
 dcc:	00100513          	li	a0,1
 dd0:	00f51533          	sll	a0,a0,a5
 dd4:	00f74863          	blt	a4,a5,de4 <neorv32_gpio_pin_get+0x20>
 dd8:	fc002783          	lw	a5,-64(zero) # ffffffc0 <__ctr0_io_space_begin+0x1c0>
 ddc:	00a7f533          	and	a0,a5,a0
 de0:	00008067          	ret
 de4:	fc402783          	lw	a5,-60(zero) # ffffffc4 <__ctr0_io_space_begin+0x1c4>
 de8:	ff5ff06f          	j	ddc <neorv32_gpio_pin_get+0x18>

00000dec <__mulsi3>:
 dec:	00050613          	mv	a2,a0
 df0:	00000513          	li	a0,0
 df4:	0015f693          	andi	a3,a1,1
 df8:	00068463          	beqz	a3,e00 <__mulsi3+0x14>
 dfc:	00c50533          	add	a0,a0,a2
 e00:	0015d593          	srli	a1,a1,0x1
 e04:	00161613          	slli	a2,a2,0x1
 e08:	fe0596e3          	bnez	a1,df4 <__mulsi3+0x8>
 e0c:	00008067          	ret

00000e10 <__muldi3>:
 e10:	00050313          	mv	t1,a0
 e14:	ff010113          	addi	sp,sp,-16
 e18:	00060513          	mv	a0,a2
 e1c:	00068893          	mv	a7,a3
 e20:	00112623          	sw	ra,12(sp)
 e24:	00030613          	mv	a2,t1
 e28:	00050693          	mv	a3,a0
 e2c:	00000713          	li	a4,0
 e30:	00000793          	li	a5,0
 e34:	00000813          	li	a6,0
 e38:	0016fe13          	andi	t3,a3,1
 e3c:	00171e93          	slli	t4,a4,0x1
 e40:	000e0c63          	beqz	t3,e58 <__muldi3+0x48>
 e44:	01060e33          	add	t3,a2,a6
 e48:	010e3833          	sltu	a6,t3,a6
 e4c:	00e787b3          	add	a5,a5,a4
 e50:	00f807b3          	add	a5,a6,a5
 e54:	000e0813          	mv	a6,t3
 e58:	01f65713          	srli	a4,a2,0x1f
 e5c:	0016d693          	srli	a3,a3,0x1
 e60:	00eee733          	or	a4,t4,a4
 e64:	00161613          	slli	a2,a2,0x1
 e68:	fc0698e3          	bnez	a3,e38 <__muldi3+0x28>
 e6c:	00058663          	beqz	a1,e78 <__muldi3+0x68>
 e70:	f7dff0ef          	jal	ra,dec <__mulsi3>
 e74:	00a787b3          	add	a5,a5,a0
 e78:	00088a63          	beqz	a7,e8c <__muldi3+0x7c>
 e7c:	00030513          	mv	a0,t1
 e80:	00088593          	mv	a1,a7
 e84:	f69ff0ef          	jal	ra,dec <__mulsi3>
 e88:	00f507b3          	add	a5,a0,a5
 e8c:	00c12083          	lw	ra,12(sp)
 e90:	00080513          	mv	a0,a6
 e94:	00078593          	mv	a1,a5
 e98:	01010113          	addi	sp,sp,16
 e9c:	00008067          	ret

00000ea0 <__divsi3>:
 ea0:	06054063          	bltz	a0,f00 <__umodsi3+0x10>
 ea4:	0605c663          	bltz	a1,f10 <__umodsi3+0x20>

00000ea8 <__udivsi3>:
 ea8:	00058613          	mv	a2,a1
 eac:	00050593          	mv	a1,a0
 eb0:	fff00513          	li	a0,-1
 eb4:	02060c63          	beqz	a2,eec <__udivsi3+0x44>
 eb8:	00100693          	li	a3,1
 ebc:	00b67a63          	bgeu	a2,a1,ed0 <__udivsi3+0x28>
 ec0:	00c05863          	blez	a2,ed0 <__udivsi3+0x28>
 ec4:	00161613          	slli	a2,a2,0x1
 ec8:	00169693          	slli	a3,a3,0x1
 ecc:	feb66ae3          	bltu	a2,a1,ec0 <__udivsi3+0x18>
 ed0:	00000513          	li	a0,0
 ed4:	00c5e663          	bltu	a1,a2,ee0 <__udivsi3+0x38>
 ed8:	40c585b3          	sub	a1,a1,a2
 edc:	00d56533          	or	a0,a0,a3
 ee0:	0016d693          	srli	a3,a3,0x1
 ee4:	00165613          	srli	a2,a2,0x1
 ee8:	fe0696e3          	bnez	a3,ed4 <__udivsi3+0x2c>
 eec:	00008067          	ret

00000ef0 <__umodsi3>:
 ef0:	00008293          	mv	t0,ra
 ef4:	fb5ff0ef          	jal	ra,ea8 <__udivsi3>
 ef8:	00058513          	mv	a0,a1
 efc:	00028067          	jr	t0
 f00:	40a00533          	neg	a0,a0
 f04:	00b04863          	bgtz	a1,f14 <__umodsi3+0x24>
 f08:	40b005b3          	neg	a1,a1
 f0c:	f9dff06f          	j	ea8 <__udivsi3>
 f10:	40b005b3          	neg	a1,a1
 f14:	00008293          	mv	t0,ra
 f18:	f91ff0ef          	jal	ra,ea8 <__udivsi3>
 f1c:	40a00533          	neg	a0,a0
 f20:	00028067          	jr	t0

00000f24 <__modsi3>:
 f24:	00008293          	mv	t0,ra
 f28:	0005ca63          	bltz	a1,f3c <__modsi3+0x18>
 f2c:	00054c63          	bltz	a0,f44 <__modsi3+0x20>
 f30:	f79ff0ef          	jal	ra,ea8 <__udivsi3>
 f34:	00058513          	mv	a0,a1
 f38:	00028067          	jr	t0
 f3c:	40b005b3          	neg	a1,a1
 f40:	fe0558e3          	bgez	a0,f30 <__modsi3+0xc>
 f44:	40a00533          	neg	a0,a0
 f48:	f61ff0ef          	jal	ra,ea8 <__udivsi3>
 f4c:	40b00533          	neg	a0,a1
 f50:	00028067          	jr	t0
