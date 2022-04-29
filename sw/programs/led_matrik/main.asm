
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
  e0:	da458593          	addi	a1,a1,-604 # e80 <__crt0_copy_data_src_begin>
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
 184:	fc010113          	addi	sp,sp,-64
 188:	00000613          	li	a2,0
 18c:	00000593          	li	a1,0
 190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3c80>
 194:	02112e23          	sw	ra,60(sp)
 198:	18c000ef          	jal	ra,324 <neorv32_uart0_setup>
 19c:	790000ef          	jal	ra,92c <neorv32_gpio_available>
 1a0:	06050063          	beqz	a0,200 <main+0x80>
 1a4:	740000ef          	jal	ra,8e4 <neorv32_rte_setup>
 1a8:	00001537          	lui	a0,0x1
 1ac:	ba050513          	addi	a0,a0,-1120 # ba0 <__etext+0x24>
 1b0:	238000ef          	jal	ra,3e8 <neorv32_uart0_print>
 1b4:	000015b7          	lui	a1,0x1
 1b8:	02300613          	li	a2,35
 1bc:	bb458593          	addi	a1,a1,-1100 # bb4 <__etext+0x38>
 1c0:	00c10513          	addi	a0,sp,12
 1c4:	091000ef          	jal	ra,a54 <memcpy>
 1c8:	1b1a27b7          	lui	a5,0x1b1a2
 1cc:	91878793          	addi	a5,a5,-1768 # 1b1a1918 <__crt0_copy_data_src_begin+0x1b1a0a98>
 1d0:	00f12223          	sw	a5,4(sp)
 1d4:	1f1e27b7          	lui	a5,0x1f1e2
 1d8:	d1c78793          	addi	a5,a5,-740 # 1f1e1d1c <__crt0_copy_data_src_begin+0x1f1e0e9c>
 1dc:	01600513          	li	a0,22
 1e0:	00f12423          	sw	a5,8(sp)
 1e4:	788000ef          	jal	ra,96c <neorv32_gpio_pin_clr>
 1e8:	01700513          	li	a0,23
 1ec:	750000ef          	jal	ra,93c <neorv32_gpio_pin_set>
 1f0:	00410593          	addi	a1,sp,4
 1f4:	00c10513          	addi	a0,sp,12
 1f8:	024000ef          	jal	ra,21c <displaySymbol>
 1fc:	ff5ff06f          	j	1f0 <main+0x70>
 200:	00001537          	lui	a0,0x1
 204:	b7c50513          	addi	a0,a0,-1156 # b7c <__etext>
 208:	1e0000ef          	jal	ra,3e8 <neorv32_uart0_print>
 20c:	03c12083          	lw	ra,60(sp)
 210:	00100513          	li	a0,1
 214:	04010113          	addi	sp,sp,64
 218:	00008067          	ret

0000021c <displaySymbol>:
 21c:	fd010113          	addi	sp,sp,-48
 220:	02812423          	sw	s0,40(sp)
 224:	03212023          	sw	s2,32(sp)
 228:	01312e23          	sw	s3,28(sp)
 22c:	01412c23          	sw	s4,24(sp)
 230:	01512a23          	sw	s5,20(sp)
 234:	01612823          	sw	s6,16(sp)
 238:	01712623          	sw	s7,12(sp)
 23c:	02112623          	sw	ra,44(sp)
 240:	02912223          	sw	s1,36(sp)
 244:	01812423          	sw	s8,8(sp)
 248:	00058413          	mv	s0,a1
 24c:	00050913          	mv	s2,a0
 250:	0ff00993          	li	s3,255
 254:	ffd58a93          	addi	s5,a1,-3
 258:	00100b93          	li	s7,1
 25c:	00858b13          	addi	s6,a1,8
 260:	0f800a13          	li	s4,248
 264:	00040493          	mv	s1,s0
 268:	40940733          	sub	a4,s0,s1
 26c:	00eb97b3          	sll	a5,s7,a4
 270:	0137f7b3          	and	a5,a5,s3
 274:	40e7d7b3          	sra	a5,a5,a4
 278:	0024c503          	lbu	a0,2(s1)
 27c:	08078063          	beqz	a5,2fc <displaySymbol+0xe0>
 280:	6bc000ef          	jal	ra,93c <neorv32_gpio_pin_set>
 284:	fff48493          	addi	s1,s1,-1
 288:	fe9a90e3          	bne	s5,s1,268 <displaySymbol+0x4c>
 28c:	00340493          	addi	s1,s0,3
 290:	00090c13          	mv	s8,s2
 294:	000c4783          	lbu	a5,0(s8)
 298:	0004c503          	lbu	a0,0(s1)
 29c:	06078463          	beqz	a5,304 <displaySymbol+0xe8>
 2a0:	69c000ef          	jal	ra,93c <neorv32_gpio_pin_set>
 2a4:	000c4783          	lbu	a5,0(s8)
 2a8:	0004c503          	lbu	a0,0(s1)
 2ac:	06078063          	beqz	a5,30c <displaySymbol+0xf0>
 2b0:	6bc000ef          	jal	ra,96c <neorv32_gpio_pin_clr>
 2b4:	00148493          	addi	s1,s1,1
 2b8:	001c0c13          	addi	s8,s8,1
 2bc:	fc9b1ce3          	bne	s6,s1,294 <displaySymbol+0x78>
 2c0:	fff98993          	addi	s3,s3,-1
 2c4:	00590913          	addi	s2,s2,5
 2c8:	f9499ee3          	bne	s3,s4,264 <displaySymbol+0x48>
 2cc:	02c12083          	lw	ra,44(sp)
 2d0:	02812403          	lw	s0,40(sp)
 2d4:	02412483          	lw	s1,36(sp)
 2d8:	02012903          	lw	s2,32(sp)
 2dc:	01c12983          	lw	s3,28(sp)
 2e0:	01812a03          	lw	s4,24(sp)
 2e4:	01412a83          	lw	s5,20(sp)
 2e8:	01012b03          	lw	s6,16(sp)
 2ec:	00c12b83          	lw	s7,12(sp)
 2f0:	00812c03          	lw	s8,8(sp)
 2f4:	03010113          	addi	sp,sp,48
 2f8:	00008067          	ret
 2fc:	670000ef          	jal	ra,96c <neorv32_gpio_pin_clr>
 300:	f85ff06f          	j	284 <displaySymbol+0x68>
 304:	668000ef          	jal	ra,96c <neorv32_gpio_pin_clr>
 308:	f9dff06f          	j	2a4 <displaySymbol+0x88>
 30c:	630000ef          	jal	ra,93c <neorv32_gpio_pin_set>
 310:	fa5ff06f          	j	2b4 <displaySymbol+0x98>

00000314 <neorv32_uart0_available>:
 314:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 318:	01255513          	srli	a0,a0,0x12
 31c:	00157513          	andi	a0,a0,1
 320:	00008067          	ret

00000324 <neorv32_uart0_setup>:
 324:	ff010113          	addi	sp,sp,-16
 328:	00812423          	sw	s0,8(sp)
 32c:	00912223          	sw	s1,4(sp)
 330:	00112623          	sw	ra,12(sp)
 334:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 338:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 33c:	00058413          	mv	s0,a1
 340:	00151593          	slli	a1,a0,0x1
 344:	00078513          	mv	a0,a5
 348:	00060493          	mv	s1,a2
 34c:	65c000ef          	jal	ra,9a8 <__udivsi3>
 350:	01051513          	slli	a0,a0,0x10
 354:	000017b7          	lui	a5,0x1
 358:	01055513          	srli	a0,a0,0x10
 35c:	00000713          	li	a4,0
 360:	ffe78793          	addi	a5,a5,-2 # ffe <__crt0_copy_data_src_begin+0x17e>
 364:	04a7e463          	bltu	a5,a0,3ac <neorv32_uart0_setup+0x88>
 368:	0034f793          	andi	a5,s1,3
 36c:	00347413          	andi	s0,s0,3
 370:	fff50513          	addi	a0,a0,-1
 374:	01479793          	slli	a5,a5,0x14
 378:	01641413          	slli	s0,s0,0x16
 37c:	00f567b3          	or	a5,a0,a5
 380:	0087e7b3          	or	a5,a5,s0
 384:	01871713          	slli	a4,a4,0x18
 388:	00c12083          	lw	ra,12(sp)
 38c:	00812403          	lw	s0,8(sp)
 390:	00e7e7b3          	or	a5,a5,a4
 394:	10000737          	lui	a4,0x10000
 398:	00e7e7b3          	or	a5,a5,a4
 39c:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 3a0:	00412483          	lw	s1,4(sp)
 3a4:	01010113          	addi	sp,sp,16
 3a8:	00008067          	ret
 3ac:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xffff17e>
 3b0:	0fd6f693          	andi	a3,a3,253
 3b4:	00069a63          	bnez	a3,3c8 <neorv32_uart0_setup+0xa4>
 3b8:	00355513          	srli	a0,a0,0x3
 3bc:	00170713          	addi	a4,a4,1
 3c0:	0ff77713          	andi	a4,a4,255
 3c4:	fa1ff06f          	j	364 <neorv32_uart0_setup+0x40>
 3c8:	00155513          	srli	a0,a0,0x1
 3cc:	ff1ff06f          	j	3bc <neorv32_uart0_setup+0x98>

000003d0 <neorv32_uart0_putc>:
 3d0:	00040737          	lui	a4,0x40
 3d4:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 3d8:	00e7f7b3          	and	a5,a5,a4
 3dc:	fe079ce3          	bnez	a5,3d4 <neorv32_uart0_putc+0x4>
 3e0:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 3e4:	00008067          	ret

000003e8 <neorv32_uart0_print>:
 3e8:	ff010113          	addi	sp,sp,-16
 3ec:	00812423          	sw	s0,8(sp)
 3f0:	01212023          	sw	s2,0(sp)
 3f4:	00112623          	sw	ra,12(sp)
 3f8:	00912223          	sw	s1,4(sp)
 3fc:	00050413          	mv	s0,a0
 400:	00a00913          	li	s2,10
 404:	00044483          	lbu	s1,0(s0)
 408:	00140413          	addi	s0,s0,1
 40c:	00049e63          	bnez	s1,428 <neorv32_uart0_print+0x40>
 410:	00c12083          	lw	ra,12(sp)
 414:	00812403          	lw	s0,8(sp)
 418:	00412483          	lw	s1,4(sp)
 41c:	00012903          	lw	s2,0(sp)
 420:	01010113          	addi	sp,sp,16
 424:	00008067          	ret
 428:	01249663          	bne	s1,s2,434 <neorv32_uart0_print+0x4c>
 42c:	00d00513          	li	a0,13
 430:	fa1ff0ef          	jal	ra,3d0 <neorv32_uart0_putc>
 434:	00048513          	mv	a0,s1
 438:	f99ff0ef          	jal	ra,3d0 <neorv32_uart0_putc>
 43c:	fc9ff06f          	j	404 <neorv32_uart0_print+0x1c>

00000440 <__neorv32_rte_core>:
 440:	fc010113          	addi	sp,sp,-64
 444:	02112e23          	sw	ra,60(sp)
 448:	02512c23          	sw	t0,56(sp)
 44c:	02612a23          	sw	t1,52(sp)
 450:	02712823          	sw	t2,48(sp)
 454:	02a12623          	sw	a0,44(sp)
 458:	02b12423          	sw	a1,40(sp)
 45c:	02c12223          	sw	a2,36(sp)
 460:	02d12023          	sw	a3,32(sp)
 464:	00e12e23          	sw	a4,28(sp)
 468:	00f12c23          	sw	a5,24(sp)
 46c:	01012a23          	sw	a6,20(sp)
 470:	01112823          	sw	a7,16(sp)
 474:	01c12623          	sw	t3,12(sp)
 478:	01d12423          	sw	t4,8(sp)
 47c:	01e12223          	sw	t5,4(sp)
 480:	01f12023          	sw	t6,0(sp)
 484:	34102773          	csrr	a4,mepc
 488:	34071073          	csrw	mscratch,a4
 48c:	342027f3          	csrr	a5,mcause
 490:	0807c863          	bltz	a5,520 <__neorv32_rte_core+0xe0>
 494:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3f180>
 498:	00300593          	li	a1,3
 49c:	0036f693          	andi	a3,a3,3
 4a0:	00270613          	addi	a2,a4,2
 4a4:	00b69463          	bne	a3,a1,4ac <__neorv32_rte_core+0x6c>
 4a8:	00470613          	addi	a2,a4,4
 4ac:	34161073          	csrw	mepc,a2
 4b0:	00b00713          	li	a4,11
 4b4:	04f77a63          	bgeu	a4,a5,508 <__neorv32_rte_core+0xc8>
 4b8:	6bc00793          	li	a5,1724
 4bc:	000780e7          	jalr	a5
 4c0:	03c12083          	lw	ra,60(sp)
 4c4:	03812283          	lw	t0,56(sp)
 4c8:	03412303          	lw	t1,52(sp)
 4cc:	03012383          	lw	t2,48(sp)
 4d0:	02c12503          	lw	a0,44(sp)
 4d4:	02812583          	lw	a1,40(sp)
 4d8:	02412603          	lw	a2,36(sp)
 4dc:	02012683          	lw	a3,32(sp)
 4e0:	01c12703          	lw	a4,28(sp)
 4e4:	01812783          	lw	a5,24(sp)
 4e8:	01412803          	lw	a6,20(sp)
 4ec:	01012883          	lw	a7,16(sp)
 4f0:	00c12e03          	lw	t3,12(sp)
 4f4:	00812e83          	lw	t4,8(sp)
 4f8:	00412f03          	lw	t5,4(sp)
 4fc:	00012f83          	lw	t6,0(sp)
 500:	04010113          	addi	sp,sp,64
 504:	30200073          	mret
 508:	00001737          	lui	a4,0x1
 50c:	00279793          	slli	a5,a5,0x2
 510:	bd870713          	addi	a4,a4,-1064 # bd8 <__etext+0x5c>
 514:	00e787b3          	add	a5,a5,a4
 518:	0007a783          	lw	a5,0(a5)
 51c:	00078067          	jr	a5
 520:	80000737          	lui	a4,0x80000
 524:	ffd74713          	xori	a4,a4,-3
 528:	00e787b3          	add	a5,a5,a4
 52c:	01c00713          	li	a4,28
 530:	f8f764e3          	bltu	a4,a5,4b8 <__neorv32_rte_core+0x78>
 534:	00001737          	lui	a4,0x1
 538:	00279793          	slli	a5,a5,0x2
 53c:	c0870713          	addi	a4,a4,-1016 # c08 <__etext+0x8c>
 540:	00e787b3          	add	a5,a5,a4
 544:	0007a783          	lw	a5,0(a5)
 548:	00078067          	jr	a5
 54c:	800007b7          	lui	a5,0x80000
 550:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 554:	f69ff06f          	j	4bc <__neorv32_rte_core+0x7c>
 558:	800007b7          	lui	a5,0x80000
 55c:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 560:	f5dff06f          	j	4bc <__neorv32_rte_core+0x7c>
 564:	800007b7          	lui	a5,0x80000
 568:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 56c:	f51ff06f          	j	4bc <__neorv32_rte_core+0x7c>
 570:	800007b7          	lui	a5,0x80000
 574:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
 578:	f45ff06f          	j	4bc <__neorv32_rte_core+0x7c>
 57c:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
 580:	f3dff06f          	j	4bc <__neorv32_rte_core+0x7c>
 584:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
 588:	f35ff06f          	j	4bc <__neorv32_rte_core+0x7c>
 58c:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
 590:	f2dff06f          	j	4bc <__neorv32_rte_core+0x7c>
 594:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
 598:	f25ff06f          	j	4bc <__neorv32_rte_core+0x7c>
 59c:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
 5a0:	f1dff06f          	j	4bc <__neorv32_rte_core+0x7c>
 5a4:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
 5a8:	f15ff06f          	j	4bc <__neorv32_rte_core+0x7c>
 5ac:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
 5b0:	f0dff06f          	j	4bc <__neorv32_rte_core+0x7c>
 5b4:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
 5b8:	f05ff06f          	j	4bc <__neorv32_rte_core+0x7c>
 5bc:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
 5c0:	efdff06f          	j	4bc <__neorv32_rte_core+0x7c>
 5c4:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
 5c8:	ef5ff06f          	j	4bc <__neorv32_rte_core+0x7c>
 5cc:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
 5d0:	eedff06f          	j	4bc <__neorv32_rte_core+0x7c>
 5d4:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
 5d8:	ee5ff06f          	j	4bc <__neorv32_rte_core+0x7c>
 5dc:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 5e0:	eddff06f          	j	4bc <__neorv32_rte_core+0x7c>
 5e4:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 5e8:	ed5ff06f          	j	4bc <__neorv32_rte_core+0x7c>
 5ec:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 5f0:	ecdff06f          	j	4bc <__neorv32_rte_core+0x7c>
 5f4:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 5f8:	ec5ff06f          	j	4bc <__neorv32_rte_core+0x7c>
 5fc:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 600:	ebdff06f          	j	4bc <__neorv32_rte_core+0x7c>
 604:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 608:	eb5ff06f          	j	4bc <__neorv32_rte_core+0x7c>
 60c:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 610:	eadff06f          	j	4bc <__neorv32_rte_core+0x7c>
 614:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 618:	ea5ff06f          	j	4bc <__neorv32_rte_core+0x7c>
 61c:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 620:	e9dff06f          	j	4bc <__neorv32_rte_core+0x7c>
 624:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 628:	e95ff06f          	j	4bc <__neorv32_rte_core+0x7c>
 62c:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 630:	e8dff06f          	j	4bc <__neorv32_rte_core+0x7c>
 634:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 638:	e85ff06f          	j	4bc <__neorv32_rte_core+0x7c>
 63c:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 640:	e7dff06f          	j	4bc <__neorv32_rte_core+0x7c>
 644:	0000                	unimp
 646:	0000                	unimp
 648:	0000                	unimp
 64a:	0000                	unimp

0000064c <__neorv32_rte_print_hex_word>:
 64c:	fe010113          	addi	sp,sp,-32
 650:	01212823          	sw	s2,16(sp)
 654:	00050913          	mv	s2,a0
 658:	00001537          	lui	a0,0x1
 65c:	00912a23          	sw	s1,20(sp)
 660:	c7c50513          	addi	a0,a0,-900 # c7c <__etext+0x100>
 664:	000014b7          	lui	s1,0x1
 668:	00812c23          	sw	s0,24(sp)
 66c:	01312623          	sw	s3,12(sp)
 670:	00112e23          	sw	ra,28(sp)
 674:	01c00413          	li	s0,28
 678:	d71ff0ef          	jal	ra,3e8 <neorv32_uart0_print>
 67c:	e7048493          	addi	s1,s1,-400 # e70 <hex_symbols.0>
 680:	ffc00993          	li	s3,-4
 684:	008957b3          	srl	a5,s2,s0
 688:	00f7f793          	andi	a5,a5,15
 68c:	00f487b3          	add	a5,s1,a5
 690:	0007c503          	lbu	a0,0(a5)
 694:	ffc40413          	addi	s0,s0,-4
 698:	d39ff0ef          	jal	ra,3d0 <neorv32_uart0_putc>
 69c:	ff3414e3          	bne	s0,s3,684 <__neorv32_rte_print_hex_word+0x38>
 6a0:	01c12083          	lw	ra,28(sp)
 6a4:	01812403          	lw	s0,24(sp)
 6a8:	01412483          	lw	s1,20(sp)
 6ac:	01012903          	lw	s2,16(sp)
 6b0:	00c12983          	lw	s3,12(sp)
 6b4:	02010113          	addi	sp,sp,32
 6b8:	00008067          	ret

000006bc <__neorv32_rte_debug_exc_handler>:
 6bc:	ff010113          	addi	sp,sp,-16
 6c0:	00112623          	sw	ra,12(sp)
 6c4:	00812423          	sw	s0,8(sp)
 6c8:	00912223          	sw	s1,4(sp)
 6cc:	c49ff0ef          	jal	ra,314 <neorv32_uart0_available>
 6d0:	1c050863          	beqz	a0,8a0 <__neorv32_rte_debug_exc_handler+0x1e4>
 6d4:	00001537          	lui	a0,0x1
 6d8:	c8050513          	addi	a0,a0,-896 # c80 <__etext+0x104>
 6dc:	d0dff0ef          	jal	ra,3e8 <neorv32_uart0_print>
 6e0:	34202473          	csrr	s0,mcause
 6e4:	00900713          	li	a4,9
 6e8:	00f47793          	andi	a5,s0,15
 6ec:	03078493          	addi	s1,a5,48
 6f0:	00f77463          	bgeu	a4,a5,6f8 <__neorv32_rte_debug_exc_handler+0x3c>
 6f4:	05778493          	addi	s1,a5,87
 6f8:	00b00793          	li	a5,11
 6fc:	0087ee63          	bltu	a5,s0,718 <__neorv32_rte_debug_exc_handler+0x5c>
 700:	00001737          	lui	a4,0x1
 704:	00241793          	slli	a5,s0,0x2
 708:	e4070713          	addi	a4,a4,-448 # e40 <__etext+0x2c4>
 70c:	00e787b3          	add	a5,a5,a4
 710:	0007a783          	lw	a5,0(a5)
 714:	00078067          	jr	a5
 718:	800007b7          	lui	a5,0x80000
 71c:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 720:	14e40e63          	beq	s0,a4,87c <__neorv32_rte_debug_exc_handler+0x1c0>
 724:	02876a63          	bltu	a4,s0,758 <__neorv32_rte_debug_exc_handler+0x9c>
 728:	00378713          	addi	a4,a5,3
 72c:	12e40c63          	beq	s0,a4,864 <__neorv32_rte_debug_exc_handler+0x1a8>
 730:	00778793          	addi	a5,a5,7
 734:	12f40e63          	beq	s0,a5,870 <__neorv32_rte_debug_exc_handler+0x1b4>
 738:	00001537          	lui	a0,0x1
 73c:	de050513          	addi	a0,a0,-544 # de0 <__etext+0x264>
 740:	ca9ff0ef          	jal	ra,3e8 <neorv32_uart0_print>
 744:	00040513          	mv	a0,s0
 748:	f05ff0ef          	jal	ra,64c <__neorv32_rte_print_hex_word>
 74c:	00100793          	li	a5,1
 750:	08f40c63          	beq	s0,a5,7e8 <__neorv32_rte_debug_exc_handler+0x12c>
 754:	0280006f          	j	77c <__neorv32_rte_debug_exc_handler+0xc0>
 758:	ff07c793          	xori	a5,a5,-16
 75c:	00f407b3          	add	a5,s0,a5
 760:	00f00713          	li	a4,15
 764:	fcf76ae3          	bltu	a4,a5,738 <__neorv32_rte_debug_exc_handler+0x7c>
 768:	00001537          	lui	a0,0x1
 76c:	dd050513          	addi	a0,a0,-560 # dd0 <__etext+0x254>
 770:	c79ff0ef          	jal	ra,3e8 <neorv32_uart0_print>
 774:	00048513          	mv	a0,s1
 778:	c59ff0ef          	jal	ra,3d0 <neorv32_uart0_putc>
 77c:	ffd47413          	andi	s0,s0,-3
 780:	00500793          	li	a5,5
 784:	06f40263          	beq	s0,a5,7e8 <__neorv32_rte_debug_exc_handler+0x12c>
 788:	00001537          	lui	a0,0x1
 78c:	e2450513          	addi	a0,a0,-476 # e24 <__etext+0x2a8>
 790:	c59ff0ef          	jal	ra,3e8 <neorv32_uart0_print>
 794:	34002573          	csrr	a0,mscratch
 798:	eb5ff0ef          	jal	ra,64c <__neorv32_rte_print_hex_word>
 79c:	00001537          	lui	a0,0x1
 7a0:	e2c50513          	addi	a0,a0,-468 # e2c <__etext+0x2b0>
 7a4:	c45ff0ef          	jal	ra,3e8 <neorv32_uart0_print>
 7a8:	34302573          	csrr	a0,mtval
 7ac:	ea1ff0ef          	jal	ra,64c <__neorv32_rte_print_hex_word>
 7b0:	00812403          	lw	s0,8(sp)
 7b4:	00c12083          	lw	ra,12(sp)
 7b8:	00412483          	lw	s1,4(sp)
 7bc:	00001537          	lui	a0,0x1
 7c0:	e3850513          	addi	a0,a0,-456 # e38 <__etext+0x2bc>
 7c4:	01010113          	addi	sp,sp,16
 7c8:	c21ff06f          	j	3e8 <neorv32_uart0_print>
 7cc:	00001537          	lui	a0,0x1
 7d0:	c8850513          	addi	a0,a0,-888 # c88 <__etext+0x10c>
 7d4:	c15ff0ef          	jal	ra,3e8 <neorv32_uart0_print>
 7d8:	fb1ff06f          	j	788 <__neorv32_rte_debug_exc_handler+0xcc>
 7dc:	00001537          	lui	a0,0x1
 7e0:	ca850513          	addi	a0,a0,-856 # ca8 <__etext+0x12c>
 7e4:	c05ff0ef          	jal	ra,3e8 <neorv32_uart0_print>
 7e8:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 7ec:	0a07d463          	bgez	a5,894 <__neorv32_rte_debug_exc_handler+0x1d8>
 7f0:	0017f793          	andi	a5,a5,1
 7f4:	08078a63          	beqz	a5,888 <__neorv32_rte_debug_exc_handler+0x1cc>
 7f8:	00001537          	lui	a0,0x1
 7fc:	df850513          	addi	a0,a0,-520 # df8 <__etext+0x27c>
 800:	fd5ff06f          	j	7d4 <__neorv32_rte_debug_exc_handler+0x118>
 804:	00001537          	lui	a0,0x1
 808:	cc450513          	addi	a0,a0,-828 # cc4 <__etext+0x148>
 80c:	fc9ff06f          	j	7d4 <__neorv32_rte_debug_exc_handler+0x118>
 810:	00001537          	lui	a0,0x1
 814:	cd850513          	addi	a0,a0,-808 # cd8 <__etext+0x15c>
 818:	fbdff06f          	j	7d4 <__neorv32_rte_debug_exc_handler+0x118>
 81c:	00001537          	lui	a0,0x1
 820:	ce450513          	addi	a0,a0,-796 # ce4 <__etext+0x168>
 824:	fb1ff06f          	j	7d4 <__neorv32_rte_debug_exc_handler+0x118>
 828:	00001537          	lui	a0,0x1
 82c:	cfc50513          	addi	a0,a0,-772 # cfc <__etext+0x180>
 830:	fb5ff06f          	j	7e4 <__neorv32_rte_debug_exc_handler+0x128>
 834:	00001537          	lui	a0,0x1
 838:	d1050513          	addi	a0,a0,-752 # d10 <__etext+0x194>
 83c:	f99ff06f          	j	7d4 <__neorv32_rte_debug_exc_handler+0x118>
 840:	00001537          	lui	a0,0x1
 844:	d2c50513          	addi	a0,a0,-724 # d2c <__etext+0x1b0>
 848:	f9dff06f          	j	7e4 <__neorv32_rte_debug_exc_handler+0x128>
 84c:	00001537          	lui	a0,0x1
 850:	d4050513          	addi	a0,a0,-704 # d40 <__etext+0x1c4>
 854:	f81ff06f          	j	7d4 <__neorv32_rte_debug_exc_handler+0x118>
 858:	00001537          	lui	a0,0x1
 85c:	d6050513          	addi	a0,a0,-672 # d60 <__etext+0x1e4>
 860:	f75ff06f          	j	7d4 <__neorv32_rte_debug_exc_handler+0x118>
 864:	00001537          	lui	a0,0x1
 868:	d8050513          	addi	a0,a0,-640 # d80 <__etext+0x204>
 86c:	f69ff06f          	j	7d4 <__neorv32_rte_debug_exc_handler+0x118>
 870:	00001537          	lui	a0,0x1
 874:	d9c50513          	addi	a0,a0,-612 # d9c <__etext+0x220>
 878:	f5dff06f          	j	7d4 <__neorv32_rte_debug_exc_handler+0x118>
 87c:	00001537          	lui	a0,0x1
 880:	db450513          	addi	a0,a0,-588 # db4 <__etext+0x238>
 884:	f51ff06f          	j	7d4 <__neorv32_rte_debug_exc_handler+0x118>
 888:	00001537          	lui	a0,0x1
 88c:	e0850513          	addi	a0,a0,-504 # e08 <__etext+0x28c>
 890:	f45ff06f          	j	7d4 <__neorv32_rte_debug_exc_handler+0x118>
 894:	00001537          	lui	a0,0x1
 898:	e1850513          	addi	a0,a0,-488 # e18 <__etext+0x29c>
 89c:	f39ff06f          	j	7d4 <__neorv32_rte_debug_exc_handler+0x118>
 8a0:	00c12083          	lw	ra,12(sp)
 8a4:	00812403          	lw	s0,8(sp)
 8a8:	00412483          	lw	s1,4(sp)
 8ac:	01010113          	addi	sp,sp,16
 8b0:	00008067          	ret

000008b4 <neorv32_rte_exception_uninstall>:
 8b4:	01f00793          	li	a5,31
 8b8:	02a7e263          	bltu	a5,a0,8dc <neorv32_rte_exception_uninstall+0x28>
 8bc:	800007b7          	lui	a5,0x80000
 8c0:	00078793          	mv	a5,a5
 8c4:	00251513          	slli	a0,a0,0x2
 8c8:	00a78533          	add	a0,a5,a0
 8cc:	6bc00793          	li	a5,1724
 8d0:	00f52023          	sw	a5,0(a0)
 8d4:	00000513          	li	a0,0
 8d8:	00008067          	ret
 8dc:	00100513          	li	a0,1
 8e0:	00008067          	ret

000008e4 <neorv32_rte_setup>:
 8e4:	ff010113          	addi	sp,sp,-16
 8e8:	00112623          	sw	ra,12(sp)
 8ec:	00812423          	sw	s0,8(sp)
 8f0:	00912223          	sw	s1,4(sp)
 8f4:	44000793          	li	a5,1088
 8f8:	30579073          	csrw	mtvec,a5
 8fc:	00000413          	li	s0,0
 900:	01d00493          	li	s1,29
 904:	00040513          	mv	a0,s0
 908:	00140413          	addi	s0,s0,1
 90c:	0ff47413          	andi	s0,s0,255
 910:	fa5ff0ef          	jal	ra,8b4 <neorv32_rte_exception_uninstall>
 914:	fe9418e3          	bne	s0,s1,904 <neorv32_rte_setup+0x20>
 918:	00c12083          	lw	ra,12(sp)
 91c:	00812403          	lw	s0,8(sp)
 920:	00412483          	lw	s1,4(sp)
 924:	01010113          	addi	sp,sp,16
 928:	00008067          	ret

0000092c <neorv32_gpio_available>:
 92c:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 930:	01055513          	srli	a0,a0,0x10
 934:	00157513          	andi	a0,a0,1
 938:	00008067          	ret

0000093c <neorv32_gpio_pin_set>:
 93c:	00100793          	li	a5,1
 940:	01f00713          	li	a4,31
 944:	00a797b3          	sll	a5,a5,a0
 948:	00a74a63          	blt	a4,a0,95c <neorv32_gpio_pin_set+0x20>
 94c:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 950:	00f767b3          	or	a5,a4,a5
 954:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 958:	00008067          	ret
 95c:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 960:	00f767b3          	or	a5,a4,a5
 964:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 968:	00008067          	ret

0000096c <neorv32_gpio_pin_clr>:
 96c:	00100793          	li	a5,1
 970:	00a797b3          	sll	a5,a5,a0
 974:	01f00713          	li	a4,31
 978:	fff7c793          	not	a5,a5
 97c:	00a74a63          	blt	a4,a0,990 <neorv32_gpio_pin_clr+0x24>
 980:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 984:	00f777b3          	and	a5,a4,a5
 988:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 98c:	00008067          	ret
 990:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 994:	00f777b3          	and	a5,a4,a5
 998:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 99c:	00008067          	ret

000009a0 <__divsi3>:
 9a0:	06054063          	bltz	a0,a00 <__umodsi3+0x10>
 9a4:	0605c663          	bltz	a1,a10 <__umodsi3+0x20>

000009a8 <__udivsi3>:
 9a8:	00058613          	mv	a2,a1
 9ac:	00050593          	mv	a1,a0
 9b0:	fff00513          	li	a0,-1
 9b4:	02060c63          	beqz	a2,9ec <__udivsi3+0x44>
 9b8:	00100693          	li	a3,1
 9bc:	00b67a63          	bgeu	a2,a1,9d0 <__udivsi3+0x28>
 9c0:	00c05863          	blez	a2,9d0 <__udivsi3+0x28>
 9c4:	00161613          	slli	a2,a2,0x1
 9c8:	00169693          	slli	a3,a3,0x1
 9cc:	feb66ae3          	bltu	a2,a1,9c0 <__udivsi3+0x18>
 9d0:	00000513          	li	a0,0
 9d4:	00c5e663          	bltu	a1,a2,9e0 <__udivsi3+0x38>
 9d8:	40c585b3          	sub	a1,a1,a2
 9dc:	00d56533          	or	a0,a0,a3
 9e0:	0016d693          	srli	a3,a3,0x1
 9e4:	00165613          	srli	a2,a2,0x1
 9e8:	fe0696e3          	bnez	a3,9d4 <__udivsi3+0x2c>
 9ec:	00008067          	ret

000009f0 <__umodsi3>:
 9f0:	00008293          	mv	t0,ra
 9f4:	fb5ff0ef          	jal	ra,9a8 <__udivsi3>
 9f8:	00058513          	mv	a0,a1
 9fc:	00028067          	jr	t0
 a00:	40a00533          	neg	a0,a0
 a04:	00b04863          	bgtz	a1,a14 <__umodsi3+0x24>
 a08:	40b005b3          	neg	a1,a1
 a0c:	f9dff06f          	j	9a8 <__udivsi3>
 a10:	40b005b3          	neg	a1,a1
 a14:	00008293          	mv	t0,ra
 a18:	f91ff0ef          	jal	ra,9a8 <__udivsi3>
 a1c:	40a00533          	neg	a0,a0
 a20:	00028067          	jr	t0

00000a24 <__modsi3>:
 a24:	00008293          	mv	t0,ra
 a28:	0005ca63          	bltz	a1,a3c <__modsi3+0x18>
 a2c:	00054c63          	bltz	a0,a44 <__modsi3+0x20>
 a30:	f79ff0ef          	jal	ra,9a8 <__udivsi3>
 a34:	00058513          	mv	a0,a1
 a38:	00028067          	jr	t0
 a3c:	40b005b3          	neg	a1,a1
 a40:	fe0558e3          	bgez	a0,a30 <__modsi3+0xc>
 a44:	40a00533          	neg	a0,a0
 a48:	f61ff0ef          	jal	ra,9a8 <__udivsi3>
 a4c:	40b00533          	neg	a0,a1
 a50:	00028067          	jr	t0

00000a54 <memcpy>:
 a54:	00a5c7b3          	xor	a5,a1,a0
 a58:	0037f793          	andi	a5,a5,3
 a5c:	00c508b3          	add	a7,a0,a2
 a60:	06079663          	bnez	a5,acc <memcpy+0x78>
 a64:	00300793          	li	a5,3
 a68:	06c7f263          	bgeu	a5,a2,acc <memcpy+0x78>
 a6c:	00357793          	andi	a5,a0,3
 a70:	00050713          	mv	a4,a0
 a74:	0c079a63          	bnez	a5,b48 <memcpy+0xf4>
 a78:	ffc8f613          	andi	a2,a7,-4
 a7c:	40e606b3          	sub	a3,a2,a4
 a80:	02000793          	li	a5,32
 a84:	02000293          	li	t0,32
 a88:	06d7c263          	blt	a5,a3,aec <memcpy+0x98>
 a8c:	00058693          	mv	a3,a1
 a90:	00070793          	mv	a5,a4
 a94:	02c77863          	bgeu	a4,a2,ac4 <memcpy+0x70>
 a98:	0006a803          	lw	a6,0(a3)
 a9c:	00478793          	addi	a5,a5,4 # 80000004 <__ctr0_io_space_begin+0x80000204>
 aa0:	00468693          	addi	a3,a3,4
 aa4:	ff07ae23          	sw	a6,-4(a5)
 aa8:	fec7e8e3          	bltu	a5,a2,a98 <memcpy+0x44>
 aac:	fff60793          	addi	a5,a2,-1
 ab0:	40e787b3          	sub	a5,a5,a4
 ab4:	ffc7f793          	andi	a5,a5,-4
 ab8:	00478793          	addi	a5,a5,4
 abc:	00f70733          	add	a4,a4,a5
 ac0:	00f585b3          	add	a1,a1,a5
 ac4:	01176863          	bltu	a4,a7,ad4 <memcpy+0x80>
 ac8:	00008067          	ret
 acc:	00050713          	mv	a4,a0
 ad0:	ff157ce3          	bgeu	a0,a7,ac8 <memcpy+0x74>
 ad4:	0005c783          	lbu	a5,0(a1)
 ad8:	00170713          	addi	a4,a4,1
 adc:	00158593          	addi	a1,a1,1
 ae0:	fef70fa3          	sb	a5,-1(a4)
 ae4:	ff1768e3          	bltu	a4,a7,ad4 <memcpy+0x80>
 ae8:	00008067          	ret
 aec:	0045a683          	lw	a3,4(a1)
 af0:	01c5a783          	lw	a5,28(a1)
 af4:	0005af83          	lw	t6,0(a1)
 af8:	0085af03          	lw	t5,8(a1)
 afc:	00c5ae83          	lw	t4,12(a1)
 b00:	0105ae03          	lw	t3,16(a1)
 b04:	0145a303          	lw	t1,20(a1)
 b08:	0185a803          	lw	a6,24(a1)
 b0c:	00d72223          	sw	a3,4(a4)
 b10:	0205a683          	lw	a3,32(a1)
 b14:	01f72023          	sw	t6,0(a4)
 b18:	01e72423          	sw	t5,8(a4)
 b1c:	01d72623          	sw	t4,12(a4)
 b20:	01c72823          	sw	t3,16(a4)
 b24:	00672a23          	sw	t1,20(a4)
 b28:	01072c23          	sw	a6,24(a4)
 b2c:	00f72e23          	sw	a5,28(a4)
 b30:	02470713          	addi	a4,a4,36
 b34:	40e607b3          	sub	a5,a2,a4
 b38:	fed72e23          	sw	a3,-4(a4)
 b3c:	02458593          	addi	a1,a1,36
 b40:	faf2c6e3          	blt	t0,a5,aec <memcpy+0x98>
 b44:	f49ff06f          	j	a8c <memcpy+0x38>
 b48:	0005c683          	lbu	a3,0(a1)
 b4c:	00170713          	addi	a4,a4,1
 b50:	00377793          	andi	a5,a4,3
 b54:	fed70fa3          	sb	a3,-1(a4)
 b58:	00158593          	addi	a1,a1,1
 b5c:	f0078ee3          	beqz	a5,a78 <memcpy+0x24>
 b60:	0005c683          	lbu	a3,0(a1)
 b64:	00170713          	addi	a4,a4,1
 b68:	00377793          	andi	a5,a4,3
 b6c:	fed70fa3          	sb	a3,-1(a4)
 b70:	00158593          	addi	a1,a1,1
 b74:	fc079ae3          	bnez	a5,b48 <memcpy+0xf4>
 b78:	f01ff06f          	j	a78 <memcpy+0x24>
