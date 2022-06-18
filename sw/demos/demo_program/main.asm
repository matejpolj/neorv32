
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
  e0:	1f458593          	addi	a1,a1,500 # 12d0 <__crt0_copy_data_src_begin>
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
 198:	140000ef          	jal	ra,2d8 <neorv32_pwm_available>
 19c:	0c050a63          	beqz	a0,270 <main+0xf0>
 1a0:	421000ef          	jal	ra,dc0 <neorv32_gpio_available>
 1a4:	0c050663          	beqz	a0,270 <main+0xf0>
 1a8:	359000ef          	jal	ra,d00 <neorv32_rte_setup>
 1ac:	314000ef          	jal	ra,4c0 <neorv32_uart0_available>
 1b0:	02050663          	beqz	a0,1dc <main+0x5c>
 1b4:	00005537          	lui	a0,0x5
 1b8:	00000613          	li	a2,0
 1bc:	00000593          	li	a1,0
 1c0:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3830>
 1c4:	30c000ef          	jal	ra,4d0 <neorv32_uart0_setup>
 1c8:	00000513          	li	a0,0
 1cc:	391000ef          	jal	ra,d5c <neorv32_rte_check_isa>
 1d0:	00001537          	lui	a0,0x1
 1d4:	f6050513          	addi	a0,a0,-160 # f60 <__etext>
 1d8:	3bc000ef          	jal	ra,594 <neorv32_uart0_print>
 1dc:	00000593          	li	a1,0
 1e0:	00000513          	li	a0,0
 1e4:	120000ef          	jal	ra,304 <neorv32_pwm_set>
 1e8:	00000593          	li	a1,0
 1ec:	00100513          	li	a0,1
 1f0:	114000ef          	jal	ra,304 <neorv32_pwm_set>
 1f4:	00300513          	li	a0,3
 1f8:	0f0000ef          	jal	ra,2e8 <neorv32_pwm_setup>
 1fc:	00000413          	li	s0,0
 200:	00000493          	li	s1,0
 204:	00100993          	li	s3,1
 208:	00900513          	li	a0,9
 20c:	084000ef          	jal	ra,290 <getButtonState>
 210:	00050913          	mv	s2,a0
 214:	00a00513          	li	a0,10
 218:	078000ef          	jal	ra,290 <getButtonState>
 21c:	0ff97913          	andi	s2,s2,255
 220:	0ff57513          	andi	a0,a0,255
 224:	01391a63          	bne	s2,s3,238 <main+0xb8>
 228:	03248493          	addi	s1,s1,50
 22c:	fce40413          	addi	s0,s0,-50
 230:	0ff4f493          	andi	s1,s1,255
 234:	0ff47413          	andi	s0,s0,255
 238:	01351a63          	bne	a0,s3,24c <main+0xcc>
 23c:	03240413          	addi	s0,s0,50
 240:	fce48493          	addi	s1,s1,-50
 244:	0ff47413          	andi	s0,s0,255
 248:	0ff4f493          	andi	s1,s1,255
 24c:	00048593          	mv	a1,s1
 250:	00000513          	li	a0,0
 254:	0b0000ef          	jal	ra,304 <neorv32_pwm_set>
 258:	00040593          	mv	a1,s0
 25c:	00100513          	li	a0,1
 260:	0a4000ef          	jal	ra,304 <neorv32_pwm_set>
 264:	00a00513          	li	a0,10
 268:	544000ef          	jal	ra,7ac <neorv32_cpu_delay_ms>
 26c:	f9dff06f          	j	208 <main+0x88>
 270:	01c12083          	lw	ra,28(sp)
 274:	01812403          	lw	s0,24(sp)
 278:	01412483          	lw	s1,20(sp)
 27c:	01012903          	lw	s2,16(sp)
 280:	00c12983          	lw	s3,12(sp)
 284:	00100513          	li	a0,1
 288:	02010113          	addi	sp,sp,32
 28c:	00008067          	ret

00000290 <getButtonState>:
 290:	ff010113          	addi	sp,sp,-16
 294:	00112623          	sw	ra,12(sp)
 298:	00812423          	sw	s0,8(sp)
 29c:	00912223          	sw	s1,4(sp)
 2a0:	00050493          	mv	s1,a0
 2a4:	32d000ef          	jal	ra,dd0 <neorv32_gpio_pin_get>
 2a8:	00050413          	mv	s0,a0
 2ac:	00500513          	li	a0,5
 2b0:	4fc000ef          	jal	ra,7ac <neorv32_cpu_delay_ms>
 2b4:	00048513          	mv	a0,s1
 2b8:	319000ef          	jal	ra,dd0 <neorv32_gpio_pin_get>
 2bc:	00a40463          	beq	s0,a0,2c4 <getButtonState+0x34>
 2c0:	00200513          	li	a0,2
 2c4:	00c12083          	lw	ra,12(sp)
 2c8:	00812403          	lw	s0,8(sp)
 2cc:	00412483          	lw	s1,4(sp)
 2d0:	01010113          	addi	sp,sp,16
 2d4:	00008067          	ret

000002d8 <neorv32_pwm_available>:
 2d8:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 2dc:	01555513          	srli	a0,a0,0x15
 2e0:	00157513          	andi	a0,a0,1
 2e4:	00008067          	ret

000002e8 <neorv32_pwm_setup>:
 2e8:	00757513          	andi	a0,a0,7
 2ec:	e8000793          	li	a5,-384
 2f0:	00151513          	slli	a0,a0,0x1
 2f4:	0007a023          	sw	zero,0(a5)
 2f8:	00156513          	ori	a0,a0,1
 2fc:	00a7a023          	sw	a0,0(a5)
 300:	00008067          	ret

00000304 <neorv32_pwm_set>:
 304:	03b00793          	li	a5,59
 308:	02a7e863          	bltu	a5,a0,338 <neorv32_pwm_set+0x34>
 30c:	00357713          	andi	a4,a0,3
 310:	0fc57513          	andi	a0,a0,252
 314:	e8452683          	lw	a3,-380(a0)
 318:	00371713          	slli	a4,a4,0x3
 31c:	0ff00793          	li	a5,255
 320:	00e797b3          	sll	a5,a5,a4
 324:	fff7c793          	not	a5,a5
 328:	00d7f7b3          	and	a5,a5,a3
 32c:	00e595b3          	sll	a1,a1,a4
 330:	00f5e5b3          	or	a1,a1,a5
 334:	e8b52223          	sw	a1,-380(a0)
 338:	00008067          	ret

0000033c <neorv32_mtime_get_time>:
 33c:	f9402583          	lw	a1,-108(zero) # ffffff94 <__ctr0_io_space_begin+0x194>
 340:	f9002503          	lw	a0,-112(zero) # ffffff90 <__ctr0_io_space_begin+0x190>
 344:	f9402783          	lw	a5,-108(zero) # ffffff94 <__ctr0_io_space_begin+0x194>
 348:	fef59ae3          	bne	a1,a5,33c <neorv32_mtime_get_time>
 34c:	00008067          	ret

00000350 <__neorv32_uart_itoa>:
 350:	fd010113          	addi	sp,sp,-48
 354:	02812423          	sw	s0,40(sp)
 358:	02912223          	sw	s1,36(sp)
 35c:	03212023          	sw	s2,32(sp)
 360:	01312e23          	sw	s3,28(sp)
 364:	01412c23          	sw	s4,24(sp)
 368:	02112623          	sw	ra,44(sp)
 36c:	01512a23          	sw	s5,20(sp)
 370:	00001a37          	lui	s4,0x1
 374:	00050493          	mv	s1,a0
 378:	00058413          	mv	s0,a1
 37c:	00058523          	sb	zero,10(a1)
 380:	00000993          	li	s3,0
 384:	00410913          	addi	s2,sp,4
 388:	f7ca0a13          	addi	s4,s4,-132 # f7c <numbers.1>
 38c:	00a00593          	li	a1,10
 390:	00048513          	mv	a0,s1
 394:	369000ef          	jal	ra,efc <__umodsi3>
 398:	00aa0533          	add	a0,s4,a0
 39c:	00054783          	lbu	a5,0(a0)
 3a0:	01390ab3          	add	s5,s2,s3
 3a4:	00048513          	mv	a0,s1
 3a8:	00fa8023          	sb	a5,0(s5)
 3ac:	00a00593          	li	a1,10
 3b0:	305000ef          	jal	ra,eb4 <__udivsi3>
 3b4:	00198993          	addi	s3,s3,1
 3b8:	00a00793          	li	a5,10
 3bc:	00050493          	mv	s1,a0
 3c0:	fcf996e3          	bne	s3,a5,38c <__neorv32_uart_itoa+0x3c>
 3c4:	00090693          	mv	a3,s2
 3c8:	00900713          	li	a4,9
 3cc:	03000613          	li	a2,48
 3d0:	0096c583          	lbu	a1,9(a3)
 3d4:	00070793          	mv	a5,a4
 3d8:	fff70713          	addi	a4,a4,-1
 3dc:	01071713          	slli	a4,a4,0x10
 3e0:	01075713          	srli	a4,a4,0x10
 3e4:	00c59a63          	bne	a1,a2,3f8 <__neorv32_uart_itoa+0xa8>
 3e8:	000684a3          	sb	zero,9(a3)
 3ec:	fff68693          	addi	a3,a3,-1
 3f0:	fe0710e3          	bnez	a4,3d0 <__neorv32_uart_itoa+0x80>
 3f4:	00000793          	li	a5,0
 3f8:	00f907b3          	add	a5,s2,a5
 3fc:	00000593          	li	a1,0
 400:	0007c703          	lbu	a4,0(a5)
 404:	00070c63          	beqz	a4,41c <__neorv32_uart_itoa+0xcc>
 408:	00158693          	addi	a3,a1,1
 40c:	00b405b3          	add	a1,s0,a1
 410:	00e58023          	sb	a4,0(a1)
 414:	01069593          	slli	a1,a3,0x10
 418:	0105d593          	srli	a1,a1,0x10
 41c:	fff78713          	addi	a4,a5,-1
 420:	02f91863          	bne	s2,a5,450 <__neorv32_uart_itoa+0x100>
 424:	00b40433          	add	s0,s0,a1
 428:	00040023          	sb	zero,0(s0)
 42c:	02c12083          	lw	ra,44(sp)
 430:	02812403          	lw	s0,40(sp)
 434:	02412483          	lw	s1,36(sp)
 438:	02012903          	lw	s2,32(sp)
 43c:	01c12983          	lw	s3,28(sp)
 440:	01812a03          	lw	s4,24(sp)
 444:	01412a83          	lw	s5,20(sp)
 448:	03010113          	addi	sp,sp,48
 44c:	00008067          	ret
 450:	00070793          	mv	a5,a4
 454:	fadff06f          	j	400 <__neorv32_uart_itoa+0xb0>

00000458 <__neorv32_uart_tohex>:
 458:	00001637          	lui	a2,0x1
 45c:	00758693          	addi	a3,a1,7
 460:	00000713          	li	a4,0
 464:	f8860613          	addi	a2,a2,-120 # f88 <symbols.0>
 468:	02000813          	li	a6,32
 46c:	00e557b3          	srl	a5,a0,a4
 470:	00f7f793          	andi	a5,a5,15
 474:	00f607b3          	add	a5,a2,a5
 478:	0007c783          	lbu	a5,0(a5)
 47c:	00470713          	addi	a4,a4,4
 480:	fff68693          	addi	a3,a3,-1
 484:	00f680a3          	sb	a5,1(a3)
 488:	ff0712e3          	bne	a4,a6,46c <__neorv32_uart_tohex+0x14>
 48c:	00058423          	sb	zero,8(a1)
 490:	00008067          	ret

00000494 <__neorv32_uart_touppercase.constprop.0>:
 494:	00b50693          	addi	a3,a0,11
 498:	01900613          	li	a2,25
 49c:	00054783          	lbu	a5,0(a0)
 4a0:	f9f78713          	addi	a4,a5,-97
 4a4:	0ff77713          	andi	a4,a4,255
 4a8:	00e66663          	bltu	a2,a4,4b4 <__neorv32_uart_touppercase.constprop.0+0x20>
 4ac:	fe078793          	addi	a5,a5,-32
 4b0:	00f50023          	sb	a5,0(a0)
 4b4:	00150513          	addi	a0,a0,1
 4b8:	fed512e3          	bne	a0,a3,49c <__neorv32_uart_touppercase.constprop.0+0x8>
 4bc:	00008067          	ret

000004c0 <neorv32_uart0_available>:
 4c0:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 4c4:	01255513          	srli	a0,a0,0x12
 4c8:	00157513          	andi	a0,a0,1
 4cc:	00008067          	ret

000004d0 <neorv32_uart0_setup>:
 4d0:	ff010113          	addi	sp,sp,-16
 4d4:	00812423          	sw	s0,8(sp)
 4d8:	00912223          	sw	s1,4(sp)
 4dc:	00112623          	sw	ra,12(sp)
 4e0:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 4e4:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 4e8:	00058413          	mv	s0,a1
 4ec:	00151593          	slli	a1,a0,0x1
 4f0:	00078513          	mv	a0,a5
 4f4:	00060493          	mv	s1,a2
 4f8:	1bd000ef          	jal	ra,eb4 <__udivsi3>
 4fc:	01051513          	slli	a0,a0,0x10
 500:	000017b7          	lui	a5,0x1
 504:	01055513          	srli	a0,a0,0x10
 508:	00000713          	li	a4,0
 50c:	ffe78793          	addi	a5,a5,-2 # ffe <symbols.0+0x76>
 510:	04a7e463          	bltu	a5,a0,558 <neorv32_uart0_setup+0x88>
 514:	0034f793          	andi	a5,s1,3
 518:	00347413          	andi	s0,s0,3
 51c:	fff50513          	addi	a0,a0,-1
 520:	01479793          	slli	a5,a5,0x14
 524:	01641413          	slli	s0,s0,0x16
 528:	00f567b3          	or	a5,a0,a5
 52c:	0087e7b3          	or	a5,a5,s0
 530:	01871713          	slli	a4,a4,0x18
 534:	00c12083          	lw	ra,12(sp)
 538:	00812403          	lw	s0,8(sp)
 53c:	00e7e7b3          	or	a5,a5,a4
 540:	10000737          	lui	a4,0x10000
 544:	00e7e7b3          	or	a5,a5,a4
 548:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 54c:	00412483          	lw	s1,4(sp)
 550:	01010113          	addi	sp,sp,16
 554:	00008067          	ret
 558:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffed2e>
 55c:	0fd6f693          	andi	a3,a3,253
 560:	00069a63          	bnez	a3,574 <neorv32_uart0_setup+0xa4>
 564:	00355513          	srli	a0,a0,0x3
 568:	00170713          	addi	a4,a4,1
 56c:	0ff77713          	andi	a4,a4,255
 570:	fa1ff06f          	j	510 <neorv32_uart0_setup+0x40>
 574:	00155513          	srli	a0,a0,0x1
 578:	ff1ff06f          	j	568 <neorv32_uart0_setup+0x98>

0000057c <neorv32_uart0_putc>:
 57c:	00040737          	lui	a4,0x40
 580:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 584:	00e7f7b3          	and	a5,a5,a4
 588:	fe079ce3          	bnez	a5,580 <neorv32_uart0_putc+0x4>
 58c:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 590:	00008067          	ret

00000594 <neorv32_uart0_print>:
 594:	ff010113          	addi	sp,sp,-16
 598:	00812423          	sw	s0,8(sp)
 59c:	01212023          	sw	s2,0(sp)
 5a0:	00112623          	sw	ra,12(sp)
 5a4:	00912223          	sw	s1,4(sp)
 5a8:	00050413          	mv	s0,a0
 5ac:	00a00913          	li	s2,10
 5b0:	00044483          	lbu	s1,0(s0)
 5b4:	00140413          	addi	s0,s0,1
 5b8:	00049e63          	bnez	s1,5d4 <neorv32_uart0_print+0x40>
 5bc:	00c12083          	lw	ra,12(sp)
 5c0:	00812403          	lw	s0,8(sp)
 5c4:	00412483          	lw	s1,4(sp)
 5c8:	00012903          	lw	s2,0(sp)
 5cc:	01010113          	addi	sp,sp,16
 5d0:	00008067          	ret
 5d4:	01249663          	bne	s1,s2,5e0 <neorv32_uart0_print+0x4c>
 5d8:	00d00513          	li	a0,13
 5dc:	fa1ff0ef          	jal	ra,57c <neorv32_uart0_putc>
 5e0:	00048513          	mv	a0,s1
 5e4:	f99ff0ef          	jal	ra,57c <neorv32_uart0_putc>
 5e8:	fc9ff06f          	j	5b0 <neorv32_uart0_print+0x1c>

000005ec <neorv32_uart0_printf>:
 5ec:	fa010113          	addi	sp,sp,-96
 5f0:	04f12a23          	sw	a5,84(sp)
 5f4:	04410793          	addi	a5,sp,68
 5f8:	02812c23          	sw	s0,56(sp)
 5fc:	03212823          	sw	s2,48(sp)
 600:	03312623          	sw	s3,44(sp)
 604:	03512223          	sw	s5,36(sp)
 608:	03612023          	sw	s6,32(sp)
 60c:	01712e23          	sw	s7,28(sp)
 610:	01812c23          	sw	s8,24(sp)
 614:	01912a23          	sw	s9,20(sp)
 618:	02112e23          	sw	ra,60(sp)
 61c:	02912a23          	sw	s1,52(sp)
 620:	03412423          	sw	s4,40(sp)
 624:	00050413          	mv	s0,a0
 628:	04b12223          	sw	a1,68(sp)
 62c:	04c12423          	sw	a2,72(sp)
 630:	04d12623          	sw	a3,76(sp)
 634:	04e12823          	sw	a4,80(sp)
 638:	05012c23          	sw	a6,88(sp)
 63c:	05112e23          	sw	a7,92(sp)
 640:	00f12023          	sw	a5,0(sp)
 644:	02500a93          	li	s5,37
 648:	00a00b13          	li	s6,10
 64c:	07000913          	li	s2,112
 650:	05800993          	li	s3,88
 654:	07500b93          	li	s7,117
 658:	07800c13          	li	s8,120
 65c:	07300c93          	li	s9,115
 660:	00044483          	lbu	s1,0(s0)
 664:	02049c63          	bnez	s1,69c <neorv32_uart0_printf+0xb0>
 668:	03c12083          	lw	ra,60(sp)
 66c:	03812403          	lw	s0,56(sp)
 670:	03412483          	lw	s1,52(sp)
 674:	03012903          	lw	s2,48(sp)
 678:	02c12983          	lw	s3,44(sp)
 67c:	02812a03          	lw	s4,40(sp)
 680:	02412a83          	lw	s5,36(sp)
 684:	02012b03          	lw	s6,32(sp)
 688:	01c12b83          	lw	s7,28(sp)
 68c:	01812c03          	lw	s8,24(sp)
 690:	01412c83          	lw	s9,20(sp)
 694:	06010113          	addi	sp,sp,96
 698:	00008067          	ret
 69c:	0f549c63          	bne	s1,s5,794 <neorv32_uart0_printf+0x1a8>
 6a0:	00240a13          	addi	s4,s0,2
 6a4:	00144403          	lbu	s0,1(s0)
 6a8:	0d240263          	beq	s0,s2,76c <neorv32_uart0_printf+0x180>
 6ac:	06896463          	bltu	s2,s0,714 <neorv32_uart0_printf+0x128>
 6b0:	06300793          	li	a5,99
 6b4:	08f40463          	beq	s0,a5,73c <neorv32_uart0_printf+0x150>
 6b8:	0087ec63          	bltu	a5,s0,6d0 <neorv32_uart0_printf+0xe4>
 6bc:	0b340863          	beq	s0,s3,76c <neorv32_uart0_printf+0x180>
 6c0:	02500513          	li	a0,37
 6c4:	eb9ff0ef          	jal	ra,57c <neorv32_uart0_putc>
 6c8:	00040513          	mv	a0,s0
 6cc:	0800006f          	j	74c <neorv32_uart0_printf+0x160>
 6d0:	06400793          	li	a5,100
 6d4:	00f40663          	beq	s0,a5,6e0 <neorv32_uart0_printf+0xf4>
 6d8:	06900793          	li	a5,105
 6dc:	fef412e3          	bne	s0,a5,6c0 <neorv32_uart0_printf+0xd4>
 6e0:	00012783          	lw	a5,0(sp)
 6e4:	0007a403          	lw	s0,0(a5)
 6e8:	00478713          	addi	a4,a5,4
 6ec:	00e12023          	sw	a4,0(sp)
 6f0:	00045863          	bgez	s0,700 <neorv32_uart0_printf+0x114>
 6f4:	02d00513          	li	a0,45
 6f8:	40800433          	neg	s0,s0
 6fc:	e81ff0ef          	jal	ra,57c <neorv32_uart0_putc>
 700:	00410593          	addi	a1,sp,4
 704:	00040513          	mv	a0,s0
 708:	c49ff0ef          	jal	ra,350 <__neorv32_uart_itoa>
 70c:	00410513          	addi	a0,sp,4
 710:	0200006f          	j	730 <neorv32_uart0_printf+0x144>
 714:	05740063          	beq	s0,s7,754 <neorv32_uart0_printf+0x168>
 718:	05840a63          	beq	s0,s8,76c <neorv32_uart0_printf+0x180>
 71c:	fb9412e3          	bne	s0,s9,6c0 <neorv32_uart0_printf+0xd4>
 720:	00012783          	lw	a5,0(sp)
 724:	0007a503          	lw	a0,0(a5)
 728:	00478713          	addi	a4,a5,4
 72c:	00e12023          	sw	a4,0(sp)
 730:	e65ff0ef          	jal	ra,594 <neorv32_uart0_print>
 734:	000a0413          	mv	s0,s4
 738:	f29ff06f          	j	660 <neorv32_uart0_printf+0x74>
 73c:	00012783          	lw	a5,0(sp)
 740:	0007c503          	lbu	a0,0(a5)
 744:	00478713          	addi	a4,a5,4
 748:	00e12023          	sw	a4,0(sp)
 74c:	e31ff0ef          	jal	ra,57c <neorv32_uart0_putc>
 750:	fe5ff06f          	j	734 <neorv32_uart0_printf+0x148>
 754:	00012783          	lw	a5,0(sp)
 758:	00410593          	addi	a1,sp,4
 75c:	00478713          	addi	a4,a5,4
 760:	0007a503          	lw	a0,0(a5)
 764:	00e12023          	sw	a4,0(sp)
 768:	fa1ff06f          	j	708 <neorv32_uart0_printf+0x11c>
 76c:	00012783          	lw	a5,0(sp)
 770:	00410593          	addi	a1,sp,4
 774:	0007a503          	lw	a0,0(a5)
 778:	00478713          	addi	a4,a5,4
 77c:	00e12023          	sw	a4,0(sp)
 780:	cd9ff0ef          	jal	ra,458 <__neorv32_uart_tohex>
 784:	f93414e3          	bne	s0,s3,70c <neorv32_uart0_printf+0x120>
 788:	00410513          	addi	a0,sp,4
 78c:	d09ff0ef          	jal	ra,494 <__neorv32_uart_touppercase.constprop.0>
 790:	f7dff06f          	j	70c <neorv32_uart0_printf+0x120>
 794:	01649663          	bne	s1,s6,7a0 <neorv32_uart0_printf+0x1b4>
 798:	00d00513          	li	a0,13
 79c:	de1ff0ef          	jal	ra,57c <neorv32_uart0_putc>
 7a0:	00140a13          	addi	s4,s0,1
 7a4:	00048513          	mv	a0,s1
 7a8:	fa5ff06f          	j	74c <neorv32_uart0_printf+0x160>

000007ac <neorv32_cpu_delay_ms>:
 7ac:	fe010113          	addi	sp,sp,-32
 7b0:	00a12623          	sw	a0,12(sp)
 7b4:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 7b8:	3e800593          	li	a1,1000
 7bc:	00112e23          	sw	ra,28(sp)
 7c0:	00812c23          	sw	s0,24(sp)
 7c4:	00912a23          	sw	s1,20(sp)
 7c8:	6ec000ef          	jal	ra,eb4 <__udivsi3>
 7cc:	00c12603          	lw	a2,12(sp)
 7d0:	00000693          	li	a3,0
 7d4:	00000593          	li	a1,0
 7d8:	644000ef          	jal	ra,e1c <__muldi3>
 7dc:	fe802783          	lw	a5,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 7e0:	00020737          	lui	a4,0x20
 7e4:	00050413          	mv	s0,a0
 7e8:	00e7f7b3          	and	a5,a5,a4
 7ec:	00058493          	mv	s1,a1
 7f0:	02078e63          	beqz	a5,82c <neorv32_cpu_delay_ms+0x80>
 7f4:	b49ff0ef          	jal	ra,33c <neorv32_mtime_get_time>
 7f8:	00850433          	add	s0,a0,s0
 7fc:	00a43533          	sltu	a0,s0,a0
 800:	009584b3          	add	s1,a1,s1
 804:	009504b3          	add	s1,a0,s1
 808:	b35ff0ef          	jal	ra,33c <neorv32_mtime_get_time>
 80c:	fe95eee3          	bltu	a1,s1,808 <neorv32_cpu_delay_ms+0x5c>
 810:	00b49463          	bne	s1,a1,818 <neorv32_cpu_delay_ms+0x6c>
 814:	fe856ae3          	bltu	a0,s0,808 <neorv32_cpu_delay_ms+0x5c>
 818:	01c12083          	lw	ra,28(sp)
 81c:	01812403          	lw	s0,24(sp)
 820:	01412483          	lw	s1,20(sp)
 824:	02010113          	addi	sp,sp,32
 828:	00008067          	ret
 82c:	01c59493          	slli	s1,a1,0x1c
 830:	00455513          	srli	a0,a0,0x4
 834:	00a4e533          	or	a0,s1,a0

00000838 <__neorv32_cpu_delay_ms_start>:
 838:	00050a63          	beqz	a0,84c <__neorv32_cpu_delay_ms_end>
 83c:	00050863          	beqz	a0,84c <__neorv32_cpu_delay_ms_end>
 840:	fff50513          	addi	a0,a0,-1
 844:	00000013          	nop
 848:	ff1ff06f          	j	838 <__neorv32_cpu_delay_ms_start>

0000084c <__neorv32_cpu_delay_ms_end>:
 84c:	fcdff06f          	j	818 <neorv32_cpu_delay_ms+0x6c>

00000850 <__neorv32_rte_core>:
 850:	fc010113          	addi	sp,sp,-64
 854:	02112e23          	sw	ra,60(sp)
 858:	02512c23          	sw	t0,56(sp)
 85c:	02612a23          	sw	t1,52(sp)
 860:	02712823          	sw	t2,48(sp)
 864:	02a12623          	sw	a0,44(sp)
 868:	02b12423          	sw	a1,40(sp)
 86c:	02c12223          	sw	a2,36(sp)
 870:	02d12023          	sw	a3,32(sp)
 874:	00e12e23          	sw	a4,28(sp)
 878:	00f12c23          	sw	a5,24(sp)
 87c:	01012a23          	sw	a6,20(sp)
 880:	01112823          	sw	a7,16(sp)
 884:	01c12623          	sw	t3,12(sp)
 888:	01d12423          	sw	t4,8(sp)
 88c:	01e12223          	sw	t5,4(sp)
 890:	01f12023          	sw	t6,0(sp)
 894:	341026f3          	csrr	a3,mepc
 898:	34069073          	csrw	mscratch,a3
 89c:	342027f3          	csrr	a5,mcause
 8a0:	0607c063          	bltz	a5,900 <__neorv32_rte_core+0xb0>
 8a4:	0006d703          	lhu	a4,0(a3)
 8a8:	01071713          	slli	a4,a4,0x10
 8ac:	01075713          	srli	a4,a4,0x10
 8b0:	00468593          	addi	a1,a3,4
 8b4:	30102673          	csrr	a2,misa
 8b8:	00467613          	andi	a2,a2,4
 8bc:	00060a63          	beqz	a2,8d0 <__neorv32_rte_core+0x80>
 8c0:	00377713          	andi	a4,a4,3
 8c4:	00300613          	li	a2,3
 8c8:	00c70463          	beq	a4,a2,8d0 <__neorv32_rte_core+0x80>
 8cc:	00268593          	addi	a1,a3,2
 8d0:	34159073          	csrw	mepc,a1
 8d4:	00b00713          	li	a4,11
 8d8:	00f77863          	bgeu	a4,a5,8e8 <__neorv32_rte_core+0x98>
 8dc:	000017b7          	lui	a5,0x1
 8e0:	ad478793          	addi	a5,a5,-1324 # ad4 <__neorv32_rte_debug_exc_handler>
 8e4:	0500006f          	j	934 <__neorv32_rte_core+0xe4>
 8e8:	00001737          	lui	a4,0x1
 8ec:	00279793          	slli	a5,a5,0x2
 8f0:	f9c70713          	addi	a4,a4,-100 # f9c <symbols.0+0x14>
 8f4:	00e787b3          	add	a5,a5,a4
 8f8:	0007a783          	lw	a5,0(a5)
 8fc:	00078067          	jr	a5
 900:	80000737          	lui	a4,0x80000
 904:	ffd74713          	xori	a4,a4,-3
 908:	00e787b3          	add	a5,a5,a4
 90c:	01c00713          	li	a4,28
 910:	fcf766e3          	bltu	a4,a5,8dc <__neorv32_rte_core+0x8c>
 914:	00001737          	lui	a4,0x1
 918:	00279793          	slli	a5,a5,0x2
 91c:	fcc70713          	addi	a4,a4,-52 # fcc <symbols.0+0x44>
 920:	00e787b3          	add	a5,a5,a4
 924:	0007a783          	lw	a5,0(a5)
 928:	00078067          	jr	a5
 92c:	800007b7          	lui	a5,0x80000
 930:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 934:	000780e7          	jalr	a5
 938:	03c12083          	lw	ra,60(sp)
 93c:	03812283          	lw	t0,56(sp)
 940:	03412303          	lw	t1,52(sp)
 944:	03012383          	lw	t2,48(sp)
 948:	02c12503          	lw	a0,44(sp)
 94c:	02812583          	lw	a1,40(sp)
 950:	02412603          	lw	a2,36(sp)
 954:	02012683          	lw	a3,32(sp)
 958:	01c12703          	lw	a4,28(sp)
 95c:	01812783          	lw	a5,24(sp)
 960:	01412803          	lw	a6,20(sp)
 964:	01012883          	lw	a7,16(sp)
 968:	00c12e03          	lw	t3,12(sp)
 96c:	00812e83          	lw	t4,8(sp)
 970:	00412f03          	lw	t5,4(sp)
 974:	00012f83          	lw	t6,0(sp)
 978:	04010113          	addi	sp,sp,64
 97c:	30200073          	mret
 980:	800007b7          	lui	a5,0x80000
 984:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 988:	fadff06f          	j	934 <__neorv32_rte_core+0xe4>
 98c:	8081a783          	lw	a5,-2040(gp) # 80000008 <__neorv32_rte_vector_lut+0x8>
 990:	fa5ff06f          	j	934 <__neorv32_rte_core+0xe4>
 994:	80c1a783          	lw	a5,-2036(gp) # 8000000c <__neorv32_rte_vector_lut+0xc>
 998:	f9dff06f          	j	934 <__neorv32_rte_core+0xe4>
 99c:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
 9a0:	f95ff06f          	j	934 <__neorv32_rte_core+0xe4>
 9a4:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
 9a8:	f8dff06f          	j	934 <__neorv32_rte_core+0xe4>
 9ac:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
 9b0:	f85ff06f          	j	934 <__neorv32_rte_core+0xe4>
 9b4:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
 9b8:	f7dff06f          	j	934 <__neorv32_rte_core+0xe4>
 9bc:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
 9c0:	f75ff06f          	j	934 <__neorv32_rte_core+0xe4>
 9c4:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
 9c8:	f6dff06f          	j	934 <__neorv32_rte_core+0xe4>
 9cc:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
 9d0:	f65ff06f          	j	934 <__neorv32_rte_core+0xe4>
 9d4:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
 9d8:	f5dff06f          	j	934 <__neorv32_rte_core+0xe4>
 9dc:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
 9e0:	f55ff06f          	j	934 <__neorv32_rte_core+0xe4>
 9e4:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
 9e8:	f4dff06f          	j	934 <__neorv32_rte_core+0xe4>
 9ec:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
 9f0:	f45ff06f          	j	934 <__neorv32_rte_core+0xe4>
 9f4:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
 9f8:	f3dff06f          	j	934 <__neorv32_rte_core+0xe4>
 9fc:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 a00:	f35ff06f          	j	934 <__neorv32_rte_core+0xe4>
 a04:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 a08:	f2dff06f          	j	934 <__neorv32_rte_core+0xe4>
 a0c:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 a10:	f25ff06f          	j	934 <__neorv32_rte_core+0xe4>
 a14:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 a18:	f1dff06f          	j	934 <__neorv32_rte_core+0xe4>
 a1c:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 a20:	f15ff06f          	j	934 <__neorv32_rte_core+0xe4>
 a24:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 a28:	f0dff06f          	j	934 <__neorv32_rte_core+0xe4>
 a2c:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 a30:	f05ff06f          	j	934 <__neorv32_rte_core+0xe4>
 a34:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 a38:	efdff06f          	j	934 <__neorv32_rte_core+0xe4>
 a3c:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 a40:	ef5ff06f          	j	934 <__neorv32_rte_core+0xe4>
 a44:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 a48:	eedff06f          	j	934 <__neorv32_rte_core+0xe4>
 a4c:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 a50:	ee5ff06f          	j	934 <__neorv32_rte_core+0xe4>
 a54:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 a58:	eddff06f          	j	934 <__neorv32_rte_core+0xe4>
 a5c:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 a60:	ed5ff06f          	j	934 <__neorv32_rte_core+0xe4>

00000a64 <__neorv32_rte_print_hex_word>:
 a64:	fe010113          	addi	sp,sp,-32
 a68:	01212823          	sw	s2,16(sp)
 a6c:	00050913          	mv	s2,a0
 a70:	00001537          	lui	a0,0x1
 a74:	00912a23          	sw	s1,20(sp)
 a78:	04050513          	addi	a0,a0,64 # 1040 <symbols.0+0xb8>
 a7c:	000014b7          	lui	s1,0x1
 a80:	00812c23          	sw	s0,24(sp)
 a84:	01312623          	sw	s3,12(sp)
 a88:	00112e23          	sw	ra,28(sp)
 a8c:	01c00413          	li	s0,28
 a90:	b05ff0ef          	jal	ra,594 <neorv32_uart0_print>
 a94:	2c048493          	addi	s1,s1,704 # 12c0 <hex_symbols.0>
 a98:	ffc00993          	li	s3,-4
 a9c:	008957b3          	srl	a5,s2,s0
 aa0:	00f7f793          	andi	a5,a5,15
 aa4:	00f487b3          	add	a5,s1,a5
 aa8:	0007c503          	lbu	a0,0(a5)
 aac:	ffc40413          	addi	s0,s0,-4
 ab0:	acdff0ef          	jal	ra,57c <neorv32_uart0_putc>
 ab4:	ff3414e3          	bne	s0,s3,a9c <__neorv32_rte_print_hex_word+0x38>
 ab8:	01c12083          	lw	ra,28(sp)
 abc:	01812403          	lw	s0,24(sp)
 ac0:	01412483          	lw	s1,20(sp)
 ac4:	01012903          	lw	s2,16(sp)
 ac8:	00c12983          	lw	s3,12(sp)
 acc:	02010113          	addi	sp,sp,32
 ad0:	00008067          	ret

00000ad4 <__neorv32_rte_debug_exc_handler>:
 ad4:	ff010113          	addi	sp,sp,-16
 ad8:	00112623          	sw	ra,12(sp)
 adc:	00812423          	sw	s0,8(sp)
 ae0:	00912223          	sw	s1,4(sp)
 ae4:	9ddff0ef          	jal	ra,4c0 <neorv32_uart0_available>
 ae8:	1c050863          	beqz	a0,cb8 <__neorv32_rte_debug_exc_handler+0x1e4>
 aec:	00001537          	lui	a0,0x1
 af0:	04450513          	addi	a0,a0,68 # 1044 <symbols.0+0xbc>
 af4:	aa1ff0ef          	jal	ra,594 <neorv32_uart0_print>
 af8:	34202473          	csrr	s0,mcause
 afc:	00900713          	li	a4,9
 b00:	00f47793          	andi	a5,s0,15
 b04:	03078493          	addi	s1,a5,48
 b08:	00f77463          	bgeu	a4,a5,b10 <__neorv32_rte_debug_exc_handler+0x3c>
 b0c:	05778493          	addi	s1,a5,87
 b10:	00b00793          	li	a5,11
 b14:	0087ee63          	bltu	a5,s0,b30 <__neorv32_rte_debug_exc_handler+0x5c>
 b18:	00001737          	lui	a4,0x1
 b1c:	00241793          	slli	a5,s0,0x2
 b20:	20870713          	addi	a4,a4,520 # 1208 <symbols.0+0x280>
 b24:	00e787b3          	add	a5,a5,a4
 b28:	0007a783          	lw	a5,0(a5)
 b2c:	00078067          	jr	a5
 b30:	800007b7          	lui	a5,0x80000
 b34:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 b38:	14e40e63          	beq	s0,a4,c94 <__neorv32_rte_debug_exc_handler+0x1c0>
 b3c:	02876a63          	bltu	a4,s0,b70 <__neorv32_rte_debug_exc_handler+0x9c>
 b40:	00378713          	addi	a4,a5,3
 b44:	12e40c63          	beq	s0,a4,c7c <__neorv32_rte_debug_exc_handler+0x1a8>
 b48:	00778793          	addi	a5,a5,7
 b4c:	12f40e63          	beq	s0,a5,c88 <__neorv32_rte_debug_exc_handler+0x1b4>
 b50:	00001537          	lui	a0,0x1
 b54:	1a450513          	addi	a0,a0,420 # 11a4 <symbols.0+0x21c>
 b58:	a3dff0ef          	jal	ra,594 <neorv32_uart0_print>
 b5c:	00040513          	mv	a0,s0
 b60:	f05ff0ef          	jal	ra,a64 <__neorv32_rte_print_hex_word>
 b64:	00100793          	li	a5,1
 b68:	08f40c63          	beq	s0,a5,c00 <__neorv32_rte_debug_exc_handler+0x12c>
 b6c:	0280006f          	j	b94 <__neorv32_rte_debug_exc_handler+0xc0>
 b70:	ff07c793          	xori	a5,a5,-16
 b74:	00f407b3          	add	a5,s0,a5
 b78:	00f00713          	li	a4,15
 b7c:	fcf76ae3          	bltu	a4,a5,b50 <__neorv32_rte_debug_exc_handler+0x7c>
 b80:	00001537          	lui	a0,0x1
 b84:	19450513          	addi	a0,a0,404 # 1194 <symbols.0+0x20c>
 b88:	a0dff0ef          	jal	ra,594 <neorv32_uart0_print>
 b8c:	00048513          	mv	a0,s1
 b90:	9edff0ef          	jal	ra,57c <neorv32_uart0_putc>
 b94:	ffd47413          	andi	s0,s0,-3
 b98:	00500793          	li	a5,5
 b9c:	06f40263          	beq	s0,a5,c00 <__neorv32_rte_debug_exc_handler+0x12c>
 ba0:	00001537          	lui	a0,0x1
 ba4:	1e850513          	addi	a0,a0,488 # 11e8 <symbols.0+0x260>
 ba8:	9edff0ef          	jal	ra,594 <neorv32_uart0_print>
 bac:	34002573          	csrr	a0,mscratch
 bb0:	eb5ff0ef          	jal	ra,a64 <__neorv32_rte_print_hex_word>
 bb4:	00001537          	lui	a0,0x1
 bb8:	1f050513          	addi	a0,a0,496 # 11f0 <symbols.0+0x268>
 bbc:	9d9ff0ef          	jal	ra,594 <neorv32_uart0_print>
 bc0:	34302573          	csrr	a0,mtval
 bc4:	ea1ff0ef          	jal	ra,a64 <__neorv32_rte_print_hex_word>
 bc8:	00812403          	lw	s0,8(sp)
 bcc:	00c12083          	lw	ra,12(sp)
 bd0:	00412483          	lw	s1,4(sp)
 bd4:	00001537          	lui	a0,0x1
 bd8:	1fc50513          	addi	a0,a0,508 # 11fc <symbols.0+0x274>
 bdc:	01010113          	addi	sp,sp,16
 be0:	9b5ff06f          	j	594 <neorv32_uart0_print>
 be4:	00001537          	lui	a0,0x1
 be8:	04c50513          	addi	a0,a0,76 # 104c <symbols.0+0xc4>
 bec:	9a9ff0ef          	jal	ra,594 <neorv32_uart0_print>
 bf0:	fb1ff06f          	j	ba0 <__neorv32_rte_debug_exc_handler+0xcc>
 bf4:	00001537          	lui	a0,0x1
 bf8:	06c50513          	addi	a0,a0,108 # 106c <symbols.0+0xe4>
 bfc:	999ff0ef          	jal	ra,594 <neorv32_uart0_print>
 c00:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 c04:	0a07d463          	bgez	a5,cac <__neorv32_rte_debug_exc_handler+0x1d8>
 c08:	0017f793          	andi	a5,a5,1
 c0c:	08078a63          	beqz	a5,ca0 <__neorv32_rte_debug_exc_handler+0x1cc>
 c10:	00001537          	lui	a0,0x1
 c14:	1bc50513          	addi	a0,a0,444 # 11bc <symbols.0+0x234>
 c18:	fd5ff06f          	j	bec <__neorv32_rte_debug_exc_handler+0x118>
 c1c:	00001537          	lui	a0,0x1
 c20:	08850513          	addi	a0,a0,136 # 1088 <symbols.0+0x100>
 c24:	fc9ff06f          	j	bec <__neorv32_rte_debug_exc_handler+0x118>
 c28:	00001537          	lui	a0,0x1
 c2c:	09c50513          	addi	a0,a0,156 # 109c <symbols.0+0x114>
 c30:	fbdff06f          	j	bec <__neorv32_rte_debug_exc_handler+0x118>
 c34:	00001537          	lui	a0,0x1
 c38:	0a850513          	addi	a0,a0,168 # 10a8 <symbols.0+0x120>
 c3c:	fb1ff06f          	j	bec <__neorv32_rte_debug_exc_handler+0x118>
 c40:	00001537          	lui	a0,0x1
 c44:	0c050513          	addi	a0,a0,192 # 10c0 <symbols.0+0x138>
 c48:	fb5ff06f          	j	bfc <__neorv32_rte_debug_exc_handler+0x128>
 c4c:	00001537          	lui	a0,0x1
 c50:	0d450513          	addi	a0,a0,212 # 10d4 <symbols.0+0x14c>
 c54:	f99ff06f          	j	bec <__neorv32_rte_debug_exc_handler+0x118>
 c58:	00001537          	lui	a0,0x1
 c5c:	0f050513          	addi	a0,a0,240 # 10f0 <symbols.0+0x168>
 c60:	f9dff06f          	j	bfc <__neorv32_rte_debug_exc_handler+0x128>
 c64:	00001537          	lui	a0,0x1
 c68:	10450513          	addi	a0,a0,260 # 1104 <symbols.0+0x17c>
 c6c:	f81ff06f          	j	bec <__neorv32_rte_debug_exc_handler+0x118>
 c70:	00001537          	lui	a0,0x1
 c74:	12450513          	addi	a0,a0,292 # 1124 <symbols.0+0x19c>
 c78:	f75ff06f          	j	bec <__neorv32_rte_debug_exc_handler+0x118>
 c7c:	00001537          	lui	a0,0x1
 c80:	14450513          	addi	a0,a0,324 # 1144 <symbols.0+0x1bc>
 c84:	f69ff06f          	j	bec <__neorv32_rte_debug_exc_handler+0x118>
 c88:	00001537          	lui	a0,0x1
 c8c:	16050513          	addi	a0,a0,352 # 1160 <symbols.0+0x1d8>
 c90:	f5dff06f          	j	bec <__neorv32_rte_debug_exc_handler+0x118>
 c94:	00001537          	lui	a0,0x1
 c98:	17850513          	addi	a0,a0,376 # 1178 <symbols.0+0x1f0>
 c9c:	f51ff06f          	j	bec <__neorv32_rte_debug_exc_handler+0x118>
 ca0:	00001537          	lui	a0,0x1
 ca4:	1cc50513          	addi	a0,a0,460 # 11cc <symbols.0+0x244>
 ca8:	f45ff06f          	j	bec <__neorv32_rte_debug_exc_handler+0x118>
 cac:	00001537          	lui	a0,0x1
 cb0:	1dc50513          	addi	a0,a0,476 # 11dc <symbols.0+0x254>
 cb4:	f39ff06f          	j	bec <__neorv32_rte_debug_exc_handler+0x118>
 cb8:	00c12083          	lw	ra,12(sp)
 cbc:	00812403          	lw	s0,8(sp)
 cc0:	00412483          	lw	s1,4(sp)
 cc4:	01010113          	addi	sp,sp,16
 cc8:	00008067          	ret

00000ccc <neorv32_rte_exception_uninstall>:
 ccc:	01f00793          	li	a5,31
 cd0:	02a7e463          	bltu	a5,a0,cf8 <neorv32_rte_exception_uninstall+0x2c>
 cd4:	800007b7          	lui	a5,0x80000
 cd8:	00078793          	mv	a5,a5
 cdc:	00251513          	slli	a0,a0,0x2
 ce0:	00a78533          	add	a0,a5,a0
 ce4:	000017b7          	lui	a5,0x1
 ce8:	ad478793          	addi	a5,a5,-1324 # ad4 <__neorv32_rte_debug_exc_handler>
 cec:	00f52023          	sw	a5,0(a0)
 cf0:	00000513          	li	a0,0
 cf4:	00008067          	ret
 cf8:	00100513          	li	a0,1
 cfc:	00008067          	ret

00000d00 <neorv32_rte_setup>:
 d00:	ff010113          	addi	sp,sp,-16
 d04:	000017b7          	lui	a5,0x1
 d08:	00112623          	sw	ra,12(sp)
 d0c:	00812423          	sw	s0,8(sp)
 d10:	00912223          	sw	s1,4(sp)
 d14:	85078793          	addi	a5,a5,-1968 # 850 <__neorv32_rte_core>
 d18:	30579073          	csrw	mtvec,a5
 d1c:	00000793          	li	a5,0
 d20:	30479073          	csrw	mie,a5
 d24:	34479073          	csrw	mip,a5
 d28:	f6002e23          	sw	zero,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 d2c:	00000413          	li	s0,0
 d30:	01d00493          	li	s1,29
 d34:	00040513          	mv	a0,s0
 d38:	00140413          	addi	s0,s0,1
 d3c:	0ff47413          	andi	s0,s0,255
 d40:	f8dff0ef          	jal	ra,ccc <neorv32_rte_exception_uninstall>
 d44:	fe9418e3          	bne	s0,s1,d34 <neorv32_rte_setup+0x34>
 d48:	00c12083          	lw	ra,12(sp)
 d4c:	00812403          	lw	s0,8(sp)
 d50:	00412483          	lw	s1,4(sp)
 d54:	01010113          	addi	sp,sp,16
 d58:	00008067          	ret

00000d5c <neorv32_rte_check_isa>:
 d5c:	30102673          	csrr	a2,misa
 d60:	400005b7          	lui	a1,0x40000
 d64:	10058593          	addi	a1,a1,256 # 40000100 <__crt0_copy_data_src_begin+0x3fffee30>
 d68:	00b677b3          	and	a5,a2,a1
 d6c:	04b78663          	beq	a5,a1,db8 <neorv32_rte_check_isa+0x5c>
 d70:	00050663          	beqz	a0,d7c <neorv32_rte_check_isa+0x20>
 d74:	00100513          	li	a0,1
 d78:	00008067          	ret
 d7c:	fe010113          	addi	sp,sp,-32
 d80:	00c12623          	sw	a2,12(sp)
 d84:	00112e23          	sw	ra,28(sp)
 d88:	f38ff0ef          	jal	ra,4c0 <neorv32_uart0_available>
 d8c:	400007b7          	lui	a5,0x40000
 d90:	00c12603          	lw	a2,12(sp)
 d94:	10078593          	addi	a1,a5,256 # 40000100 <__crt0_copy_data_src_begin+0x3fffee30>
 d98:	00050863          	beqz	a0,da8 <neorv32_rte_check_isa+0x4c>
 d9c:	00001537          	lui	a0,0x1
 da0:	23850513          	addi	a0,a0,568 # 1238 <symbols.0+0x2b0>
 da4:	849ff0ef          	jal	ra,5ec <neorv32_uart0_printf>
 da8:	01c12083          	lw	ra,28(sp)
 dac:	00100513          	li	a0,1
 db0:	02010113          	addi	sp,sp,32
 db4:	00008067          	ret
 db8:	00000513          	li	a0,0
 dbc:	00008067          	ret

00000dc0 <neorv32_gpio_available>:
 dc0:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 dc4:	01055513          	srli	a0,a0,0x10
 dc8:	00157513          	andi	a0,a0,1
 dcc:	00008067          	ret

00000dd0 <neorv32_gpio_pin_get>:
 dd0:	00050793          	mv	a5,a0
 dd4:	01f00713          	li	a4,31
 dd8:	00100513          	li	a0,1
 ddc:	00f51533          	sll	a0,a0,a5
 de0:	00f74863          	blt	a4,a5,df0 <neorv32_gpio_pin_get+0x20>
 de4:	fc002783          	lw	a5,-64(zero) # ffffffc0 <__ctr0_io_space_begin+0x1c0>
 de8:	00a7f533          	and	a0,a5,a0
 dec:	00008067          	ret
 df0:	fc402783          	lw	a5,-60(zero) # ffffffc4 <__ctr0_io_space_begin+0x1c4>
 df4:	ff5ff06f          	j	de8 <neorv32_gpio_pin_get+0x18>

00000df8 <__mulsi3>:
 df8:	00050613          	mv	a2,a0
 dfc:	00000513          	li	a0,0
 e00:	0015f693          	andi	a3,a1,1
 e04:	00068463          	beqz	a3,e0c <__mulsi3+0x14>
 e08:	00c50533          	add	a0,a0,a2
 e0c:	0015d593          	srli	a1,a1,0x1
 e10:	00161613          	slli	a2,a2,0x1
 e14:	fe0596e3          	bnez	a1,e00 <__mulsi3+0x8>
 e18:	00008067          	ret

00000e1c <__muldi3>:
 e1c:	00050313          	mv	t1,a0
 e20:	ff010113          	addi	sp,sp,-16
 e24:	00060513          	mv	a0,a2
 e28:	00068893          	mv	a7,a3
 e2c:	00112623          	sw	ra,12(sp)
 e30:	00030613          	mv	a2,t1
 e34:	00050693          	mv	a3,a0
 e38:	00000713          	li	a4,0
 e3c:	00000793          	li	a5,0
 e40:	00000813          	li	a6,0
 e44:	0016fe13          	andi	t3,a3,1
 e48:	00171e93          	slli	t4,a4,0x1
 e4c:	000e0c63          	beqz	t3,e64 <__muldi3+0x48>
 e50:	01060e33          	add	t3,a2,a6
 e54:	010e3833          	sltu	a6,t3,a6
 e58:	00e787b3          	add	a5,a5,a4
 e5c:	00f807b3          	add	a5,a6,a5
 e60:	000e0813          	mv	a6,t3
 e64:	01f65713          	srli	a4,a2,0x1f
 e68:	0016d693          	srli	a3,a3,0x1
 e6c:	00eee733          	or	a4,t4,a4
 e70:	00161613          	slli	a2,a2,0x1
 e74:	fc0698e3          	bnez	a3,e44 <__muldi3+0x28>
 e78:	00058663          	beqz	a1,e84 <__muldi3+0x68>
 e7c:	f7dff0ef          	jal	ra,df8 <__mulsi3>
 e80:	00a787b3          	add	a5,a5,a0
 e84:	00088a63          	beqz	a7,e98 <__muldi3+0x7c>
 e88:	00030513          	mv	a0,t1
 e8c:	00088593          	mv	a1,a7
 e90:	f69ff0ef          	jal	ra,df8 <__mulsi3>
 e94:	00f507b3          	add	a5,a0,a5
 e98:	00c12083          	lw	ra,12(sp)
 e9c:	00080513          	mv	a0,a6
 ea0:	00078593          	mv	a1,a5
 ea4:	01010113          	addi	sp,sp,16
 ea8:	00008067          	ret

00000eac <__divsi3>:
 eac:	06054063          	bltz	a0,f0c <__umodsi3+0x10>
 eb0:	0605c663          	bltz	a1,f1c <__umodsi3+0x20>

00000eb4 <__udivsi3>:
 eb4:	00058613          	mv	a2,a1
 eb8:	00050593          	mv	a1,a0
 ebc:	fff00513          	li	a0,-1
 ec0:	02060c63          	beqz	a2,ef8 <__udivsi3+0x44>
 ec4:	00100693          	li	a3,1
 ec8:	00b67a63          	bgeu	a2,a1,edc <__udivsi3+0x28>
 ecc:	00c05863          	blez	a2,edc <__udivsi3+0x28>
 ed0:	00161613          	slli	a2,a2,0x1
 ed4:	00169693          	slli	a3,a3,0x1
 ed8:	feb66ae3          	bltu	a2,a1,ecc <__udivsi3+0x18>
 edc:	00000513          	li	a0,0
 ee0:	00c5e663          	bltu	a1,a2,eec <__udivsi3+0x38>
 ee4:	40c585b3          	sub	a1,a1,a2
 ee8:	00d56533          	or	a0,a0,a3
 eec:	0016d693          	srli	a3,a3,0x1
 ef0:	00165613          	srli	a2,a2,0x1
 ef4:	fe0696e3          	bnez	a3,ee0 <__udivsi3+0x2c>
 ef8:	00008067          	ret

00000efc <__umodsi3>:
 efc:	00008293          	mv	t0,ra
 f00:	fb5ff0ef          	jal	ra,eb4 <__udivsi3>
 f04:	00058513          	mv	a0,a1
 f08:	00028067          	jr	t0
 f0c:	40a00533          	neg	a0,a0
 f10:	00b04863          	bgtz	a1,f20 <__umodsi3+0x24>
 f14:	40b005b3          	neg	a1,a1
 f18:	f9dff06f          	j	eb4 <__udivsi3>
 f1c:	40b005b3          	neg	a1,a1
 f20:	00008293          	mv	t0,ra
 f24:	f91ff0ef          	jal	ra,eb4 <__udivsi3>
 f28:	40a00533          	neg	a0,a0
 f2c:	00028067          	jr	t0

00000f30 <__modsi3>:
 f30:	00008293          	mv	t0,ra
 f34:	0005ca63          	bltz	a1,f48 <__modsi3+0x18>
 f38:	00054c63          	bltz	a0,f50 <__modsi3+0x20>
 f3c:	f79ff0ef          	jal	ra,eb4 <__udivsi3>
 f40:	00058513          	mv	a0,a1
 f44:	00028067          	jr	t0
 f48:	40b005b3          	neg	a1,a1
 f4c:	fe0558e3          	bgez	a0,f3c <__modsi3+0xc>
 f50:	40a00533          	neg	a0,a0
 f54:	f61ff0ef          	jal	ra,eb4 <__udivsi3>
 f58:	40b00533          	neg	a0,a1
 f5c:	00028067          	jr	t0
