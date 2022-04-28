
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
  e0:	0e858593          	addi	a1,a1,232 # 11c4 <__crt0_copy_data_src_begin>
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
 190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x393c>
 194:	02112e23          	sw	ra,60(sp)
 198:	300000ef          	jal	ra,498 <neorv32_uart0_setup>
 19c:	2a9000ef          	jal	ra,c44 <neorv32_gpio_available>
 1a0:	06050063          	beqz	a0,200 <main+0x80>
 1a4:	259000ef          	jal	ra,bfc <neorv32_rte_setup>
 1a8:	00001537          	lui	a0,0x1
 1ac:	ec450513          	addi	a0,a0,-316 # ec4 <__etext+0x30>
 1b0:	3ac000ef          	jal	ra,55c <neorv32_uart0_print>
 1b4:	000015b7          	lui	a1,0x1
 1b8:	02300613          	li	a2,35
 1bc:	ed858593          	addi	a1,a1,-296 # ed8 <__etext+0x44>
 1c0:	00c10513          	addi	a0,sp,12
 1c4:	3a9000ef          	jal	ra,d6c <memcpy>
 1c8:	1b1a27b7          	lui	a5,0x1b1a2
 1cc:	91878793          	addi	a5,a5,-1768 # 1b1a1918 <__crt0_copy_data_src_begin+0x1b1a0754>
 1d0:	00f12223          	sw	a5,4(sp)
 1d4:	1f1e27b7          	lui	a5,0x1f1e2
 1d8:	d1c78793          	addi	a5,a5,-740 # 1f1e1d1c <__crt0_copy_data_src_begin+0x1f1e0b58>
 1dc:	01600513          	li	a0,22
 1e0:	00f12423          	sw	a5,8(sp)
 1e4:	2a1000ef          	jal	ra,c84 <neorv32_gpio_pin_clr>
 1e8:	01700513          	li	a0,23
 1ec:	269000ef          	jal	ra,c54 <neorv32_gpio_pin_set>
 1f0:	00410593          	addi	a1,sp,4
 1f4:	00c10513          	addi	a0,sp,12
 1f8:	024000ef          	jal	ra,21c <displaySymbol>
 1fc:	ff5ff06f          	j	1f0 <main+0x70>
 200:	00001537          	lui	a0,0x1
 204:	ea050513          	addi	a0,a0,-352 # ea0 <__etext+0xc>
 208:	354000ef          	jal	ra,55c <neorv32_uart0_print>
 20c:	03c12083          	lw	ra,60(sp)
 210:	00100513          	li	a0,1
 214:	04010113          	addi	sp,sp,64
 218:	00008067          	ret

0000021c <displaySymbol>:
 21c:	fd010113          	addi	sp,sp,-48
 220:	02812423          	sw	s0,40(sp)
 224:	01312e23          	sw	s3,28(sp)
 228:	01412c23          	sw	s4,24(sp)
 22c:	01512a23          	sw	s5,20(sp)
 230:	01612823          	sw	s6,16(sp)
 234:	01712623          	sw	s7,12(sp)
 238:	01812423          	sw	s8,8(sp)
 23c:	01912223          	sw	s9,4(sp)
 240:	01a12023          	sw	s10,0(sp)
 244:	02112623          	sw	ra,44(sp)
 248:	02912223          	sw	s1,36(sp)
 24c:	03212023          	sw	s2,32(sp)
 250:	00058413          	mv	s0,a1
 254:	00050993          	mv	s3,a0
 258:	0ff00a13          	li	s4,255
 25c:	ffd58b93          	addi	s7,a1,-3
 260:	00100c93          	li	s9,1
 264:	00001d37          	lui	s10,0x1
 268:	00858c13          	addi	s8,a1,8
 26c:	00001b37          	lui	s6,0x1
 270:	0f800a93          	li	s5,248
 274:	00040493          	mv	s1,s0
 278:	409405b3          	sub	a1,s0,s1
 27c:	00bc9933          	sll	s2,s9,a1
 280:	01497933          	and	s2,s2,s4
 284:	40b95933          	sra	s2,s2,a1
 288:	0024c503          	lbu	a0,2(s1)
 28c:	0a090063          	beqz	s2,32c <displaySymbol+0x110>
 290:	1c5000ef          	jal	ra,c54 <neorv32_gpio_pin_set>
 294:	0024c603          	lbu	a2,2(s1)
 298:	00090593          	mv	a1,s2
 29c:	e94d0513          	addi	a0,s10,-364 # e94 <__etext>
 2a0:	fff48493          	addi	s1,s1,-1
 2a4:	310000ef          	jal	ra,5b4 <neorv32_uart0_printf>
 2a8:	fc9b98e3          	bne	s7,s1,278 <displaySymbol+0x5c>
 2ac:	00340493          	addi	s1,s0,3
 2b0:	00098913          	mv	s2,s3
 2b4:	00094783          	lbu	a5,0(s2)
 2b8:	0004c503          	lbu	a0,0(s1)
 2bc:	06078c63          	beqz	a5,334 <displaySymbol+0x118>
 2c0:	1c5000ef          	jal	ra,c84 <neorv32_gpio_pin_clr>
 2c4:	00094783          	lbu	a5,0(s2)
 2c8:	0004c503          	lbu	a0,0(s1)
 2cc:	06078863          	beqz	a5,33c <displaySymbol+0x120>
 2d0:	1b5000ef          	jal	ra,c84 <neorv32_gpio_pin_clr>
 2d4:	00148493          	addi	s1,s1,1
 2d8:	00190913          	addi	s2,s2,1
 2dc:	fc9c1ce3          	bne	s8,s1,2b4 <displaySymbol+0x98>
 2e0:	ec0b0513          	addi	a0,s6,-320 # ec0 <__etext+0x2c>
 2e4:	fffa0a13          	addi	s4,s4,-1
 2e8:	2cc000ef          	jal	ra,5b4 <neorv32_uart0_printf>
 2ec:	00598993          	addi	s3,s3,5
 2f0:	f95a12e3          	bne	s4,s5,274 <displaySymbol+0x58>
 2f4:	02c12083          	lw	ra,44(sp)
 2f8:	02812403          	lw	s0,40(sp)
 2fc:	02412483          	lw	s1,36(sp)
 300:	02012903          	lw	s2,32(sp)
 304:	01c12983          	lw	s3,28(sp)
 308:	01812a03          	lw	s4,24(sp)
 30c:	01412a83          	lw	s5,20(sp)
 310:	01012b03          	lw	s6,16(sp)
 314:	00c12b83          	lw	s7,12(sp)
 318:	00812c03          	lw	s8,8(sp)
 31c:	00412c83          	lw	s9,4(sp)
 320:	00012d03          	lw	s10,0(sp)
 324:	03010113          	addi	sp,sp,48
 328:	00008067          	ret
 32c:	159000ef          	jal	ra,c84 <neorv32_gpio_pin_clr>
 330:	f65ff06f          	j	294 <displaySymbol+0x78>
 334:	121000ef          	jal	ra,c54 <neorv32_gpio_pin_set>
 338:	f8dff06f          	j	2c4 <displaySymbol+0xa8>
 33c:	119000ef          	jal	ra,c54 <neorv32_gpio_pin_set>
 340:	f95ff06f          	j	2d4 <displaySymbol+0xb8>

00000344 <__neorv32_uart_itoa>:
 344:	fd010113          	addi	sp,sp,-48
 348:	02812423          	sw	s0,40(sp)
 34c:	02912223          	sw	s1,36(sp)
 350:	03212023          	sw	s2,32(sp)
 354:	01312e23          	sw	s3,28(sp)
 358:	01412c23          	sw	s4,24(sp)
 35c:	02112623          	sw	ra,44(sp)
 360:	01512a23          	sw	s5,20(sp)
 364:	00001a37          	lui	s4,0x1
 368:	00050493          	mv	s1,a0
 36c:	00058413          	mv	s0,a1
 370:	00058523          	sb	zero,10(a1)
 374:	00000993          	li	s3,0
 378:	00410913          	addi	s2,sp,4
 37c:	efca0a13          	addi	s4,s4,-260 # efc <numbers.1>
 380:	00a00593          	li	a1,10
 384:	00048513          	mv	a0,s1
 388:	181000ef          	jal	ra,d08 <__umodsi3>
 38c:	00aa0533          	add	a0,s4,a0
 390:	00054783          	lbu	a5,0(a0)
 394:	01390ab3          	add	s5,s2,s3
 398:	00048513          	mv	a0,s1
 39c:	00fa8023          	sb	a5,0(s5)
 3a0:	00a00593          	li	a1,10
 3a4:	11d000ef          	jal	ra,cc0 <__udivsi3>
 3a8:	00198993          	addi	s3,s3,1
 3ac:	00a00793          	li	a5,10
 3b0:	00050493          	mv	s1,a0
 3b4:	fcf996e3          	bne	s3,a5,380 <__neorv32_uart_itoa+0x3c>
 3b8:	00090693          	mv	a3,s2
 3bc:	00900713          	li	a4,9
 3c0:	03000613          	li	a2,48
 3c4:	0096c583          	lbu	a1,9(a3)
 3c8:	00070793          	mv	a5,a4
 3cc:	fff70713          	addi	a4,a4,-1
 3d0:	01071713          	slli	a4,a4,0x10
 3d4:	01075713          	srli	a4,a4,0x10
 3d8:	00c59a63          	bne	a1,a2,3ec <__neorv32_uart_itoa+0xa8>
 3dc:	000684a3          	sb	zero,9(a3)
 3e0:	fff68693          	addi	a3,a3,-1
 3e4:	fe0710e3          	bnez	a4,3c4 <__neorv32_uart_itoa+0x80>
 3e8:	00000793          	li	a5,0
 3ec:	00f907b3          	add	a5,s2,a5
 3f0:	00000593          	li	a1,0
 3f4:	0007c703          	lbu	a4,0(a5)
 3f8:	00070c63          	beqz	a4,410 <__neorv32_uart_itoa+0xcc>
 3fc:	00158693          	addi	a3,a1,1
 400:	00b405b3          	add	a1,s0,a1
 404:	00e58023          	sb	a4,0(a1)
 408:	01069593          	slli	a1,a3,0x10
 40c:	0105d593          	srli	a1,a1,0x10
 410:	fff78713          	addi	a4,a5,-1
 414:	02f91863          	bne	s2,a5,444 <__neorv32_uart_itoa+0x100>
 418:	00b40433          	add	s0,s0,a1
 41c:	00040023          	sb	zero,0(s0)
 420:	02c12083          	lw	ra,44(sp)
 424:	02812403          	lw	s0,40(sp)
 428:	02412483          	lw	s1,36(sp)
 42c:	02012903          	lw	s2,32(sp)
 430:	01c12983          	lw	s3,28(sp)
 434:	01812a03          	lw	s4,24(sp)
 438:	01412a83          	lw	s5,20(sp)
 43c:	03010113          	addi	sp,sp,48
 440:	00008067          	ret
 444:	00070793          	mv	a5,a4
 448:	fadff06f          	j	3f4 <__neorv32_uart_itoa+0xb0>

0000044c <__neorv32_uart_tohex>:
 44c:	00001637          	lui	a2,0x1
 450:	00758693          	addi	a3,a1,7
 454:	00000713          	li	a4,0
 458:	f0860613          	addi	a2,a2,-248 # f08 <symbols.0>
 45c:	02000813          	li	a6,32
 460:	00e557b3          	srl	a5,a0,a4
 464:	00f7f793          	andi	a5,a5,15
 468:	00f607b3          	add	a5,a2,a5
 46c:	0007c783          	lbu	a5,0(a5)
 470:	00470713          	addi	a4,a4,4
 474:	fff68693          	addi	a3,a3,-1
 478:	00f680a3          	sb	a5,1(a3)
 47c:	ff0712e3          	bne	a4,a6,460 <__neorv32_uart_tohex+0x14>
 480:	00058423          	sb	zero,8(a1)
 484:	00008067          	ret

00000488 <neorv32_uart0_available>:
 488:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 48c:	01255513          	srli	a0,a0,0x12
 490:	00157513          	andi	a0,a0,1
 494:	00008067          	ret

00000498 <neorv32_uart0_setup>:
 498:	ff010113          	addi	sp,sp,-16
 49c:	00812423          	sw	s0,8(sp)
 4a0:	00912223          	sw	s1,4(sp)
 4a4:	00112623          	sw	ra,12(sp)
 4a8:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 4ac:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 4b0:	00058413          	mv	s0,a1
 4b4:	00151593          	slli	a1,a0,0x1
 4b8:	00078513          	mv	a0,a5
 4bc:	00060493          	mv	s1,a2
 4c0:	001000ef          	jal	ra,cc0 <__udivsi3>
 4c4:	01051513          	slli	a0,a0,0x10
 4c8:	000017b7          	lui	a5,0x1
 4cc:	01055513          	srli	a0,a0,0x10
 4d0:	00000713          	li	a4,0
 4d4:	ffe78793          	addi	a5,a5,-2 # ffe <symbols.0+0xf6>
 4d8:	04a7e463          	bltu	a5,a0,520 <neorv32_uart0_setup+0x88>
 4dc:	0034f793          	andi	a5,s1,3
 4e0:	00347413          	andi	s0,s0,3
 4e4:	fff50513          	addi	a0,a0,-1
 4e8:	01479793          	slli	a5,a5,0x14
 4ec:	01641413          	slli	s0,s0,0x16
 4f0:	00f567b3          	or	a5,a0,a5
 4f4:	0087e7b3          	or	a5,a5,s0
 4f8:	01871713          	slli	a4,a4,0x18
 4fc:	00c12083          	lw	ra,12(sp)
 500:	00812403          	lw	s0,8(sp)
 504:	00e7e7b3          	or	a5,a5,a4
 508:	10000737          	lui	a4,0x10000
 50c:	00e7e7b3          	or	a5,a5,a4
 510:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 514:	00412483          	lw	s1,4(sp)
 518:	01010113          	addi	sp,sp,16
 51c:	00008067          	ret
 520:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffee3a>
 524:	0fd6f693          	andi	a3,a3,253
 528:	00069a63          	bnez	a3,53c <neorv32_uart0_setup+0xa4>
 52c:	00355513          	srli	a0,a0,0x3
 530:	00170713          	addi	a4,a4,1
 534:	0ff77713          	andi	a4,a4,255
 538:	fa1ff06f          	j	4d8 <neorv32_uart0_setup+0x40>
 53c:	00155513          	srli	a0,a0,0x1
 540:	ff1ff06f          	j	530 <neorv32_uart0_setup+0x98>

00000544 <neorv32_uart0_putc>:
 544:	00040737          	lui	a4,0x40
 548:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 54c:	00e7f7b3          	and	a5,a5,a4
 550:	fe079ce3          	bnez	a5,548 <neorv32_uart0_putc+0x4>
 554:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 558:	00008067          	ret

0000055c <neorv32_uart0_print>:
 55c:	ff010113          	addi	sp,sp,-16
 560:	00812423          	sw	s0,8(sp)
 564:	01212023          	sw	s2,0(sp)
 568:	00112623          	sw	ra,12(sp)
 56c:	00912223          	sw	s1,4(sp)
 570:	00050413          	mv	s0,a0
 574:	00a00913          	li	s2,10
 578:	00044483          	lbu	s1,0(s0)
 57c:	00140413          	addi	s0,s0,1
 580:	00049e63          	bnez	s1,59c <neorv32_uart0_print+0x40>
 584:	00c12083          	lw	ra,12(sp)
 588:	00812403          	lw	s0,8(sp)
 58c:	00412483          	lw	s1,4(sp)
 590:	00012903          	lw	s2,0(sp)
 594:	01010113          	addi	sp,sp,16
 598:	00008067          	ret
 59c:	01249663          	bne	s1,s2,5a8 <neorv32_uart0_print+0x4c>
 5a0:	00d00513          	li	a0,13
 5a4:	fa1ff0ef          	jal	ra,544 <neorv32_uart0_putc>
 5a8:	00048513          	mv	a0,s1
 5ac:	f99ff0ef          	jal	ra,544 <neorv32_uart0_putc>
 5b0:	fc9ff06f          	j	578 <neorv32_uart0_print+0x1c>

000005b4 <neorv32_uart0_printf>:
 5b4:	fa010113          	addi	sp,sp,-96
 5b8:	04f12a23          	sw	a5,84(sp)
 5bc:	04410793          	addi	a5,sp,68
 5c0:	02812c23          	sw	s0,56(sp)
 5c4:	03212823          	sw	s2,48(sp)
 5c8:	03412423          	sw	s4,40(sp)
 5cc:	03512223          	sw	s5,36(sp)
 5d0:	03612023          	sw	s6,32(sp)
 5d4:	01712e23          	sw	s7,28(sp)
 5d8:	01812c23          	sw	s8,24(sp)
 5dc:	01912a23          	sw	s9,20(sp)
 5e0:	02112e23          	sw	ra,60(sp)
 5e4:	02912a23          	sw	s1,52(sp)
 5e8:	03312623          	sw	s3,44(sp)
 5ec:	00050413          	mv	s0,a0
 5f0:	04b12223          	sw	a1,68(sp)
 5f4:	04c12423          	sw	a2,72(sp)
 5f8:	04d12623          	sw	a3,76(sp)
 5fc:	04e12823          	sw	a4,80(sp)
 600:	05012c23          	sw	a6,88(sp)
 604:	05112e23          	sw	a7,92(sp)
 608:	00f12023          	sw	a5,0(sp)
 60c:	02500a13          	li	s4,37
 610:	00a00a93          	li	s5,10
 614:	07300913          	li	s2,115
 618:	07500b13          	li	s6,117
 61c:	07800b93          	li	s7,120
 620:	06300c13          	li	s8,99
 624:	06900c93          	li	s9,105
 628:	00044483          	lbu	s1,0(s0)
 62c:	02049c63          	bnez	s1,664 <neorv32_uart0_printf+0xb0>
 630:	03c12083          	lw	ra,60(sp)
 634:	03812403          	lw	s0,56(sp)
 638:	03412483          	lw	s1,52(sp)
 63c:	03012903          	lw	s2,48(sp)
 640:	02c12983          	lw	s3,44(sp)
 644:	02812a03          	lw	s4,40(sp)
 648:	02412a83          	lw	s5,36(sp)
 64c:	02012b03          	lw	s6,32(sp)
 650:	01c12b83          	lw	s7,28(sp)
 654:	01812c03          	lw	s8,24(sp)
 658:	01412c83          	lw	s9,20(sp)
 65c:	06010113          	addi	sp,sp,96
 660:	00008067          	ret
 664:	0d449863          	bne	s1,s4,734 <neorv32_uart0_printf+0x180>
 668:	00240993          	addi	s3,s0,2
 66c:	00144403          	lbu	s0,1(s0)
 670:	05240263          	beq	s0,s2,6b4 <neorv32_uart0_printf+0x100>
 674:	00896e63          	bltu	s2,s0,690 <neorv32_uart0_printf+0xdc>
 678:	05840c63          	beq	s0,s8,6d0 <neorv32_uart0_printf+0x11c>
 67c:	07940663          	beq	s0,s9,6e8 <neorv32_uart0_printf+0x134>
 680:	02500513          	li	a0,37
 684:	ec1ff0ef          	jal	ra,544 <neorv32_uart0_putc>
 688:	00040513          	mv	a0,s0
 68c:	0540006f          	j	6e0 <neorv32_uart0_printf+0x12c>
 690:	09640663          	beq	s0,s6,71c <neorv32_uart0_printf+0x168>
 694:	ff7416e3          	bne	s0,s7,680 <neorv32_uart0_printf+0xcc>
 698:	00012783          	lw	a5,0(sp)
 69c:	00410593          	addi	a1,sp,4
 6a0:	0007a503          	lw	a0,0(a5)
 6a4:	00478713          	addi	a4,a5,4
 6a8:	00e12023          	sw	a4,0(sp)
 6ac:	da1ff0ef          	jal	ra,44c <__neorv32_uart_tohex>
 6b0:	0640006f          	j	714 <neorv32_uart0_printf+0x160>
 6b4:	00012783          	lw	a5,0(sp)
 6b8:	0007a503          	lw	a0,0(a5)
 6bc:	00478713          	addi	a4,a5,4
 6c0:	00e12023          	sw	a4,0(sp)
 6c4:	e99ff0ef          	jal	ra,55c <neorv32_uart0_print>
 6c8:	00098413          	mv	s0,s3
 6cc:	f5dff06f          	j	628 <neorv32_uart0_printf+0x74>
 6d0:	00012783          	lw	a5,0(sp)
 6d4:	0007c503          	lbu	a0,0(a5)
 6d8:	00478713          	addi	a4,a5,4
 6dc:	00e12023          	sw	a4,0(sp)
 6e0:	e65ff0ef          	jal	ra,544 <neorv32_uart0_putc>
 6e4:	fe5ff06f          	j	6c8 <neorv32_uart0_printf+0x114>
 6e8:	00012783          	lw	a5,0(sp)
 6ec:	0007a403          	lw	s0,0(a5)
 6f0:	00478713          	addi	a4,a5,4
 6f4:	00e12023          	sw	a4,0(sp)
 6f8:	00045863          	bgez	s0,708 <neorv32_uart0_printf+0x154>
 6fc:	02d00513          	li	a0,45
 700:	40800433          	neg	s0,s0
 704:	e41ff0ef          	jal	ra,544 <neorv32_uart0_putc>
 708:	00410593          	addi	a1,sp,4
 70c:	00040513          	mv	a0,s0
 710:	c35ff0ef          	jal	ra,344 <__neorv32_uart_itoa>
 714:	00410513          	addi	a0,sp,4
 718:	fadff06f          	j	6c4 <neorv32_uart0_printf+0x110>
 71c:	00012783          	lw	a5,0(sp)
 720:	00410593          	addi	a1,sp,4
 724:	00478713          	addi	a4,a5,4
 728:	0007a503          	lw	a0,0(a5)
 72c:	00e12023          	sw	a4,0(sp)
 730:	fe1ff06f          	j	710 <neorv32_uart0_printf+0x15c>
 734:	01549663          	bne	s1,s5,740 <neorv32_uart0_printf+0x18c>
 738:	00d00513          	li	a0,13
 73c:	e09ff0ef          	jal	ra,544 <neorv32_uart0_putc>
 740:	00140993          	addi	s3,s0,1
 744:	00048513          	mv	a0,s1
 748:	f99ff06f          	j	6e0 <neorv32_uart0_printf+0x12c>
 74c:	0000                	unimp
 74e:	0000                	unimp

00000750 <__neorv32_rte_core>:
 750:	fc010113          	addi	sp,sp,-64
 754:	02112e23          	sw	ra,60(sp)
 758:	02512c23          	sw	t0,56(sp)
 75c:	02612a23          	sw	t1,52(sp)
 760:	02712823          	sw	t2,48(sp)
 764:	02a12623          	sw	a0,44(sp)
 768:	02b12423          	sw	a1,40(sp)
 76c:	02c12223          	sw	a2,36(sp)
 770:	02d12023          	sw	a3,32(sp)
 774:	00e12e23          	sw	a4,28(sp)
 778:	00f12c23          	sw	a5,24(sp)
 77c:	01012a23          	sw	a6,20(sp)
 780:	01112823          	sw	a7,16(sp)
 784:	01c12623          	sw	t3,12(sp)
 788:	01d12423          	sw	t4,8(sp)
 78c:	01e12223          	sw	t5,4(sp)
 790:	01f12023          	sw	t6,0(sp)
 794:	34102773          	csrr	a4,mepc
 798:	34071073          	csrw	mscratch,a4
 79c:	342027f3          	csrr	a5,mcause
 7a0:	0807ca63          	bltz	a5,834 <__neorv32_rte_core+0xe4>
 7a4:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3ee3c>
 7a8:	00300593          	li	a1,3
 7ac:	0036f693          	andi	a3,a3,3
 7b0:	00270613          	addi	a2,a4,2
 7b4:	00b69463          	bne	a3,a1,7bc <__neorv32_rte_core+0x6c>
 7b8:	00470613          	addi	a2,a4,4
 7bc:	34161073          	csrw	mepc,a2
 7c0:	00b00713          	li	a4,11
 7c4:	04f77c63          	bgeu	a4,a5,81c <__neorv32_rte_core+0xcc>
 7c8:	000017b7          	lui	a5,0x1
 7cc:	9d078793          	addi	a5,a5,-1584 # 9d0 <__neorv32_rte_debug_exc_handler>
 7d0:	000780e7          	jalr	a5
 7d4:	03c12083          	lw	ra,60(sp)
 7d8:	03812283          	lw	t0,56(sp)
 7dc:	03412303          	lw	t1,52(sp)
 7e0:	03012383          	lw	t2,48(sp)
 7e4:	02c12503          	lw	a0,44(sp)
 7e8:	02812583          	lw	a1,40(sp)
 7ec:	02412603          	lw	a2,36(sp)
 7f0:	02012683          	lw	a3,32(sp)
 7f4:	01c12703          	lw	a4,28(sp)
 7f8:	01812783          	lw	a5,24(sp)
 7fc:	01412803          	lw	a6,20(sp)
 800:	01012883          	lw	a7,16(sp)
 804:	00c12e03          	lw	t3,12(sp)
 808:	00812e83          	lw	t4,8(sp)
 80c:	00412f03          	lw	t5,4(sp)
 810:	00012f83          	lw	t6,0(sp)
 814:	04010113          	addi	sp,sp,64
 818:	30200073          	mret
 81c:	00001737          	lui	a4,0x1
 820:	00279793          	slli	a5,a5,0x2
 824:	f1c70713          	addi	a4,a4,-228 # f1c <symbols.0+0x14>
 828:	00e787b3          	add	a5,a5,a4
 82c:	0007a783          	lw	a5,0(a5)
 830:	00078067          	jr	a5
 834:	80000737          	lui	a4,0x80000
 838:	ffd74713          	xori	a4,a4,-3
 83c:	00e787b3          	add	a5,a5,a4
 840:	01c00713          	li	a4,28
 844:	f8f762e3          	bltu	a4,a5,7c8 <__neorv32_rte_core+0x78>
 848:	00001737          	lui	a4,0x1
 84c:	00279793          	slli	a5,a5,0x2
 850:	f4c70713          	addi	a4,a4,-180 # f4c <symbols.0+0x44>
 854:	00e787b3          	add	a5,a5,a4
 858:	0007a783          	lw	a5,0(a5)
 85c:	00078067          	jr	a5
 860:	800007b7          	lui	a5,0x80000
 864:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 868:	f69ff06f          	j	7d0 <__neorv32_rte_core+0x80>
 86c:	800007b7          	lui	a5,0x80000
 870:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 874:	f5dff06f          	j	7d0 <__neorv32_rte_core+0x80>
 878:	800007b7          	lui	a5,0x80000
 87c:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 880:	f51ff06f          	j	7d0 <__neorv32_rte_core+0x80>
 884:	800007b7          	lui	a5,0x80000
 888:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
 88c:	f45ff06f          	j	7d0 <__neorv32_rte_core+0x80>
 890:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
 894:	f3dff06f          	j	7d0 <__neorv32_rte_core+0x80>
 898:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
 89c:	f35ff06f          	j	7d0 <__neorv32_rte_core+0x80>
 8a0:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
 8a4:	f2dff06f          	j	7d0 <__neorv32_rte_core+0x80>
 8a8:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
 8ac:	f25ff06f          	j	7d0 <__neorv32_rte_core+0x80>
 8b0:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
 8b4:	f1dff06f          	j	7d0 <__neorv32_rte_core+0x80>
 8b8:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
 8bc:	f15ff06f          	j	7d0 <__neorv32_rte_core+0x80>
 8c0:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
 8c4:	f0dff06f          	j	7d0 <__neorv32_rte_core+0x80>
 8c8:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
 8cc:	f05ff06f          	j	7d0 <__neorv32_rte_core+0x80>
 8d0:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
 8d4:	efdff06f          	j	7d0 <__neorv32_rte_core+0x80>
 8d8:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
 8dc:	ef5ff06f          	j	7d0 <__neorv32_rte_core+0x80>
 8e0:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
 8e4:	eedff06f          	j	7d0 <__neorv32_rte_core+0x80>
 8e8:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
 8ec:	ee5ff06f          	j	7d0 <__neorv32_rte_core+0x80>
 8f0:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 8f4:	eddff06f          	j	7d0 <__neorv32_rte_core+0x80>
 8f8:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 8fc:	ed5ff06f          	j	7d0 <__neorv32_rte_core+0x80>
 900:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 904:	ecdff06f          	j	7d0 <__neorv32_rte_core+0x80>
 908:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 90c:	ec5ff06f          	j	7d0 <__neorv32_rte_core+0x80>
 910:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 914:	ebdff06f          	j	7d0 <__neorv32_rte_core+0x80>
 918:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 91c:	eb5ff06f          	j	7d0 <__neorv32_rte_core+0x80>
 920:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 924:	eadff06f          	j	7d0 <__neorv32_rte_core+0x80>
 928:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 92c:	ea5ff06f          	j	7d0 <__neorv32_rte_core+0x80>
 930:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 934:	e9dff06f          	j	7d0 <__neorv32_rte_core+0x80>
 938:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 93c:	e95ff06f          	j	7d0 <__neorv32_rte_core+0x80>
 940:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 944:	e8dff06f          	j	7d0 <__neorv32_rte_core+0x80>
 948:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 94c:	e85ff06f          	j	7d0 <__neorv32_rte_core+0x80>
 950:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 954:	e7dff06f          	j	7d0 <__neorv32_rte_core+0x80>
 958:	0000                	unimp
 95a:	0000                	unimp
 95c:	0000                	unimp
 95e:	0000                	unimp

00000960 <__neorv32_rte_print_hex_word>:
 960:	fe010113          	addi	sp,sp,-32
 964:	01212823          	sw	s2,16(sp)
 968:	00050913          	mv	s2,a0
 96c:	00001537          	lui	a0,0x1
 970:	00912a23          	sw	s1,20(sp)
 974:	fc050513          	addi	a0,a0,-64 # fc0 <symbols.0+0xb8>
 978:	000014b7          	lui	s1,0x1
 97c:	00812c23          	sw	s0,24(sp)
 980:	01312623          	sw	s3,12(sp)
 984:	00112e23          	sw	ra,28(sp)
 988:	01c00413          	li	s0,28
 98c:	bd1ff0ef          	jal	ra,55c <neorv32_uart0_print>
 990:	1b448493          	addi	s1,s1,436 # 11b4 <hex_symbols.0>
 994:	ffc00993          	li	s3,-4
 998:	008957b3          	srl	a5,s2,s0
 99c:	00f7f793          	andi	a5,a5,15
 9a0:	00f487b3          	add	a5,s1,a5
 9a4:	0007c503          	lbu	a0,0(a5)
 9a8:	ffc40413          	addi	s0,s0,-4
 9ac:	b99ff0ef          	jal	ra,544 <neorv32_uart0_putc>
 9b0:	ff3414e3          	bne	s0,s3,998 <__neorv32_rte_print_hex_word+0x38>
 9b4:	01c12083          	lw	ra,28(sp)
 9b8:	01812403          	lw	s0,24(sp)
 9bc:	01412483          	lw	s1,20(sp)
 9c0:	01012903          	lw	s2,16(sp)
 9c4:	00c12983          	lw	s3,12(sp)
 9c8:	02010113          	addi	sp,sp,32
 9cc:	00008067          	ret

000009d0 <__neorv32_rte_debug_exc_handler>:
 9d0:	ff010113          	addi	sp,sp,-16
 9d4:	00112623          	sw	ra,12(sp)
 9d8:	00812423          	sw	s0,8(sp)
 9dc:	00912223          	sw	s1,4(sp)
 9e0:	aa9ff0ef          	jal	ra,488 <neorv32_uart0_available>
 9e4:	1c050863          	beqz	a0,bb4 <__neorv32_rte_debug_exc_handler+0x1e4>
 9e8:	00001537          	lui	a0,0x1
 9ec:	fc450513          	addi	a0,a0,-60 # fc4 <symbols.0+0xbc>
 9f0:	b6dff0ef          	jal	ra,55c <neorv32_uart0_print>
 9f4:	34202473          	csrr	s0,mcause
 9f8:	00900713          	li	a4,9
 9fc:	00f47793          	andi	a5,s0,15
 a00:	03078493          	addi	s1,a5,48
 a04:	00f77463          	bgeu	a4,a5,a0c <__neorv32_rte_debug_exc_handler+0x3c>
 a08:	05778493          	addi	s1,a5,87
 a0c:	00b00793          	li	a5,11
 a10:	0087ee63          	bltu	a5,s0,a2c <__neorv32_rte_debug_exc_handler+0x5c>
 a14:	00001737          	lui	a4,0x1
 a18:	00241793          	slli	a5,s0,0x2
 a1c:	18470713          	addi	a4,a4,388 # 1184 <symbols.0+0x27c>
 a20:	00e787b3          	add	a5,a5,a4
 a24:	0007a783          	lw	a5,0(a5)
 a28:	00078067          	jr	a5
 a2c:	800007b7          	lui	a5,0x80000
 a30:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 a34:	14e40e63          	beq	s0,a4,b90 <__neorv32_rte_debug_exc_handler+0x1c0>
 a38:	02876a63          	bltu	a4,s0,a6c <__neorv32_rte_debug_exc_handler+0x9c>
 a3c:	00378713          	addi	a4,a5,3
 a40:	12e40c63          	beq	s0,a4,b78 <__neorv32_rte_debug_exc_handler+0x1a8>
 a44:	00778793          	addi	a5,a5,7
 a48:	12f40e63          	beq	s0,a5,b84 <__neorv32_rte_debug_exc_handler+0x1b4>
 a4c:	00001537          	lui	a0,0x1
 a50:	12450513          	addi	a0,a0,292 # 1124 <symbols.0+0x21c>
 a54:	b09ff0ef          	jal	ra,55c <neorv32_uart0_print>
 a58:	00040513          	mv	a0,s0
 a5c:	f05ff0ef          	jal	ra,960 <__neorv32_rte_print_hex_word>
 a60:	00100793          	li	a5,1
 a64:	08f40c63          	beq	s0,a5,afc <__neorv32_rte_debug_exc_handler+0x12c>
 a68:	0280006f          	j	a90 <__neorv32_rte_debug_exc_handler+0xc0>
 a6c:	ff07c793          	xori	a5,a5,-16
 a70:	00f407b3          	add	a5,s0,a5
 a74:	00f00713          	li	a4,15
 a78:	fcf76ae3          	bltu	a4,a5,a4c <__neorv32_rte_debug_exc_handler+0x7c>
 a7c:	00001537          	lui	a0,0x1
 a80:	11450513          	addi	a0,a0,276 # 1114 <symbols.0+0x20c>
 a84:	ad9ff0ef          	jal	ra,55c <neorv32_uart0_print>
 a88:	00048513          	mv	a0,s1
 a8c:	ab9ff0ef          	jal	ra,544 <neorv32_uart0_putc>
 a90:	ffd47413          	andi	s0,s0,-3
 a94:	00500793          	li	a5,5
 a98:	06f40263          	beq	s0,a5,afc <__neorv32_rte_debug_exc_handler+0x12c>
 a9c:	00001537          	lui	a0,0x1
 aa0:	16850513          	addi	a0,a0,360 # 1168 <symbols.0+0x260>
 aa4:	ab9ff0ef          	jal	ra,55c <neorv32_uart0_print>
 aa8:	34002573          	csrr	a0,mscratch
 aac:	eb5ff0ef          	jal	ra,960 <__neorv32_rte_print_hex_word>
 ab0:	00001537          	lui	a0,0x1
 ab4:	17050513          	addi	a0,a0,368 # 1170 <symbols.0+0x268>
 ab8:	aa5ff0ef          	jal	ra,55c <neorv32_uart0_print>
 abc:	34302573          	csrr	a0,mtval
 ac0:	ea1ff0ef          	jal	ra,960 <__neorv32_rte_print_hex_word>
 ac4:	00812403          	lw	s0,8(sp)
 ac8:	00c12083          	lw	ra,12(sp)
 acc:	00412483          	lw	s1,4(sp)
 ad0:	00001537          	lui	a0,0x1
 ad4:	17c50513          	addi	a0,a0,380 # 117c <symbols.0+0x274>
 ad8:	01010113          	addi	sp,sp,16
 adc:	a81ff06f          	j	55c <neorv32_uart0_print>
 ae0:	00001537          	lui	a0,0x1
 ae4:	fcc50513          	addi	a0,a0,-52 # fcc <symbols.0+0xc4>
 ae8:	a75ff0ef          	jal	ra,55c <neorv32_uart0_print>
 aec:	fb1ff06f          	j	a9c <__neorv32_rte_debug_exc_handler+0xcc>
 af0:	00001537          	lui	a0,0x1
 af4:	fec50513          	addi	a0,a0,-20 # fec <symbols.0+0xe4>
 af8:	a65ff0ef          	jal	ra,55c <neorv32_uart0_print>
 afc:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 b00:	0a07d463          	bgez	a5,ba8 <__neorv32_rte_debug_exc_handler+0x1d8>
 b04:	0017f793          	andi	a5,a5,1
 b08:	08078a63          	beqz	a5,b9c <__neorv32_rte_debug_exc_handler+0x1cc>
 b0c:	00001537          	lui	a0,0x1
 b10:	13c50513          	addi	a0,a0,316 # 113c <symbols.0+0x234>
 b14:	fd5ff06f          	j	ae8 <__neorv32_rte_debug_exc_handler+0x118>
 b18:	00001537          	lui	a0,0x1
 b1c:	00850513          	addi	a0,a0,8 # 1008 <symbols.0+0x100>
 b20:	fc9ff06f          	j	ae8 <__neorv32_rte_debug_exc_handler+0x118>
 b24:	00001537          	lui	a0,0x1
 b28:	01c50513          	addi	a0,a0,28 # 101c <symbols.0+0x114>
 b2c:	fbdff06f          	j	ae8 <__neorv32_rte_debug_exc_handler+0x118>
 b30:	00001537          	lui	a0,0x1
 b34:	02850513          	addi	a0,a0,40 # 1028 <symbols.0+0x120>
 b38:	fb1ff06f          	j	ae8 <__neorv32_rte_debug_exc_handler+0x118>
 b3c:	00001537          	lui	a0,0x1
 b40:	04050513          	addi	a0,a0,64 # 1040 <symbols.0+0x138>
 b44:	fb5ff06f          	j	af8 <__neorv32_rte_debug_exc_handler+0x128>
 b48:	00001537          	lui	a0,0x1
 b4c:	05450513          	addi	a0,a0,84 # 1054 <symbols.0+0x14c>
 b50:	f99ff06f          	j	ae8 <__neorv32_rte_debug_exc_handler+0x118>
 b54:	00001537          	lui	a0,0x1
 b58:	07050513          	addi	a0,a0,112 # 1070 <symbols.0+0x168>
 b5c:	f9dff06f          	j	af8 <__neorv32_rte_debug_exc_handler+0x128>
 b60:	00001537          	lui	a0,0x1
 b64:	08450513          	addi	a0,a0,132 # 1084 <symbols.0+0x17c>
 b68:	f81ff06f          	j	ae8 <__neorv32_rte_debug_exc_handler+0x118>
 b6c:	00001537          	lui	a0,0x1
 b70:	0a450513          	addi	a0,a0,164 # 10a4 <symbols.0+0x19c>
 b74:	f75ff06f          	j	ae8 <__neorv32_rte_debug_exc_handler+0x118>
 b78:	00001537          	lui	a0,0x1
 b7c:	0c450513          	addi	a0,a0,196 # 10c4 <symbols.0+0x1bc>
 b80:	f69ff06f          	j	ae8 <__neorv32_rte_debug_exc_handler+0x118>
 b84:	00001537          	lui	a0,0x1
 b88:	0e050513          	addi	a0,a0,224 # 10e0 <symbols.0+0x1d8>
 b8c:	f5dff06f          	j	ae8 <__neorv32_rte_debug_exc_handler+0x118>
 b90:	00001537          	lui	a0,0x1
 b94:	0f850513          	addi	a0,a0,248 # 10f8 <symbols.0+0x1f0>
 b98:	f51ff06f          	j	ae8 <__neorv32_rte_debug_exc_handler+0x118>
 b9c:	00001537          	lui	a0,0x1
 ba0:	14c50513          	addi	a0,a0,332 # 114c <symbols.0+0x244>
 ba4:	f45ff06f          	j	ae8 <__neorv32_rte_debug_exc_handler+0x118>
 ba8:	00001537          	lui	a0,0x1
 bac:	15c50513          	addi	a0,a0,348 # 115c <symbols.0+0x254>
 bb0:	f39ff06f          	j	ae8 <__neorv32_rte_debug_exc_handler+0x118>
 bb4:	00c12083          	lw	ra,12(sp)
 bb8:	00812403          	lw	s0,8(sp)
 bbc:	00412483          	lw	s1,4(sp)
 bc0:	01010113          	addi	sp,sp,16
 bc4:	00008067          	ret

00000bc8 <neorv32_rte_exception_uninstall>:
 bc8:	01f00793          	li	a5,31
 bcc:	02a7e463          	bltu	a5,a0,bf4 <neorv32_rte_exception_uninstall+0x2c>
 bd0:	800007b7          	lui	a5,0x80000
 bd4:	00078793          	mv	a5,a5
 bd8:	00251513          	slli	a0,a0,0x2
 bdc:	00a78533          	add	a0,a5,a0
 be0:	000017b7          	lui	a5,0x1
 be4:	9d078793          	addi	a5,a5,-1584 # 9d0 <__neorv32_rte_debug_exc_handler>
 be8:	00f52023          	sw	a5,0(a0)
 bec:	00000513          	li	a0,0
 bf0:	00008067          	ret
 bf4:	00100513          	li	a0,1
 bf8:	00008067          	ret

00000bfc <neorv32_rte_setup>:
 bfc:	ff010113          	addi	sp,sp,-16
 c00:	00112623          	sw	ra,12(sp)
 c04:	00812423          	sw	s0,8(sp)
 c08:	00912223          	sw	s1,4(sp)
 c0c:	75000793          	li	a5,1872
 c10:	30579073          	csrw	mtvec,a5
 c14:	00000413          	li	s0,0
 c18:	01d00493          	li	s1,29
 c1c:	00040513          	mv	a0,s0
 c20:	00140413          	addi	s0,s0,1
 c24:	0ff47413          	andi	s0,s0,255
 c28:	fa1ff0ef          	jal	ra,bc8 <neorv32_rte_exception_uninstall>
 c2c:	fe9418e3          	bne	s0,s1,c1c <neorv32_rte_setup+0x20>
 c30:	00c12083          	lw	ra,12(sp)
 c34:	00812403          	lw	s0,8(sp)
 c38:	00412483          	lw	s1,4(sp)
 c3c:	01010113          	addi	sp,sp,16
 c40:	00008067          	ret

00000c44 <neorv32_gpio_available>:
 c44:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 c48:	01055513          	srli	a0,a0,0x10
 c4c:	00157513          	andi	a0,a0,1
 c50:	00008067          	ret

00000c54 <neorv32_gpio_pin_set>:
 c54:	00100793          	li	a5,1
 c58:	01f00713          	li	a4,31
 c5c:	00a797b3          	sll	a5,a5,a0
 c60:	00a74a63          	blt	a4,a0,c74 <neorv32_gpio_pin_set+0x20>
 c64:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 c68:	00f767b3          	or	a5,a4,a5
 c6c:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 c70:	00008067          	ret
 c74:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 c78:	00f767b3          	or	a5,a4,a5
 c7c:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 c80:	00008067          	ret

00000c84 <neorv32_gpio_pin_clr>:
 c84:	00100793          	li	a5,1
 c88:	00a797b3          	sll	a5,a5,a0
 c8c:	01f00713          	li	a4,31
 c90:	fff7c793          	not	a5,a5
 c94:	00a74a63          	blt	a4,a0,ca8 <neorv32_gpio_pin_clr+0x24>
 c98:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 c9c:	00f777b3          	and	a5,a4,a5
 ca0:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 ca4:	00008067          	ret
 ca8:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 cac:	00f777b3          	and	a5,a4,a5
 cb0:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 cb4:	00008067          	ret

00000cb8 <__divsi3>:
 cb8:	06054063          	bltz	a0,d18 <__umodsi3+0x10>
 cbc:	0605c663          	bltz	a1,d28 <__umodsi3+0x20>

00000cc0 <__udivsi3>:
 cc0:	00058613          	mv	a2,a1
 cc4:	00050593          	mv	a1,a0
 cc8:	fff00513          	li	a0,-1
 ccc:	02060c63          	beqz	a2,d04 <__udivsi3+0x44>
 cd0:	00100693          	li	a3,1
 cd4:	00b67a63          	bgeu	a2,a1,ce8 <__udivsi3+0x28>
 cd8:	00c05863          	blez	a2,ce8 <__udivsi3+0x28>
 cdc:	00161613          	slli	a2,a2,0x1
 ce0:	00169693          	slli	a3,a3,0x1
 ce4:	feb66ae3          	bltu	a2,a1,cd8 <__udivsi3+0x18>
 ce8:	00000513          	li	a0,0
 cec:	00c5e663          	bltu	a1,a2,cf8 <__udivsi3+0x38>
 cf0:	40c585b3          	sub	a1,a1,a2
 cf4:	00d56533          	or	a0,a0,a3
 cf8:	0016d693          	srli	a3,a3,0x1
 cfc:	00165613          	srli	a2,a2,0x1
 d00:	fe0696e3          	bnez	a3,cec <__udivsi3+0x2c>
 d04:	00008067          	ret

00000d08 <__umodsi3>:
 d08:	00008293          	mv	t0,ra
 d0c:	fb5ff0ef          	jal	ra,cc0 <__udivsi3>
 d10:	00058513          	mv	a0,a1
 d14:	00028067          	jr	t0
 d18:	40a00533          	neg	a0,a0
 d1c:	00b04863          	bgtz	a1,d2c <__umodsi3+0x24>
 d20:	40b005b3          	neg	a1,a1
 d24:	f9dff06f          	j	cc0 <__udivsi3>
 d28:	40b005b3          	neg	a1,a1
 d2c:	00008293          	mv	t0,ra
 d30:	f91ff0ef          	jal	ra,cc0 <__udivsi3>
 d34:	40a00533          	neg	a0,a0
 d38:	00028067          	jr	t0

00000d3c <__modsi3>:
 d3c:	00008293          	mv	t0,ra
 d40:	0005ca63          	bltz	a1,d54 <__modsi3+0x18>
 d44:	00054c63          	bltz	a0,d5c <__modsi3+0x20>
 d48:	f79ff0ef          	jal	ra,cc0 <__udivsi3>
 d4c:	00058513          	mv	a0,a1
 d50:	00028067          	jr	t0
 d54:	40b005b3          	neg	a1,a1
 d58:	fe0558e3          	bgez	a0,d48 <__modsi3+0xc>
 d5c:	40a00533          	neg	a0,a0
 d60:	f61ff0ef          	jal	ra,cc0 <__udivsi3>
 d64:	40b00533          	neg	a0,a1
 d68:	00028067          	jr	t0

00000d6c <memcpy>:
 d6c:	00a5c7b3          	xor	a5,a1,a0
 d70:	0037f793          	andi	a5,a5,3
 d74:	00c508b3          	add	a7,a0,a2
 d78:	06079663          	bnez	a5,de4 <memcpy+0x78>
 d7c:	00300793          	li	a5,3
 d80:	06c7f263          	bgeu	a5,a2,de4 <memcpy+0x78>
 d84:	00357793          	andi	a5,a0,3
 d88:	00050713          	mv	a4,a0
 d8c:	0c079a63          	bnez	a5,e60 <memcpy+0xf4>
 d90:	ffc8f613          	andi	a2,a7,-4
 d94:	40e606b3          	sub	a3,a2,a4
 d98:	02000793          	li	a5,32
 d9c:	02000293          	li	t0,32
 da0:	06d7c263          	blt	a5,a3,e04 <memcpy+0x98>
 da4:	00058693          	mv	a3,a1
 da8:	00070793          	mv	a5,a4
 dac:	02c77863          	bgeu	a4,a2,ddc <memcpy+0x70>
 db0:	0006a803          	lw	a6,0(a3)
 db4:	00478793          	addi	a5,a5,4
 db8:	00468693          	addi	a3,a3,4
 dbc:	ff07ae23          	sw	a6,-4(a5)
 dc0:	fec7e8e3          	bltu	a5,a2,db0 <memcpy+0x44>
 dc4:	fff60793          	addi	a5,a2,-1
 dc8:	40e787b3          	sub	a5,a5,a4
 dcc:	ffc7f793          	andi	a5,a5,-4
 dd0:	00478793          	addi	a5,a5,4
 dd4:	00f70733          	add	a4,a4,a5
 dd8:	00f585b3          	add	a1,a1,a5
 ddc:	01176863          	bltu	a4,a7,dec <memcpy+0x80>
 de0:	00008067          	ret
 de4:	00050713          	mv	a4,a0
 de8:	ff157ce3          	bgeu	a0,a7,de0 <memcpy+0x74>
 dec:	0005c783          	lbu	a5,0(a1)
 df0:	00170713          	addi	a4,a4,1
 df4:	00158593          	addi	a1,a1,1
 df8:	fef70fa3          	sb	a5,-1(a4)
 dfc:	ff1768e3          	bltu	a4,a7,dec <memcpy+0x80>
 e00:	00008067          	ret
 e04:	0045a683          	lw	a3,4(a1)
 e08:	01c5a783          	lw	a5,28(a1)
 e0c:	0005af83          	lw	t6,0(a1)
 e10:	0085af03          	lw	t5,8(a1)
 e14:	00c5ae83          	lw	t4,12(a1)
 e18:	0105ae03          	lw	t3,16(a1)
 e1c:	0145a303          	lw	t1,20(a1)
 e20:	0185a803          	lw	a6,24(a1)
 e24:	00d72223          	sw	a3,4(a4)
 e28:	0205a683          	lw	a3,32(a1)
 e2c:	01f72023          	sw	t6,0(a4)
 e30:	01e72423          	sw	t5,8(a4)
 e34:	01d72623          	sw	t4,12(a4)
 e38:	01c72823          	sw	t3,16(a4)
 e3c:	00672a23          	sw	t1,20(a4)
 e40:	01072c23          	sw	a6,24(a4)
 e44:	00f72e23          	sw	a5,28(a4)
 e48:	02470713          	addi	a4,a4,36
 e4c:	40e607b3          	sub	a5,a2,a4
 e50:	fed72e23          	sw	a3,-4(a4)
 e54:	02458593          	addi	a1,a1,36
 e58:	faf2c6e3          	blt	t0,a5,e04 <memcpy+0x98>
 e5c:	f49ff06f          	j	da4 <memcpy+0x38>
 e60:	0005c683          	lbu	a3,0(a1)
 e64:	00170713          	addi	a4,a4,1
 e68:	00377793          	andi	a5,a4,3
 e6c:	fed70fa3          	sb	a3,-1(a4)
 e70:	00158593          	addi	a1,a1,1
 e74:	f0078ee3          	beqz	a5,d90 <memcpy+0x24>
 e78:	0005c683          	lbu	a3,0(a1)
 e7c:	00170713          	addi	a4,a4,1
 e80:	00377793          	andi	a5,a4,3
 e84:	fed70fa3          	sb	a3,-1(a4)
 e88:	00158593          	addi	a1,a1,1
 e8c:	fc079ae3          	bnez	a5,e60 <memcpy+0xf4>
 e90:	f01ff06f          	j	d90 <memcpy+0x24>
