
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
  c8:	8f418613          	addi	a2,gp,-1804 # 800000f4 <__BSS_END__>

000000cc <__crt0_clear_bss_loop>:
  cc:	00c5d863          	bge	a1,a2,dc <__crt0_clear_bss_loop_end>
  d0:	00058023          	sb	zero,0(a1)
  d4:	00158593          	addi	a1,a1,1
  d8:	ff5ff06f          	j	cc <__crt0_clear_bss_loop>

000000dc <__crt0_clear_bss_loop_end>:
  dc:	00001597          	auipc	a1,0x1
  e0:	05858593          	addi	a1,a1,88 # 1134 <__crt0_copy_data_src_begin>
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
 188:	00812423          	sw	s0,8(sp)
 18c:	315000ef          	jal	ra,ca0 <neorv32_rte_setup>
 190:	00005537          	lui	a0,0x5
 194:	00000613          	li	a2,0
 198:	00000593          	li	a1,0
 19c:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x39cc>
 1a0:	31c000ef          	jal	ra,4bc <neorv32_uart0_setup>
 1a4:	108000ef          	jal	ra,2ac <neorv32_xirq_available>
 1a8:	02051263          	bnez	a0,1cc <main+0x4c>
 1ac:	00001537          	lui	a0,0x1
 1b0:	dd050513          	addi	a0,a0,-560 # dd0 <__etext+0x24>
 1b4:	424000ef          	jal	ra,5d8 <neorv32_uart0_printf>
 1b8:	00c12083          	lw	ra,12(sp)
 1bc:	00812403          	lw	s0,8(sp)
 1c0:	00100513          	li	a0,1
 1c4:	01010113          	addi	sp,sp,16
 1c8:	00008067          	ret
 1cc:	00001537          	lui	a0,0x1
 1d0:	de850513          	addi	a0,a0,-536 # de8 <__etext+0x3c>
 1d4:	404000ef          	jal	ra,5d8 <neorv32_uart0_printf>
 1d8:	0e4000ef          	jal	ra,2bc <neorv32_xirq_setup>
 1dc:	00050863          	beqz	a0,1ec <main+0x6c>
 1e0:	00001537          	lui	a0,0x1
 1e4:	e1c50513          	addi	a0,a0,-484 # e1c <__etext+0x70>
 1e8:	fcdff06f          	j	1b4 <main+0x34>
 1ec:	23000593          	li	a1,560
 1f0:	104000ef          	jal	ra,2f4 <neorv32_xirq_install>
 1f4:	00050413          	mv	s0,a0
 1f8:	24400593          	li	a1,580
 1fc:	00100513          	li	a0,1
 200:	0f4000ef          	jal	ra,2f4 <neorv32_xirq_install>
 204:	00a40433          	add	s0,s0,a0
 208:	00040863          	beqz	s0,218 <main+0x98>
 20c:	00001537          	lui	a0,0x1
 210:	e3850513          	addi	a0,a0,-456 # e38 <__etext+0x8c>
 214:	fa1ff06f          	j	1b4 <main+0x34>
 218:	0d4000ef          	jal	ra,2ec <neorv32_xirq_global_enable>
 21c:	30046073          	csrsi	mstatus,8
 220:	00001437          	lui	s0,0x1
 224:	e5440513          	addi	a0,s0,-428 # e54 <__etext+0xa8>
 228:	3b0000ef          	jal	ra,5d8 <neorv32_uart0_printf>
 22c:	ff9ff06f          	j	224 <main+0xa4>

00000230 <xirq_handler_ch0>:
 230:	f8402603          	lw	a2,-124(zero) # ffffff84 <__ctr0_io_space_begin+0x184>
 234:	00001537          	lui	a0,0x1
 238:	00000593          	li	a1,0
 23c:	dac50513          	addi	a0,a0,-596 # dac <__etext>
 240:	3980006f          	j	5d8 <neorv32_uart0_printf>

00000244 <xirq_handler_ch1>:
 244:	f8402603          	lw	a2,-124(zero) # ffffff84 <__ctr0_io_space_begin+0x184>
 248:	00001537          	lui	a0,0x1
 24c:	00100593          	li	a1,1
 250:	dac50513          	addi	a0,a0,-596 # dac <__etext>
 254:	3840006f          	j	5d8 <neorv32_uart0_printf>
 258:	0000                	unimp
 25a:	0000                	unimp
 25c:	0000                	unimp
 25e:	0000                	unimp

00000260 <__neorv32_xirq_core>:
 260:	f8000693          	li	a3,-128
 264:	0086a783          	lw	a5,8(a3)
 268:	00100713          	li	a4,1
 26c:	00f71733          	sll	a4,a4,a5
 270:	fff74713          	not	a4,a4
 274:	00e6a223          	sw	a4,4(a3)
 278:	ff000737          	lui	a4,0xff000
 27c:	fff70713          	addi	a4,a4,-1 # feffffff <__ctr0_io_space_begin+0xff0001ff>
 280:	34471073          	csrw	mip,a4
 284:	00279713          	slli	a4,a5,0x2
 288:	800007b7          	lui	a5,0x80000
 28c:	00078793          	mv	a5,a5
 290:	0006a423          	sw	zero,8(a3)
 294:	00e787b3          	add	a5,a5,a4
 298:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 29c:	00078067          	jr	a5
 2a0:	0000                	unimp
 2a2:	0000                	unimp

000002a4 <__neorv32_xirq_dummy_handler>:
 2a4:	00000013          	nop
 2a8:	00008067          	ret

000002ac <neorv32_xirq_available>:
 2ac:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 2b0:	01c55513          	srli	a0,a0,0x1c
 2b4:	00157513          	andi	a0,a0,1
 2b8:	00008067          	ret

000002bc <neorv32_xirq_setup>:
 2bc:	800007b7          	lui	a5,0x80000
 2c0:	f8002023          	sw	zero,-128(zero) # ffffff80 <__ctr0_io_space_begin+0x180>
 2c4:	00078793          	mv	a5,a5
 2c8:	f8002223          	sw	zero,-124(zero) # ffffff84 <__ctr0_io_space_begin+0x184>
 2cc:	08078693          	addi	a3,a5,128 # 80000080 <__ctr0_io_space_begin+0x80000280>
 2d0:	2a400713          	li	a4,676
 2d4:	00e7a023          	sw	a4,0(a5)
 2d8:	00478793          	addi	a5,a5,4
 2dc:	fed79ce3          	bne	a5,a3,2d4 <neorv32_xirq_setup+0x18>
 2e0:	26000593          	li	a1,608
 2e4:	01500513          	li	a0,21
 2e8:	1610006f          	j	c48 <neorv32_rte_exception_install>

000002ec <neorv32_xirq_global_enable>:
 2ec:	01800513          	li	a0,24
 2f0:	4a80006f          	j	798 <neorv32_cpu_irq_enable>

000002f4 <neorv32_xirq_install>:
 2f4:	01f00793          	li	a5,31
 2f8:	02a7ee63          	bltu	a5,a0,334 <neorv32_xirq_install+0x40>
 2fc:	800007b7          	lui	a5,0x80000
 300:	00251713          	slli	a4,a0,0x2
 304:	00078793          	mv	a5,a5
 308:	00e787b3          	add	a5,a5,a4
 30c:	00b7a023          	sw	a1,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 310:	00100793          	li	a5,1
 314:	00a79533          	sll	a0,a5,a0
 318:	fff54793          	not	a5,a0
 31c:	f8f02223          	sw	a5,-124(zero) # ffffff84 <__ctr0_io_space_begin+0x184>
 320:	f8002783          	lw	a5,-128(zero) # ffffff80 <__ctr0_io_space_begin+0x180>
 324:	00a7e533          	or	a0,a5,a0
 328:	f8a02023          	sw	a0,-128(zero) # ffffff80 <__ctr0_io_space_begin+0x180>
 32c:	00000513          	li	a0,0
 330:	00008067          	ret
 334:	00100513          	li	a0,1
 338:	00008067          	ret

0000033c <__neorv32_uart_itoa>:
 33c:	fd010113          	addi	sp,sp,-48
 340:	02812423          	sw	s0,40(sp)
 344:	02912223          	sw	s1,36(sp)
 348:	03212023          	sw	s2,32(sp)
 34c:	01312e23          	sw	s3,28(sp)
 350:	01412c23          	sw	s4,24(sp)
 354:	02112623          	sw	ra,44(sp)
 358:	01512a23          	sw	s5,20(sp)
 35c:	00001a37          	lui	s4,0x1
 360:	00050493          	mv	s1,a0
 364:	00058413          	mv	s0,a1
 368:	00058523          	sb	zero,10(a1)
 36c:	00000993          	li	s3,0
 370:	00410913          	addi	s2,sp,4
 374:	e68a0a13          	addi	s4,s4,-408 # e68 <numbers.1>
 378:	00a00593          	li	a1,10
 37c:	00048513          	mv	a0,s1
 380:	1c9000ef          	jal	ra,d48 <__umodsi3>
 384:	00aa0533          	add	a0,s4,a0
 388:	00054783          	lbu	a5,0(a0)
 38c:	01390ab3          	add	s5,s2,s3
 390:	00048513          	mv	a0,s1
 394:	00fa8023          	sb	a5,0(s5)
 398:	00a00593          	li	a1,10
 39c:	165000ef          	jal	ra,d00 <__udivsi3>
 3a0:	00198993          	addi	s3,s3,1
 3a4:	00a00793          	li	a5,10
 3a8:	00050493          	mv	s1,a0
 3ac:	fcf996e3          	bne	s3,a5,378 <__neorv32_uart_itoa+0x3c>
 3b0:	00090693          	mv	a3,s2
 3b4:	00900713          	li	a4,9
 3b8:	03000613          	li	a2,48
 3bc:	0096c583          	lbu	a1,9(a3)
 3c0:	00070793          	mv	a5,a4
 3c4:	fff70713          	addi	a4,a4,-1
 3c8:	01071713          	slli	a4,a4,0x10
 3cc:	01075713          	srli	a4,a4,0x10
 3d0:	00c59a63          	bne	a1,a2,3e4 <__neorv32_uart_itoa+0xa8>
 3d4:	000684a3          	sb	zero,9(a3)
 3d8:	fff68693          	addi	a3,a3,-1
 3dc:	fe0710e3          	bnez	a4,3bc <__neorv32_uart_itoa+0x80>
 3e0:	00000793          	li	a5,0
 3e4:	00f907b3          	add	a5,s2,a5
 3e8:	00000593          	li	a1,0
 3ec:	0007c703          	lbu	a4,0(a5)
 3f0:	00070c63          	beqz	a4,408 <__neorv32_uart_itoa+0xcc>
 3f4:	00158693          	addi	a3,a1,1
 3f8:	00b405b3          	add	a1,s0,a1
 3fc:	00e58023          	sb	a4,0(a1)
 400:	01069593          	slli	a1,a3,0x10
 404:	0105d593          	srli	a1,a1,0x10
 408:	fff78713          	addi	a4,a5,-1
 40c:	02f91863          	bne	s2,a5,43c <__neorv32_uart_itoa+0x100>
 410:	00b40433          	add	s0,s0,a1
 414:	00040023          	sb	zero,0(s0)
 418:	02c12083          	lw	ra,44(sp)
 41c:	02812403          	lw	s0,40(sp)
 420:	02412483          	lw	s1,36(sp)
 424:	02012903          	lw	s2,32(sp)
 428:	01c12983          	lw	s3,28(sp)
 42c:	01812a03          	lw	s4,24(sp)
 430:	01412a83          	lw	s5,20(sp)
 434:	03010113          	addi	sp,sp,48
 438:	00008067          	ret
 43c:	00070793          	mv	a5,a4
 440:	fadff06f          	j	3ec <__neorv32_uart_itoa+0xb0>

00000444 <__neorv32_uart_tohex>:
 444:	00001637          	lui	a2,0x1
 448:	00758693          	addi	a3,a1,7
 44c:	00000713          	li	a4,0
 450:	e7460613          	addi	a2,a2,-396 # e74 <symbols.0>
 454:	02000813          	li	a6,32
 458:	00e557b3          	srl	a5,a0,a4
 45c:	00f7f793          	andi	a5,a5,15
 460:	00f607b3          	add	a5,a2,a5
 464:	0007c783          	lbu	a5,0(a5)
 468:	00470713          	addi	a4,a4,4
 46c:	fff68693          	addi	a3,a3,-1
 470:	00f680a3          	sb	a5,1(a3)
 474:	ff0712e3          	bne	a4,a6,458 <__neorv32_uart_tohex+0x14>
 478:	00058423          	sb	zero,8(a1)
 47c:	00008067          	ret

00000480 <__neorv32_uart_touppercase.constprop.0>:
 480:	00b50693          	addi	a3,a0,11
 484:	01900613          	li	a2,25
 488:	00054783          	lbu	a5,0(a0)
 48c:	f9f78713          	addi	a4,a5,-97
 490:	0ff77713          	andi	a4,a4,255
 494:	00e66663          	bltu	a2,a4,4a0 <__neorv32_uart_touppercase.constprop.0+0x20>
 498:	fe078793          	addi	a5,a5,-32
 49c:	00f50023          	sb	a5,0(a0)
 4a0:	00150513          	addi	a0,a0,1
 4a4:	fed512e3          	bne	a0,a3,488 <__neorv32_uart_touppercase.constprop.0+0x8>
 4a8:	00008067          	ret

000004ac <neorv32_uart0_available>:
 4ac:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 4b0:	01255513          	srli	a0,a0,0x12
 4b4:	00157513          	andi	a0,a0,1
 4b8:	00008067          	ret

000004bc <neorv32_uart0_setup>:
 4bc:	ff010113          	addi	sp,sp,-16
 4c0:	00812423          	sw	s0,8(sp)
 4c4:	00912223          	sw	s1,4(sp)
 4c8:	00112623          	sw	ra,12(sp)
 4cc:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 4d0:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 4d4:	00058413          	mv	s0,a1
 4d8:	00151593          	slli	a1,a0,0x1
 4dc:	00078513          	mv	a0,a5
 4e0:	00060493          	mv	s1,a2
 4e4:	01d000ef          	jal	ra,d00 <__udivsi3>
 4e8:	01051513          	slli	a0,a0,0x10
 4ec:	000017b7          	lui	a5,0x1
 4f0:	01055513          	srli	a0,a0,0x10
 4f4:	00000713          	li	a4,0
 4f8:	ffe78793          	addi	a5,a5,-2 # ffe <symbols.0+0x18a>
 4fc:	04a7e463          	bltu	a5,a0,544 <neorv32_uart0_setup+0x88>
 500:	0034f793          	andi	a5,s1,3
 504:	00347413          	andi	s0,s0,3
 508:	fff50513          	addi	a0,a0,-1
 50c:	01479793          	slli	a5,a5,0x14
 510:	01641413          	slli	s0,s0,0x16
 514:	00f567b3          	or	a5,a0,a5
 518:	0087e7b3          	or	a5,a5,s0
 51c:	01871713          	slli	a4,a4,0x18
 520:	00c12083          	lw	ra,12(sp)
 524:	00812403          	lw	s0,8(sp)
 528:	00e7e7b3          	or	a5,a5,a4
 52c:	10000737          	lui	a4,0x10000
 530:	00e7e7b3          	or	a5,a5,a4
 534:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 538:	00412483          	lw	s1,4(sp)
 53c:	01010113          	addi	sp,sp,16
 540:	00008067          	ret
 544:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffeeca>
 548:	0fd6f693          	andi	a3,a3,253
 54c:	00069a63          	bnez	a3,560 <neorv32_uart0_setup+0xa4>
 550:	00355513          	srli	a0,a0,0x3
 554:	00170713          	addi	a4,a4,1
 558:	0ff77713          	andi	a4,a4,255
 55c:	fa1ff06f          	j	4fc <neorv32_uart0_setup+0x40>
 560:	00155513          	srli	a0,a0,0x1
 564:	ff1ff06f          	j	554 <neorv32_uart0_setup+0x98>

00000568 <neorv32_uart0_putc>:
 568:	00040737          	lui	a4,0x40
 56c:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 570:	00e7f7b3          	and	a5,a5,a4
 574:	fe079ce3          	bnez	a5,56c <neorv32_uart0_putc+0x4>
 578:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 57c:	00008067          	ret

00000580 <neorv32_uart0_print>:
 580:	ff010113          	addi	sp,sp,-16
 584:	00812423          	sw	s0,8(sp)
 588:	01212023          	sw	s2,0(sp)
 58c:	00112623          	sw	ra,12(sp)
 590:	00912223          	sw	s1,4(sp)
 594:	00050413          	mv	s0,a0
 598:	00a00913          	li	s2,10
 59c:	00044483          	lbu	s1,0(s0)
 5a0:	00140413          	addi	s0,s0,1
 5a4:	00049e63          	bnez	s1,5c0 <neorv32_uart0_print+0x40>
 5a8:	00c12083          	lw	ra,12(sp)
 5ac:	00812403          	lw	s0,8(sp)
 5b0:	00412483          	lw	s1,4(sp)
 5b4:	00012903          	lw	s2,0(sp)
 5b8:	01010113          	addi	sp,sp,16
 5bc:	00008067          	ret
 5c0:	01249663          	bne	s1,s2,5cc <neorv32_uart0_print+0x4c>
 5c4:	00d00513          	li	a0,13
 5c8:	fa1ff0ef          	jal	ra,568 <neorv32_uart0_putc>
 5cc:	00048513          	mv	a0,s1
 5d0:	f99ff0ef          	jal	ra,568 <neorv32_uart0_putc>
 5d4:	fc9ff06f          	j	59c <neorv32_uart0_print+0x1c>

000005d8 <neorv32_uart0_printf>:
 5d8:	fa010113          	addi	sp,sp,-96
 5dc:	04f12a23          	sw	a5,84(sp)
 5e0:	04410793          	addi	a5,sp,68
 5e4:	02812c23          	sw	s0,56(sp)
 5e8:	03212823          	sw	s2,48(sp)
 5ec:	03312623          	sw	s3,44(sp)
 5f0:	03512223          	sw	s5,36(sp)
 5f4:	03612023          	sw	s6,32(sp)
 5f8:	01712e23          	sw	s7,28(sp)
 5fc:	01812c23          	sw	s8,24(sp)
 600:	01912a23          	sw	s9,20(sp)
 604:	02112e23          	sw	ra,60(sp)
 608:	02912a23          	sw	s1,52(sp)
 60c:	03412423          	sw	s4,40(sp)
 610:	00050413          	mv	s0,a0
 614:	04b12223          	sw	a1,68(sp)
 618:	04c12423          	sw	a2,72(sp)
 61c:	04d12623          	sw	a3,76(sp)
 620:	04e12823          	sw	a4,80(sp)
 624:	05012c23          	sw	a6,88(sp)
 628:	05112e23          	sw	a7,92(sp)
 62c:	00f12023          	sw	a5,0(sp)
 630:	02500a93          	li	s5,37
 634:	00a00b13          	li	s6,10
 638:	07000913          	li	s2,112
 63c:	05800993          	li	s3,88
 640:	07500b93          	li	s7,117
 644:	07800c13          	li	s8,120
 648:	07300c93          	li	s9,115
 64c:	00044483          	lbu	s1,0(s0)
 650:	02049c63          	bnez	s1,688 <neorv32_uart0_printf+0xb0>
 654:	03c12083          	lw	ra,60(sp)
 658:	03812403          	lw	s0,56(sp)
 65c:	03412483          	lw	s1,52(sp)
 660:	03012903          	lw	s2,48(sp)
 664:	02c12983          	lw	s3,44(sp)
 668:	02812a03          	lw	s4,40(sp)
 66c:	02412a83          	lw	s5,36(sp)
 670:	02012b03          	lw	s6,32(sp)
 674:	01c12b83          	lw	s7,28(sp)
 678:	01812c03          	lw	s8,24(sp)
 67c:	01412c83          	lw	s9,20(sp)
 680:	06010113          	addi	sp,sp,96
 684:	00008067          	ret
 688:	0f549c63          	bne	s1,s5,780 <neorv32_uart0_printf+0x1a8>
 68c:	00240a13          	addi	s4,s0,2
 690:	00144403          	lbu	s0,1(s0)
 694:	0d240263          	beq	s0,s2,758 <neorv32_uart0_printf+0x180>
 698:	06896463          	bltu	s2,s0,700 <neorv32_uart0_printf+0x128>
 69c:	06300793          	li	a5,99
 6a0:	08f40463          	beq	s0,a5,728 <neorv32_uart0_printf+0x150>
 6a4:	0087ec63          	bltu	a5,s0,6bc <neorv32_uart0_printf+0xe4>
 6a8:	0b340863          	beq	s0,s3,758 <neorv32_uart0_printf+0x180>
 6ac:	02500513          	li	a0,37
 6b0:	eb9ff0ef          	jal	ra,568 <neorv32_uart0_putc>
 6b4:	00040513          	mv	a0,s0
 6b8:	0800006f          	j	738 <neorv32_uart0_printf+0x160>
 6bc:	06400793          	li	a5,100
 6c0:	00f40663          	beq	s0,a5,6cc <neorv32_uart0_printf+0xf4>
 6c4:	06900793          	li	a5,105
 6c8:	fef412e3          	bne	s0,a5,6ac <neorv32_uart0_printf+0xd4>
 6cc:	00012783          	lw	a5,0(sp)
 6d0:	0007a403          	lw	s0,0(a5)
 6d4:	00478713          	addi	a4,a5,4
 6d8:	00e12023          	sw	a4,0(sp)
 6dc:	00045863          	bgez	s0,6ec <neorv32_uart0_printf+0x114>
 6e0:	02d00513          	li	a0,45
 6e4:	40800433          	neg	s0,s0
 6e8:	e81ff0ef          	jal	ra,568 <neorv32_uart0_putc>
 6ec:	00410593          	addi	a1,sp,4
 6f0:	00040513          	mv	a0,s0
 6f4:	c49ff0ef          	jal	ra,33c <__neorv32_uart_itoa>
 6f8:	00410513          	addi	a0,sp,4
 6fc:	0200006f          	j	71c <neorv32_uart0_printf+0x144>
 700:	05740063          	beq	s0,s7,740 <neorv32_uart0_printf+0x168>
 704:	05840a63          	beq	s0,s8,758 <neorv32_uart0_printf+0x180>
 708:	fb9412e3          	bne	s0,s9,6ac <neorv32_uart0_printf+0xd4>
 70c:	00012783          	lw	a5,0(sp)
 710:	0007a503          	lw	a0,0(a5)
 714:	00478713          	addi	a4,a5,4
 718:	00e12023          	sw	a4,0(sp)
 71c:	e65ff0ef          	jal	ra,580 <neorv32_uart0_print>
 720:	000a0413          	mv	s0,s4
 724:	f29ff06f          	j	64c <neorv32_uart0_printf+0x74>
 728:	00012783          	lw	a5,0(sp)
 72c:	0007c503          	lbu	a0,0(a5)
 730:	00478713          	addi	a4,a5,4
 734:	00e12023          	sw	a4,0(sp)
 738:	e31ff0ef          	jal	ra,568 <neorv32_uart0_putc>
 73c:	fe5ff06f          	j	720 <neorv32_uart0_printf+0x148>
 740:	00012783          	lw	a5,0(sp)
 744:	00410593          	addi	a1,sp,4
 748:	00478713          	addi	a4,a5,4
 74c:	0007a503          	lw	a0,0(a5)
 750:	00e12023          	sw	a4,0(sp)
 754:	fa1ff06f          	j	6f4 <neorv32_uart0_printf+0x11c>
 758:	00012783          	lw	a5,0(sp)
 75c:	00410593          	addi	a1,sp,4
 760:	0007a503          	lw	a0,0(a5)
 764:	00478713          	addi	a4,a5,4
 768:	00e12023          	sw	a4,0(sp)
 76c:	cd9ff0ef          	jal	ra,444 <__neorv32_uart_tohex>
 770:	f93414e3          	bne	s0,s3,6f8 <neorv32_uart0_printf+0x120>
 774:	00410513          	addi	a0,sp,4
 778:	d09ff0ef          	jal	ra,480 <__neorv32_uart_touppercase.constprop.0>
 77c:	f7dff06f          	j	6f8 <neorv32_uart0_printf+0x120>
 780:	01649663          	bne	s1,s6,78c <neorv32_uart0_printf+0x1b4>
 784:	00d00513          	li	a0,13
 788:	de1ff0ef          	jal	ra,568 <neorv32_uart0_putc>
 78c:	00140a13          	addi	s4,s0,1
 790:	00048513          	mv	a0,s1
 794:	fa5ff06f          	j	738 <neorv32_uart0_printf+0x160>

00000798 <neorv32_cpu_irq_enable>:
 798:	01f00793          	li	a5,31
 79c:	00050713          	mv	a4,a0
 7a0:	02a7e663          	bltu	a5,a0,7cc <neorv32_cpu_irq_enable+0x34>
 7a4:	ffff17b7          	lui	a5,0xffff1
 7a8:	88878793          	addi	a5,a5,-1912 # ffff0888 <__ctr0_io_space_begin+0xffff0a88>
 7ac:	00a7d7b3          	srl	a5,a5,a0
 7b0:	0017f793          	andi	a5,a5,1
 7b4:	00100513          	li	a0,1
 7b8:	00078c63          	beqz	a5,7d0 <neorv32_cpu_irq_enable+0x38>
 7bc:	00e51533          	sll	a0,a0,a4
 7c0:	30452073          	csrs	mie,a0
 7c4:	00000513          	li	a0,0
 7c8:	00008067          	ret
 7cc:	00100513          	li	a0,1
 7d0:	00008067          	ret

000007d4 <__neorv32_rte_core>:
 7d4:	fc010113          	addi	sp,sp,-64
 7d8:	02112e23          	sw	ra,60(sp)
 7dc:	02512c23          	sw	t0,56(sp)
 7e0:	02612a23          	sw	t1,52(sp)
 7e4:	02712823          	sw	t2,48(sp)
 7e8:	02a12623          	sw	a0,44(sp)
 7ec:	02b12423          	sw	a1,40(sp)
 7f0:	02c12223          	sw	a2,36(sp)
 7f4:	02d12023          	sw	a3,32(sp)
 7f8:	00e12e23          	sw	a4,28(sp)
 7fc:	00f12c23          	sw	a5,24(sp)
 800:	01012a23          	sw	a6,20(sp)
 804:	01112823          	sw	a7,16(sp)
 808:	01c12623          	sw	t3,12(sp)
 80c:	01d12423          	sw	t4,8(sp)
 810:	01e12223          	sw	t5,4(sp)
 814:	01f12023          	sw	t6,0(sp)
 818:	341026f3          	csrr	a3,mepc
 81c:	34069073          	csrw	mscratch,a3
 820:	342027f3          	csrr	a5,mcause
 824:	0607c063          	bltz	a5,884 <__neorv32_rte_core+0xb0>
 828:	0006d703          	lhu	a4,0(a3)
 82c:	01071713          	slli	a4,a4,0x10
 830:	01075713          	srli	a4,a4,0x10
 834:	00468593          	addi	a1,a3,4
 838:	30102673          	csrr	a2,misa
 83c:	00467613          	andi	a2,a2,4
 840:	00060a63          	beqz	a2,854 <__neorv32_rte_core+0x80>
 844:	00377713          	andi	a4,a4,3
 848:	00300613          	li	a2,3
 84c:	00c70463          	beq	a4,a2,854 <__neorv32_rte_core+0x80>
 850:	00268593          	addi	a1,a3,2
 854:	34159073          	csrw	mepc,a1
 858:	00b00713          	li	a4,11
 85c:	00f77863          	bgeu	a4,a5,86c <__neorv32_rte_core+0x98>
 860:	000017b7          	lui	a5,0x1
 864:	a5078793          	addi	a5,a5,-1456 # a50 <__neorv32_rte_debug_exc_handler>
 868:	04c0006f          	j	8b4 <__neorv32_rte_core+0xe0>
 86c:	00001737          	lui	a4,0x1
 870:	00279793          	slli	a5,a5,0x2
 874:	e8870713          	addi	a4,a4,-376 # e88 <symbols.0+0x14>
 878:	00e787b3          	add	a5,a5,a4
 87c:	0007a783          	lw	a5,0(a5)
 880:	00078067          	jr	a5
 884:	80000737          	lui	a4,0x80000
 888:	ffd74713          	xori	a4,a4,-3
 88c:	00e787b3          	add	a5,a5,a4
 890:	01c00713          	li	a4,28
 894:	fcf766e3          	bltu	a4,a5,860 <__neorv32_rte_core+0x8c>
 898:	00001737          	lui	a4,0x1
 89c:	00279793          	slli	a5,a5,0x2
 8a0:	eb870713          	addi	a4,a4,-328 # eb8 <symbols.0+0x44>
 8a4:	00e787b3          	add	a5,a5,a4
 8a8:	0007a783          	lw	a5,0(a5)
 8ac:	00078067          	jr	a5
 8b0:	8801a783          	lw	a5,-1920(gp) # 80000080 <__neorv32_rte_vector_lut>
 8b4:	000780e7          	jalr	a5
 8b8:	03c12083          	lw	ra,60(sp)
 8bc:	03812283          	lw	t0,56(sp)
 8c0:	03412303          	lw	t1,52(sp)
 8c4:	03012383          	lw	t2,48(sp)
 8c8:	02c12503          	lw	a0,44(sp)
 8cc:	02812583          	lw	a1,40(sp)
 8d0:	02412603          	lw	a2,36(sp)
 8d4:	02012683          	lw	a3,32(sp)
 8d8:	01c12703          	lw	a4,28(sp)
 8dc:	01812783          	lw	a5,24(sp)
 8e0:	01412803          	lw	a6,20(sp)
 8e4:	01012883          	lw	a7,16(sp)
 8e8:	00c12e03          	lw	t3,12(sp)
 8ec:	00812e83          	lw	t4,8(sp)
 8f0:	00412f03          	lw	t5,4(sp)
 8f4:	00012f83          	lw	t6,0(sp)
 8f8:	04010113          	addi	sp,sp,64
 8fc:	30200073          	mret
 900:	8841a783          	lw	a5,-1916(gp) # 80000084 <__neorv32_rte_vector_lut+0x4>
 904:	fb1ff06f          	j	8b4 <__neorv32_rte_core+0xe0>
 908:	8881a783          	lw	a5,-1912(gp) # 80000088 <__neorv32_rte_vector_lut+0x8>
 90c:	fa9ff06f          	j	8b4 <__neorv32_rte_core+0xe0>
 910:	88c1a783          	lw	a5,-1908(gp) # 8000008c <__neorv32_rte_vector_lut+0xc>
 914:	fa1ff06f          	j	8b4 <__neorv32_rte_core+0xe0>
 918:	8901a783          	lw	a5,-1904(gp) # 80000090 <__neorv32_rte_vector_lut+0x10>
 91c:	f99ff06f          	j	8b4 <__neorv32_rte_core+0xe0>
 920:	8941a783          	lw	a5,-1900(gp) # 80000094 <__neorv32_rte_vector_lut+0x14>
 924:	f91ff06f          	j	8b4 <__neorv32_rte_core+0xe0>
 928:	8981a783          	lw	a5,-1896(gp) # 80000098 <__neorv32_rte_vector_lut+0x18>
 92c:	f89ff06f          	j	8b4 <__neorv32_rte_core+0xe0>
 930:	89c1a783          	lw	a5,-1892(gp) # 8000009c <__neorv32_rte_vector_lut+0x1c>
 934:	f81ff06f          	j	8b4 <__neorv32_rte_core+0xe0>
 938:	8a01a783          	lw	a5,-1888(gp) # 800000a0 <__neorv32_rte_vector_lut+0x20>
 93c:	f79ff06f          	j	8b4 <__neorv32_rte_core+0xe0>
 940:	8a41a783          	lw	a5,-1884(gp) # 800000a4 <__neorv32_rte_vector_lut+0x24>
 944:	f71ff06f          	j	8b4 <__neorv32_rte_core+0xe0>
 948:	8a81a783          	lw	a5,-1880(gp) # 800000a8 <__neorv32_rte_vector_lut+0x28>
 94c:	f69ff06f          	j	8b4 <__neorv32_rte_core+0xe0>
 950:	8ac1a783          	lw	a5,-1876(gp) # 800000ac <__neorv32_rte_vector_lut+0x2c>
 954:	f61ff06f          	j	8b4 <__neorv32_rte_core+0xe0>
 958:	8b01a783          	lw	a5,-1872(gp) # 800000b0 <__neorv32_rte_vector_lut+0x30>
 95c:	f59ff06f          	j	8b4 <__neorv32_rte_core+0xe0>
 960:	8b41a783          	lw	a5,-1868(gp) # 800000b4 <__neorv32_rte_vector_lut+0x34>
 964:	f51ff06f          	j	8b4 <__neorv32_rte_core+0xe0>
 968:	8b81a783          	lw	a5,-1864(gp) # 800000b8 <__neorv32_rte_vector_lut+0x38>
 96c:	f49ff06f          	j	8b4 <__neorv32_rte_core+0xe0>
 970:	8bc1a783          	lw	a5,-1860(gp) # 800000bc <__neorv32_rte_vector_lut+0x3c>
 974:	f41ff06f          	j	8b4 <__neorv32_rte_core+0xe0>
 978:	8c01a783          	lw	a5,-1856(gp) # 800000c0 <__neorv32_rte_vector_lut+0x40>
 97c:	f39ff06f          	j	8b4 <__neorv32_rte_core+0xe0>
 980:	8c41a783          	lw	a5,-1852(gp) # 800000c4 <__neorv32_rte_vector_lut+0x44>
 984:	f31ff06f          	j	8b4 <__neorv32_rte_core+0xe0>
 988:	8c81a783          	lw	a5,-1848(gp) # 800000c8 <__neorv32_rte_vector_lut+0x48>
 98c:	f29ff06f          	j	8b4 <__neorv32_rte_core+0xe0>
 990:	8cc1a783          	lw	a5,-1844(gp) # 800000cc <__neorv32_rte_vector_lut+0x4c>
 994:	f21ff06f          	j	8b4 <__neorv32_rte_core+0xe0>
 998:	8d01a783          	lw	a5,-1840(gp) # 800000d0 <__neorv32_rte_vector_lut+0x50>
 99c:	f19ff06f          	j	8b4 <__neorv32_rte_core+0xe0>
 9a0:	8d41a783          	lw	a5,-1836(gp) # 800000d4 <__neorv32_rte_vector_lut+0x54>
 9a4:	f11ff06f          	j	8b4 <__neorv32_rte_core+0xe0>
 9a8:	8d81a783          	lw	a5,-1832(gp) # 800000d8 <__neorv32_rte_vector_lut+0x58>
 9ac:	f09ff06f          	j	8b4 <__neorv32_rte_core+0xe0>
 9b0:	8dc1a783          	lw	a5,-1828(gp) # 800000dc <__neorv32_rte_vector_lut+0x5c>
 9b4:	f01ff06f          	j	8b4 <__neorv32_rte_core+0xe0>
 9b8:	8e01a783          	lw	a5,-1824(gp) # 800000e0 <__neorv32_rte_vector_lut+0x60>
 9bc:	ef9ff06f          	j	8b4 <__neorv32_rte_core+0xe0>
 9c0:	8e41a783          	lw	a5,-1820(gp) # 800000e4 <__neorv32_rte_vector_lut+0x64>
 9c4:	ef1ff06f          	j	8b4 <__neorv32_rte_core+0xe0>
 9c8:	8e81a783          	lw	a5,-1816(gp) # 800000e8 <__neorv32_rte_vector_lut+0x68>
 9cc:	ee9ff06f          	j	8b4 <__neorv32_rte_core+0xe0>
 9d0:	8ec1a783          	lw	a5,-1812(gp) # 800000ec <__neorv32_rte_vector_lut+0x6c>
 9d4:	ee1ff06f          	j	8b4 <__neorv32_rte_core+0xe0>
 9d8:	8f01a783          	lw	a5,-1808(gp) # 800000f0 <__neorv32_rte_vector_lut+0x70>
 9dc:	ed9ff06f          	j	8b4 <__neorv32_rte_core+0xe0>

000009e0 <__neorv32_rte_print_hex_word>:
 9e0:	fe010113          	addi	sp,sp,-32
 9e4:	01212823          	sw	s2,16(sp)
 9e8:	00050913          	mv	s2,a0
 9ec:	00001537          	lui	a0,0x1
 9f0:	00912a23          	sw	s1,20(sp)
 9f4:	f2c50513          	addi	a0,a0,-212 # f2c <symbols.0+0xb8>
 9f8:	000014b7          	lui	s1,0x1
 9fc:	00812c23          	sw	s0,24(sp)
 a00:	01312623          	sw	s3,12(sp)
 a04:	00112e23          	sw	ra,28(sp)
 a08:	01c00413          	li	s0,28
 a0c:	b75ff0ef          	jal	ra,580 <neorv32_uart0_print>
 a10:	12448493          	addi	s1,s1,292 # 1124 <hex_symbols.0>
 a14:	ffc00993          	li	s3,-4
 a18:	008957b3          	srl	a5,s2,s0
 a1c:	00f7f793          	andi	a5,a5,15
 a20:	00f487b3          	add	a5,s1,a5
 a24:	0007c503          	lbu	a0,0(a5)
 a28:	ffc40413          	addi	s0,s0,-4
 a2c:	b3dff0ef          	jal	ra,568 <neorv32_uart0_putc>
 a30:	ff3414e3          	bne	s0,s3,a18 <__neorv32_rte_print_hex_word+0x38>
 a34:	01c12083          	lw	ra,28(sp)
 a38:	01812403          	lw	s0,24(sp)
 a3c:	01412483          	lw	s1,20(sp)
 a40:	01012903          	lw	s2,16(sp)
 a44:	00c12983          	lw	s3,12(sp)
 a48:	02010113          	addi	sp,sp,32
 a4c:	00008067          	ret

00000a50 <__neorv32_rte_debug_exc_handler>:
 a50:	ff010113          	addi	sp,sp,-16
 a54:	00112623          	sw	ra,12(sp)
 a58:	00812423          	sw	s0,8(sp)
 a5c:	00912223          	sw	s1,4(sp)
 a60:	a4dff0ef          	jal	ra,4ac <neorv32_uart0_available>
 a64:	1c050863          	beqz	a0,c34 <__neorv32_rte_debug_exc_handler+0x1e4>
 a68:	00001537          	lui	a0,0x1
 a6c:	f3050513          	addi	a0,a0,-208 # f30 <symbols.0+0xbc>
 a70:	b11ff0ef          	jal	ra,580 <neorv32_uart0_print>
 a74:	34202473          	csrr	s0,mcause
 a78:	00900713          	li	a4,9
 a7c:	00f47793          	andi	a5,s0,15
 a80:	03078493          	addi	s1,a5,48
 a84:	00f77463          	bgeu	a4,a5,a8c <__neorv32_rte_debug_exc_handler+0x3c>
 a88:	05778493          	addi	s1,a5,87
 a8c:	00b00793          	li	a5,11
 a90:	0087ee63          	bltu	a5,s0,aac <__neorv32_rte_debug_exc_handler+0x5c>
 a94:	00001737          	lui	a4,0x1
 a98:	00241793          	slli	a5,s0,0x2
 a9c:	0f470713          	addi	a4,a4,244 # 10f4 <symbols.0+0x280>
 aa0:	00e787b3          	add	a5,a5,a4
 aa4:	0007a783          	lw	a5,0(a5)
 aa8:	00078067          	jr	a5
 aac:	800007b7          	lui	a5,0x80000
 ab0:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 ab4:	14e40e63          	beq	s0,a4,c10 <__neorv32_rte_debug_exc_handler+0x1c0>
 ab8:	02876a63          	bltu	a4,s0,aec <__neorv32_rte_debug_exc_handler+0x9c>
 abc:	00378713          	addi	a4,a5,3
 ac0:	12e40c63          	beq	s0,a4,bf8 <__neorv32_rte_debug_exc_handler+0x1a8>
 ac4:	00778793          	addi	a5,a5,7
 ac8:	12f40e63          	beq	s0,a5,c04 <__neorv32_rte_debug_exc_handler+0x1b4>
 acc:	00001537          	lui	a0,0x1
 ad0:	09050513          	addi	a0,a0,144 # 1090 <symbols.0+0x21c>
 ad4:	aadff0ef          	jal	ra,580 <neorv32_uart0_print>
 ad8:	00040513          	mv	a0,s0
 adc:	f05ff0ef          	jal	ra,9e0 <__neorv32_rte_print_hex_word>
 ae0:	00100793          	li	a5,1
 ae4:	08f40c63          	beq	s0,a5,b7c <__neorv32_rte_debug_exc_handler+0x12c>
 ae8:	0280006f          	j	b10 <__neorv32_rte_debug_exc_handler+0xc0>
 aec:	ff07c793          	xori	a5,a5,-16
 af0:	00f407b3          	add	a5,s0,a5
 af4:	00f00713          	li	a4,15
 af8:	fcf76ae3          	bltu	a4,a5,acc <__neorv32_rte_debug_exc_handler+0x7c>
 afc:	00001537          	lui	a0,0x1
 b00:	08050513          	addi	a0,a0,128 # 1080 <symbols.0+0x20c>
 b04:	a7dff0ef          	jal	ra,580 <neorv32_uart0_print>
 b08:	00048513          	mv	a0,s1
 b0c:	a5dff0ef          	jal	ra,568 <neorv32_uart0_putc>
 b10:	ffd47413          	andi	s0,s0,-3
 b14:	00500793          	li	a5,5
 b18:	06f40263          	beq	s0,a5,b7c <__neorv32_rte_debug_exc_handler+0x12c>
 b1c:	00001537          	lui	a0,0x1
 b20:	0d450513          	addi	a0,a0,212 # 10d4 <symbols.0+0x260>
 b24:	a5dff0ef          	jal	ra,580 <neorv32_uart0_print>
 b28:	34002573          	csrr	a0,mscratch
 b2c:	eb5ff0ef          	jal	ra,9e0 <__neorv32_rte_print_hex_word>
 b30:	00001537          	lui	a0,0x1
 b34:	0dc50513          	addi	a0,a0,220 # 10dc <symbols.0+0x268>
 b38:	a49ff0ef          	jal	ra,580 <neorv32_uart0_print>
 b3c:	34302573          	csrr	a0,mtval
 b40:	ea1ff0ef          	jal	ra,9e0 <__neorv32_rte_print_hex_word>
 b44:	00812403          	lw	s0,8(sp)
 b48:	00c12083          	lw	ra,12(sp)
 b4c:	00412483          	lw	s1,4(sp)
 b50:	00001537          	lui	a0,0x1
 b54:	0e850513          	addi	a0,a0,232 # 10e8 <symbols.0+0x274>
 b58:	01010113          	addi	sp,sp,16
 b5c:	a25ff06f          	j	580 <neorv32_uart0_print>
 b60:	00001537          	lui	a0,0x1
 b64:	f3850513          	addi	a0,a0,-200 # f38 <symbols.0+0xc4>
 b68:	a19ff0ef          	jal	ra,580 <neorv32_uart0_print>
 b6c:	fb1ff06f          	j	b1c <__neorv32_rte_debug_exc_handler+0xcc>
 b70:	00001537          	lui	a0,0x1
 b74:	f5850513          	addi	a0,a0,-168 # f58 <symbols.0+0xe4>
 b78:	a09ff0ef          	jal	ra,580 <neorv32_uart0_print>
 b7c:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 b80:	0a07d463          	bgez	a5,c28 <__neorv32_rte_debug_exc_handler+0x1d8>
 b84:	0017f793          	andi	a5,a5,1
 b88:	08078a63          	beqz	a5,c1c <__neorv32_rte_debug_exc_handler+0x1cc>
 b8c:	00001537          	lui	a0,0x1
 b90:	0a850513          	addi	a0,a0,168 # 10a8 <symbols.0+0x234>
 b94:	fd5ff06f          	j	b68 <__neorv32_rte_debug_exc_handler+0x118>
 b98:	00001537          	lui	a0,0x1
 b9c:	f7450513          	addi	a0,a0,-140 # f74 <symbols.0+0x100>
 ba0:	fc9ff06f          	j	b68 <__neorv32_rte_debug_exc_handler+0x118>
 ba4:	00001537          	lui	a0,0x1
 ba8:	f8850513          	addi	a0,a0,-120 # f88 <symbols.0+0x114>
 bac:	fbdff06f          	j	b68 <__neorv32_rte_debug_exc_handler+0x118>
 bb0:	00001537          	lui	a0,0x1
 bb4:	f9450513          	addi	a0,a0,-108 # f94 <symbols.0+0x120>
 bb8:	fb1ff06f          	j	b68 <__neorv32_rte_debug_exc_handler+0x118>
 bbc:	00001537          	lui	a0,0x1
 bc0:	fac50513          	addi	a0,a0,-84 # fac <symbols.0+0x138>
 bc4:	fb5ff06f          	j	b78 <__neorv32_rte_debug_exc_handler+0x128>
 bc8:	00001537          	lui	a0,0x1
 bcc:	fc050513          	addi	a0,a0,-64 # fc0 <symbols.0+0x14c>
 bd0:	f99ff06f          	j	b68 <__neorv32_rte_debug_exc_handler+0x118>
 bd4:	00001537          	lui	a0,0x1
 bd8:	fdc50513          	addi	a0,a0,-36 # fdc <symbols.0+0x168>
 bdc:	f9dff06f          	j	b78 <__neorv32_rte_debug_exc_handler+0x128>
 be0:	00001537          	lui	a0,0x1
 be4:	ff050513          	addi	a0,a0,-16 # ff0 <symbols.0+0x17c>
 be8:	f81ff06f          	j	b68 <__neorv32_rte_debug_exc_handler+0x118>
 bec:	00001537          	lui	a0,0x1
 bf0:	01050513          	addi	a0,a0,16 # 1010 <symbols.0+0x19c>
 bf4:	f75ff06f          	j	b68 <__neorv32_rte_debug_exc_handler+0x118>
 bf8:	00001537          	lui	a0,0x1
 bfc:	03050513          	addi	a0,a0,48 # 1030 <symbols.0+0x1bc>
 c00:	f69ff06f          	j	b68 <__neorv32_rte_debug_exc_handler+0x118>
 c04:	00001537          	lui	a0,0x1
 c08:	04c50513          	addi	a0,a0,76 # 104c <symbols.0+0x1d8>
 c0c:	f5dff06f          	j	b68 <__neorv32_rte_debug_exc_handler+0x118>
 c10:	00001537          	lui	a0,0x1
 c14:	06450513          	addi	a0,a0,100 # 1064 <symbols.0+0x1f0>
 c18:	f51ff06f          	j	b68 <__neorv32_rte_debug_exc_handler+0x118>
 c1c:	00001537          	lui	a0,0x1
 c20:	0b850513          	addi	a0,a0,184 # 10b8 <symbols.0+0x244>
 c24:	f45ff06f          	j	b68 <__neorv32_rte_debug_exc_handler+0x118>
 c28:	00001537          	lui	a0,0x1
 c2c:	0c850513          	addi	a0,a0,200 # 10c8 <symbols.0+0x254>
 c30:	f39ff06f          	j	b68 <__neorv32_rte_debug_exc_handler+0x118>
 c34:	00c12083          	lw	ra,12(sp)
 c38:	00812403          	lw	s0,8(sp)
 c3c:	00412483          	lw	s1,4(sp)
 c40:	01010113          	addi	sp,sp,16
 c44:	00008067          	ret

00000c48 <neorv32_rte_exception_install>:
 c48:	01f00793          	li	a5,31
 c4c:	00a7ee63          	bltu	a5,a0,c68 <neorv32_rte_exception_install+0x20>
 c50:	88018793          	addi	a5,gp,-1920 # 80000080 <__neorv32_rte_vector_lut>
 c54:	00251513          	slli	a0,a0,0x2
 c58:	00a78533          	add	a0,a5,a0
 c5c:	00b52023          	sw	a1,0(a0)
 c60:	00000513          	li	a0,0
 c64:	00008067          	ret
 c68:	00100513          	li	a0,1
 c6c:	00008067          	ret

00000c70 <neorv32_rte_exception_uninstall>:
 c70:	01f00793          	li	a5,31
 c74:	02a7e263          	bltu	a5,a0,c98 <neorv32_rte_exception_uninstall+0x28>
 c78:	88018793          	addi	a5,gp,-1920 # 80000080 <__neorv32_rte_vector_lut>
 c7c:	00251513          	slli	a0,a0,0x2
 c80:	00a78533          	add	a0,a5,a0
 c84:	000017b7          	lui	a5,0x1
 c88:	a5078793          	addi	a5,a5,-1456 # a50 <__neorv32_rte_debug_exc_handler>
 c8c:	00f52023          	sw	a5,0(a0)
 c90:	00000513          	li	a0,0
 c94:	00008067          	ret
 c98:	00100513          	li	a0,1
 c9c:	00008067          	ret

00000ca0 <neorv32_rte_setup>:
 ca0:	ff010113          	addi	sp,sp,-16
 ca4:	00112623          	sw	ra,12(sp)
 ca8:	00812423          	sw	s0,8(sp)
 cac:	00912223          	sw	s1,4(sp)
 cb0:	7d400793          	li	a5,2004
 cb4:	30579073          	csrw	mtvec,a5
 cb8:	00000793          	li	a5,0
 cbc:	30479073          	csrw	mie,a5
 cc0:	34479073          	csrw	mip,a5
 cc4:	f6002e23          	sw	zero,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 cc8:	00000413          	li	s0,0
 ccc:	01d00493          	li	s1,29
 cd0:	00040513          	mv	a0,s0
 cd4:	00140413          	addi	s0,s0,1
 cd8:	0ff47413          	andi	s0,s0,255
 cdc:	f95ff0ef          	jal	ra,c70 <neorv32_rte_exception_uninstall>
 ce0:	fe9418e3          	bne	s0,s1,cd0 <neorv32_rte_setup+0x30>
 ce4:	00c12083          	lw	ra,12(sp)
 ce8:	00812403          	lw	s0,8(sp)
 cec:	00412483          	lw	s1,4(sp)
 cf0:	01010113          	addi	sp,sp,16
 cf4:	00008067          	ret

00000cf8 <__divsi3>:
 cf8:	06054063          	bltz	a0,d58 <__umodsi3+0x10>
 cfc:	0605c663          	bltz	a1,d68 <__umodsi3+0x20>

00000d00 <__udivsi3>:
 d00:	00058613          	mv	a2,a1
 d04:	00050593          	mv	a1,a0
 d08:	fff00513          	li	a0,-1
 d0c:	02060c63          	beqz	a2,d44 <__udivsi3+0x44>
 d10:	00100693          	li	a3,1
 d14:	00b67a63          	bgeu	a2,a1,d28 <__udivsi3+0x28>
 d18:	00c05863          	blez	a2,d28 <__udivsi3+0x28>
 d1c:	00161613          	slli	a2,a2,0x1
 d20:	00169693          	slli	a3,a3,0x1
 d24:	feb66ae3          	bltu	a2,a1,d18 <__udivsi3+0x18>
 d28:	00000513          	li	a0,0
 d2c:	00c5e663          	bltu	a1,a2,d38 <__udivsi3+0x38>
 d30:	40c585b3          	sub	a1,a1,a2
 d34:	00d56533          	or	a0,a0,a3
 d38:	0016d693          	srli	a3,a3,0x1
 d3c:	00165613          	srli	a2,a2,0x1
 d40:	fe0696e3          	bnez	a3,d2c <__udivsi3+0x2c>
 d44:	00008067          	ret

00000d48 <__umodsi3>:
 d48:	00008293          	mv	t0,ra
 d4c:	fb5ff0ef          	jal	ra,d00 <__udivsi3>
 d50:	00058513          	mv	a0,a1
 d54:	00028067          	jr	t0
 d58:	40a00533          	neg	a0,a0
 d5c:	00b04863          	bgtz	a1,d6c <__umodsi3+0x24>
 d60:	40b005b3          	neg	a1,a1
 d64:	f9dff06f          	j	d00 <__udivsi3>
 d68:	40b005b3          	neg	a1,a1
 d6c:	00008293          	mv	t0,ra
 d70:	f91ff0ef          	jal	ra,d00 <__udivsi3>
 d74:	40a00533          	neg	a0,a0
 d78:	00028067          	jr	t0

00000d7c <__modsi3>:
 d7c:	00008293          	mv	t0,ra
 d80:	0005ca63          	bltz	a1,d94 <__modsi3+0x18>
 d84:	00054c63          	bltz	a0,d9c <__modsi3+0x20>
 d88:	f79ff0ef          	jal	ra,d00 <__udivsi3>
 d8c:	00058513          	mv	a0,a1
 d90:	00028067          	jr	t0
 d94:	40b005b3          	neg	a1,a1
 d98:	fe0558e3          	bgez	a0,d88 <__modsi3+0xc>
 d9c:	40a00533          	neg	a0,a0
 da0:	f61ff0ef          	jal	ra,d00 <__udivsi3>
 da4:	40b00533          	neg	a0,a1
 da8:	00028067          	jr	t0
