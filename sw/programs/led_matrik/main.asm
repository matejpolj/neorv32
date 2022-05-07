
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
  c0:	82c18593          	addi	a1,gp,-2004 # 8000002c <cout>
  c4:	8a418613          	addi	a2,gp,-1884 # 800000a4 <__BSS_END__>

000000c8 <__crt0_clear_bss_loop>:
  c8:	00c5d863          	bge	a1,a2,d8 <__crt0_clear_bss_loop_end>
  cc:	00058023          	sb	zero,0(a1)
  d0:	00158593          	addi	a1,a1,1
  d4:	ff5ff06f          	j	c8 <__crt0_clear_bss_loop>

000000d8 <__crt0_clear_bss_loop_end>:
  d8:	00001597          	auipc	a1,0x1
  dc:	0a458593          	addi	a1,a1,164 # 117c <__crt0_copy_data_src_begin>
  e0:	80000617          	auipc	a2,0x80000
  e4:	f2060613          	addi	a2,a2,-224 # 80000000 <__ctr0_io_space_begin+0x80000200>
  e8:	82c18693          	addi	a3,gp,-2004 # 8000002c <cout>

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
 17c:	ff010113          	addi	sp,sp,-16
 180:	00000613          	li	a2,0
 184:	00000593          	li	a1,0
 188:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3984>
 18c:	00112623          	sw	ra,12(sp)
 190:	374000ef          	jal	ra,504 <neorv32_uart0_setup>
 194:	3b1000ef          	jal	ra,d44 <neorv32_gpio_available>
 198:	04050c63          	beqz	a0,1f0 <main+0x78>
 19c:	34d000ef          	jal	ra,ce8 <neorv32_rte_setup>
 1a0:	00001537          	lui	a0,0x1
 1a4:	e9c50513          	addi	a0,a0,-356 # e9c <__etext+0x30>
 1a8:	420000ef          	jal	ra,5c8 <neorv32_uart0_print>
 1ac:	30400593          	li	a1,772
 1b0:	01900513          	li	a0,25
 1b4:	2dd000ef          	jal	ra,c90 <neorv32_rte_exception_install>
 1b8:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 1bc:	fe002603          	lw	a2,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 1c0:	00100593          	li	a1,1
 1c4:	00200513          	li	a0,2
 1c8:	00465613          	srli	a2,a2,0x4
 1cc:	188000ef          	jal	ra,354 <neorv32_gptmr_setup>
 1d0:	01c00513          	li	a0,28
 1d4:	60c000ef          	jal	ra,7e0 <neorv32_cpu_irq_enable>
 1d8:	30046073          	csrsi	mstatus,8
 1dc:	01600513          	li	a0,22
 1e0:	3a5000ef          	jal	ra,d84 <neorv32_gpio_pin_clr>
 1e4:	01700513          	li	a0,23
 1e8:	36d000ef          	jal	ra,d54 <neorv32_gpio_pin_set>
 1ec:	0000006f          	j	1ec <main+0x74>
 1f0:	00001537          	lui	a0,0x1
 1f4:	e7850513          	addi	a0,a0,-392 # e78 <__etext+0xc>
 1f8:	3d0000ef          	jal	ra,5c8 <neorv32_uart0_print>
 1fc:	00c12083          	lw	ra,12(sp)
 200:	00100513          	li	a0,1
 204:	01010113          	addi	sp,sp,16
 208:	00008067          	ret

0000020c <displaySymbol>:
 20c:	fd010113          	addi	sp,sp,-48
 210:	02812423          	sw	s0,40(sp)
 214:	03212023          	sw	s2,32(sp)
 218:	01312e23          	sw	s3,28(sp)
 21c:	01412c23          	sw	s4,24(sp)
 220:	01512a23          	sw	s5,20(sp)
 224:	01612823          	sw	s6,16(sp)
 228:	01712623          	sw	s7,12(sp)
 22c:	02112623          	sw	ra,44(sp)
 230:	02912223          	sw	s1,36(sp)
 234:	01812423          	sw	s8,8(sp)
 238:	00058413          	mv	s0,a1
 23c:	00050913          	mv	s2,a0
 240:	0ff00993          	li	s3,255
 244:	ffd58a93          	addi	s5,a1,-3
 248:	00100b93          	li	s7,1
 24c:	00858b13          	addi	s6,a1,8
 250:	0f800a13          	li	s4,248
 254:	00040493          	mv	s1,s0
 258:	40940733          	sub	a4,s0,s1
 25c:	00eb97b3          	sll	a5,s7,a4
 260:	0137f7b3          	and	a5,a5,s3
 264:	40e7d7b3          	sra	a5,a5,a4
 268:	0024c503          	lbu	a0,2(s1)
 26c:	08078063          	beqz	a5,2ec <displaySymbol+0xe0>
 270:	2e5000ef          	jal	ra,d54 <neorv32_gpio_pin_set>
 274:	fff48493          	addi	s1,s1,-1
 278:	fe9a90e3          	bne	s5,s1,258 <displaySymbol+0x4c>
 27c:	00340493          	addi	s1,s0,3
 280:	00090c13          	mv	s8,s2
 284:	000c4783          	lbu	a5,0(s8)
 288:	0004c503          	lbu	a0,0(s1)
 28c:	06078463          	beqz	a5,2f4 <displaySymbol+0xe8>
 290:	2c5000ef          	jal	ra,d54 <neorv32_gpio_pin_set>
 294:	000c4783          	lbu	a5,0(s8)
 298:	0004c503          	lbu	a0,0(s1)
 29c:	06078063          	beqz	a5,2fc <displaySymbol+0xf0>
 2a0:	2e5000ef          	jal	ra,d84 <neorv32_gpio_pin_clr>
 2a4:	00148493          	addi	s1,s1,1
 2a8:	001c0c13          	addi	s8,s8,1
 2ac:	fc9b1ce3          	bne	s6,s1,284 <displaySymbol+0x78>
 2b0:	fff98993          	addi	s3,s3,-1
 2b4:	00590913          	addi	s2,s2,5
 2b8:	f9499ee3          	bne	s3,s4,254 <displaySymbol+0x48>
 2bc:	02c12083          	lw	ra,44(sp)
 2c0:	02812403          	lw	s0,40(sp)
 2c4:	02412483          	lw	s1,36(sp)
 2c8:	02012903          	lw	s2,32(sp)
 2cc:	01c12983          	lw	s3,28(sp)
 2d0:	01812a03          	lw	s4,24(sp)
 2d4:	01412a83          	lw	s5,20(sp)
 2d8:	01012b03          	lw	s6,16(sp)
 2dc:	00c12b83          	lw	s7,12(sp)
 2e0:	00812c03          	lw	s8,8(sp)
 2e4:	03010113          	addi	sp,sp,48
 2e8:	00008067          	ret
 2ec:	299000ef          	jal	ra,d84 <neorv32_gpio_pin_clr>
 2f0:	f85ff06f          	j	274 <displaySymbol+0x68>
 2f4:	291000ef          	jal	ra,d84 <neorv32_gpio_pin_clr>
 2f8:	f9dff06f          	j	294 <displaySymbol+0x88>
 2fc:	259000ef          	jal	ra,d54 <neorv32_gpio_pin_set>
 300:	fa5ff06f          	j	2a4 <displaySymbol+0x98>

00000304 <gptmr_firq_handler>:
 304:	ff010113          	addi	sp,sp,-16
 308:	f00007b7          	lui	a5,0xf0000
 30c:	00112623          	sw	ra,12(sp)
 310:	fff78793          	addi	a5,a5,-1 # efffffff <__ctr0_io_space_begin+0xf00001ff>
 314:	34479073          	csrw	mip,a5
 318:	02e00513          	li	a0,46
 31c:	294000ef          	jal	ra,5b0 <neorv32_uart0_putc>
 320:	fc000793          	li	a5,-64
 324:	00c7a683          	lw	a3,12(a5)
 328:	0087a603          	lw	a2,8(a5)
 32c:	82c1c703          	lbu	a4,-2004(gp) # 8000002c <cout>
 330:	00001537          	lui	a0,0x1
 334:	e6c50513          	addi	a0,a0,-404 # e6c <__etext>
 338:	2e8000ef          	jal	ra,620 <neorv32_uart0_printf>
 33c:	00c12083          	lw	ra,12(sp)
 340:	80000537          	lui	a0,0x80000
 344:	82418593          	addi	a1,gp,-2012 # 80000024 <pins>
 348:	00050513          	mv	a0,a0
 34c:	01010113          	addi	sp,sp,16
 350:	ebdff06f          	j	20c <displaySymbol>

00000354 <neorv32_gptmr_setup>:
 354:	f6000793          	li	a5,-160
 358:	00757513          	andi	a0,a0,7
 35c:	0015f593          	andi	a1,a1,1
 360:	0007a023          	sw	zero,0(a5)
 364:	00151513          	slli	a0,a0,0x1
 368:	00459593          	slli	a1,a1,0x4
 36c:	00c7a223          	sw	a2,4(a5)
 370:	00b56533          	or	a0,a0,a1
 374:	0007a423          	sw	zero,8(a5)
 378:	00156513          	ori	a0,a0,1
 37c:	00a7a023          	sw	a0,0(a5)
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
 3bc:	eb0a0a13          	addi	s4,s4,-336 # eb0 <numbers.1>
 3c0:	00a00593          	li	a1,10
 3c4:	00048513          	mv	a0,s1
 3c8:	241000ef          	jal	ra,e08 <__umodsi3>
 3cc:	00aa0533          	add	a0,s4,a0
 3d0:	00054783          	lbu	a5,0(a0) # 80000000 <__ctr0_io_space_begin+0x80000200>
 3d4:	01390ab3          	add	s5,s2,s3
 3d8:	00048513          	mv	a0,s1
 3dc:	00fa8023          	sb	a5,0(s5)
 3e0:	00a00593          	li	a1,10
 3e4:	1dd000ef          	jal	ra,dc0 <__udivsi3>
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
 498:	ebc60613          	addi	a2,a2,-324 # ebc <symbols.0>
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

000004c8 <__neorv32_uart_touppercase.constprop.0>:
 4c8:	00b50693          	addi	a3,a0,11
 4cc:	01900613          	li	a2,25
 4d0:	00054783          	lbu	a5,0(a0)
 4d4:	f9f78713          	addi	a4,a5,-97
 4d8:	0ff77713          	andi	a4,a4,255
 4dc:	00e66663          	bltu	a2,a4,4e8 <__neorv32_uart_touppercase.constprop.0+0x20>
 4e0:	fe078793          	addi	a5,a5,-32
 4e4:	00f50023          	sb	a5,0(a0)
 4e8:	00150513          	addi	a0,a0,1
 4ec:	fed512e3          	bne	a0,a3,4d0 <__neorv32_uart_touppercase.constprop.0+0x8>
 4f0:	00008067          	ret

000004f4 <neorv32_uart0_available>:
 4f4:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 4f8:	01255513          	srli	a0,a0,0x12
 4fc:	00157513          	andi	a0,a0,1
 500:	00008067          	ret

00000504 <neorv32_uart0_setup>:
 504:	ff010113          	addi	sp,sp,-16
 508:	00812423          	sw	s0,8(sp)
 50c:	00912223          	sw	s1,4(sp)
 510:	00112623          	sw	ra,12(sp)
 514:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 518:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 51c:	00058413          	mv	s0,a1
 520:	00151593          	slli	a1,a0,0x1
 524:	00078513          	mv	a0,a5
 528:	00060493          	mv	s1,a2
 52c:	095000ef          	jal	ra,dc0 <__udivsi3>
 530:	01051513          	slli	a0,a0,0x10
 534:	000017b7          	lui	a5,0x1
 538:	01055513          	srli	a0,a0,0x10
 53c:	00000713          	li	a4,0
 540:	ffe78793          	addi	a5,a5,-2 # ffe <symbols.0+0x142>
 544:	04a7e463          	bltu	a5,a0,58c <neorv32_uart0_setup+0x88>
 548:	0034f793          	andi	a5,s1,3
 54c:	00347413          	andi	s0,s0,3
 550:	fff50513          	addi	a0,a0,-1
 554:	01479793          	slli	a5,a5,0x14
 558:	01641413          	slli	s0,s0,0x16
 55c:	00f567b3          	or	a5,a0,a5
 560:	0087e7b3          	or	a5,a5,s0
 564:	01871713          	slli	a4,a4,0x18
 568:	00c12083          	lw	ra,12(sp)
 56c:	00812403          	lw	s0,8(sp)
 570:	00e7e7b3          	or	a5,a5,a4
 574:	10000737          	lui	a4,0x10000
 578:	00e7e7b3          	or	a5,a5,a4
 57c:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 580:	00412483          	lw	s1,4(sp)
 584:	01010113          	addi	sp,sp,16
 588:	00008067          	ret
 58c:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffee82>
 590:	0fd6f693          	andi	a3,a3,253
 594:	00069a63          	bnez	a3,5a8 <neorv32_uart0_setup+0xa4>
 598:	00355513          	srli	a0,a0,0x3
 59c:	00170713          	addi	a4,a4,1
 5a0:	0ff77713          	andi	a4,a4,255
 5a4:	fa1ff06f          	j	544 <neorv32_uart0_setup+0x40>
 5a8:	00155513          	srli	a0,a0,0x1
 5ac:	ff1ff06f          	j	59c <neorv32_uart0_setup+0x98>

000005b0 <neorv32_uart0_putc>:
 5b0:	00040737          	lui	a4,0x40
 5b4:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 5b8:	00e7f7b3          	and	a5,a5,a4
 5bc:	fe079ce3          	bnez	a5,5b4 <neorv32_uart0_putc+0x4>
 5c0:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 5c4:	00008067          	ret

000005c8 <neorv32_uart0_print>:
 5c8:	ff010113          	addi	sp,sp,-16
 5cc:	00812423          	sw	s0,8(sp)
 5d0:	01212023          	sw	s2,0(sp)
 5d4:	00112623          	sw	ra,12(sp)
 5d8:	00912223          	sw	s1,4(sp)
 5dc:	00050413          	mv	s0,a0
 5e0:	00a00913          	li	s2,10
 5e4:	00044483          	lbu	s1,0(s0)
 5e8:	00140413          	addi	s0,s0,1
 5ec:	00049e63          	bnez	s1,608 <neorv32_uart0_print+0x40>
 5f0:	00c12083          	lw	ra,12(sp)
 5f4:	00812403          	lw	s0,8(sp)
 5f8:	00412483          	lw	s1,4(sp)
 5fc:	00012903          	lw	s2,0(sp)
 600:	01010113          	addi	sp,sp,16
 604:	00008067          	ret
 608:	01249663          	bne	s1,s2,614 <neorv32_uart0_print+0x4c>
 60c:	00d00513          	li	a0,13
 610:	fa1ff0ef          	jal	ra,5b0 <neorv32_uart0_putc>
 614:	00048513          	mv	a0,s1
 618:	f99ff0ef          	jal	ra,5b0 <neorv32_uart0_putc>
 61c:	fc9ff06f          	j	5e4 <neorv32_uart0_print+0x1c>

00000620 <neorv32_uart0_printf>:
 620:	fa010113          	addi	sp,sp,-96
 624:	04f12a23          	sw	a5,84(sp)
 628:	04410793          	addi	a5,sp,68
 62c:	02812c23          	sw	s0,56(sp)
 630:	03212823          	sw	s2,48(sp)
 634:	03312623          	sw	s3,44(sp)
 638:	03512223          	sw	s5,36(sp)
 63c:	03612023          	sw	s6,32(sp)
 640:	01712e23          	sw	s7,28(sp)
 644:	01812c23          	sw	s8,24(sp)
 648:	01912a23          	sw	s9,20(sp)
 64c:	02112e23          	sw	ra,60(sp)
 650:	02912a23          	sw	s1,52(sp)
 654:	03412423          	sw	s4,40(sp)
 658:	00050413          	mv	s0,a0
 65c:	04b12223          	sw	a1,68(sp)
 660:	04c12423          	sw	a2,72(sp)
 664:	04d12623          	sw	a3,76(sp)
 668:	04e12823          	sw	a4,80(sp)
 66c:	05012c23          	sw	a6,88(sp)
 670:	05112e23          	sw	a7,92(sp)
 674:	00f12023          	sw	a5,0(sp)
 678:	02500a93          	li	s5,37
 67c:	00a00b13          	li	s6,10
 680:	07000913          	li	s2,112
 684:	05800993          	li	s3,88
 688:	07500b93          	li	s7,117
 68c:	07800c13          	li	s8,120
 690:	07300c93          	li	s9,115
 694:	00044483          	lbu	s1,0(s0)
 698:	02049c63          	bnez	s1,6d0 <neorv32_uart0_printf+0xb0>
 69c:	03c12083          	lw	ra,60(sp)
 6a0:	03812403          	lw	s0,56(sp)
 6a4:	03412483          	lw	s1,52(sp)
 6a8:	03012903          	lw	s2,48(sp)
 6ac:	02c12983          	lw	s3,44(sp)
 6b0:	02812a03          	lw	s4,40(sp)
 6b4:	02412a83          	lw	s5,36(sp)
 6b8:	02012b03          	lw	s6,32(sp)
 6bc:	01c12b83          	lw	s7,28(sp)
 6c0:	01812c03          	lw	s8,24(sp)
 6c4:	01412c83          	lw	s9,20(sp)
 6c8:	06010113          	addi	sp,sp,96
 6cc:	00008067          	ret
 6d0:	0f549c63          	bne	s1,s5,7c8 <neorv32_uart0_printf+0x1a8>
 6d4:	00240a13          	addi	s4,s0,2
 6d8:	00144403          	lbu	s0,1(s0)
 6dc:	0d240263          	beq	s0,s2,7a0 <neorv32_uart0_printf+0x180>
 6e0:	06896463          	bltu	s2,s0,748 <neorv32_uart0_printf+0x128>
 6e4:	06300793          	li	a5,99
 6e8:	08f40463          	beq	s0,a5,770 <neorv32_uart0_printf+0x150>
 6ec:	0087ec63          	bltu	a5,s0,704 <neorv32_uart0_printf+0xe4>
 6f0:	0b340863          	beq	s0,s3,7a0 <neorv32_uart0_printf+0x180>
 6f4:	02500513          	li	a0,37
 6f8:	eb9ff0ef          	jal	ra,5b0 <neorv32_uart0_putc>
 6fc:	00040513          	mv	a0,s0
 700:	0800006f          	j	780 <neorv32_uart0_printf+0x160>
 704:	06400793          	li	a5,100
 708:	00f40663          	beq	s0,a5,714 <neorv32_uart0_printf+0xf4>
 70c:	06900793          	li	a5,105
 710:	fef412e3          	bne	s0,a5,6f4 <neorv32_uart0_printf+0xd4>
 714:	00012783          	lw	a5,0(sp)
 718:	0007a403          	lw	s0,0(a5)
 71c:	00478713          	addi	a4,a5,4
 720:	00e12023          	sw	a4,0(sp)
 724:	00045863          	bgez	s0,734 <neorv32_uart0_printf+0x114>
 728:	02d00513          	li	a0,45
 72c:	40800433          	neg	s0,s0
 730:	e81ff0ef          	jal	ra,5b0 <neorv32_uart0_putc>
 734:	00410593          	addi	a1,sp,4
 738:	00040513          	mv	a0,s0
 73c:	c49ff0ef          	jal	ra,384 <__neorv32_uart_itoa>
 740:	00410513          	addi	a0,sp,4
 744:	0200006f          	j	764 <neorv32_uart0_printf+0x144>
 748:	05740063          	beq	s0,s7,788 <neorv32_uart0_printf+0x168>
 74c:	05840a63          	beq	s0,s8,7a0 <neorv32_uart0_printf+0x180>
 750:	fb9412e3          	bne	s0,s9,6f4 <neorv32_uart0_printf+0xd4>
 754:	00012783          	lw	a5,0(sp)
 758:	0007a503          	lw	a0,0(a5)
 75c:	00478713          	addi	a4,a5,4
 760:	00e12023          	sw	a4,0(sp)
 764:	e65ff0ef          	jal	ra,5c8 <neorv32_uart0_print>
 768:	000a0413          	mv	s0,s4
 76c:	f29ff06f          	j	694 <neorv32_uart0_printf+0x74>
 770:	00012783          	lw	a5,0(sp)
 774:	0007c503          	lbu	a0,0(a5)
 778:	00478713          	addi	a4,a5,4
 77c:	00e12023          	sw	a4,0(sp)
 780:	e31ff0ef          	jal	ra,5b0 <neorv32_uart0_putc>
 784:	fe5ff06f          	j	768 <neorv32_uart0_printf+0x148>
 788:	00012783          	lw	a5,0(sp)
 78c:	00410593          	addi	a1,sp,4
 790:	00478713          	addi	a4,a5,4
 794:	0007a503          	lw	a0,0(a5)
 798:	00e12023          	sw	a4,0(sp)
 79c:	fa1ff06f          	j	73c <neorv32_uart0_printf+0x11c>
 7a0:	00012783          	lw	a5,0(sp)
 7a4:	00410593          	addi	a1,sp,4
 7a8:	0007a503          	lw	a0,0(a5)
 7ac:	00478713          	addi	a4,a5,4
 7b0:	00e12023          	sw	a4,0(sp)
 7b4:	cd9ff0ef          	jal	ra,48c <__neorv32_uart_tohex>
 7b8:	f93414e3          	bne	s0,s3,740 <neorv32_uart0_printf+0x120>
 7bc:	00410513          	addi	a0,sp,4
 7c0:	d09ff0ef          	jal	ra,4c8 <__neorv32_uart_touppercase.constprop.0>
 7c4:	f7dff06f          	j	740 <neorv32_uart0_printf+0x120>
 7c8:	01649663          	bne	s1,s6,7d4 <neorv32_uart0_printf+0x1b4>
 7cc:	00d00513          	li	a0,13
 7d0:	de1ff0ef          	jal	ra,5b0 <neorv32_uart0_putc>
 7d4:	00140a13          	addi	s4,s0,1
 7d8:	00048513          	mv	a0,s1
 7dc:	fa5ff06f          	j	780 <neorv32_uart0_printf+0x160>

000007e0 <neorv32_cpu_irq_enable>:
 7e0:	01f00793          	li	a5,31
 7e4:	00050713          	mv	a4,a0
 7e8:	02a7e663          	bltu	a5,a0,814 <neorv32_cpu_irq_enable+0x34>
 7ec:	ffff17b7          	lui	a5,0xffff1
 7f0:	88878793          	addi	a5,a5,-1912 # ffff0888 <__ctr0_io_space_begin+0xffff0a88>
 7f4:	00a7d7b3          	srl	a5,a5,a0
 7f8:	0017f793          	andi	a5,a5,1
 7fc:	00100513          	li	a0,1
 800:	00078c63          	beqz	a5,818 <neorv32_cpu_irq_enable+0x38>
 804:	00e51533          	sll	a0,a0,a4
 808:	30452073          	csrs	mie,a0
 80c:	00000513          	li	a0,0
 810:	00008067          	ret
 814:	00100513          	li	a0,1
 818:	00008067          	ret

0000081c <__neorv32_rte_core>:
 81c:	fc010113          	addi	sp,sp,-64
 820:	02112e23          	sw	ra,60(sp)
 824:	02512c23          	sw	t0,56(sp)
 828:	02612a23          	sw	t1,52(sp)
 82c:	02712823          	sw	t2,48(sp)
 830:	02a12623          	sw	a0,44(sp)
 834:	02b12423          	sw	a1,40(sp)
 838:	02c12223          	sw	a2,36(sp)
 83c:	02d12023          	sw	a3,32(sp)
 840:	00e12e23          	sw	a4,28(sp)
 844:	00f12c23          	sw	a5,24(sp)
 848:	01012a23          	sw	a6,20(sp)
 84c:	01112823          	sw	a7,16(sp)
 850:	01c12623          	sw	t3,12(sp)
 854:	01d12423          	sw	t4,8(sp)
 858:	01e12223          	sw	t5,4(sp)
 85c:	01f12023          	sw	t6,0(sp)
 860:	341026f3          	csrr	a3,mepc
 864:	34069073          	csrw	mscratch,a3
 868:	342027f3          	csrr	a5,mcause
 86c:	0607c063          	bltz	a5,8cc <__neorv32_rte_core+0xb0>
 870:	0006d703          	lhu	a4,0(a3)
 874:	01071713          	slli	a4,a4,0x10
 878:	01075713          	srli	a4,a4,0x10
 87c:	00468593          	addi	a1,a3,4
 880:	30102673          	csrr	a2,misa
 884:	00467613          	andi	a2,a2,4
 888:	00060a63          	beqz	a2,89c <__neorv32_rte_core+0x80>
 88c:	00377713          	andi	a4,a4,3
 890:	00300613          	li	a2,3
 894:	00c70463          	beq	a4,a2,89c <__neorv32_rte_core+0x80>
 898:	00268593          	addi	a1,a3,2
 89c:	34159073          	csrw	mepc,a1
 8a0:	00b00713          	li	a4,11
 8a4:	00f77863          	bgeu	a4,a5,8b4 <__neorv32_rte_core+0x98>
 8a8:	000017b7          	lui	a5,0x1
 8ac:	a9878793          	addi	a5,a5,-1384 # a98 <__neorv32_rte_debug_exc_handler>
 8b0:	04c0006f          	j	8fc <__neorv32_rte_core+0xe0>
 8b4:	00001737          	lui	a4,0x1
 8b8:	00279793          	slli	a5,a5,0x2
 8bc:	ed070713          	addi	a4,a4,-304 # ed0 <symbols.0+0x14>
 8c0:	00e787b3          	add	a5,a5,a4
 8c4:	0007a783          	lw	a5,0(a5)
 8c8:	00078067          	jr	a5
 8cc:	80000737          	lui	a4,0x80000
 8d0:	ffd74713          	xori	a4,a4,-3
 8d4:	00e787b3          	add	a5,a5,a4
 8d8:	01c00713          	li	a4,28
 8dc:	fcf766e3          	bltu	a4,a5,8a8 <__neorv32_rte_core+0x8c>
 8e0:	00001737          	lui	a4,0x1
 8e4:	00279793          	slli	a5,a5,0x2
 8e8:	f0070713          	addi	a4,a4,-256 # f00 <symbols.0+0x44>
 8ec:	00e787b3          	add	a5,a5,a4
 8f0:	0007a783          	lw	a5,0(a5)
 8f4:	00078067          	jr	a5
 8f8:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut>
 8fc:	000780e7          	jalr	a5
 900:	03c12083          	lw	ra,60(sp)
 904:	03812283          	lw	t0,56(sp)
 908:	03412303          	lw	t1,52(sp)
 90c:	03012383          	lw	t2,48(sp)
 910:	02c12503          	lw	a0,44(sp)
 914:	02812583          	lw	a1,40(sp)
 918:	02412603          	lw	a2,36(sp)
 91c:	02012683          	lw	a3,32(sp)
 920:	01c12703          	lw	a4,28(sp)
 924:	01812783          	lw	a5,24(sp)
 928:	01412803          	lw	a6,20(sp)
 92c:	01012883          	lw	a7,16(sp)
 930:	00c12e03          	lw	t3,12(sp)
 934:	00812e83          	lw	t4,8(sp)
 938:	00412f03          	lw	t5,4(sp)
 93c:	00012f83          	lw	t6,0(sp)
 940:	04010113          	addi	sp,sp,64
 944:	30200073          	mret
 948:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x4>
 94c:	fb1ff06f          	j	8fc <__neorv32_rte_core+0xe0>
 950:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x8>
 954:	fa9ff06f          	j	8fc <__neorv32_rte_core+0xe0>
 958:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0xc>
 95c:	fa1ff06f          	j	8fc <__neorv32_rte_core+0xe0>
 960:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x10>
 964:	f99ff06f          	j	8fc <__neorv32_rte_core+0xe0>
 968:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x14>
 96c:	f91ff06f          	j	8fc <__neorv32_rte_core+0xe0>
 970:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x18>
 974:	f89ff06f          	j	8fc <__neorv32_rte_core+0xe0>
 978:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x1c>
 97c:	f81ff06f          	j	8fc <__neorv32_rte_core+0xe0>
 980:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x20>
 984:	f79ff06f          	j	8fc <__neorv32_rte_core+0xe0>
 988:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x24>
 98c:	f71ff06f          	j	8fc <__neorv32_rte_core+0xe0>
 990:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x28>
 994:	f69ff06f          	j	8fc <__neorv32_rte_core+0xe0>
 998:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x2c>
 99c:	f61ff06f          	j	8fc <__neorv32_rte_core+0xe0>
 9a0:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x30>
 9a4:	f59ff06f          	j	8fc <__neorv32_rte_core+0xe0>
 9a8:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x34>
 9ac:	f51ff06f          	j	8fc <__neorv32_rte_core+0xe0>
 9b0:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x38>
 9b4:	f49ff06f          	j	8fc <__neorv32_rte_core+0xe0>
 9b8:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x3c>
 9bc:	f41ff06f          	j	8fc <__neorv32_rte_core+0xe0>
 9c0:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x40>
 9c4:	f39ff06f          	j	8fc <__neorv32_rte_core+0xe0>
 9c8:	8741a783          	lw	a5,-1932(gp) # 80000074 <__neorv32_rte_vector_lut+0x44>
 9cc:	f31ff06f          	j	8fc <__neorv32_rte_core+0xe0>
 9d0:	8781a783          	lw	a5,-1928(gp) # 80000078 <__neorv32_rte_vector_lut+0x48>
 9d4:	f29ff06f          	j	8fc <__neorv32_rte_core+0xe0>
 9d8:	87c1a783          	lw	a5,-1924(gp) # 8000007c <__neorv32_rte_vector_lut+0x4c>
 9dc:	f21ff06f          	j	8fc <__neorv32_rte_core+0xe0>
 9e0:	8801a783          	lw	a5,-1920(gp) # 80000080 <__neorv32_rte_vector_lut+0x50>
 9e4:	f19ff06f          	j	8fc <__neorv32_rte_core+0xe0>
 9e8:	8841a783          	lw	a5,-1916(gp) # 80000084 <__neorv32_rte_vector_lut+0x54>
 9ec:	f11ff06f          	j	8fc <__neorv32_rte_core+0xe0>
 9f0:	8881a783          	lw	a5,-1912(gp) # 80000088 <__neorv32_rte_vector_lut+0x58>
 9f4:	f09ff06f          	j	8fc <__neorv32_rte_core+0xe0>
 9f8:	88c1a783          	lw	a5,-1908(gp) # 8000008c <__neorv32_rte_vector_lut+0x5c>
 9fc:	f01ff06f          	j	8fc <__neorv32_rte_core+0xe0>
 a00:	8901a783          	lw	a5,-1904(gp) # 80000090 <__neorv32_rte_vector_lut+0x60>
 a04:	ef9ff06f          	j	8fc <__neorv32_rte_core+0xe0>
 a08:	8941a783          	lw	a5,-1900(gp) # 80000094 <__neorv32_rte_vector_lut+0x64>
 a0c:	ef1ff06f          	j	8fc <__neorv32_rte_core+0xe0>
 a10:	8981a783          	lw	a5,-1896(gp) # 80000098 <__neorv32_rte_vector_lut+0x68>
 a14:	ee9ff06f          	j	8fc <__neorv32_rte_core+0xe0>
 a18:	89c1a783          	lw	a5,-1892(gp) # 8000009c <__neorv32_rte_vector_lut+0x6c>
 a1c:	ee1ff06f          	j	8fc <__neorv32_rte_core+0xe0>
 a20:	8a01a783          	lw	a5,-1888(gp) # 800000a0 <__neorv32_rte_vector_lut+0x70>
 a24:	ed9ff06f          	j	8fc <__neorv32_rte_core+0xe0>

00000a28 <__neorv32_rte_print_hex_word>:
 a28:	fe010113          	addi	sp,sp,-32
 a2c:	01212823          	sw	s2,16(sp)
 a30:	00050913          	mv	s2,a0
 a34:	00001537          	lui	a0,0x1
 a38:	00912a23          	sw	s1,20(sp)
 a3c:	f7450513          	addi	a0,a0,-140 # f74 <symbols.0+0xb8>
 a40:	000014b7          	lui	s1,0x1
 a44:	00812c23          	sw	s0,24(sp)
 a48:	01312623          	sw	s3,12(sp)
 a4c:	00112e23          	sw	ra,28(sp)
 a50:	01c00413          	li	s0,28
 a54:	b75ff0ef          	jal	ra,5c8 <neorv32_uart0_print>
 a58:	16c48493          	addi	s1,s1,364 # 116c <hex_symbols.0>
 a5c:	ffc00993          	li	s3,-4
 a60:	008957b3          	srl	a5,s2,s0
 a64:	00f7f793          	andi	a5,a5,15
 a68:	00f487b3          	add	a5,s1,a5
 a6c:	0007c503          	lbu	a0,0(a5)
 a70:	ffc40413          	addi	s0,s0,-4
 a74:	b3dff0ef          	jal	ra,5b0 <neorv32_uart0_putc>
 a78:	ff3414e3          	bne	s0,s3,a60 <__neorv32_rte_print_hex_word+0x38>
 a7c:	01c12083          	lw	ra,28(sp)
 a80:	01812403          	lw	s0,24(sp)
 a84:	01412483          	lw	s1,20(sp)
 a88:	01012903          	lw	s2,16(sp)
 a8c:	00c12983          	lw	s3,12(sp)
 a90:	02010113          	addi	sp,sp,32
 a94:	00008067          	ret

00000a98 <__neorv32_rte_debug_exc_handler>:
 a98:	ff010113          	addi	sp,sp,-16
 a9c:	00112623          	sw	ra,12(sp)
 aa0:	00812423          	sw	s0,8(sp)
 aa4:	00912223          	sw	s1,4(sp)
 aa8:	a4dff0ef          	jal	ra,4f4 <neorv32_uart0_available>
 aac:	1c050863          	beqz	a0,c7c <__neorv32_rte_debug_exc_handler+0x1e4>
 ab0:	00001537          	lui	a0,0x1
 ab4:	f7850513          	addi	a0,a0,-136 # f78 <symbols.0+0xbc>
 ab8:	b11ff0ef          	jal	ra,5c8 <neorv32_uart0_print>
 abc:	34202473          	csrr	s0,mcause
 ac0:	00900713          	li	a4,9
 ac4:	00f47793          	andi	a5,s0,15
 ac8:	03078493          	addi	s1,a5,48
 acc:	00f77463          	bgeu	a4,a5,ad4 <__neorv32_rte_debug_exc_handler+0x3c>
 ad0:	05778493          	addi	s1,a5,87
 ad4:	00b00793          	li	a5,11
 ad8:	0087ee63          	bltu	a5,s0,af4 <__neorv32_rte_debug_exc_handler+0x5c>
 adc:	00001737          	lui	a4,0x1
 ae0:	00241793          	slli	a5,s0,0x2
 ae4:	13c70713          	addi	a4,a4,316 # 113c <symbols.0+0x280>
 ae8:	00e787b3          	add	a5,a5,a4
 aec:	0007a783          	lw	a5,0(a5)
 af0:	00078067          	jr	a5
 af4:	800007b7          	lui	a5,0x80000
 af8:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 afc:	14e40e63          	beq	s0,a4,c58 <__neorv32_rte_debug_exc_handler+0x1c0>
 b00:	02876a63          	bltu	a4,s0,b34 <__neorv32_rte_debug_exc_handler+0x9c>
 b04:	00378713          	addi	a4,a5,3
 b08:	12e40c63          	beq	s0,a4,c40 <__neorv32_rte_debug_exc_handler+0x1a8>
 b0c:	00778793          	addi	a5,a5,7
 b10:	12f40e63          	beq	s0,a5,c4c <__neorv32_rte_debug_exc_handler+0x1b4>
 b14:	00001537          	lui	a0,0x1
 b18:	0d850513          	addi	a0,a0,216 # 10d8 <symbols.0+0x21c>
 b1c:	aadff0ef          	jal	ra,5c8 <neorv32_uart0_print>
 b20:	00040513          	mv	a0,s0
 b24:	f05ff0ef          	jal	ra,a28 <__neorv32_rte_print_hex_word>
 b28:	00100793          	li	a5,1
 b2c:	08f40c63          	beq	s0,a5,bc4 <__neorv32_rte_debug_exc_handler+0x12c>
 b30:	0280006f          	j	b58 <__neorv32_rte_debug_exc_handler+0xc0>
 b34:	ff07c793          	xori	a5,a5,-16
 b38:	00f407b3          	add	a5,s0,a5
 b3c:	00f00713          	li	a4,15
 b40:	fcf76ae3          	bltu	a4,a5,b14 <__neorv32_rte_debug_exc_handler+0x7c>
 b44:	00001537          	lui	a0,0x1
 b48:	0c850513          	addi	a0,a0,200 # 10c8 <symbols.0+0x20c>
 b4c:	a7dff0ef          	jal	ra,5c8 <neorv32_uart0_print>
 b50:	00048513          	mv	a0,s1
 b54:	a5dff0ef          	jal	ra,5b0 <neorv32_uart0_putc>
 b58:	ffd47413          	andi	s0,s0,-3
 b5c:	00500793          	li	a5,5
 b60:	06f40263          	beq	s0,a5,bc4 <__neorv32_rte_debug_exc_handler+0x12c>
 b64:	00001537          	lui	a0,0x1
 b68:	11c50513          	addi	a0,a0,284 # 111c <symbols.0+0x260>
 b6c:	a5dff0ef          	jal	ra,5c8 <neorv32_uart0_print>
 b70:	34002573          	csrr	a0,mscratch
 b74:	eb5ff0ef          	jal	ra,a28 <__neorv32_rte_print_hex_word>
 b78:	00001537          	lui	a0,0x1
 b7c:	12450513          	addi	a0,a0,292 # 1124 <symbols.0+0x268>
 b80:	a49ff0ef          	jal	ra,5c8 <neorv32_uart0_print>
 b84:	34302573          	csrr	a0,mtval
 b88:	ea1ff0ef          	jal	ra,a28 <__neorv32_rte_print_hex_word>
 b8c:	00812403          	lw	s0,8(sp)
 b90:	00c12083          	lw	ra,12(sp)
 b94:	00412483          	lw	s1,4(sp)
 b98:	00001537          	lui	a0,0x1
 b9c:	13050513          	addi	a0,a0,304 # 1130 <symbols.0+0x274>
 ba0:	01010113          	addi	sp,sp,16
 ba4:	a25ff06f          	j	5c8 <neorv32_uart0_print>
 ba8:	00001537          	lui	a0,0x1
 bac:	f8050513          	addi	a0,a0,-128 # f80 <symbols.0+0xc4>
 bb0:	a19ff0ef          	jal	ra,5c8 <neorv32_uart0_print>
 bb4:	fb1ff06f          	j	b64 <__neorv32_rte_debug_exc_handler+0xcc>
 bb8:	00001537          	lui	a0,0x1
 bbc:	fa050513          	addi	a0,a0,-96 # fa0 <symbols.0+0xe4>
 bc0:	a09ff0ef          	jal	ra,5c8 <neorv32_uart0_print>
 bc4:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 bc8:	0a07d463          	bgez	a5,c70 <__neorv32_rte_debug_exc_handler+0x1d8>
 bcc:	0017f793          	andi	a5,a5,1
 bd0:	08078a63          	beqz	a5,c64 <__neorv32_rte_debug_exc_handler+0x1cc>
 bd4:	00001537          	lui	a0,0x1
 bd8:	0f050513          	addi	a0,a0,240 # 10f0 <symbols.0+0x234>
 bdc:	fd5ff06f          	j	bb0 <__neorv32_rte_debug_exc_handler+0x118>
 be0:	00001537          	lui	a0,0x1
 be4:	fbc50513          	addi	a0,a0,-68 # fbc <symbols.0+0x100>
 be8:	fc9ff06f          	j	bb0 <__neorv32_rte_debug_exc_handler+0x118>
 bec:	00001537          	lui	a0,0x1
 bf0:	fd050513          	addi	a0,a0,-48 # fd0 <symbols.0+0x114>
 bf4:	fbdff06f          	j	bb0 <__neorv32_rte_debug_exc_handler+0x118>
 bf8:	00001537          	lui	a0,0x1
 bfc:	fdc50513          	addi	a0,a0,-36 # fdc <symbols.0+0x120>
 c00:	fb1ff06f          	j	bb0 <__neorv32_rte_debug_exc_handler+0x118>
 c04:	00001537          	lui	a0,0x1
 c08:	ff450513          	addi	a0,a0,-12 # ff4 <symbols.0+0x138>
 c0c:	fb5ff06f          	j	bc0 <__neorv32_rte_debug_exc_handler+0x128>
 c10:	00001537          	lui	a0,0x1
 c14:	00850513          	addi	a0,a0,8 # 1008 <symbols.0+0x14c>
 c18:	f99ff06f          	j	bb0 <__neorv32_rte_debug_exc_handler+0x118>
 c1c:	00001537          	lui	a0,0x1
 c20:	02450513          	addi	a0,a0,36 # 1024 <symbols.0+0x168>
 c24:	f9dff06f          	j	bc0 <__neorv32_rte_debug_exc_handler+0x128>
 c28:	00001537          	lui	a0,0x1
 c2c:	03850513          	addi	a0,a0,56 # 1038 <symbols.0+0x17c>
 c30:	f81ff06f          	j	bb0 <__neorv32_rte_debug_exc_handler+0x118>
 c34:	00001537          	lui	a0,0x1
 c38:	05850513          	addi	a0,a0,88 # 1058 <symbols.0+0x19c>
 c3c:	f75ff06f          	j	bb0 <__neorv32_rte_debug_exc_handler+0x118>
 c40:	00001537          	lui	a0,0x1
 c44:	07850513          	addi	a0,a0,120 # 1078 <symbols.0+0x1bc>
 c48:	f69ff06f          	j	bb0 <__neorv32_rte_debug_exc_handler+0x118>
 c4c:	00001537          	lui	a0,0x1
 c50:	09450513          	addi	a0,a0,148 # 1094 <symbols.0+0x1d8>
 c54:	f5dff06f          	j	bb0 <__neorv32_rte_debug_exc_handler+0x118>
 c58:	00001537          	lui	a0,0x1
 c5c:	0ac50513          	addi	a0,a0,172 # 10ac <symbols.0+0x1f0>
 c60:	f51ff06f          	j	bb0 <__neorv32_rte_debug_exc_handler+0x118>
 c64:	00001537          	lui	a0,0x1
 c68:	10050513          	addi	a0,a0,256 # 1100 <symbols.0+0x244>
 c6c:	f45ff06f          	j	bb0 <__neorv32_rte_debug_exc_handler+0x118>
 c70:	00001537          	lui	a0,0x1
 c74:	11050513          	addi	a0,a0,272 # 1110 <symbols.0+0x254>
 c78:	f39ff06f          	j	bb0 <__neorv32_rte_debug_exc_handler+0x118>
 c7c:	00c12083          	lw	ra,12(sp)
 c80:	00812403          	lw	s0,8(sp)
 c84:	00412483          	lw	s1,4(sp)
 c88:	01010113          	addi	sp,sp,16
 c8c:	00008067          	ret

00000c90 <neorv32_rte_exception_install>:
 c90:	01f00793          	li	a5,31
 c94:	00a7ee63          	bltu	a5,a0,cb0 <neorv32_rte_exception_install+0x20>
 c98:	83018793          	addi	a5,gp,-2000 # 80000030 <__neorv32_rte_vector_lut>
 c9c:	00251513          	slli	a0,a0,0x2
 ca0:	00a78533          	add	a0,a5,a0
 ca4:	00b52023          	sw	a1,0(a0)
 ca8:	00000513          	li	a0,0
 cac:	00008067          	ret
 cb0:	00100513          	li	a0,1
 cb4:	00008067          	ret

00000cb8 <neorv32_rte_exception_uninstall>:
 cb8:	01f00793          	li	a5,31
 cbc:	02a7e263          	bltu	a5,a0,ce0 <neorv32_rte_exception_uninstall+0x28>
 cc0:	83018793          	addi	a5,gp,-2000 # 80000030 <__neorv32_rte_vector_lut>
 cc4:	00251513          	slli	a0,a0,0x2
 cc8:	00a78533          	add	a0,a5,a0
 ccc:	000017b7          	lui	a5,0x1
 cd0:	a9878793          	addi	a5,a5,-1384 # a98 <__neorv32_rte_debug_exc_handler>
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
 cfc:	81c78793          	addi	a5,a5,-2020 # 81c <__neorv32_rte_core>
 d00:	30579073          	csrw	mtvec,a5
 d04:	00000793          	li	a5,0
 d08:	30479073          	csrw	mie,a5
 d0c:	34479073          	csrw	mip,a5
 d10:	f6002e23          	sw	zero,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 d14:	00000413          	li	s0,0
 d18:	01d00493          	li	s1,29
 d1c:	00040513          	mv	a0,s0
 d20:	00140413          	addi	s0,s0,1
 d24:	0ff47413          	andi	s0,s0,255
 d28:	f91ff0ef          	jal	ra,cb8 <neorv32_rte_exception_uninstall>
 d2c:	fe9418e3          	bne	s0,s1,d1c <neorv32_rte_setup+0x34>
 d30:	00c12083          	lw	ra,12(sp)
 d34:	00812403          	lw	s0,8(sp)
 d38:	00412483          	lw	s1,4(sp)
 d3c:	01010113          	addi	sp,sp,16
 d40:	00008067          	ret

00000d44 <neorv32_gpio_available>:
 d44:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 d48:	01055513          	srli	a0,a0,0x10
 d4c:	00157513          	andi	a0,a0,1
 d50:	00008067          	ret

00000d54 <neorv32_gpio_pin_set>:
 d54:	00100793          	li	a5,1
 d58:	01f00713          	li	a4,31
 d5c:	00a797b3          	sll	a5,a5,a0
 d60:	00a74a63          	blt	a4,a0,d74 <neorv32_gpio_pin_set+0x20>
 d64:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 d68:	00f767b3          	or	a5,a4,a5
 d6c:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 d70:	00008067          	ret
 d74:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 d78:	00f767b3          	or	a5,a4,a5
 d7c:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 d80:	00008067          	ret

00000d84 <neorv32_gpio_pin_clr>:
 d84:	00100793          	li	a5,1
 d88:	00a797b3          	sll	a5,a5,a0
 d8c:	01f00713          	li	a4,31
 d90:	fff7c793          	not	a5,a5
 d94:	00a74a63          	blt	a4,a0,da8 <neorv32_gpio_pin_clr+0x24>
 d98:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 d9c:	00f777b3          	and	a5,a4,a5
 da0:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 da4:	00008067          	ret
 da8:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 dac:	00f777b3          	and	a5,a4,a5
 db0:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 db4:	00008067          	ret

00000db8 <__divsi3>:
 db8:	06054063          	bltz	a0,e18 <__umodsi3+0x10>
 dbc:	0605c663          	bltz	a1,e28 <__umodsi3+0x20>

00000dc0 <__udivsi3>:
 dc0:	00058613          	mv	a2,a1
 dc4:	00050593          	mv	a1,a0
 dc8:	fff00513          	li	a0,-1
 dcc:	02060c63          	beqz	a2,e04 <__udivsi3+0x44>
 dd0:	00100693          	li	a3,1
 dd4:	00b67a63          	bgeu	a2,a1,de8 <__udivsi3+0x28>
 dd8:	00c05863          	blez	a2,de8 <__udivsi3+0x28>
 ddc:	00161613          	slli	a2,a2,0x1
 de0:	00169693          	slli	a3,a3,0x1
 de4:	feb66ae3          	bltu	a2,a1,dd8 <__udivsi3+0x18>
 de8:	00000513          	li	a0,0
 dec:	00c5e663          	bltu	a1,a2,df8 <__udivsi3+0x38>
 df0:	40c585b3          	sub	a1,a1,a2
 df4:	00d56533          	or	a0,a0,a3
 df8:	0016d693          	srli	a3,a3,0x1
 dfc:	00165613          	srli	a2,a2,0x1
 e00:	fe0696e3          	bnez	a3,dec <__udivsi3+0x2c>
 e04:	00008067          	ret

00000e08 <__umodsi3>:
 e08:	00008293          	mv	t0,ra
 e0c:	fb5ff0ef          	jal	ra,dc0 <__udivsi3>
 e10:	00058513          	mv	a0,a1
 e14:	00028067          	jr	t0
 e18:	40a00533          	neg	a0,a0
 e1c:	00b04863          	bgtz	a1,e2c <__umodsi3+0x24>
 e20:	40b005b3          	neg	a1,a1
 e24:	f9dff06f          	j	dc0 <__udivsi3>
 e28:	40b005b3          	neg	a1,a1
 e2c:	00008293          	mv	t0,ra
 e30:	f91ff0ef          	jal	ra,dc0 <__udivsi3>
 e34:	40a00533          	neg	a0,a0
 e38:	00028067          	jr	t0

00000e3c <__modsi3>:
 e3c:	00008293          	mv	t0,ra
 e40:	0005ca63          	bltz	a1,e54 <__modsi3+0x18>
 e44:	00054c63          	bltz	a0,e5c <__modsi3+0x20>
 e48:	f79ff0ef          	jal	ra,dc0 <__udivsi3>
 e4c:	00058513          	mv	a0,a1
 e50:	00028067          	jr	t0
 e54:	40b005b3          	neg	a1,a1
 e58:	fe0558e3          	bgez	a0,e48 <__modsi3+0xc>
 e5c:	40a00533          	neg	a0,a0
 e60:	f61ff0ef          	jal	ra,dc0 <__udivsi3>
 e64:	40b00533          	neg	a0,a1
 e68:	00028067          	jr	t0
