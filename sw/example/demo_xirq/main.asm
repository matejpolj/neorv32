
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
  e0:	fd458593          	addi	a1,a1,-44 # 10b0 <__crt0_copy_data_src_begin>
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
 18c:	2a5000ef          	jal	ra,c30 <neorv32_rte_setup>
 190:	00005537          	lui	a0,0x5
 194:	00000613          	li	a2,0
 198:	00000593          	li	a1,0
 19c:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3a50>
 1a0:	2e0000ef          	jal	ra,480 <neorv32_uart0_setup>
 1a4:	0f8000ef          	jal	ra,29c <neorv32_xirq_available>
 1a8:	02051263          	bnez	a0,1cc <main+0x4c>
 1ac:	00001537          	lui	a0,0x1
 1b0:	d5050513          	addi	a0,a0,-688 # d50 <__etext+0x24>
 1b4:	3e8000ef          	jal	ra,59c <neorv32_uart0_printf>
 1b8:	00c12083          	lw	ra,12(sp)
 1bc:	00812403          	lw	s0,8(sp)
 1c0:	00100513          	li	a0,1
 1c4:	01010113          	addi	sp,sp,16
 1c8:	00008067          	ret
 1cc:	00001537          	lui	a0,0x1
 1d0:	d6850513          	addi	a0,a0,-664 # d68 <__etext+0x3c>
 1d4:	3c8000ef          	jal	ra,59c <neorv32_uart0_printf>
 1d8:	0d4000ef          	jal	ra,2ac <neorv32_xirq_setup>
 1dc:	00050863          	beqz	a0,1ec <main+0x6c>
 1e0:	00001537          	lui	a0,0x1
 1e4:	d9c50513          	addi	a0,a0,-612 # d9c <__etext+0x70>
 1e8:	fcdff06f          	j	1b4 <main+0x34>
 1ec:	23800593          	li	a1,568
 1f0:	0f4000ef          	jal	ra,2e4 <neorv32_xirq_install>
 1f4:	00050413          	mv	s0,a0
 1f8:	24c00593          	li	a1,588
 1fc:	00100513          	li	a0,1
 200:	0e4000ef          	jal	ra,2e4 <neorv32_xirq_install>
 204:	00a40433          	add	s0,s0,a0
 208:	00040863          	beqz	s0,218 <main+0x98>
 20c:	00001537          	lui	a0,0x1
 210:	db850513          	addi	a0,a0,-584 # db8 <__etext+0x8c>
 214:	fa1ff06f          	j	1b4 <main+0x34>
 218:	0c4000ef          	jal	ra,2dc <neorv32_xirq_global_enable>
 21c:	30046073          	csrsi	mstatus,8
 220:	00000013          	nop
 224:	00000013          	nop
 228:	00001437          	lui	s0,0x1
 22c:	dd440513          	addi	a0,s0,-556 # dd4 <__etext+0xa8>
 230:	36c000ef          	jal	ra,59c <neorv32_uart0_printf>
 234:	ff9ff06f          	j	22c <main+0xac>

00000238 <xirq_handler_ch0>:
 238:	f8402603          	lw	a2,-124(zero) # ffffff84 <__ctr0_io_space_begin+0x184>
 23c:	00001537          	lui	a0,0x1
 240:	00000593          	li	a1,0
 244:	d2c50513          	addi	a0,a0,-724 # d2c <__etext>
 248:	3540006f          	j	59c <neorv32_uart0_printf>

0000024c <xirq_handler_ch1>:
 24c:	f8402603          	lw	a2,-124(zero) # ffffff84 <__ctr0_io_space_begin+0x184>
 250:	00001537          	lui	a0,0x1
 254:	00100593          	li	a1,1
 258:	d2c50513          	addi	a0,a0,-724 # d2c <__etext>
 25c:	3400006f          	j	59c <neorv32_uart0_printf>

00000260 <__neorv32_xirq_core>:
 260:	f8000693          	li	a3,-128
 264:	0086a783          	lw	a5,8(a3)
 268:	00100713          	li	a4,1
 26c:	00f71733          	sll	a4,a4,a5
 270:	fff74713          	not	a4,a4
 274:	00e6a223          	sw	a4,4(a3)
 278:	00279713          	slli	a4,a5,0x2
 27c:	800007b7          	lui	a5,0x80000
 280:	00078793          	mv	a5,a5
 284:	0006a423          	sw	zero,8(a3)
 288:	00e787b3          	add	a5,a5,a4
 28c:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 290:	00078067          	jr	a5

00000294 <__neorv32_xirq_dummy_handler>:
 294:	00000013          	nop
 298:	00008067          	ret

0000029c <neorv32_xirq_available>:
 29c:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 2a0:	01c55513          	srli	a0,a0,0x1c
 2a4:	00157513          	andi	a0,a0,1
 2a8:	00008067          	ret

000002ac <neorv32_xirq_setup>:
 2ac:	800007b7          	lui	a5,0x80000
 2b0:	f8002023          	sw	zero,-128(zero) # ffffff80 <__ctr0_io_space_begin+0x180>
 2b4:	00078793          	mv	a5,a5
 2b8:	f8002223          	sw	zero,-124(zero) # ffffff84 <__ctr0_io_space_begin+0x184>
 2bc:	08078693          	addi	a3,a5,128 # 80000080 <__ctr0_io_space_begin+0x80000280>
 2c0:	29400713          	li	a4,660
 2c4:	00e7a023          	sw	a4,0(a5)
 2c8:	00478793          	addi	a5,a5,4
 2cc:	fed79ce3          	bne	a5,a3,2c4 <neorv32_xirq_setup+0x18>
 2d0:	26000593          	li	a1,608
 2d4:	01500513          	li	a0,21
 2d8:	1010006f          	j	bd8 <neorv32_rte_exception_install>

000002dc <neorv32_xirq_global_enable>:
 2dc:	01800513          	li	a0,24
 2e0:	4540006f          	j	734 <neorv32_cpu_irq_enable>

000002e4 <neorv32_xirq_install>:
 2e4:	01f00793          	li	a5,31
 2e8:	02a7ee63          	bltu	a5,a0,324 <neorv32_xirq_install+0x40>
 2ec:	800007b7          	lui	a5,0x80000
 2f0:	00251713          	slli	a4,a0,0x2
 2f4:	00078793          	mv	a5,a5
 2f8:	00e787b3          	add	a5,a5,a4
 2fc:	00b7a023          	sw	a1,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 300:	00100793          	li	a5,1
 304:	00a79533          	sll	a0,a5,a0
 308:	fff54793          	not	a5,a0
 30c:	f8f02223          	sw	a5,-124(zero) # ffffff84 <__ctr0_io_space_begin+0x184>
 310:	f8002783          	lw	a5,-128(zero) # ffffff80 <__ctr0_io_space_begin+0x180>
 314:	00a7e533          	or	a0,a5,a0
 318:	f8a02023          	sw	a0,-128(zero) # ffffff80 <__ctr0_io_space_begin+0x180>
 31c:	00000513          	li	a0,0
 320:	00008067          	ret
 324:	00100513          	li	a0,1
 328:	00008067          	ret

0000032c <__neorv32_uart_itoa>:
 32c:	fd010113          	addi	sp,sp,-48
 330:	02812423          	sw	s0,40(sp)
 334:	02912223          	sw	s1,36(sp)
 338:	03212023          	sw	s2,32(sp)
 33c:	01312e23          	sw	s3,28(sp)
 340:	01412c23          	sw	s4,24(sp)
 344:	02112623          	sw	ra,44(sp)
 348:	01512a23          	sw	s5,20(sp)
 34c:	00001a37          	lui	s4,0x1
 350:	00050493          	mv	s1,a0
 354:	00058413          	mv	s0,a1
 358:	00058523          	sb	zero,10(a1)
 35c:	00000993          	li	s3,0
 360:	00410913          	addi	s2,sp,4
 364:	de8a0a13          	addi	s4,s4,-536 # de8 <numbers.1>
 368:	00a00593          	li	a1,10
 36c:	00048513          	mv	a0,s1
 370:	159000ef          	jal	ra,cc8 <__umodsi3>
 374:	00aa0533          	add	a0,s4,a0
 378:	00054783          	lbu	a5,0(a0)
 37c:	01390ab3          	add	s5,s2,s3
 380:	00048513          	mv	a0,s1
 384:	00fa8023          	sb	a5,0(s5)
 388:	00a00593          	li	a1,10
 38c:	0f5000ef          	jal	ra,c80 <__udivsi3>
 390:	00198993          	addi	s3,s3,1
 394:	00a00793          	li	a5,10
 398:	00050493          	mv	s1,a0
 39c:	fcf996e3          	bne	s3,a5,368 <__neorv32_uart_itoa+0x3c>
 3a0:	00090693          	mv	a3,s2
 3a4:	00900713          	li	a4,9
 3a8:	03000613          	li	a2,48
 3ac:	0096c583          	lbu	a1,9(a3)
 3b0:	00070793          	mv	a5,a4
 3b4:	fff70713          	addi	a4,a4,-1
 3b8:	01071713          	slli	a4,a4,0x10
 3bc:	01075713          	srli	a4,a4,0x10
 3c0:	00c59a63          	bne	a1,a2,3d4 <__neorv32_uart_itoa+0xa8>
 3c4:	000684a3          	sb	zero,9(a3)
 3c8:	fff68693          	addi	a3,a3,-1
 3cc:	fe0710e3          	bnez	a4,3ac <__neorv32_uart_itoa+0x80>
 3d0:	00000793          	li	a5,0
 3d4:	00f907b3          	add	a5,s2,a5
 3d8:	00000593          	li	a1,0
 3dc:	0007c703          	lbu	a4,0(a5)
 3e0:	00070c63          	beqz	a4,3f8 <__neorv32_uart_itoa+0xcc>
 3e4:	00158693          	addi	a3,a1,1
 3e8:	00b405b3          	add	a1,s0,a1
 3ec:	00e58023          	sb	a4,0(a1)
 3f0:	01069593          	slli	a1,a3,0x10
 3f4:	0105d593          	srli	a1,a1,0x10
 3f8:	fff78713          	addi	a4,a5,-1
 3fc:	02f91863          	bne	s2,a5,42c <__neorv32_uart_itoa+0x100>
 400:	00b40433          	add	s0,s0,a1
 404:	00040023          	sb	zero,0(s0)
 408:	02c12083          	lw	ra,44(sp)
 40c:	02812403          	lw	s0,40(sp)
 410:	02412483          	lw	s1,36(sp)
 414:	02012903          	lw	s2,32(sp)
 418:	01c12983          	lw	s3,28(sp)
 41c:	01812a03          	lw	s4,24(sp)
 420:	01412a83          	lw	s5,20(sp)
 424:	03010113          	addi	sp,sp,48
 428:	00008067          	ret
 42c:	00070793          	mv	a5,a4
 430:	fadff06f          	j	3dc <__neorv32_uart_itoa+0xb0>

00000434 <__neorv32_uart_tohex>:
 434:	00001637          	lui	a2,0x1
 438:	00758693          	addi	a3,a1,7
 43c:	00000713          	li	a4,0
 440:	df460613          	addi	a2,a2,-524 # df4 <symbols.0>
 444:	02000813          	li	a6,32
 448:	00e557b3          	srl	a5,a0,a4
 44c:	00f7f793          	andi	a5,a5,15
 450:	00f607b3          	add	a5,a2,a5
 454:	0007c783          	lbu	a5,0(a5)
 458:	00470713          	addi	a4,a4,4
 45c:	fff68693          	addi	a3,a3,-1
 460:	00f680a3          	sb	a5,1(a3)
 464:	ff0712e3          	bne	a4,a6,448 <__neorv32_uart_tohex+0x14>
 468:	00058423          	sb	zero,8(a1)
 46c:	00008067          	ret

00000470 <neorv32_uart0_available>:
 470:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 474:	01255513          	srli	a0,a0,0x12
 478:	00157513          	andi	a0,a0,1
 47c:	00008067          	ret

00000480 <neorv32_uart0_setup>:
 480:	ff010113          	addi	sp,sp,-16
 484:	00812423          	sw	s0,8(sp)
 488:	00912223          	sw	s1,4(sp)
 48c:	00112623          	sw	ra,12(sp)
 490:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 494:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 498:	00058413          	mv	s0,a1
 49c:	00151593          	slli	a1,a0,0x1
 4a0:	00078513          	mv	a0,a5
 4a4:	00060493          	mv	s1,a2
 4a8:	7d8000ef          	jal	ra,c80 <__udivsi3>
 4ac:	01051513          	slli	a0,a0,0x10
 4b0:	000017b7          	lui	a5,0x1
 4b4:	01055513          	srli	a0,a0,0x10
 4b8:	00000713          	li	a4,0
 4bc:	ffe78793          	addi	a5,a5,-2 # ffe <symbols.0+0x20a>
 4c0:	04a7e463          	bltu	a5,a0,508 <neorv32_uart0_setup+0x88>
 4c4:	0034f793          	andi	a5,s1,3
 4c8:	00347413          	andi	s0,s0,3
 4cc:	fff50513          	addi	a0,a0,-1
 4d0:	01479793          	slli	a5,a5,0x14
 4d4:	01641413          	slli	s0,s0,0x16
 4d8:	00f567b3          	or	a5,a0,a5
 4dc:	0087e7b3          	or	a5,a5,s0
 4e0:	01871713          	slli	a4,a4,0x18
 4e4:	00c12083          	lw	ra,12(sp)
 4e8:	00812403          	lw	s0,8(sp)
 4ec:	00e7e7b3          	or	a5,a5,a4
 4f0:	10000737          	lui	a4,0x10000
 4f4:	00e7e7b3          	or	a5,a5,a4
 4f8:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 4fc:	00412483          	lw	s1,4(sp)
 500:	01010113          	addi	sp,sp,16
 504:	00008067          	ret
 508:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffef4e>
 50c:	0fd6f693          	andi	a3,a3,253
 510:	00069a63          	bnez	a3,524 <neorv32_uart0_setup+0xa4>
 514:	00355513          	srli	a0,a0,0x3
 518:	00170713          	addi	a4,a4,1
 51c:	0ff77713          	andi	a4,a4,255
 520:	fa1ff06f          	j	4c0 <neorv32_uart0_setup+0x40>
 524:	00155513          	srli	a0,a0,0x1
 528:	ff1ff06f          	j	518 <neorv32_uart0_setup+0x98>

0000052c <neorv32_uart0_putc>:
 52c:	00040737          	lui	a4,0x40
 530:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 534:	00e7f7b3          	and	a5,a5,a4
 538:	fe079ce3          	bnez	a5,530 <neorv32_uart0_putc+0x4>
 53c:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 540:	00008067          	ret

00000544 <neorv32_uart0_print>:
 544:	ff010113          	addi	sp,sp,-16
 548:	00812423          	sw	s0,8(sp)
 54c:	01212023          	sw	s2,0(sp)
 550:	00112623          	sw	ra,12(sp)
 554:	00912223          	sw	s1,4(sp)
 558:	00050413          	mv	s0,a0
 55c:	00a00913          	li	s2,10
 560:	00044483          	lbu	s1,0(s0)
 564:	00140413          	addi	s0,s0,1
 568:	00049e63          	bnez	s1,584 <neorv32_uart0_print+0x40>
 56c:	00c12083          	lw	ra,12(sp)
 570:	00812403          	lw	s0,8(sp)
 574:	00412483          	lw	s1,4(sp)
 578:	00012903          	lw	s2,0(sp)
 57c:	01010113          	addi	sp,sp,16
 580:	00008067          	ret
 584:	01249663          	bne	s1,s2,590 <neorv32_uart0_print+0x4c>
 588:	00d00513          	li	a0,13
 58c:	fa1ff0ef          	jal	ra,52c <neorv32_uart0_putc>
 590:	00048513          	mv	a0,s1
 594:	f99ff0ef          	jal	ra,52c <neorv32_uart0_putc>
 598:	fc9ff06f          	j	560 <neorv32_uart0_print+0x1c>

0000059c <neorv32_uart0_printf>:
 59c:	fa010113          	addi	sp,sp,-96
 5a0:	04f12a23          	sw	a5,84(sp)
 5a4:	04410793          	addi	a5,sp,68
 5a8:	02812c23          	sw	s0,56(sp)
 5ac:	03212823          	sw	s2,48(sp)
 5b0:	03412423          	sw	s4,40(sp)
 5b4:	03512223          	sw	s5,36(sp)
 5b8:	03612023          	sw	s6,32(sp)
 5bc:	01712e23          	sw	s7,28(sp)
 5c0:	01812c23          	sw	s8,24(sp)
 5c4:	01912a23          	sw	s9,20(sp)
 5c8:	02112e23          	sw	ra,60(sp)
 5cc:	02912a23          	sw	s1,52(sp)
 5d0:	03312623          	sw	s3,44(sp)
 5d4:	00050413          	mv	s0,a0
 5d8:	04b12223          	sw	a1,68(sp)
 5dc:	04c12423          	sw	a2,72(sp)
 5e0:	04d12623          	sw	a3,76(sp)
 5e4:	04e12823          	sw	a4,80(sp)
 5e8:	05012c23          	sw	a6,88(sp)
 5ec:	05112e23          	sw	a7,92(sp)
 5f0:	00f12023          	sw	a5,0(sp)
 5f4:	02500a13          	li	s4,37
 5f8:	00a00a93          	li	s5,10
 5fc:	07300913          	li	s2,115
 600:	07500b13          	li	s6,117
 604:	07800b93          	li	s7,120
 608:	06300c13          	li	s8,99
 60c:	06900c93          	li	s9,105
 610:	00044483          	lbu	s1,0(s0)
 614:	02049c63          	bnez	s1,64c <neorv32_uart0_printf+0xb0>
 618:	03c12083          	lw	ra,60(sp)
 61c:	03812403          	lw	s0,56(sp)
 620:	03412483          	lw	s1,52(sp)
 624:	03012903          	lw	s2,48(sp)
 628:	02c12983          	lw	s3,44(sp)
 62c:	02812a03          	lw	s4,40(sp)
 630:	02412a83          	lw	s5,36(sp)
 634:	02012b03          	lw	s6,32(sp)
 638:	01c12b83          	lw	s7,28(sp)
 63c:	01812c03          	lw	s8,24(sp)
 640:	01412c83          	lw	s9,20(sp)
 644:	06010113          	addi	sp,sp,96
 648:	00008067          	ret
 64c:	0d449863          	bne	s1,s4,71c <neorv32_uart0_printf+0x180>
 650:	00240993          	addi	s3,s0,2
 654:	00144403          	lbu	s0,1(s0)
 658:	05240263          	beq	s0,s2,69c <neorv32_uart0_printf+0x100>
 65c:	00896e63          	bltu	s2,s0,678 <neorv32_uart0_printf+0xdc>
 660:	05840c63          	beq	s0,s8,6b8 <neorv32_uart0_printf+0x11c>
 664:	07940663          	beq	s0,s9,6d0 <neorv32_uart0_printf+0x134>
 668:	02500513          	li	a0,37
 66c:	ec1ff0ef          	jal	ra,52c <neorv32_uart0_putc>
 670:	00040513          	mv	a0,s0
 674:	0540006f          	j	6c8 <neorv32_uart0_printf+0x12c>
 678:	09640663          	beq	s0,s6,704 <neorv32_uart0_printf+0x168>
 67c:	ff7416e3          	bne	s0,s7,668 <neorv32_uart0_printf+0xcc>
 680:	00012783          	lw	a5,0(sp)
 684:	00410593          	addi	a1,sp,4
 688:	0007a503          	lw	a0,0(a5)
 68c:	00478713          	addi	a4,a5,4
 690:	00e12023          	sw	a4,0(sp)
 694:	da1ff0ef          	jal	ra,434 <__neorv32_uart_tohex>
 698:	0640006f          	j	6fc <neorv32_uart0_printf+0x160>
 69c:	00012783          	lw	a5,0(sp)
 6a0:	0007a503          	lw	a0,0(a5)
 6a4:	00478713          	addi	a4,a5,4
 6a8:	00e12023          	sw	a4,0(sp)
 6ac:	e99ff0ef          	jal	ra,544 <neorv32_uart0_print>
 6b0:	00098413          	mv	s0,s3
 6b4:	f5dff06f          	j	610 <neorv32_uart0_printf+0x74>
 6b8:	00012783          	lw	a5,0(sp)
 6bc:	0007c503          	lbu	a0,0(a5)
 6c0:	00478713          	addi	a4,a5,4
 6c4:	00e12023          	sw	a4,0(sp)
 6c8:	e65ff0ef          	jal	ra,52c <neorv32_uart0_putc>
 6cc:	fe5ff06f          	j	6b0 <neorv32_uart0_printf+0x114>
 6d0:	00012783          	lw	a5,0(sp)
 6d4:	0007a403          	lw	s0,0(a5)
 6d8:	00478713          	addi	a4,a5,4
 6dc:	00e12023          	sw	a4,0(sp)
 6e0:	00045863          	bgez	s0,6f0 <neorv32_uart0_printf+0x154>
 6e4:	02d00513          	li	a0,45
 6e8:	40800433          	neg	s0,s0
 6ec:	e41ff0ef          	jal	ra,52c <neorv32_uart0_putc>
 6f0:	00410593          	addi	a1,sp,4
 6f4:	00040513          	mv	a0,s0
 6f8:	c35ff0ef          	jal	ra,32c <__neorv32_uart_itoa>
 6fc:	00410513          	addi	a0,sp,4
 700:	fadff06f          	j	6ac <neorv32_uart0_printf+0x110>
 704:	00012783          	lw	a5,0(sp)
 708:	00410593          	addi	a1,sp,4
 70c:	00478713          	addi	a4,a5,4
 710:	0007a503          	lw	a0,0(a5)
 714:	00e12023          	sw	a4,0(sp)
 718:	fe1ff06f          	j	6f8 <neorv32_uart0_printf+0x15c>
 71c:	01549663          	bne	s1,s5,728 <neorv32_uart0_printf+0x18c>
 720:	00d00513          	li	a0,13
 724:	e09ff0ef          	jal	ra,52c <neorv32_uart0_putc>
 728:	00140993          	addi	s3,s0,1
 72c:	00048513          	mv	a0,s1
 730:	f99ff06f          	j	6c8 <neorv32_uart0_printf+0x12c>

00000734 <neorv32_cpu_irq_enable>:
 734:	01f00793          	li	a5,31
 738:	00050713          	mv	a4,a0
 73c:	02a7e663          	bltu	a5,a0,768 <neorv32_cpu_irq_enable+0x34>
 740:	ffff17b7          	lui	a5,0xffff1
 744:	88878793          	addi	a5,a5,-1912 # ffff0888 <__ctr0_io_space_begin+0xffff0a88>
 748:	00a7d7b3          	srl	a5,a5,a0
 74c:	0017f793          	andi	a5,a5,1
 750:	00100513          	li	a0,1
 754:	00078c63          	beqz	a5,76c <neorv32_cpu_irq_enable+0x38>
 758:	00e51533          	sll	a0,a0,a4
 75c:	30452073          	csrs	mie,a0
 760:	00000513          	li	a0,0
 764:	00008067          	ret
 768:	00100513          	li	a0,1
 76c:	00008067          	ret

00000770 <__neorv32_rte_core>:
 770:	fc010113          	addi	sp,sp,-64
 774:	02112e23          	sw	ra,60(sp)
 778:	02512c23          	sw	t0,56(sp)
 77c:	02612a23          	sw	t1,52(sp)
 780:	02712823          	sw	t2,48(sp)
 784:	02a12623          	sw	a0,44(sp)
 788:	02b12423          	sw	a1,40(sp)
 78c:	02c12223          	sw	a2,36(sp)
 790:	02d12023          	sw	a3,32(sp)
 794:	00e12e23          	sw	a4,28(sp)
 798:	00f12c23          	sw	a5,24(sp)
 79c:	01012a23          	sw	a6,20(sp)
 7a0:	01112823          	sw	a7,16(sp)
 7a4:	01c12623          	sw	t3,12(sp)
 7a8:	01d12423          	sw	t4,8(sp)
 7ac:	01e12223          	sw	t5,4(sp)
 7b0:	01f12023          	sw	t6,0(sp)
 7b4:	34102773          	csrr	a4,mepc
 7b8:	34071073          	csrw	mscratch,a4
 7bc:	342027f3          	csrr	a5,mcause
 7c0:	0807ca63          	bltz	a5,854 <__neorv32_rte_core+0xe4>
 7c4:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3ef50>
 7c8:	00300593          	li	a1,3
 7cc:	0036f693          	andi	a3,a3,3
 7d0:	00270613          	addi	a2,a4,2
 7d4:	00b69463          	bne	a3,a1,7dc <__neorv32_rte_core+0x6c>
 7d8:	00470613          	addi	a2,a4,4
 7dc:	34161073          	csrw	mepc,a2
 7e0:	00b00713          	li	a4,11
 7e4:	04f77c63          	bgeu	a4,a5,83c <__neorv32_rte_core+0xcc>
 7e8:	000017b7          	lui	a5,0x1
 7ec:	9e078793          	addi	a5,a5,-1568 # 9e0 <__neorv32_rte_debug_exc_handler>
 7f0:	000780e7          	jalr	a5
 7f4:	03c12083          	lw	ra,60(sp)
 7f8:	03812283          	lw	t0,56(sp)
 7fc:	03412303          	lw	t1,52(sp)
 800:	03012383          	lw	t2,48(sp)
 804:	02c12503          	lw	a0,44(sp)
 808:	02812583          	lw	a1,40(sp)
 80c:	02412603          	lw	a2,36(sp)
 810:	02012683          	lw	a3,32(sp)
 814:	01c12703          	lw	a4,28(sp)
 818:	01812783          	lw	a5,24(sp)
 81c:	01412803          	lw	a6,20(sp)
 820:	01012883          	lw	a7,16(sp)
 824:	00c12e03          	lw	t3,12(sp)
 828:	00812e83          	lw	t4,8(sp)
 82c:	00412f03          	lw	t5,4(sp)
 830:	00012f83          	lw	t6,0(sp)
 834:	04010113          	addi	sp,sp,64
 838:	30200073          	mret
 83c:	00001737          	lui	a4,0x1
 840:	00279793          	slli	a5,a5,0x2
 844:	e0870713          	addi	a4,a4,-504 # e08 <symbols.0+0x14>
 848:	00e787b3          	add	a5,a5,a4
 84c:	0007a783          	lw	a5,0(a5)
 850:	00078067          	jr	a5
 854:	80000737          	lui	a4,0x80000
 858:	ffd74713          	xori	a4,a4,-3
 85c:	00e787b3          	add	a5,a5,a4
 860:	01c00713          	li	a4,28
 864:	f8f762e3          	bltu	a4,a5,7e8 <__neorv32_rte_core+0x78>
 868:	00001737          	lui	a4,0x1
 86c:	00279793          	slli	a5,a5,0x2
 870:	e3870713          	addi	a4,a4,-456 # e38 <symbols.0+0x44>
 874:	00e787b3          	add	a5,a5,a4
 878:	0007a783          	lw	a5,0(a5)
 87c:	00078067          	jr	a5
 880:	8801a783          	lw	a5,-1920(gp) # 80000080 <__neorv32_rte_vector_lut>
 884:	f6dff06f          	j	7f0 <__neorv32_rte_core+0x80>
 888:	8841a783          	lw	a5,-1916(gp) # 80000084 <__neorv32_rte_vector_lut+0x4>
 88c:	f65ff06f          	j	7f0 <__neorv32_rte_core+0x80>
 890:	8881a783          	lw	a5,-1912(gp) # 80000088 <__neorv32_rte_vector_lut+0x8>
 894:	f5dff06f          	j	7f0 <__neorv32_rte_core+0x80>
 898:	88c1a783          	lw	a5,-1908(gp) # 8000008c <__neorv32_rte_vector_lut+0xc>
 89c:	f55ff06f          	j	7f0 <__neorv32_rte_core+0x80>
 8a0:	8901a783          	lw	a5,-1904(gp) # 80000090 <__neorv32_rte_vector_lut+0x10>
 8a4:	f4dff06f          	j	7f0 <__neorv32_rte_core+0x80>
 8a8:	8941a783          	lw	a5,-1900(gp) # 80000094 <__neorv32_rte_vector_lut+0x14>
 8ac:	f45ff06f          	j	7f0 <__neorv32_rte_core+0x80>
 8b0:	8981a783          	lw	a5,-1896(gp) # 80000098 <__neorv32_rte_vector_lut+0x18>
 8b4:	f3dff06f          	j	7f0 <__neorv32_rte_core+0x80>
 8b8:	89c1a783          	lw	a5,-1892(gp) # 8000009c <__neorv32_rte_vector_lut+0x1c>
 8bc:	f35ff06f          	j	7f0 <__neorv32_rte_core+0x80>
 8c0:	8a01a783          	lw	a5,-1888(gp) # 800000a0 <__neorv32_rte_vector_lut+0x20>
 8c4:	f2dff06f          	j	7f0 <__neorv32_rte_core+0x80>
 8c8:	8a41a783          	lw	a5,-1884(gp) # 800000a4 <__neorv32_rte_vector_lut+0x24>
 8cc:	f25ff06f          	j	7f0 <__neorv32_rte_core+0x80>
 8d0:	8a81a783          	lw	a5,-1880(gp) # 800000a8 <__neorv32_rte_vector_lut+0x28>
 8d4:	f1dff06f          	j	7f0 <__neorv32_rte_core+0x80>
 8d8:	8ac1a783          	lw	a5,-1876(gp) # 800000ac <__neorv32_rte_vector_lut+0x2c>
 8dc:	f15ff06f          	j	7f0 <__neorv32_rte_core+0x80>
 8e0:	8b01a783          	lw	a5,-1872(gp) # 800000b0 <__neorv32_rte_vector_lut+0x30>
 8e4:	f0dff06f          	j	7f0 <__neorv32_rte_core+0x80>
 8e8:	8b41a783          	lw	a5,-1868(gp) # 800000b4 <__neorv32_rte_vector_lut+0x34>
 8ec:	f05ff06f          	j	7f0 <__neorv32_rte_core+0x80>
 8f0:	8b81a783          	lw	a5,-1864(gp) # 800000b8 <__neorv32_rte_vector_lut+0x38>
 8f4:	efdff06f          	j	7f0 <__neorv32_rte_core+0x80>
 8f8:	8bc1a783          	lw	a5,-1860(gp) # 800000bc <__neorv32_rte_vector_lut+0x3c>
 8fc:	ef5ff06f          	j	7f0 <__neorv32_rte_core+0x80>
 900:	8c01a783          	lw	a5,-1856(gp) # 800000c0 <__neorv32_rte_vector_lut+0x40>
 904:	eedff06f          	j	7f0 <__neorv32_rte_core+0x80>
 908:	8c41a783          	lw	a5,-1852(gp) # 800000c4 <__neorv32_rte_vector_lut+0x44>
 90c:	ee5ff06f          	j	7f0 <__neorv32_rte_core+0x80>
 910:	8c81a783          	lw	a5,-1848(gp) # 800000c8 <__neorv32_rte_vector_lut+0x48>
 914:	eddff06f          	j	7f0 <__neorv32_rte_core+0x80>
 918:	8cc1a783          	lw	a5,-1844(gp) # 800000cc <__neorv32_rte_vector_lut+0x4c>
 91c:	ed5ff06f          	j	7f0 <__neorv32_rte_core+0x80>
 920:	8d01a783          	lw	a5,-1840(gp) # 800000d0 <__neorv32_rte_vector_lut+0x50>
 924:	ecdff06f          	j	7f0 <__neorv32_rte_core+0x80>
 928:	8d41a783          	lw	a5,-1836(gp) # 800000d4 <__neorv32_rte_vector_lut+0x54>
 92c:	ec5ff06f          	j	7f0 <__neorv32_rte_core+0x80>
 930:	8d81a783          	lw	a5,-1832(gp) # 800000d8 <__neorv32_rte_vector_lut+0x58>
 934:	ebdff06f          	j	7f0 <__neorv32_rte_core+0x80>
 938:	8dc1a783          	lw	a5,-1828(gp) # 800000dc <__neorv32_rte_vector_lut+0x5c>
 93c:	eb5ff06f          	j	7f0 <__neorv32_rte_core+0x80>
 940:	8e01a783          	lw	a5,-1824(gp) # 800000e0 <__neorv32_rte_vector_lut+0x60>
 944:	eadff06f          	j	7f0 <__neorv32_rte_core+0x80>
 948:	8e41a783          	lw	a5,-1820(gp) # 800000e4 <__neorv32_rte_vector_lut+0x64>
 94c:	ea5ff06f          	j	7f0 <__neorv32_rte_core+0x80>
 950:	8e81a783          	lw	a5,-1816(gp) # 800000e8 <__neorv32_rte_vector_lut+0x68>
 954:	e9dff06f          	j	7f0 <__neorv32_rte_core+0x80>
 958:	8ec1a783          	lw	a5,-1812(gp) # 800000ec <__neorv32_rte_vector_lut+0x6c>
 95c:	e95ff06f          	j	7f0 <__neorv32_rte_core+0x80>
 960:	8f01a783          	lw	a5,-1808(gp) # 800000f0 <__neorv32_rte_vector_lut+0x70>
 964:	e8dff06f          	j	7f0 <__neorv32_rte_core+0x80>
 968:	0000                	unimp
 96a:	0000                	unimp
 96c:	0000                	unimp
 96e:	0000                	unimp

00000970 <__neorv32_rte_print_hex_word>:
 970:	fe010113          	addi	sp,sp,-32
 974:	01212823          	sw	s2,16(sp)
 978:	00050913          	mv	s2,a0
 97c:	00001537          	lui	a0,0x1
 980:	00912a23          	sw	s1,20(sp)
 984:	eac50513          	addi	a0,a0,-340 # eac <symbols.0+0xb8>
 988:	000014b7          	lui	s1,0x1
 98c:	00812c23          	sw	s0,24(sp)
 990:	01312623          	sw	s3,12(sp)
 994:	00112e23          	sw	ra,28(sp)
 998:	01c00413          	li	s0,28
 99c:	ba9ff0ef          	jal	ra,544 <neorv32_uart0_print>
 9a0:	0a048493          	addi	s1,s1,160 # 10a0 <hex_symbols.0>
 9a4:	ffc00993          	li	s3,-4
 9a8:	008957b3          	srl	a5,s2,s0
 9ac:	00f7f793          	andi	a5,a5,15
 9b0:	00f487b3          	add	a5,s1,a5
 9b4:	0007c503          	lbu	a0,0(a5)
 9b8:	ffc40413          	addi	s0,s0,-4
 9bc:	b71ff0ef          	jal	ra,52c <neorv32_uart0_putc>
 9c0:	ff3414e3          	bne	s0,s3,9a8 <__neorv32_rte_print_hex_word+0x38>
 9c4:	01c12083          	lw	ra,28(sp)
 9c8:	01812403          	lw	s0,24(sp)
 9cc:	01412483          	lw	s1,20(sp)
 9d0:	01012903          	lw	s2,16(sp)
 9d4:	00c12983          	lw	s3,12(sp)
 9d8:	02010113          	addi	sp,sp,32
 9dc:	00008067          	ret

000009e0 <__neorv32_rte_debug_exc_handler>:
 9e0:	ff010113          	addi	sp,sp,-16
 9e4:	00112623          	sw	ra,12(sp)
 9e8:	00812423          	sw	s0,8(sp)
 9ec:	00912223          	sw	s1,4(sp)
 9f0:	a81ff0ef          	jal	ra,470 <neorv32_uart0_available>
 9f4:	1c050863          	beqz	a0,bc4 <__neorv32_rte_debug_exc_handler+0x1e4>
 9f8:	00001537          	lui	a0,0x1
 9fc:	eb050513          	addi	a0,a0,-336 # eb0 <symbols.0+0xbc>
 a00:	b45ff0ef          	jal	ra,544 <neorv32_uart0_print>
 a04:	34202473          	csrr	s0,mcause
 a08:	00900713          	li	a4,9
 a0c:	00f47793          	andi	a5,s0,15
 a10:	03078493          	addi	s1,a5,48
 a14:	00f77463          	bgeu	a4,a5,a1c <__neorv32_rte_debug_exc_handler+0x3c>
 a18:	05778493          	addi	s1,a5,87
 a1c:	00b00793          	li	a5,11
 a20:	0087ee63          	bltu	a5,s0,a3c <__neorv32_rte_debug_exc_handler+0x5c>
 a24:	00001737          	lui	a4,0x1
 a28:	00241793          	slli	a5,s0,0x2
 a2c:	07070713          	addi	a4,a4,112 # 1070 <symbols.0+0x27c>
 a30:	00e787b3          	add	a5,a5,a4
 a34:	0007a783          	lw	a5,0(a5)
 a38:	00078067          	jr	a5
 a3c:	800007b7          	lui	a5,0x80000
 a40:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 a44:	14e40e63          	beq	s0,a4,ba0 <__neorv32_rte_debug_exc_handler+0x1c0>
 a48:	02876a63          	bltu	a4,s0,a7c <__neorv32_rte_debug_exc_handler+0x9c>
 a4c:	00378713          	addi	a4,a5,3
 a50:	12e40c63          	beq	s0,a4,b88 <__neorv32_rte_debug_exc_handler+0x1a8>
 a54:	00778793          	addi	a5,a5,7
 a58:	12f40e63          	beq	s0,a5,b94 <__neorv32_rte_debug_exc_handler+0x1b4>
 a5c:	00001537          	lui	a0,0x1
 a60:	01050513          	addi	a0,a0,16 # 1010 <symbols.0+0x21c>
 a64:	ae1ff0ef          	jal	ra,544 <neorv32_uart0_print>
 a68:	00040513          	mv	a0,s0
 a6c:	f05ff0ef          	jal	ra,970 <__neorv32_rte_print_hex_word>
 a70:	00100793          	li	a5,1
 a74:	08f40c63          	beq	s0,a5,b0c <__neorv32_rte_debug_exc_handler+0x12c>
 a78:	0280006f          	j	aa0 <__neorv32_rte_debug_exc_handler+0xc0>
 a7c:	ff07c793          	xori	a5,a5,-16
 a80:	00f407b3          	add	a5,s0,a5
 a84:	00f00713          	li	a4,15
 a88:	fcf76ae3          	bltu	a4,a5,a5c <__neorv32_rte_debug_exc_handler+0x7c>
 a8c:	00001537          	lui	a0,0x1
 a90:	00050513          	mv	a0,a0
 a94:	ab1ff0ef          	jal	ra,544 <neorv32_uart0_print>
 a98:	00048513          	mv	a0,s1
 a9c:	a91ff0ef          	jal	ra,52c <neorv32_uart0_putc>
 aa0:	ffd47413          	andi	s0,s0,-3
 aa4:	00500793          	li	a5,5
 aa8:	06f40263          	beq	s0,a5,b0c <__neorv32_rte_debug_exc_handler+0x12c>
 aac:	00001537          	lui	a0,0x1
 ab0:	05450513          	addi	a0,a0,84 # 1054 <symbols.0+0x260>
 ab4:	a91ff0ef          	jal	ra,544 <neorv32_uart0_print>
 ab8:	34002573          	csrr	a0,mscratch
 abc:	eb5ff0ef          	jal	ra,970 <__neorv32_rte_print_hex_word>
 ac0:	00001537          	lui	a0,0x1
 ac4:	05c50513          	addi	a0,a0,92 # 105c <symbols.0+0x268>
 ac8:	a7dff0ef          	jal	ra,544 <neorv32_uart0_print>
 acc:	34302573          	csrr	a0,mtval
 ad0:	ea1ff0ef          	jal	ra,970 <__neorv32_rte_print_hex_word>
 ad4:	00812403          	lw	s0,8(sp)
 ad8:	00c12083          	lw	ra,12(sp)
 adc:	00412483          	lw	s1,4(sp)
 ae0:	00001537          	lui	a0,0x1
 ae4:	06850513          	addi	a0,a0,104 # 1068 <symbols.0+0x274>
 ae8:	01010113          	addi	sp,sp,16
 aec:	a59ff06f          	j	544 <neorv32_uart0_print>
 af0:	00001537          	lui	a0,0x1
 af4:	eb850513          	addi	a0,a0,-328 # eb8 <symbols.0+0xc4>
 af8:	a4dff0ef          	jal	ra,544 <neorv32_uart0_print>
 afc:	fb1ff06f          	j	aac <__neorv32_rte_debug_exc_handler+0xcc>
 b00:	00001537          	lui	a0,0x1
 b04:	ed850513          	addi	a0,a0,-296 # ed8 <symbols.0+0xe4>
 b08:	a3dff0ef          	jal	ra,544 <neorv32_uart0_print>
 b0c:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 b10:	0a07d463          	bgez	a5,bb8 <__neorv32_rte_debug_exc_handler+0x1d8>
 b14:	0017f793          	andi	a5,a5,1
 b18:	08078a63          	beqz	a5,bac <__neorv32_rte_debug_exc_handler+0x1cc>
 b1c:	00001537          	lui	a0,0x1
 b20:	02850513          	addi	a0,a0,40 # 1028 <symbols.0+0x234>
 b24:	fd5ff06f          	j	af8 <__neorv32_rte_debug_exc_handler+0x118>
 b28:	00001537          	lui	a0,0x1
 b2c:	ef450513          	addi	a0,a0,-268 # ef4 <symbols.0+0x100>
 b30:	fc9ff06f          	j	af8 <__neorv32_rte_debug_exc_handler+0x118>
 b34:	00001537          	lui	a0,0x1
 b38:	f0850513          	addi	a0,a0,-248 # f08 <symbols.0+0x114>
 b3c:	fbdff06f          	j	af8 <__neorv32_rte_debug_exc_handler+0x118>
 b40:	00001537          	lui	a0,0x1
 b44:	f1450513          	addi	a0,a0,-236 # f14 <symbols.0+0x120>
 b48:	fb1ff06f          	j	af8 <__neorv32_rte_debug_exc_handler+0x118>
 b4c:	00001537          	lui	a0,0x1
 b50:	f2c50513          	addi	a0,a0,-212 # f2c <symbols.0+0x138>
 b54:	fb5ff06f          	j	b08 <__neorv32_rte_debug_exc_handler+0x128>
 b58:	00001537          	lui	a0,0x1
 b5c:	f4050513          	addi	a0,a0,-192 # f40 <symbols.0+0x14c>
 b60:	f99ff06f          	j	af8 <__neorv32_rte_debug_exc_handler+0x118>
 b64:	00001537          	lui	a0,0x1
 b68:	f5c50513          	addi	a0,a0,-164 # f5c <symbols.0+0x168>
 b6c:	f9dff06f          	j	b08 <__neorv32_rte_debug_exc_handler+0x128>
 b70:	00001537          	lui	a0,0x1
 b74:	f7050513          	addi	a0,a0,-144 # f70 <symbols.0+0x17c>
 b78:	f81ff06f          	j	af8 <__neorv32_rte_debug_exc_handler+0x118>
 b7c:	00001537          	lui	a0,0x1
 b80:	f9050513          	addi	a0,a0,-112 # f90 <symbols.0+0x19c>
 b84:	f75ff06f          	j	af8 <__neorv32_rte_debug_exc_handler+0x118>
 b88:	00001537          	lui	a0,0x1
 b8c:	fb050513          	addi	a0,a0,-80 # fb0 <symbols.0+0x1bc>
 b90:	f69ff06f          	j	af8 <__neorv32_rte_debug_exc_handler+0x118>
 b94:	00001537          	lui	a0,0x1
 b98:	fcc50513          	addi	a0,a0,-52 # fcc <symbols.0+0x1d8>
 b9c:	f5dff06f          	j	af8 <__neorv32_rte_debug_exc_handler+0x118>
 ba0:	00001537          	lui	a0,0x1
 ba4:	fe450513          	addi	a0,a0,-28 # fe4 <symbols.0+0x1f0>
 ba8:	f51ff06f          	j	af8 <__neorv32_rte_debug_exc_handler+0x118>
 bac:	00001537          	lui	a0,0x1
 bb0:	03850513          	addi	a0,a0,56 # 1038 <symbols.0+0x244>
 bb4:	f45ff06f          	j	af8 <__neorv32_rte_debug_exc_handler+0x118>
 bb8:	00001537          	lui	a0,0x1
 bbc:	04850513          	addi	a0,a0,72 # 1048 <symbols.0+0x254>
 bc0:	f39ff06f          	j	af8 <__neorv32_rte_debug_exc_handler+0x118>
 bc4:	00c12083          	lw	ra,12(sp)
 bc8:	00812403          	lw	s0,8(sp)
 bcc:	00412483          	lw	s1,4(sp)
 bd0:	01010113          	addi	sp,sp,16
 bd4:	00008067          	ret

00000bd8 <neorv32_rte_exception_install>:
 bd8:	01f00793          	li	a5,31
 bdc:	00a7ee63          	bltu	a5,a0,bf8 <neorv32_rte_exception_install+0x20>
 be0:	88018793          	addi	a5,gp,-1920 # 80000080 <__neorv32_rte_vector_lut>
 be4:	00251513          	slli	a0,a0,0x2
 be8:	00a78533          	add	a0,a5,a0
 bec:	00b52023          	sw	a1,0(a0)
 bf0:	00000513          	li	a0,0
 bf4:	00008067          	ret
 bf8:	00100513          	li	a0,1
 bfc:	00008067          	ret

00000c00 <neorv32_rte_exception_uninstall>:
 c00:	01f00793          	li	a5,31
 c04:	02a7e263          	bltu	a5,a0,c28 <neorv32_rte_exception_uninstall+0x28>
 c08:	88018793          	addi	a5,gp,-1920 # 80000080 <__neorv32_rte_vector_lut>
 c0c:	00251513          	slli	a0,a0,0x2
 c10:	00a78533          	add	a0,a5,a0
 c14:	000017b7          	lui	a5,0x1
 c18:	9e078793          	addi	a5,a5,-1568 # 9e0 <__neorv32_rte_debug_exc_handler>
 c1c:	00f52023          	sw	a5,0(a0)
 c20:	00000513          	li	a0,0
 c24:	00008067          	ret
 c28:	00100513          	li	a0,1
 c2c:	00008067          	ret

00000c30 <neorv32_rte_setup>:
 c30:	ff010113          	addi	sp,sp,-16
 c34:	00112623          	sw	ra,12(sp)
 c38:	00812423          	sw	s0,8(sp)
 c3c:	00912223          	sw	s1,4(sp)
 c40:	77000793          	li	a5,1904
 c44:	30579073          	csrw	mtvec,a5
 c48:	00000413          	li	s0,0
 c4c:	01d00493          	li	s1,29
 c50:	00040513          	mv	a0,s0
 c54:	00140413          	addi	s0,s0,1
 c58:	0ff47413          	andi	s0,s0,255
 c5c:	fa5ff0ef          	jal	ra,c00 <neorv32_rte_exception_uninstall>
 c60:	fe9418e3          	bne	s0,s1,c50 <neorv32_rte_setup+0x20>
 c64:	00c12083          	lw	ra,12(sp)
 c68:	00812403          	lw	s0,8(sp)
 c6c:	00412483          	lw	s1,4(sp)
 c70:	01010113          	addi	sp,sp,16
 c74:	00008067          	ret

00000c78 <__divsi3>:
 c78:	06054063          	bltz	a0,cd8 <__umodsi3+0x10>
 c7c:	0605c663          	bltz	a1,ce8 <__umodsi3+0x20>

00000c80 <__udivsi3>:
 c80:	00058613          	mv	a2,a1
 c84:	00050593          	mv	a1,a0
 c88:	fff00513          	li	a0,-1
 c8c:	02060c63          	beqz	a2,cc4 <__udivsi3+0x44>
 c90:	00100693          	li	a3,1
 c94:	00b67a63          	bgeu	a2,a1,ca8 <__udivsi3+0x28>
 c98:	00c05863          	blez	a2,ca8 <__udivsi3+0x28>
 c9c:	00161613          	slli	a2,a2,0x1
 ca0:	00169693          	slli	a3,a3,0x1
 ca4:	feb66ae3          	bltu	a2,a1,c98 <__udivsi3+0x18>
 ca8:	00000513          	li	a0,0
 cac:	00c5e663          	bltu	a1,a2,cb8 <__udivsi3+0x38>
 cb0:	40c585b3          	sub	a1,a1,a2
 cb4:	00d56533          	or	a0,a0,a3
 cb8:	0016d693          	srli	a3,a3,0x1
 cbc:	00165613          	srli	a2,a2,0x1
 cc0:	fe0696e3          	bnez	a3,cac <__udivsi3+0x2c>
 cc4:	00008067          	ret

00000cc8 <__umodsi3>:
 cc8:	00008293          	mv	t0,ra
 ccc:	fb5ff0ef          	jal	ra,c80 <__udivsi3>
 cd0:	00058513          	mv	a0,a1
 cd4:	00028067          	jr	t0
 cd8:	40a00533          	neg	a0,a0
 cdc:	00b04863          	bgtz	a1,cec <__umodsi3+0x24>
 ce0:	40b005b3          	neg	a1,a1
 ce4:	f9dff06f          	j	c80 <__udivsi3>
 ce8:	40b005b3          	neg	a1,a1
 cec:	00008293          	mv	t0,ra
 cf0:	f91ff0ef          	jal	ra,c80 <__udivsi3>
 cf4:	40a00533          	neg	a0,a0
 cf8:	00028067          	jr	t0

00000cfc <__modsi3>:
 cfc:	00008293          	mv	t0,ra
 d00:	0005ca63          	bltz	a1,d14 <__modsi3+0x18>
 d04:	00054c63          	bltz	a0,d1c <__modsi3+0x20>
 d08:	f79ff0ef          	jal	ra,c80 <__udivsi3>
 d0c:	00058513          	mv	a0,a1
 d10:	00028067          	jr	t0
 d14:	40b005b3          	neg	a1,a1
 d18:	fe0558e3          	bgez	a0,d08 <__modsi3+0xc>
 d1c:	40a00533          	neg	a0,a0
 d20:	f61ff0ef          	jal	ra,c80 <__udivsi3>
 d24:	40b00533          	neg	a0,a1
 d28:	00028067          	jr	t0
