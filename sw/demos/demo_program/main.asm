
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
  c8:	87818613          	addi	a2,gp,-1928 # 80000078 <__BSS_END__>

000000cc <__crt0_clear_bss_loop>:
  cc:	00c5d863          	bge	a1,a2,dc <__crt0_clear_bss_loop_end>
  d0:	00058023          	sb	zero,0(a1)
  d4:	00158593          	addi	a1,a1,1
  d8:	ff5ff06f          	j	cc <__crt0_clear_bss_loop>

000000dc <__crt0_clear_bss_loop_end>:
  dc:	00001597          	auipc	a1,0x1
  e0:	1fc58593          	addi	a1,a1,508 # 12d8 <__crt0_copy_data_src_begin>
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
 190:	154000ef          	jal	ra,2e4 <neorv32_pwm_available>
 194:	0c050263          	beqz	a0,258 <main+0xd8>
 198:	431000ef          	jal	ra,dc8 <neorv32_gpio_available>
 19c:	0a050e63          	beqz	a0,258 <main+0xd8>
 1a0:	369000ef          	jal	ra,d08 <neorv32_rte_setup>
 1a4:	328000ef          	jal	ra,4cc <neorv32_uart0_available>
 1a8:	02050663          	beqz	a0,1d4 <main+0x54>
 1ac:	00005537          	lui	a0,0x5
 1b0:	00000613          	li	a2,0
 1b4:	00000593          	li	a1,0
 1b8:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3828>
 1bc:	320000ef          	jal	ra,4dc <neorv32_uart0_setup>
 1c0:	00000513          	li	a0,0
 1c4:	3a1000ef          	jal	ra,d64 <neorv32_rte_check_isa>
 1c8:	00001537          	lui	a0,0x1
 1cc:	f6850513          	addi	a0,a0,-152 # f68 <__etext>
 1d0:	3d0000ef          	jal	ra,5a0 <neorv32_uart0_print>
 1d4:	00000593          	li	a1,0
 1d8:	00000513          	li	a0,0
 1dc:	134000ef          	jal	ra,310 <neorv32_pwm_set>
 1e0:	00000593          	li	a1,0
 1e4:	00100513          	li	a0,1
 1e8:	128000ef          	jal	ra,310 <neorv32_pwm_set>
 1ec:	00300513          	li	a0,3
 1f0:	104000ef          	jal	ra,2f4 <neorv32_pwm_setup>
 1f4:	00000413          	li	s0,0
 1f8:	00100513          	li	a0,1
 1fc:	074000ef          	jal	ra,270 <getButtonPress>
 200:	00050493          	mv	s1,a0
 204:	00200513          	li	a0,2
 208:	068000ef          	jal	ra,270 <getButtonPress>
 20c:	0ff4f493          	andi	s1,s1,255
 210:	00100793          	li	a5,1
 214:	0ff57513          	andi	a0,a0,255
 218:	00f49663          	bne	s1,a5,224 <main+0xa4>
 21c:	00840413          	addi	s0,s0,8
 220:	0ff47413          	andi	s0,s0,255
 224:	00100793          	li	a5,1
 228:	00f51663          	bne	a0,a5,234 <main+0xb4>
 22c:	00840413          	addi	s0,s0,8
 230:	0ff47413          	andi	s0,s0,255
 234:	00040593          	mv	a1,s0
 238:	00000513          	li	a0,0
 23c:	0d4000ef          	jal	ra,310 <neorv32_pwm_set>
 240:	00040593          	mv	a1,s0
 244:	00100513          	li	a0,1
 248:	0c8000ef          	jal	ra,310 <neorv32_pwm_set>
 24c:	00a00513          	li	a0,10
 250:	568000ef          	jal	ra,7b8 <neorv32_cpu_delay_ms>
 254:	fa5ff06f          	j	1f8 <main+0x78>
 258:	00c12083          	lw	ra,12(sp)
 25c:	00812403          	lw	s0,8(sp)
 260:	00412483          	lw	s1,4(sp)
 264:	00100513          	li	a0,1
 268:	01010113          	addi	sp,sp,16
 26c:	00008067          	ret

00000270 <getButtonPress>:
 270:	ff010113          	addi	sp,sp,-16
 274:	00112623          	sw	ra,12(sp)
 278:	00812423          	sw	s0,8(sp)
 27c:	00912223          	sw	s1,4(sp)
 280:	00050493          	mv	s1,a0
 284:	355000ef          	jal	ra,dd8 <neorv32_gpio_pin_get>
 288:	00050413          	mv	s0,a0
 28c:	00500513          	li	a0,5
 290:	528000ef          	jal	ra,7b8 <neorv32_cpu_delay_ms>
 294:	00048513          	mv	a0,s1
 298:	341000ef          	jal	ra,dd8 <neorv32_gpio_pin_get>
 29c:	02a41c63          	bne	s0,a0,2d4 <getButtonPress+0x64>
 2a0:	800007b7          	lui	a5,0x80000
 2a4:	00078793          	mv	a5,a5
 2a8:	0007a703          	lw	a4,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 2ac:	02870863          	beq	a4,s0,2dc <getButtonPress+0x6c>
 2b0:	00100713          	li	a4,1
 2b4:	02e41463          	bne	s0,a4,2dc <getButtonPress+0x6c>
 2b8:	0087a023          	sw	s0,0(a5)
 2bc:	00c12083          	lw	ra,12(sp)
 2c0:	00040513          	mv	a0,s0
 2c4:	00812403          	lw	s0,8(sp)
 2c8:	00412483          	lw	s1,4(sp)
 2cc:	01010113          	addi	sp,sp,16
 2d0:	00008067          	ret
 2d4:	00200413          	li	s0,2
 2d8:	fe5ff06f          	j	2bc <getButtonPress+0x4c>
 2dc:	00000413          	li	s0,0
 2e0:	fddff06f          	j	2bc <getButtonPress+0x4c>

000002e4 <neorv32_pwm_available>:
 2e4:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 2e8:	01555513          	srli	a0,a0,0x15
 2ec:	00157513          	andi	a0,a0,1
 2f0:	00008067          	ret

000002f4 <neorv32_pwm_setup>:
 2f4:	00757513          	andi	a0,a0,7
 2f8:	e8000793          	li	a5,-384
 2fc:	00151513          	slli	a0,a0,0x1
 300:	0007a023          	sw	zero,0(a5)
 304:	00156513          	ori	a0,a0,1
 308:	00a7a023          	sw	a0,0(a5)
 30c:	00008067          	ret

00000310 <neorv32_pwm_set>:
 310:	03b00793          	li	a5,59
 314:	02a7e863          	bltu	a5,a0,344 <neorv32_pwm_set+0x34>
 318:	00357713          	andi	a4,a0,3
 31c:	0fc57513          	andi	a0,a0,252
 320:	e8452683          	lw	a3,-380(a0)
 324:	00371713          	slli	a4,a4,0x3
 328:	0ff00793          	li	a5,255
 32c:	00e797b3          	sll	a5,a5,a4
 330:	fff7c793          	not	a5,a5
 334:	00d7f7b3          	and	a5,a5,a3
 338:	00e595b3          	sll	a1,a1,a4
 33c:	00f5e5b3          	or	a1,a1,a5
 340:	e8b52223          	sw	a1,-380(a0)
 344:	00008067          	ret

00000348 <neorv32_mtime_get_time>:
 348:	f9402583          	lw	a1,-108(zero) # ffffff94 <__ctr0_io_space_begin+0x194>
 34c:	f9002503          	lw	a0,-112(zero) # ffffff90 <__ctr0_io_space_begin+0x190>
 350:	f9402783          	lw	a5,-108(zero) # ffffff94 <__ctr0_io_space_begin+0x194>
 354:	fef59ae3          	bne	a1,a5,348 <neorv32_mtime_get_time>
 358:	00008067          	ret

0000035c <__neorv32_uart_itoa>:
 35c:	fd010113          	addi	sp,sp,-48
 360:	02812423          	sw	s0,40(sp)
 364:	02912223          	sw	s1,36(sp)
 368:	03212023          	sw	s2,32(sp)
 36c:	01312e23          	sw	s3,28(sp)
 370:	01412c23          	sw	s4,24(sp)
 374:	02112623          	sw	ra,44(sp)
 378:	01512a23          	sw	s5,20(sp)
 37c:	00001a37          	lui	s4,0x1
 380:	00050493          	mv	s1,a0
 384:	00058413          	mv	s0,a1
 388:	00058523          	sb	zero,10(a1)
 38c:	00000993          	li	s3,0
 390:	00410913          	addi	s2,sp,4
 394:	f84a0a13          	addi	s4,s4,-124 # f84 <numbers.1>
 398:	00a00593          	li	a1,10
 39c:	00048513          	mv	a0,s1
 3a0:	365000ef          	jal	ra,f04 <__umodsi3>
 3a4:	00aa0533          	add	a0,s4,a0
 3a8:	00054783          	lbu	a5,0(a0)
 3ac:	01390ab3          	add	s5,s2,s3
 3b0:	00048513          	mv	a0,s1
 3b4:	00fa8023          	sb	a5,0(s5)
 3b8:	00a00593          	li	a1,10
 3bc:	301000ef          	jal	ra,ebc <__udivsi3>
 3c0:	00198993          	addi	s3,s3,1
 3c4:	00a00793          	li	a5,10
 3c8:	00050493          	mv	s1,a0
 3cc:	fcf996e3          	bne	s3,a5,398 <__neorv32_uart_itoa+0x3c>
 3d0:	00090693          	mv	a3,s2
 3d4:	00900713          	li	a4,9
 3d8:	03000613          	li	a2,48
 3dc:	0096c583          	lbu	a1,9(a3)
 3e0:	00070793          	mv	a5,a4
 3e4:	fff70713          	addi	a4,a4,-1
 3e8:	01071713          	slli	a4,a4,0x10
 3ec:	01075713          	srli	a4,a4,0x10
 3f0:	00c59a63          	bne	a1,a2,404 <__neorv32_uart_itoa+0xa8>
 3f4:	000684a3          	sb	zero,9(a3)
 3f8:	fff68693          	addi	a3,a3,-1
 3fc:	fe0710e3          	bnez	a4,3dc <__neorv32_uart_itoa+0x80>
 400:	00000793          	li	a5,0
 404:	00f907b3          	add	a5,s2,a5
 408:	00000593          	li	a1,0
 40c:	0007c703          	lbu	a4,0(a5)
 410:	00070c63          	beqz	a4,428 <__neorv32_uart_itoa+0xcc>
 414:	00158693          	addi	a3,a1,1
 418:	00b405b3          	add	a1,s0,a1
 41c:	00e58023          	sb	a4,0(a1)
 420:	01069593          	slli	a1,a3,0x10
 424:	0105d593          	srli	a1,a1,0x10
 428:	fff78713          	addi	a4,a5,-1
 42c:	02f91863          	bne	s2,a5,45c <__neorv32_uart_itoa+0x100>
 430:	00b40433          	add	s0,s0,a1
 434:	00040023          	sb	zero,0(s0)
 438:	02c12083          	lw	ra,44(sp)
 43c:	02812403          	lw	s0,40(sp)
 440:	02412483          	lw	s1,36(sp)
 444:	02012903          	lw	s2,32(sp)
 448:	01c12983          	lw	s3,28(sp)
 44c:	01812a03          	lw	s4,24(sp)
 450:	01412a83          	lw	s5,20(sp)
 454:	03010113          	addi	sp,sp,48
 458:	00008067          	ret
 45c:	00070793          	mv	a5,a4
 460:	fadff06f          	j	40c <__neorv32_uart_itoa+0xb0>

00000464 <__neorv32_uart_tohex>:
 464:	00001637          	lui	a2,0x1
 468:	00758693          	addi	a3,a1,7
 46c:	00000713          	li	a4,0
 470:	f9060613          	addi	a2,a2,-112 # f90 <symbols.0>
 474:	02000813          	li	a6,32
 478:	00e557b3          	srl	a5,a0,a4
 47c:	00f7f793          	andi	a5,a5,15
 480:	00f607b3          	add	a5,a2,a5
 484:	0007c783          	lbu	a5,0(a5)
 488:	00470713          	addi	a4,a4,4
 48c:	fff68693          	addi	a3,a3,-1
 490:	00f680a3          	sb	a5,1(a3)
 494:	ff0712e3          	bne	a4,a6,478 <__neorv32_uart_tohex+0x14>
 498:	00058423          	sb	zero,8(a1)
 49c:	00008067          	ret

000004a0 <__neorv32_uart_touppercase.constprop.0>:
 4a0:	00b50693          	addi	a3,a0,11
 4a4:	01900613          	li	a2,25
 4a8:	00054783          	lbu	a5,0(a0)
 4ac:	f9f78713          	addi	a4,a5,-97
 4b0:	0ff77713          	andi	a4,a4,255
 4b4:	00e66663          	bltu	a2,a4,4c0 <__neorv32_uart_touppercase.constprop.0+0x20>
 4b8:	fe078793          	addi	a5,a5,-32
 4bc:	00f50023          	sb	a5,0(a0)
 4c0:	00150513          	addi	a0,a0,1
 4c4:	fed512e3          	bne	a0,a3,4a8 <__neorv32_uart_touppercase.constprop.0+0x8>
 4c8:	00008067          	ret

000004cc <neorv32_uart0_available>:
 4cc:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 4d0:	01255513          	srli	a0,a0,0x12
 4d4:	00157513          	andi	a0,a0,1
 4d8:	00008067          	ret

000004dc <neorv32_uart0_setup>:
 4dc:	ff010113          	addi	sp,sp,-16
 4e0:	00812423          	sw	s0,8(sp)
 4e4:	00912223          	sw	s1,4(sp)
 4e8:	00112623          	sw	ra,12(sp)
 4ec:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 4f0:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 4f4:	00058413          	mv	s0,a1
 4f8:	00151593          	slli	a1,a0,0x1
 4fc:	00078513          	mv	a0,a5
 500:	00060493          	mv	s1,a2
 504:	1b9000ef          	jal	ra,ebc <__udivsi3>
 508:	01051513          	slli	a0,a0,0x10
 50c:	000017b7          	lui	a5,0x1
 510:	01055513          	srli	a0,a0,0x10
 514:	00000713          	li	a4,0
 518:	ffe78793          	addi	a5,a5,-2 # ffe <symbols.0+0x6e>
 51c:	04a7e463          	bltu	a5,a0,564 <neorv32_uart0_setup+0x88>
 520:	0034f793          	andi	a5,s1,3
 524:	00347413          	andi	s0,s0,3
 528:	fff50513          	addi	a0,a0,-1
 52c:	01479793          	slli	a5,a5,0x14
 530:	01641413          	slli	s0,s0,0x16
 534:	00f567b3          	or	a5,a0,a5
 538:	0087e7b3          	or	a5,a5,s0
 53c:	01871713          	slli	a4,a4,0x18
 540:	00c12083          	lw	ra,12(sp)
 544:	00812403          	lw	s0,8(sp)
 548:	00e7e7b3          	or	a5,a5,a4
 54c:	10000737          	lui	a4,0x10000
 550:	00e7e7b3          	or	a5,a5,a4
 554:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 558:	00412483          	lw	s1,4(sp)
 55c:	01010113          	addi	sp,sp,16
 560:	00008067          	ret
 564:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffed26>
 568:	0fd6f693          	andi	a3,a3,253
 56c:	00069a63          	bnez	a3,580 <neorv32_uart0_setup+0xa4>
 570:	00355513          	srli	a0,a0,0x3
 574:	00170713          	addi	a4,a4,1
 578:	0ff77713          	andi	a4,a4,255
 57c:	fa1ff06f          	j	51c <neorv32_uart0_setup+0x40>
 580:	00155513          	srli	a0,a0,0x1
 584:	ff1ff06f          	j	574 <neorv32_uart0_setup+0x98>

00000588 <neorv32_uart0_putc>:
 588:	00040737          	lui	a4,0x40
 58c:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 590:	00e7f7b3          	and	a5,a5,a4
 594:	fe079ce3          	bnez	a5,58c <neorv32_uart0_putc+0x4>
 598:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 59c:	00008067          	ret

000005a0 <neorv32_uart0_print>:
 5a0:	ff010113          	addi	sp,sp,-16
 5a4:	00812423          	sw	s0,8(sp)
 5a8:	01212023          	sw	s2,0(sp)
 5ac:	00112623          	sw	ra,12(sp)
 5b0:	00912223          	sw	s1,4(sp)
 5b4:	00050413          	mv	s0,a0
 5b8:	00a00913          	li	s2,10
 5bc:	00044483          	lbu	s1,0(s0)
 5c0:	00140413          	addi	s0,s0,1
 5c4:	00049e63          	bnez	s1,5e0 <neorv32_uart0_print+0x40>
 5c8:	00c12083          	lw	ra,12(sp)
 5cc:	00812403          	lw	s0,8(sp)
 5d0:	00412483          	lw	s1,4(sp)
 5d4:	00012903          	lw	s2,0(sp)
 5d8:	01010113          	addi	sp,sp,16
 5dc:	00008067          	ret
 5e0:	01249663          	bne	s1,s2,5ec <neorv32_uart0_print+0x4c>
 5e4:	00d00513          	li	a0,13
 5e8:	fa1ff0ef          	jal	ra,588 <neorv32_uart0_putc>
 5ec:	00048513          	mv	a0,s1
 5f0:	f99ff0ef          	jal	ra,588 <neorv32_uart0_putc>
 5f4:	fc9ff06f          	j	5bc <neorv32_uart0_print+0x1c>

000005f8 <neorv32_uart0_printf>:
 5f8:	fa010113          	addi	sp,sp,-96
 5fc:	04f12a23          	sw	a5,84(sp)
 600:	04410793          	addi	a5,sp,68
 604:	02812c23          	sw	s0,56(sp)
 608:	03212823          	sw	s2,48(sp)
 60c:	03312623          	sw	s3,44(sp)
 610:	03512223          	sw	s5,36(sp)
 614:	03612023          	sw	s6,32(sp)
 618:	01712e23          	sw	s7,28(sp)
 61c:	01812c23          	sw	s8,24(sp)
 620:	01912a23          	sw	s9,20(sp)
 624:	02112e23          	sw	ra,60(sp)
 628:	02912a23          	sw	s1,52(sp)
 62c:	03412423          	sw	s4,40(sp)
 630:	00050413          	mv	s0,a0
 634:	04b12223          	sw	a1,68(sp)
 638:	04c12423          	sw	a2,72(sp)
 63c:	04d12623          	sw	a3,76(sp)
 640:	04e12823          	sw	a4,80(sp)
 644:	05012c23          	sw	a6,88(sp)
 648:	05112e23          	sw	a7,92(sp)
 64c:	00f12023          	sw	a5,0(sp)
 650:	02500a93          	li	s5,37
 654:	00a00b13          	li	s6,10
 658:	07000913          	li	s2,112
 65c:	05800993          	li	s3,88
 660:	07500b93          	li	s7,117
 664:	07800c13          	li	s8,120
 668:	07300c93          	li	s9,115
 66c:	00044483          	lbu	s1,0(s0)
 670:	02049c63          	bnez	s1,6a8 <neorv32_uart0_printf+0xb0>
 674:	03c12083          	lw	ra,60(sp)
 678:	03812403          	lw	s0,56(sp)
 67c:	03412483          	lw	s1,52(sp)
 680:	03012903          	lw	s2,48(sp)
 684:	02c12983          	lw	s3,44(sp)
 688:	02812a03          	lw	s4,40(sp)
 68c:	02412a83          	lw	s5,36(sp)
 690:	02012b03          	lw	s6,32(sp)
 694:	01c12b83          	lw	s7,28(sp)
 698:	01812c03          	lw	s8,24(sp)
 69c:	01412c83          	lw	s9,20(sp)
 6a0:	06010113          	addi	sp,sp,96
 6a4:	00008067          	ret
 6a8:	0f549c63          	bne	s1,s5,7a0 <neorv32_uart0_printf+0x1a8>
 6ac:	00240a13          	addi	s4,s0,2
 6b0:	00144403          	lbu	s0,1(s0)
 6b4:	0d240263          	beq	s0,s2,778 <neorv32_uart0_printf+0x180>
 6b8:	06896463          	bltu	s2,s0,720 <neorv32_uart0_printf+0x128>
 6bc:	06300793          	li	a5,99
 6c0:	08f40463          	beq	s0,a5,748 <neorv32_uart0_printf+0x150>
 6c4:	0087ec63          	bltu	a5,s0,6dc <neorv32_uart0_printf+0xe4>
 6c8:	0b340863          	beq	s0,s3,778 <neorv32_uart0_printf+0x180>
 6cc:	02500513          	li	a0,37
 6d0:	eb9ff0ef          	jal	ra,588 <neorv32_uart0_putc>
 6d4:	00040513          	mv	a0,s0
 6d8:	0800006f          	j	758 <neorv32_uart0_printf+0x160>
 6dc:	06400793          	li	a5,100
 6e0:	00f40663          	beq	s0,a5,6ec <neorv32_uart0_printf+0xf4>
 6e4:	06900793          	li	a5,105
 6e8:	fef412e3          	bne	s0,a5,6cc <neorv32_uart0_printf+0xd4>
 6ec:	00012783          	lw	a5,0(sp)
 6f0:	0007a403          	lw	s0,0(a5)
 6f4:	00478713          	addi	a4,a5,4
 6f8:	00e12023          	sw	a4,0(sp)
 6fc:	00045863          	bgez	s0,70c <neorv32_uart0_printf+0x114>
 700:	02d00513          	li	a0,45
 704:	40800433          	neg	s0,s0
 708:	e81ff0ef          	jal	ra,588 <neorv32_uart0_putc>
 70c:	00410593          	addi	a1,sp,4
 710:	00040513          	mv	a0,s0
 714:	c49ff0ef          	jal	ra,35c <__neorv32_uart_itoa>
 718:	00410513          	addi	a0,sp,4
 71c:	0200006f          	j	73c <neorv32_uart0_printf+0x144>
 720:	05740063          	beq	s0,s7,760 <neorv32_uart0_printf+0x168>
 724:	05840a63          	beq	s0,s8,778 <neorv32_uart0_printf+0x180>
 728:	fb9412e3          	bne	s0,s9,6cc <neorv32_uart0_printf+0xd4>
 72c:	00012783          	lw	a5,0(sp)
 730:	0007a503          	lw	a0,0(a5)
 734:	00478713          	addi	a4,a5,4
 738:	00e12023          	sw	a4,0(sp)
 73c:	e65ff0ef          	jal	ra,5a0 <neorv32_uart0_print>
 740:	000a0413          	mv	s0,s4
 744:	f29ff06f          	j	66c <neorv32_uart0_printf+0x74>
 748:	00012783          	lw	a5,0(sp)
 74c:	0007c503          	lbu	a0,0(a5)
 750:	00478713          	addi	a4,a5,4
 754:	00e12023          	sw	a4,0(sp)
 758:	e31ff0ef          	jal	ra,588 <neorv32_uart0_putc>
 75c:	fe5ff06f          	j	740 <neorv32_uart0_printf+0x148>
 760:	00012783          	lw	a5,0(sp)
 764:	00410593          	addi	a1,sp,4
 768:	00478713          	addi	a4,a5,4
 76c:	0007a503          	lw	a0,0(a5)
 770:	00e12023          	sw	a4,0(sp)
 774:	fa1ff06f          	j	714 <neorv32_uart0_printf+0x11c>
 778:	00012783          	lw	a5,0(sp)
 77c:	00410593          	addi	a1,sp,4
 780:	0007a503          	lw	a0,0(a5)
 784:	00478713          	addi	a4,a5,4
 788:	00e12023          	sw	a4,0(sp)
 78c:	cd9ff0ef          	jal	ra,464 <__neorv32_uart_tohex>
 790:	f93414e3          	bne	s0,s3,718 <neorv32_uart0_printf+0x120>
 794:	00410513          	addi	a0,sp,4
 798:	d09ff0ef          	jal	ra,4a0 <__neorv32_uart_touppercase.constprop.0>
 79c:	f7dff06f          	j	718 <neorv32_uart0_printf+0x120>
 7a0:	01649663          	bne	s1,s6,7ac <neorv32_uart0_printf+0x1b4>
 7a4:	00d00513          	li	a0,13
 7a8:	de1ff0ef          	jal	ra,588 <neorv32_uart0_putc>
 7ac:	00140a13          	addi	s4,s0,1
 7b0:	00048513          	mv	a0,s1
 7b4:	fa5ff06f          	j	758 <neorv32_uart0_printf+0x160>

000007b8 <neorv32_cpu_delay_ms>:
 7b8:	fe010113          	addi	sp,sp,-32
 7bc:	00a12623          	sw	a0,12(sp)
 7c0:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 7c4:	3e800593          	li	a1,1000
 7c8:	00112e23          	sw	ra,28(sp)
 7cc:	00812c23          	sw	s0,24(sp)
 7d0:	00912a23          	sw	s1,20(sp)
 7d4:	6e8000ef          	jal	ra,ebc <__udivsi3>
 7d8:	00c12603          	lw	a2,12(sp)
 7dc:	00000693          	li	a3,0
 7e0:	00000593          	li	a1,0
 7e4:	640000ef          	jal	ra,e24 <__muldi3>
 7e8:	fe802783          	lw	a5,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 7ec:	00020737          	lui	a4,0x20
 7f0:	00050413          	mv	s0,a0
 7f4:	00e7f7b3          	and	a5,a5,a4
 7f8:	00058493          	mv	s1,a1
 7fc:	02078e63          	beqz	a5,838 <neorv32_cpu_delay_ms+0x80>
 800:	b49ff0ef          	jal	ra,348 <neorv32_mtime_get_time>
 804:	00850433          	add	s0,a0,s0
 808:	00a43533          	sltu	a0,s0,a0
 80c:	009584b3          	add	s1,a1,s1
 810:	009504b3          	add	s1,a0,s1
 814:	b35ff0ef          	jal	ra,348 <neorv32_mtime_get_time>
 818:	fe95eee3          	bltu	a1,s1,814 <neorv32_cpu_delay_ms+0x5c>
 81c:	00b49463          	bne	s1,a1,824 <neorv32_cpu_delay_ms+0x6c>
 820:	fe856ae3          	bltu	a0,s0,814 <neorv32_cpu_delay_ms+0x5c>
 824:	01c12083          	lw	ra,28(sp)
 828:	01812403          	lw	s0,24(sp)
 82c:	01412483          	lw	s1,20(sp)
 830:	02010113          	addi	sp,sp,32
 834:	00008067          	ret
 838:	01c59493          	slli	s1,a1,0x1c
 83c:	00455513          	srli	a0,a0,0x4
 840:	00a4e533          	or	a0,s1,a0

00000844 <__neorv32_cpu_delay_ms_start>:
 844:	00050a63          	beqz	a0,858 <__neorv32_cpu_delay_ms_end>
 848:	00050863          	beqz	a0,858 <__neorv32_cpu_delay_ms_end>
 84c:	fff50513          	addi	a0,a0,-1
 850:	00000013          	nop
 854:	ff1ff06f          	j	844 <__neorv32_cpu_delay_ms_start>

00000858 <__neorv32_cpu_delay_ms_end>:
 858:	fcdff06f          	j	824 <neorv32_cpu_delay_ms+0x6c>

0000085c <__neorv32_rte_core>:
 85c:	fc010113          	addi	sp,sp,-64
 860:	02112e23          	sw	ra,60(sp)
 864:	02512c23          	sw	t0,56(sp)
 868:	02612a23          	sw	t1,52(sp)
 86c:	02712823          	sw	t2,48(sp)
 870:	02a12623          	sw	a0,44(sp)
 874:	02b12423          	sw	a1,40(sp)
 878:	02c12223          	sw	a2,36(sp)
 87c:	02d12023          	sw	a3,32(sp)
 880:	00e12e23          	sw	a4,28(sp)
 884:	00f12c23          	sw	a5,24(sp)
 888:	01012a23          	sw	a6,20(sp)
 88c:	01112823          	sw	a7,16(sp)
 890:	01c12623          	sw	t3,12(sp)
 894:	01d12423          	sw	t4,8(sp)
 898:	01e12223          	sw	t5,4(sp)
 89c:	01f12023          	sw	t6,0(sp)
 8a0:	341026f3          	csrr	a3,mepc
 8a4:	34069073          	csrw	mscratch,a3
 8a8:	342027f3          	csrr	a5,mcause
 8ac:	0607c063          	bltz	a5,90c <__neorv32_rte_core+0xb0>
 8b0:	0006d703          	lhu	a4,0(a3)
 8b4:	01071713          	slli	a4,a4,0x10
 8b8:	01075713          	srli	a4,a4,0x10
 8bc:	00468593          	addi	a1,a3,4
 8c0:	30102673          	csrr	a2,misa
 8c4:	00467613          	andi	a2,a2,4
 8c8:	00060a63          	beqz	a2,8dc <__neorv32_rte_core+0x80>
 8cc:	00377713          	andi	a4,a4,3
 8d0:	00300613          	li	a2,3
 8d4:	00c70463          	beq	a4,a2,8dc <__neorv32_rte_core+0x80>
 8d8:	00268593          	addi	a1,a3,2
 8dc:	34159073          	csrw	mepc,a1
 8e0:	00b00713          	li	a4,11
 8e4:	00f77863          	bgeu	a4,a5,8f4 <__neorv32_rte_core+0x98>
 8e8:	000017b7          	lui	a5,0x1
 8ec:	adc78793          	addi	a5,a5,-1316 # adc <__neorv32_rte_debug_exc_handler>
 8f0:	0500006f          	j	940 <__neorv32_rte_core+0xe4>
 8f4:	00001737          	lui	a4,0x1
 8f8:	00279793          	slli	a5,a5,0x2
 8fc:	fa470713          	addi	a4,a4,-92 # fa4 <symbols.0+0x14>
 900:	00e787b3          	add	a5,a5,a4
 904:	0007a783          	lw	a5,0(a5)
 908:	00078067          	jr	a5
 90c:	80000737          	lui	a4,0x80000
 910:	ffd74713          	xori	a4,a4,-3
 914:	00e787b3          	add	a5,a5,a4
 918:	01c00713          	li	a4,28
 91c:	fcf766e3          	bltu	a4,a5,8e8 <__neorv32_rte_core+0x8c>
 920:	00001737          	lui	a4,0x1
 924:	00279793          	slli	a5,a5,0x2
 928:	fd470713          	addi	a4,a4,-44 # fd4 <symbols.0+0x44>
 92c:	00e787b3          	add	a5,a5,a4
 930:	0007a783          	lw	a5,0(a5)
 934:	00078067          	jr	a5
 938:	800007b7          	lui	a5,0x80000
 93c:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 940:	000780e7          	jalr	a5
 944:	03c12083          	lw	ra,60(sp)
 948:	03812283          	lw	t0,56(sp)
 94c:	03412303          	lw	t1,52(sp)
 950:	03012383          	lw	t2,48(sp)
 954:	02c12503          	lw	a0,44(sp)
 958:	02812583          	lw	a1,40(sp)
 95c:	02412603          	lw	a2,36(sp)
 960:	02012683          	lw	a3,32(sp)
 964:	01c12703          	lw	a4,28(sp)
 968:	01812783          	lw	a5,24(sp)
 96c:	01412803          	lw	a6,20(sp)
 970:	01012883          	lw	a7,16(sp)
 974:	00c12e03          	lw	t3,12(sp)
 978:	00812e83          	lw	t4,8(sp)
 97c:	00412f03          	lw	t5,4(sp)
 980:	00012f83          	lw	t6,0(sp)
 984:	04010113          	addi	sp,sp,64
 988:	30200073          	mret
 98c:	8081a783          	lw	a5,-2040(gp) # 80000008 <__neorv32_rte_vector_lut+0x4>
 990:	fb1ff06f          	j	940 <__neorv32_rte_core+0xe4>
 994:	80c1a783          	lw	a5,-2036(gp) # 8000000c <__neorv32_rte_vector_lut+0x8>
 998:	fa9ff06f          	j	940 <__neorv32_rte_core+0xe4>
 99c:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0xc>
 9a0:	fa1ff06f          	j	940 <__neorv32_rte_core+0xe4>
 9a4:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x10>
 9a8:	f99ff06f          	j	940 <__neorv32_rte_core+0xe4>
 9ac:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x14>
 9b0:	f91ff06f          	j	940 <__neorv32_rte_core+0xe4>
 9b4:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x18>
 9b8:	f89ff06f          	j	940 <__neorv32_rte_core+0xe4>
 9bc:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x1c>
 9c0:	f81ff06f          	j	940 <__neorv32_rte_core+0xe4>
 9c4:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x20>
 9c8:	f79ff06f          	j	940 <__neorv32_rte_core+0xe4>
 9cc:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x24>
 9d0:	f71ff06f          	j	940 <__neorv32_rte_core+0xe4>
 9d4:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x28>
 9d8:	f69ff06f          	j	940 <__neorv32_rte_core+0xe4>
 9dc:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x2c>
 9e0:	f61ff06f          	j	940 <__neorv32_rte_core+0xe4>
 9e4:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x30>
 9e8:	f59ff06f          	j	940 <__neorv32_rte_core+0xe4>
 9ec:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x34>
 9f0:	f51ff06f          	j	940 <__neorv32_rte_core+0xe4>
 9f4:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x38>
 9f8:	f49ff06f          	j	940 <__neorv32_rte_core+0xe4>
 9fc:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x3c>
 a00:	f41ff06f          	j	940 <__neorv32_rte_core+0xe4>
 a04:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x40>
 a08:	f39ff06f          	j	940 <__neorv32_rte_core+0xe4>
 a0c:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x44>
 a10:	f31ff06f          	j	940 <__neorv32_rte_core+0xe4>
 a14:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x48>
 a18:	f29ff06f          	j	940 <__neorv32_rte_core+0xe4>
 a1c:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x4c>
 a20:	f21ff06f          	j	940 <__neorv32_rte_core+0xe4>
 a24:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x50>
 a28:	f19ff06f          	j	940 <__neorv32_rte_core+0xe4>
 a2c:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x54>
 a30:	f11ff06f          	j	940 <__neorv32_rte_core+0xe4>
 a34:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x58>
 a38:	f09ff06f          	j	940 <__neorv32_rte_core+0xe4>
 a3c:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x5c>
 a40:	f01ff06f          	j	940 <__neorv32_rte_core+0xe4>
 a44:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x60>
 a48:	ef9ff06f          	j	940 <__neorv32_rte_core+0xe4>
 a4c:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x64>
 a50:	ef1ff06f          	j	940 <__neorv32_rte_core+0xe4>
 a54:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x68>
 a58:	ee9ff06f          	j	940 <__neorv32_rte_core+0xe4>
 a5c:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x6c>
 a60:	ee1ff06f          	j	940 <__neorv32_rte_core+0xe4>
 a64:	8741a783          	lw	a5,-1932(gp) # 80000074 <__neorv32_rte_vector_lut+0x70>
 a68:	ed9ff06f          	j	940 <__neorv32_rte_core+0xe4>

00000a6c <__neorv32_rte_print_hex_word>:
 a6c:	fe010113          	addi	sp,sp,-32
 a70:	01212823          	sw	s2,16(sp)
 a74:	00050913          	mv	s2,a0
 a78:	00001537          	lui	a0,0x1
 a7c:	00912a23          	sw	s1,20(sp)
 a80:	04850513          	addi	a0,a0,72 # 1048 <symbols.0+0xb8>
 a84:	000014b7          	lui	s1,0x1
 a88:	00812c23          	sw	s0,24(sp)
 a8c:	01312623          	sw	s3,12(sp)
 a90:	00112e23          	sw	ra,28(sp)
 a94:	01c00413          	li	s0,28
 a98:	b09ff0ef          	jal	ra,5a0 <neorv32_uart0_print>
 a9c:	2c848493          	addi	s1,s1,712 # 12c8 <hex_symbols.0>
 aa0:	ffc00993          	li	s3,-4
 aa4:	008957b3          	srl	a5,s2,s0
 aa8:	00f7f793          	andi	a5,a5,15
 aac:	00f487b3          	add	a5,s1,a5
 ab0:	0007c503          	lbu	a0,0(a5)
 ab4:	ffc40413          	addi	s0,s0,-4
 ab8:	ad1ff0ef          	jal	ra,588 <neorv32_uart0_putc>
 abc:	ff3414e3          	bne	s0,s3,aa4 <__neorv32_rte_print_hex_word+0x38>
 ac0:	01c12083          	lw	ra,28(sp)
 ac4:	01812403          	lw	s0,24(sp)
 ac8:	01412483          	lw	s1,20(sp)
 acc:	01012903          	lw	s2,16(sp)
 ad0:	00c12983          	lw	s3,12(sp)
 ad4:	02010113          	addi	sp,sp,32
 ad8:	00008067          	ret

00000adc <__neorv32_rte_debug_exc_handler>:
 adc:	ff010113          	addi	sp,sp,-16
 ae0:	00112623          	sw	ra,12(sp)
 ae4:	00812423          	sw	s0,8(sp)
 ae8:	00912223          	sw	s1,4(sp)
 aec:	9e1ff0ef          	jal	ra,4cc <neorv32_uart0_available>
 af0:	1c050863          	beqz	a0,cc0 <__neorv32_rte_debug_exc_handler+0x1e4>
 af4:	00001537          	lui	a0,0x1
 af8:	04c50513          	addi	a0,a0,76 # 104c <symbols.0+0xbc>
 afc:	aa5ff0ef          	jal	ra,5a0 <neorv32_uart0_print>
 b00:	34202473          	csrr	s0,mcause
 b04:	00900713          	li	a4,9
 b08:	00f47793          	andi	a5,s0,15
 b0c:	03078493          	addi	s1,a5,48
 b10:	00f77463          	bgeu	a4,a5,b18 <__neorv32_rte_debug_exc_handler+0x3c>
 b14:	05778493          	addi	s1,a5,87
 b18:	00b00793          	li	a5,11
 b1c:	0087ee63          	bltu	a5,s0,b38 <__neorv32_rte_debug_exc_handler+0x5c>
 b20:	00001737          	lui	a4,0x1
 b24:	00241793          	slli	a5,s0,0x2
 b28:	21070713          	addi	a4,a4,528 # 1210 <symbols.0+0x280>
 b2c:	00e787b3          	add	a5,a5,a4
 b30:	0007a783          	lw	a5,0(a5)
 b34:	00078067          	jr	a5
 b38:	800007b7          	lui	a5,0x80000
 b3c:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 b40:	14e40e63          	beq	s0,a4,c9c <__neorv32_rte_debug_exc_handler+0x1c0>
 b44:	02876a63          	bltu	a4,s0,b78 <__neorv32_rte_debug_exc_handler+0x9c>
 b48:	00378713          	addi	a4,a5,3
 b4c:	12e40c63          	beq	s0,a4,c84 <__neorv32_rte_debug_exc_handler+0x1a8>
 b50:	00778793          	addi	a5,a5,7
 b54:	12f40e63          	beq	s0,a5,c90 <__neorv32_rte_debug_exc_handler+0x1b4>
 b58:	00001537          	lui	a0,0x1
 b5c:	1ac50513          	addi	a0,a0,428 # 11ac <symbols.0+0x21c>
 b60:	a41ff0ef          	jal	ra,5a0 <neorv32_uart0_print>
 b64:	00040513          	mv	a0,s0
 b68:	f05ff0ef          	jal	ra,a6c <__neorv32_rte_print_hex_word>
 b6c:	00100793          	li	a5,1
 b70:	08f40c63          	beq	s0,a5,c08 <__neorv32_rte_debug_exc_handler+0x12c>
 b74:	0280006f          	j	b9c <__neorv32_rte_debug_exc_handler+0xc0>
 b78:	ff07c793          	xori	a5,a5,-16
 b7c:	00f407b3          	add	a5,s0,a5
 b80:	00f00713          	li	a4,15
 b84:	fcf76ae3          	bltu	a4,a5,b58 <__neorv32_rte_debug_exc_handler+0x7c>
 b88:	00001537          	lui	a0,0x1
 b8c:	19c50513          	addi	a0,a0,412 # 119c <symbols.0+0x20c>
 b90:	a11ff0ef          	jal	ra,5a0 <neorv32_uart0_print>
 b94:	00048513          	mv	a0,s1
 b98:	9f1ff0ef          	jal	ra,588 <neorv32_uart0_putc>
 b9c:	ffd47413          	andi	s0,s0,-3
 ba0:	00500793          	li	a5,5
 ba4:	06f40263          	beq	s0,a5,c08 <__neorv32_rte_debug_exc_handler+0x12c>
 ba8:	00001537          	lui	a0,0x1
 bac:	1f050513          	addi	a0,a0,496 # 11f0 <symbols.0+0x260>
 bb0:	9f1ff0ef          	jal	ra,5a0 <neorv32_uart0_print>
 bb4:	34002573          	csrr	a0,mscratch
 bb8:	eb5ff0ef          	jal	ra,a6c <__neorv32_rte_print_hex_word>
 bbc:	00001537          	lui	a0,0x1
 bc0:	1f850513          	addi	a0,a0,504 # 11f8 <symbols.0+0x268>
 bc4:	9ddff0ef          	jal	ra,5a0 <neorv32_uart0_print>
 bc8:	34302573          	csrr	a0,mtval
 bcc:	ea1ff0ef          	jal	ra,a6c <__neorv32_rte_print_hex_word>
 bd0:	00812403          	lw	s0,8(sp)
 bd4:	00c12083          	lw	ra,12(sp)
 bd8:	00412483          	lw	s1,4(sp)
 bdc:	00001537          	lui	a0,0x1
 be0:	20450513          	addi	a0,a0,516 # 1204 <symbols.0+0x274>
 be4:	01010113          	addi	sp,sp,16
 be8:	9b9ff06f          	j	5a0 <neorv32_uart0_print>
 bec:	00001537          	lui	a0,0x1
 bf0:	05450513          	addi	a0,a0,84 # 1054 <symbols.0+0xc4>
 bf4:	9adff0ef          	jal	ra,5a0 <neorv32_uart0_print>
 bf8:	fb1ff06f          	j	ba8 <__neorv32_rte_debug_exc_handler+0xcc>
 bfc:	00001537          	lui	a0,0x1
 c00:	07450513          	addi	a0,a0,116 # 1074 <symbols.0+0xe4>
 c04:	99dff0ef          	jal	ra,5a0 <neorv32_uart0_print>
 c08:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 c0c:	0a07d463          	bgez	a5,cb4 <__neorv32_rte_debug_exc_handler+0x1d8>
 c10:	0017f793          	andi	a5,a5,1
 c14:	08078a63          	beqz	a5,ca8 <__neorv32_rte_debug_exc_handler+0x1cc>
 c18:	00001537          	lui	a0,0x1
 c1c:	1c450513          	addi	a0,a0,452 # 11c4 <symbols.0+0x234>
 c20:	fd5ff06f          	j	bf4 <__neorv32_rte_debug_exc_handler+0x118>
 c24:	00001537          	lui	a0,0x1
 c28:	09050513          	addi	a0,a0,144 # 1090 <symbols.0+0x100>
 c2c:	fc9ff06f          	j	bf4 <__neorv32_rte_debug_exc_handler+0x118>
 c30:	00001537          	lui	a0,0x1
 c34:	0a450513          	addi	a0,a0,164 # 10a4 <symbols.0+0x114>
 c38:	fbdff06f          	j	bf4 <__neorv32_rte_debug_exc_handler+0x118>
 c3c:	00001537          	lui	a0,0x1
 c40:	0b050513          	addi	a0,a0,176 # 10b0 <symbols.0+0x120>
 c44:	fb1ff06f          	j	bf4 <__neorv32_rte_debug_exc_handler+0x118>
 c48:	00001537          	lui	a0,0x1
 c4c:	0c850513          	addi	a0,a0,200 # 10c8 <symbols.0+0x138>
 c50:	fb5ff06f          	j	c04 <__neorv32_rte_debug_exc_handler+0x128>
 c54:	00001537          	lui	a0,0x1
 c58:	0dc50513          	addi	a0,a0,220 # 10dc <symbols.0+0x14c>
 c5c:	f99ff06f          	j	bf4 <__neorv32_rte_debug_exc_handler+0x118>
 c60:	00001537          	lui	a0,0x1
 c64:	0f850513          	addi	a0,a0,248 # 10f8 <symbols.0+0x168>
 c68:	f9dff06f          	j	c04 <__neorv32_rte_debug_exc_handler+0x128>
 c6c:	00001537          	lui	a0,0x1
 c70:	10c50513          	addi	a0,a0,268 # 110c <symbols.0+0x17c>
 c74:	f81ff06f          	j	bf4 <__neorv32_rte_debug_exc_handler+0x118>
 c78:	00001537          	lui	a0,0x1
 c7c:	12c50513          	addi	a0,a0,300 # 112c <symbols.0+0x19c>
 c80:	f75ff06f          	j	bf4 <__neorv32_rte_debug_exc_handler+0x118>
 c84:	00001537          	lui	a0,0x1
 c88:	14c50513          	addi	a0,a0,332 # 114c <symbols.0+0x1bc>
 c8c:	f69ff06f          	j	bf4 <__neorv32_rte_debug_exc_handler+0x118>
 c90:	00001537          	lui	a0,0x1
 c94:	16850513          	addi	a0,a0,360 # 1168 <symbols.0+0x1d8>
 c98:	f5dff06f          	j	bf4 <__neorv32_rte_debug_exc_handler+0x118>
 c9c:	00001537          	lui	a0,0x1
 ca0:	18050513          	addi	a0,a0,384 # 1180 <symbols.0+0x1f0>
 ca4:	f51ff06f          	j	bf4 <__neorv32_rte_debug_exc_handler+0x118>
 ca8:	00001537          	lui	a0,0x1
 cac:	1d450513          	addi	a0,a0,468 # 11d4 <symbols.0+0x244>
 cb0:	f45ff06f          	j	bf4 <__neorv32_rte_debug_exc_handler+0x118>
 cb4:	00001537          	lui	a0,0x1
 cb8:	1e450513          	addi	a0,a0,484 # 11e4 <symbols.0+0x254>
 cbc:	f39ff06f          	j	bf4 <__neorv32_rte_debug_exc_handler+0x118>
 cc0:	00c12083          	lw	ra,12(sp)
 cc4:	00812403          	lw	s0,8(sp)
 cc8:	00412483          	lw	s1,4(sp)
 ccc:	01010113          	addi	sp,sp,16
 cd0:	00008067          	ret

00000cd4 <neorv32_rte_exception_uninstall>:
 cd4:	01f00793          	li	a5,31
 cd8:	02a7e463          	bltu	a5,a0,d00 <neorv32_rte_exception_uninstall+0x2c>
 cdc:	800007b7          	lui	a5,0x80000
 ce0:	00478793          	addi	a5,a5,4 # 80000004 <__ctr0_io_space_begin+0x80000204>
 ce4:	00251513          	slli	a0,a0,0x2
 ce8:	00a78533          	add	a0,a5,a0
 cec:	000017b7          	lui	a5,0x1
 cf0:	adc78793          	addi	a5,a5,-1316 # adc <__neorv32_rte_debug_exc_handler>
 cf4:	00f52023          	sw	a5,0(a0)
 cf8:	00000513          	li	a0,0
 cfc:	00008067          	ret
 d00:	00100513          	li	a0,1
 d04:	00008067          	ret

00000d08 <neorv32_rte_setup>:
 d08:	ff010113          	addi	sp,sp,-16
 d0c:	000017b7          	lui	a5,0x1
 d10:	00112623          	sw	ra,12(sp)
 d14:	00812423          	sw	s0,8(sp)
 d18:	00912223          	sw	s1,4(sp)
 d1c:	85c78793          	addi	a5,a5,-1956 # 85c <__neorv32_rte_core>
 d20:	30579073          	csrw	mtvec,a5
 d24:	00000793          	li	a5,0
 d28:	30479073          	csrw	mie,a5
 d2c:	34479073          	csrw	mip,a5
 d30:	f6002e23          	sw	zero,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 d34:	00000413          	li	s0,0
 d38:	01d00493          	li	s1,29
 d3c:	00040513          	mv	a0,s0
 d40:	00140413          	addi	s0,s0,1
 d44:	0ff47413          	andi	s0,s0,255
 d48:	f8dff0ef          	jal	ra,cd4 <neorv32_rte_exception_uninstall>
 d4c:	fe9418e3          	bne	s0,s1,d3c <neorv32_rte_setup+0x34>
 d50:	00c12083          	lw	ra,12(sp)
 d54:	00812403          	lw	s0,8(sp)
 d58:	00412483          	lw	s1,4(sp)
 d5c:	01010113          	addi	sp,sp,16
 d60:	00008067          	ret

00000d64 <neorv32_rte_check_isa>:
 d64:	30102673          	csrr	a2,misa
 d68:	400005b7          	lui	a1,0x40000
 d6c:	10058593          	addi	a1,a1,256 # 40000100 <__crt0_copy_data_src_begin+0x3fffee28>
 d70:	00b677b3          	and	a5,a2,a1
 d74:	04b78663          	beq	a5,a1,dc0 <neorv32_rte_check_isa+0x5c>
 d78:	00050663          	beqz	a0,d84 <neorv32_rte_check_isa+0x20>
 d7c:	00100513          	li	a0,1
 d80:	00008067          	ret
 d84:	fe010113          	addi	sp,sp,-32
 d88:	00c12623          	sw	a2,12(sp)
 d8c:	00112e23          	sw	ra,28(sp)
 d90:	f3cff0ef          	jal	ra,4cc <neorv32_uart0_available>
 d94:	400007b7          	lui	a5,0x40000
 d98:	00c12603          	lw	a2,12(sp)
 d9c:	10078593          	addi	a1,a5,256 # 40000100 <__crt0_copy_data_src_begin+0x3fffee28>
 da0:	00050863          	beqz	a0,db0 <neorv32_rte_check_isa+0x4c>
 da4:	00001537          	lui	a0,0x1
 da8:	24050513          	addi	a0,a0,576 # 1240 <symbols.0+0x2b0>
 dac:	84dff0ef          	jal	ra,5f8 <neorv32_uart0_printf>
 db0:	01c12083          	lw	ra,28(sp)
 db4:	00100513          	li	a0,1
 db8:	02010113          	addi	sp,sp,32
 dbc:	00008067          	ret
 dc0:	00000513          	li	a0,0
 dc4:	00008067          	ret

00000dc8 <neorv32_gpio_available>:
 dc8:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 dcc:	01055513          	srli	a0,a0,0x10
 dd0:	00157513          	andi	a0,a0,1
 dd4:	00008067          	ret

00000dd8 <neorv32_gpio_pin_get>:
 dd8:	00050793          	mv	a5,a0
 ddc:	01f00713          	li	a4,31
 de0:	00100513          	li	a0,1
 de4:	00f51533          	sll	a0,a0,a5
 de8:	00f74863          	blt	a4,a5,df8 <neorv32_gpio_pin_get+0x20>
 dec:	fc002783          	lw	a5,-64(zero) # ffffffc0 <__ctr0_io_space_begin+0x1c0>
 df0:	00a7f533          	and	a0,a5,a0
 df4:	00008067          	ret
 df8:	fc402783          	lw	a5,-60(zero) # ffffffc4 <__ctr0_io_space_begin+0x1c4>
 dfc:	ff5ff06f          	j	df0 <neorv32_gpio_pin_get+0x18>

00000e00 <__mulsi3>:
 e00:	00050613          	mv	a2,a0
 e04:	00000513          	li	a0,0
 e08:	0015f693          	andi	a3,a1,1
 e0c:	00068463          	beqz	a3,e14 <__mulsi3+0x14>
 e10:	00c50533          	add	a0,a0,a2
 e14:	0015d593          	srli	a1,a1,0x1
 e18:	00161613          	slli	a2,a2,0x1
 e1c:	fe0596e3          	bnez	a1,e08 <__mulsi3+0x8>
 e20:	00008067          	ret

00000e24 <__muldi3>:
 e24:	00050313          	mv	t1,a0
 e28:	ff010113          	addi	sp,sp,-16
 e2c:	00060513          	mv	a0,a2
 e30:	00068893          	mv	a7,a3
 e34:	00112623          	sw	ra,12(sp)
 e38:	00030613          	mv	a2,t1
 e3c:	00050693          	mv	a3,a0
 e40:	00000713          	li	a4,0
 e44:	00000793          	li	a5,0
 e48:	00000813          	li	a6,0
 e4c:	0016fe13          	andi	t3,a3,1
 e50:	00171e93          	slli	t4,a4,0x1
 e54:	000e0c63          	beqz	t3,e6c <__muldi3+0x48>
 e58:	01060e33          	add	t3,a2,a6
 e5c:	010e3833          	sltu	a6,t3,a6
 e60:	00e787b3          	add	a5,a5,a4
 e64:	00f807b3          	add	a5,a6,a5
 e68:	000e0813          	mv	a6,t3
 e6c:	01f65713          	srli	a4,a2,0x1f
 e70:	0016d693          	srli	a3,a3,0x1
 e74:	00eee733          	or	a4,t4,a4
 e78:	00161613          	slli	a2,a2,0x1
 e7c:	fc0698e3          	bnez	a3,e4c <__muldi3+0x28>
 e80:	00058663          	beqz	a1,e8c <__muldi3+0x68>
 e84:	f7dff0ef          	jal	ra,e00 <__mulsi3>
 e88:	00a787b3          	add	a5,a5,a0
 e8c:	00088a63          	beqz	a7,ea0 <__muldi3+0x7c>
 e90:	00030513          	mv	a0,t1
 e94:	00088593          	mv	a1,a7
 e98:	f69ff0ef          	jal	ra,e00 <__mulsi3>
 e9c:	00f507b3          	add	a5,a0,a5
 ea0:	00c12083          	lw	ra,12(sp)
 ea4:	00080513          	mv	a0,a6
 ea8:	00078593          	mv	a1,a5
 eac:	01010113          	addi	sp,sp,16
 eb0:	00008067          	ret

00000eb4 <__divsi3>:
 eb4:	06054063          	bltz	a0,f14 <__umodsi3+0x10>
 eb8:	0605c663          	bltz	a1,f24 <__umodsi3+0x20>

00000ebc <__udivsi3>:
 ebc:	00058613          	mv	a2,a1
 ec0:	00050593          	mv	a1,a0
 ec4:	fff00513          	li	a0,-1
 ec8:	02060c63          	beqz	a2,f00 <__udivsi3+0x44>
 ecc:	00100693          	li	a3,1
 ed0:	00b67a63          	bgeu	a2,a1,ee4 <__udivsi3+0x28>
 ed4:	00c05863          	blez	a2,ee4 <__udivsi3+0x28>
 ed8:	00161613          	slli	a2,a2,0x1
 edc:	00169693          	slli	a3,a3,0x1
 ee0:	feb66ae3          	bltu	a2,a1,ed4 <__udivsi3+0x18>
 ee4:	00000513          	li	a0,0
 ee8:	00c5e663          	bltu	a1,a2,ef4 <__udivsi3+0x38>
 eec:	40c585b3          	sub	a1,a1,a2
 ef0:	00d56533          	or	a0,a0,a3
 ef4:	0016d693          	srli	a3,a3,0x1
 ef8:	00165613          	srli	a2,a2,0x1
 efc:	fe0696e3          	bnez	a3,ee8 <__udivsi3+0x2c>
 f00:	00008067          	ret

00000f04 <__umodsi3>:
 f04:	00008293          	mv	t0,ra
 f08:	fb5ff0ef          	jal	ra,ebc <__udivsi3>
 f0c:	00058513          	mv	a0,a1
 f10:	00028067          	jr	t0
 f14:	40a00533          	neg	a0,a0
 f18:	00b04863          	bgtz	a1,f28 <__umodsi3+0x24>
 f1c:	40b005b3          	neg	a1,a1
 f20:	f9dff06f          	j	ebc <__udivsi3>
 f24:	40b005b3          	neg	a1,a1
 f28:	00008293          	mv	t0,ra
 f2c:	f91ff0ef          	jal	ra,ebc <__udivsi3>
 f30:	40a00533          	neg	a0,a0
 f34:	00028067          	jr	t0

00000f38 <__modsi3>:
 f38:	00008293          	mv	t0,ra
 f3c:	0005ca63          	bltz	a1,f50 <__modsi3+0x18>
 f40:	00054c63          	bltz	a0,f58 <__modsi3+0x20>
 f44:	f79ff0ef          	jal	ra,ebc <__udivsi3>
 f48:	00058513          	mv	a0,a1
 f4c:	00028067          	jr	t0
 f50:	40b005b3          	neg	a1,a1
 f54:	fe0558e3          	bgez	a0,f44 <__modsi3+0xc>
 f58:	40a00533          	neg	a0,a0
 f5c:	f61ff0ef          	jal	ra,ebc <__udivsi3>
 f60:	40b00533          	neg	a0,a1
 f64:	00028067          	jr	t0
