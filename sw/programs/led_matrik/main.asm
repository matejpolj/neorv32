
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
  c0:	82c18593          	addi	a1,gp,-2004 # 8000002c <cout.0>
  c4:	8a418613          	addi	a2,gp,-1884 # 800000a4 <__BSS_END__>

000000c8 <__crt0_clear_bss_loop>:
  c8:	00c5d863          	bge	a1,a2,d8 <__crt0_clear_bss_loop_end>
  cc:	00058023          	sb	zero,0(a1)
  d0:	00158593          	addi	a1,a1,1
  d4:	ff5ff06f          	j	c8 <__crt0_clear_bss_loop>

000000d8 <__crt0_clear_bss_loop_end>:
  d8:	00001597          	auipc	a1,0x1
  dc:	d6058593          	addi	a1,a1,-672 # e38 <__crt0_copy_data_src_begin>
  e0:	80000617          	auipc	a2,0x80000
  e4:	f2060613          	addi	a2,a2,-224 # 80000000 <__ctr0_io_space_begin+0x80000200>
  e8:	82c18693          	addi	a3,gp,-2004 # 8000002c <cout.0>

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
 188:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3cc8>
 18c:	00112623          	sw	ra,12(sp)
 190:	1fc000ef          	jal	ra,38c <neorv32_uart0_setup>
 194:	06d000ef          	jal	ra,a00 <neorv32_gpio_available>
 198:	04050a63          	beqz	a0,1ec <main+0x74>
 19c:	00d000ef          	jal	ra,9a8 <neorv32_rte_setup>
 1a0:	00001537          	lui	a0,0x1
 1a4:	b7850513          	addi	a0,a0,-1160 # b78 <__etext+0x40>
 1a8:	2a8000ef          	jal	ra,450 <neorv32_uart0_print>
 1ac:	25400593          	li	a1,596
 1b0:	01900513          	li	a0,25
 1b4:	7a0000ef          	jal	ra,954 <neorv32_rte_exception_install>
 1b8:	fe002603          	lw	a2,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 1bc:	00100593          	li	a1,1
 1c0:	00000513          	li	a0,0
 1c4:	00165613          	srli	a2,a2,0x1
 1c8:	184000ef          	jal	ra,34c <neorv32_gptmr_setup>
 1cc:	01c00513          	li	a0,28
 1d0:	2d8000ef          	jal	ra,4a8 <neorv32_cpu_irq_enable>
 1d4:	30046073          	csrsi	mstatus,8
 1d8:	01600513          	li	a0,22
 1dc:	065000ef          	jal	ra,a40 <neorv32_gpio_pin_clr>
 1e0:	01700513          	li	a0,23
 1e4:	02d000ef          	jal	ra,a10 <neorv32_gpio_pin_set>
 1e8:	0000006f          	j	1e8 <main+0x70>
 1ec:	00001537          	lui	a0,0x1
 1f0:	b5450513          	addi	a0,a0,-1196 # b54 <__etext+0x1c>
 1f4:	25c000ef          	jal	ra,450 <neorv32_uart0_print>
 1f8:	00c12083          	lw	ra,12(sp)
 1fc:	00100513          	li	a0,1
 200:	01010113          	addi	sp,sp,16
 204:	00008067          	ret

00000208 <displayLine>:
 208:	fff64613          	not	a2,a2
 20c:	00561613          	slli	a2,a2,0x5
 210:	0ff67613          	andi	a2,a2,255
 214:	00000793          	li	a5,0
 218:	00500693          	li	a3,5
 21c:	00f50733          	add	a4,a0,a5
 220:	00074703          	lbu	a4,0(a4)
 224:	40f685b3          	sub	a1,a3,a5
 228:	00178793          	addi	a5,a5,1
 22c:	00b71733          	sll	a4,a4,a1
 230:	00c76633          	or	a2,a4,a2
 234:	0ff67613          	andi	a2,a2,255
 238:	fed792e3          	bne	a5,a3,21c <displayLine+0x14>
 23c:	fcc02783          	lw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 240:	01861513          	slli	a0,a2,0x18
 244:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 248:	41f55593          	srai	a1,a0,0x1f
 24c:	00f5e5b3          	or	a1,a1,a5
 250:	0250006f          	j	a74 <neorv32_gpio_port_set>

00000254 <gptmr_firq_handler>:
 254:	ff010113          	addi	sp,sp,-16
 258:	f00007b7          	lui	a5,0xf0000
 25c:	00112623          	sw	ra,12(sp)
 260:	00812423          	sw	s0,8(sp)
 264:	fff78793          	addi	a5,a5,-1 # efffffff <__ctr0_io_space_begin+0xf00001ff>
 268:	34479073          	csrw	mip,a5
 26c:	02e00513          	li	a0,46
 270:	1c8000ef          	jal	ra,438 <neorv32_uart0_putc>
 274:	82c1c783          	lbu	a5,-2004(gp) # 8000002c <cout.0>
 278:	00600713          	li	a4,6
 27c:	04f76063          	bltu	a4,a5,2bc <gptmr_firq_handler+0x68>
 280:	00001737          	lui	a4,0x1
 284:	00279793          	slli	a5,a5,0x2
 288:	b3870713          	addi	a4,a4,-1224 # b38 <__etext>
 28c:	00e787b3          	add	a5,a5,a4
 290:	0007a783          	lw	a5,0(a5)
 294:	82c18413          	addi	s0,gp,-2004 # 8000002c <cout.0>
 298:	80000537          	lui	a0,0x80000
 29c:	00078067          	jr	a5
 2a0:	00000613          	li	a2,0
 2a4:	82418593          	addi	a1,gp,-2012 # 80000024 <pins>
 2a8:	00050513          	mv	a0,a0
 2ac:	f5dff0ef          	jal	ra,208 <displayLine>
 2b0:	00044783          	lbu	a5,0(s0)
 2b4:	00178793          	addi	a5,a5,1
 2b8:	00f40023          	sb	a5,0(s0)
 2bc:	00c12083          	lw	ra,12(sp)
 2c0:	00812403          	lw	s0,8(sp)
 2c4:	01010113          	addi	sp,sp,16
 2c8:	00008067          	ret
 2cc:	00050513          	mv	a0,a0
 2d0:	00100613          	li	a2,1
 2d4:	82418593          	addi	a1,gp,-2012 # 80000024 <pins>
 2d8:	00550513          	addi	a0,a0,5 # 80000005 <__ctr0_io_space_begin+0x80000205>
 2dc:	fd1ff06f          	j	2ac <gptmr_firq_handler+0x58>
 2e0:	00050513          	mv	a0,a0
 2e4:	00200613          	li	a2,2
 2e8:	82418593          	addi	a1,gp,-2012 # 80000024 <pins>
 2ec:	00a50513          	addi	a0,a0,10
 2f0:	fbdff06f          	j	2ac <gptmr_firq_handler+0x58>
 2f4:	00050513          	mv	a0,a0
 2f8:	00300613          	li	a2,3
 2fc:	82418593          	addi	a1,gp,-2012 # 80000024 <pins>
 300:	00f50513          	addi	a0,a0,15
 304:	fa9ff06f          	j	2ac <gptmr_firq_handler+0x58>
 308:	00050513          	mv	a0,a0
 30c:	00400613          	li	a2,4
 310:	82418593          	addi	a1,gp,-2012 # 80000024 <pins>
 314:	01450513          	addi	a0,a0,20
 318:	f95ff06f          	j	2ac <gptmr_firq_handler+0x58>
 31c:	00050513          	mv	a0,a0
 320:	00500613          	li	a2,5
 324:	82418593          	addi	a1,gp,-2012 # 80000024 <pins>
 328:	01950513          	addi	a0,a0,25
 32c:	f81ff06f          	j	2ac <gptmr_firq_handler+0x58>
 330:	00050513          	mv	a0,a0
 334:	00600613          	li	a2,6
 338:	82418593          	addi	a1,gp,-2012 # 80000024 <pins>
 33c:	01e50513          	addi	a0,a0,30
 340:	ec9ff0ef          	jal	ra,208 <displayLine>
 344:	00040023          	sb	zero,0(s0)
 348:	f75ff06f          	j	2bc <gptmr_firq_handler+0x68>

0000034c <neorv32_gptmr_setup>:
 34c:	f6000793          	li	a5,-160
 350:	00757513          	andi	a0,a0,7
 354:	0015f593          	andi	a1,a1,1
 358:	0007a023          	sw	zero,0(a5)
 35c:	00151513          	slli	a0,a0,0x1
 360:	00459593          	slli	a1,a1,0x4
 364:	00c7a223          	sw	a2,4(a5)
 368:	00b56533          	or	a0,a0,a1
 36c:	0007a423          	sw	zero,8(a5)
 370:	00156513          	ori	a0,a0,1
 374:	00a7a023          	sw	a0,0(a5)
 378:	00008067          	ret

0000037c <neorv32_uart0_available>:
 37c:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 380:	01255513          	srli	a0,a0,0x12
 384:	00157513          	andi	a0,a0,1
 388:	00008067          	ret

0000038c <neorv32_uart0_setup>:
 38c:	ff010113          	addi	sp,sp,-16
 390:	00812423          	sw	s0,8(sp)
 394:	00912223          	sw	s1,4(sp)
 398:	00112623          	sw	ra,12(sp)
 39c:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 3a0:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 3a4:	00058413          	mv	s0,a1
 3a8:	00151593          	slli	a1,a0,0x1
 3ac:	00078513          	mv	a0,a5
 3b0:	00060493          	mv	s1,a2
 3b4:	6d8000ef          	jal	ra,a8c <__udivsi3>
 3b8:	01051513          	slli	a0,a0,0x10
 3bc:	000017b7          	lui	a5,0x1
 3c0:	01055513          	srli	a0,a0,0x10
 3c4:	00000713          	li	a4,0
 3c8:	ffe78793          	addi	a5,a5,-2 # ffe <__crt0_copy_data_src_begin+0x1c6>
 3cc:	04a7e463          	bltu	a5,a0,414 <neorv32_uart0_setup+0x88>
 3d0:	0034f793          	andi	a5,s1,3
 3d4:	00347413          	andi	s0,s0,3
 3d8:	fff50513          	addi	a0,a0,-1
 3dc:	01479793          	slli	a5,a5,0x14
 3e0:	01641413          	slli	s0,s0,0x16
 3e4:	00f567b3          	or	a5,a0,a5
 3e8:	0087e7b3          	or	a5,a5,s0
 3ec:	01871713          	slli	a4,a4,0x18
 3f0:	00c12083          	lw	ra,12(sp)
 3f4:	00812403          	lw	s0,8(sp)
 3f8:	00e7e7b3          	or	a5,a5,a4
 3fc:	10000737          	lui	a4,0x10000
 400:	00e7e7b3          	or	a5,a5,a4
 404:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 408:	00412483          	lw	s1,4(sp)
 40c:	01010113          	addi	sp,sp,16
 410:	00008067          	ret
 414:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xffff1c6>
 418:	0fd6f693          	andi	a3,a3,253
 41c:	00069a63          	bnez	a3,430 <neorv32_uart0_setup+0xa4>
 420:	00355513          	srli	a0,a0,0x3
 424:	00170713          	addi	a4,a4,1
 428:	0ff77713          	andi	a4,a4,255
 42c:	fa1ff06f          	j	3cc <neorv32_uart0_setup+0x40>
 430:	00155513          	srli	a0,a0,0x1
 434:	ff1ff06f          	j	424 <neorv32_uart0_setup+0x98>

00000438 <neorv32_uart0_putc>:
 438:	00040737          	lui	a4,0x40
 43c:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 440:	00e7f7b3          	and	a5,a5,a4
 444:	fe079ce3          	bnez	a5,43c <neorv32_uart0_putc+0x4>
 448:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 44c:	00008067          	ret

00000450 <neorv32_uart0_print>:
 450:	ff010113          	addi	sp,sp,-16
 454:	00812423          	sw	s0,8(sp)
 458:	01212023          	sw	s2,0(sp)
 45c:	00112623          	sw	ra,12(sp)
 460:	00912223          	sw	s1,4(sp)
 464:	00050413          	mv	s0,a0
 468:	00a00913          	li	s2,10
 46c:	00044483          	lbu	s1,0(s0)
 470:	00140413          	addi	s0,s0,1
 474:	00049e63          	bnez	s1,490 <neorv32_uart0_print+0x40>
 478:	00c12083          	lw	ra,12(sp)
 47c:	00812403          	lw	s0,8(sp)
 480:	00412483          	lw	s1,4(sp)
 484:	00012903          	lw	s2,0(sp)
 488:	01010113          	addi	sp,sp,16
 48c:	00008067          	ret
 490:	01249663          	bne	s1,s2,49c <neorv32_uart0_print+0x4c>
 494:	00d00513          	li	a0,13
 498:	fa1ff0ef          	jal	ra,438 <neorv32_uart0_putc>
 49c:	00048513          	mv	a0,s1
 4a0:	f99ff0ef          	jal	ra,438 <neorv32_uart0_putc>
 4a4:	fc9ff06f          	j	46c <neorv32_uart0_print+0x1c>

000004a8 <neorv32_cpu_irq_enable>:
 4a8:	01f00793          	li	a5,31
 4ac:	00050713          	mv	a4,a0
 4b0:	02a7e663          	bltu	a5,a0,4dc <neorv32_cpu_irq_enable+0x34>
 4b4:	ffff17b7          	lui	a5,0xffff1
 4b8:	88878793          	addi	a5,a5,-1912 # ffff0888 <__ctr0_io_space_begin+0xffff0a88>
 4bc:	00a7d7b3          	srl	a5,a5,a0
 4c0:	0017f793          	andi	a5,a5,1
 4c4:	00100513          	li	a0,1
 4c8:	00078c63          	beqz	a5,4e0 <neorv32_cpu_irq_enable+0x38>
 4cc:	00e51533          	sll	a0,a0,a4
 4d0:	30452073          	csrs	mie,a0
 4d4:	00000513          	li	a0,0
 4d8:	00008067          	ret
 4dc:	00100513          	li	a0,1
 4e0:	00008067          	ret

000004e4 <__neorv32_rte_core>:
 4e4:	fc010113          	addi	sp,sp,-64
 4e8:	02112e23          	sw	ra,60(sp)
 4ec:	02512c23          	sw	t0,56(sp)
 4f0:	02612a23          	sw	t1,52(sp)
 4f4:	02712823          	sw	t2,48(sp)
 4f8:	02a12623          	sw	a0,44(sp)
 4fc:	02b12423          	sw	a1,40(sp)
 500:	02c12223          	sw	a2,36(sp)
 504:	02d12023          	sw	a3,32(sp)
 508:	00e12e23          	sw	a4,28(sp)
 50c:	00f12c23          	sw	a5,24(sp)
 510:	01012a23          	sw	a6,20(sp)
 514:	01112823          	sw	a7,16(sp)
 518:	01c12623          	sw	t3,12(sp)
 51c:	01d12423          	sw	t4,8(sp)
 520:	01e12223          	sw	t5,4(sp)
 524:	01f12023          	sw	t6,0(sp)
 528:	341026f3          	csrr	a3,mepc
 52c:	34069073          	csrw	mscratch,a3
 530:	342027f3          	csrr	a5,mcause
 534:	0407ce63          	bltz	a5,590 <__neorv32_rte_core+0xac>
 538:	0006d703          	lhu	a4,0(a3)
 53c:	01071713          	slli	a4,a4,0x10
 540:	01075713          	srli	a4,a4,0x10
 544:	00468593          	addi	a1,a3,4
 548:	30102673          	csrr	a2,misa
 54c:	00467613          	andi	a2,a2,4
 550:	00060a63          	beqz	a2,564 <__neorv32_rte_core+0x80>
 554:	00377713          	andi	a4,a4,3
 558:	00300613          	li	a2,3
 55c:	00c70463          	beq	a4,a2,564 <__neorv32_rte_core+0x80>
 560:	00268593          	addi	a1,a3,2
 564:	34159073          	csrw	mepc,a1
 568:	00b00713          	li	a4,11
 56c:	00f77663          	bgeu	a4,a5,578 <__neorv32_rte_core+0x94>
 570:	75c00793          	li	a5,1884
 574:	04c0006f          	j	5c0 <__neorv32_rte_core+0xdc>
 578:	00001737          	lui	a4,0x1
 57c:	00279793          	slli	a5,a5,0x2
 580:	b8c70713          	addi	a4,a4,-1140 # b8c <__etext+0x54>
 584:	00e787b3          	add	a5,a5,a4
 588:	0007a783          	lw	a5,0(a5)
 58c:	00078067          	jr	a5
 590:	80000737          	lui	a4,0x80000
 594:	ffd74713          	xori	a4,a4,-3
 598:	00e787b3          	add	a5,a5,a4
 59c:	01c00713          	li	a4,28
 5a0:	fcf768e3          	bltu	a4,a5,570 <__neorv32_rte_core+0x8c>
 5a4:	00001737          	lui	a4,0x1
 5a8:	00279793          	slli	a5,a5,0x2
 5ac:	bbc70713          	addi	a4,a4,-1092 # bbc <__etext+0x84>
 5b0:	00e787b3          	add	a5,a5,a4
 5b4:	0007a783          	lw	a5,0(a5)
 5b8:	00078067          	jr	a5
 5bc:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut>
 5c0:	000780e7          	jalr	a5
 5c4:	03c12083          	lw	ra,60(sp)
 5c8:	03812283          	lw	t0,56(sp)
 5cc:	03412303          	lw	t1,52(sp)
 5d0:	03012383          	lw	t2,48(sp)
 5d4:	02c12503          	lw	a0,44(sp)
 5d8:	02812583          	lw	a1,40(sp)
 5dc:	02412603          	lw	a2,36(sp)
 5e0:	02012683          	lw	a3,32(sp)
 5e4:	01c12703          	lw	a4,28(sp)
 5e8:	01812783          	lw	a5,24(sp)
 5ec:	01412803          	lw	a6,20(sp)
 5f0:	01012883          	lw	a7,16(sp)
 5f4:	00c12e03          	lw	t3,12(sp)
 5f8:	00812e83          	lw	t4,8(sp)
 5fc:	00412f03          	lw	t5,4(sp)
 600:	00012f83          	lw	t6,0(sp)
 604:	04010113          	addi	sp,sp,64
 608:	30200073          	mret
 60c:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x4>
 610:	fb1ff06f          	j	5c0 <__neorv32_rte_core+0xdc>
 614:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x8>
 618:	fa9ff06f          	j	5c0 <__neorv32_rte_core+0xdc>
 61c:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0xc>
 620:	fa1ff06f          	j	5c0 <__neorv32_rte_core+0xdc>
 624:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x10>
 628:	f99ff06f          	j	5c0 <__neorv32_rte_core+0xdc>
 62c:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x14>
 630:	f91ff06f          	j	5c0 <__neorv32_rte_core+0xdc>
 634:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x18>
 638:	f89ff06f          	j	5c0 <__neorv32_rte_core+0xdc>
 63c:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x1c>
 640:	f81ff06f          	j	5c0 <__neorv32_rte_core+0xdc>
 644:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x20>
 648:	f79ff06f          	j	5c0 <__neorv32_rte_core+0xdc>
 64c:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x24>
 650:	f71ff06f          	j	5c0 <__neorv32_rte_core+0xdc>
 654:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x28>
 658:	f69ff06f          	j	5c0 <__neorv32_rte_core+0xdc>
 65c:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x2c>
 660:	f61ff06f          	j	5c0 <__neorv32_rte_core+0xdc>
 664:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x30>
 668:	f59ff06f          	j	5c0 <__neorv32_rte_core+0xdc>
 66c:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x34>
 670:	f51ff06f          	j	5c0 <__neorv32_rte_core+0xdc>
 674:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x38>
 678:	f49ff06f          	j	5c0 <__neorv32_rte_core+0xdc>
 67c:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x3c>
 680:	f41ff06f          	j	5c0 <__neorv32_rte_core+0xdc>
 684:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x40>
 688:	f39ff06f          	j	5c0 <__neorv32_rte_core+0xdc>
 68c:	8741a783          	lw	a5,-1932(gp) # 80000074 <__neorv32_rte_vector_lut+0x44>
 690:	f31ff06f          	j	5c0 <__neorv32_rte_core+0xdc>
 694:	8781a783          	lw	a5,-1928(gp) # 80000078 <__neorv32_rte_vector_lut+0x48>
 698:	f29ff06f          	j	5c0 <__neorv32_rte_core+0xdc>
 69c:	87c1a783          	lw	a5,-1924(gp) # 8000007c <__neorv32_rte_vector_lut+0x4c>
 6a0:	f21ff06f          	j	5c0 <__neorv32_rte_core+0xdc>
 6a4:	8801a783          	lw	a5,-1920(gp) # 80000080 <__neorv32_rte_vector_lut+0x50>
 6a8:	f19ff06f          	j	5c0 <__neorv32_rte_core+0xdc>
 6ac:	8841a783          	lw	a5,-1916(gp) # 80000084 <__neorv32_rte_vector_lut+0x54>
 6b0:	f11ff06f          	j	5c0 <__neorv32_rte_core+0xdc>
 6b4:	8881a783          	lw	a5,-1912(gp) # 80000088 <__neorv32_rte_vector_lut+0x58>
 6b8:	f09ff06f          	j	5c0 <__neorv32_rte_core+0xdc>
 6bc:	88c1a783          	lw	a5,-1908(gp) # 8000008c <__neorv32_rte_vector_lut+0x5c>
 6c0:	f01ff06f          	j	5c0 <__neorv32_rte_core+0xdc>
 6c4:	8901a783          	lw	a5,-1904(gp) # 80000090 <__neorv32_rte_vector_lut+0x60>
 6c8:	ef9ff06f          	j	5c0 <__neorv32_rte_core+0xdc>
 6cc:	8941a783          	lw	a5,-1900(gp) # 80000094 <__neorv32_rte_vector_lut+0x64>
 6d0:	ef1ff06f          	j	5c0 <__neorv32_rte_core+0xdc>
 6d4:	8981a783          	lw	a5,-1896(gp) # 80000098 <__neorv32_rte_vector_lut+0x68>
 6d8:	ee9ff06f          	j	5c0 <__neorv32_rte_core+0xdc>
 6dc:	89c1a783          	lw	a5,-1892(gp) # 8000009c <__neorv32_rte_vector_lut+0x6c>
 6e0:	ee1ff06f          	j	5c0 <__neorv32_rte_core+0xdc>
 6e4:	8a01a783          	lw	a5,-1888(gp) # 800000a0 <__neorv32_rte_vector_lut+0x70>
 6e8:	ed9ff06f          	j	5c0 <__neorv32_rte_core+0xdc>

000006ec <__neorv32_rte_print_hex_word>:
 6ec:	fe010113          	addi	sp,sp,-32
 6f0:	01212823          	sw	s2,16(sp)
 6f4:	00050913          	mv	s2,a0
 6f8:	00001537          	lui	a0,0x1
 6fc:	00912a23          	sw	s1,20(sp)
 700:	c3050513          	addi	a0,a0,-976 # c30 <__etext+0xf8>
 704:	000014b7          	lui	s1,0x1
 708:	00812c23          	sw	s0,24(sp)
 70c:	01312623          	sw	s3,12(sp)
 710:	00112e23          	sw	ra,28(sp)
 714:	01c00413          	li	s0,28
 718:	d39ff0ef          	jal	ra,450 <neorv32_uart0_print>
 71c:	e2848493          	addi	s1,s1,-472 # e28 <hex_symbols.0>
 720:	ffc00993          	li	s3,-4
 724:	008957b3          	srl	a5,s2,s0
 728:	00f7f793          	andi	a5,a5,15
 72c:	00f487b3          	add	a5,s1,a5
 730:	0007c503          	lbu	a0,0(a5)
 734:	ffc40413          	addi	s0,s0,-4
 738:	d01ff0ef          	jal	ra,438 <neorv32_uart0_putc>
 73c:	ff3414e3          	bne	s0,s3,724 <__neorv32_rte_print_hex_word+0x38>
 740:	01c12083          	lw	ra,28(sp)
 744:	01812403          	lw	s0,24(sp)
 748:	01412483          	lw	s1,20(sp)
 74c:	01012903          	lw	s2,16(sp)
 750:	00c12983          	lw	s3,12(sp)
 754:	02010113          	addi	sp,sp,32
 758:	00008067          	ret

0000075c <__neorv32_rte_debug_exc_handler>:
 75c:	ff010113          	addi	sp,sp,-16
 760:	00112623          	sw	ra,12(sp)
 764:	00812423          	sw	s0,8(sp)
 768:	00912223          	sw	s1,4(sp)
 76c:	c11ff0ef          	jal	ra,37c <neorv32_uart0_available>
 770:	1c050863          	beqz	a0,940 <__neorv32_rte_debug_exc_handler+0x1e4>
 774:	00001537          	lui	a0,0x1
 778:	c3450513          	addi	a0,a0,-972 # c34 <__etext+0xfc>
 77c:	cd5ff0ef          	jal	ra,450 <neorv32_uart0_print>
 780:	34202473          	csrr	s0,mcause
 784:	00900713          	li	a4,9
 788:	00f47793          	andi	a5,s0,15
 78c:	03078493          	addi	s1,a5,48
 790:	00f77463          	bgeu	a4,a5,798 <__neorv32_rte_debug_exc_handler+0x3c>
 794:	05778493          	addi	s1,a5,87
 798:	00b00793          	li	a5,11
 79c:	0087ee63          	bltu	a5,s0,7b8 <__neorv32_rte_debug_exc_handler+0x5c>
 7a0:	00001737          	lui	a4,0x1
 7a4:	00241793          	slli	a5,s0,0x2
 7a8:	df870713          	addi	a4,a4,-520 # df8 <__etext+0x2c0>
 7ac:	00e787b3          	add	a5,a5,a4
 7b0:	0007a783          	lw	a5,0(a5)
 7b4:	00078067          	jr	a5
 7b8:	800007b7          	lui	a5,0x80000
 7bc:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 7c0:	14e40e63          	beq	s0,a4,91c <__neorv32_rte_debug_exc_handler+0x1c0>
 7c4:	02876a63          	bltu	a4,s0,7f8 <__neorv32_rte_debug_exc_handler+0x9c>
 7c8:	00378713          	addi	a4,a5,3
 7cc:	12e40c63          	beq	s0,a4,904 <__neorv32_rte_debug_exc_handler+0x1a8>
 7d0:	00778793          	addi	a5,a5,7
 7d4:	12f40e63          	beq	s0,a5,910 <__neorv32_rte_debug_exc_handler+0x1b4>
 7d8:	00001537          	lui	a0,0x1
 7dc:	d9450513          	addi	a0,a0,-620 # d94 <__etext+0x25c>
 7e0:	c71ff0ef          	jal	ra,450 <neorv32_uart0_print>
 7e4:	00040513          	mv	a0,s0
 7e8:	f05ff0ef          	jal	ra,6ec <__neorv32_rte_print_hex_word>
 7ec:	00100793          	li	a5,1
 7f0:	08f40c63          	beq	s0,a5,888 <__neorv32_rte_debug_exc_handler+0x12c>
 7f4:	0280006f          	j	81c <__neorv32_rte_debug_exc_handler+0xc0>
 7f8:	ff07c793          	xori	a5,a5,-16
 7fc:	00f407b3          	add	a5,s0,a5
 800:	00f00713          	li	a4,15
 804:	fcf76ae3          	bltu	a4,a5,7d8 <__neorv32_rte_debug_exc_handler+0x7c>
 808:	00001537          	lui	a0,0x1
 80c:	d8450513          	addi	a0,a0,-636 # d84 <__etext+0x24c>
 810:	c41ff0ef          	jal	ra,450 <neorv32_uart0_print>
 814:	00048513          	mv	a0,s1
 818:	c21ff0ef          	jal	ra,438 <neorv32_uart0_putc>
 81c:	ffd47413          	andi	s0,s0,-3
 820:	00500793          	li	a5,5
 824:	06f40263          	beq	s0,a5,888 <__neorv32_rte_debug_exc_handler+0x12c>
 828:	00001537          	lui	a0,0x1
 82c:	dd850513          	addi	a0,a0,-552 # dd8 <__etext+0x2a0>
 830:	c21ff0ef          	jal	ra,450 <neorv32_uart0_print>
 834:	34002573          	csrr	a0,mscratch
 838:	eb5ff0ef          	jal	ra,6ec <__neorv32_rte_print_hex_word>
 83c:	00001537          	lui	a0,0x1
 840:	de050513          	addi	a0,a0,-544 # de0 <__etext+0x2a8>
 844:	c0dff0ef          	jal	ra,450 <neorv32_uart0_print>
 848:	34302573          	csrr	a0,mtval
 84c:	ea1ff0ef          	jal	ra,6ec <__neorv32_rte_print_hex_word>
 850:	00812403          	lw	s0,8(sp)
 854:	00c12083          	lw	ra,12(sp)
 858:	00412483          	lw	s1,4(sp)
 85c:	00001537          	lui	a0,0x1
 860:	dec50513          	addi	a0,a0,-532 # dec <__etext+0x2b4>
 864:	01010113          	addi	sp,sp,16
 868:	be9ff06f          	j	450 <neorv32_uart0_print>
 86c:	00001537          	lui	a0,0x1
 870:	c3c50513          	addi	a0,a0,-964 # c3c <__etext+0x104>
 874:	bddff0ef          	jal	ra,450 <neorv32_uart0_print>
 878:	fb1ff06f          	j	828 <__neorv32_rte_debug_exc_handler+0xcc>
 87c:	00001537          	lui	a0,0x1
 880:	c5c50513          	addi	a0,a0,-932 # c5c <__etext+0x124>
 884:	bcdff0ef          	jal	ra,450 <neorv32_uart0_print>
 888:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 88c:	0a07d463          	bgez	a5,934 <__neorv32_rte_debug_exc_handler+0x1d8>
 890:	0017f793          	andi	a5,a5,1
 894:	08078a63          	beqz	a5,928 <__neorv32_rte_debug_exc_handler+0x1cc>
 898:	00001537          	lui	a0,0x1
 89c:	dac50513          	addi	a0,a0,-596 # dac <__etext+0x274>
 8a0:	fd5ff06f          	j	874 <__neorv32_rte_debug_exc_handler+0x118>
 8a4:	00001537          	lui	a0,0x1
 8a8:	c7850513          	addi	a0,a0,-904 # c78 <__etext+0x140>
 8ac:	fc9ff06f          	j	874 <__neorv32_rte_debug_exc_handler+0x118>
 8b0:	00001537          	lui	a0,0x1
 8b4:	c8c50513          	addi	a0,a0,-884 # c8c <__etext+0x154>
 8b8:	fbdff06f          	j	874 <__neorv32_rte_debug_exc_handler+0x118>
 8bc:	00001537          	lui	a0,0x1
 8c0:	c9850513          	addi	a0,a0,-872 # c98 <__etext+0x160>
 8c4:	fb1ff06f          	j	874 <__neorv32_rte_debug_exc_handler+0x118>
 8c8:	00001537          	lui	a0,0x1
 8cc:	cb050513          	addi	a0,a0,-848 # cb0 <__etext+0x178>
 8d0:	fb5ff06f          	j	884 <__neorv32_rte_debug_exc_handler+0x128>
 8d4:	00001537          	lui	a0,0x1
 8d8:	cc450513          	addi	a0,a0,-828 # cc4 <__etext+0x18c>
 8dc:	f99ff06f          	j	874 <__neorv32_rte_debug_exc_handler+0x118>
 8e0:	00001537          	lui	a0,0x1
 8e4:	ce050513          	addi	a0,a0,-800 # ce0 <__etext+0x1a8>
 8e8:	f9dff06f          	j	884 <__neorv32_rte_debug_exc_handler+0x128>
 8ec:	00001537          	lui	a0,0x1
 8f0:	cf450513          	addi	a0,a0,-780 # cf4 <__etext+0x1bc>
 8f4:	f81ff06f          	j	874 <__neorv32_rte_debug_exc_handler+0x118>
 8f8:	00001537          	lui	a0,0x1
 8fc:	d1450513          	addi	a0,a0,-748 # d14 <__etext+0x1dc>
 900:	f75ff06f          	j	874 <__neorv32_rte_debug_exc_handler+0x118>
 904:	00001537          	lui	a0,0x1
 908:	d3450513          	addi	a0,a0,-716 # d34 <__etext+0x1fc>
 90c:	f69ff06f          	j	874 <__neorv32_rte_debug_exc_handler+0x118>
 910:	00001537          	lui	a0,0x1
 914:	d5050513          	addi	a0,a0,-688 # d50 <__etext+0x218>
 918:	f5dff06f          	j	874 <__neorv32_rte_debug_exc_handler+0x118>
 91c:	00001537          	lui	a0,0x1
 920:	d6850513          	addi	a0,a0,-664 # d68 <__etext+0x230>
 924:	f51ff06f          	j	874 <__neorv32_rte_debug_exc_handler+0x118>
 928:	00001537          	lui	a0,0x1
 92c:	dbc50513          	addi	a0,a0,-580 # dbc <__etext+0x284>
 930:	f45ff06f          	j	874 <__neorv32_rte_debug_exc_handler+0x118>
 934:	00001537          	lui	a0,0x1
 938:	dcc50513          	addi	a0,a0,-564 # dcc <__etext+0x294>
 93c:	f39ff06f          	j	874 <__neorv32_rte_debug_exc_handler+0x118>
 940:	00c12083          	lw	ra,12(sp)
 944:	00812403          	lw	s0,8(sp)
 948:	00412483          	lw	s1,4(sp)
 94c:	01010113          	addi	sp,sp,16
 950:	00008067          	ret

00000954 <neorv32_rte_exception_install>:
 954:	01f00793          	li	a5,31
 958:	00a7ee63          	bltu	a5,a0,974 <neorv32_rte_exception_install+0x20>
 95c:	83018793          	addi	a5,gp,-2000 # 80000030 <__neorv32_rte_vector_lut>
 960:	00251513          	slli	a0,a0,0x2
 964:	00a78533          	add	a0,a5,a0
 968:	00b52023          	sw	a1,0(a0)
 96c:	00000513          	li	a0,0
 970:	00008067          	ret
 974:	00100513          	li	a0,1
 978:	00008067          	ret

0000097c <neorv32_rte_exception_uninstall>:
 97c:	01f00793          	li	a5,31
 980:	02a7e063          	bltu	a5,a0,9a0 <neorv32_rte_exception_uninstall+0x24>
 984:	83018793          	addi	a5,gp,-2000 # 80000030 <__neorv32_rte_vector_lut>
 988:	00251513          	slli	a0,a0,0x2
 98c:	00a78533          	add	a0,a5,a0
 990:	75c00793          	li	a5,1884
 994:	00f52023          	sw	a5,0(a0)
 998:	00000513          	li	a0,0
 99c:	00008067          	ret
 9a0:	00100513          	li	a0,1
 9a4:	00008067          	ret

000009a8 <neorv32_rte_setup>:
 9a8:	ff010113          	addi	sp,sp,-16
 9ac:	00112623          	sw	ra,12(sp)
 9b0:	00812423          	sw	s0,8(sp)
 9b4:	00912223          	sw	s1,4(sp)
 9b8:	4e400793          	li	a5,1252
 9bc:	30579073          	csrw	mtvec,a5
 9c0:	00000793          	li	a5,0
 9c4:	30479073          	csrw	mie,a5
 9c8:	34479073          	csrw	mip,a5
 9cc:	f6002e23          	sw	zero,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 9d0:	00000413          	li	s0,0
 9d4:	01d00493          	li	s1,29
 9d8:	00040513          	mv	a0,s0
 9dc:	00140413          	addi	s0,s0,1
 9e0:	0ff47413          	andi	s0,s0,255
 9e4:	f99ff0ef          	jal	ra,97c <neorv32_rte_exception_uninstall>
 9e8:	fe9418e3          	bne	s0,s1,9d8 <neorv32_rte_setup+0x30>
 9ec:	00c12083          	lw	ra,12(sp)
 9f0:	00812403          	lw	s0,8(sp)
 9f4:	00412483          	lw	s1,4(sp)
 9f8:	01010113          	addi	sp,sp,16
 9fc:	00008067          	ret

00000a00 <neorv32_gpio_available>:
 a00:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 a04:	01055513          	srli	a0,a0,0x10
 a08:	00157513          	andi	a0,a0,1
 a0c:	00008067          	ret

00000a10 <neorv32_gpio_pin_set>:
 a10:	00100793          	li	a5,1
 a14:	01f00713          	li	a4,31
 a18:	00a797b3          	sll	a5,a5,a0
 a1c:	00a74a63          	blt	a4,a0,a30 <neorv32_gpio_pin_set+0x20>
 a20:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 a24:	00f767b3          	or	a5,a4,a5
 a28:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 a2c:	00008067          	ret
 a30:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 a34:	00f767b3          	or	a5,a4,a5
 a38:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 a3c:	00008067          	ret

00000a40 <neorv32_gpio_pin_clr>:
 a40:	00100793          	li	a5,1
 a44:	00a797b3          	sll	a5,a5,a0
 a48:	01f00713          	li	a4,31
 a4c:	fff7c793          	not	a5,a5
 a50:	00a74a63          	blt	a4,a0,a64 <neorv32_gpio_pin_clr+0x24>
 a54:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 a58:	00f777b3          	and	a5,a4,a5
 a5c:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 a60:	00008067          	ret
 a64:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 a68:	00f777b3          	and	a5,a4,a5
 a6c:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 a70:	00008067          	ret

00000a74 <neorv32_gpio_port_set>:
 a74:	fc000793          	li	a5,-64
 a78:	00a7a423          	sw	a0,8(a5)
 a7c:	00b7a623          	sw	a1,12(a5)
 a80:	00008067          	ret

00000a84 <__divsi3>:
 a84:	06054063          	bltz	a0,ae4 <__umodsi3+0x10>
 a88:	0605c663          	bltz	a1,af4 <__umodsi3+0x20>

00000a8c <__udivsi3>:
 a8c:	00058613          	mv	a2,a1
 a90:	00050593          	mv	a1,a0
 a94:	fff00513          	li	a0,-1
 a98:	02060c63          	beqz	a2,ad0 <__udivsi3+0x44>
 a9c:	00100693          	li	a3,1
 aa0:	00b67a63          	bgeu	a2,a1,ab4 <__udivsi3+0x28>
 aa4:	00c05863          	blez	a2,ab4 <__udivsi3+0x28>
 aa8:	00161613          	slli	a2,a2,0x1
 aac:	00169693          	slli	a3,a3,0x1
 ab0:	feb66ae3          	bltu	a2,a1,aa4 <__udivsi3+0x18>
 ab4:	00000513          	li	a0,0
 ab8:	00c5e663          	bltu	a1,a2,ac4 <__udivsi3+0x38>
 abc:	40c585b3          	sub	a1,a1,a2
 ac0:	00d56533          	or	a0,a0,a3
 ac4:	0016d693          	srli	a3,a3,0x1
 ac8:	00165613          	srli	a2,a2,0x1
 acc:	fe0696e3          	bnez	a3,ab8 <__udivsi3+0x2c>
 ad0:	00008067          	ret

00000ad4 <__umodsi3>:
 ad4:	00008293          	mv	t0,ra
 ad8:	fb5ff0ef          	jal	ra,a8c <__udivsi3>
 adc:	00058513          	mv	a0,a1
 ae0:	00028067          	jr	t0
 ae4:	40a00533          	neg	a0,a0
 ae8:	00b04863          	bgtz	a1,af8 <__umodsi3+0x24>
 aec:	40b005b3          	neg	a1,a1
 af0:	f9dff06f          	j	a8c <__udivsi3>
 af4:	40b005b3          	neg	a1,a1
 af8:	00008293          	mv	t0,ra
 afc:	f91ff0ef          	jal	ra,a8c <__udivsi3>
 b00:	40a00533          	neg	a0,a0
 b04:	00028067          	jr	t0

00000b08 <__modsi3>:
 b08:	00008293          	mv	t0,ra
 b0c:	0005ca63          	bltz	a1,b20 <__modsi3+0x18>
 b10:	00054c63          	bltz	a0,b28 <__modsi3+0x20>
 b14:	f79ff0ef          	jal	ra,a8c <__udivsi3>
 b18:	00058513          	mv	a0,a1
 b1c:	00028067          	jr	t0
 b20:	40b005b3          	neg	a1,a1
 b24:	fe0558e3          	bgez	a0,b14 <__modsi3+0xc>
 b28:	40a00533          	neg	a0,a0
 b2c:	f61ff0ef          	jal	ra,a8c <__udivsi3>
 b30:	40b00533          	neg	a0,a1
 b34:	00028067          	jr	t0
