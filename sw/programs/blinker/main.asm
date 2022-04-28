
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
  e0:	11c58593          	addi	a1,a1,284 # 11f8 <__crt0_copy_data_src_begin>
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
 190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3908>
 194:	00112e23          	sw	ra,28(sp)
 198:	00812c23          	sw	s0,24(sp)
 19c:	00912a23          	sw	s1,20(sp)
 1a0:	01212823          	sw	s2,16(sp)
 1a4:	258000ef          	jal	ra,3fc <neorv32_uart0_setup>
 1a8:	2ed000ef          	jal	ra,c94 <neorv32_gpio_available>
 1ac:	06050c63          	beqz	a0,224 <main+0xa4>
 1b0:	29d000ef          	jal	ra,c4c <neorv32_rte_setup>
 1b4:	00001537          	lui	a0,0x1
 1b8:	eec50513          	addi	a0,a0,-276 # eec <__etext+0x24>
 1bc:	304000ef          	jal	ra,4c0 <neorv32_uart0_print>
 1c0:	00b00513          	li	a0,11
 1c4:	2e1000ef          	jal	ra,ca4 <neorv32_gpio_pin_set>
 1c8:	00c00513          	li	a0,12
 1cc:	309000ef          	jal	ra,cd4 <neorv32_gpio_pin_clr>
 1d0:	00000593          	li	a1,0
 1d4:	000014b7          	lui	s1,0x1
 1d8:	00001937          	lui	s2,0x1
 1dc:	f0c48513          	addi	a0,s1,-244 # f0c <__etext+0x44>
 1e0:	00b12623          	sw	a1,12(sp)
 1e4:	2dc000ef          	jal	ra,4c0 <neorv32_uart0_print>
 1e8:	00900513          	li	a0,9
 1ec:	060000ef          	jal	ra,24c <getButtonState>
 1f0:	00c12583          	lw	a1,12(sp)
 1f4:	00050413          	mv	s0,a0
 1f8:	00a58663          	beq	a1,a0,204 <main+0x84>
 1fc:	f1890513          	addi	a0,s2,-232 # f18 <__etext+0x50>
 200:	318000ef          	jal	ra,518 <neorv32_uart0_printf>
 204:	00b00513          	li	a0,11
 208:	301000ef          	jal	ra,d08 <neorv32_gpio_pin_toggle>
 20c:	00c00513          	li	a0,12
 210:	2f9000ef          	jal	ra,d08 <neorv32_gpio_pin_toggle>
 214:	1f400513          	li	a0,500
 218:	4c4000ef          	jal	ra,6dc <neorv32_cpu_delay_ms>
 21c:	00040593          	mv	a1,s0
 220:	fbdff06f          	j	1dc <main+0x5c>
 224:	00001537          	lui	a0,0x1
 228:	ec850513          	addi	a0,a0,-312 # ec8 <__etext>
 22c:	294000ef          	jal	ra,4c0 <neorv32_uart0_print>
 230:	01c12083          	lw	ra,28(sp)
 234:	01812403          	lw	s0,24(sp)
 238:	01412483          	lw	s1,20(sp)
 23c:	01012903          	lw	s2,16(sp)
 240:	00100513          	li	a0,1
 244:	02010113          	addi	sp,sp,32
 248:	00008067          	ret

0000024c <getButtonState>:
 24c:	ff010113          	addi	sp,sp,-16
 250:	00112623          	sw	ra,12(sp)
 254:	00812423          	sw	s0,8(sp)
 258:	00912223          	sw	s1,4(sp)
 25c:	00050493          	mv	s1,a0
 260:	2d9000ef          	jal	ra,d38 <neorv32_gpio_pin_get>
 264:	00050413          	mv	s0,a0
 268:	00500513          	li	a0,5
 26c:	470000ef          	jal	ra,6dc <neorv32_cpu_delay_ms>
 270:	00048513          	mv	a0,s1
 274:	2c5000ef          	jal	ra,d38 <neorv32_gpio_pin_get>
 278:	00a477b3          	and	a5,s0,a0
 27c:	02079263          	bnez	a5,2a0 <getButtonState+0x54>
 280:	00a46533          	or	a0,s0,a0
 284:	00a03533          	snez	a0,a0
 288:	00150513          	addi	a0,a0,1
 28c:	00c12083          	lw	ra,12(sp)
 290:	00812403          	lw	s0,8(sp)
 294:	00412483          	lw	s1,4(sp)
 298:	01010113          	addi	sp,sp,16
 29c:	00008067          	ret
 2a0:	00000513          	li	a0,0
 2a4:	fe9ff06f          	j	28c <getButtonState+0x40>

000002a8 <__neorv32_uart_itoa>:
 2a8:	fd010113          	addi	sp,sp,-48
 2ac:	02812423          	sw	s0,40(sp)
 2b0:	02912223          	sw	s1,36(sp)
 2b4:	03212023          	sw	s2,32(sp)
 2b8:	01312e23          	sw	s3,28(sp)
 2bc:	01412c23          	sw	s4,24(sp)
 2c0:	02112623          	sw	ra,44(sp)
 2c4:	01512a23          	sw	s5,20(sp)
 2c8:	00001a37          	lui	s4,0x1
 2cc:	00050493          	mv	s1,a0
 2d0:	00058413          	mv	s0,a1
 2d4:	00058523          	sb	zero,10(a1)
 2d8:	00000993          	li	s3,0
 2dc:	00410913          	addi	s2,sp,4
 2e0:	f30a0a13          	addi	s4,s4,-208 # f30 <numbers.1>
 2e4:	00a00593          	li	a1,10
 2e8:	00048513          	mv	a0,s1
 2ec:	379000ef          	jal	ra,e64 <__umodsi3>
 2f0:	00aa0533          	add	a0,s4,a0
 2f4:	00054783          	lbu	a5,0(a0)
 2f8:	01390ab3          	add	s5,s2,s3
 2fc:	00048513          	mv	a0,s1
 300:	00fa8023          	sb	a5,0(s5)
 304:	00a00593          	li	a1,10
 308:	315000ef          	jal	ra,e1c <__udivsi3>
 30c:	00198993          	addi	s3,s3,1
 310:	00a00793          	li	a5,10
 314:	00050493          	mv	s1,a0
 318:	fcf996e3          	bne	s3,a5,2e4 <__neorv32_uart_itoa+0x3c>
 31c:	00090693          	mv	a3,s2
 320:	00900713          	li	a4,9
 324:	03000613          	li	a2,48
 328:	0096c583          	lbu	a1,9(a3)
 32c:	00070793          	mv	a5,a4
 330:	fff70713          	addi	a4,a4,-1
 334:	01071713          	slli	a4,a4,0x10
 338:	01075713          	srli	a4,a4,0x10
 33c:	00c59a63          	bne	a1,a2,350 <__neorv32_uart_itoa+0xa8>
 340:	000684a3          	sb	zero,9(a3)
 344:	fff68693          	addi	a3,a3,-1
 348:	fe0710e3          	bnez	a4,328 <__neorv32_uart_itoa+0x80>
 34c:	00000793          	li	a5,0
 350:	00f907b3          	add	a5,s2,a5
 354:	00000593          	li	a1,0
 358:	0007c703          	lbu	a4,0(a5)
 35c:	00070c63          	beqz	a4,374 <__neorv32_uart_itoa+0xcc>
 360:	00158693          	addi	a3,a1,1
 364:	00b405b3          	add	a1,s0,a1
 368:	00e58023          	sb	a4,0(a1)
 36c:	01069593          	slli	a1,a3,0x10
 370:	0105d593          	srli	a1,a1,0x10
 374:	fff78713          	addi	a4,a5,-1
 378:	02f91863          	bne	s2,a5,3a8 <__neorv32_uart_itoa+0x100>
 37c:	00b40433          	add	s0,s0,a1
 380:	00040023          	sb	zero,0(s0)
 384:	02c12083          	lw	ra,44(sp)
 388:	02812403          	lw	s0,40(sp)
 38c:	02412483          	lw	s1,36(sp)
 390:	02012903          	lw	s2,32(sp)
 394:	01c12983          	lw	s3,28(sp)
 398:	01812a03          	lw	s4,24(sp)
 39c:	01412a83          	lw	s5,20(sp)
 3a0:	03010113          	addi	sp,sp,48
 3a4:	00008067          	ret
 3a8:	00070793          	mv	a5,a4
 3ac:	fadff06f          	j	358 <__neorv32_uart_itoa+0xb0>

000003b0 <__neorv32_uart_tohex>:
 3b0:	00001637          	lui	a2,0x1
 3b4:	00758693          	addi	a3,a1,7
 3b8:	00000713          	li	a4,0
 3bc:	f3c60613          	addi	a2,a2,-196 # f3c <symbols.0>
 3c0:	02000813          	li	a6,32
 3c4:	00e557b3          	srl	a5,a0,a4
 3c8:	00f7f793          	andi	a5,a5,15
 3cc:	00f607b3          	add	a5,a2,a5
 3d0:	0007c783          	lbu	a5,0(a5)
 3d4:	00470713          	addi	a4,a4,4
 3d8:	fff68693          	addi	a3,a3,-1
 3dc:	00f680a3          	sb	a5,1(a3)
 3e0:	ff0712e3          	bne	a4,a6,3c4 <__neorv32_uart_tohex+0x14>
 3e4:	00058423          	sb	zero,8(a1)
 3e8:	00008067          	ret

000003ec <neorv32_uart0_available>:
 3ec:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 3f0:	01255513          	srli	a0,a0,0x12
 3f4:	00157513          	andi	a0,a0,1
 3f8:	00008067          	ret

000003fc <neorv32_uart0_setup>:
 3fc:	ff010113          	addi	sp,sp,-16
 400:	00812423          	sw	s0,8(sp)
 404:	00912223          	sw	s1,4(sp)
 408:	00112623          	sw	ra,12(sp)
 40c:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 410:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 414:	00058413          	mv	s0,a1
 418:	00151593          	slli	a1,a0,0x1
 41c:	00078513          	mv	a0,a5
 420:	00060493          	mv	s1,a2
 424:	1f9000ef          	jal	ra,e1c <__udivsi3>
 428:	01051513          	slli	a0,a0,0x10
 42c:	000017b7          	lui	a5,0x1
 430:	01055513          	srli	a0,a0,0x10
 434:	00000713          	li	a4,0
 438:	ffe78793          	addi	a5,a5,-2 # ffe <symbols.0+0xc2>
 43c:	04a7e463          	bltu	a5,a0,484 <neorv32_uart0_setup+0x88>
 440:	0034f793          	andi	a5,s1,3
 444:	00347413          	andi	s0,s0,3
 448:	fff50513          	addi	a0,a0,-1
 44c:	01479793          	slli	a5,a5,0x14
 450:	01641413          	slli	s0,s0,0x16
 454:	00f567b3          	or	a5,a0,a5
 458:	0087e7b3          	or	a5,a5,s0
 45c:	01871713          	slli	a4,a4,0x18
 460:	00c12083          	lw	ra,12(sp)
 464:	00812403          	lw	s0,8(sp)
 468:	00e7e7b3          	or	a5,a5,a4
 46c:	10000737          	lui	a4,0x10000
 470:	00e7e7b3          	or	a5,a5,a4
 474:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 478:	00412483          	lw	s1,4(sp)
 47c:	01010113          	addi	sp,sp,16
 480:	00008067          	ret
 484:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffee06>
 488:	0fd6f693          	andi	a3,a3,253
 48c:	00069a63          	bnez	a3,4a0 <neorv32_uart0_setup+0xa4>
 490:	00355513          	srli	a0,a0,0x3
 494:	00170713          	addi	a4,a4,1
 498:	0ff77713          	andi	a4,a4,255
 49c:	fa1ff06f          	j	43c <neorv32_uart0_setup+0x40>
 4a0:	00155513          	srli	a0,a0,0x1
 4a4:	ff1ff06f          	j	494 <neorv32_uart0_setup+0x98>

000004a8 <neorv32_uart0_putc>:
 4a8:	00040737          	lui	a4,0x40
 4ac:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 4b0:	00e7f7b3          	and	a5,a5,a4
 4b4:	fe079ce3          	bnez	a5,4ac <neorv32_uart0_putc+0x4>
 4b8:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 4bc:	00008067          	ret

000004c0 <neorv32_uart0_print>:
 4c0:	ff010113          	addi	sp,sp,-16
 4c4:	00812423          	sw	s0,8(sp)
 4c8:	01212023          	sw	s2,0(sp)
 4cc:	00112623          	sw	ra,12(sp)
 4d0:	00912223          	sw	s1,4(sp)
 4d4:	00050413          	mv	s0,a0
 4d8:	00a00913          	li	s2,10
 4dc:	00044483          	lbu	s1,0(s0)
 4e0:	00140413          	addi	s0,s0,1
 4e4:	00049e63          	bnez	s1,500 <neorv32_uart0_print+0x40>
 4e8:	00c12083          	lw	ra,12(sp)
 4ec:	00812403          	lw	s0,8(sp)
 4f0:	00412483          	lw	s1,4(sp)
 4f4:	00012903          	lw	s2,0(sp)
 4f8:	01010113          	addi	sp,sp,16
 4fc:	00008067          	ret
 500:	01249663          	bne	s1,s2,50c <neorv32_uart0_print+0x4c>
 504:	00d00513          	li	a0,13
 508:	fa1ff0ef          	jal	ra,4a8 <neorv32_uart0_putc>
 50c:	00048513          	mv	a0,s1
 510:	f99ff0ef          	jal	ra,4a8 <neorv32_uart0_putc>
 514:	fc9ff06f          	j	4dc <neorv32_uart0_print+0x1c>

00000518 <neorv32_uart0_printf>:
 518:	fa010113          	addi	sp,sp,-96
 51c:	04f12a23          	sw	a5,84(sp)
 520:	04410793          	addi	a5,sp,68
 524:	02812c23          	sw	s0,56(sp)
 528:	03212823          	sw	s2,48(sp)
 52c:	03412423          	sw	s4,40(sp)
 530:	03512223          	sw	s5,36(sp)
 534:	03612023          	sw	s6,32(sp)
 538:	01712e23          	sw	s7,28(sp)
 53c:	01812c23          	sw	s8,24(sp)
 540:	01912a23          	sw	s9,20(sp)
 544:	02112e23          	sw	ra,60(sp)
 548:	02912a23          	sw	s1,52(sp)
 54c:	03312623          	sw	s3,44(sp)
 550:	00050413          	mv	s0,a0
 554:	04b12223          	sw	a1,68(sp)
 558:	04c12423          	sw	a2,72(sp)
 55c:	04d12623          	sw	a3,76(sp)
 560:	04e12823          	sw	a4,80(sp)
 564:	05012c23          	sw	a6,88(sp)
 568:	05112e23          	sw	a7,92(sp)
 56c:	00f12023          	sw	a5,0(sp)
 570:	02500a13          	li	s4,37
 574:	00a00a93          	li	s5,10
 578:	07300913          	li	s2,115
 57c:	07500b13          	li	s6,117
 580:	07800b93          	li	s7,120
 584:	06300c13          	li	s8,99
 588:	06900c93          	li	s9,105
 58c:	00044483          	lbu	s1,0(s0)
 590:	02049c63          	bnez	s1,5c8 <neorv32_uart0_printf+0xb0>
 594:	03c12083          	lw	ra,60(sp)
 598:	03812403          	lw	s0,56(sp)
 59c:	03412483          	lw	s1,52(sp)
 5a0:	03012903          	lw	s2,48(sp)
 5a4:	02c12983          	lw	s3,44(sp)
 5a8:	02812a03          	lw	s4,40(sp)
 5ac:	02412a83          	lw	s5,36(sp)
 5b0:	02012b03          	lw	s6,32(sp)
 5b4:	01c12b83          	lw	s7,28(sp)
 5b8:	01812c03          	lw	s8,24(sp)
 5bc:	01412c83          	lw	s9,20(sp)
 5c0:	06010113          	addi	sp,sp,96
 5c4:	00008067          	ret
 5c8:	0d449863          	bne	s1,s4,698 <neorv32_uart0_printf+0x180>
 5cc:	00240993          	addi	s3,s0,2
 5d0:	00144403          	lbu	s0,1(s0)
 5d4:	05240263          	beq	s0,s2,618 <neorv32_uart0_printf+0x100>
 5d8:	00896e63          	bltu	s2,s0,5f4 <neorv32_uart0_printf+0xdc>
 5dc:	05840c63          	beq	s0,s8,634 <neorv32_uart0_printf+0x11c>
 5e0:	07940663          	beq	s0,s9,64c <neorv32_uart0_printf+0x134>
 5e4:	02500513          	li	a0,37
 5e8:	ec1ff0ef          	jal	ra,4a8 <neorv32_uart0_putc>
 5ec:	00040513          	mv	a0,s0
 5f0:	0540006f          	j	644 <neorv32_uart0_printf+0x12c>
 5f4:	09640663          	beq	s0,s6,680 <neorv32_uart0_printf+0x168>
 5f8:	ff7416e3          	bne	s0,s7,5e4 <neorv32_uart0_printf+0xcc>
 5fc:	00012783          	lw	a5,0(sp)
 600:	00410593          	addi	a1,sp,4
 604:	0007a503          	lw	a0,0(a5)
 608:	00478713          	addi	a4,a5,4
 60c:	00e12023          	sw	a4,0(sp)
 610:	da1ff0ef          	jal	ra,3b0 <__neorv32_uart_tohex>
 614:	0640006f          	j	678 <neorv32_uart0_printf+0x160>
 618:	00012783          	lw	a5,0(sp)
 61c:	0007a503          	lw	a0,0(a5)
 620:	00478713          	addi	a4,a5,4
 624:	00e12023          	sw	a4,0(sp)
 628:	e99ff0ef          	jal	ra,4c0 <neorv32_uart0_print>
 62c:	00098413          	mv	s0,s3
 630:	f5dff06f          	j	58c <neorv32_uart0_printf+0x74>
 634:	00012783          	lw	a5,0(sp)
 638:	0007c503          	lbu	a0,0(a5)
 63c:	00478713          	addi	a4,a5,4
 640:	00e12023          	sw	a4,0(sp)
 644:	e65ff0ef          	jal	ra,4a8 <neorv32_uart0_putc>
 648:	fe5ff06f          	j	62c <neorv32_uart0_printf+0x114>
 64c:	00012783          	lw	a5,0(sp)
 650:	0007a403          	lw	s0,0(a5)
 654:	00478713          	addi	a4,a5,4
 658:	00e12023          	sw	a4,0(sp)
 65c:	00045863          	bgez	s0,66c <neorv32_uart0_printf+0x154>
 660:	02d00513          	li	a0,45
 664:	40800433          	neg	s0,s0
 668:	e41ff0ef          	jal	ra,4a8 <neorv32_uart0_putc>
 66c:	00410593          	addi	a1,sp,4
 670:	00040513          	mv	a0,s0
 674:	c35ff0ef          	jal	ra,2a8 <__neorv32_uart_itoa>
 678:	00410513          	addi	a0,sp,4
 67c:	fadff06f          	j	628 <neorv32_uart0_printf+0x110>
 680:	00012783          	lw	a5,0(sp)
 684:	00410593          	addi	a1,sp,4
 688:	00478713          	addi	a4,a5,4
 68c:	0007a503          	lw	a0,0(a5)
 690:	00e12023          	sw	a4,0(sp)
 694:	fe1ff06f          	j	674 <neorv32_uart0_printf+0x15c>
 698:	01549663          	bne	s1,s5,6a4 <neorv32_uart0_printf+0x18c>
 69c:	00d00513          	li	a0,13
 6a0:	e09ff0ef          	jal	ra,4a8 <neorv32_uart0_putc>
 6a4:	00140993          	addi	s3,s0,1
 6a8:	00048513          	mv	a0,s1
 6ac:	f99ff06f          	j	644 <neorv32_uart0_printf+0x12c>

000006b0 <neorv32_cpu_get_systime>:
 6b0:	ff010113          	addi	sp,sp,-16
 6b4:	c81026f3          	rdtimeh	a3
 6b8:	c0102773          	rdtime	a4
 6bc:	c81027f3          	rdtimeh	a5
 6c0:	fed79ae3          	bne	a5,a3,6b4 <neorv32_cpu_get_systime+0x4>
 6c4:	00e12023          	sw	a4,0(sp)
 6c8:	00f12223          	sw	a5,4(sp)
 6cc:	00012503          	lw	a0,0(sp)
 6d0:	00412583          	lw	a1,4(sp)
 6d4:	01010113          	addi	sp,sp,16
 6d8:	00008067          	ret

000006dc <neorv32_cpu_delay_ms>:
 6dc:	fd010113          	addi	sp,sp,-48
 6e0:	00a12623          	sw	a0,12(sp)
 6e4:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 6e8:	3e800593          	li	a1,1000
 6ec:	02112623          	sw	ra,44(sp)
 6f0:	02812423          	sw	s0,40(sp)
 6f4:	02912223          	sw	s1,36(sp)
 6f8:	03212023          	sw	s2,32(sp)
 6fc:	01312e23          	sw	s3,28(sp)
 700:	71c000ef          	jal	ra,e1c <__udivsi3>
 704:	00c12603          	lw	a2,12(sp)
 708:	00000693          	li	a3,0
 70c:	00000593          	li	a1,0
 710:	674000ef          	jal	ra,d84 <__muldi3>
 714:	00050413          	mv	s0,a0
 718:	00058993          	mv	s3,a1
 71c:	f95ff0ef          	jal	ra,6b0 <neorv32_cpu_get_systime>
 720:	00058913          	mv	s2,a1
 724:	00050493          	mv	s1,a0
 728:	f89ff0ef          	jal	ra,6b0 <neorv32_cpu_get_systime>
 72c:	00b96663          	bltu	s2,a1,738 <neorv32_cpu_delay_ms+0x5c>
 730:	05259263          	bne	a1,s2,774 <neorv32_cpu_delay_ms+0x98>
 734:	04a4f063          	bgeu	s1,a0,774 <neorv32_cpu_delay_ms+0x98>
 738:	008484b3          	add	s1,s1,s0
 73c:	0084b433          	sltu	s0,s1,s0
 740:	01390933          	add	s2,s2,s3
 744:	01240433          	add	s0,s0,s2
 748:	f69ff0ef          	jal	ra,6b0 <neorv32_cpu_get_systime>
 74c:	fe85eee3          	bltu	a1,s0,748 <neorv32_cpu_delay_ms+0x6c>
 750:	00b41463          	bne	s0,a1,758 <neorv32_cpu_delay_ms+0x7c>
 754:	fe956ae3          	bltu	a0,s1,748 <neorv32_cpu_delay_ms+0x6c>
 758:	02c12083          	lw	ra,44(sp)
 75c:	02812403          	lw	s0,40(sp)
 760:	02412483          	lw	s1,36(sp)
 764:	02012903          	lw	s2,32(sp)
 768:	01c12983          	lw	s3,28(sp)
 76c:	03010113          	addi	sp,sp,48
 770:	00008067          	ret
 774:	01c99913          	slli	s2,s3,0x1c
 778:	00445413          	srli	s0,s0,0x4
 77c:	00896433          	or	s0,s2,s0

00000780 <__neorv32_cpu_delay_ms_start>:
 780:	00040a63          	beqz	s0,794 <__neorv32_cpu_delay_ms_end>
 784:	00040863          	beqz	s0,794 <__neorv32_cpu_delay_ms_end>
 788:	fff40413          	addi	s0,s0,-1
 78c:	00000013          	nop
 790:	ff1ff06f          	j	780 <__neorv32_cpu_delay_ms_start>

00000794 <__neorv32_cpu_delay_ms_end>:
 794:	fc5ff06f          	j	758 <neorv32_cpu_delay_ms+0x7c>
 798:	0000                	unimp
 79a:	0000                	unimp
 79c:	0000                	unimp
 79e:	0000                	unimp

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
 7e4:	34102773          	csrr	a4,mepc
 7e8:	34071073          	csrw	mscratch,a4
 7ec:	342027f3          	csrr	a5,mcause
 7f0:	0807ca63          	bltz	a5,884 <__neorv32_rte_core+0xe4>
 7f4:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3ee08>
 7f8:	00300593          	li	a1,3
 7fc:	0036f693          	andi	a3,a3,3
 800:	00270613          	addi	a2,a4,2
 804:	00b69463          	bne	a3,a1,80c <__neorv32_rte_core+0x6c>
 808:	00470613          	addi	a2,a4,4
 80c:	34161073          	csrw	mepc,a2
 810:	00b00713          	li	a4,11
 814:	04f77c63          	bgeu	a4,a5,86c <__neorv32_rte_core+0xcc>
 818:	000017b7          	lui	a5,0x1
 81c:	a2078793          	addi	a5,a5,-1504 # a20 <__neorv32_rte_debug_exc_handler>
 820:	000780e7          	jalr	a5
 824:	03c12083          	lw	ra,60(sp)
 828:	03812283          	lw	t0,56(sp)
 82c:	03412303          	lw	t1,52(sp)
 830:	03012383          	lw	t2,48(sp)
 834:	02c12503          	lw	a0,44(sp)
 838:	02812583          	lw	a1,40(sp)
 83c:	02412603          	lw	a2,36(sp)
 840:	02012683          	lw	a3,32(sp)
 844:	01c12703          	lw	a4,28(sp)
 848:	01812783          	lw	a5,24(sp)
 84c:	01412803          	lw	a6,20(sp)
 850:	01012883          	lw	a7,16(sp)
 854:	00c12e03          	lw	t3,12(sp)
 858:	00812e83          	lw	t4,8(sp)
 85c:	00412f03          	lw	t5,4(sp)
 860:	00012f83          	lw	t6,0(sp)
 864:	04010113          	addi	sp,sp,64
 868:	30200073          	mret
 86c:	00001737          	lui	a4,0x1
 870:	00279793          	slli	a5,a5,0x2
 874:	f5070713          	addi	a4,a4,-176 # f50 <symbols.0+0x14>
 878:	00e787b3          	add	a5,a5,a4
 87c:	0007a783          	lw	a5,0(a5)
 880:	00078067          	jr	a5
 884:	80000737          	lui	a4,0x80000
 888:	ffd74713          	xori	a4,a4,-3
 88c:	00e787b3          	add	a5,a5,a4
 890:	01c00713          	li	a4,28
 894:	f8f762e3          	bltu	a4,a5,818 <__neorv32_rte_core+0x78>
 898:	00001737          	lui	a4,0x1
 89c:	00279793          	slli	a5,a5,0x2
 8a0:	f8070713          	addi	a4,a4,-128 # f80 <symbols.0+0x44>
 8a4:	00e787b3          	add	a5,a5,a4
 8a8:	0007a783          	lw	a5,0(a5)
 8ac:	00078067          	jr	a5
 8b0:	800007b7          	lui	a5,0x80000
 8b4:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 8b8:	f69ff06f          	j	820 <__neorv32_rte_core+0x80>
 8bc:	800007b7          	lui	a5,0x80000
 8c0:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 8c4:	f5dff06f          	j	820 <__neorv32_rte_core+0x80>
 8c8:	800007b7          	lui	a5,0x80000
 8cc:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 8d0:	f51ff06f          	j	820 <__neorv32_rte_core+0x80>
 8d4:	800007b7          	lui	a5,0x80000
 8d8:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
 8dc:	f45ff06f          	j	820 <__neorv32_rte_core+0x80>
 8e0:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
 8e4:	f3dff06f          	j	820 <__neorv32_rte_core+0x80>
 8e8:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
 8ec:	f35ff06f          	j	820 <__neorv32_rte_core+0x80>
 8f0:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
 8f4:	f2dff06f          	j	820 <__neorv32_rte_core+0x80>
 8f8:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
 8fc:	f25ff06f          	j	820 <__neorv32_rte_core+0x80>
 900:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
 904:	f1dff06f          	j	820 <__neorv32_rte_core+0x80>
 908:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
 90c:	f15ff06f          	j	820 <__neorv32_rte_core+0x80>
 910:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
 914:	f0dff06f          	j	820 <__neorv32_rte_core+0x80>
 918:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
 91c:	f05ff06f          	j	820 <__neorv32_rte_core+0x80>
 920:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
 924:	efdff06f          	j	820 <__neorv32_rte_core+0x80>
 928:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
 92c:	ef5ff06f          	j	820 <__neorv32_rte_core+0x80>
 930:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
 934:	eedff06f          	j	820 <__neorv32_rte_core+0x80>
 938:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
 93c:	ee5ff06f          	j	820 <__neorv32_rte_core+0x80>
 940:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 944:	eddff06f          	j	820 <__neorv32_rte_core+0x80>
 948:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 94c:	ed5ff06f          	j	820 <__neorv32_rte_core+0x80>
 950:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 954:	ecdff06f          	j	820 <__neorv32_rte_core+0x80>
 958:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 95c:	ec5ff06f          	j	820 <__neorv32_rte_core+0x80>
 960:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 964:	ebdff06f          	j	820 <__neorv32_rte_core+0x80>
 968:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 96c:	eb5ff06f          	j	820 <__neorv32_rte_core+0x80>
 970:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 974:	eadff06f          	j	820 <__neorv32_rte_core+0x80>
 978:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 97c:	ea5ff06f          	j	820 <__neorv32_rte_core+0x80>
 980:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 984:	e9dff06f          	j	820 <__neorv32_rte_core+0x80>
 988:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 98c:	e95ff06f          	j	820 <__neorv32_rte_core+0x80>
 990:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 994:	e8dff06f          	j	820 <__neorv32_rte_core+0x80>
 998:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 99c:	e85ff06f          	j	820 <__neorv32_rte_core+0x80>
 9a0:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 9a4:	e7dff06f          	j	820 <__neorv32_rte_core+0x80>
 9a8:	0000                	unimp
 9aa:	0000                	unimp
 9ac:	0000                	unimp
 9ae:	0000                	unimp

000009b0 <__neorv32_rte_print_hex_word>:
 9b0:	fe010113          	addi	sp,sp,-32
 9b4:	01212823          	sw	s2,16(sp)
 9b8:	00050913          	mv	s2,a0
 9bc:	00001537          	lui	a0,0x1
 9c0:	00912a23          	sw	s1,20(sp)
 9c4:	ff450513          	addi	a0,a0,-12 # ff4 <symbols.0+0xb8>
 9c8:	000014b7          	lui	s1,0x1
 9cc:	00812c23          	sw	s0,24(sp)
 9d0:	01312623          	sw	s3,12(sp)
 9d4:	00112e23          	sw	ra,28(sp)
 9d8:	01c00413          	li	s0,28
 9dc:	ae5ff0ef          	jal	ra,4c0 <neorv32_uart0_print>
 9e0:	1e848493          	addi	s1,s1,488 # 11e8 <hex_symbols.0>
 9e4:	ffc00993          	li	s3,-4
 9e8:	008957b3          	srl	a5,s2,s0
 9ec:	00f7f793          	andi	a5,a5,15
 9f0:	00f487b3          	add	a5,s1,a5
 9f4:	0007c503          	lbu	a0,0(a5)
 9f8:	ffc40413          	addi	s0,s0,-4
 9fc:	aadff0ef          	jal	ra,4a8 <neorv32_uart0_putc>
 a00:	ff3414e3          	bne	s0,s3,9e8 <__neorv32_rte_print_hex_word+0x38>
 a04:	01c12083          	lw	ra,28(sp)
 a08:	01812403          	lw	s0,24(sp)
 a0c:	01412483          	lw	s1,20(sp)
 a10:	01012903          	lw	s2,16(sp)
 a14:	00c12983          	lw	s3,12(sp)
 a18:	02010113          	addi	sp,sp,32
 a1c:	00008067          	ret

00000a20 <__neorv32_rte_debug_exc_handler>:
 a20:	ff010113          	addi	sp,sp,-16
 a24:	00112623          	sw	ra,12(sp)
 a28:	00812423          	sw	s0,8(sp)
 a2c:	00912223          	sw	s1,4(sp)
 a30:	9bdff0ef          	jal	ra,3ec <neorv32_uart0_available>
 a34:	1c050863          	beqz	a0,c04 <__neorv32_rte_debug_exc_handler+0x1e4>
 a38:	00001537          	lui	a0,0x1
 a3c:	ff850513          	addi	a0,a0,-8 # ff8 <symbols.0+0xbc>
 a40:	a81ff0ef          	jal	ra,4c0 <neorv32_uart0_print>
 a44:	34202473          	csrr	s0,mcause
 a48:	00900713          	li	a4,9
 a4c:	00f47793          	andi	a5,s0,15
 a50:	03078493          	addi	s1,a5,48
 a54:	00f77463          	bgeu	a4,a5,a5c <__neorv32_rte_debug_exc_handler+0x3c>
 a58:	05778493          	addi	s1,a5,87
 a5c:	00b00793          	li	a5,11
 a60:	0087ee63          	bltu	a5,s0,a7c <__neorv32_rte_debug_exc_handler+0x5c>
 a64:	00001737          	lui	a4,0x1
 a68:	00241793          	slli	a5,s0,0x2
 a6c:	1b870713          	addi	a4,a4,440 # 11b8 <symbols.0+0x27c>
 a70:	00e787b3          	add	a5,a5,a4
 a74:	0007a783          	lw	a5,0(a5)
 a78:	00078067          	jr	a5
 a7c:	800007b7          	lui	a5,0x80000
 a80:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 a84:	14e40e63          	beq	s0,a4,be0 <__neorv32_rte_debug_exc_handler+0x1c0>
 a88:	02876a63          	bltu	a4,s0,abc <__neorv32_rte_debug_exc_handler+0x9c>
 a8c:	00378713          	addi	a4,a5,3
 a90:	12e40c63          	beq	s0,a4,bc8 <__neorv32_rte_debug_exc_handler+0x1a8>
 a94:	00778793          	addi	a5,a5,7
 a98:	12f40e63          	beq	s0,a5,bd4 <__neorv32_rte_debug_exc_handler+0x1b4>
 a9c:	00001537          	lui	a0,0x1
 aa0:	15850513          	addi	a0,a0,344 # 1158 <symbols.0+0x21c>
 aa4:	a1dff0ef          	jal	ra,4c0 <neorv32_uart0_print>
 aa8:	00040513          	mv	a0,s0
 aac:	f05ff0ef          	jal	ra,9b0 <__neorv32_rte_print_hex_word>
 ab0:	00100793          	li	a5,1
 ab4:	08f40c63          	beq	s0,a5,b4c <__neorv32_rte_debug_exc_handler+0x12c>
 ab8:	0280006f          	j	ae0 <__neorv32_rte_debug_exc_handler+0xc0>
 abc:	ff07c793          	xori	a5,a5,-16
 ac0:	00f407b3          	add	a5,s0,a5
 ac4:	00f00713          	li	a4,15
 ac8:	fcf76ae3          	bltu	a4,a5,a9c <__neorv32_rte_debug_exc_handler+0x7c>
 acc:	00001537          	lui	a0,0x1
 ad0:	14850513          	addi	a0,a0,328 # 1148 <symbols.0+0x20c>
 ad4:	9edff0ef          	jal	ra,4c0 <neorv32_uart0_print>
 ad8:	00048513          	mv	a0,s1
 adc:	9cdff0ef          	jal	ra,4a8 <neorv32_uart0_putc>
 ae0:	ffd47413          	andi	s0,s0,-3
 ae4:	00500793          	li	a5,5
 ae8:	06f40263          	beq	s0,a5,b4c <__neorv32_rte_debug_exc_handler+0x12c>
 aec:	00001537          	lui	a0,0x1
 af0:	19c50513          	addi	a0,a0,412 # 119c <symbols.0+0x260>
 af4:	9cdff0ef          	jal	ra,4c0 <neorv32_uart0_print>
 af8:	34002573          	csrr	a0,mscratch
 afc:	eb5ff0ef          	jal	ra,9b0 <__neorv32_rte_print_hex_word>
 b00:	00001537          	lui	a0,0x1
 b04:	1a450513          	addi	a0,a0,420 # 11a4 <symbols.0+0x268>
 b08:	9b9ff0ef          	jal	ra,4c0 <neorv32_uart0_print>
 b0c:	34302573          	csrr	a0,mtval
 b10:	ea1ff0ef          	jal	ra,9b0 <__neorv32_rte_print_hex_word>
 b14:	00812403          	lw	s0,8(sp)
 b18:	00c12083          	lw	ra,12(sp)
 b1c:	00412483          	lw	s1,4(sp)
 b20:	00001537          	lui	a0,0x1
 b24:	1b050513          	addi	a0,a0,432 # 11b0 <symbols.0+0x274>
 b28:	01010113          	addi	sp,sp,16
 b2c:	995ff06f          	j	4c0 <neorv32_uart0_print>
 b30:	00001537          	lui	a0,0x1
 b34:	00050513          	mv	a0,a0
 b38:	989ff0ef          	jal	ra,4c0 <neorv32_uart0_print>
 b3c:	fb1ff06f          	j	aec <__neorv32_rte_debug_exc_handler+0xcc>
 b40:	00001537          	lui	a0,0x1
 b44:	02050513          	addi	a0,a0,32 # 1020 <symbols.0+0xe4>
 b48:	979ff0ef          	jal	ra,4c0 <neorv32_uart0_print>
 b4c:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 b50:	0a07d463          	bgez	a5,bf8 <__neorv32_rte_debug_exc_handler+0x1d8>
 b54:	0017f793          	andi	a5,a5,1
 b58:	08078a63          	beqz	a5,bec <__neorv32_rte_debug_exc_handler+0x1cc>
 b5c:	00001537          	lui	a0,0x1
 b60:	17050513          	addi	a0,a0,368 # 1170 <symbols.0+0x234>
 b64:	fd5ff06f          	j	b38 <__neorv32_rte_debug_exc_handler+0x118>
 b68:	00001537          	lui	a0,0x1
 b6c:	03c50513          	addi	a0,a0,60 # 103c <symbols.0+0x100>
 b70:	fc9ff06f          	j	b38 <__neorv32_rte_debug_exc_handler+0x118>
 b74:	00001537          	lui	a0,0x1
 b78:	05050513          	addi	a0,a0,80 # 1050 <symbols.0+0x114>
 b7c:	fbdff06f          	j	b38 <__neorv32_rte_debug_exc_handler+0x118>
 b80:	00001537          	lui	a0,0x1
 b84:	05c50513          	addi	a0,a0,92 # 105c <symbols.0+0x120>
 b88:	fb1ff06f          	j	b38 <__neorv32_rte_debug_exc_handler+0x118>
 b8c:	00001537          	lui	a0,0x1
 b90:	07450513          	addi	a0,a0,116 # 1074 <symbols.0+0x138>
 b94:	fb5ff06f          	j	b48 <__neorv32_rte_debug_exc_handler+0x128>
 b98:	00001537          	lui	a0,0x1
 b9c:	08850513          	addi	a0,a0,136 # 1088 <symbols.0+0x14c>
 ba0:	f99ff06f          	j	b38 <__neorv32_rte_debug_exc_handler+0x118>
 ba4:	00001537          	lui	a0,0x1
 ba8:	0a450513          	addi	a0,a0,164 # 10a4 <symbols.0+0x168>
 bac:	f9dff06f          	j	b48 <__neorv32_rte_debug_exc_handler+0x128>
 bb0:	00001537          	lui	a0,0x1
 bb4:	0b850513          	addi	a0,a0,184 # 10b8 <symbols.0+0x17c>
 bb8:	f81ff06f          	j	b38 <__neorv32_rte_debug_exc_handler+0x118>
 bbc:	00001537          	lui	a0,0x1
 bc0:	0d850513          	addi	a0,a0,216 # 10d8 <symbols.0+0x19c>
 bc4:	f75ff06f          	j	b38 <__neorv32_rte_debug_exc_handler+0x118>
 bc8:	00001537          	lui	a0,0x1
 bcc:	0f850513          	addi	a0,a0,248 # 10f8 <symbols.0+0x1bc>
 bd0:	f69ff06f          	j	b38 <__neorv32_rte_debug_exc_handler+0x118>
 bd4:	00001537          	lui	a0,0x1
 bd8:	11450513          	addi	a0,a0,276 # 1114 <symbols.0+0x1d8>
 bdc:	f5dff06f          	j	b38 <__neorv32_rte_debug_exc_handler+0x118>
 be0:	00001537          	lui	a0,0x1
 be4:	12c50513          	addi	a0,a0,300 # 112c <symbols.0+0x1f0>
 be8:	f51ff06f          	j	b38 <__neorv32_rte_debug_exc_handler+0x118>
 bec:	00001537          	lui	a0,0x1
 bf0:	18050513          	addi	a0,a0,384 # 1180 <symbols.0+0x244>
 bf4:	f45ff06f          	j	b38 <__neorv32_rte_debug_exc_handler+0x118>
 bf8:	00001537          	lui	a0,0x1
 bfc:	19050513          	addi	a0,a0,400 # 1190 <symbols.0+0x254>
 c00:	f39ff06f          	j	b38 <__neorv32_rte_debug_exc_handler+0x118>
 c04:	00c12083          	lw	ra,12(sp)
 c08:	00812403          	lw	s0,8(sp)
 c0c:	00412483          	lw	s1,4(sp)
 c10:	01010113          	addi	sp,sp,16
 c14:	00008067          	ret

00000c18 <neorv32_rte_exception_uninstall>:
 c18:	01f00793          	li	a5,31
 c1c:	02a7e463          	bltu	a5,a0,c44 <neorv32_rte_exception_uninstall+0x2c>
 c20:	800007b7          	lui	a5,0x80000
 c24:	00078793          	mv	a5,a5
 c28:	00251513          	slli	a0,a0,0x2
 c2c:	00a78533          	add	a0,a5,a0
 c30:	000017b7          	lui	a5,0x1
 c34:	a2078793          	addi	a5,a5,-1504 # a20 <__neorv32_rte_debug_exc_handler>
 c38:	00f52023          	sw	a5,0(a0)
 c3c:	00000513          	li	a0,0
 c40:	00008067          	ret
 c44:	00100513          	li	a0,1
 c48:	00008067          	ret

00000c4c <neorv32_rte_setup>:
 c4c:	ff010113          	addi	sp,sp,-16
 c50:	00112623          	sw	ra,12(sp)
 c54:	00812423          	sw	s0,8(sp)
 c58:	00912223          	sw	s1,4(sp)
 c5c:	7a000793          	li	a5,1952
 c60:	30579073          	csrw	mtvec,a5
 c64:	00000413          	li	s0,0
 c68:	01d00493          	li	s1,29
 c6c:	00040513          	mv	a0,s0
 c70:	00140413          	addi	s0,s0,1
 c74:	0ff47413          	andi	s0,s0,255
 c78:	fa1ff0ef          	jal	ra,c18 <neorv32_rte_exception_uninstall>
 c7c:	fe9418e3          	bne	s0,s1,c6c <neorv32_rte_setup+0x20>
 c80:	00c12083          	lw	ra,12(sp)
 c84:	00812403          	lw	s0,8(sp)
 c88:	00412483          	lw	s1,4(sp)
 c8c:	01010113          	addi	sp,sp,16
 c90:	00008067          	ret

00000c94 <neorv32_gpio_available>:
 c94:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 c98:	01055513          	srli	a0,a0,0x10
 c9c:	00157513          	andi	a0,a0,1
 ca0:	00008067          	ret

00000ca4 <neorv32_gpio_pin_set>:
 ca4:	00100793          	li	a5,1
 ca8:	01f00713          	li	a4,31
 cac:	00a797b3          	sll	a5,a5,a0
 cb0:	00a74a63          	blt	a4,a0,cc4 <neorv32_gpio_pin_set+0x20>
 cb4:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 cb8:	00f767b3          	or	a5,a4,a5
 cbc:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 cc0:	00008067          	ret
 cc4:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 cc8:	00f767b3          	or	a5,a4,a5
 ccc:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 cd0:	00008067          	ret

00000cd4 <neorv32_gpio_pin_clr>:
 cd4:	00100793          	li	a5,1
 cd8:	00a797b3          	sll	a5,a5,a0
 cdc:	01f00713          	li	a4,31
 ce0:	fff7c793          	not	a5,a5
 ce4:	00a74a63          	blt	a4,a0,cf8 <neorv32_gpio_pin_clr+0x24>
 ce8:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 cec:	00f777b3          	and	a5,a4,a5
 cf0:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 cf4:	00008067          	ret
 cf8:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 cfc:	00f777b3          	and	a5,a4,a5
 d00:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 d04:	00008067          	ret

00000d08 <neorv32_gpio_pin_toggle>:
 d08:	00100793          	li	a5,1
 d0c:	01f00713          	li	a4,31
 d10:	00a797b3          	sll	a5,a5,a0
 d14:	00a74a63          	blt	a4,a0,d28 <neorv32_gpio_pin_toggle+0x20>
 d18:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 d1c:	00f747b3          	xor	a5,a4,a5
 d20:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 d24:	00008067          	ret
 d28:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 d2c:	00f747b3          	xor	a5,a4,a5
 d30:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 d34:	00008067          	ret

00000d38 <neorv32_gpio_pin_get>:
 d38:	00050793          	mv	a5,a0
 d3c:	01f00713          	li	a4,31
 d40:	00100513          	li	a0,1
 d44:	00f51533          	sll	a0,a0,a5
 d48:	00f74863          	blt	a4,a5,d58 <neorv32_gpio_pin_get+0x20>
 d4c:	fc002783          	lw	a5,-64(zero) # ffffffc0 <__ctr0_io_space_begin+0x1c0>
 d50:	00a7f533          	and	a0,a5,a0
 d54:	00008067          	ret
 d58:	fc402783          	lw	a5,-60(zero) # ffffffc4 <__ctr0_io_space_begin+0x1c4>
 d5c:	ff5ff06f          	j	d50 <neorv32_gpio_pin_get+0x18>

00000d60 <__mulsi3>:
 d60:	00050613          	mv	a2,a0
 d64:	00000513          	li	a0,0
 d68:	0015f693          	andi	a3,a1,1
 d6c:	00068463          	beqz	a3,d74 <__mulsi3+0x14>
 d70:	00c50533          	add	a0,a0,a2
 d74:	0015d593          	srli	a1,a1,0x1
 d78:	00161613          	slli	a2,a2,0x1
 d7c:	fe0596e3          	bnez	a1,d68 <__mulsi3+0x8>
 d80:	00008067          	ret

00000d84 <__muldi3>:
 d84:	00050313          	mv	t1,a0
 d88:	ff010113          	addi	sp,sp,-16
 d8c:	00060513          	mv	a0,a2
 d90:	00068893          	mv	a7,a3
 d94:	00112623          	sw	ra,12(sp)
 d98:	00030613          	mv	a2,t1
 d9c:	00050693          	mv	a3,a0
 da0:	00000713          	li	a4,0
 da4:	00000793          	li	a5,0
 da8:	00000813          	li	a6,0
 dac:	0016fe13          	andi	t3,a3,1
 db0:	00171e93          	slli	t4,a4,0x1
 db4:	000e0c63          	beqz	t3,dcc <__muldi3+0x48>
 db8:	01060e33          	add	t3,a2,a6
 dbc:	010e3833          	sltu	a6,t3,a6
 dc0:	00e787b3          	add	a5,a5,a4
 dc4:	00f807b3          	add	a5,a6,a5
 dc8:	000e0813          	mv	a6,t3
 dcc:	01f65713          	srli	a4,a2,0x1f
 dd0:	0016d693          	srli	a3,a3,0x1
 dd4:	00eee733          	or	a4,t4,a4
 dd8:	00161613          	slli	a2,a2,0x1
 ddc:	fc0698e3          	bnez	a3,dac <__muldi3+0x28>
 de0:	00058663          	beqz	a1,dec <__muldi3+0x68>
 de4:	f7dff0ef          	jal	ra,d60 <__mulsi3>
 de8:	00a787b3          	add	a5,a5,a0
 dec:	00088a63          	beqz	a7,e00 <__muldi3+0x7c>
 df0:	00030513          	mv	a0,t1
 df4:	00088593          	mv	a1,a7
 df8:	f69ff0ef          	jal	ra,d60 <__mulsi3>
 dfc:	00f507b3          	add	a5,a0,a5
 e00:	00c12083          	lw	ra,12(sp)
 e04:	00080513          	mv	a0,a6
 e08:	00078593          	mv	a1,a5
 e0c:	01010113          	addi	sp,sp,16
 e10:	00008067          	ret

00000e14 <__divsi3>:
 e14:	06054063          	bltz	a0,e74 <__umodsi3+0x10>
 e18:	0605c663          	bltz	a1,e84 <__umodsi3+0x20>

00000e1c <__udivsi3>:
 e1c:	00058613          	mv	a2,a1
 e20:	00050593          	mv	a1,a0
 e24:	fff00513          	li	a0,-1
 e28:	02060c63          	beqz	a2,e60 <__udivsi3+0x44>
 e2c:	00100693          	li	a3,1
 e30:	00b67a63          	bgeu	a2,a1,e44 <__udivsi3+0x28>
 e34:	00c05863          	blez	a2,e44 <__udivsi3+0x28>
 e38:	00161613          	slli	a2,a2,0x1
 e3c:	00169693          	slli	a3,a3,0x1
 e40:	feb66ae3          	bltu	a2,a1,e34 <__udivsi3+0x18>
 e44:	00000513          	li	a0,0
 e48:	00c5e663          	bltu	a1,a2,e54 <__udivsi3+0x38>
 e4c:	40c585b3          	sub	a1,a1,a2
 e50:	00d56533          	or	a0,a0,a3
 e54:	0016d693          	srli	a3,a3,0x1
 e58:	00165613          	srli	a2,a2,0x1
 e5c:	fe0696e3          	bnez	a3,e48 <__udivsi3+0x2c>
 e60:	00008067          	ret

00000e64 <__umodsi3>:
 e64:	00008293          	mv	t0,ra
 e68:	fb5ff0ef          	jal	ra,e1c <__udivsi3>
 e6c:	00058513          	mv	a0,a1
 e70:	00028067          	jr	t0
 e74:	40a00533          	neg	a0,a0
 e78:	00b04863          	bgtz	a1,e88 <__umodsi3+0x24>
 e7c:	40b005b3          	neg	a1,a1
 e80:	f9dff06f          	j	e1c <__udivsi3>
 e84:	40b005b3          	neg	a1,a1
 e88:	00008293          	mv	t0,ra
 e8c:	f91ff0ef          	jal	ra,e1c <__udivsi3>
 e90:	40a00533          	neg	a0,a0
 e94:	00028067          	jr	t0

00000e98 <__modsi3>:
 e98:	00008293          	mv	t0,ra
 e9c:	0005ca63          	bltz	a1,eb0 <__modsi3+0x18>
 ea0:	00054c63          	bltz	a0,eb8 <__modsi3+0x20>
 ea4:	f79ff0ef          	jal	ra,e1c <__udivsi3>
 ea8:	00058513          	mv	a0,a1
 eac:	00028067          	jr	t0
 eb0:	40b005b3          	neg	a1,a1
 eb4:	fe0558e3          	bgez	a0,ea4 <__modsi3+0xc>
 eb8:	40a00533          	neg	a0,a0
 ebc:	f61ff0ef          	jal	ra,e1c <__udivsi3>
 ec0:	40b00533          	neg	a0,a1
 ec4:	00028067          	jr	t0
