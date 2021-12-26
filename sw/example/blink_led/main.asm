
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
  e0:	ca458593          	addi	a1,a1,-860 # d80 <__crt0_copy_data_src_begin>
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
 190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3d80>
 194:	00112623          	sw	ra,12(sp)
 198:	574000ef          	jal	ra,70c <neorv32_uart0_setup>
 19c:	68c000ef          	jal	ra,828 <neorv32_gpio_available>
 1a0:	00050c63          	beqz	a0,1b8 <main+0x38>
 1a4:	510000ef          	jal	ra,6b4 <neorv32_rte_setup>
 1a8:	00001537          	lui	a0,0x1
 1ac:	abc50513          	addi	a0,a0,-1348 # abc <__etext+0x24>
 1b0:	620000ef          	jal	ra,7d0 <neorv32_uart0_print>
 1b4:	020000ef          	jal	ra,1d4 <blink_led_c>
 1b8:	00001537          	lui	a0,0x1
 1bc:	a9850513          	addi	a0,a0,-1384 # a98 <__etext>
 1c0:	610000ef          	jal	ra,7d0 <neorv32_uart0_print>
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
 1e8:	650000ef          	jal	ra,838 <neorv32_gpio_port_set>
 1ec:	00000513          	li	a0,0
 1f0:	00150413          	addi	s0,a0,1
 1f4:	00000593          	li	a1,0
 1f8:	0ff57513          	andi	a0,a0,255
 1fc:	63c000ef          	jal	ra,838 <neorv32_gpio_port_set>
 200:	0c800513          	li	a0,200
 204:	670000ef          	jal	ra,874 <neorv32_cpu_delay_ms>
 208:	00040513          	mv	a0,s0
 20c:	fe5ff06f          	j	1f0 <blink_led_c+0x1c>

00000210 <__neorv32_rte_core>:
 210:	fc010113          	addi	sp,sp,-64
 214:	02112e23          	sw	ra,60(sp)
 218:	02512c23          	sw	t0,56(sp)
 21c:	02612a23          	sw	t1,52(sp)
 220:	02712823          	sw	t2,48(sp)
 224:	02a12623          	sw	a0,44(sp)
 228:	02b12423          	sw	a1,40(sp)
 22c:	02c12223          	sw	a2,36(sp)
 230:	02d12023          	sw	a3,32(sp)
 234:	00e12e23          	sw	a4,28(sp)
 238:	00f12c23          	sw	a5,24(sp)
 23c:	01012a23          	sw	a6,20(sp)
 240:	01112823          	sw	a7,16(sp)
 244:	01c12623          	sw	t3,12(sp)
 248:	01d12423          	sw	t4,8(sp)
 24c:	01e12223          	sw	t5,4(sp)
 250:	01f12023          	sw	t6,0(sp)
 254:	34102773          	csrr	a4,mepc
 258:	34071073          	csrw	mscratch,a4
 25c:	342027f3          	csrr	a5,mcause
 260:	0807c863          	bltz	a5,2f0 <__neorv32_rte_core+0xe0>
 264:	00071683          	lh	a3,0(a4)
 268:	00300593          	li	a1,3
 26c:	0036f693          	andi	a3,a3,3
 270:	00270613          	addi	a2,a4,2
 274:	00b69463          	bne	a3,a1,27c <__neorv32_rte_core+0x6c>
 278:	00470613          	addi	a2,a4,4
 27c:	34161073          	csrw	mepc,a2
 280:	00b00713          	li	a4,11
 284:	04f77a63          	bgeu	a4,a5,2d8 <__neorv32_rte_core+0xc8>
 288:	48c00793          	li	a5,1164
 28c:	000780e7          	jalr	a5
 290:	03c12083          	lw	ra,60(sp)
 294:	03812283          	lw	t0,56(sp)
 298:	03412303          	lw	t1,52(sp)
 29c:	03012383          	lw	t2,48(sp)
 2a0:	02c12503          	lw	a0,44(sp)
 2a4:	02812583          	lw	a1,40(sp)
 2a8:	02412603          	lw	a2,36(sp)
 2ac:	02012683          	lw	a3,32(sp)
 2b0:	01c12703          	lw	a4,28(sp)
 2b4:	01812783          	lw	a5,24(sp)
 2b8:	01412803          	lw	a6,20(sp)
 2bc:	01012883          	lw	a7,16(sp)
 2c0:	00c12e03          	lw	t3,12(sp)
 2c4:	00812e83          	lw	t4,8(sp)
 2c8:	00412f03          	lw	t5,4(sp)
 2cc:	00012f83          	lw	t6,0(sp)
 2d0:	04010113          	addi	sp,sp,64
 2d4:	30200073          	mret
 2d8:	00001737          	lui	a4,0x1
 2dc:	00279793          	slli	a5,a5,0x2
 2e0:	ad870713          	addi	a4,a4,-1320 # ad8 <__etext+0x40>
 2e4:	00e787b3          	add	a5,a5,a4
 2e8:	0007a783          	lw	a5,0(a5)
 2ec:	00078067          	jr	a5
 2f0:	80000737          	lui	a4,0x80000
 2f4:	ffd74713          	xori	a4,a4,-3
 2f8:	00e787b3          	add	a5,a5,a4
 2fc:	01c00713          	li	a4,28
 300:	f8f764e3          	bltu	a4,a5,288 <__neorv32_rte_core+0x78>
 304:	00001737          	lui	a4,0x1
 308:	00279793          	slli	a5,a5,0x2
 30c:	b0870713          	addi	a4,a4,-1272 # b08 <__etext+0x70>
 310:	00e787b3          	add	a5,a5,a4
 314:	0007a783          	lw	a5,0(a5)
 318:	00078067          	jr	a5
 31c:	800007b7          	lui	a5,0x80000
 320:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 324:	f69ff06f          	j	28c <__neorv32_rte_core+0x7c>
 328:	800007b7          	lui	a5,0x80000
 32c:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 330:	f5dff06f          	j	28c <__neorv32_rte_core+0x7c>
 334:	800007b7          	lui	a5,0x80000
 338:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 33c:	f51ff06f          	j	28c <__neorv32_rte_core+0x7c>
 340:	800007b7          	lui	a5,0x80000
 344:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
 348:	f45ff06f          	j	28c <__neorv32_rte_core+0x7c>
 34c:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
 350:	f3dff06f          	j	28c <__neorv32_rte_core+0x7c>
 354:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
 358:	f35ff06f          	j	28c <__neorv32_rte_core+0x7c>
 35c:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
 360:	f2dff06f          	j	28c <__neorv32_rte_core+0x7c>
 364:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
 368:	f25ff06f          	j	28c <__neorv32_rte_core+0x7c>
 36c:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
 370:	f1dff06f          	j	28c <__neorv32_rte_core+0x7c>
 374:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
 378:	f15ff06f          	j	28c <__neorv32_rte_core+0x7c>
 37c:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
 380:	f0dff06f          	j	28c <__neorv32_rte_core+0x7c>
 384:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
 388:	f05ff06f          	j	28c <__neorv32_rte_core+0x7c>
 38c:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
 390:	efdff06f          	j	28c <__neorv32_rte_core+0x7c>
 394:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
 398:	ef5ff06f          	j	28c <__neorv32_rte_core+0x7c>
 39c:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
 3a0:	eedff06f          	j	28c <__neorv32_rte_core+0x7c>
 3a4:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
 3a8:	ee5ff06f          	j	28c <__neorv32_rte_core+0x7c>
 3ac:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 3b0:	eddff06f          	j	28c <__neorv32_rte_core+0x7c>
 3b4:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 3b8:	ed5ff06f          	j	28c <__neorv32_rte_core+0x7c>
 3bc:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 3c0:	ecdff06f          	j	28c <__neorv32_rte_core+0x7c>
 3c4:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 3c8:	ec5ff06f          	j	28c <__neorv32_rte_core+0x7c>
 3cc:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 3d0:	ebdff06f          	j	28c <__neorv32_rte_core+0x7c>
 3d4:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 3d8:	eb5ff06f          	j	28c <__neorv32_rte_core+0x7c>
 3dc:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 3e0:	eadff06f          	j	28c <__neorv32_rte_core+0x7c>
 3e4:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 3e8:	ea5ff06f          	j	28c <__neorv32_rte_core+0x7c>
 3ec:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 3f0:	e9dff06f          	j	28c <__neorv32_rte_core+0x7c>
 3f4:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 3f8:	e95ff06f          	j	28c <__neorv32_rte_core+0x7c>
 3fc:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 400:	e8dff06f          	j	28c <__neorv32_rte_core+0x7c>
 404:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 408:	e85ff06f          	j	28c <__neorv32_rte_core+0x7c>
 40c:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 410:	e7dff06f          	j	28c <__neorv32_rte_core+0x7c>
 414:	0000                	unimp
 416:	0000                	unimp
 418:	0000                	unimp
 41a:	0000                	unimp

0000041c <__neorv32_rte_print_hex_word>:
 41c:	fe010113          	addi	sp,sp,-32
 420:	01212823          	sw	s2,16(sp)
 424:	00050913          	mv	s2,a0
 428:	00001537          	lui	a0,0x1
 42c:	00912a23          	sw	s1,20(sp)
 430:	b7c50513          	addi	a0,a0,-1156 # b7c <__etext+0xe4>
 434:	000014b7          	lui	s1,0x1
 438:	00812c23          	sw	s0,24(sp)
 43c:	01312623          	sw	s3,12(sp)
 440:	00112e23          	sw	ra,28(sp)
 444:	01c00413          	li	s0,28
 448:	388000ef          	jal	ra,7d0 <neorv32_uart0_print>
 44c:	d7048493          	addi	s1,s1,-656 # d70 <hex_symbols.0>
 450:	ffc00993          	li	s3,-4
 454:	008957b3          	srl	a5,s2,s0
 458:	00f7f793          	andi	a5,a5,15
 45c:	00f487b3          	add	a5,s1,a5
 460:	0007c503          	lbu	a0,0(a5)
 464:	ffc40413          	addi	s0,s0,-4
 468:	350000ef          	jal	ra,7b8 <neorv32_uart0_putc>
 46c:	ff3414e3          	bne	s0,s3,454 <__neorv32_rte_print_hex_word+0x38>
 470:	01c12083          	lw	ra,28(sp)
 474:	01812403          	lw	s0,24(sp)
 478:	01412483          	lw	s1,20(sp)
 47c:	01012903          	lw	s2,16(sp)
 480:	00c12983          	lw	s3,12(sp)
 484:	02010113          	addi	sp,sp,32
 488:	00008067          	ret

0000048c <__neorv32_rte_debug_exc_handler>:
 48c:	ff010113          	addi	sp,sp,-16
 490:	00112623          	sw	ra,12(sp)
 494:	00812423          	sw	s0,8(sp)
 498:	00912223          	sw	s1,4(sp)
 49c:	260000ef          	jal	ra,6fc <neorv32_uart0_available>
 4a0:	1c050863          	beqz	a0,670 <__neorv32_rte_debug_exc_handler+0x1e4>
 4a4:	00001537          	lui	a0,0x1
 4a8:	b8050513          	addi	a0,a0,-1152 # b80 <__etext+0xe8>
 4ac:	324000ef          	jal	ra,7d0 <neorv32_uart0_print>
 4b0:	34202473          	csrr	s0,mcause
 4b4:	00900713          	li	a4,9
 4b8:	00f47793          	andi	a5,s0,15
 4bc:	03078493          	addi	s1,a5,48
 4c0:	00f77463          	bgeu	a4,a5,4c8 <__neorv32_rte_debug_exc_handler+0x3c>
 4c4:	05778493          	addi	s1,a5,87
 4c8:	00b00793          	li	a5,11
 4cc:	0087ee63          	bltu	a5,s0,4e8 <__neorv32_rte_debug_exc_handler+0x5c>
 4d0:	00001737          	lui	a4,0x1
 4d4:	00241793          	slli	a5,s0,0x2
 4d8:	d4070713          	addi	a4,a4,-704 # d40 <__etext+0x2a8>
 4dc:	00e787b3          	add	a5,a5,a4
 4e0:	0007a783          	lw	a5,0(a5)
 4e4:	00078067          	jr	a5
 4e8:	800007b7          	lui	a5,0x80000
 4ec:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 4f0:	14e40e63          	beq	s0,a4,64c <__neorv32_rte_debug_exc_handler+0x1c0>
 4f4:	02876a63          	bltu	a4,s0,528 <__neorv32_rte_debug_exc_handler+0x9c>
 4f8:	00378713          	addi	a4,a5,3
 4fc:	12e40c63          	beq	s0,a4,634 <__neorv32_rte_debug_exc_handler+0x1a8>
 500:	00778793          	addi	a5,a5,7
 504:	12f40e63          	beq	s0,a5,640 <__neorv32_rte_debug_exc_handler+0x1b4>
 508:	00001537          	lui	a0,0x1
 50c:	ce050513          	addi	a0,a0,-800 # ce0 <__etext+0x248>
 510:	2c0000ef          	jal	ra,7d0 <neorv32_uart0_print>
 514:	00040513          	mv	a0,s0
 518:	f05ff0ef          	jal	ra,41c <__neorv32_rte_print_hex_word>
 51c:	00100793          	li	a5,1
 520:	08f40c63          	beq	s0,a5,5b8 <__neorv32_rte_debug_exc_handler+0x12c>
 524:	0280006f          	j	54c <__neorv32_rte_debug_exc_handler+0xc0>
 528:	ff07c793          	xori	a5,a5,-16
 52c:	00f407b3          	add	a5,s0,a5
 530:	00f00713          	li	a4,15
 534:	fcf76ae3          	bltu	a4,a5,508 <__neorv32_rte_debug_exc_handler+0x7c>
 538:	00001537          	lui	a0,0x1
 53c:	cd050513          	addi	a0,a0,-816 # cd0 <__etext+0x238>
 540:	290000ef          	jal	ra,7d0 <neorv32_uart0_print>
 544:	00048513          	mv	a0,s1
 548:	270000ef          	jal	ra,7b8 <neorv32_uart0_putc>
 54c:	ffd47413          	andi	s0,s0,-3
 550:	00500793          	li	a5,5
 554:	06f40263          	beq	s0,a5,5b8 <__neorv32_rte_debug_exc_handler+0x12c>
 558:	00001537          	lui	a0,0x1
 55c:	d2450513          	addi	a0,a0,-732 # d24 <__etext+0x28c>
 560:	270000ef          	jal	ra,7d0 <neorv32_uart0_print>
 564:	34002573          	csrr	a0,mscratch
 568:	eb5ff0ef          	jal	ra,41c <__neorv32_rte_print_hex_word>
 56c:	00001537          	lui	a0,0x1
 570:	d2c50513          	addi	a0,a0,-724 # d2c <__etext+0x294>
 574:	25c000ef          	jal	ra,7d0 <neorv32_uart0_print>
 578:	34302573          	csrr	a0,mtval
 57c:	ea1ff0ef          	jal	ra,41c <__neorv32_rte_print_hex_word>
 580:	00812403          	lw	s0,8(sp)
 584:	00c12083          	lw	ra,12(sp)
 588:	00412483          	lw	s1,4(sp)
 58c:	00001537          	lui	a0,0x1
 590:	d3850513          	addi	a0,a0,-712 # d38 <__etext+0x2a0>
 594:	01010113          	addi	sp,sp,16
 598:	2380006f          	j	7d0 <neorv32_uart0_print>
 59c:	00001537          	lui	a0,0x1
 5a0:	b8850513          	addi	a0,a0,-1144 # b88 <__etext+0xf0>
 5a4:	22c000ef          	jal	ra,7d0 <neorv32_uart0_print>
 5a8:	fb1ff06f          	j	558 <__neorv32_rte_debug_exc_handler+0xcc>
 5ac:	00001537          	lui	a0,0x1
 5b0:	ba850513          	addi	a0,a0,-1112 # ba8 <__etext+0x110>
 5b4:	21c000ef          	jal	ra,7d0 <neorv32_uart0_print>
 5b8:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 5bc:	0a07d463          	bgez	a5,664 <__neorv32_rte_debug_exc_handler+0x1d8>
 5c0:	0017f793          	andi	a5,a5,1
 5c4:	08078a63          	beqz	a5,658 <__neorv32_rte_debug_exc_handler+0x1cc>
 5c8:	00001537          	lui	a0,0x1
 5cc:	cf850513          	addi	a0,a0,-776 # cf8 <__etext+0x260>
 5d0:	fd5ff06f          	j	5a4 <__neorv32_rte_debug_exc_handler+0x118>
 5d4:	00001537          	lui	a0,0x1
 5d8:	bc450513          	addi	a0,a0,-1084 # bc4 <__etext+0x12c>
 5dc:	fc9ff06f          	j	5a4 <__neorv32_rte_debug_exc_handler+0x118>
 5e0:	00001537          	lui	a0,0x1
 5e4:	bd850513          	addi	a0,a0,-1064 # bd8 <__etext+0x140>
 5e8:	fbdff06f          	j	5a4 <__neorv32_rte_debug_exc_handler+0x118>
 5ec:	00001537          	lui	a0,0x1
 5f0:	be450513          	addi	a0,a0,-1052 # be4 <__etext+0x14c>
 5f4:	fb1ff06f          	j	5a4 <__neorv32_rte_debug_exc_handler+0x118>
 5f8:	00001537          	lui	a0,0x1
 5fc:	bfc50513          	addi	a0,a0,-1028 # bfc <__etext+0x164>
 600:	fb5ff06f          	j	5b4 <__neorv32_rte_debug_exc_handler+0x128>
 604:	00001537          	lui	a0,0x1
 608:	c1050513          	addi	a0,a0,-1008 # c10 <__etext+0x178>
 60c:	f99ff06f          	j	5a4 <__neorv32_rte_debug_exc_handler+0x118>
 610:	00001537          	lui	a0,0x1
 614:	c2c50513          	addi	a0,a0,-980 # c2c <__etext+0x194>
 618:	f9dff06f          	j	5b4 <__neorv32_rte_debug_exc_handler+0x128>
 61c:	00001537          	lui	a0,0x1
 620:	c4050513          	addi	a0,a0,-960 # c40 <__etext+0x1a8>
 624:	f81ff06f          	j	5a4 <__neorv32_rte_debug_exc_handler+0x118>
 628:	00001537          	lui	a0,0x1
 62c:	c6050513          	addi	a0,a0,-928 # c60 <__etext+0x1c8>
 630:	f75ff06f          	j	5a4 <__neorv32_rte_debug_exc_handler+0x118>
 634:	00001537          	lui	a0,0x1
 638:	c8050513          	addi	a0,a0,-896 # c80 <__etext+0x1e8>
 63c:	f69ff06f          	j	5a4 <__neorv32_rte_debug_exc_handler+0x118>
 640:	00001537          	lui	a0,0x1
 644:	c9c50513          	addi	a0,a0,-868 # c9c <__etext+0x204>
 648:	f5dff06f          	j	5a4 <__neorv32_rte_debug_exc_handler+0x118>
 64c:	00001537          	lui	a0,0x1
 650:	cb450513          	addi	a0,a0,-844 # cb4 <__etext+0x21c>
 654:	f51ff06f          	j	5a4 <__neorv32_rte_debug_exc_handler+0x118>
 658:	00001537          	lui	a0,0x1
 65c:	d0850513          	addi	a0,a0,-760 # d08 <__etext+0x270>
 660:	f45ff06f          	j	5a4 <__neorv32_rte_debug_exc_handler+0x118>
 664:	00001537          	lui	a0,0x1
 668:	d1850513          	addi	a0,a0,-744 # d18 <__etext+0x280>
 66c:	f39ff06f          	j	5a4 <__neorv32_rte_debug_exc_handler+0x118>
 670:	00c12083          	lw	ra,12(sp)
 674:	00812403          	lw	s0,8(sp)
 678:	00412483          	lw	s1,4(sp)
 67c:	01010113          	addi	sp,sp,16
 680:	00008067          	ret

00000684 <neorv32_rte_exception_uninstall>:
 684:	01f00793          	li	a5,31
 688:	02a7e263          	bltu	a5,a0,6ac <neorv32_rte_exception_uninstall+0x28>
 68c:	800007b7          	lui	a5,0x80000
 690:	00078793          	mv	a5,a5
 694:	00251513          	slli	a0,a0,0x2
 698:	00a78533          	add	a0,a5,a0
 69c:	48c00793          	li	a5,1164
 6a0:	00f52023          	sw	a5,0(a0)
 6a4:	00000513          	li	a0,0
 6a8:	00008067          	ret
 6ac:	00100513          	li	a0,1
 6b0:	00008067          	ret

000006b4 <neorv32_rte_setup>:
 6b4:	ff010113          	addi	sp,sp,-16
 6b8:	00112623          	sw	ra,12(sp)
 6bc:	00812423          	sw	s0,8(sp)
 6c0:	00912223          	sw	s1,4(sp)
 6c4:	21000793          	li	a5,528
 6c8:	30579073          	csrw	mtvec,a5
 6cc:	00000413          	li	s0,0
 6d0:	01d00493          	li	s1,29
 6d4:	00040513          	mv	a0,s0
 6d8:	00140413          	addi	s0,s0,1
 6dc:	0ff47413          	andi	s0,s0,255
 6e0:	fa5ff0ef          	jal	ra,684 <neorv32_rte_exception_uninstall>
 6e4:	fe9418e3          	bne	s0,s1,6d4 <neorv32_rte_setup+0x20>
 6e8:	00c12083          	lw	ra,12(sp)
 6ec:	00812403          	lw	s0,8(sp)
 6f0:	00412483          	lw	s1,4(sp)
 6f4:	01010113          	addi	sp,sp,16
 6f8:	00008067          	ret

000006fc <neorv32_uart0_available>:
 6fc:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 700:	01255513          	srli	a0,a0,0x12
 704:	00157513          	andi	a0,a0,1
 708:	00008067          	ret

0000070c <neorv32_uart0_setup>:
 70c:	ff010113          	addi	sp,sp,-16
 710:	00812423          	sw	s0,8(sp)
 714:	00912223          	sw	s1,4(sp)
 718:	00112623          	sw	ra,12(sp)
 71c:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 720:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 724:	00058413          	mv	s0,a1
 728:	00151593          	slli	a1,a0,0x1
 72c:	00078513          	mv	a0,a5
 730:	00060493          	mv	s1,a2
 734:	2b8000ef          	jal	ra,9ec <__udivsi3>
 738:	01051513          	slli	a0,a0,0x10
 73c:	000017b7          	lui	a5,0x1
 740:	01055513          	srli	a0,a0,0x10
 744:	00000713          	li	a4,0
 748:	ffe78793          	addi	a5,a5,-2 # ffe <__crt0_copy_data_src_begin+0x27e>
 74c:	04a7e463          	bltu	a5,a0,794 <neorv32_uart0_setup+0x88>
 750:	0034f793          	andi	a5,s1,3
 754:	00347413          	andi	s0,s0,3
 758:	fff50513          	addi	a0,a0,-1
 75c:	01479793          	slli	a5,a5,0x14
 760:	01641413          	slli	s0,s0,0x16
 764:	00f567b3          	or	a5,a0,a5
 768:	0087e7b3          	or	a5,a5,s0
 76c:	01871713          	slli	a4,a4,0x18
 770:	00c12083          	lw	ra,12(sp)
 774:	00812403          	lw	s0,8(sp)
 778:	00e7e7b3          	or	a5,a5,a4
 77c:	10000737          	lui	a4,0x10000
 780:	00e7e7b3          	or	a5,a5,a4
 784:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 788:	00412483          	lw	s1,4(sp)
 78c:	01010113          	addi	sp,sp,16
 790:	00008067          	ret
 794:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xffff27e>
 798:	0fd6f693          	andi	a3,a3,253
 79c:	00069a63          	bnez	a3,7b0 <neorv32_uart0_setup+0xa4>
 7a0:	00355513          	srli	a0,a0,0x3
 7a4:	00170713          	addi	a4,a4,1
 7a8:	0ff77713          	andi	a4,a4,255
 7ac:	fa1ff06f          	j	74c <neorv32_uart0_setup+0x40>
 7b0:	00155513          	srli	a0,a0,0x1
 7b4:	ff1ff06f          	j	7a4 <neorv32_uart0_setup+0x98>

000007b8 <neorv32_uart0_putc>:
 7b8:	00040737          	lui	a4,0x40
 7bc:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 7c0:	00e7f7b3          	and	a5,a5,a4
 7c4:	fe079ce3          	bnez	a5,7bc <neorv32_uart0_putc+0x4>
 7c8:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 7cc:	00008067          	ret

000007d0 <neorv32_uart0_print>:
 7d0:	ff010113          	addi	sp,sp,-16
 7d4:	00812423          	sw	s0,8(sp)
 7d8:	01212023          	sw	s2,0(sp)
 7dc:	00112623          	sw	ra,12(sp)
 7e0:	00912223          	sw	s1,4(sp)
 7e4:	00050413          	mv	s0,a0
 7e8:	00a00913          	li	s2,10
 7ec:	00044483          	lbu	s1,0(s0)
 7f0:	00140413          	addi	s0,s0,1
 7f4:	00049e63          	bnez	s1,810 <neorv32_uart0_print+0x40>
 7f8:	00c12083          	lw	ra,12(sp)
 7fc:	00812403          	lw	s0,8(sp)
 800:	00412483          	lw	s1,4(sp)
 804:	00012903          	lw	s2,0(sp)
 808:	01010113          	addi	sp,sp,16
 80c:	00008067          	ret
 810:	01249663          	bne	s1,s2,81c <neorv32_uart0_print+0x4c>
 814:	00d00513          	li	a0,13
 818:	fa1ff0ef          	jal	ra,7b8 <neorv32_uart0_putc>
 81c:	00048513          	mv	a0,s1
 820:	f99ff0ef          	jal	ra,7b8 <neorv32_uart0_putc>
 824:	fc9ff06f          	j	7ec <neorv32_uart0_print+0x1c>

00000828 <neorv32_gpio_available>:
 828:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 82c:	01055513          	srli	a0,a0,0x10
 830:	00157513          	andi	a0,a0,1
 834:	00008067          	ret

00000838 <neorv32_gpio_port_set>:
 838:	fc000793          	li	a5,-64
 83c:	00a7a423          	sw	a0,8(a5)
 840:	00b7a623          	sw	a1,12(a5)
 844:	00008067          	ret

00000848 <neorv32_cpu_get_systime>:
 848:	ff010113          	addi	sp,sp,-16
 84c:	c81026f3          	rdtimeh	a3
 850:	c0102773          	rdtime	a4
 854:	c81027f3          	rdtimeh	a5
 858:	fed79ae3          	bne	a5,a3,84c <neorv32_cpu_get_systime+0x4>
 85c:	00e12023          	sw	a4,0(sp)
 860:	00f12223          	sw	a5,4(sp)
 864:	00012503          	lw	a0,0(sp)
 868:	00412583          	lw	a1,4(sp)
 86c:	01010113          	addi	sp,sp,16
 870:	00008067          	ret

00000874 <neorv32_cpu_delay_ms>:
 874:	fd010113          	addi	sp,sp,-48
 878:	00a12623          	sw	a0,12(sp)
 87c:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 880:	3e800593          	li	a1,1000
 884:	02112623          	sw	ra,44(sp)
 888:	02812423          	sw	s0,40(sp)
 88c:	02912223          	sw	s1,36(sp)
 890:	03212023          	sw	s2,32(sp)
 894:	01312e23          	sw	s3,28(sp)
 898:	154000ef          	jal	ra,9ec <__udivsi3>
 89c:	00c12603          	lw	a2,12(sp)
 8a0:	00000693          	li	a3,0
 8a4:	00000593          	li	a1,0
 8a8:	0ac000ef          	jal	ra,954 <__muldi3>
 8ac:	00050413          	mv	s0,a0
 8b0:	00058993          	mv	s3,a1
 8b4:	f95ff0ef          	jal	ra,848 <neorv32_cpu_get_systime>
 8b8:	00058913          	mv	s2,a1
 8bc:	00050493          	mv	s1,a0
 8c0:	f89ff0ef          	jal	ra,848 <neorv32_cpu_get_systime>
 8c4:	00b96663          	bltu	s2,a1,8d0 <neorv32_cpu_delay_ms+0x5c>
 8c8:	05259263          	bne	a1,s2,90c <neorv32_cpu_delay_ms+0x98>
 8cc:	04a4f063          	bgeu	s1,a0,90c <neorv32_cpu_delay_ms+0x98>
 8d0:	008484b3          	add	s1,s1,s0
 8d4:	0084b433          	sltu	s0,s1,s0
 8d8:	01390933          	add	s2,s2,s3
 8dc:	01240433          	add	s0,s0,s2
 8e0:	f69ff0ef          	jal	ra,848 <neorv32_cpu_get_systime>
 8e4:	fe85eee3          	bltu	a1,s0,8e0 <neorv32_cpu_delay_ms+0x6c>
 8e8:	00b41463          	bne	s0,a1,8f0 <neorv32_cpu_delay_ms+0x7c>
 8ec:	fe956ae3          	bltu	a0,s1,8e0 <neorv32_cpu_delay_ms+0x6c>
 8f0:	02c12083          	lw	ra,44(sp)
 8f4:	02812403          	lw	s0,40(sp)
 8f8:	02412483          	lw	s1,36(sp)
 8fc:	02012903          	lw	s2,32(sp)
 900:	01c12983          	lw	s3,28(sp)
 904:	03010113          	addi	sp,sp,48
 908:	00008067          	ret
 90c:	01c99913          	slli	s2,s3,0x1c
 910:	00445413          	srli	s0,s0,0x4
 914:	00896433          	or	s0,s2,s0

00000918 <__neorv32_cpu_delay_ms_start>:
 918:	00040a63          	beqz	s0,92c <__neorv32_cpu_delay_ms_end>
 91c:	00040863          	beqz	s0,92c <__neorv32_cpu_delay_ms_end>
 920:	fff40413          	addi	s0,s0,-1
 924:	00000013          	nop
 928:	ff1ff06f          	j	918 <__neorv32_cpu_delay_ms_start>

0000092c <__neorv32_cpu_delay_ms_end>:
 92c:	fc5ff06f          	j	8f0 <neorv32_cpu_delay_ms+0x7c>

00000930 <__mulsi3>:
 930:	00050613          	mv	a2,a0
 934:	00000513          	li	a0,0
 938:	0015f693          	andi	a3,a1,1
 93c:	00068463          	beqz	a3,944 <__mulsi3+0x14>
 940:	00c50533          	add	a0,a0,a2
 944:	0015d593          	srli	a1,a1,0x1
 948:	00161613          	slli	a2,a2,0x1
 94c:	fe0596e3          	bnez	a1,938 <__mulsi3+0x8>
 950:	00008067          	ret

00000954 <__muldi3>:
 954:	00050313          	mv	t1,a0
 958:	ff010113          	addi	sp,sp,-16
 95c:	00060513          	mv	a0,a2
 960:	00068893          	mv	a7,a3
 964:	00112623          	sw	ra,12(sp)
 968:	00030613          	mv	a2,t1
 96c:	00050693          	mv	a3,a0
 970:	00000713          	li	a4,0
 974:	00000793          	li	a5,0
 978:	00000813          	li	a6,0
 97c:	0016fe13          	andi	t3,a3,1
 980:	00171e93          	slli	t4,a4,0x1
 984:	000e0c63          	beqz	t3,99c <__muldi3+0x48>
 988:	01060e33          	add	t3,a2,a6
 98c:	010e3833          	sltu	a6,t3,a6
 990:	00e787b3          	add	a5,a5,a4
 994:	00f807b3          	add	a5,a6,a5
 998:	000e0813          	mv	a6,t3
 99c:	01f65713          	srli	a4,a2,0x1f
 9a0:	0016d693          	srli	a3,a3,0x1
 9a4:	00eee733          	or	a4,t4,a4
 9a8:	00161613          	slli	a2,a2,0x1
 9ac:	fc0698e3          	bnez	a3,97c <__muldi3+0x28>
 9b0:	00058663          	beqz	a1,9bc <__muldi3+0x68>
 9b4:	f7dff0ef          	jal	ra,930 <__mulsi3>
 9b8:	00a787b3          	add	a5,a5,a0
 9bc:	00088a63          	beqz	a7,9d0 <__muldi3+0x7c>
 9c0:	00030513          	mv	a0,t1
 9c4:	00088593          	mv	a1,a7
 9c8:	f69ff0ef          	jal	ra,930 <__mulsi3>
 9cc:	00f507b3          	add	a5,a0,a5
 9d0:	00c12083          	lw	ra,12(sp)
 9d4:	00080513          	mv	a0,a6
 9d8:	00078593          	mv	a1,a5
 9dc:	01010113          	addi	sp,sp,16
 9e0:	00008067          	ret

000009e4 <__divsi3>:
 9e4:	06054063          	bltz	a0,a44 <__umodsi3+0x10>
 9e8:	0605c663          	bltz	a1,a54 <__umodsi3+0x20>

000009ec <__udivsi3>:
 9ec:	00058613          	mv	a2,a1
 9f0:	00050593          	mv	a1,a0
 9f4:	fff00513          	li	a0,-1
 9f8:	02060c63          	beqz	a2,a30 <__udivsi3+0x44>
 9fc:	00100693          	li	a3,1
 a00:	00b67a63          	bgeu	a2,a1,a14 <__udivsi3+0x28>
 a04:	00c05863          	blez	a2,a14 <__udivsi3+0x28>
 a08:	00161613          	slli	a2,a2,0x1
 a0c:	00169693          	slli	a3,a3,0x1
 a10:	feb66ae3          	bltu	a2,a1,a04 <__udivsi3+0x18>
 a14:	00000513          	li	a0,0
 a18:	00c5e663          	bltu	a1,a2,a24 <__udivsi3+0x38>
 a1c:	40c585b3          	sub	a1,a1,a2
 a20:	00d56533          	or	a0,a0,a3
 a24:	0016d693          	srli	a3,a3,0x1
 a28:	00165613          	srli	a2,a2,0x1
 a2c:	fe0696e3          	bnez	a3,a18 <__udivsi3+0x2c>
 a30:	00008067          	ret

00000a34 <__umodsi3>:
 a34:	00008293          	mv	t0,ra
 a38:	fb5ff0ef          	jal	ra,9ec <__udivsi3>
 a3c:	00058513          	mv	a0,a1
 a40:	00028067          	jr	t0
 a44:	40a00533          	neg	a0,a0
 a48:	00b04863          	bgtz	a1,a58 <__umodsi3+0x24>
 a4c:	40b005b3          	neg	a1,a1
 a50:	f9dff06f          	j	9ec <__udivsi3>
 a54:	40b005b3          	neg	a1,a1
 a58:	00008293          	mv	t0,ra
 a5c:	f91ff0ef          	jal	ra,9ec <__udivsi3>
 a60:	40a00533          	neg	a0,a0
 a64:	00028067          	jr	t0

00000a68 <__modsi3>:
 a68:	00008293          	mv	t0,ra
 a6c:	0005ca63          	bltz	a1,a80 <__modsi3+0x18>
 a70:	00054c63          	bltz	a0,a88 <__modsi3+0x20>
 a74:	f79ff0ef          	jal	ra,9ec <__udivsi3>
 a78:	00058513          	mv	a0,a1
 a7c:	00028067          	jr	t0
 a80:	40b005b3          	neg	a1,a1
 a84:	fe0558e3          	bgez	a0,a74 <__modsi3+0xc>
 a88:	40a00533          	neg	a0,a0
 a8c:	f61ff0ef          	jal	ra,9ec <__udivsi3>
 a90:	40b00533          	neg	a0,a1
 a94:	00028067          	jr	t0
