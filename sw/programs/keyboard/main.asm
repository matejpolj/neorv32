
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
  18:	11850513          	addi	a0,a0,280 # 12c <__crt0_dummy_trap_handler>
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
  c0:	81018593          	addi	a1,gp,-2032 # 80000010 <__neorv32_rte_vector_lut>
  c4:	88418613          	addi	a2,gp,-1916 # 80000084 <__BSS_END__>

000000c8 <__crt0_clear_bss_loop>:
  c8:	00c5d863          	bge	a1,a2,d8 <__crt0_clear_bss_loop_end>
  cc:	00058023          	sb	zero,0(a1)
  d0:	00158593          	addi	a1,a1,1
  d4:	ff5ff06f          	j	c8 <__crt0_clear_bss_loop>

000000d8 <__crt0_clear_bss_loop_end>:
  d8:	00001597          	auipc	a1,0x1
  dc:	1b058593          	addi	a1,a1,432 # 1288 <__crt0_copy_data_src_begin>
  e0:	80000617          	auipc	a2,0x80000
  e4:	f2060613          	addi	a2,a2,-224 # 80000000 <__ctr0_io_space_begin+0x80000200>
  e8:	81018693          	addi	a3,gp,-2032 # 80000010 <__neorv32_rte_vector_lut>

000000ec <__crt0_copy_data_loop>:
  ec:	00d65c63          	bge	a2,a3,104 <__crt0_copy_data_loop_end>
  f0:	00058703          	lb	a4,0(a1)
  f4:	00e60023          	sb	a4,0(a2)
  f8:	00158593          	addi	a1,a1,1
  fc:	00160613          	addi	a2,a2,1
 100:	fedff06f          	j	ec <__crt0_copy_data_loop>

00000104 <__crt0_copy_data_loop_end>:
 104:	00000513          	li	a0,0
 108:	00000593          	li	a1,0
 10c:	06c000ef          	jal	ra,178 <main>

00000110 <__crt0_main_aftermath>:
 110:	34051073          	csrw	mscratch,a0
 114:	00000093          	li	ra,0
 118:	00008463          	beqz	ra,120 <__crt0_main_aftermath_end>
 11c:	000080e7          	jalr	ra

00000120 <__crt0_main_aftermath_end>:
 120:	30047073          	csrci	mstatus,8

00000124 <__crt0_main_aftermath_end_loop>:
 124:	10500073          	wfi
 128:	ffdff06f          	j	124 <__crt0_main_aftermath_end_loop>

0000012c <__crt0_dummy_trap_handler>:
 12c:	ff810113          	addi	sp,sp,-8
 130:	00812023          	sw	s0,0(sp)
 134:	00912223          	sw	s1,4(sp)
 138:	34202473          	csrr	s0,mcause
 13c:	02044663          	bltz	s0,168 <__crt0_dummy_trap_handler_irq>
 140:	34102473          	csrr	s0,mepc

00000144 <__crt0_dummy_trap_handler_exc_c_check>:
 144:	00041483          	lh	s1,0(s0)
 148:	0034f493          	andi	s1,s1,3
 14c:	00240413          	addi	s0,s0,2
 150:	34141073          	csrw	mepc,s0
 154:	00300413          	li	s0,3
 158:	00941863          	bne	s0,s1,168 <__crt0_dummy_trap_handler_irq>

0000015c <__crt0_dummy_trap_handler_exc_uncrompressed>:
 15c:	34102473          	csrr	s0,mepc
 160:	00240413          	addi	s0,s0,2
 164:	34141073          	csrw	mepc,s0

00000168 <__crt0_dummy_trap_handler_irq>:
 168:	00012403          	lw	s0,0(sp)
 16c:	00412483          	lw	s1,4(sp)
 170:	00810113          	addi	sp,sp,8
 174:	30200073          	mret

00000178 <main>:
 178:	00005537          	lui	a0,0x5
 17c:	fe010113          	addi	sp,sp,-32
 180:	00000613          	li	a2,0
 184:	00000593          	li	a1,0
 188:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3878>
 18c:	00112e23          	sw	ra,28(sp)
 190:	00812c23          	sw	s0,24(sp)
 194:	318000ef          	jal	ra,4ac <neorv32_uart0_setup>
 198:	39d000ef          	jal	ra,d34 <neorv32_gpio_available>
 19c:	06050c63          	beqz	a0,214 <main+0x9c>
 1a0:	349000ef          	jal	ra,ce8 <neorv32_rte_setup>
 1a4:	00001537          	lui	a0,0x1
 1a8:	f5c50513          	addi	a0,a0,-164 # f5c <__etext+0x24>
 1ac:	3c4000ef          	jal	ra,570 <neorv32_uart0_print>
 1b0:	00001537          	lui	a0,0x1
 1b4:	f7c50513          	addi	a0,a0,-132 # f7c <__etext+0x44>
 1b8:	3b8000ef          	jal	ra,570 <neorv32_uart0_print>
 1bc:	800007b7          	lui	a5,0x80000
 1c0:	00078793          	mv	a5,a5
 1c4:	0007a703          	lw	a4,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 1c8:	0047a783          	lw	a5,4(a5)
 1cc:	00001437          	lui	s0,0x1
 1d0:	00e12023          	sw	a4,0(sp)
 1d4:	00f12223          	sw	a5,4(sp)
 1d8:	800007b7          	lui	a5,0x80000
 1dc:	00878793          	addi	a5,a5,8 # 80000008 <__ctr0_io_space_begin+0x80000208>
 1e0:	0007a703          	lw	a4,0(a5)
 1e4:	0047a783          	lw	a5,4(a5)
 1e8:	00e12423          	sw	a4,8(sp)
 1ec:	00f12623          	sw	a5,12(sp)
 1f0:	00810593          	addi	a1,sp,8
 1f4:	00010513          	mv	a0,sp
 1f8:	03c000ef          	jal	ra,234 <getKeyPress>
 1fc:	00050593          	mv	a1,a0
 200:	fa440513          	addi	a0,s0,-92 # fa4 <__etext+0x6c>
 204:	3c4000ef          	jal	ra,5c8 <neorv32_uart0_printf>
 208:	7d000513          	li	a0,2000
 20c:	580000ef          	jal	ra,78c <neorv32_cpu_delay_ms>
 210:	fe1ff06f          	j	1f0 <main+0x78>
 214:	00001537          	lui	a0,0x1
 218:	f3850513          	addi	a0,a0,-200 # f38 <__etext>
 21c:	354000ef          	jal	ra,570 <neorv32_uart0_print>
 220:	01c12083          	lw	ra,28(sp)
 224:	01812403          	lw	s0,24(sp)
 228:	00100513          	li	a0,1
 22c:	02010113          	addi	sp,sp,32
 230:	00008067          	ret

00000234 <getKeyPress>:
 234:	fe010113          	addi	sp,sp,-32
 238:	00912a23          	sw	s1,20(sp)
 23c:	01312623          	sw	s3,12(sp)
 240:	00112e23          	sw	ra,28(sp)
 244:	00812c23          	sw	s0,24(sp)
 248:	01212823          	sw	s2,16(sp)
 24c:	01412423          	sw	s4,8(sp)
 250:	01512223          	sw	s5,4(sp)
 254:	00050993          	mv	s3,a0
 258:	00058493          	mv	s1,a1
 25c:	2d9000ef          	jal	ra,d34 <neorv32_gpio_available>
 260:	08050a63          	beqz	a0,2f4 <getKeyPress+0xc0>
 264:	00648493          	addi	s1,s1,6
 268:	00300413          	li	s0,3
 26c:	00400a93          	li	s5,4
 270:	fff00a13          	li	s4,-1
 274:	0004d503          	lhu	a0,0(s1)
 278:	00000913          	li	s2,0
 27c:	2c9000ef          	jal	ra,d44 <neorv32_gpio_pin_set>
 280:	00191793          	slli	a5,s2,0x1
 284:	00f987b3          	add	a5,s3,a5
 288:	0007d503          	lhu	a0,0(a5)
 28c:	070000ef          	jal	ra,2fc <getButtonState>
 290:	04051063          	bnez	a0,2d0 <getKeyPress+0x9c>
 294:	0004d503          	lhu	a0,0(s1)
 298:	2dd000ef          	jal	ra,d74 <neorv32_gpio_pin_clr>
 29c:	00241513          	slli	a0,s0,0x2
 2a0:	01250533          	add	a0,a0,s2
 2a4:	01051513          	slli	a0,a0,0x10
 2a8:	01055513          	srli	a0,a0,0x10
 2ac:	01c12083          	lw	ra,28(sp)
 2b0:	01812403          	lw	s0,24(sp)
 2b4:	01412483          	lw	s1,20(sp)
 2b8:	01012903          	lw	s2,16(sp)
 2bc:	00c12983          	lw	s3,12(sp)
 2c0:	00812a03          	lw	s4,8(sp)
 2c4:	00412a83          	lw	s5,4(sp)
 2c8:	02010113          	addi	sp,sp,32
 2cc:	00008067          	ret
 2d0:	00190913          	addi	s2,s2,1
 2d4:	fb5916e3          	bne	s2,s5,280 <getKeyPress+0x4c>
 2d8:	0004d503          	lhu	a0,0(s1)
 2dc:	fff40413          	addi	s0,s0,-1
 2e0:	ffe48493          	addi	s1,s1,-2
 2e4:	291000ef          	jal	ra,d74 <neorv32_gpio_pin_clr>
 2e8:	f94416e3          	bne	s0,s4,274 <getKeyPress+0x40>
 2ec:	01f00513          	li	a0,31
 2f0:	fbdff06f          	j	2ac <getKeyPress+0x78>
 2f4:	00100513          	li	a0,1
 2f8:	fb5ff06f          	j	2ac <getKeyPress+0x78>

000002fc <getButtonState>:
 2fc:	ff010113          	addi	sp,sp,-16
 300:	00112623          	sw	ra,12(sp)
 304:	00812423          	sw	s0,8(sp)
 308:	00912223          	sw	s1,4(sp)
 30c:	00050493          	mv	s1,a0
 310:	299000ef          	jal	ra,da8 <neorv32_gpio_pin_get>
 314:	00050413          	mv	s0,a0
 318:	00500513          	li	a0,5
 31c:	470000ef          	jal	ra,78c <neorv32_cpu_delay_ms>
 320:	00048513          	mv	a0,s1
 324:	285000ef          	jal	ra,da8 <neorv32_gpio_pin_get>
 328:	00a477b3          	and	a5,s0,a0
 32c:	02079263          	bnez	a5,350 <getButtonState+0x54>
 330:	00a46533          	or	a0,s0,a0
 334:	00a03533          	snez	a0,a0
 338:	00150513          	addi	a0,a0,1
 33c:	00c12083          	lw	ra,12(sp)
 340:	00812403          	lw	s0,8(sp)
 344:	00412483          	lw	s1,4(sp)
 348:	01010113          	addi	sp,sp,16
 34c:	00008067          	ret
 350:	00000513          	li	a0,0
 354:	fe9ff06f          	j	33c <getButtonState+0x40>

00000358 <__neorv32_uart_itoa>:
 358:	fd010113          	addi	sp,sp,-48
 35c:	02812423          	sw	s0,40(sp)
 360:	02912223          	sw	s1,36(sp)
 364:	03212023          	sw	s2,32(sp)
 368:	01312e23          	sw	s3,28(sp)
 36c:	01412c23          	sw	s4,24(sp)
 370:	02112623          	sw	ra,44(sp)
 374:	01512a23          	sw	s5,20(sp)
 378:	00001a37          	lui	s4,0x1
 37c:	00050493          	mv	s1,a0
 380:	00058413          	mv	s0,a1
 384:	00058523          	sb	zero,10(a1)
 388:	00000993          	li	s3,0
 38c:	00410913          	addi	s2,sp,4
 390:	fc0a0a13          	addi	s4,s4,-64 # fc0 <numbers.1>
 394:	00a00593          	li	a1,10
 398:	00048513          	mv	a0,s1
 39c:	339000ef          	jal	ra,ed4 <__umodsi3>
 3a0:	00aa0533          	add	a0,s4,a0
 3a4:	00054783          	lbu	a5,0(a0)
 3a8:	01390ab3          	add	s5,s2,s3
 3ac:	00048513          	mv	a0,s1
 3b0:	00fa8023          	sb	a5,0(s5)
 3b4:	00a00593          	li	a1,10
 3b8:	2d5000ef          	jal	ra,e8c <__udivsi3>
 3bc:	00198993          	addi	s3,s3,1
 3c0:	00a00793          	li	a5,10
 3c4:	00050493          	mv	s1,a0
 3c8:	fcf996e3          	bne	s3,a5,394 <__neorv32_uart_itoa+0x3c>
 3cc:	00090693          	mv	a3,s2
 3d0:	00900713          	li	a4,9
 3d4:	03000613          	li	a2,48
 3d8:	0096c583          	lbu	a1,9(a3)
 3dc:	00070793          	mv	a5,a4
 3e0:	fff70713          	addi	a4,a4,-1
 3e4:	01071713          	slli	a4,a4,0x10
 3e8:	01075713          	srli	a4,a4,0x10
 3ec:	00c59a63          	bne	a1,a2,400 <__neorv32_uart_itoa+0xa8>
 3f0:	000684a3          	sb	zero,9(a3)
 3f4:	fff68693          	addi	a3,a3,-1
 3f8:	fe0710e3          	bnez	a4,3d8 <__neorv32_uart_itoa+0x80>
 3fc:	00000793          	li	a5,0
 400:	00f907b3          	add	a5,s2,a5
 404:	00000593          	li	a1,0
 408:	0007c703          	lbu	a4,0(a5)
 40c:	00070c63          	beqz	a4,424 <__neorv32_uart_itoa+0xcc>
 410:	00158693          	addi	a3,a1,1
 414:	00b405b3          	add	a1,s0,a1
 418:	00e58023          	sb	a4,0(a1)
 41c:	01069593          	slli	a1,a3,0x10
 420:	0105d593          	srli	a1,a1,0x10
 424:	fff78713          	addi	a4,a5,-1
 428:	02f91863          	bne	s2,a5,458 <__neorv32_uart_itoa+0x100>
 42c:	00b40433          	add	s0,s0,a1
 430:	00040023          	sb	zero,0(s0)
 434:	02c12083          	lw	ra,44(sp)
 438:	02812403          	lw	s0,40(sp)
 43c:	02412483          	lw	s1,36(sp)
 440:	02012903          	lw	s2,32(sp)
 444:	01c12983          	lw	s3,28(sp)
 448:	01812a03          	lw	s4,24(sp)
 44c:	01412a83          	lw	s5,20(sp)
 450:	03010113          	addi	sp,sp,48
 454:	00008067          	ret
 458:	00070793          	mv	a5,a4
 45c:	fadff06f          	j	408 <__neorv32_uart_itoa+0xb0>

00000460 <__neorv32_uart_tohex>:
 460:	00001637          	lui	a2,0x1
 464:	00758693          	addi	a3,a1,7
 468:	00000713          	li	a4,0
 46c:	fcc60613          	addi	a2,a2,-52 # fcc <symbols.0>
 470:	02000813          	li	a6,32
 474:	00e557b3          	srl	a5,a0,a4
 478:	00f7f793          	andi	a5,a5,15
 47c:	00f607b3          	add	a5,a2,a5
 480:	0007c783          	lbu	a5,0(a5)
 484:	00470713          	addi	a4,a4,4
 488:	fff68693          	addi	a3,a3,-1
 48c:	00f680a3          	sb	a5,1(a3)
 490:	ff0712e3          	bne	a4,a6,474 <__neorv32_uart_tohex+0x14>
 494:	00058423          	sb	zero,8(a1)
 498:	00008067          	ret

0000049c <neorv32_uart0_available>:
 49c:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 4a0:	01255513          	srli	a0,a0,0x12
 4a4:	00157513          	andi	a0,a0,1
 4a8:	00008067          	ret

000004ac <neorv32_uart0_setup>:
 4ac:	ff010113          	addi	sp,sp,-16
 4b0:	00812423          	sw	s0,8(sp)
 4b4:	00912223          	sw	s1,4(sp)
 4b8:	00112623          	sw	ra,12(sp)
 4bc:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 4c0:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 4c4:	00058413          	mv	s0,a1
 4c8:	00151593          	slli	a1,a0,0x1
 4cc:	00078513          	mv	a0,a5
 4d0:	00060493          	mv	s1,a2
 4d4:	1b9000ef          	jal	ra,e8c <__udivsi3>
 4d8:	01051513          	slli	a0,a0,0x10
 4dc:	000017b7          	lui	a5,0x1
 4e0:	01055513          	srli	a0,a0,0x10
 4e4:	00000713          	li	a4,0
 4e8:	ffe78793          	addi	a5,a5,-2 # ffe <symbols.0+0x32>
 4ec:	04a7e463          	bltu	a5,a0,534 <neorv32_uart0_setup+0x88>
 4f0:	0034f793          	andi	a5,s1,3
 4f4:	00347413          	andi	s0,s0,3
 4f8:	fff50513          	addi	a0,a0,-1
 4fc:	01479793          	slli	a5,a5,0x14
 500:	01641413          	slli	s0,s0,0x16
 504:	00f567b3          	or	a5,a0,a5
 508:	0087e7b3          	or	a5,a5,s0
 50c:	01871713          	slli	a4,a4,0x18
 510:	00c12083          	lw	ra,12(sp)
 514:	00812403          	lw	s0,8(sp)
 518:	00e7e7b3          	or	a5,a5,a4
 51c:	10000737          	lui	a4,0x10000
 520:	00e7e7b3          	or	a5,a5,a4
 524:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 528:	00412483          	lw	s1,4(sp)
 52c:	01010113          	addi	sp,sp,16
 530:	00008067          	ret
 534:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffed76>
 538:	0fd6f693          	andi	a3,a3,253
 53c:	00069a63          	bnez	a3,550 <neorv32_uart0_setup+0xa4>
 540:	00355513          	srli	a0,a0,0x3
 544:	00170713          	addi	a4,a4,1
 548:	0ff77713          	andi	a4,a4,255
 54c:	fa1ff06f          	j	4ec <neorv32_uart0_setup+0x40>
 550:	00155513          	srli	a0,a0,0x1
 554:	ff1ff06f          	j	544 <neorv32_uart0_setup+0x98>

00000558 <neorv32_uart0_putc>:
 558:	00040737          	lui	a4,0x40
 55c:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 560:	00e7f7b3          	and	a5,a5,a4
 564:	fe079ce3          	bnez	a5,55c <neorv32_uart0_putc+0x4>
 568:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 56c:	00008067          	ret

00000570 <neorv32_uart0_print>:
 570:	ff010113          	addi	sp,sp,-16
 574:	00812423          	sw	s0,8(sp)
 578:	01212023          	sw	s2,0(sp)
 57c:	00112623          	sw	ra,12(sp)
 580:	00912223          	sw	s1,4(sp)
 584:	00050413          	mv	s0,a0
 588:	00a00913          	li	s2,10
 58c:	00044483          	lbu	s1,0(s0)
 590:	00140413          	addi	s0,s0,1
 594:	00049e63          	bnez	s1,5b0 <neorv32_uart0_print+0x40>
 598:	00c12083          	lw	ra,12(sp)
 59c:	00812403          	lw	s0,8(sp)
 5a0:	00412483          	lw	s1,4(sp)
 5a4:	00012903          	lw	s2,0(sp)
 5a8:	01010113          	addi	sp,sp,16
 5ac:	00008067          	ret
 5b0:	01249663          	bne	s1,s2,5bc <neorv32_uart0_print+0x4c>
 5b4:	00d00513          	li	a0,13
 5b8:	fa1ff0ef          	jal	ra,558 <neorv32_uart0_putc>
 5bc:	00048513          	mv	a0,s1
 5c0:	f99ff0ef          	jal	ra,558 <neorv32_uart0_putc>
 5c4:	fc9ff06f          	j	58c <neorv32_uart0_print+0x1c>

000005c8 <neorv32_uart0_printf>:
 5c8:	fa010113          	addi	sp,sp,-96
 5cc:	04f12a23          	sw	a5,84(sp)
 5d0:	04410793          	addi	a5,sp,68
 5d4:	02812c23          	sw	s0,56(sp)
 5d8:	03212823          	sw	s2,48(sp)
 5dc:	03412423          	sw	s4,40(sp)
 5e0:	03512223          	sw	s5,36(sp)
 5e4:	03612023          	sw	s6,32(sp)
 5e8:	01712e23          	sw	s7,28(sp)
 5ec:	01812c23          	sw	s8,24(sp)
 5f0:	01912a23          	sw	s9,20(sp)
 5f4:	02112e23          	sw	ra,60(sp)
 5f8:	02912a23          	sw	s1,52(sp)
 5fc:	03312623          	sw	s3,44(sp)
 600:	00050413          	mv	s0,a0
 604:	04b12223          	sw	a1,68(sp)
 608:	04c12423          	sw	a2,72(sp)
 60c:	04d12623          	sw	a3,76(sp)
 610:	04e12823          	sw	a4,80(sp)
 614:	05012c23          	sw	a6,88(sp)
 618:	05112e23          	sw	a7,92(sp)
 61c:	00f12023          	sw	a5,0(sp)
 620:	02500a13          	li	s4,37
 624:	00a00a93          	li	s5,10
 628:	07300913          	li	s2,115
 62c:	07500b13          	li	s6,117
 630:	07800b93          	li	s7,120
 634:	06300c13          	li	s8,99
 638:	06900c93          	li	s9,105
 63c:	00044483          	lbu	s1,0(s0)
 640:	02049c63          	bnez	s1,678 <neorv32_uart0_printf+0xb0>
 644:	03c12083          	lw	ra,60(sp)
 648:	03812403          	lw	s0,56(sp)
 64c:	03412483          	lw	s1,52(sp)
 650:	03012903          	lw	s2,48(sp)
 654:	02c12983          	lw	s3,44(sp)
 658:	02812a03          	lw	s4,40(sp)
 65c:	02412a83          	lw	s5,36(sp)
 660:	02012b03          	lw	s6,32(sp)
 664:	01c12b83          	lw	s7,28(sp)
 668:	01812c03          	lw	s8,24(sp)
 66c:	01412c83          	lw	s9,20(sp)
 670:	06010113          	addi	sp,sp,96
 674:	00008067          	ret
 678:	0d449863          	bne	s1,s4,748 <neorv32_uart0_printf+0x180>
 67c:	00240993          	addi	s3,s0,2
 680:	00144403          	lbu	s0,1(s0)
 684:	05240263          	beq	s0,s2,6c8 <neorv32_uart0_printf+0x100>
 688:	00896e63          	bltu	s2,s0,6a4 <neorv32_uart0_printf+0xdc>
 68c:	05840c63          	beq	s0,s8,6e4 <neorv32_uart0_printf+0x11c>
 690:	07940663          	beq	s0,s9,6fc <neorv32_uart0_printf+0x134>
 694:	02500513          	li	a0,37
 698:	ec1ff0ef          	jal	ra,558 <neorv32_uart0_putc>
 69c:	00040513          	mv	a0,s0
 6a0:	0540006f          	j	6f4 <neorv32_uart0_printf+0x12c>
 6a4:	09640663          	beq	s0,s6,730 <neorv32_uart0_printf+0x168>
 6a8:	ff7416e3          	bne	s0,s7,694 <neorv32_uart0_printf+0xcc>
 6ac:	00012783          	lw	a5,0(sp)
 6b0:	00410593          	addi	a1,sp,4
 6b4:	0007a503          	lw	a0,0(a5)
 6b8:	00478713          	addi	a4,a5,4
 6bc:	00e12023          	sw	a4,0(sp)
 6c0:	da1ff0ef          	jal	ra,460 <__neorv32_uart_tohex>
 6c4:	0640006f          	j	728 <neorv32_uart0_printf+0x160>
 6c8:	00012783          	lw	a5,0(sp)
 6cc:	0007a503          	lw	a0,0(a5)
 6d0:	00478713          	addi	a4,a5,4
 6d4:	00e12023          	sw	a4,0(sp)
 6d8:	e99ff0ef          	jal	ra,570 <neorv32_uart0_print>
 6dc:	00098413          	mv	s0,s3
 6e0:	f5dff06f          	j	63c <neorv32_uart0_printf+0x74>
 6e4:	00012783          	lw	a5,0(sp)
 6e8:	0007c503          	lbu	a0,0(a5)
 6ec:	00478713          	addi	a4,a5,4
 6f0:	00e12023          	sw	a4,0(sp)
 6f4:	e65ff0ef          	jal	ra,558 <neorv32_uart0_putc>
 6f8:	fe5ff06f          	j	6dc <neorv32_uart0_printf+0x114>
 6fc:	00012783          	lw	a5,0(sp)
 700:	0007a403          	lw	s0,0(a5)
 704:	00478713          	addi	a4,a5,4
 708:	00e12023          	sw	a4,0(sp)
 70c:	00045863          	bgez	s0,71c <neorv32_uart0_printf+0x154>
 710:	02d00513          	li	a0,45
 714:	40800433          	neg	s0,s0
 718:	e41ff0ef          	jal	ra,558 <neorv32_uart0_putc>
 71c:	00410593          	addi	a1,sp,4
 720:	00040513          	mv	a0,s0
 724:	c35ff0ef          	jal	ra,358 <__neorv32_uart_itoa>
 728:	00410513          	addi	a0,sp,4
 72c:	fadff06f          	j	6d8 <neorv32_uart0_printf+0x110>
 730:	00012783          	lw	a5,0(sp)
 734:	00410593          	addi	a1,sp,4
 738:	00478713          	addi	a4,a5,4
 73c:	0007a503          	lw	a0,0(a5)
 740:	00e12023          	sw	a4,0(sp)
 744:	fe1ff06f          	j	724 <neorv32_uart0_printf+0x15c>
 748:	01549663          	bne	s1,s5,754 <neorv32_uart0_printf+0x18c>
 74c:	00d00513          	li	a0,13
 750:	e09ff0ef          	jal	ra,558 <neorv32_uart0_putc>
 754:	00140993          	addi	s3,s0,1
 758:	00048513          	mv	a0,s1
 75c:	f99ff06f          	j	6f4 <neorv32_uart0_printf+0x12c>

00000760 <neorv32_cpu_get_systime>:
 760:	ff010113          	addi	sp,sp,-16
 764:	c81026f3          	rdtimeh	a3
 768:	c0102773          	rdtime	a4
 76c:	c81027f3          	rdtimeh	a5
 770:	fed79ae3          	bne	a5,a3,764 <neorv32_cpu_get_systime+0x4>
 774:	00e12023          	sw	a4,0(sp)
 778:	00f12223          	sw	a5,4(sp)
 77c:	00012503          	lw	a0,0(sp)
 780:	00412583          	lw	a1,4(sp)
 784:	01010113          	addi	sp,sp,16
 788:	00008067          	ret

0000078c <neorv32_cpu_delay_ms>:
 78c:	fd010113          	addi	sp,sp,-48
 790:	00a12623          	sw	a0,12(sp)
 794:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 798:	3e800593          	li	a1,1000
 79c:	02112623          	sw	ra,44(sp)
 7a0:	02812423          	sw	s0,40(sp)
 7a4:	02912223          	sw	s1,36(sp)
 7a8:	03212023          	sw	s2,32(sp)
 7ac:	01312e23          	sw	s3,28(sp)
 7b0:	6dc000ef          	jal	ra,e8c <__udivsi3>
 7b4:	00c12603          	lw	a2,12(sp)
 7b8:	00000693          	li	a3,0
 7bc:	00000593          	li	a1,0
 7c0:	634000ef          	jal	ra,df4 <__muldi3>
 7c4:	00050413          	mv	s0,a0
 7c8:	00058993          	mv	s3,a1
 7cc:	f95ff0ef          	jal	ra,760 <neorv32_cpu_get_systime>
 7d0:	00058913          	mv	s2,a1
 7d4:	00050493          	mv	s1,a0
 7d8:	f89ff0ef          	jal	ra,760 <neorv32_cpu_get_systime>
 7dc:	00b96663          	bltu	s2,a1,7e8 <neorv32_cpu_delay_ms+0x5c>
 7e0:	05259263          	bne	a1,s2,824 <neorv32_cpu_delay_ms+0x98>
 7e4:	04a4f063          	bgeu	s1,a0,824 <neorv32_cpu_delay_ms+0x98>
 7e8:	008484b3          	add	s1,s1,s0
 7ec:	0084b433          	sltu	s0,s1,s0
 7f0:	01390933          	add	s2,s2,s3
 7f4:	01240433          	add	s0,s0,s2
 7f8:	f69ff0ef          	jal	ra,760 <neorv32_cpu_get_systime>
 7fc:	fe85eee3          	bltu	a1,s0,7f8 <neorv32_cpu_delay_ms+0x6c>
 800:	00b41463          	bne	s0,a1,808 <neorv32_cpu_delay_ms+0x7c>
 804:	fe956ae3          	bltu	a0,s1,7f8 <neorv32_cpu_delay_ms+0x6c>
 808:	02c12083          	lw	ra,44(sp)
 80c:	02812403          	lw	s0,40(sp)
 810:	02412483          	lw	s1,36(sp)
 814:	02012903          	lw	s2,32(sp)
 818:	01c12983          	lw	s3,28(sp)
 81c:	03010113          	addi	sp,sp,48
 820:	00008067          	ret
 824:	01c99913          	slli	s2,s3,0x1c
 828:	00445413          	srli	s0,s0,0x4
 82c:	00896433          	or	s0,s2,s0

00000830 <__neorv32_cpu_delay_ms_start>:
 830:	00040a63          	beqz	s0,844 <__neorv32_cpu_delay_ms_end>
 834:	00040863          	beqz	s0,844 <__neorv32_cpu_delay_ms_end>
 838:	fff40413          	addi	s0,s0,-1
 83c:	00000013          	nop
 840:	ff1ff06f          	j	830 <__neorv32_cpu_delay_ms_start>

00000844 <__neorv32_cpu_delay_ms_end>:
 844:	fc5ff06f          	j	808 <neorv32_cpu_delay_ms+0x7c>
 848:	0000                	unimp
 84a:	0000                	unimp
 84c:	0000                	unimp
 84e:	0000                	unimp

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
 894:	34102773          	csrr	a4,mepc
 898:	34071073          	csrw	mscratch,a4
 89c:	342027f3          	csrr	a5,mcause
 8a0:	0807ca63          	bltz	a5,934 <__neorv32_rte_core+0xe4>
 8a4:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3ed78>
 8a8:	00300593          	li	a1,3
 8ac:	0036f693          	andi	a3,a3,3
 8b0:	00270613          	addi	a2,a4,2
 8b4:	00b69463          	bne	a3,a1,8bc <__neorv32_rte_core+0x6c>
 8b8:	00470613          	addi	a2,a4,4
 8bc:	34161073          	csrw	mepc,a2
 8c0:	00b00713          	li	a4,11
 8c4:	04f77c63          	bgeu	a4,a5,91c <__neorv32_rte_core+0xcc>
 8c8:	000017b7          	lui	a5,0x1
 8cc:	ac078793          	addi	a5,a5,-1344 # ac0 <__neorv32_rte_debug_exc_handler>
 8d0:	000780e7          	jalr	a5
 8d4:	03c12083          	lw	ra,60(sp)
 8d8:	03812283          	lw	t0,56(sp)
 8dc:	03412303          	lw	t1,52(sp)
 8e0:	03012383          	lw	t2,48(sp)
 8e4:	02c12503          	lw	a0,44(sp)
 8e8:	02812583          	lw	a1,40(sp)
 8ec:	02412603          	lw	a2,36(sp)
 8f0:	02012683          	lw	a3,32(sp)
 8f4:	01c12703          	lw	a4,28(sp)
 8f8:	01812783          	lw	a5,24(sp)
 8fc:	01412803          	lw	a6,20(sp)
 900:	01012883          	lw	a7,16(sp)
 904:	00c12e03          	lw	t3,12(sp)
 908:	00812e83          	lw	t4,8(sp)
 90c:	00412f03          	lw	t5,4(sp)
 910:	00012f83          	lw	t6,0(sp)
 914:	04010113          	addi	sp,sp,64
 918:	30200073          	mret
 91c:	00001737          	lui	a4,0x1
 920:	00279793          	slli	a5,a5,0x2
 924:	fe070713          	addi	a4,a4,-32 # fe0 <symbols.0+0x14>
 928:	00e787b3          	add	a5,a5,a4
 92c:	0007a783          	lw	a5,0(a5)
 930:	00078067          	jr	a5
 934:	80000737          	lui	a4,0x80000
 938:	ffd74713          	xori	a4,a4,-3
 93c:	00e787b3          	add	a5,a5,a4
 940:	01c00713          	li	a4,28
 944:	f8f762e3          	bltu	a4,a5,8c8 <__neorv32_rte_core+0x78>
 948:	00001737          	lui	a4,0x1
 94c:	00279793          	slli	a5,a5,0x2
 950:	01070713          	addi	a4,a4,16 # 1010 <symbols.0+0x44>
 954:	00e787b3          	add	a5,a5,a4
 958:	0007a783          	lw	a5,0(a5)
 95c:	00078067          	jr	a5
 960:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut>
 964:	f6dff06f          	j	8d0 <__neorv32_rte_core+0x80>
 968:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x4>
 96c:	f65ff06f          	j	8d0 <__neorv32_rte_core+0x80>
 970:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x8>
 974:	f5dff06f          	j	8d0 <__neorv32_rte_core+0x80>
 978:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0xc>
 97c:	f55ff06f          	j	8d0 <__neorv32_rte_core+0x80>
 980:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x10>
 984:	f4dff06f          	j	8d0 <__neorv32_rte_core+0x80>
 988:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x14>
 98c:	f45ff06f          	j	8d0 <__neorv32_rte_core+0x80>
 990:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x18>
 994:	f3dff06f          	j	8d0 <__neorv32_rte_core+0x80>
 998:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x1c>
 99c:	f35ff06f          	j	8d0 <__neorv32_rte_core+0x80>
 9a0:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x20>
 9a4:	f2dff06f          	j	8d0 <__neorv32_rte_core+0x80>
 9a8:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x24>
 9ac:	f25ff06f          	j	8d0 <__neorv32_rte_core+0x80>
 9b0:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x28>
 9b4:	f1dff06f          	j	8d0 <__neorv32_rte_core+0x80>
 9b8:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x2c>
 9bc:	f15ff06f          	j	8d0 <__neorv32_rte_core+0x80>
 9c0:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x30>
 9c4:	f0dff06f          	j	8d0 <__neorv32_rte_core+0x80>
 9c8:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x34>
 9cc:	f05ff06f          	j	8d0 <__neorv32_rte_core+0x80>
 9d0:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x38>
 9d4:	efdff06f          	j	8d0 <__neorv32_rte_core+0x80>
 9d8:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x3c>
 9dc:	ef5ff06f          	j	8d0 <__neorv32_rte_core+0x80>
 9e0:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x40>
 9e4:	eedff06f          	j	8d0 <__neorv32_rte_core+0x80>
 9e8:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x44>
 9ec:	ee5ff06f          	j	8d0 <__neorv32_rte_core+0x80>
 9f0:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x48>
 9f4:	eddff06f          	j	8d0 <__neorv32_rte_core+0x80>
 9f8:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x4c>
 9fc:	ed5ff06f          	j	8d0 <__neorv32_rte_core+0x80>
 a00:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x50>
 a04:	ecdff06f          	j	8d0 <__neorv32_rte_core+0x80>
 a08:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x54>
 a0c:	ec5ff06f          	j	8d0 <__neorv32_rte_core+0x80>
 a10:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x58>
 a14:	ebdff06f          	j	8d0 <__neorv32_rte_core+0x80>
 a18:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x5c>
 a1c:	eb5ff06f          	j	8d0 <__neorv32_rte_core+0x80>
 a20:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x60>
 a24:	eadff06f          	j	8d0 <__neorv32_rte_core+0x80>
 a28:	8741a783          	lw	a5,-1932(gp) # 80000074 <__neorv32_rte_vector_lut+0x64>
 a2c:	ea5ff06f          	j	8d0 <__neorv32_rte_core+0x80>
 a30:	8781a783          	lw	a5,-1928(gp) # 80000078 <__neorv32_rte_vector_lut+0x68>
 a34:	e9dff06f          	j	8d0 <__neorv32_rte_core+0x80>
 a38:	87c1a783          	lw	a5,-1924(gp) # 8000007c <__neorv32_rte_vector_lut+0x6c>
 a3c:	e95ff06f          	j	8d0 <__neorv32_rte_core+0x80>
 a40:	8801a783          	lw	a5,-1920(gp) # 80000080 <__neorv32_rte_vector_lut+0x70>
 a44:	e8dff06f          	j	8d0 <__neorv32_rte_core+0x80>
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
 a64:	08450513          	addi	a0,a0,132 # 1084 <symbols.0+0xb8>
 a68:	000014b7          	lui	s1,0x1
 a6c:	00812c23          	sw	s0,24(sp)
 a70:	01312623          	sw	s3,12(sp)
 a74:	00112e23          	sw	ra,28(sp)
 a78:	01c00413          	li	s0,28
 a7c:	af5ff0ef          	jal	ra,570 <neorv32_uart0_print>
 a80:	27848493          	addi	s1,s1,632 # 1278 <hex_symbols.0>
 a84:	ffc00993          	li	s3,-4
 a88:	008957b3          	srl	a5,s2,s0
 a8c:	00f7f793          	andi	a5,a5,15
 a90:	00f487b3          	add	a5,s1,a5
 a94:	0007c503          	lbu	a0,0(a5)
 a98:	ffc40413          	addi	s0,s0,-4
 a9c:	abdff0ef          	jal	ra,558 <neorv32_uart0_putc>
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
 ad0:	9cdff0ef          	jal	ra,49c <neorv32_uart0_available>
 ad4:	1c050863          	beqz	a0,ca4 <__neorv32_rte_debug_exc_handler+0x1e4>
 ad8:	00001537          	lui	a0,0x1
 adc:	08850513          	addi	a0,a0,136 # 1088 <symbols.0+0xbc>
 ae0:	a91ff0ef          	jal	ra,570 <neorv32_uart0_print>
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
 b0c:	24870713          	addi	a4,a4,584 # 1248 <symbols.0+0x27c>
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
 b40:	1e850513          	addi	a0,a0,488 # 11e8 <symbols.0+0x21c>
 b44:	a2dff0ef          	jal	ra,570 <neorv32_uart0_print>
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
 b70:	1d850513          	addi	a0,a0,472 # 11d8 <symbols.0+0x20c>
 b74:	9fdff0ef          	jal	ra,570 <neorv32_uart0_print>
 b78:	00048513          	mv	a0,s1
 b7c:	9ddff0ef          	jal	ra,558 <neorv32_uart0_putc>
 b80:	ffd47413          	andi	s0,s0,-3
 b84:	00500793          	li	a5,5
 b88:	06f40263          	beq	s0,a5,bec <__neorv32_rte_debug_exc_handler+0x12c>
 b8c:	00001537          	lui	a0,0x1
 b90:	22c50513          	addi	a0,a0,556 # 122c <symbols.0+0x260>
 b94:	9ddff0ef          	jal	ra,570 <neorv32_uart0_print>
 b98:	34002573          	csrr	a0,mscratch
 b9c:	eb5ff0ef          	jal	ra,a50 <__neorv32_rte_print_hex_word>
 ba0:	00001537          	lui	a0,0x1
 ba4:	23450513          	addi	a0,a0,564 # 1234 <symbols.0+0x268>
 ba8:	9c9ff0ef          	jal	ra,570 <neorv32_uart0_print>
 bac:	34302573          	csrr	a0,mtval
 bb0:	ea1ff0ef          	jal	ra,a50 <__neorv32_rte_print_hex_word>
 bb4:	00812403          	lw	s0,8(sp)
 bb8:	00c12083          	lw	ra,12(sp)
 bbc:	00412483          	lw	s1,4(sp)
 bc0:	00001537          	lui	a0,0x1
 bc4:	24050513          	addi	a0,a0,576 # 1240 <symbols.0+0x274>
 bc8:	01010113          	addi	sp,sp,16
 bcc:	9a5ff06f          	j	570 <neorv32_uart0_print>
 bd0:	00001537          	lui	a0,0x1
 bd4:	09050513          	addi	a0,a0,144 # 1090 <symbols.0+0xc4>
 bd8:	999ff0ef          	jal	ra,570 <neorv32_uart0_print>
 bdc:	fb1ff06f          	j	b8c <__neorv32_rte_debug_exc_handler+0xcc>
 be0:	00001537          	lui	a0,0x1
 be4:	0b050513          	addi	a0,a0,176 # 10b0 <symbols.0+0xe4>
 be8:	989ff0ef          	jal	ra,570 <neorv32_uart0_print>
 bec:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 bf0:	0a07d463          	bgez	a5,c98 <__neorv32_rte_debug_exc_handler+0x1d8>
 bf4:	0017f793          	andi	a5,a5,1
 bf8:	08078a63          	beqz	a5,c8c <__neorv32_rte_debug_exc_handler+0x1cc>
 bfc:	00001537          	lui	a0,0x1
 c00:	20050513          	addi	a0,a0,512 # 1200 <symbols.0+0x234>
 c04:	fd5ff06f          	j	bd8 <__neorv32_rte_debug_exc_handler+0x118>
 c08:	00001537          	lui	a0,0x1
 c0c:	0cc50513          	addi	a0,a0,204 # 10cc <symbols.0+0x100>
 c10:	fc9ff06f          	j	bd8 <__neorv32_rte_debug_exc_handler+0x118>
 c14:	00001537          	lui	a0,0x1
 c18:	0e050513          	addi	a0,a0,224 # 10e0 <symbols.0+0x114>
 c1c:	fbdff06f          	j	bd8 <__neorv32_rte_debug_exc_handler+0x118>
 c20:	00001537          	lui	a0,0x1
 c24:	0ec50513          	addi	a0,a0,236 # 10ec <symbols.0+0x120>
 c28:	fb1ff06f          	j	bd8 <__neorv32_rte_debug_exc_handler+0x118>
 c2c:	00001537          	lui	a0,0x1
 c30:	10450513          	addi	a0,a0,260 # 1104 <symbols.0+0x138>
 c34:	fb5ff06f          	j	be8 <__neorv32_rte_debug_exc_handler+0x128>
 c38:	00001537          	lui	a0,0x1
 c3c:	11850513          	addi	a0,a0,280 # 1118 <symbols.0+0x14c>
 c40:	f99ff06f          	j	bd8 <__neorv32_rte_debug_exc_handler+0x118>
 c44:	00001537          	lui	a0,0x1
 c48:	13450513          	addi	a0,a0,308 # 1134 <symbols.0+0x168>
 c4c:	f9dff06f          	j	be8 <__neorv32_rte_debug_exc_handler+0x128>
 c50:	00001537          	lui	a0,0x1
 c54:	14850513          	addi	a0,a0,328 # 1148 <symbols.0+0x17c>
 c58:	f81ff06f          	j	bd8 <__neorv32_rte_debug_exc_handler+0x118>
 c5c:	00001537          	lui	a0,0x1
 c60:	16850513          	addi	a0,a0,360 # 1168 <symbols.0+0x19c>
 c64:	f75ff06f          	j	bd8 <__neorv32_rte_debug_exc_handler+0x118>
 c68:	00001537          	lui	a0,0x1
 c6c:	18850513          	addi	a0,a0,392 # 1188 <symbols.0+0x1bc>
 c70:	f69ff06f          	j	bd8 <__neorv32_rte_debug_exc_handler+0x118>
 c74:	00001537          	lui	a0,0x1
 c78:	1a450513          	addi	a0,a0,420 # 11a4 <symbols.0+0x1d8>
 c7c:	f5dff06f          	j	bd8 <__neorv32_rte_debug_exc_handler+0x118>
 c80:	00001537          	lui	a0,0x1
 c84:	1bc50513          	addi	a0,a0,444 # 11bc <symbols.0+0x1f0>
 c88:	f51ff06f          	j	bd8 <__neorv32_rte_debug_exc_handler+0x118>
 c8c:	00001537          	lui	a0,0x1
 c90:	21050513          	addi	a0,a0,528 # 1210 <symbols.0+0x244>
 c94:	f45ff06f          	j	bd8 <__neorv32_rte_debug_exc_handler+0x118>
 c98:	00001537          	lui	a0,0x1
 c9c:	22050513          	addi	a0,a0,544 # 1220 <symbols.0+0x254>
 ca0:	f39ff06f          	j	bd8 <__neorv32_rte_debug_exc_handler+0x118>
 ca4:	00c12083          	lw	ra,12(sp)
 ca8:	00812403          	lw	s0,8(sp)
 cac:	00412483          	lw	s1,4(sp)
 cb0:	01010113          	addi	sp,sp,16
 cb4:	00008067          	ret

00000cb8 <neorv32_rte_exception_uninstall>:
 cb8:	01f00793          	li	a5,31
 cbc:	02a7e263          	bltu	a5,a0,ce0 <neorv32_rte_exception_uninstall+0x28>
 cc0:	81018793          	addi	a5,gp,-2032 # 80000010 <__neorv32_rte_vector_lut>
 cc4:	00251513          	slli	a0,a0,0x2
 cc8:	00a78533          	add	a0,a5,a0
 ccc:	000017b7          	lui	a5,0x1
 cd0:	ac078793          	addi	a5,a5,-1344 # ac0 <__neorv32_rte_debug_exc_handler>
 cd4:	00f52023          	sw	a5,0(a0)
 cd8:	00000513          	li	a0,0
 cdc:	00008067          	ret
 ce0:	00100513          	li	a0,1
 ce4:	00008067          	ret

00000ce8 <neorv32_rte_setup>:
 ce8:	ff010113          	addi	sp,sp,-16
 cec:	000017b7          	lui	a5,0x1
 cf0:	00112623          	sw	ra,12(sp)
 cf4:	00812423          	sw	s0,8(sp)
 cf8:	00912223          	sw	s1,4(sp)
 cfc:	85078793          	addi	a5,a5,-1968 # 850 <__neorv32_rte_core>
 d00:	30579073          	csrw	mtvec,a5
 d04:	00000413          	li	s0,0
 d08:	01d00493          	li	s1,29
 d0c:	00040513          	mv	a0,s0
 d10:	00140413          	addi	s0,s0,1
 d14:	0ff47413          	andi	s0,s0,255
 d18:	fa1ff0ef          	jal	ra,cb8 <neorv32_rte_exception_uninstall>
 d1c:	fe9418e3          	bne	s0,s1,d0c <neorv32_rte_setup+0x24>
 d20:	00c12083          	lw	ra,12(sp)
 d24:	00812403          	lw	s0,8(sp)
 d28:	00412483          	lw	s1,4(sp)
 d2c:	01010113          	addi	sp,sp,16
 d30:	00008067          	ret

00000d34 <neorv32_gpio_available>:
 d34:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 d38:	01055513          	srli	a0,a0,0x10
 d3c:	00157513          	andi	a0,a0,1
 d40:	00008067          	ret

00000d44 <neorv32_gpio_pin_set>:
 d44:	00100793          	li	a5,1
 d48:	01f00713          	li	a4,31
 d4c:	00a797b3          	sll	a5,a5,a0
 d50:	00a74a63          	blt	a4,a0,d64 <neorv32_gpio_pin_set+0x20>
 d54:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 d58:	00f767b3          	or	a5,a4,a5
 d5c:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 d60:	00008067          	ret
 d64:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 d68:	00f767b3          	or	a5,a4,a5
 d6c:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 d70:	00008067          	ret

00000d74 <neorv32_gpio_pin_clr>:
 d74:	00100793          	li	a5,1
 d78:	00a797b3          	sll	a5,a5,a0
 d7c:	01f00713          	li	a4,31
 d80:	fff7c793          	not	a5,a5
 d84:	00a74a63          	blt	a4,a0,d98 <neorv32_gpio_pin_clr+0x24>
 d88:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 d8c:	00f777b3          	and	a5,a4,a5
 d90:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 d94:	00008067          	ret
 d98:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 d9c:	00f777b3          	and	a5,a4,a5
 da0:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 da4:	00008067          	ret

00000da8 <neorv32_gpio_pin_get>:
 da8:	00050793          	mv	a5,a0
 dac:	01f00713          	li	a4,31
 db0:	00100513          	li	a0,1
 db4:	00f51533          	sll	a0,a0,a5
 db8:	00f74863          	blt	a4,a5,dc8 <neorv32_gpio_pin_get+0x20>
 dbc:	fc002783          	lw	a5,-64(zero) # ffffffc0 <__ctr0_io_space_begin+0x1c0>
 dc0:	00a7f533          	and	a0,a5,a0
 dc4:	00008067          	ret
 dc8:	fc402783          	lw	a5,-60(zero) # ffffffc4 <__ctr0_io_space_begin+0x1c4>
 dcc:	ff5ff06f          	j	dc0 <neorv32_gpio_pin_get+0x18>

00000dd0 <__mulsi3>:
 dd0:	00050613          	mv	a2,a0
 dd4:	00000513          	li	a0,0
 dd8:	0015f693          	andi	a3,a1,1
 ddc:	00068463          	beqz	a3,de4 <__mulsi3+0x14>
 de0:	00c50533          	add	a0,a0,a2
 de4:	0015d593          	srli	a1,a1,0x1
 de8:	00161613          	slli	a2,a2,0x1
 dec:	fe0596e3          	bnez	a1,dd8 <__mulsi3+0x8>
 df0:	00008067          	ret

00000df4 <__muldi3>:
 df4:	00050313          	mv	t1,a0
 df8:	ff010113          	addi	sp,sp,-16
 dfc:	00060513          	mv	a0,a2
 e00:	00068893          	mv	a7,a3
 e04:	00112623          	sw	ra,12(sp)
 e08:	00030613          	mv	a2,t1
 e0c:	00050693          	mv	a3,a0
 e10:	00000713          	li	a4,0
 e14:	00000793          	li	a5,0
 e18:	00000813          	li	a6,0
 e1c:	0016fe13          	andi	t3,a3,1
 e20:	00171e93          	slli	t4,a4,0x1
 e24:	000e0c63          	beqz	t3,e3c <__muldi3+0x48>
 e28:	01060e33          	add	t3,a2,a6
 e2c:	010e3833          	sltu	a6,t3,a6
 e30:	00e787b3          	add	a5,a5,a4
 e34:	00f807b3          	add	a5,a6,a5
 e38:	000e0813          	mv	a6,t3
 e3c:	01f65713          	srli	a4,a2,0x1f
 e40:	0016d693          	srli	a3,a3,0x1
 e44:	00eee733          	or	a4,t4,a4
 e48:	00161613          	slli	a2,a2,0x1
 e4c:	fc0698e3          	bnez	a3,e1c <__muldi3+0x28>
 e50:	00058663          	beqz	a1,e5c <__muldi3+0x68>
 e54:	f7dff0ef          	jal	ra,dd0 <__mulsi3>
 e58:	00a787b3          	add	a5,a5,a0
 e5c:	00088a63          	beqz	a7,e70 <__muldi3+0x7c>
 e60:	00030513          	mv	a0,t1
 e64:	00088593          	mv	a1,a7
 e68:	f69ff0ef          	jal	ra,dd0 <__mulsi3>
 e6c:	00f507b3          	add	a5,a0,a5
 e70:	00c12083          	lw	ra,12(sp)
 e74:	00080513          	mv	a0,a6
 e78:	00078593          	mv	a1,a5
 e7c:	01010113          	addi	sp,sp,16
 e80:	00008067          	ret

00000e84 <__divsi3>:
 e84:	06054063          	bltz	a0,ee4 <__umodsi3+0x10>
 e88:	0605c663          	bltz	a1,ef4 <__umodsi3+0x20>

00000e8c <__udivsi3>:
 e8c:	00058613          	mv	a2,a1
 e90:	00050593          	mv	a1,a0
 e94:	fff00513          	li	a0,-1
 e98:	02060c63          	beqz	a2,ed0 <__udivsi3+0x44>
 e9c:	00100693          	li	a3,1
 ea0:	00b67a63          	bgeu	a2,a1,eb4 <__udivsi3+0x28>
 ea4:	00c05863          	blez	a2,eb4 <__udivsi3+0x28>
 ea8:	00161613          	slli	a2,a2,0x1
 eac:	00169693          	slli	a3,a3,0x1
 eb0:	feb66ae3          	bltu	a2,a1,ea4 <__udivsi3+0x18>
 eb4:	00000513          	li	a0,0
 eb8:	00c5e663          	bltu	a1,a2,ec4 <__udivsi3+0x38>
 ebc:	40c585b3          	sub	a1,a1,a2
 ec0:	00d56533          	or	a0,a0,a3
 ec4:	0016d693          	srli	a3,a3,0x1
 ec8:	00165613          	srli	a2,a2,0x1
 ecc:	fe0696e3          	bnez	a3,eb8 <__udivsi3+0x2c>
 ed0:	00008067          	ret

00000ed4 <__umodsi3>:
 ed4:	00008293          	mv	t0,ra
 ed8:	fb5ff0ef          	jal	ra,e8c <__udivsi3>
 edc:	00058513          	mv	a0,a1
 ee0:	00028067          	jr	t0
 ee4:	40a00533          	neg	a0,a0
 ee8:	00b04863          	bgtz	a1,ef8 <__umodsi3+0x24>
 eec:	40b005b3          	neg	a1,a1
 ef0:	f9dff06f          	j	e8c <__udivsi3>
 ef4:	40b005b3          	neg	a1,a1
 ef8:	00008293          	mv	t0,ra
 efc:	f91ff0ef          	jal	ra,e8c <__udivsi3>
 f00:	40a00533          	neg	a0,a0
 f04:	00028067          	jr	t0

00000f08 <__modsi3>:
 f08:	00008293          	mv	t0,ra
 f0c:	0005ca63          	bltz	a1,f20 <__modsi3+0x18>
 f10:	00054c63          	bltz	a0,f28 <__modsi3+0x20>
 f14:	f79ff0ef          	jal	ra,e8c <__udivsi3>
 f18:	00058513          	mv	a0,a1
 f1c:	00028067          	jr	t0
 f20:	40b005b3          	neg	a1,a1
 f24:	fe0558e3          	bgez	a0,f14 <__modsi3+0xc>
 f28:	40a00533          	neg	a0,a0
 f2c:	f61ff0ef          	jal	ra,e8c <__udivsi3>
 f30:	40b00533          	neg	a0,a1
 f34:	00028067          	jr	t0
