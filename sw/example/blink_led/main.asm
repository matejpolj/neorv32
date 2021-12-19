
main.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00000037          	lui	zero,0x0

00000004 <__crt0_pointer_init>:
   4:	80018117          	auipc	sp,0x80018
   8:	ff810113          	addi	sp,sp,-8 # 80017ffc <__ctr0_io_space_begin+0x800181fc>
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
  e0:	cb058593          	addi	a1,a1,-848 # d8c <__crt0_copy_data_src_begin>
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
 190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3d74>
 194:	00112623          	sw	ra,12(sp)
 198:	088000ef          	jal	ra,220 <neorv32_uart0_setup>
 19c:	780000ef          	jal	ra,91c <neorv32_gpio_available>
 1a0:	00050c63          	beqz	a0,1b8 <main+0x38>
 1a4:	730000ef          	jal	ra,8d4 <neorv32_rte_setup>
 1a8:	00001537          	lui	a0,0x1
 1ac:	ac850513          	addi	a0,a0,-1336 # ac8 <__etext+0x24>
 1b0:	134000ef          	jal	ra,2e4 <neorv32_uart0_print>
 1b4:	020000ef          	jal	ra,1d4 <blink_led_c>
 1b8:	00001537          	lui	a0,0x1
 1bc:	aa450513          	addi	a0,a0,-1372 # aa4 <__etext>
 1c0:	124000ef          	jal	ra,2e4 <neorv32_uart0_print>
 1c4:	00c12083          	lw	ra,12(sp)
 1c8:	00100513          	li	a0,1
 1cc:	01010113          	addi	sp,sp,16
 1d0:	00008067          	ret

000001d4 <blink_led_c>:
 1d4:	ff010113          	addi	sp,sp,-16
 1d8:	00000513          	li	a0,0
 1dc:	00000593          	li	a1,0
 1e0:	00112623          	sw	ra,12(sp)
 1e4:	00812423          	sw	s0,8(sp)
 1e8:	744000ef          	jal	ra,92c <neorv32_gpio_port_set>
 1ec:	00000513          	li	a0,0
 1f0:	00150413          	addi	s0,a0,1
 1f4:	00000593          	li	a1,0
 1f8:	0ff57513          	andi	a0,a0,255
 1fc:	730000ef          	jal	ra,92c <neorv32_gpio_port_set>
 200:	0c800513          	li	a0,200
 204:	164000ef          	jal	ra,368 <neorv32_cpu_delay_ms>
 208:	00040513          	mv	a0,s0
 20c:	fe5ff06f          	j	1f0 <blink_led_c+0x1c>

00000210 <neorv32_uart0_available>:
 210:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 214:	01255513          	srli	a0,a0,0x12
 218:	00157513          	andi	a0,a0,1
 21c:	00008067          	ret

00000220 <neorv32_uart0_setup>:
 220:	ff010113          	addi	sp,sp,-16
 224:	00812423          	sw	s0,8(sp)
 228:	00912223          	sw	s1,4(sp)
 22c:	00112623          	sw	ra,12(sp)
 230:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 234:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 238:	00058413          	mv	s0,a1
 23c:	00151593          	slli	a1,a0,0x1
 240:	00078513          	mv	a0,a5
 244:	00060493          	mv	s1,a2
 248:	7b0000ef          	jal	ra,9f8 <__udivsi3>
 24c:	01051513          	slli	a0,a0,0x10
 250:	000017b7          	lui	a5,0x1
 254:	01055513          	srli	a0,a0,0x10
 258:	00000713          	li	a4,0
 25c:	ffe78793          	addi	a5,a5,-2 # ffe <__crt0_copy_data_src_begin+0x272>
 260:	04a7e463          	bltu	a5,a0,2a8 <neorv32_uart0_setup+0x88>
 264:	0034f793          	andi	a5,s1,3
 268:	00347413          	andi	s0,s0,3
 26c:	fff50513          	addi	a0,a0,-1
 270:	01479793          	slli	a5,a5,0x14
 274:	01641413          	slli	s0,s0,0x16
 278:	00f567b3          	or	a5,a0,a5
 27c:	0087e7b3          	or	a5,a5,s0
 280:	01871713          	slli	a4,a4,0x18
 284:	00c12083          	lw	ra,12(sp)
 288:	00812403          	lw	s0,8(sp)
 28c:	00e7e7b3          	or	a5,a5,a4
 290:	10000737          	lui	a4,0x10000
 294:	00e7e7b3          	or	a5,a5,a4
 298:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 29c:	00412483          	lw	s1,4(sp)
 2a0:	01010113          	addi	sp,sp,16
 2a4:	00008067          	ret
 2a8:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xffff272>
 2ac:	0fd6f693          	andi	a3,a3,253
 2b0:	00069a63          	bnez	a3,2c4 <neorv32_uart0_setup+0xa4>
 2b4:	00355513          	srli	a0,a0,0x3
 2b8:	00170713          	addi	a4,a4,1
 2bc:	0ff77713          	andi	a4,a4,255
 2c0:	fa1ff06f          	j	260 <neorv32_uart0_setup+0x40>
 2c4:	00155513          	srli	a0,a0,0x1
 2c8:	ff1ff06f          	j	2b8 <neorv32_uart0_setup+0x98>

000002cc <neorv32_uart0_putc>:
 2cc:	00040737          	lui	a4,0x40
 2d0:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 2d4:	00e7f7b3          	and	a5,a5,a4
 2d8:	fe079ce3          	bnez	a5,2d0 <neorv32_uart0_putc+0x4>
 2dc:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 2e0:	00008067          	ret

000002e4 <neorv32_uart0_print>:
 2e4:	ff010113          	addi	sp,sp,-16
 2e8:	00812423          	sw	s0,8(sp)
 2ec:	01212023          	sw	s2,0(sp)
 2f0:	00112623          	sw	ra,12(sp)
 2f4:	00912223          	sw	s1,4(sp)
 2f8:	00050413          	mv	s0,a0
 2fc:	00a00913          	li	s2,10
 300:	00044483          	lbu	s1,0(s0)
 304:	00140413          	addi	s0,s0,1
 308:	00049e63          	bnez	s1,324 <neorv32_uart0_print+0x40>
 30c:	00c12083          	lw	ra,12(sp)
 310:	00812403          	lw	s0,8(sp)
 314:	00412483          	lw	s1,4(sp)
 318:	00012903          	lw	s2,0(sp)
 31c:	01010113          	addi	sp,sp,16
 320:	00008067          	ret
 324:	01249663          	bne	s1,s2,330 <neorv32_uart0_print+0x4c>
 328:	00d00513          	li	a0,13
 32c:	fa1ff0ef          	jal	ra,2cc <neorv32_uart0_putc>
 330:	00048513          	mv	a0,s1
 334:	f99ff0ef          	jal	ra,2cc <neorv32_uart0_putc>
 338:	fc9ff06f          	j	300 <neorv32_uart0_print+0x1c>

0000033c <neorv32_cpu_get_systime>:
 33c:	ff010113          	addi	sp,sp,-16
 340:	c81026f3          	rdtimeh	a3
 344:	c0102773          	rdtime	a4
 348:	c81027f3          	rdtimeh	a5
 34c:	fed79ae3          	bne	a5,a3,340 <neorv32_cpu_get_systime+0x4>
 350:	00e12023          	sw	a4,0(sp)
 354:	00f12223          	sw	a5,4(sp)
 358:	00012503          	lw	a0,0(sp)
 35c:	00412583          	lw	a1,4(sp)
 360:	01010113          	addi	sp,sp,16
 364:	00008067          	ret

00000368 <neorv32_cpu_delay_ms>:
 368:	fd010113          	addi	sp,sp,-48
 36c:	00a12623          	sw	a0,12(sp)
 370:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 374:	3e800593          	li	a1,1000
 378:	02112623          	sw	ra,44(sp)
 37c:	02812423          	sw	s0,40(sp)
 380:	02912223          	sw	s1,36(sp)
 384:	03212023          	sw	s2,32(sp)
 388:	01312e23          	sw	s3,28(sp)
 38c:	66c000ef          	jal	ra,9f8 <__udivsi3>
 390:	00c12603          	lw	a2,12(sp)
 394:	00000693          	li	a3,0
 398:	00000593          	li	a1,0
 39c:	5c4000ef          	jal	ra,960 <__muldi3>
 3a0:	00050413          	mv	s0,a0
 3a4:	00058993          	mv	s3,a1
 3a8:	f95ff0ef          	jal	ra,33c <neorv32_cpu_get_systime>
 3ac:	00058913          	mv	s2,a1
 3b0:	00050493          	mv	s1,a0
 3b4:	f89ff0ef          	jal	ra,33c <neorv32_cpu_get_systime>
 3b8:	00b96663          	bltu	s2,a1,3c4 <neorv32_cpu_delay_ms+0x5c>
 3bc:	05259263          	bne	a1,s2,400 <neorv32_cpu_delay_ms+0x98>
 3c0:	04a4f063          	bgeu	s1,a0,400 <neorv32_cpu_delay_ms+0x98>
 3c4:	008484b3          	add	s1,s1,s0
 3c8:	0084b433          	sltu	s0,s1,s0
 3cc:	01390933          	add	s2,s2,s3
 3d0:	01240433          	add	s0,s0,s2
 3d4:	f69ff0ef          	jal	ra,33c <neorv32_cpu_get_systime>
 3d8:	fe85eee3          	bltu	a1,s0,3d4 <neorv32_cpu_delay_ms+0x6c>
 3dc:	00b41463          	bne	s0,a1,3e4 <neorv32_cpu_delay_ms+0x7c>
 3e0:	fe956ae3          	bltu	a0,s1,3d4 <neorv32_cpu_delay_ms+0x6c>
 3e4:	02c12083          	lw	ra,44(sp)
 3e8:	02812403          	lw	s0,40(sp)
 3ec:	02412483          	lw	s1,36(sp)
 3f0:	02012903          	lw	s2,32(sp)
 3f4:	01c12983          	lw	s3,28(sp)
 3f8:	03010113          	addi	sp,sp,48
 3fc:	00008067          	ret
 400:	01c99913          	slli	s2,s3,0x1c
 404:	00445413          	srli	s0,s0,0x4
 408:	00896433          	or	s0,s2,s0

0000040c <__neorv32_cpu_delay_ms_start>:
 40c:	00040a63          	beqz	s0,420 <__neorv32_cpu_delay_ms_end>
 410:	00040863          	beqz	s0,420 <__neorv32_cpu_delay_ms_end>
 414:	fff40413          	addi	s0,s0,-1
 418:	00000013          	nop
 41c:	ff1ff06f          	j	40c <__neorv32_cpu_delay_ms_start>

00000420 <__neorv32_cpu_delay_ms_end>:
 420:	fc5ff06f          	j	3e4 <neorv32_cpu_delay_ms+0x7c>
 424:	0000                	unimp
 426:	0000                	unimp
 428:	0000                	unimp
 42a:	0000                	unimp
 42c:	0000                	unimp
 42e:	0000                	unimp

00000430 <__neorv32_rte_core>:
 430:	fc010113          	addi	sp,sp,-64
 434:	02112e23          	sw	ra,60(sp)
 438:	02512c23          	sw	t0,56(sp)
 43c:	02612a23          	sw	t1,52(sp)
 440:	02712823          	sw	t2,48(sp)
 444:	02a12623          	sw	a0,44(sp)
 448:	02b12423          	sw	a1,40(sp)
 44c:	02c12223          	sw	a2,36(sp)
 450:	02d12023          	sw	a3,32(sp)
 454:	00e12e23          	sw	a4,28(sp)
 458:	00f12c23          	sw	a5,24(sp)
 45c:	01012a23          	sw	a6,20(sp)
 460:	01112823          	sw	a7,16(sp)
 464:	01c12623          	sw	t3,12(sp)
 468:	01d12423          	sw	t4,8(sp)
 46c:	01e12223          	sw	t5,4(sp)
 470:	01f12023          	sw	t6,0(sp)
 474:	34102773          	csrr	a4,mepc
 478:	34071073          	csrw	mscratch,a4
 47c:	342027f3          	csrr	a5,mcause
 480:	0807c863          	bltz	a5,510 <__neorv32_rte_core+0xe0>
 484:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3f274>
 488:	00300593          	li	a1,3
 48c:	0036f693          	andi	a3,a3,3
 490:	00270613          	addi	a2,a4,2
 494:	00b69463          	bne	a3,a1,49c <__neorv32_rte_core+0x6c>
 498:	00470613          	addi	a2,a4,4
 49c:	34161073          	csrw	mepc,a2
 4a0:	00b00713          	li	a4,11
 4a4:	04f77a63          	bgeu	a4,a5,4f8 <__neorv32_rte_core+0xc8>
 4a8:	6ac00793          	li	a5,1708
 4ac:	000780e7          	jalr	a5
 4b0:	03c12083          	lw	ra,60(sp)
 4b4:	03812283          	lw	t0,56(sp)
 4b8:	03412303          	lw	t1,52(sp)
 4bc:	03012383          	lw	t2,48(sp)
 4c0:	02c12503          	lw	a0,44(sp)
 4c4:	02812583          	lw	a1,40(sp)
 4c8:	02412603          	lw	a2,36(sp)
 4cc:	02012683          	lw	a3,32(sp)
 4d0:	01c12703          	lw	a4,28(sp)
 4d4:	01812783          	lw	a5,24(sp)
 4d8:	01412803          	lw	a6,20(sp)
 4dc:	01012883          	lw	a7,16(sp)
 4e0:	00c12e03          	lw	t3,12(sp)
 4e4:	00812e83          	lw	t4,8(sp)
 4e8:	00412f03          	lw	t5,4(sp)
 4ec:	00012f83          	lw	t6,0(sp)
 4f0:	04010113          	addi	sp,sp,64
 4f4:	30200073          	mret
 4f8:	00001737          	lui	a4,0x1
 4fc:	00279793          	slli	a5,a5,0x2
 500:	ae470713          	addi	a4,a4,-1308 # ae4 <__etext+0x40>
 504:	00e787b3          	add	a5,a5,a4
 508:	0007a783          	lw	a5,0(a5)
 50c:	00078067          	jr	a5
 510:	80000737          	lui	a4,0x80000
 514:	ffd74713          	xori	a4,a4,-3
 518:	00e787b3          	add	a5,a5,a4
 51c:	01c00713          	li	a4,28
 520:	f8f764e3          	bltu	a4,a5,4a8 <__neorv32_rte_core+0x78>
 524:	00001737          	lui	a4,0x1
 528:	00279793          	slli	a5,a5,0x2
 52c:	b1470713          	addi	a4,a4,-1260 # b14 <__etext+0x70>
 530:	00e787b3          	add	a5,a5,a4
 534:	0007a783          	lw	a5,0(a5)
 538:	00078067          	jr	a5
 53c:	800007b7          	lui	a5,0x80000
 540:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 544:	f69ff06f          	j	4ac <__neorv32_rte_core+0x7c>
 548:	800007b7          	lui	a5,0x80000
 54c:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 550:	f5dff06f          	j	4ac <__neorv32_rte_core+0x7c>
 554:	800007b7          	lui	a5,0x80000
 558:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 55c:	f51ff06f          	j	4ac <__neorv32_rte_core+0x7c>
 560:	800007b7          	lui	a5,0x80000
 564:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
 568:	f45ff06f          	j	4ac <__neorv32_rte_core+0x7c>
 56c:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
 570:	f3dff06f          	j	4ac <__neorv32_rte_core+0x7c>
 574:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
 578:	f35ff06f          	j	4ac <__neorv32_rte_core+0x7c>
 57c:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
 580:	f2dff06f          	j	4ac <__neorv32_rte_core+0x7c>
 584:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
 588:	f25ff06f          	j	4ac <__neorv32_rte_core+0x7c>
 58c:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
 590:	f1dff06f          	j	4ac <__neorv32_rte_core+0x7c>
 594:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
 598:	f15ff06f          	j	4ac <__neorv32_rte_core+0x7c>
 59c:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
 5a0:	f0dff06f          	j	4ac <__neorv32_rte_core+0x7c>
 5a4:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
 5a8:	f05ff06f          	j	4ac <__neorv32_rte_core+0x7c>
 5ac:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
 5b0:	efdff06f          	j	4ac <__neorv32_rte_core+0x7c>
 5b4:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
 5b8:	ef5ff06f          	j	4ac <__neorv32_rte_core+0x7c>
 5bc:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
 5c0:	eedff06f          	j	4ac <__neorv32_rte_core+0x7c>
 5c4:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
 5c8:	ee5ff06f          	j	4ac <__neorv32_rte_core+0x7c>
 5cc:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 5d0:	eddff06f          	j	4ac <__neorv32_rte_core+0x7c>
 5d4:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 5d8:	ed5ff06f          	j	4ac <__neorv32_rte_core+0x7c>
 5dc:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 5e0:	ecdff06f          	j	4ac <__neorv32_rte_core+0x7c>
 5e4:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 5e8:	ec5ff06f          	j	4ac <__neorv32_rte_core+0x7c>
 5ec:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 5f0:	ebdff06f          	j	4ac <__neorv32_rte_core+0x7c>
 5f4:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 5f8:	eb5ff06f          	j	4ac <__neorv32_rte_core+0x7c>
 5fc:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 600:	eadff06f          	j	4ac <__neorv32_rte_core+0x7c>
 604:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 608:	ea5ff06f          	j	4ac <__neorv32_rte_core+0x7c>
 60c:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 610:	e9dff06f          	j	4ac <__neorv32_rte_core+0x7c>
 614:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 618:	e95ff06f          	j	4ac <__neorv32_rte_core+0x7c>
 61c:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 620:	e8dff06f          	j	4ac <__neorv32_rte_core+0x7c>
 624:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 628:	e85ff06f          	j	4ac <__neorv32_rte_core+0x7c>
 62c:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 630:	e7dff06f          	j	4ac <__neorv32_rte_core+0x7c>
 634:	0000                	unimp
 636:	0000                	unimp
 638:	0000                	unimp
 63a:	0000                	unimp

0000063c <__neorv32_rte_print_hex_word>:
 63c:	fe010113          	addi	sp,sp,-32
 640:	01212823          	sw	s2,16(sp)
 644:	00050913          	mv	s2,a0
 648:	00001537          	lui	a0,0x1
 64c:	00912a23          	sw	s1,20(sp)
 650:	b8850513          	addi	a0,a0,-1144 # b88 <__etext+0xe4>
 654:	000014b7          	lui	s1,0x1
 658:	00812c23          	sw	s0,24(sp)
 65c:	01312623          	sw	s3,12(sp)
 660:	00112e23          	sw	ra,28(sp)
 664:	01c00413          	li	s0,28
 668:	c7dff0ef          	jal	ra,2e4 <neorv32_uart0_print>
 66c:	d7c48493          	addi	s1,s1,-644 # d7c <hex_symbols.0>
 670:	ffc00993          	li	s3,-4
 674:	008957b3          	srl	a5,s2,s0
 678:	00f7f793          	andi	a5,a5,15
 67c:	00f487b3          	add	a5,s1,a5
 680:	0007c503          	lbu	a0,0(a5)
 684:	ffc40413          	addi	s0,s0,-4
 688:	c45ff0ef          	jal	ra,2cc <neorv32_uart0_putc>
 68c:	ff3414e3          	bne	s0,s3,674 <__neorv32_rte_print_hex_word+0x38>
 690:	01c12083          	lw	ra,28(sp)
 694:	01812403          	lw	s0,24(sp)
 698:	01412483          	lw	s1,20(sp)
 69c:	01012903          	lw	s2,16(sp)
 6a0:	00c12983          	lw	s3,12(sp)
 6a4:	02010113          	addi	sp,sp,32
 6a8:	00008067          	ret

000006ac <__neorv32_rte_debug_exc_handler>:
 6ac:	ff010113          	addi	sp,sp,-16
 6b0:	00112623          	sw	ra,12(sp)
 6b4:	00812423          	sw	s0,8(sp)
 6b8:	00912223          	sw	s1,4(sp)
 6bc:	b55ff0ef          	jal	ra,210 <neorv32_uart0_available>
 6c0:	1c050863          	beqz	a0,890 <__neorv32_rte_debug_exc_handler+0x1e4>
 6c4:	00001537          	lui	a0,0x1
 6c8:	b8c50513          	addi	a0,a0,-1140 # b8c <__etext+0xe8>
 6cc:	c19ff0ef          	jal	ra,2e4 <neorv32_uart0_print>
 6d0:	34202473          	csrr	s0,mcause
 6d4:	00900713          	li	a4,9
 6d8:	00f47793          	andi	a5,s0,15
 6dc:	03078493          	addi	s1,a5,48
 6e0:	00f77463          	bgeu	a4,a5,6e8 <__neorv32_rte_debug_exc_handler+0x3c>
 6e4:	05778493          	addi	s1,a5,87
 6e8:	00b00793          	li	a5,11
 6ec:	0087ee63          	bltu	a5,s0,708 <__neorv32_rte_debug_exc_handler+0x5c>
 6f0:	00001737          	lui	a4,0x1
 6f4:	00241793          	slli	a5,s0,0x2
 6f8:	d4c70713          	addi	a4,a4,-692 # d4c <__etext+0x2a8>
 6fc:	00e787b3          	add	a5,a5,a4
 700:	0007a783          	lw	a5,0(a5)
 704:	00078067          	jr	a5
 708:	800007b7          	lui	a5,0x80000
 70c:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 710:	14e40e63          	beq	s0,a4,86c <__neorv32_rte_debug_exc_handler+0x1c0>
 714:	02876a63          	bltu	a4,s0,748 <__neorv32_rte_debug_exc_handler+0x9c>
 718:	00378713          	addi	a4,a5,3
 71c:	12e40c63          	beq	s0,a4,854 <__neorv32_rte_debug_exc_handler+0x1a8>
 720:	00778793          	addi	a5,a5,7
 724:	12f40e63          	beq	s0,a5,860 <__neorv32_rte_debug_exc_handler+0x1b4>
 728:	00001537          	lui	a0,0x1
 72c:	cec50513          	addi	a0,a0,-788 # cec <__etext+0x248>
 730:	bb5ff0ef          	jal	ra,2e4 <neorv32_uart0_print>
 734:	00040513          	mv	a0,s0
 738:	f05ff0ef          	jal	ra,63c <__neorv32_rte_print_hex_word>
 73c:	00100793          	li	a5,1
 740:	08f40c63          	beq	s0,a5,7d8 <__neorv32_rte_debug_exc_handler+0x12c>
 744:	0280006f          	j	76c <__neorv32_rte_debug_exc_handler+0xc0>
 748:	ff07c793          	xori	a5,a5,-16
 74c:	00f407b3          	add	a5,s0,a5
 750:	00f00713          	li	a4,15
 754:	fcf76ae3          	bltu	a4,a5,728 <__neorv32_rte_debug_exc_handler+0x7c>
 758:	00001537          	lui	a0,0x1
 75c:	cdc50513          	addi	a0,a0,-804 # cdc <__etext+0x238>
 760:	b85ff0ef          	jal	ra,2e4 <neorv32_uart0_print>
 764:	00048513          	mv	a0,s1
 768:	b65ff0ef          	jal	ra,2cc <neorv32_uart0_putc>
 76c:	ffd47413          	andi	s0,s0,-3
 770:	00500793          	li	a5,5
 774:	06f40263          	beq	s0,a5,7d8 <__neorv32_rte_debug_exc_handler+0x12c>
 778:	00001537          	lui	a0,0x1
 77c:	d3050513          	addi	a0,a0,-720 # d30 <__etext+0x28c>
 780:	b65ff0ef          	jal	ra,2e4 <neorv32_uart0_print>
 784:	34002573          	csrr	a0,mscratch
 788:	eb5ff0ef          	jal	ra,63c <__neorv32_rte_print_hex_word>
 78c:	00001537          	lui	a0,0x1
 790:	d3850513          	addi	a0,a0,-712 # d38 <__etext+0x294>
 794:	b51ff0ef          	jal	ra,2e4 <neorv32_uart0_print>
 798:	34302573          	csrr	a0,mtval
 79c:	ea1ff0ef          	jal	ra,63c <__neorv32_rte_print_hex_word>
 7a0:	00812403          	lw	s0,8(sp)
 7a4:	00c12083          	lw	ra,12(sp)
 7a8:	00412483          	lw	s1,4(sp)
 7ac:	00001537          	lui	a0,0x1
 7b0:	d4450513          	addi	a0,a0,-700 # d44 <__etext+0x2a0>
 7b4:	01010113          	addi	sp,sp,16
 7b8:	b2dff06f          	j	2e4 <neorv32_uart0_print>
 7bc:	00001537          	lui	a0,0x1
 7c0:	b9450513          	addi	a0,a0,-1132 # b94 <__etext+0xf0>
 7c4:	b21ff0ef          	jal	ra,2e4 <neorv32_uart0_print>
 7c8:	fb1ff06f          	j	778 <__neorv32_rte_debug_exc_handler+0xcc>
 7cc:	00001537          	lui	a0,0x1
 7d0:	bb450513          	addi	a0,a0,-1100 # bb4 <__etext+0x110>
 7d4:	b11ff0ef          	jal	ra,2e4 <neorv32_uart0_print>
 7d8:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 7dc:	0a07d463          	bgez	a5,884 <__neorv32_rte_debug_exc_handler+0x1d8>
 7e0:	0017f793          	andi	a5,a5,1
 7e4:	08078a63          	beqz	a5,878 <__neorv32_rte_debug_exc_handler+0x1cc>
 7e8:	00001537          	lui	a0,0x1
 7ec:	d0450513          	addi	a0,a0,-764 # d04 <__etext+0x260>
 7f0:	fd5ff06f          	j	7c4 <__neorv32_rte_debug_exc_handler+0x118>
 7f4:	00001537          	lui	a0,0x1
 7f8:	bd050513          	addi	a0,a0,-1072 # bd0 <__etext+0x12c>
 7fc:	fc9ff06f          	j	7c4 <__neorv32_rte_debug_exc_handler+0x118>
 800:	00001537          	lui	a0,0x1
 804:	be450513          	addi	a0,a0,-1052 # be4 <__etext+0x140>
 808:	fbdff06f          	j	7c4 <__neorv32_rte_debug_exc_handler+0x118>
 80c:	00001537          	lui	a0,0x1
 810:	bf050513          	addi	a0,a0,-1040 # bf0 <__etext+0x14c>
 814:	fb1ff06f          	j	7c4 <__neorv32_rte_debug_exc_handler+0x118>
 818:	00001537          	lui	a0,0x1
 81c:	c0850513          	addi	a0,a0,-1016 # c08 <__etext+0x164>
 820:	fb5ff06f          	j	7d4 <__neorv32_rte_debug_exc_handler+0x128>
 824:	00001537          	lui	a0,0x1
 828:	c1c50513          	addi	a0,a0,-996 # c1c <__etext+0x178>
 82c:	f99ff06f          	j	7c4 <__neorv32_rte_debug_exc_handler+0x118>
 830:	00001537          	lui	a0,0x1
 834:	c3850513          	addi	a0,a0,-968 # c38 <__etext+0x194>
 838:	f9dff06f          	j	7d4 <__neorv32_rte_debug_exc_handler+0x128>
 83c:	00001537          	lui	a0,0x1
 840:	c4c50513          	addi	a0,a0,-948 # c4c <__etext+0x1a8>
 844:	f81ff06f          	j	7c4 <__neorv32_rte_debug_exc_handler+0x118>
 848:	00001537          	lui	a0,0x1
 84c:	c6c50513          	addi	a0,a0,-916 # c6c <__etext+0x1c8>
 850:	f75ff06f          	j	7c4 <__neorv32_rte_debug_exc_handler+0x118>
 854:	00001537          	lui	a0,0x1
 858:	c8c50513          	addi	a0,a0,-884 # c8c <__etext+0x1e8>
 85c:	f69ff06f          	j	7c4 <__neorv32_rte_debug_exc_handler+0x118>
 860:	00001537          	lui	a0,0x1
 864:	ca850513          	addi	a0,a0,-856 # ca8 <__etext+0x204>
 868:	f5dff06f          	j	7c4 <__neorv32_rte_debug_exc_handler+0x118>
 86c:	00001537          	lui	a0,0x1
 870:	cc050513          	addi	a0,a0,-832 # cc0 <__etext+0x21c>
 874:	f51ff06f          	j	7c4 <__neorv32_rte_debug_exc_handler+0x118>
 878:	00001537          	lui	a0,0x1
 87c:	d1450513          	addi	a0,a0,-748 # d14 <__etext+0x270>
 880:	f45ff06f          	j	7c4 <__neorv32_rte_debug_exc_handler+0x118>
 884:	00001537          	lui	a0,0x1
 888:	d2450513          	addi	a0,a0,-732 # d24 <__etext+0x280>
 88c:	f39ff06f          	j	7c4 <__neorv32_rte_debug_exc_handler+0x118>
 890:	00c12083          	lw	ra,12(sp)
 894:	00812403          	lw	s0,8(sp)
 898:	00412483          	lw	s1,4(sp)
 89c:	01010113          	addi	sp,sp,16
 8a0:	00008067          	ret

000008a4 <neorv32_rte_exception_uninstall>:
 8a4:	01f00793          	li	a5,31
 8a8:	02a7e263          	bltu	a5,a0,8cc <neorv32_rte_exception_uninstall+0x28>
 8ac:	800007b7          	lui	a5,0x80000
 8b0:	00078793          	mv	a5,a5
 8b4:	00251513          	slli	a0,a0,0x2
 8b8:	00a78533          	add	a0,a5,a0
 8bc:	6ac00793          	li	a5,1708
 8c0:	00f52023          	sw	a5,0(a0)
 8c4:	00000513          	li	a0,0
 8c8:	00008067          	ret
 8cc:	00100513          	li	a0,1
 8d0:	00008067          	ret

000008d4 <neorv32_rte_setup>:
 8d4:	ff010113          	addi	sp,sp,-16
 8d8:	00112623          	sw	ra,12(sp)
 8dc:	00812423          	sw	s0,8(sp)
 8e0:	00912223          	sw	s1,4(sp)
 8e4:	43000793          	li	a5,1072
 8e8:	30579073          	csrw	mtvec,a5
 8ec:	00000413          	li	s0,0
 8f0:	01d00493          	li	s1,29
 8f4:	00040513          	mv	a0,s0
 8f8:	00140413          	addi	s0,s0,1
 8fc:	0ff47413          	andi	s0,s0,255
 900:	fa5ff0ef          	jal	ra,8a4 <neorv32_rte_exception_uninstall>
 904:	fe9418e3          	bne	s0,s1,8f4 <neorv32_rte_setup+0x20>
 908:	00c12083          	lw	ra,12(sp)
 90c:	00812403          	lw	s0,8(sp)
 910:	00412483          	lw	s1,4(sp)
 914:	01010113          	addi	sp,sp,16
 918:	00008067          	ret

0000091c <neorv32_gpio_available>:
 91c:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 920:	01055513          	srli	a0,a0,0x10
 924:	00157513          	andi	a0,a0,1
 928:	00008067          	ret

0000092c <neorv32_gpio_port_set>:
 92c:	fc000793          	li	a5,-64
 930:	00a7a423          	sw	a0,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 934:	00b7a623          	sw	a1,12(a5)
 938:	00008067          	ret

0000093c <__mulsi3>:
 93c:	00050613          	mv	a2,a0
 940:	00000513          	li	a0,0
 944:	0015f693          	andi	a3,a1,1
 948:	00068463          	beqz	a3,950 <__mulsi3+0x14>
 94c:	00c50533          	add	a0,a0,a2
 950:	0015d593          	srli	a1,a1,0x1
 954:	00161613          	slli	a2,a2,0x1
 958:	fe0596e3          	bnez	a1,944 <__mulsi3+0x8>
 95c:	00008067          	ret

00000960 <__muldi3>:
 960:	00050313          	mv	t1,a0
 964:	ff010113          	addi	sp,sp,-16
 968:	00060513          	mv	a0,a2
 96c:	00068893          	mv	a7,a3
 970:	00112623          	sw	ra,12(sp)
 974:	00030613          	mv	a2,t1
 978:	00050693          	mv	a3,a0
 97c:	00000713          	li	a4,0
 980:	00000793          	li	a5,0
 984:	00000813          	li	a6,0
 988:	0016fe13          	andi	t3,a3,1
 98c:	00171e93          	slli	t4,a4,0x1
 990:	000e0c63          	beqz	t3,9a8 <__muldi3+0x48>
 994:	01060e33          	add	t3,a2,a6
 998:	010e3833          	sltu	a6,t3,a6
 99c:	00e787b3          	add	a5,a5,a4
 9a0:	00f807b3          	add	a5,a6,a5
 9a4:	000e0813          	mv	a6,t3
 9a8:	01f65713          	srli	a4,a2,0x1f
 9ac:	0016d693          	srli	a3,a3,0x1
 9b0:	00eee733          	or	a4,t4,a4
 9b4:	00161613          	slli	a2,a2,0x1
 9b8:	fc0698e3          	bnez	a3,988 <__muldi3+0x28>
 9bc:	00058663          	beqz	a1,9c8 <__muldi3+0x68>
 9c0:	f7dff0ef          	jal	ra,93c <__mulsi3>
 9c4:	00a787b3          	add	a5,a5,a0
 9c8:	00088a63          	beqz	a7,9dc <__muldi3+0x7c>
 9cc:	00030513          	mv	a0,t1
 9d0:	00088593          	mv	a1,a7
 9d4:	f69ff0ef          	jal	ra,93c <__mulsi3>
 9d8:	00f507b3          	add	a5,a0,a5
 9dc:	00c12083          	lw	ra,12(sp)
 9e0:	00080513          	mv	a0,a6
 9e4:	00078593          	mv	a1,a5
 9e8:	01010113          	addi	sp,sp,16
 9ec:	00008067          	ret

000009f0 <__divsi3>:
 9f0:	06054063          	bltz	a0,a50 <__umodsi3+0x10>
 9f4:	0605c663          	bltz	a1,a60 <__umodsi3+0x20>

000009f8 <__udivsi3>:
 9f8:	00058613          	mv	a2,a1
 9fc:	00050593          	mv	a1,a0
 a00:	fff00513          	li	a0,-1
 a04:	02060c63          	beqz	a2,a3c <__udivsi3+0x44>
 a08:	00100693          	li	a3,1
 a0c:	00b67a63          	bgeu	a2,a1,a20 <__udivsi3+0x28>
 a10:	00c05863          	blez	a2,a20 <__udivsi3+0x28>
 a14:	00161613          	slli	a2,a2,0x1
 a18:	00169693          	slli	a3,a3,0x1
 a1c:	feb66ae3          	bltu	a2,a1,a10 <__udivsi3+0x18>
 a20:	00000513          	li	a0,0
 a24:	00c5e663          	bltu	a1,a2,a30 <__udivsi3+0x38>
 a28:	40c585b3          	sub	a1,a1,a2
 a2c:	00d56533          	or	a0,a0,a3
 a30:	0016d693          	srli	a3,a3,0x1
 a34:	00165613          	srli	a2,a2,0x1
 a38:	fe0696e3          	bnez	a3,a24 <__udivsi3+0x2c>
 a3c:	00008067          	ret

00000a40 <__umodsi3>:
 a40:	00008293          	mv	t0,ra
 a44:	fb5ff0ef          	jal	ra,9f8 <__udivsi3>
 a48:	00058513          	mv	a0,a1
 a4c:	00028067          	jr	t0
 a50:	40a00533          	neg	a0,a0
 a54:	00b04863          	bgtz	a1,a64 <__umodsi3+0x24>
 a58:	40b005b3          	neg	a1,a1
 a5c:	f9dff06f          	j	9f8 <__udivsi3>
 a60:	40b005b3          	neg	a1,a1
 a64:	00008293          	mv	t0,ra
 a68:	f91ff0ef          	jal	ra,9f8 <__udivsi3>
 a6c:	40a00533          	neg	a0,a0
 a70:	00028067          	jr	t0

00000a74 <__modsi3>:
 a74:	00008293          	mv	t0,ra
 a78:	0005ca63          	bltz	a1,a8c <__modsi3+0x18>
 a7c:	00054c63          	bltz	a0,a94 <__modsi3+0x20>
 a80:	f79ff0ef          	jal	ra,9f8 <__udivsi3>
 a84:	00058513          	mv	a0,a1
 a88:	00028067          	jr	t0
 a8c:	40b005b3          	neg	a1,a1
 a90:	fe0558e3          	bgez	a0,a80 <__modsi3+0xc>
 a94:	40a00533          	neg	a0,a0
 a98:	f61ff0ef          	jal	ra,9f8 <__udivsi3>
 a9c:	40b00533          	neg	a0,a1
 aa0:	00028067          	jr	t0
