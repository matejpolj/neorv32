
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
  e0:	ad058593          	addi	a1,a1,-1328 # bac <__crt0_copy_data_src_begin>
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
 184:	ff010113          	addi	sp,sp,-16
 188:	00000613          	li	a2,0
 18c:	00000593          	li	a1,0
 190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3f54>
 194:	00112623          	sw	ra,12(sp)
 198:	050000ef          	jal	ra,1e8 <neorv32_uart0_setup>
 19c:	660000ef          	jal	ra,7fc <neorv32_gpio_available>
 1a0:	02051063          	bnez	a0,1c0 <main+0x40>
 1a4:	00001537          	lui	a0,0x1
 1a8:	8c050513          	addi	a0,a0,-1856 # 8c0 <__etext>
 1ac:	100000ef          	jal	ra,2ac <neorv32_uart0_print>
 1b0:	00100513          	li	a0,1
 1b4:	00c12083          	lw	ra,12(sp)
 1b8:	01010113          	addi	sp,sp,16
 1bc:	00008067          	ret
 1c0:	5f4000ef          	jal	ra,7b4 <neorv32_rte_setup>
 1c4:	00001537          	lui	a0,0x1
 1c8:	8e450513          	addi	a0,a0,-1820 # 8e4 <__etext+0x24>
 1cc:	0e0000ef          	jal	ra,2ac <neorv32_uart0_print>
 1d0:	00000513          	li	a0,0
 1d4:	fe1ff06f          	j	1b4 <main+0x34>

000001d8 <neorv32_uart0_available>:
 1d8:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 1dc:	01255513          	srli	a0,a0,0x12
 1e0:	00157513          	andi	a0,a0,1
 1e4:	00008067          	ret

000001e8 <neorv32_uart0_setup>:
 1e8:	ff010113          	addi	sp,sp,-16
 1ec:	00812423          	sw	s0,8(sp)
 1f0:	00912223          	sw	s1,4(sp)
 1f4:	00112623          	sw	ra,12(sp)
 1f8:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 1fc:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 200:	00058413          	mv	s0,a1
 204:	00151593          	slli	a1,a0,0x1
 208:	00078513          	mv	a0,a5
 20c:	00060493          	mv	s1,a2
 210:	604000ef          	jal	ra,814 <__udivsi3>
 214:	01051513          	slli	a0,a0,0x10
 218:	000017b7          	lui	a5,0x1
 21c:	01055513          	srli	a0,a0,0x10
 220:	00000713          	li	a4,0
 224:	ffe78793          	addi	a5,a5,-2 # ffe <__crt0_copy_data_src_begin+0x452>
 228:	04a7e463          	bltu	a5,a0,270 <neorv32_uart0_setup+0x88>
 22c:	0034f793          	andi	a5,s1,3
 230:	00347413          	andi	s0,s0,3
 234:	fff50513          	addi	a0,a0,-1
 238:	01479793          	slli	a5,a5,0x14
 23c:	01641413          	slli	s0,s0,0x16
 240:	00f567b3          	or	a5,a0,a5
 244:	0087e7b3          	or	a5,a5,s0
 248:	01871713          	slli	a4,a4,0x18
 24c:	00c12083          	lw	ra,12(sp)
 250:	00812403          	lw	s0,8(sp)
 254:	00e7e7b3          	or	a5,a5,a4
 258:	10000737          	lui	a4,0x10000
 25c:	00e7e7b3          	or	a5,a5,a4
 260:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 264:	00412483          	lw	s1,4(sp)
 268:	01010113          	addi	sp,sp,16
 26c:	00008067          	ret
 270:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xffff452>
 274:	0fd6f693          	andi	a3,a3,253
 278:	00069a63          	bnez	a3,28c <neorv32_uart0_setup+0xa4>
 27c:	00355513          	srli	a0,a0,0x3
 280:	00170713          	addi	a4,a4,1
 284:	0ff77713          	andi	a4,a4,255
 288:	fa1ff06f          	j	228 <neorv32_uart0_setup+0x40>
 28c:	00155513          	srli	a0,a0,0x1
 290:	ff1ff06f          	j	280 <neorv32_uart0_setup+0x98>

00000294 <neorv32_uart0_putc>:
 294:	00040737          	lui	a4,0x40
 298:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 29c:	00e7f7b3          	and	a5,a5,a4
 2a0:	fe079ce3          	bnez	a5,298 <neorv32_uart0_putc+0x4>
 2a4:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 2a8:	00008067          	ret

000002ac <neorv32_uart0_print>:
 2ac:	ff010113          	addi	sp,sp,-16
 2b0:	00812423          	sw	s0,8(sp)
 2b4:	01212023          	sw	s2,0(sp)
 2b8:	00112623          	sw	ra,12(sp)
 2bc:	00912223          	sw	s1,4(sp)
 2c0:	00050413          	mv	s0,a0
 2c4:	00a00913          	li	s2,10
 2c8:	00044483          	lbu	s1,0(s0)
 2cc:	00140413          	addi	s0,s0,1
 2d0:	00049e63          	bnez	s1,2ec <neorv32_uart0_print+0x40>
 2d4:	00c12083          	lw	ra,12(sp)
 2d8:	00812403          	lw	s0,8(sp)
 2dc:	00412483          	lw	s1,4(sp)
 2e0:	00012903          	lw	s2,0(sp)
 2e4:	01010113          	addi	sp,sp,16
 2e8:	00008067          	ret
 2ec:	01249663          	bne	s1,s2,2f8 <neorv32_uart0_print+0x4c>
 2f0:	00d00513          	li	a0,13
 2f4:	fa1ff0ef          	jal	ra,294 <neorv32_uart0_putc>
 2f8:	00048513          	mv	a0,s1
 2fc:	f99ff0ef          	jal	ra,294 <neorv32_uart0_putc>
 300:	fc9ff06f          	j	2c8 <neorv32_uart0_print+0x1c>
 304:	0000                	unimp
 306:	0000                	unimp
 308:	0000                	unimp
 30a:	0000                	unimp
 30c:	0000                	unimp
 30e:	0000                	unimp

00000310 <__neorv32_rte_core>:
 310:	fc010113          	addi	sp,sp,-64
 314:	02112e23          	sw	ra,60(sp)
 318:	02512c23          	sw	t0,56(sp)
 31c:	02612a23          	sw	t1,52(sp)
 320:	02712823          	sw	t2,48(sp)
 324:	02a12623          	sw	a0,44(sp)
 328:	02b12423          	sw	a1,40(sp)
 32c:	02c12223          	sw	a2,36(sp)
 330:	02d12023          	sw	a3,32(sp)
 334:	00e12e23          	sw	a4,28(sp)
 338:	00f12c23          	sw	a5,24(sp)
 33c:	01012a23          	sw	a6,20(sp)
 340:	01112823          	sw	a7,16(sp)
 344:	01c12623          	sw	t3,12(sp)
 348:	01d12423          	sw	t4,8(sp)
 34c:	01e12223          	sw	t5,4(sp)
 350:	01f12023          	sw	t6,0(sp)
 354:	34102773          	csrr	a4,mepc
 358:	34071073          	csrw	mscratch,a4
 35c:	342027f3          	csrr	a5,mcause
 360:	0807c863          	bltz	a5,3f0 <__neorv32_rte_core+0xe0>
 364:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3f454>
 368:	00300593          	li	a1,3
 36c:	0036f693          	andi	a3,a3,3
 370:	00270613          	addi	a2,a4,2
 374:	00b69463          	bne	a3,a1,37c <__neorv32_rte_core+0x6c>
 378:	00470613          	addi	a2,a4,4
 37c:	34161073          	csrw	mepc,a2
 380:	00b00713          	li	a4,11
 384:	04f77a63          	bgeu	a4,a5,3d8 <__neorv32_rte_core+0xc8>
 388:	58c00793          	li	a5,1420
 38c:	000780e7          	jalr	a5
 390:	03c12083          	lw	ra,60(sp)
 394:	03812283          	lw	t0,56(sp)
 398:	03412303          	lw	t1,52(sp)
 39c:	03012383          	lw	t2,48(sp)
 3a0:	02c12503          	lw	a0,44(sp)
 3a4:	02812583          	lw	a1,40(sp)
 3a8:	02412603          	lw	a2,36(sp)
 3ac:	02012683          	lw	a3,32(sp)
 3b0:	01c12703          	lw	a4,28(sp)
 3b4:	01812783          	lw	a5,24(sp)
 3b8:	01412803          	lw	a6,20(sp)
 3bc:	01012883          	lw	a7,16(sp)
 3c0:	00c12e03          	lw	t3,12(sp)
 3c4:	00812e83          	lw	t4,8(sp)
 3c8:	00412f03          	lw	t5,4(sp)
 3cc:	00012f83          	lw	t6,0(sp)
 3d0:	04010113          	addi	sp,sp,64
 3d4:	30200073          	mret
 3d8:	00001737          	lui	a4,0x1
 3dc:	00279793          	slli	a5,a5,0x2
 3e0:	90470713          	addi	a4,a4,-1788 # 904 <__etext+0x44>
 3e4:	00e787b3          	add	a5,a5,a4
 3e8:	0007a783          	lw	a5,0(a5)
 3ec:	00078067          	jr	a5
 3f0:	80000737          	lui	a4,0x80000
 3f4:	ffd74713          	xori	a4,a4,-3
 3f8:	00e787b3          	add	a5,a5,a4
 3fc:	01c00713          	li	a4,28
 400:	f8f764e3          	bltu	a4,a5,388 <__neorv32_rte_core+0x78>
 404:	00001737          	lui	a4,0x1
 408:	00279793          	slli	a5,a5,0x2
 40c:	93470713          	addi	a4,a4,-1740 # 934 <__etext+0x74>
 410:	00e787b3          	add	a5,a5,a4
 414:	0007a783          	lw	a5,0(a5)
 418:	00078067          	jr	a5
 41c:	800007b7          	lui	a5,0x80000
 420:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 424:	f69ff06f          	j	38c <__neorv32_rte_core+0x7c>
 428:	800007b7          	lui	a5,0x80000
 42c:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 430:	f5dff06f          	j	38c <__neorv32_rte_core+0x7c>
 434:	800007b7          	lui	a5,0x80000
 438:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 43c:	f51ff06f          	j	38c <__neorv32_rte_core+0x7c>
 440:	800007b7          	lui	a5,0x80000
 444:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
 448:	f45ff06f          	j	38c <__neorv32_rte_core+0x7c>
 44c:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
 450:	f3dff06f          	j	38c <__neorv32_rte_core+0x7c>
 454:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
 458:	f35ff06f          	j	38c <__neorv32_rte_core+0x7c>
 45c:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
 460:	f2dff06f          	j	38c <__neorv32_rte_core+0x7c>
 464:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
 468:	f25ff06f          	j	38c <__neorv32_rte_core+0x7c>
 46c:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
 470:	f1dff06f          	j	38c <__neorv32_rte_core+0x7c>
 474:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
 478:	f15ff06f          	j	38c <__neorv32_rte_core+0x7c>
 47c:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
 480:	f0dff06f          	j	38c <__neorv32_rte_core+0x7c>
 484:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
 488:	f05ff06f          	j	38c <__neorv32_rte_core+0x7c>
 48c:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
 490:	efdff06f          	j	38c <__neorv32_rte_core+0x7c>
 494:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
 498:	ef5ff06f          	j	38c <__neorv32_rte_core+0x7c>
 49c:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
 4a0:	eedff06f          	j	38c <__neorv32_rte_core+0x7c>
 4a4:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
 4a8:	ee5ff06f          	j	38c <__neorv32_rte_core+0x7c>
 4ac:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 4b0:	eddff06f          	j	38c <__neorv32_rte_core+0x7c>
 4b4:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 4b8:	ed5ff06f          	j	38c <__neorv32_rte_core+0x7c>
 4bc:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 4c0:	ecdff06f          	j	38c <__neorv32_rte_core+0x7c>
 4c4:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 4c8:	ec5ff06f          	j	38c <__neorv32_rte_core+0x7c>
 4cc:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 4d0:	ebdff06f          	j	38c <__neorv32_rte_core+0x7c>
 4d4:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 4d8:	eb5ff06f          	j	38c <__neorv32_rte_core+0x7c>
 4dc:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 4e0:	eadff06f          	j	38c <__neorv32_rte_core+0x7c>
 4e4:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 4e8:	ea5ff06f          	j	38c <__neorv32_rte_core+0x7c>
 4ec:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 4f0:	e9dff06f          	j	38c <__neorv32_rte_core+0x7c>
 4f4:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 4f8:	e95ff06f          	j	38c <__neorv32_rte_core+0x7c>
 4fc:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 500:	e8dff06f          	j	38c <__neorv32_rte_core+0x7c>
 504:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 508:	e85ff06f          	j	38c <__neorv32_rte_core+0x7c>
 50c:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 510:	e7dff06f          	j	38c <__neorv32_rte_core+0x7c>
 514:	0000                	unimp
 516:	0000                	unimp
 518:	0000                	unimp
 51a:	0000                	unimp

0000051c <__neorv32_rte_print_hex_word>:
 51c:	fe010113          	addi	sp,sp,-32
 520:	01212823          	sw	s2,16(sp)
 524:	00050913          	mv	s2,a0
 528:	00001537          	lui	a0,0x1
 52c:	00912a23          	sw	s1,20(sp)
 530:	9a850513          	addi	a0,a0,-1624 # 9a8 <__etext+0xe8>
 534:	000014b7          	lui	s1,0x1
 538:	00812c23          	sw	s0,24(sp)
 53c:	01312623          	sw	s3,12(sp)
 540:	00112e23          	sw	ra,28(sp)
 544:	01c00413          	li	s0,28
 548:	d65ff0ef          	jal	ra,2ac <neorv32_uart0_print>
 54c:	b9c48493          	addi	s1,s1,-1124 # b9c <hex_symbols.0>
 550:	ffc00993          	li	s3,-4
 554:	008957b3          	srl	a5,s2,s0
 558:	00f7f793          	andi	a5,a5,15
 55c:	00f487b3          	add	a5,s1,a5
 560:	0007c503          	lbu	a0,0(a5)
 564:	ffc40413          	addi	s0,s0,-4
 568:	d2dff0ef          	jal	ra,294 <neorv32_uart0_putc>
 56c:	ff3414e3          	bne	s0,s3,554 <__neorv32_rte_print_hex_word+0x38>
 570:	01c12083          	lw	ra,28(sp)
 574:	01812403          	lw	s0,24(sp)
 578:	01412483          	lw	s1,20(sp)
 57c:	01012903          	lw	s2,16(sp)
 580:	00c12983          	lw	s3,12(sp)
 584:	02010113          	addi	sp,sp,32
 588:	00008067          	ret

0000058c <__neorv32_rte_debug_exc_handler>:
 58c:	ff010113          	addi	sp,sp,-16
 590:	00112623          	sw	ra,12(sp)
 594:	00812423          	sw	s0,8(sp)
 598:	00912223          	sw	s1,4(sp)
 59c:	c3dff0ef          	jal	ra,1d8 <neorv32_uart0_available>
 5a0:	1c050863          	beqz	a0,770 <__neorv32_rte_debug_exc_handler+0x1e4>
 5a4:	00001537          	lui	a0,0x1
 5a8:	9ac50513          	addi	a0,a0,-1620 # 9ac <__etext+0xec>
 5ac:	d01ff0ef          	jal	ra,2ac <neorv32_uart0_print>
 5b0:	34202473          	csrr	s0,mcause
 5b4:	00900713          	li	a4,9
 5b8:	00f47793          	andi	a5,s0,15
 5bc:	03078493          	addi	s1,a5,48
 5c0:	00f77463          	bgeu	a4,a5,5c8 <__neorv32_rte_debug_exc_handler+0x3c>
 5c4:	05778493          	addi	s1,a5,87
 5c8:	00b00793          	li	a5,11
 5cc:	0087ee63          	bltu	a5,s0,5e8 <__neorv32_rte_debug_exc_handler+0x5c>
 5d0:	00001737          	lui	a4,0x1
 5d4:	00241793          	slli	a5,s0,0x2
 5d8:	b6c70713          	addi	a4,a4,-1172 # b6c <__etext+0x2ac>
 5dc:	00e787b3          	add	a5,a5,a4
 5e0:	0007a783          	lw	a5,0(a5)
 5e4:	00078067          	jr	a5
 5e8:	800007b7          	lui	a5,0x80000
 5ec:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 5f0:	14e40e63          	beq	s0,a4,74c <__neorv32_rte_debug_exc_handler+0x1c0>
 5f4:	02876a63          	bltu	a4,s0,628 <__neorv32_rte_debug_exc_handler+0x9c>
 5f8:	00378713          	addi	a4,a5,3
 5fc:	12e40c63          	beq	s0,a4,734 <__neorv32_rte_debug_exc_handler+0x1a8>
 600:	00778793          	addi	a5,a5,7
 604:	12f40e63          	beq	s0,a5,740 <__neorv32_rte_debug_exc_handler+0x1b4>
 608:	00001537          	lui	a0,0x1
 60c:	b0c50513          	addi	a0,a0,-1268 # b0c <__etext+0x24c>
 610:	c9dff0ef          	jal	ra,2ac <neorv32_uart0_print>
 614:	00040513          	mv	a0,s0
 618:	f05ff0ef          	jal	ra,51c <__neorv32_rte_print_hex_word>
 61c:	00100793          	li	a5,1
 620:	08f40c63          	beq	s0,a5,6b8 <__neorv32_rte_debug_exc_handler+0x12c>
 624:	0280006f          	j	64c <__neorv32_rte_debug_exc_handler+0xc0>
 628:	ff07c793          	xori	a5,a5,-16
 62c:	00f407b3          	add	a5,s0,a5
 630:	00f00713          	li	a4,15
 634:	fcf76ae3          	bltu	a4,a5,608 <__neorv32_rte_debug_exc_handler+0x7c>
 638:	00001537          	lui	a0,0x1
 63c:	afc50513          	addi	a0,a0,-1284 # afc <__etext+0x23c>
 640:	c6dff0ef          	jal	ra,2ac <neorv32_uart0_print>
 644:	00048513          	mv	a0,s1
 648:	c4dff0ef          	jal	ra,294 <neorv32_uart0_putc>
 64c:	ffd47413          	andi	s0,s0,-3
 650:	00500793          	li	a5,5
 654:	06f40263          	beq	s0,a5,6b8 <__neorv32_rte_debug_exc_handler+0x12c>
 658:	00001537          	lui	a0,0x1
 65c:	b5050513          	addi	a0,a0,-1200 # b50 <__etext+0x290>
 660:	c4dff0ef          	jal	ra,2ac <neorv32_uart0_print>
 664:	34002573          	csrr	a0,mscratch
 668:	eb5ff0ef          	jal	ra,51c <__neorv32_rte_print_hex_word>
 66c:	00001537          	lui	a0,0x1
 670:	b5850513          	addi	a0,a0,-1192 # b58 <__etext+0x298>
 674:	c39ff0ef          	jal	ra,2ac <neorv32_uart0_print>
 678:	34302573          	csrr	a0,mtval
 67c:	ea1ff0ef          	jal	ra,51c <__neorv32_rte_print_hex_word>
 680:	00812403          	lw	s0,8(sp)
 684:	00c12083          	lw	ra,12(sp)
 688:	00412483          	lw	s1,4(sp)
 68c:	00001537          	lui	a0,0x1
 690:	b6450513          	addi	a0,a0,-1180 # b64 <__etext+0x2a4>
 694:	01010113          	addi	sp,sp,16
 698:	c15ff06f          	j	2ac <neorv32_uart0_print>
 69c:	00001537          	lui	a0,0x1
 6a0:	9b450513          	addi	a0,a0,-1612 # 9b4 <__etext+0xf4>
 6a4:	c09ff0ef          	jal	ra,2ac <neorv32_uart0_print>
 6a8:	fb1ff06f          	j	658 <__neorv32_rte_debug_exc_handler+0xcc>
 6ac:	00001537          	lui	a0,0x1
 6b0:	9d450513          	addi	a0,a0,-1580 # 9d4 <__etext+0x114>
 6b4:	bf9ff0ef          	jal	ra,2ac <neorv32_uart0_print>
 6b8:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 6bc:	0a07d463          	bgez	a5,764 <__neorv32_rte_debug_exc_handler+0x1d8>
 6c0:	0017f793          	andi	a5,a5,1
 6c4:	08078a63          	beqz	a5,758 <__neorv32_rte_debug_exc_handler+0x1cc>
 6c8:	00001537          	lui	a0,0x1
 6cc:	b2450513          	addi	a0,a0,-1244 # b24 <__etext+0x264>
 6d0:	fd5ff06f          	j	6a4 <__neorv32_rte_debug_exc_handler+0x118>
 6d4:	00001537          	lui	a0,0x1
 6d8:	9f050513          	addi	a0,a0,-1552 # 9f0 <__etext+0x130>
 6dc:	fc9ff06f          	j	6a4 <__neorv32_rte_debug_exc_handler+0x118>
 6e0:	00001537          	lui	a0,0x1
 6e4:	a0450513          	addi	a0,a0,-1532 # a04 <__etext+0x144>
 6e8:	fbdff06f          	j	6a4 <__neorv32_rte_debug_exc_handler+0x118>
 6ec:	00001537          	lui	a0,0x1
 6f0:	a1050513          	addi	a0,a0,-1520 # a10 <__etext+0x150>
 6f4:	fb1ff06f          	j	6a4 <__neorv32_rte_debug_exc_handler+0x118>
 6f8:	00001537          	lui	a0,0x1
 6fc:	a2850513          	addi	a0,a0,-1496 # a28 <__etext+0x168>
 700:	fb5ff06f          	j	6b4 <__neorv32_rte_debug_exc_handler+0x128>
 704:	00001537          	lui	a0,0x1
 708:	a3c50513          	addi	a0,a0,-1476 # a3c <__etext+0x17c>
 70c:	f99ff06f          	j	6a4 <__neorv32_rte_debug_exc_handler+0x118>
 710:	00001537          	lui	a0,0x1
 714:	a5850513          	addi	a0,a0,-1448 # a58 <__etext+0x198>
 718:	f9dff06f          	j	6b4 <__neorv32_rte_debug_exc_handler+0x128>
 71c:	00001537          	lui	a0,0x1
 720:	a6c50513          	addi	a0,a0,-1428 # a6c <__etext+0x1ac>
 724:	f81ff06f          	j	6a4 <__neorv32_rte_debug_exc_handler+0x118>
 728:	00001537          	lui	a0,0x1
 72c:	a8c50513          	addi	a0,a0,-1396 # a8c <__etext+0x1cc>
 730:	f75ff06f          	j	6a4 <__neorv32_rte_debug_exc_handler+0x118>
 734:	00001537          	lui	a0,0x1
 738:	aac50513          	addi	a0,a0,-1364 # aac <__etext+0x1ec>
 73c:	f69ff06f          	j	6a4 <__neorv32_rte_debug_exc_handler+0x118>
 740:	00001537          	lui	a0,0x1
 744:	ac850513          	addi	a0,a0,-1336 # ac8 <__etext+0x208>
 748:	f5dff06f          	j	6a4 <__neorv32_rte_debug_exc_handler+0x118>
 74c:	00001537          	lui	a0,0x1
 750:	ae050513          	addi	a0,a0,-1312 # ae0 <__etext+0x220>
 754:	f51ff06f          	j	6a4 <__neorv32_rte_debug_exc_handler+0x118>
 758:	00001537          	lui	a0,0x1
 75c:	b3450513          	addi	a0,a0,-1228 # b34 <__etext+0x274>
 760:	f45ff06f          	j	6a4 <__neorv32_rte_debug_exc_handler+0x118>
 764:	00001537          	lui	a0,0x1
 768:	b4450513          	addi	a0,a0,-1212 # b44 <__etext+0x284>
 76c:	f39ff06f          	j	6a4 <__neorv32_rte_debug_exc_handler+0x118>
 770:	00c12083          	lw	ra,12(sp)
 774:	00812403          	lw	s0,8(sp)
 778:	00412483          	lw	s1,4(sp)
 77c:	01010113          	addi	sp,sp,16
 780:	00008067          	ret

00000784 <neorv32_rte_exception_uninstall>:
 784:	01f00793          	li	a5,31
 788:	02a7e263          	bltu	a5,a0,7ac <neorv32_rte_exception_uninstall+0x28>
 78c:	800007b7          	lui	a5,0x80000
 790:	00078793          	mv	a5,a5
 794:	00251513          	slli	a0,a0,0x2
 798:	00a78533          	add	a0,a5,a0
 79c:	58c00793          	li	a5,1420
 7a0:	00f52023          	sw	a5,0(a0)
 7a4:	00000513          	li	a0,0
 7a8:	00008067          	ret
 7ac:	00100513          	li	a0,1
 7b0:	00008067          	ret

000007b4 <neorv32_rte_setup>:
 7b4:	ff010113          	addi	sp,sp,-16
 7b8:	00112623          	sw	ra,12(sp)
 7bc:	00812423          	sw	s0,8(sp)
 7c0:	00912223          	sw	s1,4(sp)
 7c4:	31000793          	li	a5,784
 7c8:	30579073          	csrw	mtvec,a5
 7cc:	00000413          	li	s0,0
 7d0:	01d00493          	li	s1,29
 7d4:	00040513          	mv	a0,s0
 7d8:	00140413          	addi	s0,s0,1
 7dc:	0ff47413          	andi	s0,s0,255
 7e0:	fa5ff0ef          	jal	ra,784 <neorv32_rte_exception_uninstall>
 7e4:	fe9418e3          	bne	s0,s1,7d4 <neorv32_rte_setup+0x20>
 7e8:	00c12083          	lw	ra,12(sp)
 7ec:	00812403          	lw	s0,8(sp)
 7f0:	00412483          	lw	s1,4(sp)
 7f4:	01010113          	addi	sp,sp,16
 7f8:	00008067          	ret

000007fc <neorv32_gpio_available>:
 7fc:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 800:	01055513          	srli	a0,a0,0x10
 804:	00157513          	andi	a0,a0,1
 808:	00008067          	ret

0000080c <__divsi3>:
 80c:	06054063          	bltz	a0,86c <__umodsi3+0x10>
 810:	0605c663          	bltz	a1,87c <__umodsi3+0x20>

00000814 <__udivsi3>:
 814:	00058613          	mv	a2,a1
 818:	00050593          	mv	a1,a0
 81c:	fff00513          	li	a0,-1
 820:	02060c63          	beqz	a2,858 <__udivsi3+0x44>
 824:	00100693          	li	a3,1
 828:	00b67a63          	bgeu	a2,a1,83c <__udivsi3+0x28>
 82c:	00c05863          	blez	a2,83c <__udivsi3+0x28>
 830:	00161613          	slli	a2,a2,0x1
 834:	00169693          	slli	a3,a3,0x1
 838:	feb66ae3          	bltu	a2,a1,82c <__udivsi3+0x18>
 83c:	00000513          	li	a0,0
 840:	00c5e663          	bltu	a1,a2,84c <__udivsi3+0x38>
 844:	40c585b3          	sub	a1,a1,a2
 848:	00d56533          	or	a0,a0,a3
 84c:	0016d693          	srli	a3,a3,0x1
 850:	00165613          	srli	a2,a2,0x1
 854:	fe0696e3          	bnez	a3,840 <__udivsi3+0x2c>
 858:	00008067          	ret

0000085c <__umodsi3>:
 85c:	00008293          	mv	t0,ra
 860:	fb5ff0ef          	jal	ra,814 <__udivsi3>
 864:	00058513          	mv	a0,a1
 868:	00028067          	jr	t0
 86c:	40a00533          	neg	a0,a0
 870:	00b04863          	bgtz	a1,880 <__umodsi3+0x24>
 874:	40b005b3          	neg	a1,a1
 878:	f9dff06f          	j	814 <__udivsi3>
 87c:	40b005b3          	neg	a1,a1
 880:	00008293          	mv	t0,ra
 884:	f91ff0ef          	jal	ra,814 <__udivsi3>
 888:	40a00533          	neg	a0,a0
 88c:	00028067          	jr	t0

00000890 <__modsi3>:
 890:	00008293          	mv	t0,ra
 894:	0005ca63          	bltz	a1,8a8 <__modsi3+0x18>
 898:	00054c63          	bltz	a0,8b0 <__modsi3+0x20>
 89c:	f79ff0ef          	jal	ra,814 <__udivsi3>
 8a0:	00058513          	mv	a0,a1
 8a4:	00028067          	jr	t0
 8a8:	40b005b3          	neg	a1,a1
 8ac:	fe0558e3          	bgez	a0,89c <__modsi3+0xc>
 8b0:	40a00533          	neg	a0,a0
 8b4:	f61ff0ef          	jal	ra,814 <__udivsi3>
 8b8:	40b00533          	neg	a0,a1
 8bc:	00028067          	jr	t0
