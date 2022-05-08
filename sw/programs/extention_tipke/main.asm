
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
  e0:	1a858593          	addi	a1,a1,424 # 1284 <__crt0_copy_data_src_begin>
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
 184:	fe010113          	addi	sp,sp,-32
 188:	00000613          	li	a2,0
 18c:	00000593          	li	a1,0
 190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x387c>
 194:	00112e23          	sw	ra,28(sp)
 198:	00812c23          	sw	s0,24(sp)
 19c:	00912a23          	sw	s1,20(sp)
 1a0:	01212823          	sw	s2,16(sp)
 1a4:	01312623          	sw	s3,12(sp)
 1a8:	2e8000ef          	jal	ra,490 <neorv32_uart0_setup>
 1ac:	371000ef          	jal	ra,d1c <neorv32_gpio_available>
 1b0:	08050463          	beqz	a0,238 <main+0xb8>
 1b4:	30d000ef          	jal	ra,cc0 <neorv32_rte_setup>
 1b8:	00001537          	lui	a0,0x1
 1bc:	f5450513          	addi	a0,a0,-172 # f54 <__etext+0x24>
 1c0:	394000ef          	jal	ra,554 <neorv32_uart0_print>
 1c4:	01600513          	li	a0,22
 1c8:	365000ef          	jal	ra,d2c <neorv32_gpio_pin_set>
 1cc:	01700513          	li	a0,23
 1d0:	38d000ef          	jal	ra,d5c <neorv32_gpio_pin_clr>
 1d4:	00800413          	li	s0,8
 1d8:	01800513          	li	a0,24
 1dc:	fff40413          	addi	s0,s0,-1
 1e0:	37d000ef          	jal	ra,d5c <neorv32_gpio_pin_clr>
 1e4:	fe041ae3          	bnez	s0,1d8 <main+0x58>
 1e8:	000019b7          	lui	s3,0x1
 1ec:	00001937          	lui	s2,0x1
 1f0:	000014b7          	lui	s1,0x1
 1f4:	f6898513          	addi	a0,s3,-152 # f68 <__etext+0x38>
 1f8:	35c000ef          	jal	ra,554 <neorv32_uart0_print>
 1fc:	0b0000ef          	jal	ra,2ac <getExtButtons>
 200:	00050413          	mv	s0,a0
 204:	3b5000ef          	jal	ra,db8 <neorv32_gpio_port_get>
 208:	00058693          	mv	a3,a1
 20c:	00050613          	mv	a2,a0
 210:	00040593          	mv	a1,s0
 214:	f8090513          	addi	a0,s2,-128 # f80 <__etext+0x50>
 218:	394000ef          	jal	ra,5ac <neorv32_uart0_printf>
 21c:	fcc02583          	lw	a1,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 220:	fc802603          	lw	a2,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 224:	fa448513          	addi	a0,s1,-92 # fa4 <__etext+0x74>
 228:	384000ef          	jal	ra,5ac <neorv32_uart0_printf>
 22c:	3e800513          	li	a0,1000
 230:	53c000ef          	jal	ra,76c <neorv32_cpu_delay_ms>
 234:	fc1ff06f          	j	1f4 <main+0x74>
 238:	00001537          	lui	a0,0x1
 23c:	f3050513          	addi	a0,a0,-208 # f30 <__etext>
 240:	314000ef          	jal	ra,554 <neorv32_uart0_print>
 244:	01c12083          	lw	ra,28(sp)
 248:	01812403          	lw	s0,24(sp)
 24c:	01412483          	lw	s1,20(sp)
 250:	01012903          	lw	s2,16(sp)
 254:	00c12983          	lw	s3,12(sp)
 258:	00100513          	li	a0,1
 25c:	02010113          	addi	sp,sp,32
 260:	00008067          	ret

00000264 <getButtonState>:
 264:	ff010113          	addi	sp,sp,-16
 268:	00112623          	sw	ra,12(sp)
 26c:	00812423          	sw	s0,8(sp)
 270:	00912223          	sw	s1,4(sp)
 274:	00050493          	mv	s1,a0
 278:	319000ef          	jal	ra,d90 <neorv32_gpio_pin_get>
 27c:	00050413          	mv	s0,a0
 280:	01400513          	li	a0,20
 284:	4e8000ef          	jal	ra,76c <neorv32_cpu_delay_ms>
 288:	00048513          	mv	a0,s1
 28c:	305000ef          	jal	ra,d90 <neorv32_gpio_pin_get>
 290:	00a40463          	beq	s0,a0,298 <getButtonState+0x34>
 294:	00200513          	li	a0,2
 298:	00c12083          	lw	ra,12(sp)
 29c:	00812403          	lw	s0,8(sp)
 2a0:	00412483          	lw	s1,4(sp)
 2a4:	01010113          	addi	sp,sp,16
 2a8:	00008067          	ret

000002ac <getExtButtons>:
 2ac:	ff010113          	addi	sp,sp,-16
 2b0:	01800513          	li	a0,24
 2b4:	00112623          	sw	ra,12(sp)
 2b8:	00812423          	sw	s0,8(sp)
 2bc:	fa9ff0ef          	jal	ra,264 <getButtonState>
 2c0:	00050413          	mv	s0,a0
 2c4:	01900513          	li	a0,25
 2c8:	f9dff0ef          	jal	ra,264 <getButtonState>
 2cc:	00351513          	slli	a0,a0,0x3
 2d0:	00441413          	slli	s0,s0,0x4
 2d4:	00a46433          	or	s0,s0,a0
 2d8:	01a00513          	li	a0,26
 2dc:	f89ff0ef          	jal	ra,264 <getButtonState>
 2e0:	01b00513          	li	a0,27
 2e4:	f81ff0ef          	jal	ra,264 <getButtonState>
 2e8:	00c12083          	lw	ra,12(sp)
 2ec:	00040513          	mv	a0,s0
 2f0:	00812403          	lw	s0,8(sp)
 2f4:	01010113          	addi	sp,sp,16
 2f8:	00008067          	ret

000002fc <neorv32_mtime_get_time>:
 2fc:	f9402583          	lw	a1,-108(zero) # ffffff94 <__ctr0_io_space_begin+0x194>
 300:	f9002503          	lw	a0,-112(zero) # ffffff90 <__ctr0_io_space_begin+0x190>
 304:	f9402783          	lw	a5,-108(zero) # ffffff94 <__ctr0_io_space_begin+0x194>
 308:	fef59ae3          	bne	a1,a5,2fc <neorv32_mtime_get_time>
 30c:	00008067          	ret

00000310 <__neorv32_uart_itoa>:
 310:	fd010113          	addi	sp,sp,-48
 314:	02812423          	sw	s0,40(sp)
 318:	02912223          	sw	s1,36(sp)
 31c:	03212023          	sw	s2,32(sp)
 320:	01312e23          	sw	s3,28(sp)
 324:	01412c23          	sw	s4,24(sp)
 328:	02112623          	sw	ra,44(sp)
 32c:	01512a23          	sw	s5,20(sp)
 330:	00001a37          	lui	s4,0x1
 334:	00050493          	mv	s1,a0
 338:	00058413          	mv	s0,a1
 33c:	00058523          	sb	zero,10(a1)
 340:	00000993          	li	s3,0
 344:	00410913          	addi	s2,sp,4
 348:	fb8a0a13          	addi	s4,s4,-72 # fb8 <numbers.1>
 34c:	00a00593          	li	a1,10
 350:	00048513          	mv	a0,s1
 354:	379000ef          	jal	ra,ecc <__umodsi3>
 358:	00aa0533          	add	a0,s4,a0
 35c:	00054783          	lbu	a5,0(a0)
 360:	01390ab3          	add	s5,s2,s3
 364:	00048513          	mv	a0,s1
 368:	00fa8023          	sb	a5,0(s5)
 36c:	00a00593          	li	a1,10
 370:	315000ef          	jal	ra,e84 <__udivsi3>
 374:	00198993          	addi	s3,s3,1
 378:	00a00793          	li	a5,10
 37c:	00050493          	mv	s1,a0
 380:	fcf996e3          	bne	s3,a5,34c <__neorv32_uart_itoa+0x3c>
 384:	00090693          	mv	a3,s2
 388:	00900713          	li	a4,9
 38c:	03000613          	li	a2,48
 390:	0096c583          	lbu	a1,9(a3)
 394:	00070793          	mv	a5,a4
 398:	fff70713          	addi	a4,a4,-1
 39c:	01071713          	slli	a4,a4,0x10
 3a0:	01075713          	srli	a4,a4,0x10
 3a4:	00c59a63          	bne	a1,a2,3b8 <__neorv32_uart_itoa+0xa8>
 3a8:	000684a3          	sb	zero,9(a3)
 3ac:	fff68693          	addi	a3,a3,-1
 3b0:	fe0710e3          	bnez	a4,390 <__neorv32_uart_itoa+0x80>
 3b4:	00000793          	li	a5,0
 3b8:	00f907b3          	add	a5,s2,a5
 3bc:	00000593          	li	a1,0
 3c0:	0007c703          	lbu	a4,0(a5)
 3c4:	00070c63          	beqz	a4,3dc <__neorv32_uart_itoa+0xcc>
 3c8:	00158693          	addi	a3,a1,1
 3cc:	00b405b3          	add	a1,s0,a1
 3d0:	00e58023          	sb	a4,0(a1)
 3d4:	01069593          	slli	a1,a3,0x10
 3d8:	0105d593          	srli	a1,a1,0x10
 3dc:	fff78713          	addi	a4,a5,-1
 3e0:	02f91863          	bne	s2,a5,410 <__neorv32_uart_itoa+0x100>
 3e4:	00b40433          	add	s0,s0,a1
 3e8:	00040023          	sb	zero,0(s0)
 3ec:	02c12083          	lw	ra,44(sp)
 3f0:	02812403          	lw	s0,40(sp)
 3f4:	02412483          	lw	s1,36(sp)
 3f8:	02012903          	lw	s2,32(sp)
 3fc:	01c12983          	lw	s3,28(sp)
 400:	01812a03          	lw	s4,24(sp)
 404:	01412a83          	lw	s5,20(sp)
 408:	03010113          	addi	sp,sp,48
 40c:	00008067          	ret
 410:	00070793          	mv	a5,a4
 414:	fadff06f          	j	3c0 <__neorv32_uart_itoa+0xb0>

00000418 <__neorv32_uart_tohex>:
 418:	00001637          	lui	a2,0x1
 41c:	00758693          	addi	a3,a1,7
 420:	00000713          	li	a4,0
 424:	fc460613          	addi	a2,a2,-60 # fc4 <symbols.0>
 428:	02000813          	li	a6,32
 42c:	00e557b3          	srl	a5,a0,a4
 430:	00f7f793          	andi	a5,a5,15
 434:	00f607b3          	add	a5,a2,a5
 438:	0007c783          	lbu	a5,0(a5)
 43c:	00470713          	addi	a4,a4,4
 440:	fff68693          	addi	a3,a3,-1
 444:	00f680a3          	sb	a5,1(a3)
 448:	ff0712e3          	bne	a4,a6,42c <__neorv32_uart_tohex+0x14>
 44c:	00058423          	sb	zero,8(a1)
 450:	00008067          	ret

00000454 <__neorv32_uart_touppercase.constprop.0>:
 454:	00b50693          	addi	a3,a0,11
 458:	01900613          	li	a2,25
 45c:	00054783          	lbu	a5,0(a0)
 460:	f9f78713          	addi	a4,a5,-97
 464:	0ff77713          	andi	a4,a4,255
 468:	00e66663          	bltu	a2,a4,474 <__neorv32_uart_touppercase.constprop.0+0x20>
 46c:	fe078793          	addi	a5,a5,-32
 470:	00f50023          	sb	a5,0(a0)
 474:	00150513          	addi	a0,a0,1
 478:	fed512e3          	bne	a0,a3,45c <__neorv32_uart_touppercase.constprop.0+0x8>
 47c:	00008067          	ret

00000480 <neorv32_uart0_available>:
 480:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 484:	01255513          	srli	a0,a0,0x12
 488:	00157513          	andi	a0,a0,1
 48c:	00008067          	ret

00000490 <neorv32_uart0_setup>:
 490:	ff010113          	addi	sp,sp,-16
 494:	00812423          	sw	s0,8(sp)
 498:	00912223          	sw	s1,4(sp)
 49c:	00112623          	sw	ra,12(sp)
 4a0:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 4a4:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 4a8:	00058413          	mv	s0,a1
 4ac:	00151593          	slli	a1,a0,0x1
 4b0:	00078513          	mv	a0,a5
 4b4:	00060493          	mv	s1,a2
 4b8:	1cd000ef          	jal	ra,e84 <__udivsi3>
 4bc:	01051513          	slli	a0,a0,0x10
 4c0:	000017b7          	lui	a5,0x1
 4c4:	01055513          	srli	a0,a0,0x10
 4c8:	00000713          	li	a4,0
 4cc:	ffe78793          	addi	a5,a5,-2 # ffe <symbols.0+0x3a>
 4d0:	04a7e463          	bltu	a5,a0,518 <neorv32_uart0_setup+0x88>
 4d4:	0034f793          	andi	a5,s1,3
 4d8:	00347413          	andi	s0,s0,3
 4dc:	fff50513          	addi	a0,a0,-1
 4e0:	01479793          	slli	a5,a5,0x14
 4e4:	01641413          	slli	s0,s0,0x16
 4e8:	00f567b3          	or	a5,a0,a5
 4ec:	0087e7b3          	or	a5,a5,s0
 4f0:	01871713          	slli	a4,a4,0x18
 4f4:	00c12083          	lw	ra,12(sp)
 4f8:	00812403          	lw	s0,8(sp)
 4fc:	00e7e7b3          	or	a5,a5,a4
 500:	10000737          	lui	a4,0x10000
 504:	00e7e7b3          	or	a5,a5,a4
 508:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 50c:	00412483          	lw	s1,4(sp)
 510:	01010113          	addi	sp,sp,16
 514:	00008067          	ret
 518:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffed7a>
 51c:	0fd6f693          	andi	a3,a3,253
 520:	00069a63          	bnez	a3,534 <neorv32_uart0_setup+0xa4>
 524:	00355513          	srli	a0,a0,0x3
 528:	00170713          	addi	a4,a4,1
 52c:	0ff77713          	andi	a4,a4,255
 530:	fa1ff06f          	j	4d0 <neorv32_uart0_setup+0x40>
 534:	00155513          	srli	a0,a0,0x1
 538:	ff1ff06f          	j	528 <neorv32_uart0_setup+0x98>

0000053c <neorv32_uart0_putc>:
 53c:	00040737          	lui	a4,0x40
 540:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 544:	00e7f7b3          	and	a5,a5,a4
 548:	fe079ce3          	bnez	a5,540 <neorv32_uart0_putc+0x4>
 54c:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 550:	00008067          	ret

00000554 <neorv32_uart0_print>:
 554:	ff010113          	addi	sp,sp,-16
 558:	00812423          	sw	s0,8(sp)
 55c:	01212023          	sw	s2,0(sp)
 560:	00112623          	sw	ra,12(sp)
 564:	00912223          	sw	s1,4(sp)
 568:	00050413          	mv	s0,a0
 56c:	00a00913          	li	s2,10
 570:	00044483          	lbu	s1,0(s0)
 574:	00140413          	addi	s0,s0,1
 578:	00049e63          	bnez	s1,594 <neorv32_uart0_print+0x40>
 57c:	00c12083          	lw	ra,12(sp)
 580:	00812403          	lw	s0,8(sp)
 584:	00412483          	lw	s1,4(sp)
 588:	00012903          	lw	s2,0(sp)
 58c:	01010113          	addi	sp,sp,16
 590:	00008067          	ret
 594:	01249663          	bne	s1,s2,5a0 <neorv32_uart0_print+0x4c>
 598:	00d00513          	li	a0,13
 59c:	fa1ff0ef          	jal	ra,53c <neorv32_uart0_putc>
 5a0:	00048513          	mv	a0,s1
 5a4:	f99ff0ef          	jal	ra,53c <neorv32_uart0_putc>
 5a8:	fc9ff06f          	j	570 <neorv32_uart0_print+0x1c>

000005ac <neorv32_uart0_printf>:
 5ac:	fa010113          	addi	sp,sp,-96
 5b0:	04f12a23          	sw	a5,84(sp)
 5b4:	04410793          	addi	a5,sp,68
 5b8:	02812c23          	sw	s0,56(sp)
 5bc:	03212823          	sw	s2,48(sp)
 5c0:	03312623          	sw	s3,44(sp)
 5c4:	03512223          	sw	s5,36(sp)
 5c8:	03612023          	sw	s6,32(sp)
 5cc:	01712e23          	sw	s7,28(sp)
 5d0:	01812c23          	sw	s8,24(sp)
 5d4:	01912a23          	sw	s9,20(sp)
 5d8:	02112e23          	sw	ra,60(sp)
 5dc:	02912a23          	sw	s1,52(sp)
 5e0:	03412423          	sw	s4,40(sp)
 5e4:	00050413          	mv	s0,a0
 5e8:	04b12223          	sw	a1,68(sp)
 5ec:	04c12423          	sw	a2,72(sp)
 5f0:	04d12623          	sw	a3,76(sp)
 5f4:	04e12823          	sw	a4,80(sp)
 5f8:	05012c23          	sw	a6,88(sp)
 5fc:	05112e23          	sw	a7,92(sp)
 600:	00f12023          	sw	a5,0(sp)
 604:	02500a93          	li	s5,37
 608:	00a00b13          	li	s6,10
 60c:	07000913          	li	s2,112
 610:	05800993          	li	s3,88
 614:	07500b93          	li	s7,117
 618:	07800c13          	li	s8,120
 61c:	07300c93          	li	s9,115
 620:	00044483          	lbu	s1,0(s0)
 624:	02049c63          	bnez	s1,65c <neorv32_uart0_printf+0xb0>
 628:	03c12083          	lw	ra,60(sp)
 62c:	03812403          	lw	s0,56(sp)
 630:	03412483          	lw	s1,52(sp)
 634:	03012903          	lw	s2,48(sp)
 638:	02c12983          	lw	s3,44(sp)
 63c:	02812a03          	lw	s4,40(sp)
 640:	02412a83          	lw	s5,36(sp)
 644:	02012b03          	lw	s6,32(sp)
 648:	01c12b83          	lw	s7,28(sp)
 64c:	01812c03          	lw	s8,24(sp)
 650:	01412c83          	lw	s9,20(sp)
 654:	06010113          	addi	sp,sp,96
 658:	00008067          	ret
 65c:	0f549c63          	bne	s1,s5,754 <neorv32_uart0_printf+0x1a8>
 660:	00240a13          	addi	s4,s0,2
 664:	00144403          	lbu	s0,1(s0)
 668:	0d240263          	beq	s0,s2,72c <neorv32_uart0_printf+0x180>
 66c:	06896463          	bltu	s2,s0,6d4 <neorv32_uart0_printf+0x128>
 670:	06300793          	li	a5,99
 674:	08f40463          	beq	s0,a5,6fc <neorv32_uart0_printf+0x150>
 678:	0087ec63          	bltu	a5,s0,690 <neorv32_uart0_printf+0xe4>
 67c:	0b340863          	beq	s0,s3,72c <neorv32_uart0_printf+0x180>
 680:	02500513          	li	a0,37
 684:	eb9ff0ef          	jal	ra,53c <neorv32_uart0_putc>
 688:	00040513          	mv	a0,s0
 68c:	0800006f          	j	70c <neorv32_uart0_printf+0x160>
 690:	06400793          	li	a5,100
 694:	00f40663          	beq	s0,a5,6a0 <neorv32_uart0_printf+0xf4>
 698:	06900793          	li	a5,105
 69c:	fef412e3          	bne	s0,a5,680 <neorv32_uart0_printf+0xd4>
 6a0:	00012783          	lw	a5,0(sp)
 6a4:	0007a403          	lw	s0,0(a5)
 6a8:	00478713          	addi	a4,a5,4
 6ac:	00e12023          	sw	a4,0(sp)
 6b0:	00045863          	bgez	s0,6c0 <neorv32_uart0_printf+0x114>
 6b4:	02d00513          	li	a0,45
 6b8:	40800433          	neg	s0,s0
 6bc:	e81ff0ef          	jal	ra,53c <neorv32_uart0_putc>
 6c0:	00410593          	addi	a1,sp,4
 6c4:	00040513          	mv	a0,s0
 6c8:	c49ff0ef          	jal	ra,310 <__neorv32_uart_itoa>
 6cc:	00410513          	addi	a0,sp,4
 6d0:	0200006f          	j	6f0 <neorv32_uart0_printf+0x144>
 6d4:	05740063          	beq	s0,s7,714 <neorv32_uart0_printf+0x168>
 6d8:	05840a63          	beq	s0,s8,72c <neorv32_uart0_printf+0x180>
 6dc:	fb9412e3          	bne	s0,s9,680 <neorv32_uart0_printf+0xd4>
 6e0:	00012783          	lw	a5,0(sp)
 6e4:	0007a503          	lw	a0,0(a5)
 6e8:	00478713          	addi	a4,a5,4
 6ec:	00e12023          	sw	a4,0(sp)
 6f0:	e65ff0ef          	jal	ra,554 <neorv32_uart0_print>
 6f4:	000a0413          	mv	s0,s4
 6f8:	f29ff06f          	j	620 <neorv32_uart0_printf+0x74>
 6fc:	00012783          	lw	a5,0(sp)
 700:	0007c503          	lbu	a0,0(a5)
 704:	00478713          	addi	a4,a5,4
 708:	00e12023          	sw	a4,0(sp)
 70c:	e31ff0ef          	jal	ra,53c <neorv32_uart0_putc>
 710:	fe5ff06f          	j	6f4 <neorv32_uart0_printf+0x148>
 714:	00012783          	lw	a5,0(sp)
 718:	00410593          	addi	a1,sp,4
 71c:	00478713          	addi	a4,a5,4
 720:	0007a503          	lw	a0,0(a5)
 724:	00e12023          	sw	a4,0(sp)
 728:	fa1ff06f          	j	6c8 <neorv32_uart0_printf+0x11c>
 72c:	00012783          	lw	a5,0(sp)
 730:	00410593          	addi	a1,sp,4
 734:	0007a503          	lw	a0,0(a5)
 738:	00478713          	addi	a4,a5,4
 73c:	00e12023          	sw	a4,0(sp)
 740:	cd9ff0ef          	jal	ra,418 <__neorv32_uart_tohex>
 744:	f93414e3          	bne	s0,s3,6cc <neorv32_uart0_printf+0x120>
 748:	00410513          	addi	a0,sp,4
 74c:	d09ff0ef          	jal	ra,454 <__neorv32_uart_touppercase.constprop.0>
 750:	f7dff06f          	j	6cc <neorv32_uart0_printf+0x120>
 754:	01649663          	bne	s1,s6,760 <neorv32_uart0_printf+0x1b4>
 758:	00d00513          	li	a0,13
 75c:	de1ff0ef          	jal	ra,53c <neorv32_uart0_putc>
 760:	00140a13          	addi	s4,s0,1
 764:	00048513          	mv	a0,s1
 768:	fa5ff06f          	j	70c <neorv32_uart0_printf+0x160>

0000076c <neorv32_cpu_delay_ms>:
 76c:	fe010113          	addi	sp,sp,-32
 770:	00a12623          	sw	a0,12(sp)
 774:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 778:	3e800593          	li	a1,1000
 77c:	00112e23          	sw	ra,28(sp)
 780:	00812c23          	sw	s0,24(sp)
 784:	00912a23          	sw	s1,20(sp)
 788:	6fc000ef          	jal	ra,e84 <__udivsi3>
 78c:	00c12603          	lw	a2,12(sp)
 790:	00000693          	li	a3,0
 794:	00000593          	li	a1,0
 798:	654000ef          	jal	ra,dec <__muldi3>
 79c:	fe802783          	lw	a5,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 7a0:	00020737          	lui	a4,0x20
 7a4:	00050413          	mv	s0,a0
 7a8:	00e7f7b3          	and	a5,a5,a4
 7ac:	00058493          	mv	s1,a1
 7b0:	02078e63          	beqz	a5,7ec <neorv32_cpu_delay_ms+0x80>
 7b4:	b49ff0ef          	jal	ra,2fc <neorv32_mtime_get_time>
 7b8:	00850433          	add	s0,a0,s0
 7bc:	00a43533          	sltu	a0,s0,a0
 7c0:	009584b3          	add	s1,a1,s1
 7c4:	009504b3          	add	s1,a0,s1
 7c8:	b35ff0ef          	jal	ra,2fc <neorv32_mtime_get_time>
 7cc:	fe95eee3          	bltu	a1,s1,7c8 <neorv32_cpu_delay_ms+0x5c>
 7d0:	00b49463          	bne	s1,a1,7d8 <neorv32_cpu_delay_ms+0x6c>
 7d4:	fe856ae3          	bltu	a0,s0,7c8 <neorv32_cpu_delay_ms+0x5c>
 7d8:	01c12083          	lw	ra,28(sp)
 7dc:	01812403          	lw	s0,24(sp)
 7e0:	01412483          	lw	s1,20(sp)
 7e4:	02010113          	addi	sp,sp,32
 7e8:	00008067          	ret
 7ec:	01c59493          	slli	s1,a1,0x1c
 7f0:	00455513          	srli	a0,a0,0x4
 7f4:	00a4e533          	or	a0,s1,a0

000007f8 <__neorv32_cpu_delay_ms_start>:
 7f8:	00050a63          	beqz	a0,80c <__neorv32_cpu_delay_ms_end>
 7fc:	00050863          	beqz	a0,80c <__neorv32_cpu_delay_ms_end>
 800:	fff50513          	addi	a0,a0,-1
 804:	00000013          	nop
 808:	ff1ff06f          	j	7f8 <__neorv32_cpu_delay_ms_start>

0000080c <__neorv32_cpu_delay_ms_end>:
 80c:	fcdff06f          	j	7d8 <neorv32_cpu_delay_ms+0x6c>

00000810 <__neorv32_rte_core>:
 810:	fc010113          	addi	sp,sp,-64
 814:	02112e23          	sw	ra,60(sp)
 818:	02512c23          	sw	t0,56(sp)
 81c:	02612a23          	sw	t1,52(sp)
 820:	02712823          	sw	t2,48(sp)
 824:	02a12623          	sw	a0,44(sp)
 828:	02b12423          	sw	a1,40(sp)
 82c:	02c12223          	sw	a2,36(sp)
 830:	02d12023          	sw	a3,32(sp)
 834:	00e12e23          	sw	a4,28(sp)
 838:	00f12c23          	sw	a5,24(sp)
 83c:	01012a23          	sw	a6,20(sp)
 840:	01112823          	sw	a7,16(sp)
 844:	01c12623          	sw	t3,12(sp)
 848:	01d12423          	sw	t4,8(sp)
 84c:	01e12223          	sw	t5,4(sp)
 850:	01f12023          	sw	t6,0(sp)
 854:	341026f3          	csrr	a3,mepc
 858:	34069073          	csrw	mscratch,a3
 85c:	342027f3          	csrr	a5,mcause
 860:	0607c063          	bltz	a5,8c0 <__neorv32_rte_core+0xb0>
 864:	0006d703          	lhu	a4,0(a3)
 868:	01071713          	slli	a4,a4,0x10
 86c:	01075713          	srli	a4,a4,0x10
 870:	00468593          	addi	a1,a3,4
 874:	30102673          	csrr	a2,misa
 878:	00467613          	andi	a2,a2,4
 87c:	00060a63          	beqz	a2,890 <__neorv32_rte_core+0x80>
 880:	00377713          	andi	a4,a4,3
 884:	00300613          	li	a2,3
 888:	00c70463          	beq	a4,a2,890 <__neorv32_rte_core+0x80>
 88c:	00268593          	addi	a1,a3,2
 890:	34159073          	csrw	mepc,a1
 894:	00b00713          	li	a4,11
 898:	00f77863          	bgeu	a4,a5,8a8 <__neorv32_rte_core+0x98>
 89c:	000017b7          	lui	a5,0x1
 8a0:	a9478793          	addi	a5,a5,-1388 # a94 <__neorv32_rte_debug_exc_handler>
 8a4:	0500006f          	j	8f4 <__neorv32_rte_core+0xe4>
 8a8:	00001737          	lui	a4,0x1
 8ac:	00279793          	slli	a5,a5,0x2
 8b0:	fd870713          	addi	a4,a4,-40 # fd8 <symbols.0+0x14>
 8b4:	00e787b3          	add	a5,a5,a4
 8b8:	0007a783          	lw	a5,0(a5)
 8bc:	00078067          	jr	a5
 8c0:	80000737          	lui	a4,0x80000
 8c4:	ffd74713          	xori	a4,a4,-3
 8c8:	00e787b3          	add	a5,a5,a4
 8cc:	01c00713          	li	a4,28
 8d0:	fcf766e3          	bltu	a4,a5,89c <__neorv32_rte_core+0x8c>
 8d4:	00001737          	lui	a4,0x1
 8d8:	00279793          	slli	a5,a5,0x2
 8dc:	00870713          	addi	a4,a4,8 # 1008 <symbols.0+0x44>
 8e0:	00e787b3          	add	a5,a5,a4
 8e4:	0007a783          	lw	a5,0(a5)
 8e8:	00078067          	jr	a5
 8ec:	800007b7          	lui	a5,0x80000
 8f0:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 8f4:	000780e7          	jalr	a5
 8f8:	03c12083          	lw	ra,60(sp)
 8fc:	03812283          	lw	t0,56(sp)
 900:	03412303          	lw	t1,52(sp)
 904:	03012383          	lw	t2,48(sp)
 908:	02c12503          	lw	a0,44(sp)
 90c:	02812583          	lw	a1,40(sp)
 910:	02412603          	lw	a2,36(sp)
 914:	02012683          	lw	a3,32(sp)
 918:	01c12703          	lw	a4,28(sp)
 91c:	01812783          	lw	a5,24(sp)
 920:	01412803          	lw	a6,20(sp)
 924:	01012883          	lw	a7,16(sp)
 928:	00c12e03          	lw	t3,12(sp)
 92c:	00812e83          	lw	t4,8(sp)
 930:	00412f03          	lw	t5,4(sp)
 934:	00012f83          	lw	t6,0(sp)
 938:	04010113          	addi	sp,sp,64
 93c:	30200073          	mret
 940:	800007b7          	lui	a5,0x80000
 944:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 948:	fadff06f          	j	8f4 <__neorv32_rte_core+0xe4>
 94c:	8081a783          	lw	a5,-2040(gp) # 80000008 <__neorv32_rte_vector_lut+0x8>
 950:	fa5ff06f          	j	8f4 <__neorv32_rte_core+0xe4>
 954:	80c1a783          	lw	a5,-2036(gp) # 8000000c <__neorv32_rte_vector_lut+0xc>
 958:	f9dff06f          	j	8f4 <__neorv32_rte_core+0xe4>
 95c:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
 960:	f95ff06f          	j	8f4 <__neorv32_rte_core+0xe4>
 964:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
 968:	f8dff06f          	j	8f4 <__neorv32_rte_core+0xe4>
 96c:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
 970:	f85ff06f          	j	8f4 <__neorv32_rte_core+0xe4>
 974:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
 978:	f7dff06f          	j	8f4 <__neorv32_rte_core+0xe4>
 97c:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
 980:	f75ff06f          	j	8f4 <__neorv32_rte_core+0xe4>
 984:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
 988:	f6dff06f          	j	8f4 <__neorv32_rte_core+0xe4>
 98c:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
 990:	f65ff06f          	j	8f4 <__neorv32_rte_core+0xe4>
 994:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
 998:	f5dff06f          	j	8f4 <__neorv32_rte_core+0xe4>
 99c:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
 9a0:	f55ff06f          	j	8f4 <__neorv32_rte_core+0xe4>
 9a4:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
 9a8:	f4dff06f          	j	8f4 <__neorv32_rte_core+0xe4>
 9ac:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
 9b0:	f45ff06f          	j	8f4 <__neorv32_rte_core+0xe4>
 9b4:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
 9b8:	f3dff06f          	j	8f4 <__neorv32_rte_core+0xe4>
 9bc:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 9c0:	f35ff06f          	j	8f4 <__neorv32_rte_core+0xe4>
 9c4:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 9c8:	f2dff06f          	j	8f4 <__neorv32_rte_core+0xe4>
 9cc:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 9d0:	f25ff06f          	j	8f4 <__neorv32_rte_core+0xe4>
 9d4:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 9d8:	f1dff06f          	j	8f4 <__neorv32_rte_core+0xe4>
 9dc:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 9e0:	f15ff06f          	j	8f4 <__neorv32_rte_core+0xe4>
 9e4:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 9e8:	f0dff06f          	j	8f4 <__neorv32_rte_core+0xe4>
 9ec:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 9f0:	f05ff06f          	j	8f4 <__neorv32_rte_core+0xe4>
 9f4:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 9f8:	efdff06f          	j	8f4 <__neorv32_rte_core+0xe4>
 9fc:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 a00:	ef5ff06f          	j	8f4 <__neorv32_rte_core+0xe4>
 a04:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 a08:	eedff06f          	j	8f4 <__neorv32_rte_core+0xe4>
 a0c:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 a10:	ee5ff06f          	j	8f4 <__neorv32_rte_core+0xe4>
 a14:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 a18:	eddff06f          	j	8f4 <__neorv32_rte_core+0xe4>
 a1c:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 a20:	ed5ff06f          	j	8f4 <__neorv32_rte_core+0xe4>

00000a24 <__neorv32_rte_print_hex_word>:
 a24:	fe010113          	addi	sp,sp,-32
 a28:	01212823          	sw	s2,16(sp)
 a2c:	00050913          	mv	s2,a0
 a30:	00001537          	lui	a0,0x1
 a34:	00912a23          	sw	s1,20(sp)
 a38:	07c50513          	addi	a0,a0,124 # 107c <symbols.0+0xb8>
 a3c:	000014b7          	lui	s1,0x1
 a40:	00812c23          	sw	s0,24(sp)
 a44:	01312623          	sw	s3,12(sp)
 a48:	00112e23          	sw	ra,28(sp)
 a4c:	01c00413          	li	s0,28
 a50:	b05ff0ef          	jal	ra,554 <neorv32_uart0_print>
 a54:	27448493          	addi	s1,s1,628 # 1274 <hex_symbols.0>
 a58:	ffc00993          	li	s3,-4
 a5c:	008957b3          	srl	a5,s2,s0
 a60:	00f7f793          	andi	a5,a5,15
 a64:	00f487b3          	add	a5,s1,a5
 a68:	0007c503          	lbu	a0,0(a5)
 a6c:	ffc40413          	addi	s0,s0,-4
 a70:	acdff0ef          	jal	ra,53c <neorv32_uart0_putc>
 a74:	ff3414e3          	bne	s0,s3,a5c <__neorv32_rte_print_hex_word+0x38>
 a78:	01c12083          	lw	ra,28(sp)
 a7c:	01812403          	lw	s0,24(sp)
 a80:	01412483          	lw	s1,20(sp)
 a84:	01012903          	lw	s2,16(sp)
 a88:	00c12983          	lw	s3,12(sp)
 a8c:	02010113          	addi	sp,sp,32
 a90:	00008067          	ret

00000a94 <__neorv32_rte_debug_exc_handler>:
 a94:	ff010113          	addi	sp,sp,-16
 a98:	00112623          	sw	ra,12(sp)
 a9c:	00812423          	sw	s0,8(sp)
 aa0:	00912223          	sw	s1,4(sp)
 aa4:	9ddff0ef          	jal	ra,480 <neorv32_uart0_available>
 aa8:	1c050863          	beqz	a0,c78 <__neorv32_rte_debug_exc_handler+0x1e4>
 aac:	00001537          	lui	a0,0x1
 ab0:	08050513          	addi	a0,a0,128 # 1080 <symbols.0+0xbc>
 ab4:	aa1ff0ef          	jal	ra,554 <neorv32_uart0_print>
 ab8:	34202473          	csrr	s0,mcause
 abc:	00900713          	li	a4,9
 ac0:	00f47793          	andi	a5,s0,15
 ac4:	03078493          	addi	s1,a5,48
 ac8:	00f77463          	bgeu	a4,a5,ad0 <__neorv32_rte_debug_exc_handler+0x3c>
 acc:	05778493          	addi	s1,a5,87
 ad0:	00b00793          	li	a5,11
 ad4:	0087ee63          	bltu	a5,s0,af0 <__neorv32_rte_debug_exc_handler+0x5c>
 ad8:	00001737          	lui	a4,0x1
 adc:	00241793          	slli	a5,s0,0x2
 ae0:	24470713          	addi	a4,a4,580 # 1244 <symbols.0+0x280>
 ae4:	00e787b3          	add	a5,a5,a4
 ae8:	0007a783          	lw	a5,0(a5)
 aec:	00078067          	jr	a5
 af0:	800007b7          	lui	a5,0x80000
 af4:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 af8:	14e40e63          	beq	s0,a4,c54 <__neorv32_rte_debug_exc_handler+0x1c0>
 afc:	02876a63          	bltu	a4,s0,b30 <__neorv32_rte_debug_exc_handler+0x9c>
 b00:	00378713          	addi	a4,a5,3
 b04:	12e40c63          	beq	s0,a4,c3c <__neorv32_rte_debug_exc_handler+0x1a8>
 b08:	00778793          	addi	a5,a5,7
 b0c:	12f40e63          	beq	s0,a5,c48 <__neorv32_rte_debug_exc_handler+0x1b4>
 b10:	00001537          	lui	a0,0x1
 b14:	1e050513          	addi	a0,a0,480 # 11e0 <symbols.0+0x21c>
 b18:	a3dff0ef          	jal	ra,554 <neorv32_uart0_print>
 b1c:	00040513          	mv	a0,s0
 b20:	f05ff0ef          	jal	ra,a24 <__neorv32_rte_print_hex_word>
 b24:	00100793          	li	a5,1
 b28:	08f40c63          	beq	s0,a5,bc0 <__neorv32_rte_debug_exc_handler+0x12c>
 b2c:	0280006f          	j	b54 <__neorv32_rte_debug_exc_handler+0xc0>
 b30:	ff07c793          	xori	a5,a5,-16
 b34:	00f407b3          	add	a5,s0,a5
 b38:	00f00713          	li	a4,15
 b3c:	fcf76ae3          	bltu	a4,a5,b10 <__neorv32_rte_debug_exc_handler+0x7c>
 b40:	00001537          	lui	a0,0x1
 b44:	1d050513          	addi	a0,a0,464 # 11d0 <symbols.0+0x20c>
 b48:	a0dff0ef          	jal	ra,554 <neorv32_uart0_print>
 b4c:	00048513          	mv	a0,s1
 b50:	9edff0ef          	jal	ra,53c <neorv32_uart0_putc>
 b54:	ffd47413          	andi	s0,s0,-3
 b58:	00500793          	li	a5,5
 b5c:	06f40263          	beq	s0,a5,bc0 <__neorv32_rte_debug_exc_handler+0x12c>
 b60:	00001537          	lui	a0,0x1
 b64:	22450513          	addi	a0,a0,548 # 1224 <symbols.0+0x260>
 b68:	9edff0ef          	jal	ra,554 <neorv32_uart0_print>
 b6c:	34002573          	csrr	a0,mscratch
 b70:	eb5ff0ef          	jal	ra,a24 <__neorv32_rte_print_hex_word>
 b74:	00001537          	lui	a0,0x1
 b78:	22c50513          	addi	a0,a0,556 # 122c <symbols.0+0x268>
 b7c:	9d9ff0ef          	jal	ra,554 <neorv32_uart0_print>
 b80:	34302573          	csrr	a0,mtval
 b84:	ea1ff0ef          	jal	ra,a24 <__neorv32_rte_print_hex_word>
 b88:	00812403          	lw	s0,8(sp)
 b8c:	00c12083          	lw	ra,12(sp)
 b90:	00412483          	lw	s1,4(sp)
 b94:	00001537          	lui	a0,0x1
 b98:	23850513          	addi	a0,a0,568 # 1238 <symbols.0+0x274>
 b9c:	01010113          	addi	sp,sp,16
 ba0:	9b5ff06f          	j	554 <neorv32_uart0_print>
 ba4:	00001537          	lui	a0,0x1
 ba8:	08850513          	addi	a0,a0,136 # 1088 <symbols.0+0xc4>
 bac:	9a9ff0ef          	jal	ra,554 <neorv32_uart0_print>
 bb0:	fb1ff06f          	j	b60 <__neorv32_rte_debug_exc_handler+0xcc>
 bb4:	00001537          	lui	a0,0x1
 bb8:	0a850513          	addi	a0,a0,168 # 10a8 <symbols.0+0xe4>
 bbc:	999ff0ef          	jal	ra,554 <neorv32_uart0_print>
 bc0:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 bc4:	0a07d463          	bgez	a5,c6c <__neorv32_rte_debug_exc_handler+0x1d8>
 bc8:	0017f793          	andi	a5,a5,1
 bcc:	08078a63          	beqz	a5,c60 <__neorv32_rte_debug_exc_handler+0x1cc>
 bd0:	00001537          	lui	a0,0x1
 bd4:	1f850513          	addi	a0,a0,504 # 11f8 <symbols.0+0x234>
 bd8:	fd5ff06f          	j	bac <__neorv32_rte_debug_exc_handler+0x118>
 bdc:	00001537          	lui	a0,0x1
 be0:	0c450513          	addi	a0,a0,196 # 10c4 <symbols.0+0x100>
 be4:	fc9ff06f          	j	bac <__neorv32_rte_debug_exc_handler+0x118>
 be8:	00001537          	lui	a0,0x1
 bec:	0d850513          	addi	a0,a0,216 # 10d8 <symbols.0+0x114>
 bf0:	fbdff06f          	j	bac <__neorv32_rte_debug_exc_handler+0x118>
 bf4:	00001537          	lui	a0,0x1
 bf8:	0e450513          	addi	a0,a0,228 # 10e4 <symbols.0+0x120>
 bfc:	fb1ff06f          	j	bac <__neorv32_rte_debug_exc_handler+0x118>
 c00:	00001537          	lui	a0,0x1
 c04:	0fc50513          	addi	a0,a0,252 # 10fc <symbols.0+0x138>
 c08:	fb5ff06f          	j	bbc <__neorv32_rte_debug_exc_handler+0x128>
 c0c:	00001537          	lui	a0,0x1
 c10:	11050513          	addi	a0,a0,272 # 1110 <symbols.0+0x14c>
 c14:	f99ff06f          	j	bac <__neorv32_rte_debug_exc_handler+0x118>
 c18:	00001537          	lui	a0,0x1
 c1c:	12c50513          	addi	a0,a0,300 # 112c <symbols.0+0x168>
 c20:	f9dff06f          	j	bbc <__neorv32_rte_debug_exc_handler+0x128>
 c24:	00001537          	lui	a0,0x1
 c28:	14050513          	addi	a0,a0,320 # 1140 <symbols.0+0x17c>
 c2c:	f81ff06f          	j	bac <__neorv32_rte_debug_exc_handler+0x118>
 c30:	00001537          	lui	a0,0x1
 c34:	16050513          	addi	a0,a0,352 # 1160 <symbols.0+0x19c>
 c38:	f75ff06f          	j	bac <__neorv32_rte_debug_exc_handler+0x118>
 c3c:	00001537          	lui	a0,0x1
 c40:	18050513          	addi	a0,a0,384 # 1180 <symbols.0+0x1bc>
 c44:	f69ff06f          	j	bac <__neorv32_rte_debug_exc_handler+0x118>
 c48:	00001537          	lui	a0,0x1
 c4c:	19c50513          	addi	a0,a0,412 # 119c <symbols.0+0x1d8>
 c50:	f5dff06f          	j	bac <__neorv32_rte_debug_exc_handler+0x118>
 c54:	00001537          	lui	a0,0x1
 c58:	1b450513          	addi	a0,a0,436 # 11b4 <symbols.0+0x1f0>
 c5c:	f51ff06f          	j	bac <__neorv32_rte_debug_exc_handler+0x118>
 c60:	00001537          	lui	a0,0x1
 c64:	20850513          	addi	a0,a0,520 # 1208 <symbols.0+0x244>
 c68:	f45ff06f          	j	bac <__neorv32_rte_debug_exc_handler+0x118>
 c6c:	00001537          	lui	a0,0x1
 c70:	21850513          	addi	a0,a0,536 # 1218 <symbols.0+0x254>
 c74:	f39ff06f          	j	bac <__neorv32_rte_debug_exc_handler+0x118>
 c78:	00c12083          	lw	ra,12(sp)
 c7c:	00812403          	lw	s0,8(sp)
 c80:	00412483          	lw	s1,4(sp)
 c84:	01010113          	addi	sp,sp,16
 c88:	00008067          	ret

00000c8c <neorv32_rte_exception_uninstall>:
 c8c:	01f00793          	li	a5,31
 c90:	02a7e463          	bltu	a5,a0,cb8 <neorv32_rte_exception_uninstall+0x2c>
 c94:	800007b7          	lui	a5,0x80000
 c98:	00078793          	mv	a5,a5
 c9c:	00251513          	slli	a0,a0,0x2
 ca0:	00a78533          	add	a0,a5,a0
 ca4:	000017b7          	lui	a5,0x1
 ca8:	a9478793          	addi	a5,a5,-1388 # a94 <__neorv32_rte_debug_exc_handler>
 cac:	00f52023          	sw	a5,0(a0)
 cb0:	00000513          	li	a0,0
 cb4:	00008067          	ret
 cb8:	00100513          	li	a0,1
 cbc:	00008067          	ret

00000cc0 <neorv32_rte_setup>:
 cc0:	ff010113          	addi	sp,sp,-16
 cc4:	000017b7          	lui	a5,0x1
 cc8:	00112623          	sw	ra,12(sp)
 ccc:	00812423          	sw	s0,8(sp)
 cd0:	00912223          	sw	s1,4(sp)
 cd4:	81078793          	addi	a5,a5,-2032 # 810 <__neorv32_rte_core>
 cd8:	30579073          	csrw	mtvec,a5
 cdc:	00000793          	li	a5,0
 ce0:	30479073          	csrw	mie,a5
 ce4:	34479073          	csrw	mip,a5
 ce8:	f6002e23          	sw	zero,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 cec:	00000413          	li	s0,0
 cf0:	01d00493          	li	s1,29
 cf4:	00040513          	mv	a0,s0
 cf8:	00140413          	addi	s0,s0,1
 cfc:	0ff47413          	andi	s0,s0,255
 d00:	f8dff0ef          	jal	ra,c8c <neorv32_rte_exception_uninstall>
 d04:	fe9418e3          	bne	s0,s1,cf4 <neorv32_rte_setup+0x34>
 d08:	00c12083          	lw	ra,12(sp)
 d0c:	00812403          	lw	s0,8(sp)
 d10:	00412483          	lw	s1,4(sp)
 d14:	01010113          	addi	sp,sp,16
 d18:	00008067          	ret

00000d1c <neorv32_gpio_available>:
 d1c:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 d20:	01055513          	srli	a0,a0,0x10
 d24:	00157513          	andi	a0,a0,1
 d28:	00008067          	ret

00000d2c <neorv32_gpio_pin_set>:
 d2c:	00100793          	li	a5,1
 d30:	01f00713          	li	a4,31
 d34:	00a797b3          	sll	a5,a5,a0
 d38:	00a74a63          	blt	a4,a0,d4c <neorv32_gpio_pin_set+0x20>
 d3c:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 d40:	00f767b3          	or	a5,a4,a5
 d44:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 d48:	00008067          	ret
 d4c:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 d50:	00f767b3          	or	a5,a4,a5
 d54:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 d58:	00008067          	ret

00000d5c <neorv32_gpio_pin_clr>:
 d5c:	00100793          	li	a5,1
 d60:	00a797b3          	sll	a5,a5,a0
 d64:	01f00713          	li	a4,31
 d68:	fff7c793          	not	a5,a5
 d6c:	00a74a63          	blt	a4,a0,d80 <neorv32_gpio_pin_clr+0x24>
 d70:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 d74:	00f777b3          	and	a5,a4,a5
 d78:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 d7c:	00008067          	ret
 d80:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 d84:	00f777b3          	and	a5,a4,a5
 d88:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 d8c:	00008067          	ret

00000d90 <neorv32_gpio_pin_get>:
 d90:	00050793          	mv	a5,a0
 d94:	01f00713          	li	a4,31
 d98:	00100513          	li	a0,1
 d9c:	00f51533          	sll	a0,a0,a5
 da0:	00f74863          	blt	a4,a5,db0 <neorv32_gpio_pin_get+0x20>
 da4:	fc002783          	lw	a5,-64(zero) # ffffffc0 <__ctr0_io_space_begin+0x1c0>
 da8:	00a7f533          	and	a0,a5,a0
 dac:	00008067          	ret
 db0:	fc402783          	lw	a5,-60(zero) # ffffffc4 <__ctr0_io_space_begin+0x1c4>
 db4:	ff5ff06f          	j	da8 <neorv32_gpio_pin_get+0x18>

00000db8 <neorv32_gpio_port_get>:
 db8:	fc000793          	li	a5,-64
 dbc:	0007a503          	lw	a0,0(a5)
 dc0:	0047a583          	lw	a1,4(a5)
 dc4:	00008067          	ret

00000dc8 <__mulsi3>:
 dc8:	00050613          	mv	a2,a0
 dcc:	00000513          	li	a0,0
 dd0:	0015f693          	andi	a3,a1,1
 dd4:	00068463          	beqz	a3,ddc <__mulsi3+0x14>
 dd8:	00c50533          	add	a0,a0,a2
 ddc:	0015d593          	srli	a1,a1,0x1
 de0:	00161613          	slli	a2,a2,0x1
 de4:	fe0596e3          	bnez	a1,dd0 <__mulsi3+0x8>
 de8:	00008067          	ret

00000dec <__muldi3>:
 dec:	00050313          	mv	t1,a0
 df0:	ff010113          	addi	sp,sp,-16
 df4:	00060513          	mv	a0,a2
 df8:	00068893          	mv	a7,a3
 dfc:	00112623          	sw	ra,12(sp)
 e00:	00030613          	mv	a2,t1
 e04:	00050693          	mv	a3,a0
 e08:	00000713          	li	a4,0
 e0c:	00000793          	li	a5,0
 e10:	00000813          	li	a6,0
 e14:	0016fe13          	andi	t3,a3,1
 e18:	00171e93          	slli	t4,a4,0x1
 e1c:	000e0c63          	beqz	t3,e34 <__muldi3+0x48>
 e20:	01060e33          	add	t3,a2,a6
 e24:	010e3833          	sltu	a6,t3,a6
 e28:	00e787b3          	add	a5,a5,a4
 e2c:	00f807b3          	add	a5,a6,a5
 e30:	000e0813          	mv	a6,t3
 e34:	01f65713          	srli	a4,a2,0x1f
 e38:	0016d693          	srli	a3,a3,0x1
 e3c:	00eee733          	or	a4,t4,a4
 e40:	00161613          	slli	a2,a2,0x1
 e44:	fc0698e3          	bnez	a3,e14 <__muldi3+0x28>
 e48:	00058663          	beqz	a1,e54 <__muldi3+0x68>
 e4c:	f7dff0ef          	jal	ra,dc8 <__mulsi3>
 e50:	00a787b3          	add	a5,a5,a0
 e54:	00088a63          	beqz	a7,e68 <__muldi3+0x7c>
 e58:	00030513          	mv	a0,t1
 e5c:	00088593          	mv	a1,a7
 e60:	f69ff0ef          	jal	ra,dc8 <__mulsi3>
 e64:	00f507b3          	add	a5,a0,a5
 e68:	00c12083          	lw	ra,12(sp)
 e6c:	00080513          	mv	a0,a6
 e70:	00078593          	mv	a1,a5
 e74:	01010113          	addi	sp,sp,16
 e78:	00008067          	ret

00000e7c <__divsi3>:
 e7c:	06054063          	bltz	a0,edc <__umodsi3+0x10>
 e80:	0605c663          	bltz	a1,eec <__umodsi3+0x20>

00000e84 <__udivsi3>:
 e84:	00058613          	mv	a2,a1
 e88:	00050593          	mv	a1,a0
 e8c:	fff00513          	li	a0,-1
 e90:	02060c63          	beqz	a2,ec8 <__udivsi3+0x44>
 e94:	00100693          	li	a3,1
 e98:	00b67a63          	bgeu	a2,a1,eac <__udivsi3+0x28>
 e9c:	00c05863          	blez	a2,eac <__udivsi3+0x28>
 ea0:	00161613          	slli	a2,a2,0x1
 ea4:	00169693          	slli	a3,a3,0x1
 ea8:	feb66ae3          	bltu	a2,a1,e9c <__udivsi3+0x18>
 eac:	00000513          	li	a0,0
 eb0:	00c5e663          	bltu	a1,a2,ebc <__udivsi3+0x38>
 eb4:	40c585b3          	sub	a1,a1,a2
 eb8:	00d56533          	or	a0,a0,a3
 ebc:	0016d693          	srli	a3,a3,0x1
 ec0:	00165613          	srli	a2,a2,0x1
 ec4:	fe0696e3          	bnez	a3,eb0 <__udivsi3+0x2c>
 ec8:	00008067          	ret

00000ecc <__umodsi3>:
 ecc:	00008293          	mv	t0,ra
 ed0:	fb5ff0ef          	jal	ra,e84 <__udivsi3>
 ed4:	00058513          	mv	a0,a1
 ed8:	00028067          	jr	t0
 edc:	40a00533          	neg	a0,a0
 ee0:	00b04863          	bgtz	a1,ef0 <__umodsi3+0x24>
 ee4:	40b005b3          	neg	a1,a1
 ee8:	f9dff06f          	j	e84 <__udivsi3>
 eec:	40b005b3          	neg	a1,a1
 ef0:	00008293          	mv	t0,ra
 ef4:	f91ff0ef          	jal	ra,e84 <__udivsi3>
 ef8:	40a00533          	neg	a0,a0
 efc:	00028067          	jr	t0

00000f00 <__modsi3>:
 f00:	00008293          	mv	t0,ra
 f04:	0005ca63          	bltz	a1,f18 <__modsi3+0x18>
 f08:	00054c63          	bltz	a0,f20 <__modsi3+0x20>
 f0c:	f79ff0ef          	jal	ra,e84 <__udivsi3>
 f10:	00058513          	mv	a0,a1
 f14:	00028067          	jr	t0
 f18:	40b005b3          	neg	a1,a1
 f1c:	fe0558e3          	bgez	a0,f0c <__modsi3+0xc>
 f20:	40a00533          	neg	a0,a0
 f24:	f61ff0ef          	jal	ra,e84 <__udivsi3>
 f28:	40b00533          	neg	a0,a1
 f2c:	00028067          	jr	t0
