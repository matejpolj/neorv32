
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
  dc:	13058593          	addi	a1,a1,304 # 1208 <__crt0_copy_data_src_begin>
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
 188:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x38f8>
 18c:	00112623          	sw	ra,12(sp)
 190:	3c4000ef          	jal	ra,554 <neorv32_uart0_setup>
 194:	401000ef          	jal	ra,d94 <neorv32_gpio_available>
 198:	04050c63          	beqz	a0,1f0 <main+0x78>
 19c:	39d000ef          	jal	ra,d38 <neorv32_rte_setup>
 1a0:	00001537          	lui	a0,0x1
 1a4:	f2850513          	addi	a0,a0,-216 # f28 <__etext+0x5c>
 1a8:	470000ef          	jal	ra,618 <neorv32_uart0_print>
 1ac:	28000593          	li	a1,640
 1b0:	01900513          	li	a0,25
 1b4:	32d000ef          	jal	ra,ce0 <neorv32_rte_exception_install>
 1b8:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 1bc:	fe002603          	lw	a2,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 1c0:	00100593          	li	a1,1
 1c4:	00200513          	li	a0,2
 1c8:	00465613          	srli	a2,a2,0x4
 1cc:	1d8000ef          	jal	ra,3a4 <neorv32_gptmr_setup>
 1d0:	01c00513          	li	a0,28
 1d4:	65c000ef          	jal	ra,830 <neorv32_cpu_irq_enable>
 1d8:	30046073          	csrsi	mstatus,8
 1dc:	01600513          	li	a0,22
 1e0:	3f5000ef          	jal	ra,dd4 <neorv32_gpio_pin_clr>
 1e4:	01700513          	li	a0,23
 1e8:	3bd000ef          	jal	ra,da4 <neorv32_gpio_pin_set>
 1ec:	0000006f          	j	1ec <main+0x74>
 1f0:	00001537          	lui	a0,0x1
 1f4:	f0450513          	addi	a0,a0,-252 # f04 <__etext+0x38>
 1f8:	420000ef          	jal	ra,618 <neorv32_uart0_print>
 1fc:	00c12083          	lw	ra,12(sp)
 200:	00100513          	li	a0,1
 204:	01010113          	addi	sp,sp,16
 208:	00008067          	ret

0000020c <displayLine>:
 20c:	fff64613          	not	a2,a2
 210:	fe010113          	addi	sp,sp,-32
 214:	00561613          	slli	a2,a2,0x5
 218:	00112e23          	sw	ra,28(sp)
 21c:	0ff67613          	andi	a2,a2,255
 220:	00000793          	li	a5,0
 224:	00500693          	li	a3,5
 228:	00f50733          	add	a4,a0,a5
 22c:	00074703          	lbu	a4,0(a4)
 230:	40f685b3          	sub	a1,a3,a5
 234:	00178793          	addi	a5,a5,1
 238:	00b71733          	sll	a4,a4,a1
 23c:	00c76633          	or	a2,a4,a2
 240:	0ff67613          	andi	a2,a2,255
 244:	fed792e3          	bne	a5,a3,228 <displayLine+0x1c>
 248:	01861613          	slli	a2,a2,0x18
 24c:	41f65693          	srai	a3,a2,0x1f
 250:	00060513          	mv	a0,a2
 254:	00068593          	mv	a1,a3
 258:	00c12623          	sw	a2,12(sp)
 25c:	00d12423          	sw	a3,8(sp)
 260:	3a9000ef          	jal	ra,e08 <neorv32_gpio_port_set>
 264:	00c12603          	lw	a2,12(sp)
 268:	00812683          	lw	a3,8(sp)
 26c:	01c12083          	lw	ra,28(sp)
 270:	00001537          	lui	a0,0x1
 274:	ecc50513          	addi	a0,a0,-308 # ecc <__etext>
 278:	02010113          	addi	sp,sp,32
 27c:	3f40006f          	j	670 <neorv32_uart0_printf>

00000280 <gptmr_firq_handler>:
 280:	ff010113          	addi	sp,sp,-16
 284:	f00007b7          	lui	a5,0xf0000
 288:	00112623          	sw	ra,12(sp)
 28c:	00812423          	sw	s0,8(sp)
 290:	fff78793          	addi	a5,a5,-1 # efffffff <__ctr0_io_space_begin+0xf00001ff>
 294:	34479073          	csrw	mip,a5
 298:	02e00513          	li	a0,46
 29c:	364000ef          	jal	ra,600 <neorv32_uart0_putc>
 2a0:	82c18413          	addi	s0,gp,-2004 # 8000002c <cout>
 2a4:	fcc02583          	lw	a1,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 2a8:	00044683          	lbu	a3,0(s0)
 2ac:	fc802603          	lw	a2,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 2b0:	00001537          	lui	a0,0x1
 2b4:	ed850513          	addi	a0,a0,-296 # ed8 <__etext+0xc>
 2b8:	3b8000ef          	jal	ra,670 <neorv32_uart0_printf>
 2bc:	00044783          	lbu	a5,0(s0)
 2c0:	00700713          	li	a4,7
 2c4:	02e79463          	bne	a5,a4,2ec <gptmr_firq_handler+0x6c>
 2c8:	00040023          	sb	zero,0(s0)
 2cc:	80000537          	lui	a0,0x80000
 2d0:	00000613          	li	a2,0
 2d4:	82418593          	addi	a1,gp,-2012 # 80000024 <pins>
 2d8:	00050513          	mv	a0,a0
 2dc:	00812403          	lw	s0,8(sp)
 2e0:	00c12083          	lw	ra,12(sp)
 2e4:	01010113          	addi	sp,sp,16
 2e8:	f25ff06f          	j	20c <displayLine>
 2ec:	00178793          	addi	a5,a5,1
 2f0:	0ff7f793          	andi	a5,a5,255
 2f4:	00f40023          	sb	a5,0(s0)
 2f8:	00600713          	li	a4,6
 2fc:	08f76c63          	bltu	a4,a5,394 <gptmr_firq_handler+0x114>
 300:	00001737          	lui	a4,0x1
 304:	00279793          	slli	a5,a5,0x2
 308:	ee870713          	addi	a4,a4,-280 # ee8 <__etext+0x1c>
 30c:	00e787b3          	add	a5,a5,a4
 310:	0007a783          	lw	a5,0(a5)
 314:	80000537          	lui	a0,0x80000
 318:	00078067          	jr	a5
 31c:	00050513          	mv	a0,a0
 320:	00100613          	li	a2,1
 324:	82418593          	addi	a1,gp,-2012 # 80000024 <pins>
 328:	00550513          	addi	a0,a0,5 # 80000005 <__ctr0_io_space_begin+0x80000205>
 32c:	fb1ff06f          	j	2dc <gptmr_firq_handler+0x5c>
 330:	00050513          	mv	a0,a0
 334:	00200613          	li	a2,2
 338:	82418593          	addi	a1,gp,-2012 # 80000024 <pins>
 33c:	00a50513          	addi	a0,a0,10
 340:	f9dff06f          	j	2dc <gptmr_firq_handler+0x5c>
 344:	00050513          	mv	a0,a0
 348:	00300613          	li	a2,3
 34c:	82418593          	addi	a1,gp,-2012 # 80000024 <pins>
 350:	00f50513          	addi	a0,a0,15
 354:	f89ff06f          	j	2dc <gptmr_firq_handler+0x5c>
 358:	00050513          	mv	a0,a0
 35c:	00400613          	li	a2,4
 360:	82418593          	addi	a1,gp,-2012 # 80000024 <pins>
 364:	01450513          	addi	a0,a0,20
 368:	f75ff06f          	j	2dc <gptmr_firq_handler+0x5c>
 36c:	00050513          	mv	a0,a0
 370:	00500613          	li	a2,5
 374:	82418593          	addi	a1,gp,-2012 # 80000024 <pins>
 378:	01950513          	addi	a0,a0,25
 37c:	f61ff06f          	j	2dc <gptmr_firq_handler+0x5c>
 380:	00050513          	mv	a0,a0
 384:	00600613          	li	a2,6
 388:	82418593          	addi	a1,gp,-2012 # 80000024 <pins>
 38c:	01e50513          	addi	a0,a0,30
 390:	f4dff06f          	j	2dc <gptmr_firq_handler+0x5c>
 394:	00c12083          	lw	ra,12(sp)
 398:	00812403          	lw	s0,8(sp)
 39c:	01010113          	addi	sp,sp,16
 3a0:	00008067          	ret

000003a4 <neorv32_gptmr_setup>:
 3a4:	f6000793          	li	a5,-160
 3a8:	00757513          	andi	a0,a0,7
 3ac:	0015f593          	andi	a1,a1,1
 3b0:	0007a023          	sw	zero,0(a5)
 3b4:	00151513          	slli	a0,a0,0x1
 3b8:	00459593          	slli	a1,a1,0x4
 3bc:	00c7a223          	sw	a2,4(a5)
 3c0:	00b56533          	or	a0,a0,a1
 3c4:	0007a423          	sw	zero,8(a5)
 3c8:	00156513          	ori	a0,a0,1
 3cc:	00a7a023          	sw	a0,0(a5)
 3d0:	00008067          	ret

000003d4 <__neorv32_uart_itoa>:
 3d4:	fd010113          	addi	sp,sp,-48
 3d8:	02812423          	sw	s0,40(sp)
 3dc:	02912223          	sw	s1,36(sp)
 3e0:	03212023          	sw	s2,32(sp)
 3e4:	01312e23          	sw	s3,28(sp)
 3e8:	01412c23          	sw	s4,24(sp)
 3ec:	02112623          	sw	ra,44(sp)
 3f0:	01512a23          	sw	s5,20(sp)
 3f4:	00001a37          	lui	s4,0x1
 3f8:	00050493          	mv	s1,a0
 3fc:	00058413          	mv	s0,a1
 400:	00058523          	sb	zero,10(a1)
 404:	00000993          	li	s3,0
 408:	00410913          	addi	s2,sp,4
 40c:	f3ca0a13          	addi	s4,s4,-196 # f3c <numbers.1>
 410:	00a00593          	li	a1,10
 414:	00048513          	mv	a0,s1
 418:	251000ef          	jal	ra,e68 <__umodsi3>
 41c:	00aa0533          	add	a0,s4,a0
 420:	00054783          	lbu	a5,0(a0)
 424:	01390ab3          	add	s5,s2,s3
 428:	00048513          	mv	a0,s1
 42c:	00fa8023          	sb	a5,0(s5)
 430:	00a00593          	li	a1,10
 434:	1ed000ef          	jal	ra,e20 <__udivsi3>
 438:	00198993          	addi	s3,s3,1
 43c:	00a00793          	li	a5,10
 440:	00050493          	mv	s1,a0
 444:	fcf996e3          	bne	s3,a5,410 <__neorv32_uart_itoa+0x3c>
 448:	00090693          	mv	a3,s2
 44c:	00900713          	li	a4,9
 450:	03000613          	li	a2,48
 454:	0096c583          	lbu	a1,9(a3)
 458:	00070793          	mv	a5,a4
 45c:	fff70713          	addi	a4,a4,-1
 460:	01071713          	slli	a4,a4,0x10
 464:	01075713          	srli	a4,a4,0x10
 468:	00c59a63          	bne	a1,a2,47c <__neorv32_uart_itoa+0xa8>
 46c:	000684a3          	sb	zero,9(a3)
 470:	fff68693          	addi	a3,a3,-1
 474:	fe0710e3          	bnez	a4,454 <__neorv32_uart_itoa+0x80>
 478:	00000793          	li	a5,0
 47c:	00f907b3          	add	a5,s2,a5
 480:	00000593          	li	a1,0
 484:	0007c703          	lbu	a4,0(a5)
 488:	00070c63          	beqz	a4,4a0 <__neorv32_uart_itoa+0xcc>
 48c:	00158693          	addi	a3,a1,1
 490:	00b405b3          	add	a1,s0,a1
 494:	00e58023          	sb	a4,0(a1)
 498:	01069593          	slli	a1,a3,0x10
 49c:	0105d593          	srli	a1,a1,0x10
 4a0:	fff78713          	addi	a4,a5,-1
 4a4:	02f91863          	bne	s2,a5,4d4 <__neorv32_uart_itoa+0x100>
 4a8:	00b40433          	add	s0,s0,a1
 4ac:	00040023          	sb	zero,0(s0)
 4b0:	02c12083          	lw	ra,44(sp)
 4b4:	02812403          	lw	s0,40(sp)
 4b8:	02412483          	lw	s1,36(sp)
 4bc:	02012903          	lw	s2,32(sp)
 4c0:	01c12983          	lw	s3,28(sp)
 4c4:	01812a03          	lw	s4,24(sp)
 4c8:	01412a83          	lw	s5,20(sp)
 4cc:	03010113          	addi	sp,sp,48
 4d0:	00008067          	ret
 4d4:	00070793          	mv	a5,a4
 4d8:	fadff06f          	j	484 <__neorv32_uart_itoa+0xb0>

000004dc <__neorv32_uart_tohex>:
 4dc:	00001637          	lui	a2,0x1
 4e0:	00758693          	addi	a3,a1,7
 4e4:	00000713          	li	a4,0
 4e8:	f4860613          	addi	a2,a2,-184 # f48 <symbols.0>
 4ec:	02000813          	li	a6,32
 4f0:	00e557b3          	srl	a5,a0,a4
 4f4:	00f7f793          	andi	a5,a5,15
 4f8:	00f607b3          	add	a5,a2,a5
 4fc:	0007c783          	lbu	a5,0(a5)
 500:	00470713          	addi	a4,a4,4
 504:	fff68693          	addi	a3,a3,-1
 508:	00f680a3          	sb	a5,1(a3)
 50c:	ff0712e3          	bne	a4,a6,4f0 <__neorv32_uart_tohex+0x14>
 510:	00058423          	sb	zero,8(a1)
 514:	00008067          	ret

00000518 <__neorv32_uart_touppercase.constprop.0>:
 518:	00b50693          	addi	a3,a0,11
 51c:	01900613          	li	a2,25
 520:	00054783          	lbu	a5,0(a0)
 524:	f9f78713          	addi	a4,a5,-97
 528:	0ff77713          	andi	a4,a4,255
 52c:	00e66663          	bltu	a2,a4,538 <__neorv32_uart_touppercase.constprop.0+0x20>
 530:	fe078793          	addi	a5,a5,-32
 534:	00f50023          	sb	a5,0(a0)
 538:	00150513          	addi	a0,a0,1
 53c:	fed512e3          	bne	a0,a3,520 <__neorv32_uart_touppercase.constprop.0+0x8>
 540:	00008067          	ret

00000544 <neorv32_uart0_available>:
 544:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 548:	01255513          	srli	a0,a0,0x12
 54c:	00157513          	andi	a0,a0,1
 550:	00008067          	ret

00000554 <neorv32_uart0_setup>:
 554:	ff010113          	addi	sp,sp,-16
 558:	00812423          	sw	s0,8(sp)
 55c:	00912223          	sw	s1,4(sp)
 560:	00112623          	sw	ra,12(sp)
 564:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 568:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 56c:	00058413          	mv	s0,a1
 570:	00151593          	slli	a1,a0,0x1
 574:	00078513          	mv	a0,a5
 578:	00060493          	mv	s1,a2
 57c:	0a5000ef          	jal	ra,e20 <__udivsi3>
 580:	01051513          	slli	a0,a0,0x10
 584:	000017b7          	lui	a5,0x1
 588:	01055513          	srli	a0,a0,0x10
 58c:	00000713          	li	a4,0
 590:	ffe78793          	addi	a5,a5,-2 # ffe <symbols.0+0xb6>
 594:	04a7e463          	bltu	a5,a0,5dc <neorv32_uart0_setup+0x88>
 598:	0034f793          	andi	a5,s1,3
 59c:	00347413          	andi	s0,s0,3
 5a0:	fff50513          	addi	a0,a0,-1
 5a4:	01479793          	slli	a5,a5,0x14
 5a8:	01641413          	slli	s0,s0,0x16
 5ac:	00f567b3          	or	a5,a0,a5
 5b0:	0087e7b3          	or	a5,a5,s0
 5b4:	01871713          	slli	a4,a4,0x18
 5b8:	00c12083          	lw	ra,12(sp)
 5bc:	00812403          	lw	s0,8(sp)
 5c0:	00e7e7b3          	or	a5,a5,a4
 5c4:	10000737          	lui	a4,0x10000
 5c8:	00e7e7b3          	or	a5,a5,a4
 5cc:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 5d0:	00412483          	lw	s1,4(sp)
 5d4:	01010113          	addi	sp,sp,16
 5d8:	00008067          	ret
 5dc:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffedf6>
 5e0:	0fd6f693          	andi	a3,a3,253
 5e4:	00069a63          	bnez	a3,5f8 <neorv32_uart0_setup+0xa4>
 5e8:	00355513          	srli	a0,a0,0x3
 5ec:	00170713          	addi	a4,a4,1
 5f0:	0ff77713          	andi	a4,a4,255
 5f4:	fa1ff06f          	j	594 <neorv32_uart0_setup+0x40>
 5f8:	00155513          	srli	a0,a0,0x1
 5fc:	ff1ff06f          	j	5ec <neorv32_uart0_setup+0x98>

00000600 <neorv32_uart0_putc>:
 600:	00040737          	lui	a4,0x40
 604:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 608:	00e7f7b3          	and	a5,a5,a4
 60c:	fe079ce3          	bnez	a5,604 <neorv32_uart0_putc+0x4>
 610:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 614:	00008067          	ret

00000618 <neorv32_uart0_print>:
 618:	ff010113          	addi	sp,sp,-16
 61c:	00812423          	sw	s0,8(sp)
 620:	01212023          	sw	s2,0(sp)
 624:	00112623          	sw	ra,12(sp)
 628:	00912223          	sw	s1,4(sp)
 62c:	00050413          	mv	s0,a0
 630:	00a00913          	li	s2,10
 634:	00044483          	lbu	s1,0(s0)
 638:	00140413          	addi	s0,s0,1
 63c:	00049e63          	bnez	s1,658 <neorv32_uart0_print+0x40>
 640:	00c12083          	lw	ra,12(sp)
 644:	00812403          	lw	s0,8(sp)
 648:	00412483          	lw	s1,4(sp)
 64c:	00012903          	lw	s2,0(sp)
 650:	01010113          	addi	sp,sp,16
 654:	00008067          	ret
 658:	01249663          	bne	s1,s2,664 <neorv32_uart0_print+0x4c>
 65c:	00d00513          	li	a0,13
 660:	fa1ff0ef          	jal	ra,600 <neorv32_uart0_putc>
 664:	00048513          	mv	a0,s1
 668:	f99ff0ef          	jal	ra,600 <neorv32_uart0_putc>
 66c:	fc9ff06f          	j	634 <neorv32_uart0_print+0x1c>

00000670 <neorv32_uart0_printf>:
 670:	fa010113          	addi	sp,sp,-96
 674:	04f12a23          	sw	a5,84(sp)
 678:	04410793          	addi	a5,sp,68
 67c:	02812c23          	sw	s0,56(sp)
 680:	03212823          	sw	s2,48(sp)
 684:	03312623          	sw	s3,44(sp)
 688:	03512223          	sw	s5,36(sp)
 68c:	03612023          	sw	s6,32(sp)
 690:	01712e23          	sw	s7,28(sp)
 694:	01812c23          	sw	s8,24(sp)
 698:	01912a23          	sw	s9,20(sp)
 69c:	02112e23          	sw	ra,60(sp)
 6a0:	02912a23          	sw	s1,52(sp)
 6a4:	03412423          	sw	s4,40(sp)
 6a8:	00050413          	mv	s0,a0
 6ac:	04b12223          	sw	a1,68(sp)
 6b0:	04c12423          	sw	a2,72(sp)
 6b4:	04d12623          	sw	a3,76(sp)
 6b8:	04e12823          	sw	a4,80(sp)
 6bc:	05012c23          	sw	a6,88(sp)
 6c0:	05112e23          	sw	a7,92(sp)
 6c4:	00f12023          	sw	a5,0(sp)
 6c8:	02500a93          	li	s5,37
 6cc:	00a00b13          	li	s6,10
 6d0:	07000913          	li	s2,112
 6d4:	05800993          	li	s3,88
 6d8:	07500b93          	li	s7,117
 6dc:	07800c13          	li	s8,120
 6e0:	07300c93          	li	s9,115
 6e4:	00044483          	lbu	s1,0(s0)
 6e8:	02049c63          	bnez	s1,720 <neorv32_uart0_printf+0xb0>
 6ec:	03c12083          	lw	ra,60(sp)
 6f0:	03812403          	lw	s0,56(sp)
 6f4:	03412483          	lw	s1,52(sp)
 6f8:	03012903          	lw	s2,48(sp)
 6fc:	02c12983          	lw	s3,44(sp)
 700:	02812a03          	lw	s4,40(sp)
 704:	02412a83          	lw	s5,36(sp)
 708:	02012b03          	lw	s6,32(sp)
 70c:	01c12b83          	lw	s7,28(sp)
 710:	01812c03          	lw	s8,24(sp)
 714:	01412c83          	lw	s9,20(sp)
 718:	06010113          	addi	sp,sp,96
 71c:	00008067          	ret
 720:	0f549c63          	bne	s1,s5,818 <neorv32_uart0_printf+0x1a8>
 724:	00240a13          	addi	s4,s0,2
 728:	00144403          	lbu	s0,1(s0)
 72c:	0d240263          	beq	s0,s2,7f0 <neorv32_uart0_printf+0x180>
 730:	06896463          	bltu	s2,s0,798 <neorv32_uart0_printf+0x128>
 734:	06300793          	li	a5,99
 738:	08f40463          	beq	s0,a5,7c0 <neorv32_uart0_printf+0x150>
 73c:	0087ec63          	bltu	a5,s0,754 <neorv32_uart0_printf+0xe4>
 740:	0b340863          	beq	s0,s3,7f0 <neorv32_uart0_printf+0x180>
 744:	02500513          	li	a0,37
 748:	eb9ff0ef          	jal	ra,600 <neorv32_uart0_putc>
 74c:	00040513          	mv	a0,s0
 750:	0800006f          	j	7d0 <neorv32_uart0_printf+0x160>
 754:	06400793          	li	a5,100
 758:	00f40663          	beq	s0,a5,764 <neorv32_uart0_printf+0xf4>
 75c:	06900793          	li	a5,105
 760:	fef412e3          	bne	s0,a5,744 <neorv32_uart0_printf+0xd4>
 764:	00012783          	lw	a5,0(sp)
 768:	0007a403          	lw	s0,0(a5)
 76c:	00478713          	addi	a4,a5,4
 770:	00e12023          	sw	a4,0(sp)
 774:	00045863          	bgez	s0,784 <neorv32_uart0_printf+0x114>
 778:	02d00513          	li	a0,45
 77c:	40800433          	neg	s0,s0
 780:	e81ff0ef          	jal	ra,600 <neorv32_uart0_putc>
 784:	00410593          	addi	a1,sp,4
 788:	00040513          	mv	a0,s0
 78c:	c49ff0ef          	jal	ra,3d4 <__neorv32_uart_itoa>
 790:	00410513          	addi	a0,sp,4
 794:	0200006f          	j	7b4 <neorv32_uart0_printf+0x144>
 798:	05740063          	beq	s0,s7,7d8 <neorv32_uart0_printf+0x168>
 79c:	05840a63          	beq	s0,s8,7f0 <neorv32_uart0_printf+0x180>
 7a0:	fb9412e3          	bne	s0,s9,744 <neorv32_uart0_printf+0xd4>
 7a4:	00012783          	lw	a5,0(sp)
 7a8:	0007a503          	lw	a0,0(a5)
 7ac:	00478713          	addi	a4,a5,4
 7b0:	00e12023          	sw	a4,0(sp)
 7b4:	e65ff0ef          	jal	ra,618 <neorv32_uart0_print>
 7b8:	000a0413          	mv	s0,s4
 7bc:	f29ff06f          	j	6e4 <neorv32_uart0_printf+0x74>
 7c0:	00012783          	lw	a5,0(sp)
 7c4:	0007c503          	lbu	a0,0(a5)
 7c8:	00478713          	addi	a4,a5,4
 7cc:	00e12023          	sw	a4,0(sp)
 7d0:	e31ff0ef          	jal	ra,600 <neorv32_uart0_putc>
 7d4:	fe5ff06f          	j	7b8 <neorv32_uart0_printf+0x148>
 7d8:	00012783          	lw	a5,0(sp)
 7dc:	00410593          	addi	a1,sp,4
 7e0:	00478713          	addi	a4,a5,4
 7e4:	0007a503          	lw	a0,0(a5)
 7e8:	00e12023          	sw	a4,0(sp)
 7ec:	fa1ff06f          	j	78c <neorv32_uart0_printf+0x11c>
 7f0:	00012783          	lw	a5,0(sp)
 7f4:	00410593          	addi	a1,sp,4
 7f8:	0007a503          	lw	a0,0(a5)
 7fc:	00478713          	addi	a4,a5,4
 800:	00e12023          	sw	a4,0(sp)
 804:	cd9ff0ef          	jal	ra,4dc <__neorv32_uart_tohex>
 808:	f93414e3          	bne	s0,s3,790 <neorv32_uart0_printf+0x120>
 80c:	00410513          	addi	a0,sp,4
 810:	d09ff0ef          	jal	ra,518 <__neorv32_uart_touppercase.constprop.0>
 814:	f7dff06f          	j	790 <neorv32_uart0_printf+0x120>
 818:	01649663          	bne	s1,s6,824 <neorv32_uart0_printf+0x1b4>
 81c:	00d00513          	li	a0,13
 820:	de1ff0ef          	jal	ra,600 <neorv32_uart0_putc>
 824:	00140a13          	addi	s4,s0,1
 828:	00048513          	mv	a0,s1
 82c:	fa5ff06f          	j	7d0 <neorv32_uart0_printf+0x160>

00000830 <neorv32_cpu_irq_enable>:
 830:	01f00793          	li	a5,31
 834:	00050713          	mv	a4,a0
 838:	02a7e663          	bltu	a5,a0,864 <neorv32_cpu_irq_enable+0x34>
 83c:	ffff17b7          	lui	a5,0xffff1
 840:	88878793          	addi	a5,a5,-1912 # ffff0888 <__ctr0_io_space_begin+0xffff0a88>
 844:	00a7d7b3          	srl	a5,a5,a0
 848:	0017f793          	andi	a5,a5,1
 84c:	00100513          	li	a0,1
 850:	00078c63          	beqz	a5,868 <neorv32_cpu_irq_enable+0x38>
 854:	00e51533          	sll	a0,a0,a4
 858:	30452073          	csrs	mie,a0
 85c:	00000513          	li	a0,0
 860:	00008067          	ret
 864:	00100513          	li	a0,1
 868:	00008067          	ret

0000086c <__neorv32_rte_core>:
 86c:	fc010113          	addi	sp,sp,-64
 870:	02112e23          	sw	ra,60(sp)
 874:	02512c23          	sw	t0,56(sp)
 878:	02612a23          	sw	t1,52(sp)
 87c:	02712823          	sw	t2,48(sp)
 880:	02a12623          	sw	a0,44(sp)
 884:	02b12423          	sw	a1,40(sp)
 888:	02c12223          	sw	a2,36(sp)
 88c:	02d12023          	sw	a3,32(sp)
 890:	00e12e23          	sw	a4,28(sp)
 894:	00f12c23          	sw	a5,24(sp)
 898:	01012a23          	sw	a6,20(sp)
 89c:	01112823          	sw	a7,16(sp)
 8a0:	01c12623          	sw	t3,12(sp)
 8a4:	01d12423          	sw	t4,8(sp)
 8a8:	01e12223          	sw	t5,4(sp)
 8ac:	01f12023          	sw	t6,0(sp)
 8b0:	341026f3          	csrr	a3,mepc
 8b4:	34069073          	csrw	mscratch,a3
 8b8:	342027f3          	csrr	a5,mcause
 8bc:	0607c063          	bltz	a5,91c <__neorv32_rte_core+0xb0>
 8c0:	0006d703          	lhu	a4,0(a3)
 8c4:	01071713          	slli	a4,a4,0x10
 8c8:	01075713          	srli	a4,a4,0x10
 8cc:	00468593          	addi	a1,a3,4
 8d0:	30102673          	csrr	a2,misa
 8d4:	00467613          	andi	a2,a2,4
 8d8:	00060a63          	beqz	a2,8ec <__neorv32_rte_core+0x80>
 8dc:	00377713          	andi	a4,a4,3
 8e0:	00300613          	li	a2,3
 8e4:	00c70463          	beq	a4,a2,8ec <__neorv32_rte_core+0x80>
 8e8:	00268593          	addi	a1,a3,2
 8ec:	34159073          	csrw	mepc,a1
 8f0:	00b00713          	li	a4,11
 8f4:	00f77863          	bgeu	a4,a5,904 <__neorv32_rte_core+0x98>
 8f8:	000017b7          	lui	a5,0x1
 8fc:	ae878793          	addi	a5,a5,-1304 # ae8 <__neorv32_rte_debug_exc_handler>
 900:	04c0006f          	j	94c <__neorv32_rte_core+0xe0>
 904:	00001737          	lui	a4,0x1
 908:	00279793          	slli	a5,a5,0x2
 90c:	f5c70713          	addi	a4,a4,-164 # f5c <symbols.0+0x14>
 910:	00e787b3          	add	a5,a5,a4
 914:	0007a783          	lw	a5,0(a5)
 918:	00078067          	jr	a5
 91c:	80000737          	lui	a4,0x80000
 920:	ffd74713          	xori	a4,a4,-3
 924:	00e787b3          	add	a5,a5,a4
 928:	01c00713          	li	a4,28
 92c:	fcf766e3          	bltu	a4,a5,8f8 <__neorv32_rte_core+0x8c>
 930:	00001737          	lui	a4,0x1
 934:	00279793          	slli	a5,a5,0x2
 938:	f8c70713          	addi	a4,a4,-116 # f8c <symbols.0+0x44>
 93c:	00e787b3          	add	a5,a5,a4
 940:	0007a783          	lw	a5,0(a5)
 944:	00078067          	jr	a5
 948:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut>
 94c:	000780e7          	jalr	a5
 950:	03c12083          	lw	ra,60(sp)
 954:	03812283          	lw	t0,56(sp)
 958:	03412303          	lw	t1,52(sp)
 95c:	03012383          	lw	t2,48(sp)
 960:	02c12503          	lw	a0,44(sp)
 964:	02812583          	lw	a1,40(sp)
 968:	02412603          	lw	a2,36(sp)
 96c:	02012683          	lw	a3,32(sp)
 970:	01c12703          	lw	a4,28(sp)
 974:	01812783          	lw	a5,24(sp)
 978:	01412803          	lw	a6,20(sp)
 97c:	01012883          	lw	a7,16(sp)
 980:	00c12e03          	lw	t3,12(sp)
 984:	00812e83          	lw	t4,8(sp)
 988:	00412f03          	lw	t5,4(sp)
 98c:	00012f83          	lw	t6,0(sp)
 990:	04010113          	addi	sp,sp,64
 994:	30200073          	mret
 998:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x4>
 99c:	fb1ff06f          	j	94c <__neorv32_rte_core+0xe0>
 9a0:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x8>
 9a4:	fa9ff06f          	j	94c <__neorv32_rte_core+0xe0>
 9a8:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0xc>
 9ac:	fa1ff06f          	j	94c <__neorv32_rte_core+0xe0>
 9b0:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x10>
 9b4:	f99ff06f          	j	94c <__neorv32_rte_core+0xe0>
 9b8:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x14>
 9bc:	f91ff06f          	j	94c <__neorv32_rte_core+0xe0>
 9c0:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x18>
 9c4:	f89ff06f          	j	94c <__neorv32_rte_core+0xe0>
 9c8:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x1c>
 9cc:	f81ff06f          	j	94c <__neorv32_rte_core+0xe0>
 9d0:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x20>
 9d4:	f79ff06f          	j	94c <__neorv32_rte_core+0xe0>
 9d8:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x24>
 9dc:	f71ff06f          	j	94c <__neorv32_rte_core+0xe0>
 9e0:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x28>
 9e4:	f69ff06f          	j	94c <__neorv32_rte_core+0xe0>
 9e8:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x2c>
 9ec:	f61ff06f          	j	94c <__neorv32_rte_core+0xe0>
 9f0:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x30>
 9f4:	f59ff06f          	j	94c <__neorv32_rte_core+0xe0>
 9f8:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x34>
 9fc:	f51ff06f          	j	94c <__neorv32_rte_core+0xe0>
 a00:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x38>
 a04:	f49ff06f          	j	94c <__neorv32_rte_core+0xe0>
 a08:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x3c>
 a0c:	f41ff06f          	j	94c <__neorv32_rte_core+0xe0>
 a10:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x40>
 a14:	f39ff06f          	j	94c <__neorv32_rte_core+0xe0>
 a18:	8741a783          	lw	a5,-1932(gp) # 80000074 <__neorv32_rte_vector_lut+0x44>
 a1c:	f31ff06f          	j	94c <__neorv32_rte_core+0xe0>
 a20:	8781a783          	lw	a5,-1928(gp) # 80000078 <__neorv32_rte_vector_lut+0x48>
 a24:	f29ff06f          	j	94c <__neorv32_rte_core+0xe0>
 a28:	87c1a783          	lw	a5,-1924(gp) # 8000007c <__neorv32_rte_vector_lut+0x4c>
 a2c:	f21ff06f          	j	94c <__neorv32_rte_core+0xe0>
 a30:	8801a783          	lw	a5,-1920(gp) # 80000080 <__neorv32_rte_vector_lut+0x50>
 a34:	f19ff06f          	j	94c <__neorv32_rte_core+0xe0>
 a38:	8841a783          	lw	a5,-1916(gp) # 80000084 <__neorv32_rte_vector_lut+0x54>
 a3c:	f11ff06f          	j	94c <__neorv32_rte_core+0xe0>
 a40:	8881a783          	lw	a5,-1912(gp) # 80000088 <__neorv32_rte_vector_lut+0x58>
 a44:	f09ff06f          	j	94c <__neorv32_rte_core+0xe0>
 a48:	88c1a783          	lw	a5,-1908(gp) # 8000008c <__neorv32_rte_vector_lut+0x5c>
 a4c:	f01ff06f          	j	94c <__neorv32_rte_core+0xe0>
 a50:	8901a783          	lw	a5,-1904(gp) # 80000090 <__neorv32_rte_vector_lut+0x60>
 a54:	ef9ff06f          	j	94c <__neorv32_rte_core+0xe0>
 a58:	8941a783          	lw	a5,-1900(gp) # 80000094 <__neorv32_rte_vector_lut+0x64>
 a5c:	ef1ff06f          	j	94c <__neorv32_rte_core+0xe0>
 a60:	8981a783          	lw	a5,-1896(gp) # 80000098 <__neorv32_rte_vector_lut+0x68>
 a64:	ee9ff06f          	j	94c <__neorv32_rte_core+0xe0>
 a68:	89c1a783          	lw	a5,-1892(gp) # 8000009c <__neorv32_rte_vector_lut+0x6c>
 a6c:	ee1ff06f          	j	94c <__neorv32_rte_core+0xe0>
 a70:	8a01a783          	lw	a5,-1888(gp) # 800000a0 <__neorv32_rte_vector_lut+0x70>
 a74:	ed9ff06f          	j	94c <__neorv32_rte_core+0xe0>

00000a78 <__neorv32_rte_print_hex_word>:
 a78:	fe010113          	addi	sp,sp,-32
 a7c:	01212823          	sw	s2,16(sp)
 a80:	00050913          	mv	s2,a0
 a84:	00001537          	lui	a0,0x1
 a88:	00912a23          	sw	s1,20(sp)
 a8c:	00050513          	mv	a0,a0
 a90:	000014b7          	lui	s1,0x1
 a94:	00812c23          	sw	s0,24(sp)
 a98:	01312623          	sw	s3,12(sp)
 a9c:	00112e23          	sw	ra,28(sp)
 aa0:	01c00413          	li	s0,28
 aa4:	b75ff0ef          	jal	ra,618 <neorv32_uart0_print>
 aa8:	1f848493          	addi	s1,s1,504 # 11f8 <hex_symbols.0>
 aac:	ffc00993          	li	s3,-4
 ab0:	008957b3          	srl	a5,s2,s0
 ab4:	00f7f793          	andi	a5,a5,15
 ab8:	00f487b3          	add	a5,s1,a5
 abc:	0007c503          	lbu	a0,0(a5)
 ac0:	ffc40413          	addi	s0,s0,-4
 ac4:	b3dff0ef          	jal	ra,600 <neorv32_uart0_putc>
 ac8:	ff3414e3          	bne	s0,s3,ab0 <__neorv32_rte_print_hex_word+0x38>
 acc:	01c12083          	lw	ra,28(sp)
 ad0:	01812403          	lw	s0,24(sp)
 ad4:	01412483          	lw	s1,20(sp)
 ad8:	01012903          	lw	s2,16(sp)
 adc:	00c12983          	lw	s3,12(sp)
 ae0:	02010113          	addi	sp,sp,32
 ae4:	00008067          	ret

00000ae8 <__neorv32_rte_debug_exc_handler>:
 ae8:	ff010113          	addi	sp,sp,-16
 aec:	00112623          	sw	ra,12(sp)
 af0:	00812423          	sw	s0,8(sp)
 af4:	00912223          	sw	s1,4(sp)
 af8:	a4dff0ef          	jal	ra,544 <neorv32_uart0_available>
 afc:	1c050863          	beqz	a0,ccc <__neorv32_rte_debug_exc_handler+0x1e4>
 b00:	00001537          	lui	a0,0x1
 b04:	00450513          	addi	a0,a0,4 # 1004 <symbols.0+0xbc>
 b08:	b11ff0ef          	jal	ra,618 <neorv32_uart0_print>
 b0c:	34202473          	csrr	s0,mcause
 b10:	00900713          	li	a4,9
 b14:	00f47793          	andi	a5,s0,15
 b18:	03078493          	addi	s1,a5,48
 b1c:	00f77463          	bgeu	a4,a5,b24 <__neorv32_rte_debug_exc_handler+0x3c>
 b20:	05778493          	addi	s1,a5,87
 b24:	00b00793          	li	a5,11
 b28:	0087ee63          	bltu	a5,s0,b44 <__neorv32_rte_debug_exc_handler+0x5c>
 b2c:	00001737          	lui	a4,0x1
 b30:	00241793          	slli	a5,s0,0x2
 b34:	1c870713          	addi	a4,a4,456 # 11c8 <symbols.0+0x280>
 b38:	00e787b3          	add	a5,a5,a4
 b3c:	0007a783          	lw	a5,0(a5)
 b40:	00078067          	jr	a5
 b44:	800007b7          	lui	a5,0x80000
 b48:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 b4c:	14e40e63          	beq	s0,a4,ca8 <__neorv32_rte_debug_exc_handler+0x1c0>
 b50:	02876a63          	bltu	a4,s0,b84 <__neorv32_rte_debug_exc_handler+0x9c>
 b54:	00378713          	addi	a4,a5,3
 b58:	12e40c63          	beq	s0,a4,c90 <__neorv32_rte_debug_exc_handler+0x1a8>
 b5c:	00778793          	addi	a5,a5,7
 b60:	12f40e63          	beq	s0,a5,c9c <__neorv32_rte_debug_exc_handler+0x1b4>
 b64:	00001537          	lui	a0,0x1
 b68:	16450513          	addi	a0,a0,356 # 1164 <symbols.0+0x21c>
 b6c:	aadff0ef          	jal	ra,618 <neorv32_uart0_print>
 b70:	00040513          	mv	a0,s0
 b74:	f05ff0ef          	jal	ra,a78 <__neorv32_rte_print_hex_word>
 b78:	00100793          	li	a5,1
 b7c:	08f40c63          	beq	s0,a5,c14 <__neorv32_rte_debug_exc_handler+0x12c>
 b80:	0280006f          	j	ba8 <__neorv32_rte_debug_exc_handler+0xc0>
 b84:	ff07c793          	xori	a5,a5,-16
 b88:	00f407b3          	add	a5,s0,a5
 b8c:	00f00713          	li	a4,15
 b90:	fcf76ae3          	bltu	a4,a5,b64 <__neorv32_rte_debug_exc_handler+0x7c>
 b94:	00001537          	lui	a0,0x1
 b98:	15450513          	addi	a0,a0,340 # 1154 <symbols.0+0x20c>
 b9c:	a7dff0ef          	jal	ra,618 <neorv32_uart0_print>
 ba0:	00048513          	mv	a0,s1
 ba4:	a5dff0ef          	jal	ra,600 <neorv32_uart0_putc>
 ba8:	ffd47413          	andi	s0,s0,-3
 bac:	00500793          	li	a5,5
 bb0:	06f40263          	beq	s0,a5,c14 <__neorv32_rte_debug_exc_handler+0x12c>
 bb4:	00001537          	lui	a0,0x1
 bb8:	1a850513          	addi	a0,a0,424 # 11a8 <symbols.0+0x260>
 bbc:	a5dff0ef          	jal	ra,618 <neorv32_uart0_print>
 bc0:	34002573          	csrr	a0,mscratch
 bc4:	eb5ff0ef          	jal	ra,a78 <__neorv32_rte_print_hex_word>
 bc8:	00001537          	lui	a0,0x1
 bcc:	1b050513          	addi	a0,a0,432 # 11b0 <symbols.0+0x268>
 bd0:	a49ff0ef          	jal	ra,618 <neorv32_uart0_print>
 bd4:	34302573          	csrr	a0,mtval
 bd8:	ea1ff0ef          	jal	ra,a78 <__neorv32_rte_print_hex_word>
 bdc:	00812403          	lw	s0,8(sp)
 be0:	00c12083          	lw	ra,12(sp)
 be4:	00412483          	lw	s1,4(sp)
 be8:	00001537          	lui	a0,0x1
 bec:	1bc50513          	addi	a0,a0,444 # 11bc <symbols.0+0x274>
 bf0:	01010113          	addi	sp,sp,16
 bf4:	a25ff06f          	j	618 <neorv32_uart0_print>
 bf8:	00001537          	lui	a0,0x1
 bfc:	00c50513          	addi	a0,a0,12 # 100c <symbols.0+0xc4>
 c00:	a19ff0ef          	jal	ra,618 <neorv32_uart0_print>
 c04:	fb1ff06f          	j	bb4 <__neorv32_rte_debug_exc_handler+0xcc>
 c08:	00001537          	lui	a0,0x1
 c0c:	02c50513          	addi	a0,a0,44 # 102c <symbols.0+0xe4>
 c10:	a09ff0ef          	jal	ra,618 <neorv32_uart0_print>
 c14:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 c18:	0a07d463          	bgez	a5,cc0 <__neorv32_rte_debug_exc_handler+0x1d8>
 c1c:	0017f793          	andi	a5,a5,1
 c20:	08078a63          	beqz	a5,cb4 <__neorv32_rte_debug_exc_handler+0x1cc>
 c24:	00001537          	lui	a0,0x1
 c28:	17c50513          	addi	a0,a0,380 # 117c <symbols.0+0x234>
 c2c:	fd5ff06f          	j	c00 <__neorv32_rte_debug_exc_handler+0x118>
 c30:	00001537          	lui	a0,0x1
 c34:	04850513          	addi	a0,a0,72 # 1048 <symbols.0+0x100>
 c38:	fc9ff06f          	j	c00 <__neorv32_rte_debug_exc_handler+0x118>
 c3c:	00001537          	lui	a0,0x1
 c40:	05c50513          	addi	a0,a0,92 # 105c <symbols.0+0x114>
 c44:	fbdff06f          	j	c00 <__neorv32_rte_debug_exc_handler+0x118>
 c48:	00001537          	lui	a0,0x1
 c4c:	06850513          	addi	a0,a0,104 # 1068 <symbols.0+0x120>
 c50:	fb1ff06f          	j	c00 <__neorv32_rte_debug_exc_handler+0x118>
 c54:	00001537          	lui	a0,0x1
 c58:	08050513          	addi	a0,a0,128 # 1080 <symbols.0+0x138>
 c5c:	fb5ff06f          	j	c10 <__neorv32_rte_debug_exc_handler+0x128>
 c60:	00001537          	lui	a0,0x1
 c64:	09450513          	addi	a0,a0,148 # 1094 <symbols.0+0x14c>
 c68:	f99ff06f          	j	c00 <__neorv32_rte_debug_exc_handler+0x118>
 c6c:	00001537          	lui	a0,0x1
 c70:	0b050513          	addi	a0,a0,176 # 10b0 <symbols.0+0x168>
 c74:	f9dff06f          	j	c10 <__neorv32_rte_debug_exc_handler+0x128>
 c78:	00001537          	lui	a0,0x1
 c7c:	0c450513          	addi	a0,a0,196 # 10c4 <symbols.0+0x17c>
 c80:	f81ff06f          	j	c00 <__neorv32_rte_debug_exc_handler+0x118>
 c84:	00001537          	lui	a0,0x1
 c88:	0e450513          	addi	a0,a0,228 # 10e4 <symbols.0+0x19c>
 c8c:	f75ff06f          	j	c00 <__neorv32_rte_debug_exc_handler+0x118>
 c90:	00001537          	lui	a0,0x1
 c94:	10450513          	addi	a0,a0,260 # 1104 <symbols.0+0x1bc>
 c98:	f69ff06f          	j	c00 <__neorv32_rte_debug_exc_handler+0x118>
 c9c:	00001537          	lui	a0,0x1
 ca0:	12050513          	addi	a0,a0,288 # 1120 <symbols.0+0x1d8>
 ca4:	f5dff06f          	j	c00 <__neorv32_rte_debug_exc_handler+0x118>
 ca8:	00001537          	lui	a0,0x1
 cac:	13850513          	addi	a0,a0,312 # 1138 <symbols.0+0x1f0>
 cb0:	f51ff06f          	j	c00 <__neorv32_rte_debug_exc_handler+0x118>
 cb4:	00001537          	lui	a0,0x1
 cb8:	18c50513          	addi	a0,a0,396 # 118c <symbols.0+0x244>
 cbc:	f45ff06f          	j	c00 <__neorv32_rte_debug_exc_handler+0x118>
 cc0:	00001537          	lui	a0,0x1
 cc4:	19c50513          	addi	a0,a0,412 # 119c <symbols.0+0x254>
 cc8:	f39ff06f          	j	c00 <__neorv32_rte_debug_exc_handler+0x118>
 ccc:	00c12083          	lw	ra,12(sp)
 cd0:	00812403          	lw	s0,8(sp)
 cd4:	00412483          	lw	s1,4(sp)
 cd8:	01010113          	addi	sp,sp,16
 cdc:	00008067          	ret

00000ce0 <neorv32_rte_exception_install>:
 ce0:	01f00793          	li	a5,31
 ce4:	00a7ee63          	bltu	a5,a0,d00 <neorv32_rte_exception_install+0x20>
 ce8:	83018793          	addi	a5,gp,-2000 # 80000030 <__neorv32_rte_vector_lut>
 cec:	00251513          	slli	a0,a0,0x2
 cf0:	00a78533          	add	a0,a5,a0
 cf4:	00b52023          	sw	a1,0(a0)
 cf8:	00000513          	li	a0,0
 cfc:	00008067          	ret
 d00:	00100513          	li	a0,1
 d04:	00008067          	ret

00000d08 <neorv32_rte_exception_uninstall>:
 d08:	01f00793          	li	a5,31
 d0c:	02a7e263          	bltu	a5,a0,d30 <neorv32_rte_exception_uninstall+0x28>
 d10:	83018793          	addi	a5,gp,-2000 # 80000030 <__neorv32_rte_vector_lut>
 d14:	00251513          	slli	a0,a0,0x2
 d18:	00a78533          	add	a0,a5,a0
 d1c:	000017b7          	lui	a5,0x1
 d20:	ae878793          	addi	a5,a5,-1304 # ae8 <__neorv32_rte_debug_exc_handler>
 d24:	00f52023          	sw	a5,0(a0)
 d28:	00000513          	li	a0,0
 d2c:	00008067          	ret
 d30:	00100513          	li	a0,1
 d34:	00008067          	ret

00000d38 <neorv32_rte_setup>:
 d38:	ff010113          	addi	sp,sp,-16
 d3c:	000017b7          	lui	a5,0x1
 d40:	00112623          	sw	ra,12(sp)
 d44:	00812423          	sw	s0,8(sp)
 d48:	00912223          	sw	s1,4(sp)
 d4c:	86c78793          	addi	a5,a5,-1940 # 86c <__neorv32_rte_core>
 d50:	30579073          	csrw	mtvec,a5
 d54:	00000793          	li	a5,0
 d58:	30479073          	csrw	mie,a5
 d5c:	34479073          	csrw	mip,a5
 d60:	f6002e23          	sw	zero,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 d64:	00000413          	li	s0,0
 d68:	01d00493          	li	s1,29
 d6c:	00040513          	mv	a0,s0
 d70:	00140413          	addi	s0,s0,1
 d74:	0ff47413          	andi	s0,s0,255
 d78:	f91ff0ef          	jal	ra,d08 <neorv32_rte_exception_uninstall>
 d7c:	fe9418e3          	bne	s0,s1,d6c <neorv32_rte_setup+0x34>
 d80:	00c12083          	lw	ra,12(sp)
 d84:	00812403          	lw	s0,8(sp)
 d88:	00412483          	lw	s1,4(sp)
 d8c:	01010113          	addi	sp,sp,16
 d90:	00008067          	ret

00000d94 <neorv32_gpio_available>:
 d94:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 d98:	01055513          	srli	a0,a0,0x10
 d9c:	00157513          	andi	a0,a0,1
 da0:	00008067          	ret

00000da4 <neorv32_gpio_pin_set>:
 da4:	00100793          	li	a5,1
 da8:	01f00713          	li	a4,31
 dac:	00a797b3          	sll	a5,a5,a0
 db0:	00a74a63          	blt	a4,a0,dc4 <neorv32_gpio_pin_set+0x20>
 db4:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 db8:	00f767b3          	or	a5,a4,a5
 dbc:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 dc0:	00008067          	ret
 dc4:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 dc8:	00f767b3          	or	a5,a4,a5
 dcc:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 dd0:	00008067          	ret

00000dd4 <neorv32_gpio_pin_clr>:
 dd4:	00100793          	li	a5,1
 dd8:	00a797b3          	sll	a5,a5,a0
 ddc:	01f00713          	li	a4,31
 de0:	fff7c793          	not	a5,a5
 de4:	00a74a63          	blt	a4,a0,df8 <neorv32_gpio_pin_clr+0x24>
 de8:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 dec:	00f777b3          	and	a5,a4,a5
 df0:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 df4:	00008067          	ret
 df8:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 dfc:	00f777b3          	and	a5,a4,a5
 e00:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 e04:	00008067          	ret

00000e08 <neorv32_gpio_port_set>:
 e08:	fc000793          	li	a5,-64
 e0c:	00a7a423          	sw	a0,8(a5)
 e10:	00b7a623          	sw	a1,12(a5)
 e14:	00008067          	ret

00000e18 <__divsi3>:
 e18:	06054063          	bltz	a0,e78 <__umodsi3+0x10>
 e1c:	0605c663          	bltz	a1,e88 <__umodsi3+0x20>

00000e20 <__udivsi3>:
 e20:	00058613          	mv	a2,a1
 e24:	00050593          	mv	a1,a0
 e28:	fff00513          	li	a0,-1
 e2c:	02060c63          	beqz	a2,e64 <__udivsi3+0x44>
 e30:	00100693          	li	a3,1
 e34:	00b67a63          	bgeu	a2,a1,e48 <__udivsi3+0x28>
 e38:	00c05863          	blez	a2,e48 <__udivsi3+0x28>
 e3c:	00161613          	slli	a2,a2,0x1
 e40:	00169693          	slli	a3,a3,0x1
 e44:	feb66ae3          	bltu	a2,a1,e38 <__udivsi3+0x18>
 e48:	00000513          	li	a0,0
 e4c:	00c5e663          	bltu	a1,a2,e58 <__udivsi3+0x38>
 e50:	40c585b3          	sub	a1,a1,a2
 e54:	00d56533          	or	a0,a0,a3
 e58:	0016d693          	srli	a3,a3,0x1
 e5c:	00165613          	srli	a2,a2,0x1
 e60:	fe0696e3          	bnez	a3,e4c <__udivsi3+0x2c>
 e64:	00008067          	ret

00000e68 <__umodsi3>:
 e68:	00008293          	mv	t0,ra
 e6c:	fb5ff0ef          	jal	ra,e20 <__udivsi3>
 e70:	00058513          	mv	a0,a1
 e74:	00028067          	jr	t0
 e78:	40a00533          	neg	a0,a0
 e7c:	00b04863          	bgtz	a1,e8c <__umodsi3+0x24>
 e80:	40b005b3          	neg	a1,a1
 e84:	f9dff06f          	j	e20 <__udivsi3>
 e88:	40b005b3          	neg	a1,a1
 e8c:	00008293          	mv	t0,ra
 e90:	f91ff0ef          	jal	ra,e20 <__udivsi3>
 e94:	40a00533          	neg	a0,a0
 e98:	00028067          	jr	t0

00000e9c <__modsi3>:
 e9c:	00008293          	mv	t0,ra
 ea0:	0005ca63          	bltz	a1,eb4 <__modsi3+0x18>
 ea4:	00054c63          	bltz	a0,ebc <__modsi3+0x20>
 ea8:	f79ff0ef          	jal	ra,e20 <__udivsi3>
 eac:	00058513          	mv	a0,a1
 eb0:	00028067          	jr	t0
 eb4:	40b005b3          	neg	a1,a1
 eb8:	fe0558e3          	bgez	a0,ea8 <__modsi3+0xc>
 ebc:	40a00533          	neg	a0,a0
 ec0:	f61ff0ef          	jal	ra,e20 <__udivsi3>
 ec4:	40b00533          	neg	a0,a1
 ec8:	00028067          	jr	t0
