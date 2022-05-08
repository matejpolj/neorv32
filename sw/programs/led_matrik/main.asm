
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
  dc:	d9c58593          	addi	a1,a1,-612 # e74 <__crt0_copy_data_src_begin>
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
 188:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3c8c>
 18c:	00112623          	sw	ra,12(sp)
 190:	250000ef          	jal	ra,3e0 <neorv32_uart0_setup>
 194:	0c1000ef          	jal	ra,a54 <neorv32_gpio_available>
 198:	06050263          	beqz	a0,1fc <main+0x84>
 19c:	061000ef          	jal	ra,9fc <neorv32_rte_setup>
 1a0:	00001537          	lui	a0,0x1
 1a4:	bb450513          	addi	a0,a0,-1100 # bb4 <__etext+0x38>
 1a8:	2fc000ef          	jal	ra,4a4 <neorv32_uart0_print>
 1ac:	2d400593          	li	a1,724
 1b0:	01900513          	li	a0,25
 1b4:	7f4000ef          	jal	ra,9a8 <neorv32_rte_exception_install>
 1b8:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 1bc:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 1c0:	000015b7          	lui	a1,0x1
 1c4:	fa058593          	addi	a1,a1,-96 # fa0 <__crt0_copy_data_src_begin+0x12c>
 1c8:	109000ef          	jal	ra,ad0 <__udivsi3>
 1cc:	00050613          	mv	a2,a0
 1d0:	00100593          	li	a1,1
 1d4:	00200513          	li	a0,2
 1d8:	1c8000ef          	jal	ra,3a0 <neorv32_gptmr_setup>
 1dc:	01c00513          	li	a0,28
 1e0:	31c000ef          	jal	ra,4fc <neorv32_cpu_irq_enable>
 1e4:	30046073          	csrsi	mstatus,8
 1e8:	01600513          	li	a0,22
 1ec:	0a9000ef          	jal	ra,a94 <neorv32_gpio_pin_clr>
 1f0:	01700513          	li	a0,23
 1f4:	071000ef          	jal	ra,a64 <neorv32_gpio_pin_set>
 1f8:	0000006f          	j	1f8 <main+0x80>
 1fc:	00001537          	lui	a0,0x1
 200:	b9050513          	addi	a0,a0,-1136 # b90 <__etext+0x14>
 204:	2a0000ef          	jal	ra,4a4 <neorv32_uart0_print>
 208:	00c12083          	lw	ra,12(sp)
 20c:	00100513          	li	a0,1
 210:	01010113          	addi	sp,sp,16
 214:	00008067          	ret

00000218 <displayLinePart>:
 218:	fe010113          	addi	sp,sp,-32
 21c:	00912a23          	sw	s1,20(sp)
 220:	fff64493          	not	s1,a2
 224:	00812c23          	sw	s0,24(sp)
 228:	01212823          	sw	s2,16(sp)
 22c:	01312623          	sw	s3,12(sp)
 230:	01412423          	sw	s4,8(sp)
 234:	01512223          	sw	s5,4(sp)
 238:	00112e23          	sw	ra,28(sp)
 23c:	00050993          	mv	s3,a0
 240:	00058913          	mv	s2,a1
 244:	0074f493          	andi	s1,s1,7
 248:	00000413          	li	s0,0
 24c:	00100a93          	li	s5,1
 250:	00300a13          	li	s4,3
 254:	008907b3          	add	a5,s2,s0
 258:	0057c503          	lbu	a0,5(a5)
 25c:	008a97b3          	sll	a5,s5,s0
 260:	0097f7b3          	and	a5,a5,s1
 264:	4087d7b3          	sra	a5,a5,s0
 268:	04078e63          	beqz	a5,2c4 <displayLinePart+0xac>
 26c:	7f8000ef          	jal	ra,a64 <neorv32_gpio_pin_set>
 270:	00140413          	addi	s0,s0,1
 274:	ff4410e3          	bne	s0,s4,254 <displayLinePart+0x3c>
 278:	00000413          	li	s0,0
 27c:	00500493          	li	s1,5
 280:	008907b3          	add	a5,s2,s0
 284:	0007c503          	lbu	a0,0(a5)
 288:	008987b3          	add	a5,s3,s0
 28c:	0007c783          	lbu	a5,0(a5)
 290:	02078e63          	beqz	a5,2cc <displayLinePart+0xb4>
 294:	7d0000ef          	jal	ra,a64 <neorv32_gpio_pin_set>
 298:	00140413          	addi	s0,s0,1
 29c:	fe9412e3          	bne	s0,s1,280 <displayLinePart+0x68>
 2a0:	01c12083          	lw	ra,28(sp)
 2a4:	01812403          	lw	s0,24(sp)
 2a8:	01412483          	lw	s1,20(sp)
 2ac:	01012903          	lw	s2,16(sp)
 2b0:	00c12983          	lw	s3,12(sp)
 2b4:	00812a03          	lw	s4,8(sp)
 2b8:	00412a83          	lw	s5,4(sp)
 2bc:	02010113          	addi	sp,sp,32
 2c0:	00008067          	ret
 2c4:	7d0000ef          	jal	ra,a94 <neorv32_gpio_pin_clr>
 2c8:	fa9ff06f          	j	270 <displayLinePart+0x58>
 2cc:	7c8000ef          	jal	ra,a94 <neorv32_gpio_pin_clr>
 2d0:	fc9ff06f          	j	298 <displayLinePart+0x80>

000002d4 <gptmr_firq_handler>:
 2d4:	f00007b7          	lui	a5,0xf0000
 2d8:	fff78793          	addi	a5,a5,-1 # efffffff <__ctr0_io_space_begin+0xf00001ff>
 2dc:	34479073          	csrw	mip,a5
 2e0:	82c18713          	addi	a4,gp,-2004 # 8000002c <cout>
 2e4:	00074783          	lbu	a5,0(a4)
 2e8:	00500693          	li	a3,5
 2ec:	80000537          	lui	a0,0x80000
 2f0:	00f6fc63          	bgeu	a3,a5,308 <gptmr_firq_handler+0x34>
 2f4:	00070023          	sb	zero,0(a4)
 2f8:	00000613          	li	a2,0
 2fc:	82418593          	addi	a1,gp,-2012 # 80000024 <pins>
 300:	00050513          	mv	a0,a0
 304:	f15ff06f          	j	218 <displayLinePart>
 308:	00178793          	addi	a5,a5,1
 30c:	0ff7f793          	andi	a5,a5,255
 310:	00f70023          	sb	a5,0(a4)
 314:	ffe78793          	addi	a5,a5,-2
 318:	0ff7f793          	andi	a5,a5,255
 31c:	00400713          	li	a4,4
 320:	00050513          	mv	a0,a0
 324:	00f76e63          	bltu	a4,a5,340 <gptmr_firq_handler+0x6c>
 328:	00001737          	lui	a4,0x1
 32c:	00279793          	slli	a5,a5,0x2
 330:	b7c70713          	addi	a4,a4,-1156 # b7c <__etext>
 334:	00e787b3          	add	a5,a5,a4
 338:	0007a783          	lw	a5,0(a5)
 33c:	00078067          	jr	a5
 340:	00100613          	li	a2,1
 344:	82418593          	addi	a1,gp,-2012 # 80000024 <pins>
 348:	00550513          	addi	a0,a0,5 # 80000005 <__ctr0_io_space_begin+0x80000205>
 34c:	fb9ff06f          	j	304 <gptmr_firq_handler+0x30>
 350:	00200613          	li	a2,2
 354:	82418593          	addi	a1,gp,-2012 # 80000024 <pins>
 358:	00a50513          	addi	a0,a0,10
 35c:	fa9ff06f          	j	304 <gptmr_firq_handler+0x30>
 360:	00300613          	li	a2,3
 364:	82418593          	addi	a1,gp,-2012 # 80000024 <pins>
 368:	00f50513          	addi	a0,a0,15
 36c:	f99ff06f          	j	304 <gptmr_firq_handler+0x30>
 370:	00400613          	li	a2,4
 374:	82418593          	addi	a1,gp,-2012 # 80000024 <pins>
 378:	01450513          	addi	a0,a0,20
 37c:	f89ff06f          	j	304 <gptmr_firq_handler+0x30>
 380:	00500613          	li	a2,5
 384:	82418593          	addi	a1,gp,-2012 # 80000024 <pins>
 388:	01950513          	addi	a0,a0,25
 38c:	f79ff06f          	j	304 <gptmr_firq_handler+0x30>
 390:	00600613          	li	a2,6
 394:	82418593          	addi	a1,gp,-2012 # 80000024 <pins>
 398:	01e50513          	addi	a0,a0,30
 39c:	f69ff06f          	j	304 <gptmr_firq_handler+0x30>

000003a0 <neorv32_gptmr_setup>:
 3a0:	f6000793          	li	a5,-160
 3a4:	00757513          	andi	a0,a0,7
 3a8:	0015f593          	andi	a1,a1,1
 3ac:	0007a023          	sw	zero,0(a5)
 3b0:	00151513          	slli	a0,a0,0x1
 3b4:	00459593          	slli	a1,a1,0x4
 3b8:	00c7a223          	sw	a2,4(a5)
 3bc:	00b56533          	or	a0,a0,a1
 3c0:	0007a423          	sw	zero,8(a5)
 3c4:	00156513          	ori	a0,a0,1
 3c8:	00a7a023          	sw	a0,0(a5)
 3cc:	00008067          	ret

000003d0 <neorv32_uart0_available>:
 3d0:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 3d4:	01255513          	srli	a0,a0,0x12
 3d8:	00157513          	andi	a0,a0,1
 3dc:	00008067          	ret

000003e0 <neorv32_uart0_setup>:
 3e0:	ff010113          	addi	sp,sp,-16
 3e4:	00812423          	sw	s0,8(sp)
 3e8:	00912223          	sw	s1,4(sp)
 3ec:	00112623          	sw	ra,12(sp)
 3f0:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 3f4:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 3f8:	00058413          	mv	s0,a1
 3fc:	00151593          	slli	a1,a0,0x1
 400:	00078513          	mv	a0,a5
 404:	00060493          	mv	s1,a2
 408:	6c8000ef          	jal	ra,ad0 <__udivsi3>
 40c:	01051513          	slli	a0,a0,0x10
 410:	000017b7          	lui	a5,0x1
 414:	01055513          	srli	a0,a0,0x10
 418:	00000713          	li	a4,0
 41c:	ffe78793          	addi	a5,a5,-2 # ffe <__crt0_copy_data_src_begin+0x18a>
 420:	04a7e463          	bltu	a5,a0,468 <neorv32_uart0_setup+0x88>
 424:	0034f793          	andi	a5,s1,3
 428:	00347413          	andi	s0,s0,3
 42c:	fff50513          	addi	a0,a0,-1
 430:	01479793          	slli	a5,a5,0x14
 434:	01641413          	slli	s0,s0,0x16
 438:	00f567b3          	or	a5,a0,a5
 43c:	0087e7b3          	or	a5,a5,s0
 440:	01871713          	slli	a4,a4,0x18
 444:	00c12083          	lw	ra,12(sp)
 448:	00812403          	lw	s0,8(sp)
 44c:	00e7e7b3          	or	a5,a5,a4
 450:	10000737          	lui	a4,0x10000
 454:	00e7e7b3          	or	a5,a5,a4
 458:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 45c:	00412483          	lw	s1,4(sp)
 460:	01010113          	addi	sp,sp,16
 464:	00008067          	ret
 468:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xffff18a>
 46c:	0fd6f693          	andi	a3,a3,253
 470:	00069a63          	bnez	a3,484 <neorv32_uart0_setup+0xa4>
 474:	00355513          	srli	a0,a0,0x3
 478:	00170713          	addi	a4,a4,1
 47c:	0ff77713          	andi	a4,a4,255
 480:	fa1ff06f          	j	420 <neorv32_uart0_setup+0x40>
 484:	00155513          	srli	a0,a0,0x1
 488:	ff1ff06f          	j	478 <neorv32_uart0_setup+0x98>

0000048c <neorv32_uart0_putc>:
 48c:	00040737          	lui	a4,0x40
 490:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 494:	00e7f7b3          	and	a5,a5,a4
 498:	fe079ce3          	bnez	a5,490 <neorv32_uart0_putc+0x4>
 49c:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 4a0:	00008067          	ret

000004a4 <neorv32_uart0_print>:
 4a4:	ff010113          	addi	sp,sp,-16
 4a8:	00812423          	sw	s0,8(sp)
 4ac:	01212023          	sw	s2,0(sp)
 4b0:	00112623          	sw	ra,12(sp)
 4b4:	00912223          	sw	s1,4(sp)
 4b8:	00050413          	mv	s0,a0
 4bc:	00a00913          	li	s2,10
 4c0:	00044483          	lbu	s1,0(s0)
 4c4:	00140413          	addi	s0,s0,1
 4c8:	00049e63          	bnez	s1,4e4 <neorv32_uart0_print+0x40>
 4cc:	00c12083          	lw	ra,12(sp)
 4d0:	00812403          	lw	s0,8(sp)
 4d4:	00412483          	lw	s1,4(sp)
 4d8:	00012903          	lw	s2,0(sp)
 4dc:	01010113          	addi	sp,sp,16
 4e0:	00008067          	ret
 4e4:	01249663          	bne	s1,s2,4f0 <neorv32_uart0_print+0x4c>
 4e8:	00d00513          	li	a0,13
 4ec:	fa1ff0ef          	jal	ra,48c <neorv32_uart0_putc>
 4f0:	00048513          	mv	a0,s1
 4f4:	f99ff0ef          	jal	ra,48c <neorv32_uart0_putc>
 4f8:	fc9ff06f          	j	4c0 <neorv32_uart0_print+0x1c>

000004fc <neorv32_cpu_irq_enable>:
 4fc:	01f00793          	li	a5,31
 500:	00050713          	mv	a4,a0
 504:	02a7e663          	bltu	a5,a0,530 <neorv32_cpu_irq_enable+0x34>
 508:	ffff17b7          	lui	a5,0xffff1
 50c:	88878793          	addi	a5,a5,-1912 # ffff0888 <__ctr0_io_space_begin+0xffff0a88>
 510:	00a7d7b3          	srl	a5,a5,a0
 514:	0017f793          	andi	a5,a5,1
 518:	00100513          	li	a0,1
 51c:	00078c63          	beqz	a5,534 <neorv32_cpu_irq_enable+0x38>
 520:	00e51533          	sll	a0,a0,a4
 524:	30452073          	csrs	mie,a0
 528:	00000513          	li	a0,0
 52c:	00008067          	ret
 530:	00100513          	li	a0,1
 534:	00008067          	ret

00000538 <__neorv32_rte_core>:
 538:	fc010113          	addi	sp,sp,-64
 53c:	02112e23          	sw	ra,60(sp)
 540:	02512c23          	sw	t0,56(sp)
 544:	02612a23          	sw	t1,52(sp)
 548:	02712823          	sw	t2,48(sp)
 54c:	02a12623          	sw	a0,44(sp)
 550:	02b12423          	sw	a1,40(sp)
 554:	02c12223          	sw	a2,36(sp)
 558:	02d12023          	sw	a3,32(sp)
 55c:	00e12e23          	sw	a4,28(sp)
 560:	00f12c23          	sw	a5,24(sp)
 564:	01012a23          	sw	a6,20(sp)
 568:	01112823          	sw	a7,16(sp)
 56c:	01c12623          	sw	t3,12(sp)
 570:	01d12423          	sw	t4,8(sp)
 574:	01e12223          	sw	t5,4(sp)
 578:	01f12023          	sw	t6,0(sp)
 57c:	341026f3          	csrr	a3,mepc
 580:	34069073          	csrw	mscratch,a3
 584:	342027f3          	csrr	a5,mcause
 588:	0407ce63          	bltz	a5,5e4 <__neorv32_rte_core+0xac>
 58c:	0006d703          	lhu	a4,0(a3)
 590:	01071713          	slli	a4,a4,0x10
 594:	01075713          	srli	a4,a4,0x10
 598:	00468593          	addi	a1,a3,4
 59c:	30102673          	csrr	a2,misa
 5a0:	00467613          	andi	a2,a2,4
 5a4:	00060a63          	beqz	a2,5b8 <__neorv32_rte_core+0x80>
 5a8:	00377713          	andi	a4,a4,3
 5ac:	00300613          	li	a2,3
 5b0:	00c70463          	beq	a4,a2,5b8 <__neorv32_rte_core+0x80>
 5b4:	00268593          	addi	a1,a3,2
 5b8:	34159073          	csrw	mepc,a1
 5bc:	00b00713          	li	a4,11
 5c0:	00f77663          	bgeu	a4,a5,5cc <__neorv32_rte_core+0x94>
 5c4:	7b000793          	li	a5,1968
 5c8:	04c0006f          	j	614 <__neorv32_rte_core+0xdc>
 5cc:	00001737          	lui	a4,0x1
 5d0:	00279793          	slli	a5,a5,0x2
 5d4:	bc870713          	addi	a4,a4,-1080 # bc8 <__etext+0x4c>
 5d8:	00e787b3          	add	a5,a5,a4
 5dc:	0007a783          	lw	a5,0(a5)
 5e0:	00078067          	jr	a5
 5e4:	80000737          	lui	a4,0x80000
 5e8:	ffd74713          	xori	a4,a4,-3
 5ec:	00e787b3          	add	a5,a5,a4
 5f0:	01c00713          	li	a4,28
 5f4:	fcf768e3          	bltu	a4,a5,5c4 <__neorv32_rte_core+0x8c>
 5f8:	00001737          	lui	a4,0x1
 5fc:	00279793          	slli	a5,a5,0x2
 600:	bf870713          	addi	a4,a4,-1032 # bf8 <__etext+0x7c>
 604:	00e787b3          	add	a5,a5,a4
 608:	0007a783          	lw	a5,0(a5)
 60c:	00078067          	jr	a5
 610:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut>
 614:	000780e7          	jalr	a5
 618:	03c12083          	lw	ra,60(sp)
 61c:	03812283          	lw	t0,56(sp)
 620:	03412303          	lw	t1,52(sp)
 624:	03012383          	lw	t2,48(sp)
 628:	02c12503          	lw	a0,44(sp)
 62c:	02812583          	lw	a1,40(sp)
 630:	02412603          	lw	a2,36(sp)
 634:	02012683          	lw	a3,32(sp)
 638:	01c12703          	lw	a4,28(sp)
 63c:	01812783          	lw	a5,24(sp)
 640:	01412803          	lw	a6,20(sp)
 644:	01012883          	lw	a7,16(sp)
 648:	00c12e03          	lw	t3,12(sp)
 64c:	00812e83          	lw	t4,8(sp)
 650:	00412f03          	lw	t5,4(sp)
 654:	00012f83          	lw	t6,0(sp)
 658:	04010113          	addi	sp,sp,64
 65c:	30200073          	mret
 660:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x4>
 664:	fb1ff06f          	j	614 <__neorv32_rte_core+0xdc>
 668:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x8>
 66c:	fa9ff06f          	j	614 <__neorv32_rte_core+0xdc>
 670:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0xc>
 674:	fa1ff06f          	j	614 <__neorv32_rte_core+0xdc>
 678:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x10>
 67c:	f99ff06f          	j	614 <__neorv32_rte_core+0xdc>
 680:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x14>
 684:	f91ff06f          	j	614 <__neorv32_rte_core+0xdc>
 688:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x18>
 68c:	f89ff06f          	j	614 <__neorv32_rte_core+0xdc>
 690:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x1c>
 694:	f81ff06f          	j	614 <__neorv32_rte_core+0xdc>
 698:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x20>
 69c:	f79ff06f          	j	614 <__neorv32_rte_core+0xdc>
 6a0:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x24>
 6a4:	f71ff06f          	j	614 <__neorv32_rte_core+0xdc>
 6a8:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x28>
 6ac:	f69ff06f          	j	614 <__neorv32_rte_core+0xdc>
 6b0:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x2c>
 6b4:	f61ff06f          	j	614 <__neorv32_rte_core+0xdc>
 6b8:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x30>
 6bc:	f59ff06f          	j	614 <__neorv32_rte_core+0xdc>
 6c0:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x34>
 6c4:	f51ff06f          	j	614 <__neorv32_rte_core+0xdc>
 6c8:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x38>
 6cc:	f49ff06f          	j	614 <__neorv32_rte_core+0xdc>
 6d0:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x3c>
 6d4:	f41ff06f          	j	614 <__neorv32_rte_core+0xdc>
 6d8:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x40>
 6dc:	f39ff06f          	j	614 <__neorv32_rte_core+0xdc>
 6e0:	8741a783          	lw	a5,-1932(gp) # 80000074 <__neorv32_rte_vector_lut+0x44>
 6e4:	f31ff06f          	j	614 <__neorv32_rte_core+0xdc>
 6e8:	8781a783          	lw	a5,-1928(gp) # 80000078 <__neorv32_rte_vector_lut+0x48>
 6ec:	f29ff06f          	j	614 <__neorv32_rte_core+0xdc>
 6f0:	87c1a783          	lw	a5,-1924(gp) # 8000007c <__neorv32_rte_vector_lut+0x4c>
 6f4:	f21ff06f          	j	614 <__neorv32_rte_core+0xdc>
 6f8:	8801a783          	lw	a5,-1920(gp) # 80000080 <__neorv32_rte_vector_lut+0x50>
 6fc:	f19ff06f          	j	614 <__neorv32_rte_core+0xdc>
 700:	8841a783          	lw	a5,-1916(gp) # 80000084 <__neorv32_rte_vector_lut+0x54>
 704:	f11ff06f          	j	614 <__neorv32_rte_core+0xdc>
 708:	8881a783          	lw	a5,-1912(gp) # 80000088 <__neorv32_rte_vector_lut+0x58>
 70c:	f09ff06f          	j	614 <__neorv32_rte_core+0xdc>
 710:	88c1a783          	lw	a5,-1908(gp) # 8000008c <__neorv32_rte_vector_lut+0x5c>
 714:	f01ff06f          	j	614 <__neorv32_rte_core+0xdc>
 718:	8901a783          	lw	a5,-1904(gp) # 80000090 <__neorv32_rte_vector_lut+0x60>
 71c:	ef9ff06f          	j	614 <__neorv32_rte_core+0xdc>
 720:	8941a783          	lw	a5,-1900(gp) # 80000094 <__neorv32_rte_vector_lut+0x64>
 724:	ef1ff06f          	j	614 <__neorv32_rte_core+0xdc>
 728:	8981a783          	lw	a5,-1896(gp) # 80000098 <__neorv32_rte_vector_lut+0x68>
 72c:	ee9ff06f          	j	614 <__neorv32_rte_core+0xdc>
 730:	89c1a783          	lw	a5,-1892(gp) # 8000009c <__neorv32_rte_vector_lut+0x6c>
 734:	ee1ff06f          	j	614 <__neorv32_rte_core+0xdc>
 738:	8a01a783          	lw	a5,-1888(gp) # 800000a0 <__neorv32_rte_vector_lut+0x70>
 73c:	ed9ff06f          	j	614 <__neorv32_rte_core+0xdc>

00000740 <__neorv32_rte_print_hex_word>:
 740:	fe010113          	addi	sp,sp,-32
 744:	01212823          	sw	s2,16(sp)
 748:	00050913          	mv	s2,a0
 74c:	00001537          	lui	a0,0x1
 750:	00912a23          	sw	s1,20(sp)
 754:	c6c50513          	addi	a0,a0,-916 # c6c <__etext+0xf0>
 758:	000014b7          	lui	s1,0x1
 75c:	00812c23          	sw	s0,24(sp)
 760:	01312623          	sw	s3,12(sp)
 764:	00112e23          	sw	ra,28(sp)
 768:	01c00413          	li	s0,28
 76c:	d39ff0ef          	jal	ra,4a4 <neorv32_uart0_print>
 770:	e6448493          	addi	s1,s1,-412 # e64 <hex_symbols.0>
 774:	ffc00993          	li	s3,-4
 778:	008957b3          	srl	a5,s2,s0
 77c:	00f7f793          	andi	a5,a5,15
 780:	00f487b3          	add	a5,s1,a5
 784:	0007c503          	lbu	a0,0(a5)
 788:	ffc40413          	addi	s0,s0,-4
 78c:	d01ff0ef          	jal	ra,48c <neorv32_uart0_putc>
 790:	ff3414e3          	bne	s0,s3,778 <__neorv32_rte_print_hex_word+0x38>
 794:	01c12083          	lw	ra,28(sp)
 798:	01812403          	lw	s0,24(sp)
 79c:	01412483          	lw	s1,20(sp)
 7a0:	01012903          	lw	s2,16(sp)
 7a4:	00c12983          	lw	s3,12(sp)
 7a8:	02010113          	addi	sp,sp,32
 7ac:	00008067          	ret

000007b0 <__neorv32_rte_debug_exc_handler>:
 7b0:	ff010113          	addi	sp,sp,-16
 7b4:	00112623          	sw	ra,12(sp)
 7b8:	00812423          	sw	s0,8(sp)
 7bc:	00912223          	sw	s1,4(sp)
 7c0:	c11ff0ef          	jal	ra,3d0 <neorv32_uart0_available>
 7c4:	1c050863          	beqz	a0,994 <__neorv32_rte_debug_exc_handler+0x1e4>
 7c8:	00001537          	lui	a0,0x1
 7cc:	c7050513          	addi	a0,a0,-912 # c70 <__etext+0xf4>
 7d0:	cd5ff0ef          	jal	ra,4a4 <neorv32_uart0_print>
 7d4:	34202473          	csrr	s0,mcause
 7d8:	00900713          	li	a4,9
 7dc:	00f47793          	andi	a5,s0,15
 7e0:	03078493          	addi	s1,a5,48
 7e4:	00f77463          	bgeu	a4,a5,7ec <__neorv32_rte_debug_exc_handler+0x3c>
 7e8:	05778493          	addi	s1,a5,87
 7ec:	00b00793          	li	a5,11
 7f0:	0087ee63          	bltu	a5,s0,80c <__neorv32_rte_debug_exc_handler+0x5c>
 7f4:	00001737          	lui	a4,0x1
 7f8:	00241793          	slli	a5,s0,0x2
 7fc:	e3470713          	addi	a4,a4,-460 # e34 <__etext+0x2b8>
 800:	00e787b3          	add	a5,a5,a4
 804:	0007a783          	lw	a5,0(a5)
 808:	00078067          	jr	a5
 80c:	800007b7          	lui	a5,0x80000
 810:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 814:	14e40e63          	beq	s0,a4,970 <__neorv32_rte_debug_exc_handler+0x1c0>
 818:	02876a63          	bltu	a4,s0,84c <__neorv32_rte_debug_exc_handler+0x9c>
 81c:	00378713          	addi	a4,a5,3
 820:	12e40c63          	beq	s0,a4,958 <__neorv32_rte_debug_exc_handler+0x1a8>
 824:	00778793          	addi	a5,a5,7
 828:	12f40e63          	beq	s0,a5,964 <__neorv32_rte_debug_exc_handler+0x1b4>
 82c:	00001537          	lui	a0,0x1
 830:	dd050513          	addi	a0,a0,-560 # dd0 <__etext+0x254>
 834:	c71ff0ef          	jal	ra,4a4 <neorv32_uart0_print>
 838:	00040513          	mv	a0,s0
 83c:	f05ff0ef          	jal	ra,740 <__neorv32_rte_print_hex_word>
 840:	00100793          	li	a5,1
 844:	08f40c63          	beq	s0,a5,8dc <__neorv32_rte_debug_exc_handler+0x12c>
 848:	0280006f          	j	870 <__neorv32_rte_debug_exc_handler+0xc0>
 84c:	ff07c793          	xori	a5,a5,-16
 850:	00f407b3          	add	a5,s0,a5
 854:	00f00713          	li	a4,15
 858:	fcf76ae3          	bltu	a4,a5,82c <__neorv32_rte_debug_exc_handler+0x7c>
 85c:	00001537          	lui	a0,0x1
 860:	dc050513          	addi	a0,a0,-576 # dc0 <__etext+0x244>
 864:	c41ff0ef          	jal	ra,4a4 <neorv32_uart0_print>
 868:	00048513          	mv	a0,s1
 86c:	c21ff0ef          	jal	ra,48c <neorv32_uart0_putc>
 870:	ffd47413          	andi	s0,s0,-3
 874:	00500793          	li	a5,5
 878:	06f40263          	beq	s0,a5,8dc <__neorv32_rte_debug_exc_handler+0x12c>
 87c:	00001537          	lui	a0,0x1
 880:	e1450513          	addi	a0,a0,-492 # e14 <__etext+0x298>
 884:	c21ff0ef          	jal	ra,4a4 <neorv32_uart0_print>
 888:	34002573          	csrr	a0,mscratch
 88c:	eb5ff0ef          	jal	ra,740 <__neorv32_rte_print_hex_word>
 890:	00001537          	lui	a0,0x1
 894:	e1c50513          	addi	a0,a0,-484 # e1c <__etext+0x2a0>
 898:	c0dff0ef          	jal	ra,4a4 <neorv32_uart0_print>
 89c:	34302573          	csrr	a0,mtval
 8a0:	ea1ff0ef          	jal	ra,740 <__neorv32_rte_print_hex_word>
 8a4:	00812403          	lw	s0,8(sp)
 8a8:	00c12083          	lw	ra,12(sp)
 8ac:	00412483          	lw	s1,4(sp)
 8b0:	00001537          	lui	a0,0x1
 8b4:	e2850513          	addi	a0,a0,-472 # e28 <__etext+0x2ac>
 8b8:	01010113          	addi	sp,sp,16
 8bc:	be9ff06f          	j	4a4 <neorv32_uart0_print>
 8c0:	00001537          	lui	a0,0x1
 8c4:	c7850513          	addi	a0,a0,-904 # c78 <__etext+0xfc>
 8c8:	bddff0ef          	jal	ra,4a4 <neorv32_uart0_print>
 8cc:	fb1ff06f          	j	87c <__neorv32_rte_debug_exc_handler+0xcc>
 8d0:	00001537          	lui	a0,0x1
 8d4:	c9850513          	addi	a0,a0,-872 # c98 <__etext+0x11c>
 8d8:	bcdff0ef          	jal	ra,4a4 <neorv32_uart0_print>
 8dc:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 8e0:	0a07d463          	bgez	a5,988 <__neorv32_rte_debug_exc_handler+0x1d8>
 8e4:	0017f793          	andi	a5,a5,1
 8e8:	08078a63          	beqz	a5,97c <__neorv32_rte_debug_exc_handler+0x1cc>
 8ec:	00001537          	lui	a0,0x1
 8f0:	de850513          	addi	a0,a0,-536 # de8 <__etext+0x26c>
 8f4:	fd5ff06f          	j	8c8 <__neorv32_rte_debug_exc_handler+0x118>
 8f8:	00001537          	lui	a0,0x1
 8fc:	cb450513          	addi	a0,a0,-844 # cb4 <__etext+0x138>
 900:	fc9ff06f          	j	8c8 <__neorv32_rte_debug_exc_handler+0x118>
 904:	00001537          	lui	a0,0x1
 908:	cc850513          	addi	a0,a0,-824 # cc8 <__etext+0x14c>
 90c:	fbdff06f          	j	8c8 <__neorv32_rte_debug_exc_handler+0x118>
 910:	00001537          	lui	a0,0x1
 914:	cd450513          	addi	a0,a0,-812 # cd4 <__etext+0x158>
 918:	fb1ff06f          	j	8c8 <__neorv32_rte_debug_exc_handler+0x118>
 91c:	00001537          	lui	a0,0x1
 920:	cec50513          	addi	a0,a0,-788 # cec <__etext+0x170>
 924:	fb5ff06f          	j	8d8 <__neorv32_rte_debug_exc_handler+0x128>
 928:	00001537          	lui	a0,0x1
 92c:	d0050513          	addi	a0,a0,-768 # d00 <__etext+0x184>
 930:	f99ff06f          	j	8c8 <__neorv32_rte_debug_exc_handler+0x118>
 934:	00001537          	lui	a0,0x1
 938:	d1c50513          	addi	a0,a0,-740 # d1c <__etext+0x1a0>
 93c:	f9dff06f          	j	8d8 <__neorv32_rte_debug_exc_handler+0x128>
 940:	00001537          	lui	a0,0x1
 944:	d3050513          	addi	a0,a0,-720 # d30 <__etext+0x1b4>
 948:	f81ff06f          	j	8c8 <__neorv32_rte_debug_exc_handler+0x118>
 94c:	00001537          	lui	a0,0x1
 950:	d5050513          	addi	a0,a0,-688 # d50 <__etext+0x1d4>
 954:	f75ff06f          	j	8c8 <__neorv32_rte_debug_exc_handler+0x118>
 958:	00001537          	lui	a0,0x1
 95c:	d7050513          	addi	a0,a0,-656 # d70 <__etext+0x1f4>
 960:	f69ff06f          	j	8c8 <__neorv32_rte_debug_exc_handler+0x118>
 964:	00001537          	lui	a0,0x1
 968:	d8c50513          	addi	a0,a0,-628 # d8c <__etext+0x210>
 96c:	f5dff06f          	j	8c8 <__neorv32_rte_debug_exc_handler+0x118>
 970:	00001537          	lui	a0,0x1
 974:	da450513          	addi	a0,a0,-604 # da4 <__etext+0x228>
 978:	f51ff06f          	j	8c8 <__neorv32_rte_debug_exc_handler+0x118>
 97c:	00001537          	lui	a0,0x1
 980:	df850513          	addi	a0,a0,-520 # df8 <__etext+0x27c>
 984:	f45ff06f          	j	8c8 <__neorv32_rte_debug_exc_handler+0x118>
 988:	00001537          	lui	a0,0x1
 98c:	e0850513          	addi	a0,a0,-504 # e08 <__etext+0x28c>
 990:	f39ff06f          	j	8c8 <__neorv32_rte_debug_exc_handler+0x118>
 994:	00c12083          	lw	ra,12(sp)
 998:	00812403          	lw	s0,8(sp)
 99c:	00412483          	lw	s1,4(sp)
 9a0:	01010113          	addi	sp,sp,16
 9a4:	00008067          	ret

000009a8 <neorv32_rte_exception_install>:
 9a8:	01f00793          	li	a5,31
 9ac:	00a7ee63          	bltu	a5,a0,9c8 <neorv32_rte_exception_install+0x20>
 9b0:	83018793          	addi	a5,gp,-2000 # 80000030 <__neorv32_rte_vector_lut>
 9b4:	00251513          	slli	a0,a0,0x2
 9b8:	00a78533          	add	a0,a5,a0
 9bc:	00b52023          	sw	a1,0(a0)
 9c0:	00000513          	li	a0,0
 9c4:	00008067          	ret
 9c8:	00100513          	li	a0,1
 9cc:	00008067          	ret

000009d0 <neorv32_rte_exception_uninstall>:
 9d0:	01f00793          	li	a5,31
 9d4:	02a7e063          	bltu	a5,a0,9f4 <neorv32_rte_exception_uninstall+0x24>
 9d8:	83018793          	addi	a5,gp,-2000 # 80000030 <__neorv32_rte_vector_lut>
 9dc:	00251513          	slli	a0,a0,0x2
 9e0:	00a78533          	add	a0,a5,a0
 9e4:	7b000793          	li	a5,1968
 9e8:	00f52023          	sw	a5,0(a0)
 9ec:	00000513          	li	a0,0
 9f0:	00008067          	ret
 9f4:	00100513          	li	a0,1
 9f8:	00008067          	ret

000009fc <neorv32_rte_setup>:
 9fc:	ff010113          	addi	sp,sp,-16
 a00:	00112623          	sw	ra,12(sp)
 a04:	00812423          	sw	s0,8(sp)
 a08:	00912223          	sw	s1,4(sp)
 a0c:	53800793          	li	a5,1336
 a10:	30579073          	csrw	mtvec,a5
 a14:	00000793          	li	a5,0
 a18:	30479073          	csrw	mie,a5
 a1c:	34479073          	csrw	mip,a5
 a20:	f6002e23          	sw	zero,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 a24:	00000413          	li	s0,0
 a28:	01d00493          	li	s1,29
 a2c:	00040513          	mv	a0,s0
 a30:	00140413          	addi	s0,s0,1
 a34:	0ff47413          	andi	s0,s0,255
 a38:	f99ff0ef          	jal	ra,9d0 <neorv32_rte_exception_uninstall>
 a3c:	fe9418e3          	bne	s0,s1,a2c <neorv32_rte_setup+0x30>
 a40:	00c12083          	lw	ra,12(sp)
 a44:	00812403          	lw	s0,8(sp)
 a48:	00412483          	lw	s1,4(sp)
 a4c:	01010113          	addi	sp,sp,16
 a50:	00008067          	ret

00000a54 <neorv32_gpio_available>:
 a54:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 a58:	01055513          	srli	a0,a0,0x10
 a5c:	00157513          	andi	a0,a0,1
 a60:	00008067          	ret

00000a64 <neorv32_gpio_pin_set>:
 a64:	00100793          	li	a5,1
 a68:	01f00713          	li	a4,31
 a6c:	00a797b3          	sll	a5,a5,a0
 a70:	00a74a63          	blt	a4,a0,a84 <neorv32_gpio_pin_set+0x20>
 a74:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 a78:	00f767b3          	or	a5,a4,a5
 a7c:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 a80:	00008067          	ret
 a84:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 a88:	00f767b3          	or	a5,a4,a5
 a8c:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 a90:	00008067          	ret

00000a94 <neorv32_gpio_pin_clr>:
 a94:	00100793          	li	a5,1
 a98:	00a797b3          	sll	a5,a5,a0
 a9c:	01f00713          	li	a4,31
 aa0:	fff7c793          	not	a5,a5
 aa4:	00a74a63          	blt	a4,a0,ab8 <neorv32_gpio_pin_clr+0x24>
 aa8:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 aac:	00f777b3          	and	a5,a4,a5
 ab0:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 ab4:	00008067          	ret
 ab8:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 abc:	00f777b3          	and	a5,a4,a5
 ac0:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 ac4:	00008067          	ret

00000ac8 <__divsi3>:
 ac8:	06054063          	bltz	a0,b28 <__umodsi3+0x10>
 acc:	0605c663          	bltz	a1,b38 <__umodsi3+0x20>

00000ad0 <__udivsi3>:
 ad0:	00058613          	mv	a2,a1
 ad4:	00050593          	mv	a1,a0
 ad8:	fff00513          	li	a0,-1
 adc:	02060c63          	beqz	a2,b14 <__udivsi3+0x44>
 ae0:	00100693          	li	a3,1
 ae4:	00b67a63          	bgeu	a2,a1,af8 <__udivsi3+0x28>
 ae8:	00c05863          	blez	a2,af8 <__udivsi3+0x28>
 aec:	00161613          	slli	a2,a2,0x1
 af0:	00169693          	slli	a3,a3,0x1
 af4:	feb66ae3          	bltu	a2,a1,ae8 <__udivsi3+0x18>
 af8:	00000513          	li	a0,0
 afc:	00c5e663          	bltu	a1,a2,b08 <__udivsi3+0x38>
 b00:	40c585b3          	sub	a1,a1,a2
 b04:	00d56533          	or	a0,a0,a3
 b08:	0016d693          	srli	a3,a3,0x1
 b0c:	00165613          	srli	a2,a2,0x1
 b10:	fe0696e3          	bnez	a3,afc <__udivsi3+0x2c>
 b14:	00008067          	ret

00000b18 <__umodsi3>:
 b18:	00008293          	mv	t0,ra
 b1c:	fb5ff0ef          	jal	ra,ad0 <__udivsi3>
 b20:	00058513          	mv	a0,a1
 b24:	00028067          	jr	t0
 b28:	40a00533          	neg	a0,a0
 b2c:	00b04863          	bgtz	a1,b3c <__umodsi3+0x24>
 b30:	40b005b3          	neg	a1,a1
 b34:	f9dff06f          	j	ad0 <__udivsi3>
 b38:	40b005b3          	neg	a1,a1
 b3c:	00008293          	mv	t0,ra
 b40:	f91ff0ef          	jal	ra,ad0 <__udivsi3>
 b44:	40a00533          	neg	a0,a0
 b48:	00028067          	jr	t0

00000b4c <__modsi3>:
 b4c:	00008293          	mv	t0,ra
 b50:	0005ca63          	bltz	a1,b64 <__modsi3+0x18>
 b54:	00054c63          	bltz	a0,b6c <__modsi3+0x20>
 b58:	f79ff0ef          	jal	ra,ad0 <__udivsi3>
 b5c:	00058513          	mv	a0,a1
 b60:	00028067          	jr	t0
 b64:	40b005b3          	neg	a1,a1
 b68:	fe0558e3          	bgez	a0,b58 <__modsi3+0xc>
 b6c:	40a00533          	neg	a0,a0
 b70:	f61ff0ef          	jal	ra,ad0 <__udivsi3>
 b74:	40b00533          	neg	a0,a1
 b78:	00028067          	jr	t0
