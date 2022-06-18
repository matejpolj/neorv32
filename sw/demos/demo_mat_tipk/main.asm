
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
  dc:	1e458593          	addi	a1,a1,484 # 12bc <__crt0_copy_data_src_begin>
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
 188:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3844>
 18c:	00112e23          	sw	ra,28(sp)
 190:	00812c23          	sw	s0,24(sp)
 194:	00912a23          	sw	s1,20(sp)
 198:	01212823          	sw	s2,16(sp)
 19c:	374000ef          	jal	ra,510 <neorv32_uart0_setup>
 1a0:	3f1000ef          	jal	ra,d90 <neorv32_gpio_available>
 1a4:	08050663          	beqz	a0,230 <main+0xb8>
 1a8:	38d000ef          	jal	ra,d34 <neorv32_rte_setup>
 1ac:	00001537          	lui	a0,0x1
 1b0:	fb850513          	addi	a0,a0,-72 # fb8 <__etext+0x24>
 1b4:	420000ef          	jal	ra,5d4 <neorv32_uart0_print>
 1b8:	800007b7          	lui	a5,0x80000
 1bc:	00078793          	mv	a5,a5
 1c0:	0007a703          	lw	a4,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 1c4:	0047a783          	lw	a5,4(a5)
 1c8:	01d00493          	li	s1,29
 1cc:	00e12023          	sw	a4,0(sp)
 1d0:	00f12223          	sw	a5,4(sp)
 1d4:	80818793          	addi	a5,gp,-2040 # 80000008 <__DATA_BEGIN__+0x8>
 1d8:	0007a703          	lw	a4,0(a5)
 1dc:	0047a783          	lw	a5,4(a5)
 1e0:	00001937          	lui	s2,0x1
 1e4:	00e12423          	sw	a4,8(sp)
 1e8:	00f12623          	sw	a5,12(sp)
 1ec:	00810593          	addi	a1,sp,8
 1f0:	00010513          	mv	a0,sp
 1f4:	064000ef          	jal	ra,258 <getKeyPress>
 1f8:	00050413          	mv	s0,a0
 1fc:	00a00513          	li	a0,10
 200:	5ec000ef          	jal	ra,7ec <neorv32_cpu_delay_ms>
 204:	00810593          	addi	a1,sp,8
 208:	00010513          	mv	a0,sp
 20c:	04c000ef          	jal	ra,258 <getKeyPress>
 210:	0084ea63          	bltu	s1,s0,224 <main+0xac>
 214:	00a41863          	bne	s0,a0,224 <main+0xac>
 218:	00040593          	mv	a1,s0
 21c:	fd490513          	addi	a0,s2,-44 # fd4 <__etext+0x40>
 220:	40c000ef          	jal	ra,62c <neorv32_uart0_printf>
 224:	03200513          	li	a0,50
 228:	5c4000ef          	jal	ra,7ec <neorv32_cpu_delay_ms>
 22c:	fc1ff06f          	j	1ec <main+0x74>
 230:	00001537          	lui	a0,0x1
 234:	f9450513          	addi	a0,a0,-108 # f94 <__etext>
 238:	39c000ef          	jal	ra,5d4 <neorv32_uart0_print>
 23c:	01c12083          	lw	ra,28(sp)
 240:	01812403          	lw	s0,24(sp)
 244:	01412483          	lw	s1,20(sp)
 248:	01012903          	lw	s2,16(sp)
 24c:	00100513          	li	a0,1
 250:	02010113          	addi	sp,sp,32
 254:	00008067          	ret

00000258 <getKeyPress>:
 258:	fe010113          	addi	sp,sp,-32
 25c:	00912a23          	sw	s1,20(sp)
 260:	01312623          	sw	s3,12(sp)
 264:	00112e23          	sw	ra,28(sp)
 268:	00812c23          	sw	s0,24(sp)
 26c:	01212823          	sw	s2,16(sp)
 270:	01412423          	sw	s4,8(sp)
 274:	01512223          	sw	s5,4(sp)
 278:	00050993          	mv	s3,a0
 27c:	00058493          	mv	s1,a1
 280:	311000ef          	jal	ra,d90 <neorv32_gpio_available>
 284:	08050a63          	beqz	a0,318 <getKeyPress+0xc0>
 288:	00648493          	addi	s1,s1,6
 28c:	00300413          	li	s0,3
 290:	00400a93          	li	s5,4
 294:	fff00a13          	li	s4,-1
 298:	0004d503          	lhu	a0,0(s1)
 29c:	00000913          	li	s2,0
 2a0:	301000ef          	jal	ra,da0 <neorv32_gpio_pin_set>
 2a4:	00191793          	slli	a5,s2,0x1
 2a8:	00f987b3          	add	a5,s3,a5
 2ac:	0007d503          	lhu	a0,0(a5)
 2b0:	070000ef          	jal	ra,320 <getButtonState>
 2b4:	04051063          	bnez	a0,2f4 <getKeyPress+0x9c>
 2b8:	0004d503          	lhu	a0,0(s1)
 2bc:	315000ef          	jal	ra,dd0 <neorv32_gpio_pin_clr>
 2c0:	00241513          	slli	a0,s0,0x2
 2c4:	01250533          	add	a0,a0,s2
 2c8:	01051513          	slli	a0,a0,0x10
 2cc:	01055513          	srli	a0,a0,0x10
 2d0:	01c12083          	lw	ra,28(sp)
 2d4:	01812403          	lw	s0,24(sp)
 2d8:	01412483          	lw	s1,20(sp)
 2dc:	01012903          	lw	s2,16(sp)
 2e0:	00c12983          	lw	s3,12(sp)
 2e4:	00812a03          	lw	s4,8(sp)
 2e8:	00412a83          	lw	s5,4(sp)
 2ec:	02010113          	addi	sp,sp,32
 2f0:	00008067          	ret
 2f4:	00190913          	addi	s2,s2,1
 2f8:	fb5916e3          	bne	s2,s5,2a4 <getKeyPress+0x4c>
 2fc:	0004d503          	lhu	a0,0(s1)
 300:	fff40413          	addi	s0,s0,-1
 304:	ffe48493          	addi	s1,s1,-2
 308:	2c9000ef          	jal	ra,dd0 <neorv32_gpio_pin_clr>
 30c:	f94416e3          	bne	s0,s4,298 <getKeyPress+0x40>
 310:	01f00513          	li	a0,31
 314:	fbdff06f          	j	2d0 <getKeyPress+0x78>
 318:	00100513          	li	a0,1
 31c:	fb5ff06f          	j	2d0 <getKeyPress+0x78>

00000320 <getButtonState>:
 320:	ff010113          	addi	sp,sp,-16
 324:	00112623          	sw	ra,12(sp)
 328:	00812423          	sw	s0,8(sp)
 32c:	00912223          	sw	s1,4(sp)
 330:	00050493          	mv	s1,a0
 334:	2d1000ef          	jal	ra,e04 <neorv32_gpio_pin_get>
 338:	00050413          	mv	s0,a0
 33c:	00500513          	li	a0,5
 340:	4ac000ef          	jal	ra,7ec <neorv32_cpu_delay_ms>
 344:	00048513          	mv	a0,s1
 348:	2bd000ef          	jal	ra,e04 <neorv32_gpio_pin_get>
 34c:	00a477b3          	and	a5,s0,a0
 350:	02079263          	bnez	a5,374 <getButtonState+0x54>
 354:	00a46533          	or	a0,s0,a0
 358:	00a03533          	snez	a0,a0
 35c:	00150513          	addi	a0,a0,1
 360:	00c12083          	lw	ra,12(sp)
 364:	00812403          	lw	s0,8(sp)
 368:	00412483          	lw	s1,4(sp)
 36c:	01010113          	addi	sp,sp,16
 370:	00008067          	ret
 374:	00000513          	li	a0,0
 378:	fe9ff06f          	j	360 <getButtonState+0x40>

0000037c <neorv32_mtime_get_time>:
 37c:	f9402583          	lw	a1,-108(zero) # ffffff94 <__ctr0_io_space_begin+0x194>
 380:	f9002503          	lw	a0,-112(zero) # ffffff90 <__ctr0_io_space_begin+0x190>
 384:	f9402783          	lw	a5,-108(zero) # ffffff94 <__ctr0_io_space_begin+0x194>
 388:	fef59ae3          	bne	a1,a5,37c <neorv32_mtime_get_time>
 38c:	00008067          	ret

00000390 <__neorv32_uart_itoa>:
 390:	fd010113          	addi	sp,sp,-48
 394:	02812423          	sw	s0,40(sp)
 398:	02912223          	sw	s1,36(sp)
 39c:	03212023          	sw	s2,32(sp)
 3a0:	01312e23          	sw	s3,28(sp)
 3a4:	01412c23          	sw	s4,24(sp)
 3a8:	02112623          	sw	ra,44(sp)
 3ac:	01512a23          	sw	s5,20(sp)
 3b0:	00001a37          	lui	s4,0x1
 3b4:	00050493          	mv	s1,a0
 3b8:	00058413          	mv	s0,a1
 3bc:	00058523          	sb	zero,10(a1)
 3c0:	00000993          	li	s3,0
 3c4:	00410913          	addi	s2,sp,4
 3c8:	ff0a0a13          	addi	s4,s4,-16 # ff0 <numbers.1>
 3cc:	00a00593          	li	a1,10
 3d0:	00048513          	mv	a0,s1
 3d4:	35d000ef          	jal	ra,f30 <__umodsi3>
 3d8:	00aa0533          	add	a0,s4,a0
 3dc:	00054783          	lbu	a5,0(a0)
 3e0:	01390ab3          	add	s5,s2,s3
 3e4:	00048513          	mv	a0,s1
 3e8:	00fa8023          	sb	a5,0(s5)
 3ec:	00a00593          	li	a1,10
 3f0:	2f9000ef          	jal	ra,ee8 <__udivsi3>
 3f4:	00198993          	addi	s3,s3,1
 3f8:	00a00793          	li	a5,10
 3fc:	00050493          	mv	s1,a0
 400:	fcf996e3          	bne	s3,a5,3cc <__neorv32_uart_itoa+0x3c>
 404:	00090693          	mv	a3,s2
 408:	00900713          	li	a4,9
 40c:	03000613          	li	a2,48
 410:	0096c583          	lbu	a1,9(a3)
 414:	00070793          	mv	a5,a4
 418:	fff70713          	addi	a4,a4,-1
 41c:	01071713          	slli	a4,a4,0x10
 420:	01075713          	srli	a4,a4,0x10
 424:	00c59a63          	bne	a1,a2,438 <__neorv32_uart_itoa+0xa8>
 428:	000684a3          	sb	zero,9(a3)
 42c:	fff68693          	addi	a3,a3,-1
 430:	fe0710e3          	bnez	a4,410 <__neorv32_uart_itoa+0x80>
 434:	00000793          	li	a5,0
 438:	00f907b3          	add	a5,s2,a5
 43c:	00000593          	li	a1,0
 440:	0007c703          	lbu	a4,0(a5)
 444:	00070c63          	beqz	a4,45c <__neorv32_uart_itoa+0xcc>
 448:	00158693          	addi	a3,a1,1
 44c:	00b405b3          	add	a1,s0,a1
 450:	00e58023          	sb	a4,0(a1)
 454:	01069593          	slli	a1,a3,0x10
 458:	0105d593          	srli	a1,a1,0x10
 45c:	fff78713          	addi	a4,a5,-1
 460:	02f91863          	bne	s2,a5,490 <__neorv32_uart_itoa+0x100>
 464:	00b40433          	add	s0,s0,a1
 468:	00040023          	sb	zero,0(s0)
 46c:	02c12083          	lw	ra,44(sp)
 470:	02812403          	lw	s0,40(sp)
 474:	02412483          	lw	s1,36(sp)
 478:	02012903          	lw	s2,32(sp)
 47c:	01c12983          	lw	s3,28(sp)
 480:	01812a03          	lw	s4,24(sp)
 484:	01412a83          	lw	s5,20(sp)
 488:	03010113          	addi	sp,sp,48
 48c:	00008067          	ret
 490:	00070793          	mv	a5,a4
 494:	fadff06f          	j	440 <__neorv32_uart_itoa+0xb0>

00000498 <__neorv32_uart_tohex>:
 498:	00001637          	lui	a2,0x1
 49c:	00758693          	addi	a3,a1,7
 4a0:	00000713          	li	a4,0
 4a4:	ffc60613          	addi	a2,a2,-4 # ffc <symbols.0>
 4a8:	02000813          	li	a6,32
 4ac:	00e557b3          	srl	a5,a0,a4
 4b0:	00f7f793          	andi	a5,a5,15
 4b4:	00f607b3          	add	a5,a2,a5
 4b8:	0007c783          	lbu	a5,0(a5)
 4bc:	00470713          	addi	a4,a4,4
 4c0:	fff68693          	addi	a3,a3,-1
 4c4:	00f680a3          	sb	a5,1(a3)
 4c8:	ff0712e3          	bne	a4,a6,4ac <__neorv32_uart_tohex+0x14>
 4cc:	00058423          	sb	zero,8(a1)
 4d0:	00008067          	ret

000004d4 <__neorv32_uart_touppercase.constprop.0>:
 4d4:	00b50693          	addi	a3,a0,11
 4d8:	01900613          	li	a2,25
 4dc:	00054783          	lbu	a5,0(a0)
 4e0:	f9f78713          	addi	a4,a5,-97
 4e4:	0ff77713          	andi	a4,a4,255
 4e8:	00e66663          	bltu	a2,a4,4f4 <__neorv32_uart_touppercase.constprop.0+0x20>
 4ec:	fe078793          	addi	a5,a5,-32
 4f0:	00f50023          	sb	a5,0(a0)
 4f4:	00150513          	addi	a0,a0,1
 4f8:	fed512e3          	bne	a0,a3,4dc <__neorv32_uart_touppercase.constprop.0+0x8>
 4fc:	00008067          	ret

00000500 <neorv32_uart0_available>:
 500:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 504:	01255513          	srli	a0,a0,0x12
 508:	00157513          	andi	a0,a0,1
 50c:	00008067          	ret

00000510 <neorv32_uart0_setup>:
 510:	ff010113          	addi	sp,sp,-16
 514:	00812423          	sw	s0,8(sp)
 518:	00912223          	sw	s1,4(sp)
 51c:	00112623          	sw	ra,12(sp)
 520:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 524:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 528:	00058413          	mv	s0,a1
 52c:	00151593          	slli	a1,a0,0x1
 530:	00078513          	mv	a0,a5
 534:	00060493          	mv	s1,a2
 538:	1b1000ef          	jal	ra,ee8 <__udivsi3>
 53c:	01051513          	slli	a0,a0,0x10
 540:	000017b7          	lui	a5,0x1
 544:	01055513          	srli	a0,a0,0x10
 548:	00000713          	li	a4,0
 54c:	ffe78793          	addi	a5,a5,-2 # ffe <symbols.0+0x2>
 550:	04a7e463          	bltu	a5,a0,598 <neorv32_uart0_setup+0x88>
 554:	0034f793          	andi	a5,s1,3
 558:	00347413          	andi	s0,s0,3
 55c:	fff50513          	addi	a0,a0,-1
 560:	01479793          	slli	a5,a5,0x14
 564:	01641413          	slli	s0,s0,0x16
 568:	00f567b3          	or	a5,a0,a5
 56c:	0087e7b3          	or	a5,a5,s0
 570:	01871713          	slli	a4,a4,0x18
 574:	00c12083          	lw	ra,12(sp)
 578:	00812403          	lw	s0,8(sp)
 57c:	00e7e7b3          	or	a5,a5,a4
 580:	10000737          	lui	a4,0x10000
 584:	00e7e7b3          	or	a5,a5,a4
 588:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 58c:	00412483          	lw	s1,4(sp)
 590:	01010113          	addi	sp,sp,16
 594:	00008067          	ret
 598:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffed42>
 59c:	0fd6f693          	andi	a3,a3,253
 5a0:	00069a63          	bnez	a3,5b4 <neorv32_uart0_setup+0xa4>
 5a4:	00355513          	srli	a0,a0,0x3
 5a8:	00170713          	addi	a4,a4,1
 5ac:	0ff77713          	andi	a4,a4,255
 5b0:	fa1ff06f          	j	550 <neorv32_uart0_setup+0x40>
 5b4:	00155513          	srli	a0,a0,0x1
 5b8:	ff1ff06f          	j	5a8 <neorv32_uart0_setup+0x98>

000005bc <neorv32_uart0_putc>:
 5bc:	00040737          	lui	a4,0x40
 5c0:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 5c4:	00e7f7b3          	and	a5,a5,a4
 5c8:	fe079ce3          	bnez	a5,5c0 <neorv32_uart0_putc+0x4>
 5cc:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 5d0:	00008067          	ret

000005d4 <neorv32_uart0_print>:
 5d4:	ff010113          	addi	sp,sp,-16
 5d8:	00812423          	sw	s0,8(sp)
 5dc:	01212023          	sw	s2,0(sp)
 5e0:	00112623          	sw	ra,12(sp)
 5e4:	00912223          	sw	s1,4(sp)
 5e8:	00050413          	mv	s0,a0
 5ec:	00a00913          	li	s2,10
 5f0:	00044483          	lbu	s1,0(s0)
 5f4:	00140413          	addi	s0,s0,1
 5f8:	00049e63          	bnez	s1,614 <neorv32_uart0_print+0x40>
 5fc:	00c12083          	lw	ra,12(sp)
 600:	00812403          	lw	s0,8(sp)
 604:	00412483          	lw	s1,4(sp)
 608:	00012903          	lw	s2,0(sp)
 60c:	01010113          	addi	sp,sp,16
 610:	00008067          	ret
 614:	01249663          	bne	s1,s2,620 <neorv32_uart0_print+0x4c>
 618:	00d00513          	li	a0,13
 61c:	fa1ff0ef          	jal	ra,5bc <neorv32_uart0_putc>
 620:	00048513          	mv	a0,s1
 624:	f99ff0ef          	jal	ra,5bc <neorv32_uart0_putc>
 628:	fc9ff06f          	j	5f0 <neorv32_uart0_print+0x1c>

0000062c <neorv32_uart0_printf>:
 62c:	fa010113          	addi	sp,sp,-96
 630:	04f12a23          	sw	a5,84(sp)
 634:	04410793          	addi	a5,sp,68
 638:	02812c23          	sw	s0,56(sp)
 63c:	03212823          	sw	s2,48(sp)
 640:	03312623          	sw	s3,44(sp)
 644:	03512223          	sw	s5,36(sp)
 648:	03612023          	sw	s6,32(sp)
 64c:	01712e23          	sw	s7,28(sp)
 650:	01812c23          	sw	s8,24(sp)
 654:	01912a23          	sw	s9,20(sp)
 658:	02112e23          	sw	ra,60(sp)
 65c:	02912a23          	sw	s1,52(sp)
 660:	03412423          	sw	s4,40(sp)
 664:	00050413          	mv	s0,a0
 668:	04b12223          	sw	a1,68(sp)
 66c:	04c12423          	sw	a2,72(sp)
 670:	04d12623          	sw	a3,76(sp)
 674:	04e12823          	sw	a4,80(sp)
 678:	05012c23          	sw	a6,88(sp)
 67c:	05112e23          	sw	a7,92(sp)
 680:	00f12023          	sw	a5,0(sp)
 684:	02500a93          	li	s5,37
 688:	00a00b13          	li	s6,10
 68c:	07000913          	li	s2,112
 690:	05800993          	li	s3,88
 694:	07500b93          	li	s7,117
 698:	07800c13          	li	s8,120
 69c:	07300c93          	li	s9,115
 6a0:	00044483          	lbu	s1,0(s0)
 6a4:	02049c63          	bnez	s1,6dc <neorv32_uart0_printf+0xb0>
 6a8:	03c12083          	lw	ra,60(sp)
 6ac:	03812403          	lw	s0,56(sp)
 6b0:	03412483          	lw	s1,52(sp)
 6b4:	03012903          	lw	s2,48(sp)
 6b8:	02c12983          	lw	s3,44(sp)
 6bc:	02812a03          	lw	s4,40(sp)
 6c0:	02412a83          	lw	s5,36(sp)
 6c4:	02012b03          	lw	s6,32(sp)
 6c8:	01c12b83          	lw	s7,28(sp)
 6cc:	01812c03          	lw	s8,24(sp)
 6d0:	01412c83          	lw	s9,20(sp)
 6d4:	06010113          	addi	sp,sp,96
 6d8:	00008067          	ret
 6dc:	0f549c63          	bne	s1,s5,7d4 <neorv32_uart0_printf+0x1a8>
 6e0:	00240a13          	addi	s4,s0,2
 6e4:	00144403          	lbu	s0,1(s0)
 6e8:	0d240263          	beq	s0,s2,7ac <neorv32_uart0_printf+0x180>
 6ec:	06896463          	bltu	s2,s0,754 <neorv32_uart0_printf+0x128>
 6f0:	06300793          	li	a5,99
 6f4:	08f40463          	beq	s0,a5,77c <neorv32_uart0_printf+0x150>
 6f8:	0087ec63          	bltu	a5,s0,710 <neorv32_uart0_printf+0xe4>
 6fc:	0b340863          	beq	s0,s3,7ac <neorv32_uart0_printf+0x180>
 700:	02500513          	li	a0,37
 704:	eb9ff0ef          	jal	ra,5bc <neorv32_uart0_putc>
 708:	00040513          	mv	a0,s0
 70c:	0800006f          	j	78c <neorv32_uart0_printf+0x160>
 710:	06400793          	li	a5,100
 714:	00f40663          	beq	s0,a5,720 <neorv32_uart0_printf+0xf4>
 718:	06900793          	li	a5,105
 71c:	fef412e3          	bne	s0,a5,700 <neorv32_uart0_printf+0xd4>
 720:	00012783          	lw	a5,0(sp)
 724:	0007a403          	lw	s0,0(a5)
 728:	00478713          	addi	a4,a5,4
 72c:	00e12023          	sw	a4,0(sp)
 730:	00045863          	bgez	s0,740 <neorv32_uart0_printf+0x114>
 734:	02d00513          	li	a0,45
 738:	40800433          	neg	s0,s0
 73c:	e81ff0ef          	jal	ra,5bc <neorv32_uart0_putc>
 740:	00410593          	addi	a1,sp,4
 744:	00040513          	mv	a0,s0
 748:	c49ff0ef          	jal	ra,390 <__neorv32_uart_itoa>
 74c:	00410513          	addi	a0,sp,4
 750:	0200006f          	j	770 <neorv32_uart0_printf+0x144>
 754:	05740063          	beq	s0,s7,794 <neorv32_uart0_printf+0x168>
 758:	05840a63          	beq	s0,s8,7ac <neorv32_uart0_printf+0x180>
 75c:	fb9412e3          	bne	s0,s9,700 <neorv32_uart0_printf+0xd4>
 760:	00012783          	lw	a5,0(sp)
 764:	0007a503          	lw	a0,0(a5)
 768:	00478713          	addi	a4,a5,4
 76c:	00e12023          	sw	a4,0(sp)
 770:	e65ff0ef          	jal	ra,5d4 <neorv32_uart0_print>
 774:	000a0413          	mv	s0,s4
 778:	f29ff06f          	j	6a0 <neorv32_uart0_printf+0x74>
 77c:	00012783          	lw	a5,0(sp)
 780:	0007c503          	lbu	a0,0(a5)
 784:	00478713          	addi	a4,a5,4
 788:	00e12023          	sw	a4,0(sp)
 78c:	e31ff0ef          	jal	ra,5bc <neorv32_uart0_putc>
 790:	fe5ff06f          	j	774 <neorv32_uart0_printf+0x148>
 794:	00012783          	lw	a5,0(sp)
 798:	00410593          	addi	a1,sp,4
 79c:	00478713          	addi	a4,a5,4
 7a0:	0007a503          	lw	a0,0(a5)
 7a4:	00e12023          	sw	a4,0(sp)
 7a8:	fa1ff06f          	j	748 <neorv32_uart0_printf+0x11c>
 7ac:	00012783          	lw	a5,0(sp)
 7b0:	00410593          	addi	a1,sp,4
 7b4:	0007a503          	lw	a0,0(a5)
 7b8:	00478713          	addi	a4,a5,4
 7bc:	00e12023          	sw	a4,0(sp)
 7c0:	cd9ff0ef          	jal	ra,498 <__neorv32_uart_tohex>
 7c4:	f93414e3          	bne	s0,s3,74c <neorv32_uart0_printf+0x120>
 7c8:	00410513          	addi	a0,sp,4
 7cc:	d09ff0ef          	jal	ra,4d4 <__neorv32_uart_touppercase.constprop.0>
 7d0:	f7dff06f          	j	74c <neorv32_uart0_printf+0x120>
 7d4:	01649663          	bne	s1,s6,7e0 <neorv32_uart0_printf+0x1b4>
 7d8:	00d00513          	li	a0,13
 7dc:	de1ff0ef          	jal	ra,5bc <neorv32_uart0_putc>
 7e0:	00140a13          	addi	s4,s0,1
 7e4:	00048513          	mv	a0,s1
 7e8:	fa5ff06f          	j	78c <neorv32_uart0_printf+0x160>

000007ec <neorv32_cpu_delay_ms>:
 7ec:	fe010113          	addi	sp,sp,-32
 7f0:	00a12623          	sw	a0,12(sp)
 7f4:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 7f8:	3e800593          	li	a1,1000
 7fc:	00112e23          	sw	ra,28(sp)
 800:	00812c23          	sw	s0,24(sp)
 804:	00912a23          	sw	s1,20(sp)
 808:	6e0000ef          	jal	ra,ee8 <__udivsi3>
 80c:	00c12603          	lw	a2,12(sp)
 810:	00000693          	li	a3,0
 814:	00000593          	li	a1,0
 818:	638000ef          	jal	ra,e50 <__muldi3>
 81c:	fe802783          	lw	a5,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 820:	00020737          	lui	a4,0x20
 824:	00050413          	mv	s0,a0
 828:	00e7f7b3          	and	a5,a5,a4
 82c:	00058493          	mv	s1,a1
 830:	02078e63          	beqz	a5,86c <neorv32_cpu_delay_ms+0x80>
 834:	b49ff0ef          	jal	ra,37c <neorv32_mtime_get_time>
 838:	00850433          	add	s0,a0,s0
 83c:	00a43533          	sltu	a0,s0,a0
 840:	009584b3          	add	s1,a1,s1
 844:	009504b3          	add	s1,a0,s1
 848:	b35ff0ef          	jal	ra,37c <neorv32_mtime_get_time>
 84c:	fe95eee3          	bltu	a1,s1,848 <neorv32_cpu_delay_ms+0x5c>
 850:	00b49463          	bne	s1,a1,858 <neorv32_cpu_delay_ms+0x6c>
 854:	fe856ae3          	bltu	a0,s0,848 <neorv32_cpu_delay_ms+0x5c>
 858:	01c12083          	lw	ra,28(sp)
 85c:	01812403          	lw	s0,24(sp)
 860:	01412483          	lw	s1,20(sp)
 864:	02010113          	addi	sp,sp,32
 868:	00008067          	ret
 86c:	01c59493          	slli	s1,a1,0x1c
 870:	00455513          	srli	a0,a0,0x4
 874:	00a4e533          	or	a0,s1,a0

00000878 <__neorv32_cpu_delay_ms_start>:
 878:	00050a63          	beqz	a0,88c <__neorv32_cpu_delay_ms_end>
 87c:	00050863          	beqz	a0,88c <__neorv32_cpu_delay_ms_end>
 880:	fff50513          	addi	a0,a0,-1
 884:	00000013          	nop
 888:	ff1ff06f          	j	878 <__neorv32_cpu_delay_ms_start>

0000088c <__neorv32_cpu_delay_ms_end>:
 88c:	fcdff06f          	j	858 <neorv32_cpu_delay_ms+0x6c>

00000890 <__neorv32_rte_core>:
 890:	fc010113          	addi	sp,sp,-64
 894:	02112e23          	sw	ra,60(sp)
 898:	02512c23          	sw	t0,56(sp)
 89c:	02612a23          	sw	t1,52(sp)
 8a0:	02712823          	sw	t2,48(sp)
 8a4:	02a12623          	sw	a0,44(sp)
 8a8:	02b12423          	sw	a1,40(sp)
 8ac:	02c12223          	sw	a2,36(sp)
 8b0:	02d12023          	sw	a3,32(sp)
 8b4:	00e12e23          	sw	a4,28(sp)
 8b8:	00f12c23          	sw	a5,24(sp)
 8bc:	01012a23          	sw	a6,20(sp)
 8c0:	01112823          	sw	a7,16(sp)
 8c4:	01c12623          	sw	t3,12(sp)
 8c8:	01d12423          	sw	t4,8(sp)
 8cc:	01e12223          	sw	t5,4(sp)
 8d0:	01f12023          	sw	t6,0(sp)
 8d4:	341026f3          	csrr	a3,mepc
 8d8:	34069073          	csrw	mscratch,a3
 8dc:	342027f3          	csrr	a5,mcause
 8e0:	0607c063          	bltz	a5,940 <__neorv32_rte_core+0xb0>
 8e4:	0006d703          	lhu	a4,0(a3)
 8e8:	01071713          	slli	a4,a4,0x10
 8ec:	01075713          	srli	a4,a4,0x10
 8f0:	00468593          	addi	a1,a3,4
 8f4:	30102673          	csrr	a2,misa
 8f8:	00467613          	andi	a2,a2,4
 8fc:	00060a63          	beqz	a2,910 <__neorv32_rte_core+0x80>
 900:	00377713          	andi	a4,a4,3
 904:	00300613          	li	a2,3
 908:	00c70463          	beq	a4,a2,910 <__neorv32_rte_core+0x80>
 90c:	00268593          	addi	a1,a3,2
 910:	34159073          	csrw	mepc,a1
 914:	00b00713          	li	a4,11
 918:	00f77863          	bgeu	a4,a5,928 <__neorv32_rte_core+0x98>
 91c:	000017b7          	lui	a5,0x1
 920:	b0c78793          	addi	a5,a5,-1268 # b0c <__neorv32_rte_debug_exc_handler>
 924:	04c0006f          	j	970 <__neorv32_rte_core+0xe0>
 928:	00001737          	lui	a4,0x1
 92c:	00279793          	slli	a5,a5,0x2
 930:	01070713          	addi	a4,a4,16 # 1010 <symbols.0+0x14>
 934:	00e787b3          	add	a5,a5,a4
 938:	0007a783          	lw	a5,0(a5)
 93c:	00078067          	jr	a5
 940:	80000737          	lui	a4,0x80000
 944:	ffd74713          	xori	a4,a4,-3
 948:	00e787b3          	add	a5,a5,a4
 94c:	01c00713          	li	a4,28
 950:	fcf766e3          	bltu	a4,a5,91c <__neorv32_rte_core+0x8c>
 954:	00001737          	lui	a4,0x1
 958:	00279793          	slli	a5,a5,0x2
 95c:	04070713          	addi	a4,a4,64 # 1040 <symbols.0+0x44>
 960:	00e787b3          	add	a5,a5,a4
 964:	0007a783          	lw	a5,0(a5)
 968:	00078067          	jr	a5
 96c:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut>
 970:	000780e7          	jalr	a5
 974:	03c12083          	lw	ra,60(sp)
 978:	03812283          	lw	t0,56(sp)
 97c:	03412303          	lw	t1,52(sp)
 980:	03012383          	lw	t2,48(sp)
 984:	02c12503          	lw	a0,44(sp)
 988:	02812583          	lw	a1,40(sp)
 98c:	02412603          	lw	a2,36(sp)
 990:	02012683          	lw	a3,32(sp)
 994:	01c12703          	lw	a4,28(sp)
 998:	01812783          	lw	a5,24(sp)
 99c:	01412803          	lw	a6,20(sp)
 9a0:	01012883          	lw	a7,16(sp)
 9a4:	00c12e03          	lw	t3,12(sp)
 9a8:	00812e83          	lw	t4,8(sp)
 9ac:	00412f03          	lw	t5,4(sp)
 9b0:	00012f83          	lw	t6,0(sp)
 9b4:	04010113          	addi	sp,sp,64
 9b8:	30200073          	mret
 9bc:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x4>
 9c0:	fb1ff06f          	j	970 <__neorv32_rte_core+0xe0>
 9c4:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x8>
 9c8:	fa9ff06f          	j	970 <__neorv32_rte_core+0xe0>
 9cc:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0xc>
 9d0:	fa1ff06f          	j	970 <__neorv32_rte_core+0xe0>
 9d4:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x10>
 9d8:	f99ff06f          	j	970 <__neorv32_rte_core+0xe0>
 9dc:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x14>
 9e0:	f91ff06f          	j	970 <__neorv32_rte_core+0xe0>
 9e4:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x18>
 9e8:	f89ff06f          	j	970 <__neorv32_rte_core+0xe0>
 9ec:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x1c>
 9f0:	f81ff06f          	j	970 <__neorv32_rte_core+0xe0>
 9f4:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x20>
 9f8:	f79ff06f          	j	970 <__neorv32_rte_core+0xe0>
 9fc:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x24>
 a00:	f71ff06f          	j	970 <__neorv32_rte_core+0xe0>
 a04:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x28>
 a08:	f69ff06f          	j	970 <__neorv32_rte_core+0xe0>
 a0c:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x2c>
 a10:	f61ff06f          	j	970 <__neorv32_rte_core+0xe0>
 a14:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x30>
 a18:	f59ff06f          	j	970 <__neorv32_rte_core+0xe0>
 a1c:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x34>
 a20:	f51ff06f          	j	970 <__neorv32_rte_core+0xe0>
 a24:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x38>
 a28:	f49ff06f          	j	970 <__neorv32_rte_core+0xe0>
 a2c:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x3c>
 a30:	f41ff06f          	j	970 <__neorv32_rte_core+0xe0>
 a34:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x40>
 a38:	f39ff06f          	j	970 <__neorv32_rte_core+0xe0>
 a3c:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x44>
 a40:	f31ff06f          	j	970 <__neorv32_rte_core+0xe0>
 a44:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x48>
 a48:	f29ff06f          	j	970 <__neorv32_rte_core+0xe0>
 a4c:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x4c>
 a50:	f21ff06f          	j	970 <__neorv32_rte_core+0xe0>
 a54:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x50>
 a58:	f19ff06f          	j	970 <__neorv32_rte_core+0xe0>
 a5c:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x54>
 a60:	f11ff06f          	j	970 <__neorv32_rte_core+0xe0>
 a64:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x58>
 a68:	f09ff06f          	j	970 <__neorv32_rte_core+0xe0>
 a6c:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x5c>
 a70:	f01ff06f          	j	970 <__neorv32_rte_core+0xe0>
 a74:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x60>
 a78:	ef9ff06f          	j	970 <__neorv32_rte_core+0xe0>
 a7c:	8741a783          	lw	a5,-1932(gp) # 80000074 <__neorv32_rte_vector_lut+0x64>
 a80:	ef1ff06f          	j	970 <__neorv32_rte_core+0xe0>
 a84:	8781a783          	lw	a5,-1928(gp) # 80000078 <__neorv32_rte_vector_lut+0x68>
 a88:	ee9ff06f          	j	970 <__neorv32_rte_core+0xe0>
 a8c:	87c1a783          	lw	a5,-1924(gp) # 8000007c <__neorv32_rte_vector_lut+0x6c>
 a90:	ee1ff06f          	j	970 <__neorv32_rte_core+0xe0>
 a94:	8801a783          	lw	a5,-1920(gp) # 80000080 <__neorv32_rte_vector_lut+0x70>
 a98:	ed9ff06f          	j	970 <__neorv32_rte_core+0xe0>

00000a9c <__neorv32_rte_print_hex_word>:
 a9c:	fe010113          	addi	sp,sp,-32
 aa0:	01212823          	sw	s2,16(sp)
 aa4:	00050913          	mv	s2,a0
 aa8:	00001537          	lui	a0,0x1
 aac:	00912a23          	sw	s1,20(sp)
 ab0:	0b450513          	addi	a0,a0,180 # 10b4 <symbols.0+0xb8>
 ab4:	000014b7          	lui	s1,0x1
 ab8:	00812c23          	sw	s0,24(sp)
 abc:	01312623          	sw	s3,12(sp)
 ac0:	00112e23          	sw	ra,28(sp)
 ac4:	01c00413          	li	s0,28
 ac8:	b0dff0ef          	jal	ra,5d4 <neorv32_uart0_print>
 acc:	2ac48493          	addi	s1,s1,684 # 12ac <hex_symbols.0>
 ad0:	ffc00993          	li	s3,-4
 ad4:	008957b3          	srl	a5,s2,s0
 ad8:	00f7f793          	andi	a5,a5,15
 adc:	00f487b3          	add	a5,s1,a5
 ae0:	0007c503          	lbu	a0,0(a5)
 ae4:	ffc40413          	addi	s0,s0,-4
 ae8:	ad5ff0ef          	jal	ra,5bc <neorv32_uart0_putc>
 aec:	ff3414e3          	bne	s0,s3,ad4 <__neorv32_rte_print_hex_word+0x38>
 af0:	01c12083          	lw	ra,28(sp)
 af4:	01812403          	lw	s0,24(sp)
 af8:	01412483          	lw	s1,20(sp)
 afc:	01012903          	lw	s2,16(sp)
 b00:	00c12983          	lw	s3,12(sp)
 b04:	02010113          	addi	sp,sp,32
 b08:	00008067          	ret

00000b0c <__neorv32_rte_debug_exc_handler>:
 b0c:	ff010113          	addi	sp,sp,-16
 b10:	00112623          	sw	ra,12(sp)
 b14:	00812423          	sw	s0,8(sp)
 b18:	00912223          	sw	s1,4(sp)
 b1c:	9e5ff0ef          	jal	ra,500 <neorv32_uart0_available>
 b20:	1c050863          	beqz	a0,cf0 <__neorv32_rte_debug_exc_handler+0x1e4>
 b24:	00001537          	lui	a0,0x1
 b28:	0b850513          	addi	a0,a0,184 # 10b8 <symbols.0+0xbc>
 b2c:	aa9ff0ef          	jal	ra,5d4 <neorv32_uart0_print>
 b30:	34202473          	csrr	s0,mcause
 b34:	00900713          	li	a4,9
 b38:	00f47793          	andi	a5,s0,15
 b3c:	03078493          	addi	s1,a5,48
 b40:	00f77463          	bgeu	a4,a5,b48 <__neorv32_rte_debug_exc_handler+0x3c>
 b44:	05778493          	addi	s1,a5,87
 b48:	00b00793          	li	a5,11
 b4c:	0087ee63          	bltu	a5,s0,b68 <__neorv32_rte_debug_exc_handler+0x5c>
 b50:	00001737          	lui	a4,0x1
 b54:	00241793          	slli	a5,s0,0x2
 b58:	27c70713          	addi	a4,a4,636 # 127c <symbols.0+0x280>
 b5c:	00e787b3          	add	a5,a5,a4
 b60:	0007a783          	lw	a5,0(a5)
 b64:	00078067          	jr	a5
 b68:	800007b7          	lui	a5,0x80000
 b6c:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 b70:	14e40e63          	beq	s0,a4,ccc <__neorv32_rte_debug_exc_handler+0x1c0>
 b74:	02876a63          	bltu	a4,s0,ba8 <__neorv32_rte_debug_exc_handler+0x9c>
 b78:	00378713          	addi	a4,a5,3
 b7c:	12e40c63          	beq	s0,a4,cb4 <__neorv32_rte_debug_exc_handler+0x1a8>
 b80:	00778793          	addi	a5,a5,7
 b84:	12f40e63          	beq	s0,a5,cc0 <__neorv32_rte_debug_exc_handler+0x1b4>
 b88:	00001537          	lui	a0,0x1
 b8c:	21850513          	addi	a0,a0,536 # 1218 <symbols.0+0x21c>
 b90:	a45ff0ef          	jal	ra,5d4 <neorv32_uart0_print>
 b94:	00040513          	mv	a0,s0
 b98:	f05ff0ef          	jal	ra,a9c <__neorv32_rte_print_hex_word>
 b9c:	00100793          	li	a5,1
 ba0:	08f40c63          	beq	s0,a5,c38 <__neorv32_rte_debug_exc_handler+0x12c>
 ba4:	0280006f          	j	bcc <__neorv32_rte_debug_exc_handler+0xc0>
 ba8:	ff07c793          	xori	a5,a5,-16
 bac:	00f407b3          	add	a5,s0,a5
 bb0:	00f00713          	li	a4,15
 bb4:	fcf76ae3          	bltu	a4,a5,b88 <__neorv32_rte_debug_exc_handler+0x7c>
 bb8:	00001537          	lui	a0,0x1
 bbc:	20850513          	addi	a0,a0,520 # 1208 <symbols.0+0x20c>
 bc0:	a15ff0ef          	jal	ra,5d4 <neorv32_uart0_print>
 bc4:	00048513          	mv	a0,s1
 bc8:	9f5ff0ef          	jal	ra,5bc <neorv32_uart0_putc>
 bcc:	ffd47413          	andi	s0,s0,-3
 bd0:	00500793          	li	a5,5
 bd4:	06f40263          	beq	s0,a5,c38 <__neorv32_rte_debug_exc_handler+0x12c>
 bd8:	00001537          	lui	a0,0x1
 bdc:	25c50513          	addi	a0,a0,604 # 125c <symbols.0+0x260>
 be0:	9f5ff0ef          	jal	ra,5d4 <neorv32_uart0_print>
 be4:	34002573          	csrr	a0,mscratch
 be8:	eb5ff0ef          	jal	ra,a9c <__neorv32_rte_print_hex_word>
 bec:	00001537          	lui	a0,0x1
 bf0:	26450513          	addi	a0,a0,612 # 1264 <symbols.0+0x268>
 bf4:	9e1ff0ef          	jal	ra,5d4 <neorv32_uart0_print>
 bf8:	34302573          	csrr	a0,mtval
 bfc:	ea1ff0ef          	jal	ra,a9c <__neorv32_rte_print_hex_word>
 c00:	00812403          	lw	s0,8(sp)
 c04:	00c12083          	lw	ra,12(sp)
 c08:	00412483          	lw	s1,4(sp)
 c0c:	00001537          	lui	a0,0x1
 c10:	27050513          	addi	a0,a0,624 # 1270 <symbols.0+0x274>
 c14:	01010113          	addi	sp,sp,16
 c18:	9bdff06f          	j	5d4 <neorv32_uart0_print>
 c1c:	00001537          	lui	a0,0x1
 c20:	0c050513          	addi	a0,a0,192 # 10c0 <symbols.0+0xc4>
 c24:	9b1ff0ef          	jal	ra,5d4 <neorv32_uart0_print>
 c28:	fb1ff06f          	j	bd8 <__neorv32_rte_debug_exc_handler+0xcc>
 c2c:	00001537          	lui	a0,0x1
 c30:	0e050513          	addi	a0,a0,224 # 10e0 <symbols.0+0xe4>
 c34:	9a1ff0ef          	jal	ra,5d4 <neorv32_uart0_print>
 c38:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 c3c:	0a07d463          	bgez	a5,ce4 <__neorv32_rte_debug_exc_handler+0x1d8>
 c40:	0017f793          	andi	a5,a5,1
 c44:	08078a63          	beqz	a5,cd8 <__neorv32_rte_debug_exc_handler+0x1cc>
 c48:	00001537          	lui	a0,0x1
 c4c:	23050513          	addi	a0,a0,560 # 1230 <symbols.0+0x234>
 c50:	fd5ff06f          	j	c24 <__neorv32_rte_debug_exc_handler+0x118>
 c54:	00001537          	lui	a0,0x1
 c58:	0fc50513          	addi	a0,a0,252 # 10fc <symbols.0+0x100>
 c5c:	fc9ff06f          	j	c24 <__neorv32_rte_debug_exc_handler+0x118>
 c60:	00001537          	lui	a0,0x1
 c64:	11050513          	addi	a0,a0,272 # 1110 <symbols.0+0x114>
 c68:	fbdff06f          	j	c24 <__neorv32_rte_debug_exc_handler+0x118>
 c6c:	00001537          	lui	a0,0x1
 c70:	11c50513          	addi	a0,a0,284 # 111c <symbols.0+0x120>
 c74:	fb1ff06f          	j	c24 <__neorv32_rte_debug_exc_handler+0x118>
 c78:	00001537          	lui	a0,0x1
 c7c:	13450513          	addi	a0,a0,308 # 1134 <symbols.0+0x138>
 c80:	fb5ff06f          	j	c34 <__neorv32_rte_debug_exc_handler+0x128>
 c84:	00001537          	lui	a0,0x1
 c88:	14850513          	addi	a0,a0,328 # 1148 <symbols.0+0x14c>
 c8c:	f99ff06f          	j	c24 <__neorv32_rte_debug_exc_handler+0x118>
 c90:	00001537          	lui	a0,0x1
 c94:	16450513          	addi	a0,a0,356 # 1164 <symbols.0+0x168>
 c98:	f9dff06f          	j	c34 <__neorv32_rte_debug_exc_handler+0x128>
 c9c:	00001537          	lui	a0,0x1
 ca0:	17850513          	addi	a0,a0,376 # 1178 <symbols.0+0x17c>
 ca4:	f81ff06f          	j	c24 <__neorv32_rte_debug_exc_handler+0x118>
 ca8:	00001537          	lui	a0,0x1
 cac:	19850513          	addi	a0,a0,408 # 1198 <symbols.0+0x19c>
 cb0:	f75ff06f          	j	c24 <__neorv32_rte_debug_exc_handler+0x118>
 cb4:	00001537          	lui	a0,0x1
 cb8:	1b850513          	addi	a0,a0,440 # 11b8 <symbols.0+0x1bc>
 cbc:	f69ff06f          	j	c24 <__neorv32_rte_debug_exc_handler+0x118>
 cc0:	00001537          	lui	a0,0x1
 cc4:	1d450513          	addi	a0,a0,468 # 11d4 <symbols.0+0x1d8>
 cc8:	f5dff06f          	j	c24 <__neorv32_rte_debug_exc_handler+0x118>
 ccc:	00001537          	lui	a0,0x1
 cd0:	1ec50513          	addi	a0,a0,492 # 11ec <symbols.0+0x1f0>
 cd4:	f51ff06f          	j	c24 <__neorv32_rte_debug_exc_handler+0x118>
 cd8:	00001537          	lui	a0,0x1
 cdc:	24050513          	addi	a0,a0,576 # 1240 <symbols.0+0x244>
 ce0:	f45ff06f          	j	c24 <__neorv32_rte_debug_exc_handler+0x118>
 ce4:	00001537          	lui	a0,0x1
 ce8:	25050513          	addi	a0,a0,592 # 1250 <symbols.0+0x254>
 cec:	f39ff06f          	j	c24 <__neorv32_rte_debug_exc_handler+0x118>
 cf0:	00c12083          	lw	ra,12(sp)
 cf4:	00812403          	lw	s0,8(sp)
 cf8:	00412483          	lw	s1,4(sp)
 cfc:	01010113          	addi	sp,sp,16
 d00:	00008067          	ret

00000d04 <neorv32_rte_exception_uninstall>:
 d04:	01f00793          	li	a5,31
 d08:	02a7e263          	bltu	a5,a0,d2c <neorv32_rte_exception_uninstall+0x28>
 d0c:	81018793          	addi	a5,gp,-2032 # 80000010 <__neorv32_rte_vector_lut>
 d10:	00251513          	slli	a0,a0,0x2
 d14:	00a78533          	add	a0,a5,a0
 d18:	000017b7          	lui	a5,0x1
 d1c:	b0c78793          	addi	a5,a5,-1268 # b0c <__neorv32_rte_debug_exc_handler>
 d20:	00f52023          	sw	a5,0(a0)
 d24:	00000513          	li	a0,0
 d28:	00008067          	ret
 d2c:	00100513          	li	a0,1
 d30:	00008067          	ret

00000d34 <neorv32_rte_setup>:
 d34:	ff010113          	addi	sp,sp,-16
 d38:	000017b7          	lui	a5,0x1
 d3c:	00112623          	sw	ra,12(sp)
 d40:	00812423          	sw	s0,8(sp)
 d44:	00912223          	sw	s1,4(sp)
 d48:	89078793          	addi	a5,a5,-1904 # 890 <__neorv32_rte_core>
 d4c:	30579073          	csrw	mtvec,a5
 d50:	00000793          	li	a5,0
 d54:	30479073          	csrw	mie,a5
 d58:	34479073          	csrw	mip,a5
 d5c:	f6002e23          	sw	zero,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 d60:	00000413          	li	s0,0
 d64:	01d00493          	li	s1,29
 d68:	00040513          	mv	a0,s0
 d6c:	00140413          	addi	s0,s0,1
 d70:	0ff47413          	andi	s0,s0,255
 d74:	f91ff0ef          	jal	ra,d04 <neorv32_rte_exception_uninstall>
 d78:	fe9418e3          	bne	s0,s1,d68 <neorv32_rte_setup+0x34>
 d7c:	00c12083          	lw	ra,12(sp)
 d80:	00812403          	lw	s0,8(sp)
 d84:	00412483          	lw	s1,4(sp)
 d88:	01010113          	addi	sp,sp,16
 d8c:	00008067          	ret

00000d90 <neorv32_gpio_available>:
 d90:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 d94:	01055513          	srli	a0,a0,0x10
 d98:	00157513          	andi	a0,a0,1
 d9c:	00008067          	ret

00000da0 <neorv32_gpio_pin_set>:
 da0:	00100793          	li	a5,1
 da4:	01f00713          	li	a4,31
 da8:	00a797b3          	sll	a5,a5,a0
 dac:	00a74a63          	blt	a4,a0,dc0 <neorv32_gpio_pin_set+0x20>
 db0:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 db4:	00f767b3          	or	a5,a4,a5
 db8:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 dbc:	00008067          	ret
 dc0:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 dc4:	00f767b3          	or	a5,a4,a5
 dc8:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 dcc:	00008067          	ret

00000dd0 <neorv32_gpio_pin_clr>:
 dd0:	00100793          	li	a5,1
 dd4:	00a797b3          	sll	a5,a5,a0
 dd8:	01f00713          	li	a4,31
 ddc:	fff7c793          	not	a5,a5
 de0:	00a74a63          	blt	a4,a0,df4 <neorv32_gpio_pin_clr+0x24>
 de4:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 de8:	00f777b3          	and	a5,a4,a5
 dec:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 df0:	00008067          	ret
 df4:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 df8:	00f777b3          	and	a5,a4,a5
 dfc:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 e00:	00008067          	ret

00000e04 <neorv32_gpio_pin_get>:
 e04:	00050793          	mv	a5,a0
 e08:	01f00713          	li	a4,31
 e0c:	00100513          	li	a0,1
 e10:	00f51533          	sll	a0,a0,a5
 e14:	00f74863          	blt	a4,a5,e24 <neorv32_gpio_pin_get+0x20>
 e18:	fc002783          	lw	a5,-64(zero) # ffffffc0 <__ctr0_io_space_begin+0x1c0>
 e1c:	00a7f533          	and	a0,a5,a0
 e20:	00008067          	ret
 e24:	fc402783          	lw	a5,-60(zero) # ffffffc4 <__ctr0_io_space_begin+0x1c4>
 e28:	ff5ff06f          	j	e1c <neorv32_gpio_pin_get+0x18>

00000e2c <__mulsi3>:
 e2c:	00050613          	mv	a2,a0
 e30:	00000513          	li	a0,0
 e34:	0015f693          	andi	a3,a1,1
 e38:	00068463          	beqz	a3,e40 <__mulsi3+0x14>
 e3c:	00c50533          	add	a0,a0,a2
 e40:	0015d593          	srli	a1,a1,0x1
 e44:	00161613          	slli	a2,a2,0x1
 e48:	fe0596e3          	bnez	a1,e34 <__mulsi3+0x8>
 e4c:	00008067          	ret

00000e50 <__muldi3>:
 e50:	00050313          	mv	t1,a0
 e54:	ff010113          	addi	sp,sp,-16
 e58:	00060513          	mv	a0,a2
 e5c:	00068893          	mv	a7,a3
 e60:	00112623          	sw	ra,12(sp)
 e64:	00030613          	mv	a2,t1
 e68:	00050693          	mv	a3,a0
 e6c:	00000713          	li	a4,0
 e70:	00000793          	li	a5,0
 e74:	00000813          	li	a6,0
 e78:	0016fe13          	andi	t3,a3,1
 e7c:	00171e93          	slli	t4,a4,0x1
 e80:	000e0c63          	beqz	t3,e98 <__muldi3+0x48>
 e84:	01060e33          	add	t3,a2,a6
 e88:	010e3833          	sltu	a6,t3,a6
 e8c:	00e787b3          	add	a5,a5,a4
 e90:	00f807b3          	add	a5,a6,a5
 e94:	000e0813          	mv	a6,t3
 e98:	01f65713          	srli	a4,a2,0x1f
 e9c:	0016d693          	srli	a3,a3,0x1
 ea0:	00eee733          	or	a4,t4,a4
 ea4:	00161613          	slli	a2,a2,0x1
 ea8:	fc0698e3          	bnez	a3,e78 <__muldi3+0x28>
 eac:	00058663          	beqz	a1,eb8 <__muldi3+0x68>
 eb0:	f7dff0ef          	jal	ra,e2c <__mulsi3>
 eb4:	00a787b3          	add	a5,a5,a0
 eb8:	00088a63          	beqz	a7,ecc <__muldi3+0x7c>
 ebc:	00030513          	mv	a0,t1
 ec0:	00088593          	mv	a1,a7
 ec4:	f69ff0ef          	jal	ra,e2c <__mulsi3>
 ec8:	00f507b3          	add	a5,a0,a5
 ecc:	00c12083          	lw	ra,12(sp)
 ed0:	00080513          	mv	a0,a6
 ed4:	00078593          	mv	a1,a5
 ed8:	01010113          	addi	sp,sp,16
 edc:	00008067          	ret

00000ee0 <__divsi3>:
 ee0:	06054063          	bltz	a0,f40 <__umodsi3+0x10>
 ee4:	0605c663          	bltz	a1,f50 <__umodsi3+0x20>

00000ee8 <__udivsi3>:
 ee8:	00058613          	mv	a2,a1
 eec:	00050593          	mv	a1,a0
 ef0:	fff00513          	li	a0,-1
 ef4:	02060c63          	beqz	a2,f2c <__udivsi3+0x44>
 ef8:	00100693          	li	a3,1
 efc:	00b67a63          	bgeu	a2,a1,f10 <__udivsi3+0x28>
 f00:	00c05863          	blez	a2,f10 <__udivsi3+0x28>
 f04:	00161613          	slli	a2,a2,0x1
 f08:	00169693          	slli	a3,a3,0x1
 f0c:	feb66ae3          	bltu	a2,a1,f00 <__udivsi3+0x18>
 f10:	00000513          	li	a0,0
 f14:	00c5e663          	bltu	a1,a2,f20 <__udivsi3+0x38>
 f18:	40c585b3          	sub	a1,a1,a2
 f1c:	00d56533          	or	a0,a0,a3
 f20:	0016d693          	srli	a3,a3,0x1
 f24:	00165613          	srli	a2,a2,0x1
 f28:	fe0696e3          	bnez	a3,f14 <__udivsi3+0x2c>
 f2c:	00008067          	ret

00000f30 <__umodsi3>:
 f30:	00008293          	mv	t0,ra
 f34:	fb5ff0ef          	jal	ra,ee8 <__udivsi3>
 f38:	00058513          	mv	a0,a1
 f3c:	00028067          	jr	t0
 f40:	40a00533          	neg	a0,a0
 f44:	00b04863          	bgtz	a1,f54 <__umodsi3+0x24>
 f48:	40b005b3          	neg	a1,a1
 f4c:	f9dff06f          	j	ee8 <__udivsi3>
 f50:	40b005b3          	neg	a1,a1
 f54:	00008293          	mv	t0,ra
 f58:	f91ff0ef          	jal	ra,ee8 <__udivsi3>
 f5c:	40a00533          	neg	a0,a0
 f60:	00028067          	jr	t0

00000f64 <__modsi3>:
 f64:	00008293          	mv	t0,ra
 f68:	0005ca63          	bltz	a1,f7c <__modsi3+0x18>
 f6c:	00054c63          	bltz	a0,f84 <__modsi3+0x20>
 f70:	f79ff0ef          	jal	ra,ee8 <__udivsi3>
 f74:	00058513          	mv	a0,a1
 f78:	00028067          	jr	t0
 f7c:	40b005b3          	neg	a1,a1
 f80:	fe0558e3          	bgez	a0,f70 <__modsi3+0xc>
 f84:	40a00533          	neg	a0,a0
 f88:	f61ff0ef          	jal	ra,ee8 <__udivsi3>
 f8c:	40b00533          	neg	a0,a1
 f90:	00028067          	jr	t0
