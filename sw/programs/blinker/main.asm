
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
  e0:	1ec58593          	addi	a1,a1,492 # 12c8 <__crt0_copy_data_src_begin>
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
 190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3838>
 194:	02112623          	sw	ra,44(sp)
 198:	02812423          	sw	s0,40(sp)
 19c:	02912223          	sw	s1,36(sp)
 1a0:	03212023          	sw	s2,32(sp)
 1a4:	01312e23          	sw	s3,28(sp)
 1a8:	01412c23          	sw	s4,24(sp)
 1ac:	01512a23          	sw	s5,20(sp)
 1b0:	01612823          	sw	s6,16(sp)
 1b4:	2f0000ef          	jal	ra,4a4 <neorv32_uart0_setup>
 1b8:	381000ef          	jal	ra,d38 <neorv32_gpio_available>
 1bc:	02051e63          	bnez	a0,1f8 <main+0x78>
 1c0:	00001537          	lui	a0,0x1
 1c4:	ed850513          	addi	a0,a0,-296 # ed8 <__etext>
 1c8:	3a0000ef          	jal	ra,568 <neorv32_uart0_print>
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
 1f8:	2f5000ef          	jal	ra,cec <neorv32_rte_setup>
 1fc:	00001537          	lui	a0,0x1
 200:	efc50513          	addi	a0,a0,-260 # efc <__etext+0x24>
 204:	364000ef          	jal	ra,568 <neorv32_uart0_print>
 208:	00002937          	lui	s2,0x2
 20c:	00000593          	li	a1,0
 210:	000019b7          	lui	s3,0x1
 214:	00001a37          	lui	s4,0x1
 218:	00001ab7          	lui	s5,0x1
 21c:	00100b13          	li	s6,1
 220:	00001437          	lui	s0,0x1
 224:	71090913          	addi	s2,s2,1808 # 2710 <__crt0_copy_data_src_begin+0x1448>
 228:	f1c98513          	addi	a0,s3,-228 # f1c <__etext+0x44>
 22c:	00b12623          	sw	a1,12(sp)
 230:	338000ef          	jal	ra,568 <neorv32_uart0_print>
 234:	00000513          	li	a0,0
 238:	09c000ef          	jal	ra,2d4 <getButtonState>
 23c:	00c12583          	lw	a1,12(sp)
 240:	00050493          	mv	s1,a0
 244:	f44a0513          	addi	a0,s4,-188 # f44 <__etext+0x6c>
 248:	378000ef          	jal	ra,5c0 <neorv32_uart0_printf>
 24c:	f5ca8513          	addi	a0,s5,-164 # f5c <__etext+0x84>
 250:	318000ef          	jal	ra,568 <neorv32_uart0_print>
 254:	00300513          	li	a0,3
 258:	07c000ef          	jal	ra,2d4 <getButtonState>
 25c:	07650263          	beq	a0,s6,2c0 <main+0x140>
 260:	00000513          	li	a0,0
 264:	2e5000ef          	jal	ra,d48 <neorv32_gpio_pin_get>
 268:	00050593          	mv	a1,a0
 26c:	fa840513          	addi	a0,s0,-88 # fa8 <__etext+0xd0>
 270:	350000ef          	jal	ra,5c0 <neorv32_uart0_printf>
 274:	00100513          	li	a0,1
 278:	2d1000ef          	jal	ra,d48 <neorv32_gpio_pin_get>
 27c:	00050593          	mv	a1,a0
 280:	fa840513          	addi	a0,s0,-88
 284:	33c000ef          	jal	ra,5c0 <neorv32_uart0_printf>
 288:	00200513          	li	a0,2
 28c:	2bd000ef          	jal	ra,d48 <neorv32_gpio_pin_get>
 290:	00050593          	mv	a1,a0
 294:	fa840513          	addi	a0,s0,-88
 298:	328000ef          	jal	ra,5c0 <neorv32_uart0_printf>
 29c:	00300513          	li	a0,3
 2a0:	2a9000ef          	jal	ra,d48 <neorv32_gpio_pin_get>
 2a4:	00050593          	mv	a1,a0
 2a8:	fa840513          	addi	a0,s0,-88
 2ac:	314000ef          	jal	ra,5c0 <neorv32_uart0_printf>
 2b0:	00090513          	mv	a0,s2
 2b4:	4d0000ef          	jal	ra,784 <neorv32_cpu_delay_ms>
 2b8:	00048593          	mv	a1,s1
 2bc:	f6dff06f          	j	228 <main+0xa8>
 2c0:	00001537          	lui	a0,0x1
 2c4:	fb850513          	addi	a0,a0,-72 # fb8 <__etext+0xe0>
 2c8:	2a0000ef          	jal	ra,568 <neorv32_uart0_print>
 2cc:	00000513          	li	a0,0
 2d0:	f01ff06f          	j	1d0 <main+0x50>

000002d4 <getButtonState>:
 2d4:	ff010113          	addi	sp,sp,-16
 2d8:	00112623          	sw	ra,12(sp)
 2dc:	00812423          	sw	s0,8(sp)
 2e0:	00912223          	sw	s1,4(sp)
 2e4:	00050493          	mv	s1,a0
 2e8:	261000ef          	jal	ra,d48 <neorv32_gpio_pin_get>
 2ec:	00050593          	mv	a1,a0
 2f0:	00050413          	mv	s0,a0
 2f4:	00001537          	lui	a0,0x1
 2f8:	fd850513          	addi	a0,a0,-40 # fd8 <__etext+0x100>
 2fc:	2c4000ef          	jal	ra,5c0 <neorv32_uart0_printf>
 300:	00500513          	li	a0,5
 304:	480000ef          	jal	ra,784 <neorv32_cpu_delay_ms>
 308:	00048513          	mv	a0,s1
 30c:	23d000ef          	jal	ra,d48 <neorv32_gpio_pin_get>
 310:	00050493          	mv	s1,a0
 314:	00050593          	mv	a1,a0
 318:	00001537          	lui	a0,0x1
 31c:	fec50513          	addi	a0,a0,-20 # fec <__etext+0x114>
 320:	2a0000ef          	jal	ra,5c0 <neorv32_uart0_printf>
 324:	009477b3          	and	a5,s0,s1
 328:	00100513          	li	a0,1
 32c:	00079863          	bnez	a5,33c <getButtonState+0x68>
 330:	00946533          	or	a0,s0,s1
 334:	00050463          	beqz	a0,33c <getButtonState+0x68>
 338:	00200513          	li	a0,2
 33c:	00c12083          	lw	ra,12(sp)
 340:	00812403          	lw	s0,8(sp)
 344:	00412483          	lw	s1,4(sp)
 348:	01010113          	addi	sp,sp,16
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
 388:	000a0a13          	mv	s4,s4
 38c:	00a00593          	li	a1,10
 390:	00048513          	mv	a0,s1
 394:	2e1000ef          	jal	ra,e74 <__umodsi3>
 398:	00aa0533          	add	a0,s4,a0
 39c:	00054783          	lbu	a5,0(a0)
 3a0:	01390ab3          	add	s5,s2,s3
 3a4:	00048513          	mv	a0,s1
 3a8:	00fa8023          	sb	a5,0(s5)
 3ac:	00a00593          	li	a1,10
 3b0:	27d000ef          	jal	ra,e2c <__udivsi3>
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
 464:	00c60613          	addi	a2,a2,12 # 100c <symbols.0>
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

00000494 <neorv32_uart0_available>:
 494:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 498:	01255513          	srli	a0,a0,0x12
 49c:	00157513          	andi	a0,a0,1
 4a0:	00008067          	ret

000004a4 <neorv32_uart0_setup>:
 4a4:	ff010113          	addi	sp,sp,-16
 4a8:	00812423          	sw	s0,8(sp)
 4ac:	00912223          	sw	s1,4(sp)
 4b0:	00112623          	sw	ra,12(sp)
 4b4:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 4b8:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 4bc:	00058413          	mv	s0,a1
 4c0:	00151593          	slli	a1,a0,0x1
 4c4:	00078513          	mv	a0,a5
 4c8:	00060493          	mv	s1,a2
 4cc:	161000ef          	jal	ra,e2c <__udivsi3>
 4d0:	01051513          	slli	a0,a0,0x10
 4d4:	000017b7          	lui	a5,0x1
 4d8:	01055513          	srli	a0,a0,0x10
 4dc:	00000713          	li	a4,0
 4e0:	ffe78793          	addi	a5,a5,-2 # ffe <__etext+0x126>
 4e4:	04a7e463          	bltu	a5,a0,52c <neorv32_uart0_setup+0x88>
 4e8:	0034f793          	andi	a5,s1,3
 4ec:	00347413          	andi	s0,s0,3
 4f0:	fff50513          	addi	a0,a0,-1
 4f4:	01479793          	slli	a5,a5,0x14
 4f8:	01641413          	slli	s0,s0,0x16
 4fc:	00f567b3          	or	a5,a0,a5
 500:	0087e7b3          	or	a5,a5,s0
 504:	01871713          	slli	a4,a4,0x18
 508:	00c12083          	lw	ra,12(sp)
 50c:	00812403          	lw	s0,8(sp)
 510:	00e7e7b3          	or	a5,a5,a4
 514:	10000737          	lui	a4,0x10000
 518:	00e7e7b3          	or	a5,a5,a4
 51c:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 520:	00412483          	lw	s1,4(sp)
 524:	01010113          	addi	sp,sp,16
 528:	00008067          	ret
 52c:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffed36>
 530:	0fd6f693          	andi	a3,a3,253
 534:	00069a63          	bnez	a3,548 <neorv32_uart0_setup+0xa4>
 538:	00355513          	srli	a0,a0,0x3
 53c:	00170713          	addi	a4,a4,1
 540:	0ff77713          	andi	a4,a4,255
 544:	fa1ff06f          	j	4e4 <neorv32_uart0_setup+0x40>
 548:	00155513          	srli	a0,a0,0x1
 54c:	ff1ff06f          	j	53c <neorv32_uart0_setup+0x98>

00000550 <neorv32_uart0_putc>:
 550:	00040737          	lui	a4,0x40
 554:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 558:	00e7f7b3          	and	a5,a5,a4
 55c:	fe079ce3          	bnez	a5,554 <neorv32_uart0_putc+0x4>
 560:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 564:	00008067          	ret

00000568 <neorv32_uart0_print>:
 568:	ff010113          	addi	sp,sp,-16
 56c:	00812423          	sw	s0,8(sp)
 570:	01212023          	sw	s2,0(sp)
 574:	00112623          	sw	ra,12(sp)
 578:	00912223          	sw	s1,4(sp)
 57c:	00050413          	mv	s0,a0
 580:	00a00913          	li	s2,10
 584:	00044483          	lbu	s1,0(s0)
 588:	00140413          	addi	s0,s0,1
 58c:	00049e63          	bnez	s1,5a8 <neorv32_uart0_print+0x40>
 590:	00c12083          	lw	ra,12(sp)
 594:	00812403          	lw	s0,8(sp)
 598:	00412483          	lw	s1,4(sp)
 59c:	00012903          	lw	s2,0(sp)
 5a0:	01010113          	addi	sp,sp,16
 5a4:	00008067          	ret
 5a8:	01249663          	bne	s1,s2,5b4 <neorv32_uart0_print+0x4c>
 5ac:	00d00513          	li	a0,13
 5b0:	fa1ff0ef          	jal	ra,550 <neorv32_uart0_putc>
 5b4:	00048513          	mv	a0,s1
 5b8:	f99ff0ef          	jal	ra,550 <neorv32_uart0_putc>
 5bc:	fc9ff06f          	j	584 <neorv32_uart0_print+0x1c>

000005c0 <neorv32_uart0_printf>:
 5c0:	fa010113          	addi	sp,sp,-96
 5c4:	04f12a23          	sw	a5,84(sp)
 5c8:	04410793          	addi	a5,sp,68
 5cc:	02812c23          	sw	s0,56(sp)
 5d0:	03212823          	sw	s2,48(sp)
 5d4:	03412423          	sw	s4,40(sp)
 5d8:	03512223          	sw	s5,36(sp)
 5dc:	03612023          	sw	s6,32(sp)
 5e0:	01712e23          	sw	s7,28(sp)
 5e4:	01812c23          	sw	s8,24(sp)
 5e8:	01912a23          	sw	s9,20(sp)
 5ec:	02112e23          	sw	ra,60(sp)
 5f0:	02912a23          	sw	s1,52(sp)
 5f4:	03312623          	sw	s3,44(sp)
 5f8:	00050413          	mv	s0,a0
 5fc:	04b12223          	sw	a1,68(sp)
 600:	04c12423          	sw	a2,72(sp)
 604:	04d12623          	sw	a3,76(sp)
 608:	04e12823          	sw	a4,80(sp)
 60c:	05012c23          	sw	a6,88(sp)
 610:	05112e23          	sw	a7,92(sp)
 614:	00f12023          	sw	a5,0(sp)
 618:	02500a13          	li	s4,37
 61c:	00a00a93          	li	s5,10
 620:	07300913          	li	s2,115
 624:	07500b13          	li	s6,117
 628:	07800b93          	li	s7,120
 62c:	06300c13          	li	s8,99
 630:	06900c93          	li	s9,105
 634:	00044483          	lbu	s1,0(s0)
 638:	02049c63          	bnez	s1,670 <neorv32_uart0_printf+0xb0>
 63c:	03c12083          	lw	ra,60(sp)
 640:	03812403          	lw	s0,56(sp)
 644:	03412483          	lw	s1,52(sp)
 648:	03012903          	lw	s2,48(sp)
 64c:	02c12983          	lw	s3,44(sp)
 650:	02812a03          	lw	s4,40(sp)
 654:	02412a83          	lw	s5,36(sp)
 658:	02012b03          	lw	s6,32(sp)
 65c:	01c12b83          	lw	s7,28(sp)
 660:	01812c03          	lw	s8,24(sp)
 664:	01412c83          	lw	s9,20(sp)
 668:	06010113          	addi	sp,sp,96
 66c:	00008067          	ret
 670:	0d449863          	bne	s1,s4,740 <neorv32_uart0_printf+0x180>
 674:	00240993          	addi	s3,s0,2
 678:	00144403          	lbu	s0,1(s0)
 67c:	05240263          	beq	s0,s2,6c0 <neorv32_uart0_printf+0x100>
 680:	00896e63          	bltu	s2,s0,69c <neorv32_uart0_printf+0xdc>
 684:	05840c63          	beq	s0,s8,6dc <neorv32_uart0_printf+0x11c>
 688:	07940663          	beq	s0,s9,6f4 <neorv32_uart0_printf+0x134>
 68c:	02500513          	li	a0,37
 690:	ec1ff0ef          	jal	ra,550 <neorv32_uart0_putc>
 694:	00040513          	mv	a0,s0
 698:	0540006f          	j	6ec <neorv32_uart0_printf+0x12c>
 69c:	09640663          	beq	s0,s6,728 <neorv32_uart0_printf+0x168>
 6a0:	ff7416e3          	bne	s0,s7,68c <neorv32_uart0_printf+0xcc>
 6a4:	00012783          	lw	a5,0(sp)
 6a8:	00410593          	addi	a1,sp,4
 6ac:	0007a503          	lw	a0,0(a5)
 6b0:	00478713          	addi	a4,a5,4
 6b4:	00e12023          	sw	a4,0(sp)
 6b8:	da1ff0ef          	jal	ra,458 <__neorv32_uart_tohex>
 6bc:	0640006f          	j	720 <neorv32_uart0_printf+0x160>
 6c0:	00012783          	lw	a5,0(sp)
 6c4:	0007a503          	lw	a0,0(a5)
 6c8:	00478713          	addi	a4,a5,4
 6cc:	00e12023          	sw	a4,0(sp)
 6d0:	e99ff0ef          	jal	ra,568 <neorv32_uart0_print>
 6d4:	00098413          	mv	s0,s3
 6d8:	f5dff06f          	j	634 <neorv32_uart0_printf+0x74>
 6dc:	00012783          	lw	a5,0(sp)
 6e0:	0007c503          	lbu	a0,0(a5)
 6e4:	00478713          	addi	a4,a5,4
 6e8:	00e12023          	sw	a4,0(sp)
 6ec:	e65ff0ef          	jal	ra,550 <neorv32_uart0_putc>
 6f0:	fe5ff06f          	j	6d4 <neorv32_uart0_printf+0x114>
 6f4:	00012783          	lw	a5,0(sp)
 6f8:	0007a403          	lw	s0,0(a5)
 6fc:	00478713          	addi	a4,a5,4
 700:	00e12023          	sw	a4,0(sp)
 704:	00045863          	bgez	s0,714 <neorv32_uart0_printf+0x154>
 708:	02d00513          	li	a0,45
 70c:	40800433          	neg	s0,s0
 710:	e41ff0ef          	jal	ra,550 <neorv32_uart0_putc>
 714:	00410593          	addi	a1,sp,4
 718:	00040513          	mv	a0,s0
 71c:	c35ff0ef          	jal	ra,350 <__neorv32_uart_itoa>
 720:	00410513          	addi	a0,sp,4
 724:	fadff06f          	j	6d0 <neorv32_uart0_printf+0x110>
 728:	00012783          	lw	a5,0(sp)
 72c:	00410593          	addi	a1,sp,4
 730:	00478713          	addi	a4,a5,4
 734:	0007a503          	lw	a0,0(a5)
 738:	00e12023          	sw	a4,0(sp)
 73c:	fe1ff06f          	j	71c <neorv32_uart0_printf+0x15c>
 740:	01549663          	bne	s1,s5,74c <neorv32_uart0_printf+0x18c>
 744:	00d00513          	li	a0,13
 748:	e09ff0ef          	jal	ra,550 <neorv32_uart0_putc>
 74c:	00140993          	addi	s3,s0,1
 750:	00048513          	mv	a0,s1
 754:	f99ff06f          	j	6ec <neorv32_uart0_printf+0x12c>

00000758 <neorv32_cpu_get_systime>:
 758:	ff010113          	addi	sp,sp,-16
 75c:	c81026f3          	rdtimeh	a3
 760:	c0102773          	rdtime	a4
 764:	c81027f3          	rdtimeh	a5
 768:	fed79ae3          	bne	a5,a3,75c <neorv32_cpu_get_systime+0x4>
 76c:	00e12023          	sw	a4,0(sp)
 770:	00f12223          	sw	a5,4(sp)
 774:	00012503          	lw	a0,0(sp)
 778:	00412583          	lw	a1,4(sp)
 77c:	01010113          	addi	sp,sp,16
 780:	00008067          	ret

00000784 <neorv32_cpu_delay_ms>:
 784:	fd010113          	addi	sp,sp,-48
 788:	00a12623          	sw	a0,12(sp)
 78c:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 790:	3e800593          	li	a1,1000
 794:	02112623          	sw	ra,44(sp)
 798:	02812423          	sw	s0,40(sp)
 79c:	02912223          	sw	s1,36(sp)
 7a0:	03212023          	sw	s2,32(sp)
 7a4:	01312e23          	sw	s3,28(sp)
 7a8:	684000ef          	jal	ra,e2c <__udivsi3>
 7ac:	00c12603          	lw	a2,12(sp)
 7b0:	00000693          	li	a3,0
 7b4:	00000593          	li	a1,0
 7b8:	5dc000ef          	jal	ra,d94 <__muldi3>
 7bc:	00050413          	mv	s0,a0
 7c0:	00058993          	mv	s3,a1
 7c4:	f95ff0ef          	jal	ra,758 <neorv32_cpu_get_systime>
 7c8:	00058913          	mv	s2,a1
 7cc:	00050493          	mv	s1,a0
 7d0:	f89ff0ef          	jal	ra,758 <neorv32_cpu_get_systime>
 7d4:	00b96663          	bltu	s2,a1,7e0 <neorv32_cpu_delay_ms+0x5c>
 7d8:	05259263          	bne	a1,s2,81c <neorv32_cpu_delay_ms+0x98>
 7dc:	04a4f063          	bgeu	s1,a0,81c <neorv32_cpu_delay_ms+0x98>
 7e0:	008484b3          	add	s1,s1,s0
 7e4:	0084b433          	sltu	s0,s1,s0
 7e8:	01390933          	add	s2,s2,s3
 7ec:	01240433          	add	s0,s0,s2
 7f0:	f69ff0ef          	jal	ra,758 <neorv32_cpu_get_systime>
 7f4:	fe85eee3          	bltu	a1,s0,7f0 <neorv32_cpu_delay_ms+0x6c>
 7f8:	00b41463          	bne	s0,a1,800 <neorv32_cpu_delay_ms+0x7c>
 7fc:	fe956ae3          	bltu	a0,s1,7f0 <neorv32_cpu_delay_ms+0x6c>
 800:	02c12083          	lw	ra,44(sp)
 804:	02812403          	lw	s0,40(sp)
 808:	02412483          	lw	s1,36(sp)
 80c:	02012903          	lw	s2,32(sp)
 810:	01c12983          	lw	s3,28(sp)
 814:	03010113          	addi	sp,sp,48
 818:	00008067          	ret
 81c:	01c99913          	slli	s2,s3,0x1c
 820:	00445413          	srli	s0,s0,0x4
 824:	00896433          	or	s0,s2,s0

00000828 <__neorv32_cpu_delay_ms_start>:
 828:	00040a63          	beqz	s0,83c <__neorv32_cpu_delay_ms_end>
 82c:	00040863          	beqz	s0,83c <__neorv32_cpu_delay_ms_end>
 830:	fff40413          	addi	s0,s0,-1
 834:	00000013          	nop
 838:	ff1ff06f          	j	828 <__neorv32_cpu_delay_ms_start>

0000083c <__neorv32_cpu_delay_ms_end>:
 83c:	fc5ff06f          	j	800 <neorv32_cpu_delay_ms+0x7c>

00000840 <__neorv32_rte_core>:
 840:	fc010113          	addi	sp,sp,-64
 844:	02112e23          	sw	ra,60(sp)
 848:	02512c23          	sw	t0,56(sp)
 84c:	02612a23          	sw	t1,52(sp)
 850:	02712823          	sw	t2,48(sp)
 854:	02a12623          	sw	a0,44(sp)
 858:	02b12423          	sw	a1,40(sp)
 85c:	02c12223          	sw	a2,36(sp)
 860:	02d12023          	sw	a3,32(sp)
 864:	00e12e23          	sw	a4,28(sp)
 868:	00f12c23          	sw	a5,24(sp)
 86c:	01012a23          	sw	a6,20(sp)
 870:	01112823          	sw	a7,16(sp)
 874:	01c12623          	sw	t3,12(sp)
 878:	01d12423          	sw	t4,8(sp)
 87c:	01e12223          	sw	t5,4(sp)
 880:	01f12023          	sw	t6,0(sp)
 884:	34102773          	csrr	a4,mepc
 888:	34071073          	csrw	mscratch,a4
 88c:	342027f3          	csrr	a5,mcause
 890:	0807ca63          	bltz	a5,924 <__neorv32_rte_core+0xe4>
 894:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3ed38>
 898:	00300593          	li	a1,3
 89c:	0036f693          	andi	a3,a3,3
 8a0:	00270613          	addi	a2,a4,2
 8a4:	00b69463          	bne	a3,a1,8ac <__neorv32_rte_core+0x6c>
 8a8:	00470613          	addi	a2,a4,4
 8ac:	34161073          	csrw	mepc,a2
 8b0:	00b00713          	li	a4,11
 8b4:	04f77c63          	bgeu	a4,a5,90c <__neorv32_rte_core+0xcc>
 8b8:	000017b7          	lui	a5,0x1
 8bc:	ac078793          	addi	a5,a5,-1344 # ac0 <__neorv32_rte_debug_exc_handler>
 8c0:	000780e7          	jalr	a5
 8c4:	03c12083          	lw	ra,60(sp)
 8c8:	03812283          	lw	t0,56(sp)
 8cc:	03412303          	lw	t1,52(sp)
 8d0:	03012383          	lw	t2,48(sp)
 8d4:	02c12503          	lw	a0,44(sp)
 8d8:	02812583          	lw	a1,40(sp)
 8dc:	02412603          	lw	a2,36(sp)
 8e0:	02012683          	lw	a3,32(sp)
 8e4:	01c12703          	lw	a4,28(sp)
 8e8:	01812783          	lw	a5,24(sp)
 8ec:	01412803          	lw	a6,20(sp)
 8f0:	01012883          	lw	a7,16(sp)
 8f4:	00c12e03          	lw	t3,12(sp)
 8f8:	00812e83          	lw	t4,8(sp)
 8fc:	00412f03          	lw	t5,4(sp)
 900:	00012f83          	lw	t6,0(sp)
 904:	04010113          	addi	sp,sp,64
 908:	30200073          	mret
 90c:	00001737          	lui	a4,0x1
 910:	00279793          	slli	a5,a5,0x2
 914:	02070713          	addi	a4,a4,32 # 1020 <symbols.0+0x14>
 918:	00e787b3          	add	a5,a5,a4
 91c:	0007a783          	lw	a5,0(a5)
 920:	00078067          	jr	a5
 924:	80000737          	lui	a4,0x80000
 928:	ffd74713          	xori	a4,a4,-3
 92c:	00e787b3          	add	a5,a5,a4
 930:	01c00713          	li	a4,28
 934:	f8f762e3          	bltu	a4,a5,8b8 <__neorv32_rte_core+0x78>
 938:	00001737          	lui	a4,0x1
 93c:	00279793          	slli	a5,a5,0x2
 940:	05070713          	addi	a4,a4,80 # 1050 <symbols.0+0x44>
 944:	00e787b3          	add	a5,a5,a4
 948:	0007a783          	lw	a5,0(a5)
 94c:	00078067          	jr	a5
 950:	800007b7          	lui	a5,0x80000
 954:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 958:	f69ff06f          	j	8c0 <__neorv32_rte_core+0x80>
 95c:	800007b7          	lui	a5,0x80000
 960:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 964:	f5dff06f          	j	8c0 <__neorv32_rte_core+0x80>
 968:	800007b7          	lui	a5,0x80000
 96c:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 970:	f51ff06f          	j	8c0 <__neorv32_rte_core+0x80>
 974:	800007b7          	lui	a5,0x80000
 978:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
 97c:	f45ff06f          	j	8c0 <__neorv32_rte_core+0x80>
 980:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
 984:	f3dff06f          	j	8c0 <__neorv32_rte_core+0x80>
 988:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
 98c:	f35ff06f          	j	8c0 <__neorv32_rte_core+0x80>
 990:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
 994:	f2dff06f          	j	8c0 <__neorv32_rte_core+0x80>
 998:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
 99c:	f25ff06f          	j	8c0 <__neorv32_rte_core+0x80>
 9a0:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
 9a4:	f1dff06f          	j	8c0 <__neorv32_rte_core+0x80>
 9a8:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
 9ac:	f15ff06f          	j	8c0 <__neorv32_rte_core+0x80>
 9b0:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
 9b4:	f0dff06f          	j	8c0 <__neorv32_rte_core+0x80>
 9b8:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
 9bc:	f05ff06f          	j	8c0 <__neorv32_rte_core+0x80>
 9c0:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
 9c4:	efdff06f          	j	8c0 <__neorv32_rte_core+0x80>
 9c8:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
 9cc:	ef5ff06f          	j	8c0 <__neorv32_rte_core+0x80>
 9d0:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
 9d4:	eedff06f          	j	8c0 <__neorv32_rte_core+0x80>
 9d8:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
 9dc:	ee5ff06f          	j	8c0 <__neorv32_rte_core+0x80>
 9e0:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 9e4:	eddff06f          	j	8c0 <__neorv32_rte_core+0x80>
 9e8:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 9ec:	ed5ff06f          	j	8c0 <__neorv32_rte_core+0x80>
 9f0:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 9f4:	ecdff06f          	j	8c0 <__neorv32_rte_core+0x80>
 9f8:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 9fc:	ec5ff06f          	j	8c0 <__neorv32_rte_core+0x80>
 a00:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 a04:	ebdff06f          	j	8c0 <__neorv32_rte_core+0x80>
 a08:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 a0c:	eb5ff06f          	j	8c0 <__neorv32_rte_core+0x80>
 a10:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 a14:	eadff06f          	j	8c0 <__neorv32_rte_core+0x80>
 a18:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 a1c:	ea5ff06f          	j	8c0 <__neorv32_rte_core+0x80>
 a20:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 a24:	e9dff06f          	j	8c0 <__neorv32_rte_core+0x80>
 a28:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 a2c:	e95ff06f          	j	8c0 <__neorv32_rte_core+0x80>
 a30:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 a34:	e8dff06f          	j	8c0 <__neorv32_rte_core+0x80>
 a38:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 a3c:	e85ff06f          	j	8c0 <__neorv32_rte_core+0x80>
 a40:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 a44:	e7dff06f          	j	8c0 <__neorv32_rte_core+0x80>
 a48:	0000                	unimp
 a4a:	0000                	unimp
 a4c:	0000                	unimp
 a4e:	0000                	unimp

00000a50 <__neorv32_rte_print_hex_word>:
 a50:	fe010113          	addi	sp,sp,-32
 a54:	01212823          	sw	s2,16(sp)
 a58:	00050913          	mv	s2,a0
 a5c:	00001537          	lui	a0,0x1
 a60:	00912a23          	sw	s1,20(sp)
 a64:	0c450513          	addi	a0,a0,196 # 10c4 <symbols.0+0xb8>
 a68:	000014b7          	lui	s1,0x1
 a6c:	00812c23          	sw	s0,24(sp)
 a70:	01312623          	sw	s3,12(sp)
 a74:	00112e23          	sw	ra,28(sp)
 a78:	01c00413          	li	s0,28
 a7c:	aedff0ef          	jal	ra,568 <neorv32_uart0_print>
 a80:	2b848493          	addi	s1,s1,696 # 12b8 <hex_symbols.0>
 a84:	ffc00993          	li	s3,-4
 a88:	008957b3          	srl	a5,s2,s0
 a8c:	00f7f793          	andi	a5,a5,15
 a90:	00f487b3          	add	a5,s1,a5
 a94:	0007c503          	lbu	a0,0(a5)
 a98:	ffc40413          	addi	s0,s0,-4
 a9c:	ab5ff0ef          	jal	ra,550 <neorv32_uart0_putc>
 aa0:	ff3414e3          	bne	s0,s3,a88 <__neorv32_rte_print_hex_word+0x38>
 aa4:	01c12083          	lw	ra,28(sp)
 aa8:	01812403          	lw	s0,24(sp)
 aac:	01412483          	lw	s1,20(sp)
 ab0:	01012903          	lw	s2,16(sp)
 ab4:	00c12983          	lw	s3,12(sp)
 ab8:	02010113          	addi	sp,sp,32
 abc:	00008067          	ret

00000ac0 <__neorv32_rte_debug_exc_handler>:
 ac0:	ff010113          	addi	sp,sp,-16
 ac4:	00112623          	sw	ra,12(sp)
 ac8:	00812423          	sw	s0,8(sp)
 acc:	00912223          	sw	s1,4(sp)
 ad0:	9c5ff0ef          	jal	ra,494 <neorv32_uart0_available>
 ad4:	1c050863          	beqz	a0,ca4 <__neorv32_rte_debug_exc_handler+0x1e4>
 ad8:	00001537          	lui	a0,0x1
 adc:	0c850513          	addi	a0,a0,200 # 10c8 <symbols.0+0xbc>
 ae0:	a89ff0ef          	jal	ra,568 <neorv32_uart0_print>
 ae4:	34202473          	csrr	s0,mcause
 ae8:	00900713          	li	a4,9
 aec:	00f47793          	andi	a5,s0,15
 af0:	03078493          	addi	s1,a5,48
 af4:	00f77463          	bgeu	a4,a5,afc <__neorv32_rte_debug_exc_handler+0x3c>
 af8:	05778493          	addi	s1,a5,87
 afc:	00b00793          	li	a5,11
 b00:	0087ee63          	bltu	a5,s0,b1c <__neorv32_rte_debug_exc_handler+0x5c>
 b04:	00001737          	lui	a4,0x1
 b08:	00241793          	slli	a5,s0,0x2
 b0c:	28870713          	addi	a4,a4,648 # 1288 <symbols.0+0x27c>
 b10:	00e787b3          	add	a5,a5,a4
 b14:	0007a783          	lw	a5,0(a5)
 b18:	00078067          	jr	a5
 b1c:	800007b7          	lui	a5,0x80000
 b20:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 b24:	14e40e63          	beq	s0,a4,c80 <__neorv32_rte_debug_exc_handler+0x1c0>
 b28:	02876a63          	bltu	a4,s0,b5c <__neorv32_rte_debug_exc_handler+0x9c>
 b2c:	00378713          	addi	a4,a5,3
 b30:	12e40c63          	beq	s0,a4,c68 <__neorv32_rte_debug_exc_handler+0x1a8>
 b34:	00778793          	addi	a5,a5,7
 b38:	12f40e63          	beq	s0,a5,c74 <__neorv32_rte_debug_exc_handler+0x1b4>
 b3c:	00001537          	lui	a0,0x1
 b40:	22850513          	addi	a0,a0,552 # 1228 <symbols.0+0x21c>
 b44:	a25ff0ef          	jal	ra,568 <neorv32_uart0_print>
 b48:	00040513          	mv	a0,s0
 b4c:	f05ff0ef          	jal	ra,a50 <__neorv32_rte_print_hex_word>
 b50:	00100793          	li	a5,1
 b54:	08f40c63          	beq	s0,a5,bec <__neorv32_rte_debug_exc_handler+0x12c>
 b58:	0280006f          	j	b80 <__neorv32_rte_debug_exc_handler+0xc0>
 b5c:	ff07c793          	xori	a5,a5,-16
 b60:	00f407b3          	add	a5,s0,a5
 b64:	00f00713          	li	a4,15
 b68:	fcf76ae3          	bltu	a4,a5,b3c <__neorv32_rte_debug_exc_handler+0x7c>
 b6c:	00001537          	lui	a0,0x1
 b70:	21850513          	addi	a0,a0,536 # 1218 <symbols.0+0x20c>
 b74:	9f5ff0ef          	jal	ra,568 <neorv32_uart0_print>
 b78:	00048513          	mv	a0,s1
 b7c:	9d5ff0ef          	jal	ra,550 <neorv32_uart0_putc>
 b80:	ffd47413          	andi	s0,s0,-3
 b84:	00500793          	li	a5,5
 b88:	06f40263          	beq	s0,a5,bec <__neorv32_rte_debug_exc_handler+0x12c>
 b8c:	00001537          	lui	a0,0x1
 b90:	26c50513          	addi	a0,a0,620 # 126c <symbols.0+0x260>
 b94:	9d5ff0ef          	jal	ra,568 <neorv32_uart0_print>
 b98:	34002573          	csrr	a0,mscratch
 b9c:	eb5ff0ef          	jal	ra,a50 <__neorv32_rte_print_hex_word>
 ba0:	00001537          	lui	a0,0x1
 ba4:	27450513          	addi	a0,a0,628 # 1274 <symbols.0+0x268>
 ba8:	9c1ff0ef          	jal	ra,568 <neorv32_uart0_print>
 bac:	34302573          	csrr	a0,mtval
 bb0:	ea1ff0ef          	jal	ra,a50 <__neorv32_rte_print_hex_word>
 bb4:	00812403          	lw	s0,8(sp)
 bb8:	00c12083          	lw	ra,12(sp)
 bbc:	00412483          	lw	s1,4(sp)
 bc0:	00001537          	lui	a0,0x1
 bc4:	28050513          	addi	a0,a0,640 # 1280 <symbols.0+0x274>
 bc8:	01010113          	addi	sp,sp,16
 bcc:	99dff06f          	j	568 <neorv32_uart0_print>
 bd0:	00001537          	lui	a0,0x1
 bd4:	0d050513          	addi	a0,a0,208 # 10d0 <symbols.0+0xc4>
 bd8:	991ff0ef          	jal	ra,568 <neorv32_uart0_print>
 bdc:	fb1ff06f          	j	b8c <__neorv32_rte_debug_exc_handler+0xcc>
 be0:	00001537          	lui	a0,0x1
 be4:	0f050513          	addi	a0,a0,240 # 10f0 <symbols.0+0xe4>
 be8:	981ff0ef          	jal	ra,568 <neorv32_uart0_print>
 bec:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 bf0:	0a07d463          	bgez	a5,c98 <__neorv32_rte_debug_exc_handler+0x1d8>
 bf4:	0017f793          	andi	a5,a5,1
 bf8:	08078a63          	beqz	a5,c8c <__neorv32_rte_debug_exc_handler+0x1cc>
 bfc:	00001537          	lui	a0,0x1
 c00:	24050513          	addi	a0,a0,576 # 1240 <symbols.0+0x234>
 c04:	fd5ff06f          	j	bd8 <__neorv32_rte_debug_exc_handler+0x118>
 c08:	00001537          	lui	a0,0x1
 c0c:	10c50513          	addi	a0,a0,268 # 110c <symbols.0+0x100>
 c10:	fc9ff06f          	j	bd8 <__neorv32_rte_debug_exc_handler+0x118>
 c14:	00001537          	lui	a0,0x1
 c18:	12050513          	addi	a0,a0,288 # 1120 <symbols.0+0x114>
 c1c:	fbdff06f          	j	bd8 <__neorv32_rte_debug_exc_handler+0x118>
 c20:	00001537          	lui	a0,0x1
 c24:	12c50513          	addi	a0,a0,300 # 112c <symbols.0+0x120>
 c28:	fb1ff06f          	j	bd8 <__neorv32_rte_debug_exc_handler+0x118>
 c2c:	00001537          	lui	a0,0x1
 c30:	14450513          	addi	a0,a0,324 # 1144 <symbols.0+0x138>
 c34:	fb5ff06f          	j	be8 <__neorv32_rte_debug_exc_handler+0x128>
 c38:	00001537          	lui	a0,0x1
 c3c:	15850513          	addi	a0,a0,344 # 1158 <symbols.0+0x14c>
 c40:	f99ff06f          	j	bd8 <__neorv32_rte_debug_exc_handler+0x118>
 c44:	00001537          	lui	a0,0x1
 c48:	17450513          	addi	a0,a0,372 # 1174 <symbols.0+0x168>
 c4c:	f9dff06f          	j	be8 <__neorv32_rte_debug_exc_handler+0x128>
 c50:	00001537          	lui	a0,0x1
 c54:	18850513          	addi	a0,a0,392 # 1188 <symbols.0+0x17c>
 c58:	f81ff06f          	j	bd8 <__neorv32_rte_debug_exc_handler+0x118>
 c5c:	00001537          	lui	a0,0x1
 c60:	1a850513          	addi	a0,a0,424 # 11a8 <symbols.0+0x19c>
 c64:	f75ff06f          	j	bd8 <__neorv32_rte_debug_exc_handler+0x118>
 c68:	00001537          	lui	a0,0x1
 c6c:	1c850513          	addi	a0,a0,456 # 11c8 <symbols.0+0x1bc>
 c70:	f69ff06f          	j	bd8 <__neorv32_rte_debug_exc_handler+0x118>
 c74:	00001537          	lui	a0,0x1
 c78:	1e450513          	addi	a0,a0,484 # 11e4 <symbols.0+0x1d8>
 c7c:	f5dff06f          	j	bd8 <__neorv32_rte_debug_exc_handler+0x118>
 c80:	00001537          	lui	a0,0x1
 c84:	1fc50513          	addi	a0,a0,508 # 11fc <symbols.0+0x1f0>
 c88:	f51ff06f          	j	bd8 <__neorv32_rte_debug_exc_handler+0x118>
 c8c:	00001537          	lui	a0,0x1
 c90:	25050513          	addi	a0,a0,592 # 1250 <symbols.0+0x244>
 c94:	f45ff06f          	j	bd8 <__neorv32_rte_debug_exc_handler+0x118>
 c98:	00001537          	lui	a0,0x1
 c9c:	26050513          	addi	a0,a0,608 # 1260 <symbols.0+0x254>
 ca0:	f39ff06f          	j	bd8 <__neorv32_rte_debug_exc_handler+0x118>
 ca4:	00c12083          	lw	ra,12(sp)
 ca8:	00812403          	lw	s0,8(sp)
 cac:	00412483          	lw	s1,4(sp)
 cb0:	01010113          	addi	sp,sp,16
 cb4:	00008067          	ret

00000cb8 <neorv32_rte_exception_uninstall>:
 cb8:	01f00793          	li	a5,31
 cbc:	02a7e463          	bltu	a5,a0,ce4 <neorv32_rte_exception_uninstall+0x2c>
 cc0:	800007b7          	lui	a5,0x80000
 cc4:	00078793          	mv	a5,a5
 cc8:	00251513          	slli	a0,a0,0x2
 ccc:	00a78533          	add	a0,a5,a0
 cd0:	000017b7          	lui	a5,0x1
 cd4:	ac078793          	addi	a5,a5,-1344 # ac0 <__neorv32_rte_debug_exc_handler>
 cd8:	00f52023          	sw	a5,0(a0)
 cdc:	00000513          	li	a0,0
 ce0:	00008067          	ret
 ce4:	00100513          	li	a0,1
 ce8:	00008067          	ret

00000cec <neorv32_rte_setup>:
 cec:	ff010113          	addi	sp,sp,-16
 cf0:	000017b7          	lui	a5,0x1
 cf4:	00112623          	sw	ra,12(sp)
 cf8:	00812423          	sw	s0,8(sp)
 cfc:	00912223          	sw	s1,4(sp)
 d00:	84078793          	addi	a5,a5,-1984 # 840 <__neorv32_rte_core>
 d04:	30579073          	csrw	mtvec,a5
 d08:	00000413          	li	s0,0
 d0c:	01d00493          	li	s1,29
 d10:	00040513          	mv	a0,s0
 d14:	00140413          	addi	s0,s0,1
 d18:	0ff47413          	andi	s0,s0,255
 d1c:	f9dff0ef          	jal	ra,cb8 <neorv32_rte_exception_uninstall>
 d20:	fe9418e3          	bne	s0,s1,d10 <neorv32_rte_setup+0x24>
 d24:	00c12083          	lw	ra,12(sp)
 d28:	00812403          	lw	s0,8(sp)
 d2c:	00412483          	lw	s1,4(sp)
 d30:	01010113          	addi	sp,sp,16
 d34:	00008067          	ret

00000d38 <neorv32_gpio_available>:
 d38:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 d3c:	01055513          	srli	a0,a0,0x10
 d40:	00157513          	andi	a0,a0,1
 d44:	00008067          	ret

00000d48 <neorv32_gpio_pin_get>:
 d48:	00050793          	mv	a5,a0
 d4c:	01f00713          	li	a4,31
 d50:	00100513          	li	a0,1
 d54:	00f51533          	sll	a0,a0,a5
 d58:	00f74863          	blt	a4,a5,d68 <neorv32_gpio_pin_get+0x20>
 d5c:	fc002783          	lw	a5,-64(zero) # ffffffc0 <__ctr0_io_space_begin+0x1c0>
 d60:	00a7f533          	and	a0,a5,a0
 d64:	00008067          	ret
 d68:	fc402783          	lw	a5,-60(zero) # ffffffc4 <__ctr0_io_space_begin+0x1c4>
 d6c:	ff5ff06f          	j	d60 <neorv32_gpio_pin_get+0x18>

00000d70 <__mulsi3>:
 d70:	00050613          	mv	a2,a0
 d74:	00000513          	li	a0,0
 d78:	0015f693          	andi	a3,a1,1
 d7c:	00068463          	beqz	a3,d84 <__mulsi3+0x14>
 d80:	00c50533          	add	a0,a0,a2
 d84:	0015d593          	srli	a1,a1,0x1
 d88:	00161613          	slli	a2,a2,0x1
 d8c:	fe0596e3          	bnez	a1,d78 <__mulsi3+0x8>
 d90:	00008067          	ret

00000d94 <__muldi3>:
 d94:	00050313          	mv	t1,a0
 d98:	ff010113          	addi	sp,sp,-16
 d9c:	00060513          	mv	a0,a2
 da0:	00068893          	mv	a7,a3
 da4:	00112623          	sw	ra,12(sp)
 da8:	00030613          	mv	a2,t1
 dac:	00050693          	mv	a3,a0
 db0:	00000713          	li	a4,0
 db4:	00000793          	li	a5,0
 db8:	00000813          	li	a6,0
 dbc:	0016fe13          	andi	t3,a3,1
 dc0:	00171e93          	slli	t4,a4,0x1
 dc4:	000e0c63          	beqz	t3,ddc <__muldi3+0x48>
 dc8:	01060e33          	add	t3,a2,a6
 dcc:	010e3833          	sltu	a6,t3,a6
 dd0:	00e787b3          	add	a5,a5,a4
 dd4:	00f807b3          	add	a5,a6,a5
 dd8:	000e0813          	mv	a6,t3
 ddc:	01f65713          	srli	a4,a2,0x1f
 de0:	0016d693          	srli	a3,a3,0x1
 de4:	00eee733          	or	a4,t4,a4
 de8:	00161613          	slli	a2,a2,0x1
 dec:	fc0698e3          	bnez	a3,dbc <__muldi3+0x28>
 df0:	00058663          	beqz	a1,dfc <__muldi3+0x68>
 df4:	f7dff0ef          	jal	ra,d70 <__mulsi3>
 df8:	00a787b3          	add	a5,a5,a0
 dfc:	00088a63          	beqz	a7,e10 <__muldi3+0x7c>
 e00:	00030513          	mv	a0,t1
 e04:	00088593          	mv	a1,a7
 e08:	f69ff0ef          	jal	ra,d70 <__mulsi3>
 e0c:	00f507b3          	add	a5,a0,a5
 e10:	00c12083          	lw	ra,12(sp)
 e14:	00080513          	mv	a0,a6
 e18:	00078593          	mv	a1,a5
 e1c:	01010113          	addi	sp,sp,16
 e20:	00008067          	ret

00000e24 <__divsi3>:
 e24:	06054063          	bltz	a0,e84 <__umodsi3+0x10>
 e28:	0605c663          	bltz	a1,e94 <__umodsi3+0x20>

00000e2c <__udivsi3>:
 e2c:	00058613          	mv	a2,a1
 e30:	00050593          	mv	a1,a0
 e34:	fff00513          	li	a0,-1
 e38:	02060c63          	beqz	a2,e70 <__udivsi3+0x44>
 e3c:	00100693          	li	a3,1
 e40:	00b67a63          	bgeu	a2,a1,e54 <__udivsi3+0x28>
 e44:	00c05863          	blez	a2,e54 <__udivsi3+0x28>
 e48:	00161613          	slli	a2,a2,0x1
 e4c:	00169693          	slli	a3,a3,0x1
 e50:	feb66ae3          	bltu	a2,a1,e44 <__udivsi3+0x18>
 e54:	00000513          	li	a0,0
 e58:	00c5e663          	bltu	a1,a2,e64 <__udivsi3+0x38>
 e5c:	40c585b3          	sub	a1,a1,a2
 e60:	00d56533          	or	a0,a0,a3
 e64:	0016d693          	srli	a3,a3,0x1
 e68:	00165613          	srli	a2,a2,0x1
 e6c:	fe0696e3          	bnez	a3,e58 <__udivsi3+0x2c>
 e70:	00008067          	ret

00000e74 <__umodsi3>:
 e74:	00008293          	mv	t0,ra
 e78:	fb5ff0ef          	jal	ra,e2c <__udivsi3>
 e7c:	00058513          	mv	a0,a1
 e80:	00028067          	jr	t0
 e84:	40a00533          	neg	a0,a0
 e88:	00b04863          	bgtz	a1,e98 <__umodsi3+0x24>
 e8c:	40b005b3          	neg	a1,a1
 e90:	f9dff06f          	j	e2c <__udivsi3>
 e94:	40b005b3          	neg	a1,a1
 e98:	00008293          	mv	t0,ra
 e9c:	f91ff0ef          	jal	ra,e2c <__udivsi3>
 ea0:	40a00533          	neg	a0,a0
 ea4:	00028067          	jr	t0

00000ea8 <__modsi3>:
 ea8:	00008293          	mv	t0,ra
 eac:	0005ca63          	bltz	a1,ec0 <__modsi3+0x18>
 eb0:	00054c63          	bltz	a0,ec8 <__modsi3+0x20>
 eb4:	f79ff0ef          	jal	ra,e2c <__udivsi3>
 eb8:	00058513          	mv	a0,a1
 ebc:	00028067          	jr	t0
 ec0:	40b005b3          	neg	a1,a1
 ec4:	fe0558e3          	bgez	a0,eb4 <__modsi3+0xc>
 ec8:	40a00533          	neg	a0,a0
 ecc:	f61ff0ef          	jal	ra,e2c <__udivsi3>
 ed0:	40b00533          	neg	a0,a1
 ed4:	00028067          	jr	t0
