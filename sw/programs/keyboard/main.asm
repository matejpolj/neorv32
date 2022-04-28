
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
  dc:	1fc58593          	addi	a1,a1,508 # 12d4 <__crt0_copy_data_src_begin>
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
 188:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x382c>
 18c:	00112e23          	sw	ra,28(sp)
 190:	00812c23          	sw	s0,24(sp)
 194:	350000ef          	jal	ra,4e4 <neorv32_uart0_setup>
 198:	3cd000ef          	jal	ra,d64 <neorv32_gpio_available>
 19c:	06050c63          	beqz	a0,214 <main+0x9c>
 1a0:	379000ef          	jal	ra,d18 <neorv32_rte_setup>
 1a4:	00001537          	lui	a0,0x1
 1a8:	f8c50513          	addi	a0,a0,-116 # f8c <__etext+0x24>
 1ac:	3fc000ef          	jal	ra,5a8 <neorv32_uart0_print>
 1b0:	00001537          	lui	a0,0x1
 1b4:	fac50513          	addi	a0,a0,-84 # fac <__etext+0x44>
 1b8:	3f0000ef          	jal	ra,5a8 <neorv32_uart0_print>
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
 200:	fd440513          	addi	a0,s0,-44 # fd4 <__etext+0x6c>
 204:	3fc000ef          	jal	ra,600 <neorv32_uart0_printf>
 208:	1f400513          	li	a0,500
 20c:	5b8000ef          	jal	ra,7c4 <neorv32_cpu_delay_ms>
 210:	fe1ff06f          	j	1f0 <main+0x78>
 214:	00001537          	lui	a0,0x1
 218:	f6850513          	addi	a0,a0,-152 # f68 <__etext>
 21c:	38c000ef          	jal	ra,5a8 <neorv32_uart0_print>
 220:	01c12083          	lw	ra,28(sp)
 224:	01812403          	lw	s0,24(sp)
 228:	00100513          	li	a0,1
 22c:	02010113          	addi	sp,sp,32
 230:	00008067          	ret

00000234 <getKeyPress>:
 234:	fd010113          	addi	sp,sp,-48
 238:	02912223          	sw	s1,36(sp)
 23c:	01412c23          	sw	s4,24(sp)
 240:	02112623          	sw	ra,44(sp)
 244:	02812423          	sw	s0,40(sp)
 248:	03212023          	sw	s2,32(sp)
 24c:	01312e23          	sw	s3,28(sp)
 250:	01512a23          	sw	s5,20(sp)
 254:	01612823          	sw	s6,16(sp)
 258:	01712623          	sw	s7,12(sp)
 25c:	00050a13          	mv	s4,a0
 260:	00058493          	mv	s1,a1
 264:	301000ef          	jal	ra,d64 <neorv32_gpio_available>
 268:	0c050263          	beqz	a0,32c <getKeyPress+0xf8>
 26c:	00848493          	addi	s1,s1,8
 270:	00400413          	li	s0,4
 274:	00001ab7          	lui	s5,0x1
 278:	00001b37          	lui	s6,0x1
 27c:	00400b93          	li	s7,4
 280:	0004d503          	lhu	a0,0(s1)
 284:	00000913          	li	s2,0
 288:	2ed000ef          	jal	ra,d74 <neorv32_gpio_pin_set>
 28c:	0c800513          	li	a0,200
 290:	534000ef          	jal	ra,7c4 <neorv32_cpu_delay_ms>
 294:	0004d583          	lhu	a1,0(s1)
 298:	ff0a8513          	addi	a0,s5,-16 # ff0 <__etext+0x88>
 29c:	364000ef          	jal	ra,600 <neorv32_uart0_printf>
 2a0:	00191793          	slli	a5,s2,0x1
 2a4:	00fa07b3          	add	a5,s4,a5
 2a8:	0007d503          	lhu	a0,0(a5)
 2ac:	088000ef          	jal	ra,334 <getButtonState>
 2b0:	00050993          	mv	s3,a0
 2b4:	00050593          	mv	a1,a0
 2b8:	ffcb0513          	addi	a0,s6,-4 # ffc <__etext+0x94>
 2bc:	344000ef          	jal	ra,600 <neorv32_uart0_printf>
 2c0:	04099063          	bnez	s3,300 <getKeyPress+0xcc>
 2c4:	00241513          	slli	a0,s0,0x2
 2c8:	01250533          	add	a0,a0,s2
 2cc:	01051513          	slli	a0,a0,0x10
 2d0:	01055513          	srli	a0,a0,0x10
 2d4:	02c12083          	lw	ra,44(sp)
 2d8:	02812403          	lw	s0,40(sp)
 2dc:	02412483          	lw	s1,36(sp)
 2e0:	02012903          	lw	s2,32(sp)
 2e4:	01c12983          	lw	s3,28(sp)
 2e8:	01812a03          	lw	s4,24(sp)
 2ec:	01412a83          	lw	s5,20(sp)
 2f0:	01012b03          	lw	s6,16(sp)
 2f4:	00c12b83          	lw	s7,12(sp)
 2f8:	03010113          	addi	sp,sp,48
 2fc:	00008067          	ret
 300:	00190913          	addi	s2,s2,1
 304:	f9791ee3          	bne	s2,s7,2a0 <getKeyPress+0x6c>
 308:	0004d503          	lhu	a0,0(s1)
 30c:	fff40413          	addi	s0,s0,-1
 310:	ffe48493          	addi	s1,s1,-2
 314:	291000ef          	jal	ra,da4 <neorv32_gpio_pin_clr>
 318:	0c800513          	li	a0,200
 31c:	4a8000ef          	jal	ra,7c4 <neorv32_cpu_delay_ms>
 320:	f60410e3          	bnez	s0,280 <getKeyPress+0x4c>
 324:	01f00513          	li	a0,31
 328:	fadff06f          	j	2d4 <getKeyPress+0xa0>
 32c:	00100513          	li	a0,1
 330:	fa5ff06f          	j	2d4 <getKeyPress+0xa0>

00000334 <getButtonState>:
 334:	ff010113          	addi	sp,sp,-16
 338:	00112623          	sw	ra,12(sp)
 33c:	00812423          	sw	s0,8(sp)
 340:	00912223          	sw	s1,4(sp)
 344:	00050493          	mv	s1,a0
 348:	291000ef          	jal	ra,dd8 <neorv32_gpio_pin_get>
 34c:	00050413          	mv	s0,a0
 350:	00500513          	li	a0,5
 354:	470000ef          	jal	ra,7c4 <neorv32_cpu_delay_ms>
 358:	00048513          	mv	a0,s1
 35c:	27d000ef          	jal	ra,dd8 <neorv32_gpio_pin_get>
 360:	00a477b3          	and	a5,s0,a0
 364:	02079263          	bnez	a5,388 <getButtonState+0x54>
 368:	00a46533          	or	a0,s0,a0
 36c:	00a03533          	snez	a0,a0
 370:	00150513          	addi	a0,a0,1
 374:	00c12083          	lw	ra,12(sp)
 378:	00812403          	lw	s0,8(sp)
 37c:	00412483          	lw	s1,4(sp)
 380:	01010113          	addi	sp,sp,16
 384:	00008067          	ret
 388:	00000513          	li	a0,0
 38c:	fe9ff06f          	j	374 <getButtonState+0x40>

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
 3c8:	00ca0a13          	addi	s4,s4,12 # 100c <numbers.1>
 3cc:	00a00593          	li	a1,10
 3d0:	00048513          	mv	a0,s1
 3d4:	331000ef          	jal	ra,f04 <__umodsi3>
 3d8:	00aa0533          	add	a0,s4,a0
 3dc:	00054783          	lbu	a5,0(a0)
 3e0:	01390ab3          	add	s5,s2,s3
 3e4:	00048513          	mv	a0,s1
 3e8:	00fa8023          	sb	a5,0(s5)
 3ec:	00a00593          	li	a1,10
 3f0:	2cd000ef          	jal	ra,ebc <__udivsi3>
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
 4a4:	01860613          	addi	a2,a2,24 # 1018 <symbols.0>
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

000004d4 <neorv32_uart0_available>:
 4d4:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 4d8:	01255513          	srli	a0,a0,0x12
 4dc:	00157513          	andi	a0,a0,1
 4e0:	00008067          	ret

000004e4 <neorv32_uart0_setup>:
 4e4:	ff010113          	addi	sp,sp,-16
 4e8:	00812423          	sw	s0,8(sp)
 4ec:	00912223          	sw	s1,4(sp)
 4f0:	00112623          	sw	ra,12(sp)
 4f4:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 4f8:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 4fc:	00058413          	mv	s0,a1
 500:	00151593          	slli	a1,a0,0x1
 504:	00078513          	mv	a0,a5
 508:	00060493          	mv	s1,a2
 50c:	1b1000ef          	jal	ra,ebc <__udivsi3>
 510:	01051513          	slli	a0,a0,0x10
 514:	000017b7          	lui	a5,0x1
 518:	01055513          	srli	a0,a0,0x10
 51c:	00000713          	li	a4,0
 520:	ffe78793          	addi	a5,a5,-2 # ffe <__etext+0x96>
 524:	04a7e463          	bltu	a5,a0,56c <neorv32_uart0_setup+0x88>
 528:	0034f793          	andi	a5,s1,3
 52c:	00347413          	andi	s0,s0,3
 530:	fff50513          	addi	a0,a0,-1
 534:	01479793          	slli	a5,a5,0x14
 538:	01641413          	slli	s0,s0,0x16
 53c:	00f567b3          	or	a5,a0,a5
 540:	0087e7b3          	or	a5,a5,s0
 544:	01871713          	slli	a4,a4,0x18
 548:	00c12083          	lw	ra,12(sp)
 54c:	00812403          	lw	s0,8(sp)
 550:	00e7e7b3          	or	a5,a5,a4
 554:	10000737          	lui	a4,0x10000
 558:	00e7e7b3          	or	a5,a5,a4
 55c:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 560:	00412483          	lw	s1,4(sp)
 564:	01010113          	addi	sp,sp,16
 568:	00008067          	ret
 56c:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffed2a>
 570:	0fd6f693          	andi	a3,a3,253
 574:	00069a63          	bnez	a3,588 <neorv32_uart0_setup+0xa4>
 578:	00355513          	srli	a0,a0,0x3
 57c:	00170713          	addi	a4,a4,1
 580:	0ff77713          	andi	a4,a4,255
 584:	fa1ff06f          	j	524 <neorv32_uart0_setup+0x40>
 588:	00155513          	srli	a0,a0,0x1
 58c:	ff1ff06f          	j	57c <neorv32_uart0_setup+0x98>

00000590 <neorv32_uart0_putc>:
 590:	00040737          	lui	a4,0x40
 594:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 598:	00e7f7b3          	and	a5,a5,a4
 59c:	fe079ce3          	bnez	a5,594 <neorv32_uart0_putc+0x4>
 5a0:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 5a4:	00008067          	ret

000005a8 <neorv32_uart0_print>:
 5a8:	ff010113          	addi	sp,sp,-16
 5ac:	00812423          	sw	s0,8(sp)
 5b0:	01212023          	sw	s2,0(sp)
 5b4:	00112623          	sw	ra,12(sp)
 5b8:	00912223          	sw	s1,4(sp)
 5bc:	00050413          	mv	s0,a0
 5c0:	00a00913          	li	s2,10
 5c4:	00044483          	lbu	s1,0(s0)
 5c8:	00140413          	addi	s0,s0,1
 5cc:	00049e63          	bnez	s1,5e8 <neorv32_uart0_print+0x40>
 5d0:	00c12083          	lw	ra,12(sp)
 5d4:	00812403          	lw	s0,8(sp)
 5d8:	00412483          	lw	s1,4(sp)
 5dc:	00012903          	lw	s2,0(sp)
 5e0:	01010113          	addi	sp,sp,16
 5e4:	00008067          	ret
 5e8:	01249663          	bne	s1,s2,5f4 <neorv32_uart0_print+0x4c>
 5ec:	00d00513          	li	a0,13
 5f0:	fa1ff0ef          	jal	ra,590 <neorv32_uart0_putc>
 5f4:	00048513          	mv	a0,s1
 5f8:	f99ff0ef          	jal	ra,590 <neorv32_uart0_putc>
 5fc:	fc9ff06f          	j	5c4 <neorv32_uart0_print+0x1c>

00000600 <neorv32_uart0_printf>:
 600:	fa010113          	addi	sp,sp,-96
 604:	04f12a23          	sw	a5,84(sp)
 608:	04410793          	addi	a5,sp,68
 60c:	02812c23          	sw	s0,56(sp)
 610:	03212823          	sw	s2,48(sp)
 614:	03412423          	sw	s4,40(sp)
 618:	03512223          	sw	s5,36(sp)
 61c:	03612023          	sw	s6,32(sp)
 620:	01712e23          	sw	s7,28(sp)
 624:	01812c23          	sw	s8,24(sp)
 628:	01912a23          	sw	s9,20(sp)
 62c:	02112e23          	sw	ra,60(sp)
 630:	02912a23          	sw	s1,52(sp)
 634:	03312623          	sw	s3,44(sp)
 638:	00050413          	mv	s0,a0
 63c:	04b12223          	sw	a1,68(sp)
 640:	04c12423          	sw	a2,72(sp)
 644:	04d12623          	sw	a3,76(sp)
 648:	04e12823          	sw	a4,80(sp)
 64c:	05012c23          	sw	a6,88(sp)
 650:	05112e23          	sw	a7,92(sp)
 654:	00f12023          	sw	a5,0(sp)
 658:	02500a13          	li	s4,37
 65c:	00a00a93          	li	s5,10
 660:	07300913          	li	s2,115
 664:	07500b13          	li	s6,117
 668:	07800b93          	li	s7,120
 66c:	06300c13          	li	s8,99
 670:	06900c93          	li	s9,105
 674:	00044483          	lbu	s1,0(s0)
 678:	02049c63          	bnez	s1,6b0 <neorv32_uart0_printf+0xb0>
 67c:	03c12083          	lw	ra,60(sp)
 680:	03812403          	lw	s0,56(sp)
 684:	03412483          	lw	s1,52(sp)
 688:	03012903          	lw	s2,48(sp)
 68c:	02c12983          	lw	s3,44(sp)
 690:	02812a03          	lw	s4,40(sp)
 694:	02412a83          	lw	s5,36(sp)
 698:	02012b03          	lw	s6,32(sp)
 69c:	01c12b83          	lw	s7,28(sp)
 6a0:	01812c03          	lw	s8,24(sp)
 6a4:	01412c83          	lw	s9,20(sp)
 6a8:	06010113          	addi	sp,sp,96
 6ac:	00008067          	ret
 6b0:	0d449863          	bne	s1,s4,780 <neorv32_uart0_printf+0x180>
 6b4:	00240993          	addi	s3,s0,2
 6b8:	00144403          	lbu	s0,1(s0)
 6bc:	05240263          	beq	s0,s2,700 <neorv32_uart0_printf+0x100>
 6c0:	00896e63          	bltu	s2,s0,6dc <neorv32_uart0_printf+0xdc>
 6c4:	05840c63          	beq	s0,s8,71c <neorv32_uart0_printf+0x11c>
 6c8:	07940663          	beq	s0,s9,734 <neorv32_uart0_printf+0x134>
 6cc:	02500513          	li	a0,37
 6d0:	ec1ff0ef          	jal	ra,590 <neorv32_uart0_putc>
 6d4:	00040513          	mv	a0,s0
 6d8:	0540006f          	j	72c <neorv32_uart0_printf+0x12c>
 6dc:	09640663          	beq	s0,s6,768 <neorv32_uart0_printf+0x168>
 6e0:	ff7416e3          	bne	s0,s7,6cc <neorv32_uart0_printf+0xcc>
 6e4:	00012783          	lw	a5,0(sp)
 6e8:	00410593          	addi	a1,sp,4
 6ec:	0007a503          	lw	a0,0(a5)
 6f0:	00478713          	addi	a4,a5,4
 6f4:	00e12023          	sw	a4,0(sp)
 6f8:	da1ff0ef          	jal	ra,498 <__neorv32_uart_tohex>
 6fc:	0640006f          	j	760 <neorv32_uart0_printf+0x160>
 700:	00012783          	lw	a5,0(sp)
 704:	0007a503          	lw	a0,0(a5)
 708:	00478713          	addi	a4,a5,4
 70c:	00e12023          	sw	a4,0(sp)
 710:	e99ff0ef          	jal	ra,5a8 <neorv32_uart0_print>
 714:	00098413          	mv	s0,s3
 718:	f5dff06f          	j	674 <neorv32_uart0_printf+0x74>
 71c:	00012783          	lw	a5,0(sp)
 720:	0007c503          	lbu	a0,0(a5)
 724:	00478713          	addi	a4,a5,4
 728:	00e12023          	sw	a4,0(sp)
 72c:	e65ff0ef          	jal	ra,590 <neorv32_uart0_putc>
 730:	fe5ff06f          	j	714 <neorv32_uart0_printf+0x114>
 734:	00012783          	lw	a5,0(sp)
 738:	0007a403          	lw	s0,0(a5)
 73c:	00478713          	addi	a4,a5,4
 740:	00e12023          	sw	a4,0(sp)
 744:	00045863          	bgez	s0,754 <neorv32_uart0_printf+0x154>
 748:	02d00513          	li	a0,45
 74c:	40800433          	neg	s0,s0
 750:	e41ff0ef          	jal	ra,590 <neorv32_uart0_putc>
 754:	00410593          	addi	a1,sp,4
 758:	00040513          	mv	a0,s0
 75c:	c35ff0ef          	jal	ra,390 <__neorv32_uart_itoa>
 760:	00410513          	addi	a0,sp,4
 764:	fadff06f          	j	710 <neorv32_uart0_printf+0x110>
 768:	00012783          	lw	a5,0(sp)
 76c:	00410593          	addi	a1,sp,4
 770:	00478713          	addi	a4,a5,4
 774:	0007a503          	lw	a0,0(a5)
 778:	00e12023          	sw	a4,0(sp)
 77c:	fe1ff06f          	j	75c <neorv32_uart0_printf+0x15c>
 780:	01549663          	bne	s1,s5,78c <neorv32_uart0_printf+0x18c>
 784:	00d00513          	li	a0,13
 788:	e09ff0ef          	jal	ra,590 <neorv32_uart0_putc>
 78c:	00140993          	addi	s3,s0,1
 790:	00048513          	mv	a0,s1
 794:	f99ff06f          	j	72c <neorv32_uart0_printf+0x12c>

00000798 <neorv32_cpu_get_systime>:
 798:	ff010113          	addi	sp,sp,-16
 79c:	c81026f3          	rdtimeh	a3
 7a0:	c0102773          	rdtime	a4
 7a4:	c81027f3          	rdtimeh	a5
 7a8:	fed79ae3          	bne	a5,a3,79c <neorv32_cpu_get_systime+0x4>
 7ac:	00e12023          	sw	a4,0(sp)
 7b0:	00f12223          	sw	a5,4(sp)
 7b4:	00012503          	lw	a0,0(sp)
 7b8:	00412583          	lw	a1,4(sp)
 7bc:	01010113          	addi	sp,sp,16
 7c0:	00008067          	ret

000007c4 <neorv32_cpu_delay_ms>:
 7c4:	fd010113          	addi	sp,sp,-48
 7c8:	00a12623          	sw	a0,12(sp)
 7cc:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 7d0:	3e800593          	li	a1,1000
 7d4:	02112623          	sw	ra,44(sp)
 7d8:	02812423          	sw	s0,40(sp)
 7dc:	02912223          	sw	s1,36(sp)
 7e0:	03212023          	sw	s2,32(sp)
 7e4:	01312e23          	sw	s3,28(sp)
 7e8:	6d4000ef          	jal	ra,ebc <__udivsi3>
 7ec:	00c12603          	lw	a2,12(sp)
 7f0:	00000693          	li	a3,0
 7f4:	00000593          	li	a1,0
 7f8:	62c000ef          	jal	ra,e24 <__muldi3>
 7fc:	00050413          	mv	s0,a0
 800:	00058993          	mv	s3,a1
 804:	f95ff0ef          	jal	ra,798 <neorv32_cpu_get_systime>
 808:	00058913          	mv	s2,a1
 80c:	00050493          	mv	s1,a0
 810:	f89ff0ef          	jal	ra,798 <neorv32_cpu_get_systime>
 814:	00b96663          	bltu	s2,a1,820 <neorv32_cpu_delay_ms+0x5c>
 818:	05259263          	bne	a1,s2,85c <neorv32_cpu_delay_ms+0x98>
 81c:	04a4f063          	bgeu	s1,a0,85c <neorv32_cpu_delay_ms+0x98>
 820:	008484b3          	add	s1,s1,s0
 824:	0084b433          	sltu	s0,s1,s0
 828:	01390933          	add	s2,s2,s3
 82c:	01240433          	add	s0,s0,s2
 830:	f69ff0ef          	jal	ra,798 <neorv32_cpu_get_systime>
 834:	fe85eee3          	bltu	a1,s0,830 <neorv32_cpu_delay_ms+0x6c>
 838:	00b41463          	bne	s0,a1,840 <neorv32_cpu_delay_ms+0x7c>
 83c:	fe956ae3          	bltu	a0,s1,830 <neorv32_cpu_delay_ms+0x6c>
 840:	02c12083          	lw	ra,44(sp)
 844:	02812403          	lw	s0,40(sp)
 848:	02412483          	lw	s1,36(sp)
 84c:	02012903          	lw	s2,32(sp)
 850:	01c12983          	lw	s3,28(sp)
 854:	03010113          	addi	sp,sp,48
 858:	00008067          	ret
 85c:	01c99913          	slli	s2,s3,0x1c
 860:	00445413          	srli	s0,s0,0x4
 864:	00896433          	or	s0,s2,s0

00000868 <__neorv32_cpu_delay_ms_start>:
 868:	00040a63          	beqz	s0,87c <__neorv32_cpu_delay_ms_end>
 86c:	00040863          	beqz	s0,87c <__neorv32_cpu_delay_ms_end>
 870:	fff40413          	addi	s0,s0,-1
 874:	00000013          	nop
 878:	ff1ff06f          	j	868 <__neorv32_cpu_delay_ms_start>

0000087c <__neorv32_cpu_delay_ms_end>:
 87c:	fc5ff06f          	j	840 <neorv32_cpu_delay_ms+0x7c>

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
 8d4:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3ed2c>
 8d8:	00300593          	li	a1,3
 8dc:	0036f693          	andi	a3,a3,3
 8e0:	00270613          	addi	a2,a4,2
 8e4:	00b69463          	bne	a3,a1,8ec <__neorv32_rte_core+0x6c>
 8e8:	00470613          	addi	a2,a4,4
 8ec:	34161073          	csrw	mepc,a2
 8f0:	00b00713          	li	a4,11
 8f4:	04f77c63          	bgeu	a4,a5,94c <__neorv32_rte_core+0xcc>
 8f8:	000017b7          	lui	a5,0x1
 8fc:	af078793          	addi	a5,a5,-1296 # af0 <__neorv32_rte_debug_exc_handler>
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
 954:	02c70713          	addi	a4,a4,44 # 102c <symbols.0+0x14>
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
 980:	05c70713          	addi	a4,a4,92 # 105c <symbols.0+0x44>
 984:	00e787b3          	add	a5,a5,a4
 988:	0007a783          	lw	a5,0(a5)
 98c:	00078067          	jr	a5
 990:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut>
 994:	f6dff06f          	j	900 <__neorv32_rte_core+0x80>
 998:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x4>
 99c:	f65ff06f          	j	900 <__neorv32_rte_core+0x80>
 9a0:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x8>
 9a4:	f5dff06f          	j	900 <__neorv32_rte_core+0x80>
 9a8:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0xc>
 9ac:	f55ff06f          	j	900 <__neorv32_rte_core+0x80>
 9b0:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x10>
 9b4:	f4dff06f          	j	900 <__neorv32_rte_core+0x80>
 9b8:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x14>
 9bc:	f45ff06f          	j	900 <__neorv32_rte_core+0x80>
 9c0:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x18>
 9c4:	f3dff06f          	j	900 <__neorv32_rte_core+0x80>
 9c8:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x1c>
 9cc:	f35ff06f          	j	900 <__neorv32_rte_core+0x80>
 9d0:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x20>
 9d4:	f2dff06f          	j	900 <__neorv32_rte_core+0x80>
 9d8:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x24>
 9dc:	f25ff06f          	j	900 <__neorv32_rte_core+0x80>
 9e0:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x28>
 9e4:	f1dff06f          	j	900 <__neorv32_rte_core+0x80>
 9e8:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x2c>
 9ec:	f15ff06f          	j	900 <__neorv32_rte_core+0x80>
 9f0:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x30>
 9f4:	f0dff06f          	j	900 <__neorv32_rte_core+0x80>
 9f8:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x34>
 9fc:	f05ff06f          	j	900 <__neorv32_rte_core+0x80>
 a00:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x38>
 a04:	efdff06f          	j	900 <__neorv32_rte_core+0x80>
 a08:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x3c>
 a0c:	ef5ff06f          	j	900 <__neorv32_rte_core+0x80>
 a10:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x40>
 a14:	eedff06f          	j	900 <__neorv32_rte_core+0x80>
 a18:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x44>
 a1c:	ee5ff06f          	j	900 <__neorv32_rte_core+0x80>
 a20:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x48>
 a24:	eddff06f          	j	900 <__neorv32_rte_core+0x80>
 a28:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x4c>
 a2c:	ed5ff06f          	j	900 <__neorv32_rte_core+0x80>
 a30:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x50>
 a34:	ecdff06f          	j	900 <__neorv32_rte_core+0x80>
 a38:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x54>
 a3c:	ec5ff06f          	j	900 <__neorv32_rte_core+0x80>
 a40:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x58>
 a44:	ebdff06f          	j	900 <__neorv32_rte_core+0x80>
 a48:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x5c>
 a4c:	eb5ff06f          	j	900 <__neorv32_rte_core+0x80>
 a50:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x60>
 a54:	eadff06f          	j	900 <__neorv32_rte_core+0x80>
 a58:	8741a783          	lw	a5,-1932(gp) # 80000074 <__neorv32_rte_vector_lut+0x64>
 a5c:	ea5ff06f          	j	900 <__neorv32_rte_core+0x80>
 a60:	8781a783          	lw	a5,-1928(gp) # 80000078 <__neorv32_rte_vector_lut+0x68>
 a64:	e9dff06f          	j	900 <__neorv32_rte_core+0x80>
 a68:	87c1a783          	lw	a5,-1924(gp) # 8000007c <__neorv32_rte_vector_lut+0x6c>
 a6c:	e95ff06f          	j	900 <__neorv32_rte_core+0x80>
 a70:	8801a783          	lw	a5,-1920(gp) # 80000080 <__neorv32_rte_vector_lut+0x70>
 a74:	e8dff06f          	j	900 <__neorv32_rte_core+0x80>
 a78:	0000                	unimp
 a7a:	0000                	unimp
 a7c:	0000                	unimp
 a7e:	0000                	unimp

00000a80 <__neorv32_rte_print_hex_word>:
 a80:	fe010113          	addi	sp,sp,-32
 a84:	01212823          	sw	s2,16(sp)
 a88:	00050913          	mv	s2,a0
 a8c:	00001537          	lui	a0,0x1
 a90:	00912a23          	sw	s1,20(sp)
 a94:	0d050513          	addi	a0,a0,208 # 10d0 <symbols.0+0xb8>
 a98:	000014b7          	lui	s1,0x1
 a9c:	00812c23          	sw	s0,24(sp)
 aa0:	01312623          	sw	s3,12(sp)
 aa4:	00112e23          	sw	ra,28(sp)
 aa8:	01c00413          	li	s0,28
 aac:	afdff0ef          	jal	ra,5a8 <neorv32_uart0_print>
 ab0:	2c448493          	addi	s1,s1,708 # 12c4 <hex_symbols.0>
 ab4:	ffc00993          	li	s3,-4
 ab8:	008957b3          	srl	a5,s2,s0
 abc:	00f7f793          	andi	a5,a5,15
 ac0:	00f487b3          	add	a5,s1,a5
 ac4:	0007c503          	lbu	a0,0(a5)
 ac8:	ffc40413          	addi	s0,s0,-4
 acc:	ac5ff0ef          	jal	ra,590 <neorv32_uart0_putc>
 ad0:	ff3414e3          	bne	s0,s3,ab8 <__neorv32_rte_print_hex_word+0x38>
 ad4:	01c12083          	lw	ra,28(sp)
 ad8:	01812403          	lw	s0,24(sp)
 adc:	01412483          	lw	s1,20(sp)
 ae0:	01012903          	lw	s2,16(sp)
 ae4:	00c12983          	lw	s3,12(sp)
 ae8:	02010113          	addi	sp,sp,32
 aec:	00008067          	ret

00000af0 <__neorv32_rte_debug_exc_handler>:
 af0:	ff010113          	addi	sp,sp,-16
 af4:	00112623          	sw	ra,12(sp)
 af8:	00812423          	sw	s0,8(sp)
 afc:	00912223          	sw	s1,4(sp)
 b00:	9d5ff0ef          	jal	ra,4d4 <neorv32_uart0_available>
 b04:	1c050863          	beqz	a0,cd4 <__neorv32_rte_debug_exc_handler+0x1e4>
 b08:	00001537          	lui	a0,0x1
 b0c:	0d450513          	addi	a0,a0,212 # 10d4 <symbols.0+0xbc>
 b10:	a99ff0ef          	jal	ra,5a8 <neorv32_uart0_print>
 b14:	34202473          	csrr	s0,mcause
 b18:	00900713          	li	a4,9
 b1c:	00f47793          	andi	a5,s0,15
 b20:	03078493          	addi	s1,a5,48
 b24:	00f77463          	bgeu	a4,a5,b2c <__neorv32_rte_debug_exc_handler+0x3c>
 b28:	05778493          	addi	s1,a5,87
 b2c:	00b00793          	li	a5,11
 b30:	0087ee63          	bltu	a5,s0,b4c <__neorv32_rte_debug_exc_handler+0x5c>
 b34:	00001737          	lui	a4,0x1
 b38:	00241793          	slli	a5,s0,0x2
 b3c:	29470713          	addi	a4,a4,660 # 1294 <symbols.0+0x27c>
 b40:	00e787b3          	add	a5,a5,a4
 b44:	0007a783          	lw	a5,0(a5)
 b48:	00078067          	jr	a5
 b4c:	800007b7          	lui	a5,0x80000
 b50:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 b54:	14e40e63          	beq	s0,a4,cb0 <__neorv32_rte_debug_exc_handler+0x1c0>
 b58:	02876a63          	bltu	a4,s0,b8c <__neorv32_rte_debug_exc_handler+0x9c>
 b5c:	00378713          	addi	a4,a5,3
 b60:	12e40c63          	beq	s0,a4,c98 <__neorv32_rte_debug_exc_handler+0x1a8>
 b64:	00778793          	addi	a5,a5,7
 b68:	12f40e63          	beq	s0,a5,ca4 <__neorv32_rte_debug_exc_handler+0x1b4>
 b6c:	00001537          	lui	a0,0x1
 b70:	23450513          	addi	a0,a0,564 # 1234 <symbols.0+0x21c>
 b74:	a35ff0ef          	jal	ra,5a8 <neorv32_uart0_print>
 b78:	00040513          	mv	a0,s0
 b7c:	f05ff0ef          	jal	ra,a80 <__neorv32_rte_print_hex_word>
 b80:	00100793          	li	a5,1
 b84:	08f40c63          	beq	s0,a5,c1c <__neorv32_rte_debug_exc_handler+0x12c>
 b88:	0280006f          	j	bb0 <__neorv32_rte_debug_exc_handler+0xc0>
 b8c:	ff07c793          	xori	a5,a5,-16
 b90:	00f407b3          	add	a5,s0,a5
 b94:	00f00713          	li	a4,15
 b98:	fcf76ae3          	bltu	a4,a5,b6c <__neorv32_rte_debug_exc_handler+0x7c>
 b9c:	00001537          	lui	a0,0x1
 ba0:	22450513          	addi	a0,a0,548 # 1224 <symbols.0+0x20c>
 ba4:	a05ff0ef          	jal	ra,5a8 <neorv32_uart0_print>
 ba8:	00048513          	mv	a0,s1
 bac:	9e5ff0ef          	jal	ra,590 <neorv32_uart0_putc>
 bb0:	ffd47413          	andi	s0,s0,-3
 bb4:	00500793          	li	a5,5
 bb8:	06f40263          	beq	s0,a5,c1c <__neorv32_rte_debug_exc_handler+0x12c>
 bbc:	00001537          	lui	a0,0x1
 bc0:	27850513          	addi	a0,a0,632 # 1278 <symbols.0+0x260>
 bc4:	9e5ff0ef          	jal	ra,5a8 <neorv32_uart0_print>
 bc8:	34002573          	csrr	a0,mscratch
 bcc:	eb5ff0ef          	jal	ra,a80 <__neorv32_rte_print_hex_word>
 bd0:	00001537          	lui	a0,0x1
 bd4:	28050513          	addi	a0,a0,640 # 1280 <symbols.0+0x268>
 bd8:	9d1ff0ef          	jal	ra,5a8 <neorv32_uart0_print>
 bdc:	34302573          	csrr	a0,mtval
 be0:	ea1ff0ef          	jal	ra,a80 <__neorv32_rte_print_hex_word>
 be4:	00812403          	lw	s0,8(sp)
 be8:	00c12083          	lw	ra,12(sp)
 bec:	00412483          	lw	s1,4(sp)
 bf0:	00001537          	lui	a0,0x1
 bf4:	28c50513          	addi	a0,a0,652 # 128c <symbols.0+0x274>
 bf8:	01010113          	addi	sp,sp,16
 bfc:	9adff06f          	j	5a8 <neorv32_uart0_print>
 c00:	00001537          	lui	a0,0x1
 c04:	0dc50513          	addi	a0,a0,220 # 10dc <symbols.0+0xc4>
 c08:	9a1ff0ef          	jal	ra,5a8 <neorv32_uart0_print>
 c0c:	fb1ff06f          	j	bbc <__neorv32_rte_debug_exc_handler+0xcc>
 c10:	00001537          	lui	a0,0x1
 c14:	0fc50513          	addi	a0,a0,252 # 10fc <symbols.0+0xe4>
 c18:	991ff0ef          	jal	ra,5a8 <neorv32_uart0_print>
 c1c:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 c20:	0a07d463          	bgez	a5,cc8 <__neorv32_rte_debug_exc_handler+0x1d8>
 c24:	0017f793          	andi	a5,a5,1
 c28:	08078a63          	beqz	a5,cbc <__neorv32_rte_debug_exc_handler+0x1cc>
 c2c:	00001537          	lui	a0,0x1
 c30:	24c50513          	addi	a0,a0,588 # 124c <symbols.0+0x234>
 c34:	fd5ff06f          	j	c08 <__neorv32_rte_debug_exc_handler+0x118>
 c38:	00001537          	lui	a0,0x1
 c3c:	11850513          	addi	a0,a0,280 # 1118 <symbols.0+0x100>
 c40:	fc9ff06f          	j	c08 <__neorv32_rte_debug_exc_handler+0x118>
 c44:	00001537          	lui	a0,0x1
 c48:	12c50513          	addi	a0,a0,300 # 112c <symbols.0+0x114>
 c4c:	fbdff06f          	j	c08 <__neorv32_rte_debug_exc_handler+0x118>
 c50:	00001537          	lui	a0,0x1
 c54:	13850513          	addi	a0,a0,312 # 1138 <symbols.0+0x120>
 c58:	fb1ff06f          	j	c08 <__neorv32_rte_debug_exc_handler+0x118>
 c5c:	00001537          	lui	a0,0x1
 c60:	15050513          	addi	a0,a0,336 # 1150 <symbols.0+0x138>
 c64:	fb5ff06f          	j	c18 <__neorv32_rte_debug_exc_handler+0x128>
 c68:	00001537          	lui	a0,0x1
 c6c:	16450513          	addi	a0,a0,356 # 1164 <symbols.0+0x14c>
 c70:	f99ff06f          	j	c08 <__neorv32_rte_debug_exc_handler+0x118>
 c74:	00001537          	lui	a0,0x1
 c78:	18050513          	addi	a0,a0,384 # 1180 <symbols.0+0x168>
 c7c:	f9dff06f          	j	c18 <__neorv32_rte_debug_exc_handler+0x128>
 c80:	00001537          	lui	a0,0x1
 c84:	19450513          	addi	a0,a0,404 # 1194 <symbols.0+0x17c>
 c88:	f81ff06f          	j	c08 <__neorv32_rte_debug_exc_handler+0x118>
 c8c:	00001537          	lui	a0,0x1
 c90:	1b450513          	addi	a0,a0,436 # 11b4 <symbols.0+0x19c>
 c94:	f75ff06f          	j	c08 <__neorv32_rte_debug_exc_handler+0x118>
 c98:	00001537          	lui	a0,0x1
 c9c:	1d450513          	addi	a0,a0,468 # 11d4 <symbols.0+0x1bc>
 ca0:	f69ff06f          	j	c08 <__neorv32_rte_debug_exc_handler+0x118>
 ca4:	00001537          	lui	a0,0x1
 ca8:	1f050513          	addi	a0,a0,496 # 11f0 <symbols.0+0x1d8>
 cac:	f5dff06f          	j	c08 <__neorv32_rte_debug_exc_handler+0x118>
 cb0:	00001537          	lui	a0,0x1
 cb4:	20850513          	addi	a0,a0,520 # 1208 <symbols.0+0x1f0>
 cb8:	f51ff06f          	j	c08 <__neorv32_rte_debug_exc_handler+0x118>
 cbc:	00001537          	lui	a0,0x1
 cc0:	25c50513          	addi	a0,a0,604 # 125c <symbols.0+0x244>
 cc4:	f45ff06f          	j	c08 <__neorv32_rte_debug_exc_handler+0x118>
 cc8:	00001537          	lui	a0,0x1
 ccc:	26c50513          	addi	a0,a0,620 # 126c <symbols.0+0x254>
 cd0:	f39ff06f          	j	c08 <__neorv32_rte_debug_exc_handler+0x118>
 cd4:	00c12083          	lw	ra,12(sp)
 cd8:	00812403          	lw	s0,8(sp)
 cdc:	00412483          	lw	s1,4(sp)
 ce0:	01010113          	addi	sp,sp,16
 ce4:	00008067          	ret

00000ce8 <neorv32_rte_exception_uninstall>:
 ce8:	01f00793          	li	a5,31
 cec:	02a7e263          	bltu	a5,a0,d10 <neorv32_rte_exception_uninstall+0x28>
 cf0:	81018793          	addi	a5,gp,-2032 # 80000010 <__neorv32_rte_vector_lut>
 cf4:	00251513          	slli	a0,a0,0x2
 cf8:	00a78533          	add	a0,a5,a0
 cfc:	000017b7          	lui	a5,0x1
 d00:	af078793          	addi	a5,a5,-1296 # af0 <__neorv32_rte_debug_exc_handler>
 d04:	00f52023          	sw	a5,0(a0)
 d08:	00000513          	li	a0,0
 d0c:	00008067          	ret
 d10:	00100513          	li	a0,1
 d14:	00008067          	ret

00000d18 <neorv32_rte_setup>:
 d18:	ff010113          	addi	sp,sp,-16
 d1c:	000017b7          	lui	a5,0x1
 d20:	00112623          	sw	ra,12(sp)
 d24:	00812423          	sw	s0,8(sp)
 d28:	00912223          	sw	s1,4(sp)
 d2c:	88078793          	addi	a5,a5,-1920 # 880 <__neorv32_rte_core>
 d30:	30579073          	csrw	mtvec,a5
 d34:	00000413          	li	s0,0
 d38:	01d00493          	li	s1,29
 d3c:	00040513          	mv	a0,s0
 d40:	00140413          	addi	s0,s0,1
 d44:	0ff47413          	andi	s0,s0,255
 d48:	fa1ff0ef          	jal	ra,ce8 <neorv32_rte_exception_uninstall>
 d4c:	fe9418e3          	bne	s0,s1,d3c <neorv32_rte_setup+0x24>
 d50:	00c12083          	lw	ra,12(sp)
 d54:	00812403          	lw	s0,8(sp)
 d58:	00412483          	lw	s1,4(sp)
 d5c:	01010113          	addi	sp,sp,16
 d60:	00008067          	ret

00000d64 <neorv32_gpio_available>:
 d64:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 d68:	01055513          	srli	a0,a0,0x10
 d6c:	00157513          	andi	a0,a0,1
 d70:	00008067          	ret

00000d74 <neorv32_gpio_pin_set>:
 d74:	00100793          	li	a5,1
 d78:	01f00713          	li	a4,31
 d7c:	00a797b3          	sll	a5,a5,a0
 d80:	00a74a63          	blt	a4,a0,d94 <neorv32_gpio_pin_set+0x20>
 d84:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 d88:	00f767b3          	or	a5,a4,a5
 d8c:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 d90:	00008067          	ret
 d94:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 d98:	00f767b3          	or	a5,a4,a5
 d9c:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 da0:	00008067          	ret

00000da4 <neorv32_gpio_pin_clr>:
 da4:	00100793          	li	a5,1
 da8:	00a797b3          	sll	a5,a5,a0
 dac:	01f00713          	li	a4,31
 db0:	fff7c793          	not	a5,a5
 db4:	00a74a63          	blt	a4,a0,dc8 <neorv32_gpio_pin_clr+0x24>
 db8:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 dbc:	00f777b3          	and	a5,a4,a5
 dc0:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 dc4:	00008067          	ret
 dc8:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 dcc:	00f777b3          	and	a5,a4,a5
 dd0:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
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
