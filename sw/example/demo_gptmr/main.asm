
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
  e0:	c6858593          	addi	a1,a1,-920 # d44 <__crt0_copy_data_src_begin>
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
 188:	748000ef          	jal	ra,8d0 <neorv32_rte_setup>
 18c:	00005537          	lui	a0,0x5
 190:	00000613          	li	a2,0
 194:	00000593          	li	a1,0
 198:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3dbc>
 19c:	100000ef          	jal	ra,29c <neorv32_uart0_setup>
 1a0:	098000ef          	jal	ra,238 <neorv32_gptmr_available>
 1a4:	04050a63          	beqz	a0,1f8 <main+0x78>
 1a8:	00001537          	lui	a0,0x1
 1ac:	a3450513          	addi	a0,a0,-1484 # a34 <__etext+0x28>
 1b0:	1b0000ef          	jal	ra,360 <neorv32_uart0_print>
 1b4:	00000513          	li	a0,0
 1b8:	00000593          	li	a1,0
 1bc:	78c000ef          	jal	ra,948 <neorv32_gpio_port_set>
 1c0:	21400593          	li	a1,532
 1c4:	01900513          	li	a0,25
 1c8:	6ac000ef          	jal	ra,874 <neorv32_rte_exception_install>
 1cc:	fe002603          	lw	a2,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 1d0:	00100593          	li	a1,1
 1d4:	00000513          	li	a0,0
 1d8:	00165613          	srli	a2,a2,0x1
 1dc:	06c000ef          	jal	ra,248 <neorv32_gptmr_setup>
 1e0:	01c00513          	li	a0,28
 1e4:	1d4000ef          	jal	ra,3b8 <neorv32_cpu_irq_enable>
 1e8:	30046073          	csrsi	mstatus,8
 1ec:	00000013          	nop
 1f0:	00000013          	nop
 1f4:	0000006f          	j	1f4 <main+0x74>
 1f8:	00001537          	lui	a0,0x1
 1fc:	a0c50513          	addi	a0,a0,-1524 # a0c <__etext>
 200:	160000ef          	jal	ra,360 <neorv32_uart0_print>
 204:	00c12083          	lw	ra,12(sp)
 208:	00100513          	li	a0,1
 20c:	01010113          	addi	sp,sp,16
 210:	00008067          	ret

00000214 <gptmr_firq_handler>:
 214:	ff010113          	addi	sp,sp,-16
 218:	00112623          	sw	ra,12(sp)
 21c:	05c000ef          	jal	ra,278 <neorv32_gptmr_ack_irq>
 220:	02e00513          	li	a0,46
 224:	124000ef          	jal	ra,348 <neorv32_uart0_putc>
 228:	00c12083          	lw	ra,12(sp)
 22c:	00000513          	li	a0,0
 230:	01010113          	addi	sp,sp,16
 234:	6e40006f          	j	918 <neorv32_gpio_pin_toggle>

00000238 <neorv32_gptmr_available>:
 238:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 23c:	01d55513          	srli	a0,a0,0x1d
 240:	00157513          	andi	a0,a0,1
 244:	00008067          	ret

00000248 <neorv32_gptmr_setup>:
 248:	f6000793          	li	a5,-160
 24c:	00757513          	andi	a0,a0,7
 250:	0015f593          	andi	a1,a1,1
 254:	0007a023          	sw	zero,0(a5)
 258:	00151513          	slli	a0,a0,0x1
 25c:	00459593          	slli	a1,a1,0x4
 260:	00c7a223          	sw	a2,4(a5)
 264:	00b56533          	or	a0,a0,a1
 268:	0007a423          	sw	zero,8(a5)
 26c:	00156513          	ori	a0,a0,1
 270:	00a7a023          	sw	a0,0(a5)
 274:	00008067          	ret

00000278 <neorv32_gptmr_ack_irq>:
 278:	f6000713          	li	a4,-160
 27c:	00072783          	lw	a5,0(a4)
 280:	fdf7f793          	andi	a5,a5,-33
 284:	00f72023          	sw	a5,0(a4)
 288:	00008067          	ret

0000028c <neorv32_uart0_available>:
 28c:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 290:	01255513          	srli	a0,a0,0x12
 294:	00157513          	andi	a0,a0,1
 298:	00008067          	ret

0000029c <neorv32_uart0_setup>:
 29c:	ff010113          	addi	sp,sp,-16
 2a0:	00812423          	sw	s0,8(sp)
 2a4:	00912223          	sw	s1,4(sp)
 2a8:	00112623          	sw	ra,12(sp)
 2ac:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 2b0:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 2b4:	00058413          	mv	s0,a1
 2b8:	00151593          	slli	a1,a0,0x1
 2bc:	00078513          	mv	a0,a5
 2c0:	00060493          	mv	s1,a2
 2c4:	69c000ef          	jal	ra,960 <__udivsi3>
 2c8:	01051513          	slli	a0,a0,0x10
 2cc:	000017b7          	lui	a5,0x1
 2d0:	01055513          	srli	a0,a0,0x10
 2d4:	00000713          	li	a4,0
 2d8:	ffe78793          	addi	a5,a5,-2 # ffe <__crt0_copy_data_src_begin+0x2ba>
 2dc:	04a7e463          	bltu	a5,a0,324 <neorv32_uart0_setup+0x88>
 2e0:	0034f793          	andi	a5,s1,3
 2e4:	00347413          	andi	s0,s0,3
 2e8:	fff50513          	addi	a0,a0,-1
 2ec:	01479793          	slli	a5,a5,0x14
 2f0:	01641413          	slli	s0,s0,0x16
 2f4:	00f567b3          	or	a5,a0,a5
 2f8:	0087e7b3          	or	a5,a5,s0
 2fc:	01871713          	slli	a4,a4,0x18
 300:	00c12083          	lw	ra,12(sp)
 304:	00812403          	lw	s0,8(sp)
 308:	00e7e7b3          	or	a5,a5,a4
 30c:	10000737          	lui	a4,0x10000
 310:	00e7e7b3          	or	a5,a5,a4
 314:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 318:	00412483          	lw	s1,4(sp)
 31c:	01010113          	addi	sp,sp,16
 320:	00008067          	ret
 324:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xffff2ba>
 328:	0fd6f693          	andi	a3,a3,253
 32c:	00069a63          	bnez	a3,340 <neorv32_uart0_setup+0xa4>
 330:	00355513          	srli	a0,a0,0x3
 334:	00170713          	addi	a4,a4,1
 338:	0ff77713          	andi	a4,a4,255
 33c:	fa1ff06f          	j	2dc <neorv32_uart0_setup+0x40>
 340:	00155513          	srli	a0,a0,0x1
 344:	ff1ff06f          	j	334 <neorv32_uart0_setup+0x98>

00000348 <neorv32_uart0_putc>:
 348:	00040737          	lui	a4,0x40
 34c:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 350:	00e7f7b3          	and	a5,a5,a4
 354:	fe079ce3          	bnez	a5,34c <neorv32_uart0_putc+0x4>
 358:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 35c:	00008067          	ret

00000360 <neorv32_uart0_print>:
 360:	ff010113          	addi	sp,sp,-16
 364:	00812423          	sw	s0,8(sp)
 368:	01212023          	sw	s2,0(sp)
 36c:	00112623          	sw	ra,12(sp)
 370:	00912223          	sw	s1,4(sp)
 374:	00050413          	mv	s0,a0
 378:	00a00913          	li	s2,10
 37c:	00044483          	lbu	s1,0(s0)
 380:	00140413          	addi	s0,s0,1
 384:	00049e63          	bnez	s1,3a0 <neorv32_uart0_print+0x40>
 388:	00c12083          	lw	ra,12(sp)
 38c:	00812403          	lw	s0,8(sp)
 390:	00412483          	lw	s1,4(sp)
 394:	00012903          	lw	s2,0(sp)
 398:	01010113          	addi	sp,sp,16
 39c:	00008067          	ret
 3a0:	01249663          	bne	s1,s2,3ac <neorv32_uart0_print+0x4c>
 3a4:	00d00513          	li	a0,13
 3a8:	fa1ff0ef          	jal	ra,348 <neorv32_uart0_putc>
 3ac:	00048513          	mv	a0,s1
 3b0:	f99ff0ef          	jal	ra,348 <neorv32_uart0_putc>
 3b4:	fc9ff06f          	j	37c <neorv32_uart0_print+0x1c>

000003b8 <neorv32_cpu_irq_enable>:
 3b8:	01f00793          	li	a5,31
 3bc:	00050713          	mv	a4,a0
 3c0:	02a7e663          	bltu	a5,a0,3ec <neorv32_cpu_irq_enable+0x34>
 3c4:	ffff17b7          	lui	a5,0xffff1
 3c8:	88878793          	addi	a5,a5,-1912 # ffff0888 <__ctr0_io_space_begin+0xffff0a88>
 3cc:	00a7d7b3          	srl	a5,a5,a0
 3d0:	0017f793          	andi	a5,a5,1
 3d4:	00100513          	li	a0,1
 3d8:	00078c63          	beqz	a5,3f0 <neorv32_cpu_irq_enable+0x38>
 3dc:	00e51533          	sll	a0,a0,a4
 3e0:	30452073          	csrs	mie,a0
 3e4:	00000513          	li	a0,0
 3e8:	00008067          	ret
 3ec:	00100513          	li	a0,1
 3f0:	00008067          	ret
 3f4:	0000                	unimp
 3f6:	0000                	unimp
 3f8:	0000                	unimp
 3fa:	0000                	unimp
 3fc:	0000                	unimp
 3fe:	0000                	unimp

00000400 <__neorv32_rte_core>:
 400:	fc010113          	addi	sp,sp,-64
 404:	02112e23          	sw	ra,60(sp)
 408:	02512c23          	sw	t0,56(sp)
 40c:	02612a23          	sw	t1,52(sp)
 410:	02712823          	sw	t2,48(sp)
 414:	02a12623          	sw	a0,44(sp)
 418:	02b12423          	sw	a1,40(sp)
 41c:	02c12223          	sw	a2,36(sp)
 420:	02d12023          	sw	a3,32(sp)
 424:	00e12e23          	sw	a4,28(sp)
 428:	00f12c23          	sw	a5,24(sp)
 42c:	01012a23          	sw	a6,20(sp)
 430:	01112823          	sw	a7,16(sp)
 434:	01c12623          	sw	t3,12(sp)
 438:	01d12423          	sw	t4,8(sp)
 43c:	01e12223          	sw	t5,4(sp)
 440:	01f12023          	sw	t6,0(sp)
 444:	34102773          	csrr	a4,mepc
 448:	34071073          	csrw	mscratch,a4
 44c:	342027f3          	csrr	a5,mcause
 450:	0807c863          	bltz	a5,4e0 <__neorv32_rte_core+0xe0>
 454:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3f2bc>
 458:	00300593          	li	a1,3
 45c:	0036f693          	andi	a3,a3,3
 460:	00270613          	addi	a2,a4,2
 464:	00b69463          	bne	a3,a1,46c <__neorv32_rte_core+0x6c>
 468:	00470613          	addi	a2,a4,4
 46c:	34161073          	csrw	mepc,a2
 470:	00b00713          	li	a4,11
 474:	04f77a63          	bgeu	a4,a5,4c8 <__neorv32_rte_core+0xc8>
 478:	67c00793          	li	a5,1660
 47c:	000780e7          	jalr	a5
 480:	03c12083          	lw	ra,60(sp)
 484:	03812283          	lw	t0,56(sp)
 488:	03412303          	lw	t1,52(sp)
 48c:	03012383          	lw	t2,48(sp)
 490:	02c12503          	lw	a0,44(sp)
 494:	02812583          	lw	a1,40(sp)
 498:	02412603          	lw	a2,36(sp)
 49c:	02012683          	lw	a3,32(sp)
 4a0:	01c12703          	lw	a4,28(sp)
 4a4:	01812783          	lw	a5,24(sp)
 4a8:	01412803          	lw	a6,20(sp)
 4ac:	01012883          	lw	a7,16(sp)
 4b0:	00c12e03          	lw	t3,12(sp)
 4b4:	00812e83          	lw	t4,8(sp)
 4b8:	00412f03          	lw	t5,4(sp)
 4bc:	00012f83          	lw	t6,0(sp)
 4c0:	04010113          	addi	sp,sp,64
 4c4:	30200073          	mret
 4c8:	00001737          	lui	a4,0x1
 4cc:	00279793          	slli	a5,a5,0x2
 4d0:	a9c70713          	addi	a4,a4,-1380 # a9c <__etext+0x90>
 4d4:	00e787b3          	add	a5,a5,a4
 4d8:	0007a783          	lw	a5,0(a5)
 4dc:	00078067          	jr	a5
 4e0:	80000737          	lui	a4,0x80000
 4e4:	ffd74713          	xori	a4,a4,-3
 4e8:	00e787b3          	add	a5,a5,a4
 4ec:	01c00713          	li	a4,28
 4f0:	f8f764e3          	bltu	a4,a5,478 <__neorv32_rte_core+0x78>
 4f4:	00001737          	lui	a4,0x1
 4f8:	00279793          	slli	a5,a5,0x2
 4fc:	acc70713          	addi	a4,a4,-1332 # acc <__etext+0xc0>
 500:	00e787b3          	add	a5,a5,a4
 504:	0007a783          	lw	a5,0(a5)
 508:	00078067          	jr	a5
 50c:	800007b7          	lui	a5,0x80000
 510:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 514:	f69ff06f          	j	47c <__neorv32_rte_core+0x7c>
 518:	800007b7          	lui	a5,0x80000
 51c:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 520:	f5dff06f          	j	47c <__neorv32_rte_core+0x7c>
 524:	800007b7          	lui	a5,0x80000
 528:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 52c:	f51ff06f          	j	47c <__neorv32_rte_core+0x7c>
 530:	800007b7          	lui	a5,0x80000
 534:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
 538:	f45ff06f          	j	47c <__neorv32_rte_core+0x7c>
 53c:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
 540:	f3dff06f          	j	47c <__neorv32_rte_core+0x7c>
 544:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
 548:	f35ff06f          	j	47c <__neorv32_rte_core+0x7c>
 54c:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
 550:	f2dff06f          	j	47c <__neorv32_rte_core+0x7c>
 554:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
 558:	f25ff06f          	j	47c <__neorv32_rte_core+0x7c>
 55c:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
 560:	f1dff06f          	j	47c <__neorv32_rte_core+0x7c>
 564:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
 568:	f15ff06f          	j	47c <__neorv32_rte_core+0x7c>
 56c:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
 570:	f0dff06f          	j	47c <__neorv32_rte_core+0x7c>
 574:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
 578:	f05ff06f          	j	47c <__neorv32_rte_core+0x7c>
 57c:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
 580:	efdff06f          	j	47c <__neorv32_rte_core+0x7c>
 584:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
 588:	ef5ff06f          	j	47c <__neorv32_rte_core+0x7c>
 58c:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
 590:	eedff06f          	j	47c <__neorv32_rte_core+0x7c>
 594:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
 598:	ee5ff06f          	j	47c <__neorv32_rte_core+0x7c>
 59c:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 5a0:	eddff06f          	j	47c <__neorv32_rte_core+0x7c>
 5a4:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 5a8:	ed5ff06f          	j	47c <__neorv32_rte_core+0x7c>
 5ac:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 5b0:	ecdff06f          	j	47c <__neorv32_rte_core+0x7c>
 5b4:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 5b8:	ec5ff06f          	j	47c <__neorv32_rte_core+0x7c>
 5bc:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 5c0:	ebdff06f          	j	47c <__neorv32_rte_core+0x7c>
 5c4:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 5c8:	eb5ff06f          	j	47c <__neorv32_rte_core+0x7c>
 5cc:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 5d0:	eadff06f          	j	47c <__neorv32_rte_core+0x7c>
 5d4:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 5d8:	ea5ff06f          	j	47c <__neorv32_rte_core+0x7c>
 5dc:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 5e0:	e9dff06f          	j	47c <__neorv32_rte_core+0x7c>
 5e4:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 5e8:	e95ff06f          	j	47c <__neorv32_rte_core+0x7c>
 5ec:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 5f0:	e8dff06f          	j	47c <__neorv32_rte_core+0x7c>
 5f4:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 5f8:	e85ff06f          	j	47c <__neorv32_rte_core+0x7c>
 5fc:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 600:	e7dff06f          	j	47c <__neorv32_rte_core+0x7c>
 604:	0000                	unimp
 606:	0000                	unimp
 608:	0000                	unimp
 60a:	0000                	unimp

0000060c <__neorv32_rte_print_hex_word>:
 60c:	fe010113          	addi	sp,sp,-32
 610:	01212823          	sw	s2,16(sp)
 614:	00050913          	mv	s2,a0
 618:	00001537          	lui	a0,0x1
 61c:	00912a23          	sw	s1,20(sp)
 620:	b4050513          	addi	a0,a0,-1216 # b40 <__etext+0x134>
 624:	000014b7          	lui	s1,0x1
 628:	00812c23          	sw	s0,24(sp)
 62c:	01312623          	sw	s3,12(sp)
 630:	00112e23          	sw	ra,28(sp)
 634:	01c00413          	li	s0,28
 638:	d29ff0ef          	jal	ra,360 <neorv32_uart0_print>
 63c:	d3448493          	addi	s1,s1,-716 # d34 <hex_symbols.0>
 640:	ffc00993          	li	s3,-4
 644:	008957b3          	srl	a5,s2,s0
 648:	00f7f793          	andi	a5,a5,15
 64c:	00f487b3          	add	a5,s1,a5
 650:	0007c503          	lbu	a0,0(a5)
 654:	ffc40413          	addi	s0,s0,-4
 658:	cf1ff0ef          	jal	ra,348 <neorv32_uart0_putc>
 65c:	ff3414e3          	bne	s0,s3,644 <__neorv32_rte_print_hex_word+0x38>
 660:	01c12083          	lw	ra,28(sp)
 664:	01812403          	lw	s0,24(sp)
 668:	01412483          	lw	s1,20(sp)
 66c:	01012903          	lw	s2,16(sp)
 670:	00c12983          	lw	s3,12(sp)
 674:	02010113          	addi	sp,sp,32
 678:	00008067          	ret

0000067c <__neorv32_rte_debug_exc_handler>:
 67c:	ff010113          	addi	sp,sp,-16
 680:	00112623          	sw	ra,12(sp)
 684:	00812423          	sw	s0,8(sp)
 688:	00912223          	sw	s1,4(sp)
 68c:	c01ff0ef          	jal	ra,28c <neorv32_uart0_available>
 690:	1c050863          	beqz	a0,860 <__neorv32_rte_debug_exc_handler+0x1e4>
 694:	00001537          	lui	a0,0x1
 698:	b4450513          	addi	a0,a0,-1212 # b44 <__etext+0x138>
 69c:	cc5ff0ef          	jal	ra,360 <neorv32_uart0_print>
 6a0:	34202473          	csrr	s0,mcause
 6a4:	00900713          	li	a4,9
 6a8:	00f47793          	andi	a5,s0,15
 6ac:	03078493          	addi	s1,a5,48
 6b0:	00f77463          	bgeu	a4,a5,6b8 <__neorv32_rte_debug_exc_handler+0x3c>
 6b4:	05778493          	addi	s1,a5,87
 6b8:	00b00793          	li	a5,11
 6bc:	0087ee63          	bltu	a5,s0,6d8 <__neorv32_rte_debug_exc_handler+0x5c>
 6c0:	00001737          	lui	a4,0x1
 6c4:	00241793          	slli	a5,s0,0x2
 6c8:	d0470713          	addi	a4,a4,-764 # d04 <__etext+0x2f8>
 6cc:	00e787b3          	add	a5,a5,a4
 6d0:	0007a783          	lw	a5,0(a5)
 6d4:	00078067          	jr	a5
 6d8:	800007b7          	lui	a5,0x80000
 6dc:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 6e0:	14e40e63          	beq	s0,a4,83c <__neorv32_rte_debug_exc_handler+0x1c0>
 6e4:	02876a63          	bltu	a4,s0,718 <__neorv32_rte_debug_exc_handler+0x9c>
 6e8:	00378713          	addi	a4,a5,3
 6ec:	12e40c63          	beq	s0,a4,824 <__neorv32_rte_debug_exc_handler+0x1a8>
 6f0:	00778793          	addi	a5,a5,7
 6f4:	12f40e63          	beq	s0,a5,830 <__neorv32_rte_debug_exc_handler+0x1b4>
 6f8:	00001537          	lui	a0,0x1
 6fc:	ca450513          	addi	a0,a0,-860 # ca4 <__etext+0x298>
 700:	c61ff0ef          	jal	ra,360 <neorv32_uart0_print>
 704:	00040513          	mv	a0,s0
 708:	f05ff0ef          	jal	ra,60c <__neorv32_rte_print_hex_word>
 70c:	00100793          	li	a5,1
 710:	08f40c63          	beq	s0,a5,7a8 <__neorv32_rte_debug_exc_handler+0x12c>
 714:	0280006f          	j	73c <__neorv32_rte_debug_exc_handler+0xc0>
 718:	ff07c793          	xori	a5,a5,-16
 71c:	00f407b3          	add	a5,s0,a5
 720:	00f00713          	li	a4,15
 724:	fcf76ae3          	bltu	a4,a5,6f8 <__neorv32_rte_debug_exc_handler+0x7c>
 728:	00001537          	lui	a0,0x1
 72c:	c9450513          	addi	a0,a0,-876 # c94 <__etext+0x288>
 730:	c31ff0ef          	jal	ra,360 <neorv32_uart0_print>
 734:	00048513          	mv	a0,s1
 738:	c11ff0ef          	jal	ra,348 <neorv32_uart0_putc>
 73c:	ffd47413          	andi	s0,s0,-3
 740:	00500793          	li	a5,5
 744:	06f40263          	beq	s0,a5,7a8 <__neorv32_rte_debug_exc_handler+0x12c>
 748:	00001537          	lui	a0,0x1
 74c:	ce850513          	addi	a0,a0,-792 # ce8 <__etext+0x2dc>
 750:	c11ff0ef          	jal	ra,360 <neorv32_uart0_print>
 754:	34002573          	csrr	a0,mscratch
 758:	eb5ff0ef          	jal	ra,60c <__neorv32_rte_print_hex_word>
 75c:	00001537          	lui	a0,0x1
 760:	cf050513          	addi	a0,a0,-784 # cf0 <__etext+0x2e4>
 764:	bfdff0ef          	jal	ra,360 <neorv32_uart0_print>
 768:	34302573          	csrr	a0,mtval
 76c:	ea1ff0ef          	jal	ra,60c <__neorv32_rte_print_hex_word>
 770:	00812403          	lw	s0,8(sp)
 774:	00c12083          	lw	ra,12(sp)
 778:	00412483          	lw	s1,4(sp)
 77c:	00001537          	lui	a0,0x1
 780:	cfc50513          	addi	a0,a0,-772 # cfc <__etext+0x2f0>
 784:	01010113          	addi	sp,sp,16
 788:	bd9ff06f          	j	360 <neorv32_uart0_print>
 78c:	00001537          	lui	a0,0x1
 790:	b4c50513          	addi	a0,a0,-1204 # b4c <__etext+0x140>
 794:	bcdff0ef          	jal	ra,360 <neorv32_uart0_print>
 798:	fb1ff06f          	j	748 <__neorv32_rte_debug_exc_handler+0xcc>
 79c:	00001537          	lui	a0,0x1
 7a0:	b6c50513          	addi	a0,a0,-1172 # b6c <__etext+0x160>
 7a4:	bbdff0ef          	jal	ra,360 <neorv32_uart0_print>
 7a8:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 7ac:	0a07d463          	bgez	a5,854 <__neorv32_rte_debug_exc_handler+0x1d8>
 7b0:	0017f793          	andi	a5,a5,1
 7b4:	08078a63          	beqz	a5,848 <__neorv32_rte_debug_exc_handler+0x1cc>
 7b8:	00001537          	lui	a0,0x1
 7bc:	cbc50513          	addi	a0,a0,-836 # cbc <__etext+0x2b0>
 7c0:	fd5ff06f          	j	794 <__neorv32_rte_debug_exc_handler+0x118>
 7c4:	00001537          	lui	a0,0x1
 7c8:	b8850513          	addi	a0,a0,-1144 # b88 <__etext+0x17c>
 7cc:	fc9ff06f          	j	794 <__neorv32_rte_debug_exc_handler+0x118>
 7d0:	00001537          	lui	a0,0x1
 7d4:	b9c50513          	addi	a0,a0,-1124 # b9c <__etext+0x190>
 7d8:	fbdff06f          	j	794 <__neorv32_rte_debug_exc_handler+0x118>
 7dc:	00001537          	lui	a0,0x1
 7e0:	ba850513          	addi	a0,a0,-1112 # ba8 <__etext+0x19c>
 7e4:	fb1ff06f          	j	794 <__neorv32_rte_debug_exc_handler+0x118>
 7e8:	00001537          	lui	a0,0x1
 7ec:	bc050513          	addi	a0,a0,-1088 # bc0 <__etext+0x1b4>
 7f0:	fb5ff06f          	j	7a4 <__neorv32_rte_debug_exc_handler+0x128>
 7f4:	00001537          	lui	a0,0x1
 7f8:	bd450513          	addi	a0,a0,-1068 # bd4 <__etext+0x1c8>
 7fc:	f99ff06f          	j	794 <__neorv32_rte_debug_exc_handler+0x118>
 800:	00001537          	lui	a0,0x1
 804:	bf050513          	addi	a0,a0,-1040 # bf0 <__etext+0x1e4>
 808:	f9dff06f          	j	7a4 <__neorv32_rte_debug_exc_handler+0x128>
 80c:	00001537          	lui	a0,0x1
 810:	c0450513          	addi	a0,a0,-1020 # c04 <__etext+0x1f8>
 814:	f81ff06f          	j	794 <__neorv32_rte_debug_exc_handler+0x118>
 818:	00001537          	lui	a0,0x1
 81c:	c2450513          	addi	a0,a0,-988 # c24 <__etext+0x218>
 820:	f75ff06f          	j	794 <__neorv32_rte_debug_exc_handler+0x118>
 824:	00001537          	lui	a0,0x1
 828:	c4450513          	addi	a0,a0,-956 # c44 <__etext+0x238>
 82c:	f69ff06f          	j	794 <__neorv32_rte_debug_exc_handler+0x118>
 830:	00001537          	lui	a0,0x1
 834:	c6050513          	addi	a0,a0,-928 # c60 <__etext+0x254>
 838:	f5dff06f          	j	794 <__neorv32_rte_debug_exc_handler+0x118>
 83c:	00001537          	lui	a0,0x1
 840:	c7850513          	addi	a0,a0,-904 # c78 <__etext+0x26c>
 844:	f51ff06f          	j	794 <__neorv32_rte_debug_exc_handler+0x118>
 848:	00001537          	lui	a0,0x1
 84c:	ccc50513          	addi	a0,a0,-820 # ccc <__etext+0x2c0>
 850:	f45ff06f          	j	794 <__neorv32_rte_debug_exc_handler+0x118>
 854:	00001537          	lui	a0,0x1
 858:	cdc50513          	addi	a0,a0,-804 # cdc <__etext+0x2d0>
 85c:	f39ff06f          	j	794 <__neorv32_rte_debug_exc_handler+0x118>
 860:	00c12083          	lw	ra,12(sp)
 864:	00812403          	lw	s0,8(sp)
 868:	00412483          	lw	s1,4(sp)
 86c:	01010113          	addi	sp,sp,16
 870:	00008067          	ret

00000874 <neorv32_rte_exception_install>:
 874:	01f00793          	li	a5,31
 878:	02a7e063          	bltu	a5,a0,898 <neorv32_rte_exception_install+0x24>
 87c:	800007b7          	lui	a5,0x80000
 880:	00078793          	mv	a5,a5
 884:	00251513          	slli	a0,a0,0x2
 888:	00a78533          	add	a0,a5,a0
 88c:	00b52023          	sw	a1,0(a0)
 890:	00000513          	li	a0,0
 894:	00008067          	ret
 898:	00100513          	li	a0,1
 89c:	00008067          	ret

000008a0 <neorv32_rte_exception_uninstall>:
 8a0:	01f00793          	li	a5,31
 8a4:	02a7e263          	bltu	a5,a0,8c8 <neorv32_rte_exception_uninstall+0x28>
 8a8:	800007b7          	lui	a5,0x80000
 8ac:	00078793          	mv	a5,a5
 8b0:	00251513          	slli	a0,a0,0x2
 8b4:	00a78533          	add	a0,a5,a0
 8b8:	67c00793          	li	a5,1660
 8bc:	00f52023          	sw	a5,0(a0)
 8c0:	00000513          	li	a0,0
 8c4:	00008067          	ret
 8c8:	00100513          	li	a0,1
 8cc:	00008067          	ret

000008d0 <neorv32_rte_setup>:
 8d0:	ff010113          	addi	sp,sp,-16
 8d4:	00112623          	sw	ra,12(sp)
 8d8:	00812423          	sw	s0,8(sp)
 8dc:	00912223          	sw	s1,4(sp)
 8e0:	40000793          	li	a5,1024
 8e4:	30579073          	csrw	mtvec,a5
 8e8:	00000413          	li	s0,0
 8ec:	01d00493          	li	s1,29
 8f0:	00040513          	mv	a0,s0
 8f4:	00140413          	addi	s0,s0,1
 8f8:	0ff47413          	andi	s0,s0,255
 8fc:	fa5ff0ef          	jal	ra,8a0 <neorv32_rte_exception_uninstall>
 900:	fe9418e3          	bne	s0,s1,8f0 <neorv32_rte_setup+0x20>
 904:	00c12083          	lw	ra,12(sp)
 908:	00812403          	lw	s0,8(sp)
 90c:	00412483          	lw	s1,4(sp)
 910:	01010113          	addi	sp,sp,16
 914:	00008067          	ret

00000918 <neorv32_gpio_pin_toggle>:
 918:	00100793          	li	a5,1
 91c:	01f00713          	li	a4,31
 920:	00a797b3          	sll	a5,a5,a0
 924:	00a74a63          	blt	a4,a0,938 <neorv32_gpio_pin_toggle+0x20>
 928:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 92c:	00f747b3          	xor	a5,a4,a5
 930:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 934:	00008067          	ret
 938:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 93c:	00f747b3          	xor	a5,a4,a5
 940:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 944:	00008067          	ret

00000948 <neorv32_gpio_port_set>:
 948:	fc000793          	li	a5,-64
 94c:	00a7a423          	sw	a0,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 950:	00b7a623          	sw	a1,12(a5)
 954:	00008067          	ret

00000958 <__divsi3>:
 958:	06054063          	bltz	a0,9b8 <__umodsi3+0x10>
 95c:	0605c663          	bltz	a1,9c8 <__umodsi3+0x20>

00000960 <__udivsi3>:
 960:	00058613          	mv	a2,a1
 964:	00050593          	mv	a1,a0
 968:	fff00513          	li	a0,-1
 96c:	02060c63          	beqz	a2,9a4 <__udivsi3+0x44>
 970:	00100693          	li	a3,1
 974:	00b67a63          	bgeu	a2,a1,988 <__udivsi3+0x28>
 978:	00c05863          	blez	a2,988 <__udivsi3+0x28>
 97c:	00161613          	slli	a2,a2,0x1
 980:	00169693          	slli	a3,a3,0x1
 984:	feb66ae3          	bltu	a2,a1,978 <__udivsi3+0x18>
 988:	00000513          	li	a0,0
 98c:	00c5e663          	bltu	a1,a2,998 <__udivsi3+0x38>
 990:	40c585b3          	sub	a1,a1,a2
 994:	00d56533          	or	a0,a0,a3
 998:	0016d693          	srli	a3,a3,0x1
 99c:	00165613          	srli	a2,a2,0x1
 9a0:	fe0696e3          	bnez	a3,98c <__udivsi3+0x2c>
 9a4:	00008067          	ret

000009a8 <__umodsi3>:
 9a8:	00008293          	mv	t0,ra
 9ac:	fb5ff0ef          	jal	ra,960 <__udivsi3>
 9b0:	00058513          	mv	a0,a1
 9b4:	00028067          	jr	t0
 9b8:	40a00533          	neg	a0,a0
 9bc:	00b04863          	bgtz	a1,9cc <__umodsi3+0x24>
 9c0:	40b005b3          	neg	a1,a1
 9c4:	f9dff06f          	j	960 <__udivsi3>
 9c8:	40b005b3          	neg	a1,a1
 9cc:	00008293          	mv	t0,ra
 9d0:	f91ff0ef          	jal	ra,960 <__udivsi3>
 9d4:	40a00533          	neg	a0,a0
 9d8:	00028067          	jr	t0

000009dc <__modsi3>:
 9dc:	00008293          	mv	t0,ra
 9e0:	0005ca63          	bltz	a1,9f4 <__modsi3+0x18>
 9e4:	00054c63          	bltz	a0,9fc <__modsi3+0x20>
 9e8:	f79ff0ef          	jal	ra,960 <__udivsi3>
 9ec:	00058513          	mv	a0,a1
 9f0:	00028067          	jr	t0
 9f4:	40b005b3          	neg	a1,a1
 9f8:	fe0558e3          	bgez	a0,9e8 <__modsi3+0xc>
 9fc:	40a00533          	neg	a0,a0
 a00:	f61ff0ef          	jal	ra,960 <__udivsi3>
 a04:	40b00533          	neg	a0,a1
 a08:	00028067          	jr	t0
