
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
  c0:	82c18593          	addi	a1,gp,-2004 # 8000002c <__neorv32_rte_vector_lut>
  c4:	8a018613          	addi	a2,gp,-1888 # 800000a0 <__BSS_END__>

000000c8 <__crt0_clear_bss_loop>:
  c8:	00c5d863          	bge	a1,a2,d8 <__crt0_clear_bss_loop_end>
  cc:	00058023          	sb	zero,0(a1)
  d0:	00158593          	addi	a1,a1,1
  d4:	ff5ff06f          	j	c8 <__crt0_clear_bss_loop>

000000d8 <__crt0_clear_bss_loop_end>:
  d8:	00001597          	auipc	a1,0x1
  dc:	dc058593          	addi	a1,a1,-576 # e98 <__crt0_copy_data_src_begin>
  e0:	80000617          	auipc	a2,0x80000
  e4:	f2060613          	addi	a2,a2,-224 # 80000000 <__ctr0_io_space_begin+0x80000200>
  e8:	82c18693          	addi	a3,gp,-2004 # 8000002c <__neorv32_rte_vector_lut>

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
 188:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3c68>
 18c:	00112623          	sw	ra,12(sp)
 190:	288000ef          	jal	ra,418 <neorv32_uart0_setup>
 194:	0f9000ef          	jal	ra,a8c <neorv32_gpio_available>
 198:	06050263          	beqz	a0,1fc <main+0x84>
 19c:	099000ef          	jal	ra,a34 <neorv32_rte_setup>
 1a0:	00001537          	lui	a0,0x1
 1a4:	bd850513          	addi	a0,a0,-1064 # bd8 <__etext+0x24>
 1a8:	334000ef          	jal	ra,4dc <neorv32_uart0_print>
 1ac:	3a400593          	li	a1,932
 1b0:	01900513          	li	a0,25
 1b4:	02d000ef          	jal	ra,9e0 <neorv32_rte_exception_install>
 1b8:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 1bc:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 1c0:	000015b7          	lui	a1,0x1
 1c4:	fa058593          	addi	a1,a1,-96 # fa0 <__crt0_copy_data_src_begin+0x108>
 1c8:	141000ef          	jal	ra,b08 <__udivsi3>
 1cc:	00050613          	mv	a2,a0
 1d0:	00100593          	li	a1,1
 1d4:	00200513          	li	a0,2
 1d8:	200000ef          	jal	ra,3d8 <neorv32_gptmr_setup>
 1dc:	01c00513          	li	a0,28
 1e0:	354000ef          	jal	ra,534 <neorv32_cpu_irq_enable>
 1e4:	30046073          	csrsi	mstatus,8
 1e8:	01600513          	li	a0,22
 1ec:	0e1000ef          	jal	ra,acc <neorv32_gpio_pin_clr>
 1f0:	01700513          	li	a0,23
 1f4:	0a9000ef          	jal	ra,a9c <neorv32_gpio_pin_set>
 1f8:	0000006f          	j	1f8 <main+0x80>
 1fc:	00001537          	lui	a0,0x1
 200:	bb450513          	addi	a0,a0,-1100 # bb4 <__etext>
 204:	2d8000ef          	jal	ra,4dc <neorv32_uart0_print>
 208:	00c12083          	lw	ra,12(sp)
 20c:	00100513          	li	a0,1
 210:	01010113          	addi	sp,sp,16
 214:	00008067          	ret

00000218 <displaySymbol>:
 218:	fd010113          	addi	sp,sp,-48
 21c:	02812423          	sw	s0,40(sp)
 220:	02912223          	sw	s1,36(sp)
 224:	01312e23          	sw	s3,28(sp)
 228:	01412c23          	sw	s4,24(sp)
 22c:	01512a23          	sw	s5,20(sp)
 230:	01612823          	sw	s6,16(sp)
 234:	01712623          	sw	s7,12(sp)
 238:	01812423          	sw	s8,8(sp)
 23c:	02112623          	sw	ra,44(sp)
 240:	03212023          	sw	s2,32(sp)
 244:	01912223          	sw	s9,4(sp)
 248:	00058413          	mv	s0,a1
 24c:	00050493          	mv	s1,a0
 250:	00050a13          	mv	s4,a0
 254:	0ff00993          	li	s3,255
 258:	ffd58b93          	addi	s7,a1,-3
 25c:	00100c13          	li	s8,1
 260:	00858b13          	addi	s6,a1,8
 264:	0f800a93          	li	s5,248
 268:	00040913          	mv	s2,s0
 26c:	41240733          	sub	a4,s0,s2
 270:	00ec17b3          	sll	a5,s8,a4
 274:	0137f7b3          	and	a5,a5,s3
 278:	40e7d7b3          	sra	a5,a5,a4
 27c:	00294503          	lbu	a0,2(s2)
 280:	0e078e63          	beqz	a5,37c <displaySymbol+0x164>
 284:	019000ef          	jal	ra,a9c <neorv32_gpio_pin_set>
 288:	fff90913          	addi	s2,s2,-1
 28c:	ff7910e3          	bne	s2,s7,26c <displaySymbol+0x54>
 290:	00340913          	addi	s2,s0,3
 294:	000a0c93          	mv	s9,s4
 298:	000cc783          	lbu	a5,0(s9)
 29c:	00094503          	lbu	a0,0(s2)
 2a0:	0e078263          	beqz	a5,384 <displaySymbol+0x16c>
 2a4:	7f8000ef          	jal	ra,a9c <neorv32_gpio_pin_set>
 2a8:	000cc783          	lbu	a5,0(s9)
 2ac:	00094503          	lbu	a0,0(s2)
 2b0:	0c078e63          	beqz	a5,38c <displaySymbol+0x174>
 2b4:	019000ef          	jal	ra,acc <neorv32_gpio_pin_clr>
 2b8:	00190913          	addi	s2,s2,1
 2bc:	001c8c93          	addi	s9,s9,1
 2c0:	fd2b1ce3          	bne	s6,s2,298 <displaySymbol+0x80>
 2c4:	fff98993          	addi	s3,s3,-1
 2c8:	005a0a13          	addi	s4,s4,5
 2cc:	f9599ee3          	bne	s3,s5,268 <displaySymbol+0x50>
 2d0:	00000993          	li	s3,0
 2d4:	00100a93          	li	s5,1
 2d8:	00300b13          	li	s6,3
 2dc:	00500b93          	li	s7,5
 2e0:	00700a13          	li	s4,7
 2e4:	0079cc13          	xori	s8,s3,7
 2e8:	0ffc7c13          	andi	s8,s8,255
 2ec:	00540c93          	addi	s9,s0,5
 2f0:	00000913          	li	s2,0
 2f4:	012a97b3          	sll	a5,s5,s2
 2f8:	0187f7b3          	and	a5,a5,s8
 2fc:	4127d7b3          	sra	a5,a5,s2
 300:	000cc503          	lbu	a0,0(s9)
 304:	08078863          	beqz	a5,394 <displaySymbol+0x17c>
 308:	794000ef          	jal	ra,a9c <neorv32_gpio_pin_set>
 30c:	00190913          	addi	s2,s2,1
 310:	001c8c93          	addi	s9,s9,1
 314:	ff6910e3          	bne	s2,s6,2f4 <displaySymbol+0xdc>
 318:	00000913          	li	s2,0
 31c:	012407b3          	add	a5,s0,s2
 320:	0007c503          	lbu	a0,0(a5)
 324:	012487b3          	add	a5,s1,s2
 328:	0007c783          	lbu	a5,0(a5)
 32c:	06078863          	beqz	a5,39c <displaySymbol+0x184>
 330:	76c000ef          	jal	ra,a9c <neorv32_gpio_pin_set>
 334:	00190913          	addi	s2,s2,1
 338:	ff7912e3          	bne	s2,s7,31c <displaySymbol+0x104>
 33c:	00198993          	addi	s3,s3,1
 340:	00548493          	addi	s1,s1,5
 344:	fb4990e3          	bne	s3,s4,2e4 <displaySymbol+0xcc>
 348:	02c12083          	lw	ra,44(sp)
 34c:	02812403          	lw	s0,40(sp)
 350:	02412483          	lw	s1,36(sp)
 354:	02012903          	lw	s2,32(sp)
 358:	01c12983          	lw	s3,28(sp)
 35c:	01812a03          	lw	s4,24(sp)
 360:	01412a83          	lw	s5,20(sp)
 364:	01012b03          	lw	s6,16(sp)
 368:	00c12b83          	lw	s7,12(sp)
 36c:	00812c03          	lw	s8,8(sp)
 370:	00412c83          	lw	s9,4(sp)
 374:	03010113          	addi	sp,sp,48
 378:	00008067          	ret
 37c:	750000ef          	jal	ra,acc <neorv32_gpio_pin_clr>
 380:	f09ff06f          	j	288 <displaySymbol+0x70>
 384:	748000ef          	jal	ra,acc <neorv32_gpio_pin_clr>
 388:	f21ff06f          	j	2a8 <displaySymbol+0x90>
 38c:	710000ef          	jal	ra,a9c <neorv32_gpio_pin_set>
 390:	f29ff06f          	j	2b8 <displaySymbol+0xa0>
 394:	738000ef          	jal	ra,acc <neorv32_gpio_pin_clr>
 398:	f75ff06f          	j	30c <displaySymbol+0xf4>
 39c:	730000ef          	jal	ra,acc <neorv32_gpio_pin_clr>
 3a0:	f95ff06f          	j	334 <displaySymbol+0x11c>

000003a4 <gptmr_firq_handler>:
 3a4:	ff010113          	addi	sp,sp,-16
 3a8:	f00007b7          	lui	a5,0xf0000
 3ac:	00112623          	sw	ra,12(sp)
 3b0:	fff78793          	addi	a5,a5,-1 # efffffff <__ctr0_io_space_begin+0xf00001ff>
 3b4:	34479073          	csrw	mip,a5
 3b8:	02e00513          	li	a0,46
 3bc:	108000ef          	jal	ra,4c4 <neorv32_uart0_putc>
 3c0:	00c12083          	lw	ra,12(sp)
 3c4:	80000537          	lui	a0,0x80000
 3c8:	82418593          	addi	a1,gp,-2012 # 80000024 <pins>
 3cc:	00050513          	mv	a0,a0
 3d0:	01010113          	addi	sp,sp,16
 3d4:	e45ff06f          	j	218 <displaySymbol>

000003d8 <neorv32_gptmr_setup>:
 3d8:	f6000793          	li	a5,-160
 3dc:	00757513          	andi	a0,a0,7
 3e0:	0015f593          	andi	a1,a1,1
 3e4:	0007a023          	sw	zero,0(a5)
 3e8:	00151513          	slli	a0,a0,0x1
 3ec:	00459593          	slli	a1,a1,0x4
 3f0:	00c7a223          	sw	a2,4(a5)
 3f4:	00b56533          	or	a0,a0,a1
 3f8:	0007a423          	sw	zero,8(a5)
 3fc:	00156513          	ori	a0,a0,1
 400:	00a7a023          	sw	a0,0(a5)
 404:	00008067          	ret

00000408 <neorv32_uart0_available>:
 408:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 40c:	01255513          	srli	a0,a0,0x12
 410:	00157513          	andi	a0,a0,1
 414:	00008067          	ret

00000418 <neorv32_uart0_setup>:
 418:	ff010113          	addi	sp,sp,-16
 41c:	00812423          	sw	s0,8(sp)
 420:	00912223          	sw	s1,4(sp)
 424:	00112623          	sw	ra,12(sp)
 428:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 42c:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 430:	00058413          	mv	s0,a1
 434:	00151593          	slli	a1,a0,0x1
 438:	00078513          	mv	a0,a5
 43c:	00060493          	mv	s1,a2
 440:	6c8000ef          	jal	ra,b08 <__udivsi3>
 444:	01051513          	slli	a0,a0,0x10
 448:	000017b7          	lui	a5,0x1
 44c:	01055513          	srli	a0,a0,0x10
 450:	00000713          	li	a4,0
 454:	ffe78793          	addi	a5,a5,-2 # ffe <__crt0_copy_data_src_begin+0x166>
 458:	04a7e463          	bltu	a5,a0,4a0 <neorv32_uart0_setup+0x88>
 45c:	0034f793          	andi	a5,s1,3
 460:	00347413          	andi	s0,s0,3
 464:	fff50513          	addi	a0,a0,-1 # 7fffffff <__ctr0_io_space_begin+0x800001ff>
 468:	01479793          	slli	a5,a5,0x14
 46c:	01641413          	slli	s0,s0,0x16
 470:	00f567b3          	or	a5,a0,a5
 474:	0087e7b3          	or	a5,a5,s0
 478:	01871713          	slli	a4,a4,0x18
 47c:	00c12083          	lw	ra,12(sp)
 480:	00812403          	lw	s0,8(sp)
 484:	00e7e7b3          	or	a5,a5,a4
 488:	10000737          	lui	a4,0x10000
 48c:	00e7e7b3          	or	a5,a5,a4
 490:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 494:	00412483          	lw	s1,4(sp)
 498:	01010113          	addi	sp,sp,16
 49c:	00008067          	ret
 4a0:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xffff166>
 4a4:	0fd6f693          	andi	a3,a3,253
 4a8:	00069a63          	bnez	a3,4bc <neorv32_uart0_setup+0xa4>
 4ac:	00355513          	srli	a0,a0,0x3
 4b0:	00170713          	addi	a4,a4,1
 4b4:	0ff77713          	andi	a4,a4,255
 4b8:	fa1ff06f          	j	458 <neorv32_uart0_setup+0x40>
 4bc:	00155513          	srli	a0,a0,0x1
 4c0:	ff1ff06f          	j	4b0 <neorv32_uart0_setup+0x98>

000004c4 <neorv32_uart0_putc>:
 4c4:	00040737          	lui	a4,0x40
 4c8:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 4cc:	00e7f7b3          	and	a5,a5,a4
 4d0:	fe079ce3          	bnez	a5,4c8 <neorv32_uart0_putc+0x4>
 4d4:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 4d8:	00008067          	ret

000004dc <neorv32_uart0_print>:
 4dc:	ff010113          	addi	sp,sp,-16
 4e0:	00812423          	sw	s0,8(sp)
 4e4:	01212023          	sw	s2,0(sp)
 4e8:	00112623          	sw	ra,12(sp)
 4ec:	00912223          	sw	s1,4(sp)
 4f0:	00050413          	mv	s0,a0
 4f4:	00a00913          	li	s2,10
 4f8:	00044483          	lbu	s1,0(s0)
 4fc:	00140413          	addi	s0,s0,1
 500:	00049e63          	bnez	s1,51c <neorv32_uart0_print+0x40>
 504:	00c12083          	lw	ra,12(sp)
 508:	00812403          	lw	s0,8(sp)
 50c:	00412483          	lw	s1,4(sp)
 510:	00012903          	lw	s2,0(sp)
 514:	01010113          	addi	sp,sp,16
 518:	00008067          	ret
 51c:	01249663          	bne	s1,s2,528 <neorv32_uart0_print+0x4c>
 520:	00d00513          	li	a0,13
 524:	fa1ff0ef          	jal	ra,4c4 <neorv32_uart0_putc>
 528:	00048513          	mv	a0,s1
 52c:	f99ff0ef          	jal	ra,4c4 <neorv32_uart0_putc>
 530:	fc9ff06f          	j	4f8 <neorv32_uart0_print+0x1c>

00000534 <neorv32_cpu_irq_enable>:
 534:	01f00793          	li	a5,31
 538:	00050713          	mv	a4,a0
 53c:	02a7e663          	bltu	a5,a0,568 <neorv32_cpu_irq_enable+0x34>
 540:	ffff17b7          	lui	a5,0xffff1
 544:	88878793          	addi	a5,a5,-1912 # ffff0888 <__ctr0_io_space_begin+0xffff0a88>
 548:	00a7d7b3          	srl	a5,a5,a0
 54c:	0017f793          	andi	a5,a5,1
 550:	00100513          	li	a0,1
 554:	00078c63          	beqz	a5,56c <neorv32_cpu_irq_enable+0x38>
 558:	00e51533          	sll	a0,a0,a4
 55c:	30452073          	csrs	mie,a0
 560:	00000513          	li	a0,0
 564:	00008067          	ret
 568:	00100513          	li	a0,1
 56c:	00008067          	ret

00000570 <__neorv32_rte_core>:
 570:	fc010113          	addi	sp,sp,-64
 574:	02112e23          	sw	ra,60(sp)
 578:	02512c23          	sw	t0,56(sp)
 57c:	02612a23          	sw	t1,52(sp)
 580:	02712823          	sw	t2,48(sp)
 584:	02a12623          	sw	a0,44(sp)
 588:	02b12423          	sw	a1,40(sp)
 58c:	02c12223          	sw	a2,36(sp)
 590:	02d12023          	sw	a3,32(sp)
 594:	00e12e23          	sw	a4,28(sp)
 598:	00f12c23          	sw	a5,24(sp)
 59c:	01012a23          	sw	a6,20(sp)
 5a0:	01112823          	sw	a7,16(sp)
 5a4:	01c12623          	sw	t3,12(sp)
 5a8:	01d12423          	sw	t4,8(sp)
 5ac:	01e12223          	sw	t5,4(sp)
 5b0:	01f12023          	sw	t6,0(sp)
 5b4:	341026f3          	csrr	a3,mepc
 5b8:	34069073          	csrw	mscratch,a3
 5bc:	342027f3          	csrr	a5,mcause
 5c0:	0407ce63          	bltz	a5,61c <__neorv32_rte_core+0xac>
 5c4:	0006d703          	lhu	a4,0(a3)
 5c8:	01071713          	slli	a4,a4,0x10
 5cc:	01075713          	srli	a4,a4,0x10
 5d0:	00468593          	addi	a1,a3,4
 5d4:	30102673          	csrr	a2,misa
 5d8:	00467613          	andi	a2,a2,4
 5dc:	00060a63          	beqz	a2,5f0 <__neorv32_rte_core+0x80>
 5e0:	00377713          	andi	a4,a4,3
 5e4:	00300613          	li	a2,3
 5e8:	00c70463          	beq	a4,a2,5f0 <__neorv32_rte_core+0x80>
 5ec:	00268593          	addi	a1,a3,2
 5f0:	34159073          	csrw	mepc,a1
 5f4:	00b00713          	li	a4,11
 5f8:	00f77663          	bgeu	a4,a5,604 <__neorv32_rte_core+0x94>
 5fc:	7e800793          	li	a5,2024
 600:	04c0006f          	j	64c <__neorv32_rte_core+0xdc>
 604:	00001737          	lui	a4,0x1
 608:	00279793          	slli	a5,a5,0x2
 60c:	bec70713          	addi	a4,a4,-1044 # bec <__etext+0x38>
 610:	00e787b3          	add	a5,a5,a4
 614:	0007a783          	lw	a5,0(a5)
 618:	00078067          	jr	a5
 61c:	80000737          	lui	a4,0x80000
 620:	ffd74713          	xori	a4,a4,-3
 624:	00e787b3          	add	a5,a5,a4
 628:	01c00713          	li	a4,28
 62c:	fcf768e3          	bltu	a4,a5,5fc <__neorv32_rte_core+0x8c>
 630:	00001737          	lui	a4,0x1
 634:	00279793          	slli	a5,a5,0x2
 638:	c1c70713          	addi	a4,a4,-996 # c1c <__etext+0x68>
 63c:	00e787b3          	add	a5,a5,a4
 640:	0007a783          	lw	a5,0(a5)
 644:	00078067          	jr	a5
 648:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut>
 64c:	000780e7          	jalr	a5
 650:	03c12083          	lw	ra,60(sp)
 654:	03812283          	lw	t0,56(sp)
 658:	03412303          	lw	t1,52(sp)
 65c:	03012383          	lw	t2,48(sp)
 660:	02c12503          	lw	a0,44(sp)
 664:	02812583          	lw	a1,40(sp)
 668:	02412603          	lw	a2,36(sp)
 66c:	02012683          	lw	a3,32(sp)
 670:	01c12703          	lw	a4,28(sp)
 674:	01812783          	lw	a5,24(sp)
 678:	01412803          	lw	a6,20(sp)
 67c:	01012883          	lw	a7,16(sp)
 680:	00c12e03          	lw	t3,12(sp)
 684:	00812e83          	lw	t4,8(sp)
 688:	00412f03          	lw	t5,4(sp)
 68c:	00012f83          	lw	t6,0(sp)
 690:	04010113          	addi	sp,sp,64
 694:	30200073          	mret
 698:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x4>
 69c:	fb1ff06f          	j	64c <__neorv32_rte_core+0xdc>
 6a0:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x8>
 6a4:	fa9ff06f          	j	64c <__neorv32_rte_core+0xdc>
 6a8:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0xc>
 6ac:	fa1ff06f          	j	64c <__neorv32_rte_core+0xdc>
 6b0:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x10>
 6b4:	f99ff06f          	j	64c <__neorv32_rte_core+0xdc>
 6b8:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x14>
 6bc:	f91ff06f          	j	64c <__neorv32_rte_core+0xdc>
 6c0:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x18>
 6c4:	f89ff06f          	j	64c <__neorv32_rte_core+0xdc>
 6c8:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x1c>
 6cc:	f81ff06f          	j	64c <__neorv32_rte_core+0xdc>
 6d0:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x20>
 6d4:	f79ff06f          	j	64c <__neorv32_rte_core+0xdc>
 6d8:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x24>
 6dc:	f71ff06f          	j	64c <__neorv32_rte_core+0xdc>
 6e0:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x28>
 6e4:	f69ff06f          	j	64c <__neorv32_rte_core+0xdc>
 6e8:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x2c>
 6ec:	f61ff06f          	j	64c <__neorv32_rte_core+0xdc>
 6f0:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x30>
 6f4:	f59ff06f          	j	64c <__neorv32_rte_core+0xdc>
 6f8:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x34>
 6fc:	f51ff06f          	j	64c <__neorv32_rte_core+0xdc>
 700:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x38>
 704:	f49ff06f          	j	64c <__neorv32_rte_core+0xdc>
 708:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x3c>
 70c:	f41ff06f          	j	64c <__neorv32_rte_core+0xdc>
 710:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x40>
 714:	f39ff06f          	j	64c <__neorv32_rte_core+0xdc>
 718:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x44>
 71c:	f31ff06f          	j	64c <__neorv32_rte_core+0xdc>
 720:	8741a783          	lw	a5,-1932(gp) # 80000074 <__neorv32_rte_vector_lut+0x48>
 724:	f29ff06f          	j	64c <__neorv32_rte_core+0xdc>
 728:	8781a783          	lw	a5,-1928(gp) # 80000078 <__neorv32_rte_vector_lut+0x4c>
 72c:	f21ff06f          	j	64c <__neorv32_rte_core+0xdc>
 730:	87c1a783          	lw	a5,-1924(gp) # 8000007c <__neorv32_rte_vector_lut+0x50>
 734:	f19ff06f          	j	64c <__neorv32_rte_core+0xdc>
 738:	8801a783          	lw	a5,-1920(gp) # 80000080 <__neorv32_rte_vector_lut+0x54>
 73c:	f11ff06f          	j	64c <__neorv32_rte_core+0xdc>
 740:	8841a783          	lw	a5,-1916(gp) # 80000084 <__neorv32_rte_vector_lut+0x58>
 744:	f09ff06f          	j	64c <__neorv32_rte_core+0xdc>
 748:	8881a783          	lw	a5,-1912(gp) # 80000088 <__neorv32_rte_vector_lut+0x5c>
 74c:	f01ff06f          	j	64c <__neorv32_rte_core+0xdc>
 750:	88c1a783          	lw	a5,-1908(gp) # 8000008c <__neorv32_rte_vector_lut+0x60>
 754:	ef9ff06f          	j	64c <__neorv32_rte_core+0xdc>
 758:	8901a783          	lw	a5,-1904(gp) # 80000090 <__neorv32_rte_vector_lut+0x64>
 75c:	ef1ff06f          	j	64c <__neorv32_rte_core+0xdc>
 760:	8941a783          	lw	a5,-1900(gp) # 80000094 <__neorv32_rte_vector_lut+0x68>
 764:	ee9ff06f          	j	64c <__neorv32_rte_core+0xdc>
 768:	8981a783          	lw	a5,-1896(gp) # 80000098 <__neorv32_rte_vector_lut+0x6c>
 76c:	ee1ff06f          	j	64c <__neorv32_rte_core+0xdc>
 770:	89c1a783          	lw	a5,-1892(gp) # 8000009c <__neorv32_rte_vector_lut+0x70>
 774:	ed9ff06f          	j	64c <__neorv32_rte_core+0xdc>

00000778 <__neorv32_rte_print_hex_word>:
 778:	fe010113          	addi	sp,sp,-32
 77c:	01212823          	sw	s2,16(sp)
 780:	00050913          	mv	s2,a0
 784:	00001537          	lui	a0,0x1
 788:	00912a23          	sw	s1,20(sp)
 78c:	c9050513          	addi	a0,a0,-880 # c90 <__etext+0xdc>
 790:	000014b7          	lui	s1,0x1
 794:	00812c23          	sw	s0,24(sp)
 798:	01312623          	sw	s3,12(sp)
 79c:	00112e23          	sw	ra,28(sp)
 7a0:	01c00413          	li	s0,28
 7a4:	d39ff0ef          	jal	ra,4dc <neorv32_uart0_print>
 7a8:	e8848493          	addi	s1,s1,-376 # e88 <hex_symbols.0>
 7ac:	ffc00993          	li	s3,-4
 7b0:	008957b3          	srl	a5,s2,s0
 7b4:	00f7f793          	andi	a5,a5,15
 7b8:	00f487b3          	add	a5,s1,a5
 7bc:	0007c503          	lbu	a0,0(a5)
 7c0:	ffc40413          	addi	s0,s0,-4
 7c4:	d01ff0ef          	jal	ra,4c4 <neorv32_uart0_putc>
 7c8:	ff3414e3          	bne	s0,s3,7b0 <__neorv32_rte_print_hex_word+0x38>
 7cc:	01c12083          	lw	ra,28(sp)
 7d0:	01812403          	lw	s0,24(sp)
 7d4:	01412483          	lw	s1,20(sp)
 7d8:	01012903          	lw	s2,16(sp)
 7dc:	00c12983          	lw	s3,12(sp)
 7e0:	02010113          	addi	sp,sp,32
 7e4:	00008067          	ret

000007e8 <__neorv32_rte_debug_exc_handler>:
 7e8:	ff010113          	addi	sp,sp,-16
 7ec:	00112623          	sw	ra,12(sp)
 7f0:	00812423          	sw	s0,8(sp)
 7f4:	00912223          	sw	s1,4(sp)
 7f8:	c11ff0ef          	jal	ra,408 <neorv32_uart0_available>
 7fc:	1c050863          	beqz	a0,9cc <__neorv32_rte_debug_exc_handler+0x1e4>
 800:	00001537          	lui	a0,0x1
 804:	c9450513          	addi	a0,a0,-876 # c94 <__etext+0xe0>
 808:	cd5ff0ef          	jal	ra,4dc <neorv32_uart0_print>
 80c:	34202473          	csrr	s0,mcause
 810:	00900713          	li	a4,9
 814:	00f47793          	andi	a5,s0,15
 818:	03078493          	addi	s1,a5,48
 81c:	00f77463          	bgeu	a4,a5,824 <__neorv32_rte_debug_exc_handler+0x3c>
 820:	05778493          	addi	s1,a5,87
 824:	00b00793          	li	a5,11
 828:	0087ee63          	bltu	a5,s0,844 <__neorv32_rte_debug_exc_handler+0x5c>
 82c:	00001737          	lui	a4,0x1
 830:	00241793          	slli	a5,s0,0x2
 834:	e5870713          	addi	a4,a4,-424 # e58 <__etext+0x2a4>
 838:	00e787b3          	add	a5,a5,a4
 83c:	0007a783          	lw	a5,0(a5)
 840:	00078067          	jr	a5
 844:	800007b7          	lui	a5,0x80000
 848:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 84c:	14e40e63          	beq	s0,a4,9a8 <__neorv32_rte_debug_exc_handler+0x1c0>
 850:	02876a63          	bltu	a4,s0,884 <__neorv32_rte_debug_exc_handler+0x9c>
 854:	00378713          	addi	a4,a5,3
 858:	12e40c63          	beq	s0,a4,990 <__neorv32_rte_debug_exc_handler+0x1a8>
 85c:	00778793          	addi	a5,a5,7
 860:	12f40e63          	beq	s0,a5,99c <__neorv32_rte_debug_exc_handler+0x1b4>
 864:	00001537          	lui	a0,0x1
 868:	df450513          	addi	a0,a0,-524 # df4 <__etext+0x240>
 86c:	c71ff0ef          	jal	ra,4dc <neorv32_uart0_print>
 870:	00040513          	mv	a0,s0
 874:	f05ff0ef          	jal	ra,778 <__neorv32_rte_print_hex_word>
 878:	00100793          	li	a5,1
 87c:	08f40c63          	beq	s0,a5,914 <__neorv32_rte_debug_exc_handler+0x12c>
 880:	0280006f          	j	8a8 <__neorv32_rte_debug_exc_handler+0xc0>
 884:	ff07c793          	xori	a5,a5,-16
 888:	00f407b3          	add	a5,s0,a5
 88c:	00f00713          	li	a4,15
 890:	fcf76ae3          	bltu	a4,a5,864 <__neorv32_rte_debug_exc_handler+0x7c>
 894:	00001537          	lui	a0,0x1
 898:	de450513          	addi	a0,a0,-540 # de4 <__etext+0x230>
 89c:	c41ff0ef          	jal	ra,4dc <neorv32_uart0_print>
 8a0:	00048513          	mv	a0,s1
 8a4:	c21ff0ef          	jal	ra,4c4 <neorv32_uart0_putc>
 8a8:	ffd47413          	andi	s0,s0,-3
 8ac:	00500793          	li	a5,5
 8b0:	06f40263          	beq	s0,a5,914 <__neorv32_rte_debug_exc_handler+0x12c>
 8b4:	00001537          	lui	a0,0x1
 8b8:	e3850513          	addi	a0,a0,-456 # e38 <__etext+0x284>
 8bc:	c21ff0ef          	jal	ra,4dc <neorv32_uart0_print>
 8c0:	34002573          	csrr	a0,mscratch
 8c4:	eb5ff0ef          	jal	ra,778 <__neorv32_rte_print_hex_word>
 8c8:	00001537          	lui	a0,0x1
 8cc:	e4050513          	addi	a0,a0,-448 # e40 <__etext+0x28c>
 8d0:	c0dff0ef          	jal	ra,4dc <neorv32_uart0_print>
 8d4:	34302573          	csrr	a0,mtval
 8d8:	ea1ff0ef          	jal	ra,778 <__neorv32_rte_print_hex_word>
 8dc:	00812403          	lw	s0,8(sp)
 8e0:	00c12083          	lw	ra,12(sp)
 8e4:	00412483          	lw	s1,4(sp)
 8e8:	00001537          	lui	a0,0x1
 8ec:	e4c50513          	addi	a0,a0,-436 # e4c <__etext+0x298>
 8f0:	01010113          	addi	sp,sp,16
 8f4:	be9ff06f          	j	4dc <neorv32_uart0_print>
 8f8:	00001537          	lui	a0,0x1
 8fc:	c9c50513          	addi	a0,a0,-868 # c9c <__etext+0xe8>
 900:	bddff0ef          	jal	ra,4dc <neorv32_uart0_print>
 904:	fb1ff06f          	j	8b4 <__neorv32_rte_debug_exc_handler+0xcc>
 908:	00001537          	lui	a0,0x1
 90c:	cbc50513          	addi	a0,a0,-836 # cbc <__etext+0x108>
 910:	bcdff0ef          	jal	ra,4dc <neorv32_uart0_print>
 914:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 918:	0a07d463          	bgez	a5,9c0 <__neorv32_rte_debug_exc_handler+0x1d8>
 91c:	0017f793          	andi	a5,a5,1
 920:	08078a63          	beqz	a5,9b4 <__neorv32_rte_debug_exc_handler+0x1cc>
 924:	00001537          	lui	a0,0x1
 928:	e0c50513          	addi	a0,a0,-500 # e0c <__etext+0x258>
 92c:	fd5ff06f          	j	900 <__neorv32_rte_debug_exc_handler+0x118>
 930:	00001537          	lui	a0,0x1
 934:	cd850513          	addi	a0,a0,-808 # cd8 <__etext+0x124>
 938:	fc9ff06f          	j	900 <__neorv32_rte_debug_exc_handler+0x118>
 93c:	00001537          	lui	a0,0x1
 940:	cec50513          	addi	a0,a0,-788 # cec <__etext+0x138>
 944:	fbdff06f          	j	900 <__neorv32_rte_debug_exc_handler+0x118>
 948:	00001537          	lui	a0,0x1
 94c:	cf850513          	addi	a0,a0,-776 # cf8 <__etext+0x144>
 950:	fb1ff06f          	j	900 <__neorv32_rte_debug_exc_handler+0x118>
 954:	00001537          	lui	a0,0x1
 958:	d1050513          	addi	a0,a0,-752 # d10 <__etext+0x15c>
 95c:	fb5ff06f          	j	910 <__neorv32_rte_debug_exc_handler+0x128>
 960:	00001537          	lui	a0,0x1
 964:	d2450513          	addi	a0,a0,-732 # d24 <__etext+0x170>
 968:	f99ff06f          	j	900 <__neorv32_rte_debug_exc_handler+0x118>
 96c:	00001537          	lui	a0,0x1
 970:	d4050513          	addi	a0,a0,-704 # d40 <__etext+0x18c>
 974:	f9dff06f          	j	910 <__neorv32_rte_debug_exc_handler+0x128>
 978:	00001537          	lui	a0,0x1
 97c:	d5450513          	addi	a0,a0,-684 # d54 <__etext+0x1a0>
 980:	f81ff06f          	j	900 <__neorv32_rte_debug_exc_handler+0x118>
 984:	00001537          	lui	a0,0x1
 988:	d7450513          	addi	a0,a0,-652 # d74 <__etext+0x1c0>
 98c:	f75ff06f          	j	900 <__neorv32_rte_debug_exc_handler+0x118>
 990:	00001537          	lui	a0,0x1
 994:	d9450513          	addi	a0,a0,-620 # d94 <__etext+0x1e0>
 998:	f69ff06f          	j	900 <__neorv32_rte_debug_exc_handler+0x118>
 99c:	00001537          	lui	a0,0x1
 9a0:	db050513          	addi	a0,a0,-592 # db0 <__etext+0x1fc>
 9a4:	f5dff06f          	j	900 <__neorv32_rte_debug_exc_handler+0x118>
 9a8:	00001537          	lui	a0,0x1
 9ac:	dc850513          	addi	a0,a0,-568 # dc8 <__etext+0x214>
 9b0:	f51ff06f          	j	900 <__neorv32_rte_debug_exc_handler+0x118>
 9b4:	00001537          	lui	a0,0x1
 9b8:	e1c50513          	addi	a0,a0,-484 # e1c <__etext+0x268>
 9bc:	f45ff06f          	j	900 <__neorv32_rte_debug_exc_handler+0x118>
 9c0:	00001537          	lui	a0,0x1
 9c4:	e2c50513          	addi	a0,a0,-468 # e2c <__etext+0x278>
 9c8:	f39ff06f          	j	900 <__neorv32_rte_debug_exc_handler+0x118>
 9cc:	00c12083          	lw	ra,12(sp)
 9d0:	00812403          	lw	s0,8(sp)
 9d4:	00412483          	lw	s1,4(sp)
 9d8:	01010113          	addi	sp,sp,16
 9dc:	00008067          	ret

000009e0 <neorv32_rte_exception_install>:
 9e0:	01f00793          	li	a5,31
 9e4:	00a7ee63          	bltu	a5,a0,a00 <neorv32_rte_exception_install+0x20>
 9e8:	82c18793          	addi	a5,gp,-2004 # 8000002c <__neorv32_rte_vector_lut>
 9ec:	00251513          	slli	a0,a0,0x2
 9f0:	00a78533          	add	a0,a5,a0
 9f4:	00b52023          	sw	a1,0(a0)
 9f8:	00000513          	li	a0,0
 9fc:	00008067          	ret
 a00:	00100513          	li	a0,1
 a04:	00008067          	ret

00000a08 <neorv32_rte_exception_uninstall>:
 a08:	01f00793          	li	a5,31
 a0c:	02a7e063          	bltu	a5,a0,a2c <neorv32_rte_exception_uninstall+0x24>
 a10:	82c18793          	addi	a5,gp,-2004 # 8000002c <__neorv32_rte_vector_lut>
 a14:	00251513          	slli	a0,a0,0x2
 a18:	00a78533          	add	a0,a5,a0
 a1c:	7e800793          	li	a5,2024
 a20:	00f52023          	sw	a5,0(a0)
 a24:	00000513          	li	a0,0
 a28:	00008067          	ret
 a2c:	00100513          	li	a0,1
 a30:	00008067          	ret

00000a34 <neorv32_rte_setup>:
 a34:	ff010113          	addi	sp,sp,-16
 a38:	00112623          	sw	ra,12(sp)
 a3c:	00812423          	sw	s0,8(sp)
 a40:	00912223          	sw	s1,4(sp)
 a44:	57000793          	li	a5,1392
 a48:	30579073          	csrw	mtvec,a5
 a4c:	00000793          	li	a5,0
 a50:	30479073          	csrw	mie,a5
 a54:	34479073          	csrw	mip,a5
 a58:	f6002e23          	sw	zero,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 a5c:	00000413          	li	s0,0
 a60:	01d00493          	li	s1,29
 a64:	00040513          	mv	a0,s0
 a68:	00140413          	addi	s0,s0,1
 a6c:	0ff47413          	andi	s0,s0,255
 a70:	f99ff0ef          	jal	ra,a08 <neorv32_rte_exception_uninstall>
 a74:	fe9418e3          	bne	s0,s1,a64 <neorv32_rte_setup+0x30>
 a78:	00c12083          	lw	ra,12(sp)
 a7c:	00812403          	lw	s0,8(sp)
 a80:	00412483          	lw	s1,4(sp)
 a84:	01010113          	addi	sp,sp,16
 a88:	00008067          	ret

00000a8c <neorv32_gpio_available>:
 a8c:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 a90:	01055513          	srli	a0,a0,0x10
 a94:	00157513          	andi	a0,a0,1
 a98:	00008067          	ret

00000a9c <neorv32_gpio_pin_set>:
 a9c:	00100793          	li	a5,1
 aa0:	01f00713          	li	a4,31
 aa4:	00a797b3          	sll	a5,a5,a0
 aa8:	00a74a63          	blt	a4,a0,abc <neorv32_gpio_pin_set+0x20>
 aac:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 ab0:	00f767b3          	or	a5,a4,a5
 ab4:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 ab8:	00008067          	ret
 abc:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 ac0:	00f767b3          	or	a5,a4,a5
 ac4:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 ac8:	00008067          	ret

00000acc <neorv32_gpio_pin_clr>:
 acc:	00100793          	li	a5,1
 ad0:	00a797b3          	sll	a5,a5,a0
 ad4:	01f00713          	li	a4,31
 ad8:	fff7c793          	not	a5,a5
 adc:	00a74a63          	blt	a4,a0,af0 <neorv32_gpio_pin_clr+0x24>
 ae0:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 ae4:	00f777b3          	and	a5,a4,a5
 ae8:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 aec:	00008067          	ret
 af0:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 af4:	00f777b3          	and	a5,a4,a5
 af8:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 afc:	00008067          	ret

00000b00 <__divsi3>:
 b00:	06054063          	bltz	a0,b60 <__umodsi3+0x10>
 b04:	0605c663          	bltz	a1,b70 <__umodsi3+0x20>

00000b08 <__udivsi3>:
 b08:	00058613          	mv	a2,a1
 b0c:	00050593          	mv	a1,a0
 b10:	fff00513          	li	a0,-1
 b14:	02060c63          	beqz	a2,b4c <__udivsi3+0x44>
 b18:	00100693          	li	a3,1
 b1c:	00b67a63          	bgeu	a2,a1,b30 <__udivsi3+0x28>
 b20:	00c05863          	blez	a2,b30 <__udivsi3+0x28>
 b24:	00161613          	slli	a2,a2,0x1
 b28:	00169693          	slli	a3,a3,0x1
 b2c:	feb66ae3          	bltu	a2,a1,b20 <__udivsi3+0x18>
 b30:	00000513          	li	a0,0
 b34:	00c5e663          	bltu	a1,a2,b40 <__udivsi3+0x38>
 b38:	40c585b3          	sub	a1,a1,a2
 b3c:	00d56533          	or	a0,a0,a3
 b40:	0016d693          	srli	a3,a3,0x1
 b44:	00165613          	srli	a2,a2,0x1
 b48:	fe0696e3          	bnez	a3,b34 <__udivsi3+0x2c>
 b4c:	00008067          	ret

00000b50 <__umodsi3>:
 b50:	00008293          	mv	t0,ra
 b54:	fb5ff0ef          	jal	ra,b08 <__udivsi3>
 b58:	00058513          	mv	a0,a1
 b5c:	00028067          	jr	t0
 b60:	40a00533          	neg	a0,a0
 b64:	00b04863          	bgtz	a1,b74 <__umodsi3+0x24>
 b68:	40b005b3          	neg	a1,a1
 b6c:	f9dff06f          	j	b08 <__udivsi3>
 b70:	40b005b3          	neg	a1,a1
 b74:	00008293          	mv	t0,ra
 b78:	f91ff0ef          	jal	ra,b08 <__udivsi3>
 b7c:	40a00533          	neg	a0,a0
 b80:	00028067          	jr	t0

00000b84 <__modsi3>:
 b84:	00008293          	mv	t0,ra
 b88:	0005ca63          	bltz	a1,b9c <__modsi3+0x18>
 b8c:	00054c63          	bltz	a0,ba4 <__modsi3+0x20>
 b90:	f79ff0ef          	jal	ra,b08 <__udivsi3>
 b94:	00058513          	mv	a0,a1
 b98:	00028067          	jr	t0
 b9c:	40b005b3          	neg	a1,a1
 ba0:	fe0558e3          	bgez	a0,b90 <__modsi3+0xc>
 ba4:	40a00533          	neg	a0,a0
 ba8:	f61ff0ef          	jal	ra,b08 <__udivsi3>
 bac:	40b00533          	neg	a0,a1
 bb0:	00028067          	jr	t0
