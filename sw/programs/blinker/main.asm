
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
 184:	fd010113          	addi	sp,sp,-48
 188:	00000613          	li	a2,0
 18c:	00000593          	li	a1,0
 190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x393c>
 194:	02112623          	sw	ra,44(sp)
 198:	02812423          	sw	s0,40(sp)
 19c:	02912223          	sw	s1,36(sp)
 1a0:	03212023          	sw	s2,32(sp)
 1a4:	01312e23          	sw	s3,28(sp)
 1a8:	728000ef          	jal	ra,8d0 <neorv32_uart0_setup>
 1ac:	1d9000ef          	jal	ra,b84 <neorv32_gpio_available>
 1b0:	02051863          	bnez	a0,1e0 <main+0x60>
 1b4:	00001537          	lui	a0,0x1
 1b8:	e0c50513          	addi	a0,a0,-500 # e0c <__etext>
 1bc:	7d8000ef          	jal	ra,994 <neorv32_uart0_print>
 1c0:	00100513          	li	a0,1
 1c4:	02c12083          	lw	ra,44(sp)
 1c8:	02812403          	lw	s0,40(sp)
 1cc:	02412483          	lw	s1,36(sp)
 1d0:	02012903          	lw	s2,32(sp)
 1d4:	01c12983          	lw	s3,28(sp)
 1d8:	03010113          	addi	sp,sp,48
 1dc:	00008067          	ret
 1e0:	554000ef          	jal	ra,734 <neorv32_rte_setup>
 1e4:	00001537          	lui	a0,0x1
 1e8:	e3050513          	addi	a0,a0,-464 # e30 <__etext+0x24>
 1ec:	7a8000ef          	jal	ra,994 <neorv32_uart0_print>
 1f0:	00001537          	lui	a0,0x1
 1f4:	e5050513          	addi	a0,a0,-432 # e50 <__etext+0x44>
 1f8:	79c000ef          	jal	ra,994 <neorv32_uart0_print>
 1fc:	00000413          	li	s0,0
 200:	000019b7          	lui	s3,0x1
 204:	00001937          	lui	s2,0x1
 208:	00100493          	li	s1,1
 20c:	00000513          	li	a0,0
 210:	00812623          	sw	s0,12(sp)
 214:	040000ef          	jal	ra,254 <getButtonState>
 218:	00c12583          	lw	a1,12(sp)
 21c:	00050413          	mv	s0,a0
 220:	00a58663          	beq	a1,a0,22c <main+0xac>
 224:	e7898513          	addi	a0,s3,-392 # e78 <__etext+0x6c>
 228:	7c4000ef          	jal	ra,9ec <neorv32_uart0_printf>
 22c:	e9090513          	addi	a0,s2,-368 # e90 <__etext+0x84>
 230:	764000ef          	jal	ra,994 <neorv32_uart0_print>
 234:	00300513          	li	a0,3
 238:	01c000ef          	jal	ra,254 <getButtonState>
 23c:	fc9518e3          	bne	a0,s1,20c <main+0x8c>
 240:	00001537          	lui	a0,0x1
 244:	edc50513          	addi	a0,a0,-292 # edc <__etext+0xd0>
 248:	74c000ef          	jal	ra,994 <neorv32_uart0_print>
 24c:	00000513          	li	a0,0
 250:	f75ff06f          	j	1c4 <main+0x44>

00000254 <getButtonState>:
 254:	ff010113          	addi	sp,sp,-16
 258:	00112623          	sw	ra,12(sp)
 25c:	00812423          	sw	s0,8(sp)
 260:	00050413          	mv	s0,a0
 264:	131000ef          	jal	ra,b94 <neorv32_gpio_pin_get>
 268:	01400513          	li	a0,20
 26c:	17d000ef          	jal	ra,be8 <neorv32_cpu_delay_ms>
 270:	00040513          	mv	a0,s0
 274:	121000ef          	jal	ra,b94 <neorv32_gpio_pin_get>
 278:	00c12083          	lw	ra,12(sp)
 27c:	00812403          	lw	s0,8(sp)
 280:	00200513          	li	a0,2
 284:	01010113          	addi	sp,sp,16
 288:	00008067          	ret
 28c:	0000                	unimp
 28e:	0000                	unimp

00000290 <__neorv32_rte_core>:
 290:	fc010113          	addi	sp,sp,-64
 294:	02112e23          	sw	ra,60(sp)
 298:	02512c23          	sw	t0,56(sp)
 29c:	02612a23          	sw	t1,52(sp)
 2a0:	02712823          	sw	t2,48(sp)
 2a4:	02a12623          	sw	a0,44(sp)
 2a8:	02b12423          	sw	a1,40(sp)
 2ac:	02c12223          	sw	a2,36(sp)
 2b0:	02d12023          	sw	a3,32(sp)
 2b4:	00e12e23          	sw	a4,28(sp)
 2b8:	00f12c23          	sw	a5,24(sp)
 2bc:	01012a23          	sw	a6,20(sp)
 2c0:	01112823          	sw	a7,16(sp)
 2c4:	01c12623          	sw	t3,12(sp)
 2c8:	01d12423          	sw	t4,8(sp)
 2cc:	01e12223          	sw	t5,4(sp)
 2d0:	01f12023          	sw	t6,0(sp)
 2d4:	34102773          	csrr	a4,mepc
 2d8:	34071073          	csrw	mscratch,a4
 2dc:	342027f3          	csrr	a5,mcause
 2e0:	0807c863          	bltz	a5,370 <__neorv32_rte_core+0xe0>
 2e4:	00071683          	lh	a3,0(a4)
 2e8:	00300593          	li	a1,3
 2ec:	0036f693          	andi	a3,a3,3
 2f0:	00270613          	addi	a2,a4,2
 2f4:	00b69463          	bne	a3,a1,2fc <__neorv32_rte_core+0x6c>
 2f8:	00470613          	addi	a2,a4,4
 2fc:	34161073          	csrw	mepc,a2
 300:	00b00713          	li	a4,11
 304:	04f77a63          	bgeu	a4,a5,358 <__neorv32_rte_core+0xc8>
 308:	50c00793          	li	a5,1292
 30c:	000780e7          	jalr	a5
 310:	03c12083          	lw	ra,60(sp)
 314:	03812283          	lw	t0,56(sp)
 318:	03412303          	lw	t1,52(sp)
 31c:	03012383          	lw	t2,48(sp)
 320:	02c12503          	lw	a0,44(sp)
 324:	02812583          	lw	a1,40(sp)
 328:	02412603          	lw	a2,36(sp)
 32c:	02012683          	lw	a3,32(sp)
 330:	01c12703          	lw	a4,28(sp)
 334:	01812783          	lw	a5,24(sp)
 338:	01412803          	lw	a6,20(sp)
 33c:	01012883          	lw	a7,16(sp)
 340:	00c12e03          	lw	t3,12(sp)
 344:	00812e83          	lw	t4,8(sp)
 348:	00412f03          	lw	t5,4(sp)
 34c:	00012f83          	lw	t6,0(sp)
 350:	04010113          	addi	sp,sp,64
 354:	30200073          	mret
 358:	00001737          	lui	a4,0x1
 35c:	00279793          	slli	a5,a5,0x2
 360:	efc70713          	addi	a4,a4,-260 # efc <__etext+0xf0>
 364:	00e787b3          	add	a5,a5,a4
 368:	0007a783          	lw	a5,0(a5)
 36c:	00078067          	jr	a5
 370:	80000737          	lui	a4,0x80000
 374:	ffd74713          	xori	a4,a4,-3
 378:	00e787b3          	add	a5,a5,a4
 37c:	01c00713          	li	a4,28
 380:	f8f764e3          	bltu	a4,a5,308 <__neorv32_rte_core+0x78>
 384:	00001737          	lui	a4,0x1
 388:	00279793          	slli	a5,a5,0x2
 38c:	f2c70713          	addi	a4,a4,-212 # f2c <__etext+0x120>
 390:	00e787b3          	add	a5,a5,a4
 394:	0007a783          	lw	a5,0(a5)
 398:	00078067          	jr	a5
 39c:	800007b7          	lui	a5,0x80000
 3a0:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 3a4:	f69ff06f          	j	30c <__neorv32_rte_core+0x7c>
 3a8:	800007b7          	lui	a5,0x80000
 3ac:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 3b0:	f5dff06f          	j	30c <__neorv32_rte_core+0x7c>
 3b4:	800007b7          	lui	a5,0x80000
 3b8:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 3bc:	f51ff06f          	j	30c <__neorv32_rte_core+0x7c>
 3c0:	800007b7          	lui	a5,0x80000
 3c4:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
 3c8:	f45ff06f          	j	30c <__neorv32_rte_core+0x7c>
 3cc:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
 3d0:	f3dff06f          	j	30c <__neorv32_rte_core+0x7c>
 3d4:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
 3d8:	f35ff06f          	j	30c <__neorv32_rte_core+0x7c>
 3dc:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
 3e0:	f2dff06f          	j	30c <__neorv32_rte_core+0x7c>
 3e4:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
 3e8:	f25ff06f          	j	30c <__neorv32_rte_core+0x7c>
 3ec:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
 3f0:	f1dff06f          	j	30c <__neorv32_rte_core+0x7c>
 3f4:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
 3f8:	f15ff06f          	j	30c <__neorv32_rte_core+0x7c>
 3fc:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
 400:	f0dff06f          	j	30c <__neorv32_rte_core+0x7c>
 404:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
 408:	f05ff06f          	j	30c <__neorv32_rte_core+0x7c>
 40c:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
 410:	efdff06f          	j	30c <__neorv32_rte_core+0x7c>
 414:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
 418:	ef5ff06f          	j	30c <__neorv32_rte_core+0x7c>
 41c:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
 420:	eedff06f          	j	30c <__neorv32_rte_core+0x7c>
 424:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
 428:	ee5ff06f          	j	30c <__neorv32_rte_core+0x7c>
 42c:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 430:	eddff06f          	j	30c <__neorv32_rte_core+0x7c>
 434:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 438:	ed5ff06f          	j	30c <__neorv32_rte_core+0x7c>
 43c:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 440:	ecdff06f          	j	30c <__neorv32_rte_core+0x7c>
 444:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 448:	ec5ff06f          	j	30c <__neorv32_rte_core+0x7c>
 44c:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 450:	ebdff06f          	j	30c <__neorv32_rte_core+0x7c>
 454:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 458:	eb5ff06f          	j	30c <__neorv32_rte_core+0x7c>
 45c:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 460:	eadff06f          	j	30c <__neorv32_rte_core+0x7c>
 464:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 468:	ea5ff06f          	j	30c <__neorv32_rte_core+0x7c>
 46c:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 470:	e9dff06f          	j	30c <__neorv32_rte_core+0x7c>
 474:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 478:	e95ff06f          	j	30c <__neorv32_rte_core+0x7c>
 47c:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 480:	e8dff06f          	j	30c <__neorv32_rte_core+0x7c>
 484:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 488:	e85ff06f          	j	30c <__neorv32_rte_core+0x7c>
 48c:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 490:	e7dff06f          	j	30c <__neorv32_rte_core+0x7c>
 494:	0000                	unimp
 496:	0000                	unimp
 498:	0000                	unimp
 49a:	0000                	unimp

0000049c <__neorv32_rte_print_hex_word>:
 49c:	fe010113          	addi	sp,sp,-32
 4a0:	01212823          	sw	s2,16(sp)
 4a4:	00050913          	mv	s2,a0
 4a8:	00001537          	lui	a0,0x1
 4ac:	00912a23          	sw	s1,20(sp)
 4b0:	fa050513          	addi	a0,a0,-96 # fa0 <__etext+0x194>
 4b4:	000014b7          	lui	s1,0x1
 4b8:	00812c23          	sw	s0,24(sp)
 4bc:	01312623          	sw	s3,12(sp)
 4c0:	00112e23          	sw	ra,28(sp)
 4c4:	01c00413          	li	s0,28
 4c8:	4cc000ef          	jal	ra,994 <neorv32_uart0_print>
 4cc:	19448493          	addi	s1,s1,404 # 1194 <hex_symbols.0>
 4d0:	ffc00993          	li	s3,-4
 4d4:	008957b3          	srl	a5,s2,s0
 4d8:	00f7f793          	andi	a5,a5,15
 4dc:	00f487b3          	add	a5,s1,a5
 4e0:	0007c503          	lbu	a0,0(a5)
 4e4:	ffc40413          	addi	s0,s0,-4
 4e8:	494000ef          	jal	ra,97c <neorv32_uart0_putc>
 4ec:	ff3414e3          	bne	s0,s3,4d4 <__neorv32_rte_print_hex_word+0x38>
 4f0:	01c12083          	lw	ra,28(sp)
 4f4:	01812403          	lw	s0,24(sp)
 4f8:	01412483          	lw	s1,20(sp)
 4fc:	01012903          	lw	s2,16(sp)
 500:	00c12983          	lw	s3,12(sp)
 504:	02010113          	addi	sp,sp,32
 508:	00008067          	ret

0000050c <__neorv32_rte_debug_exc_handler>:
 50c:	ff010113          	addi	sp,sp,-16
 510:	00112623          	sw	ra,12(sp)
 514:	00812423          	sw	s0,8(sp)
 518:	00912223          	sw	s1,4(sp)
 51c:	3a4000ef          	jal	ra,8c0 <neorv32_uart0_available>
 520:	1c050863          	beqz	a0,6f0 <__neorv32_rte_debug_exc_handler+0x1e4>
 524:	00001537          	lui	a0,0x1
 528:	fa450513          	addi	a0,a0,-92 # fa4 <__etext+0x198>
 52c:	468000ef          	jal	ra,994 <neorv32_uart0_print>
 530:	34202473          	csrr	s0,mcause
 534:	00900713          	li	a4,9
 538:	00f47793          	andi	a5,s0,15
 53c:	03078493          	addi	s1,a5,48
 540:	00f77463          	bgeu	a4,a5,548 <__neorv32_rte_debug_exc_handler+0x3c>
 544:	05778493          	addi	s1,a5,87
 548:	00b00793          	li	a5,11
 54c:	0087ee63          	bltu	a5,s0,568 <__neorv32_rte_debug_exc_handler+0x5c>
 550:	00001737          	lui	a4,0x1
 554:	00241793          	slli	a5,s0,0x2
 558:	16470713          	addi	a4,a4,356 # 1164 <__etext+0x358>
 55c:	00e787b3          	add	a5,a5,a4
 560:	0007a783          	lw	a5,0(a5)
 564:	00078067          	jr	a5
 568:	800007b7          	lui	a5,0x80000
 56c:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 570:	14e40e63          	beq	s0,a4,6cc <__neorv32_rte_debug_exc_handler+0x1c0>
 574:	02876a63          	bltu	a4,s0,5a8 <__neorv32_rte_debug_exc_handler+0x9c>
 578:	00378713          	addi	a4,a5,3
 57c:	12e40c63          	beq	s0,a4,6b4 <__neorv32_rte_debug_exc_handler+0x1a8>
 580:	00778793          	addi	a5,a5,7
 584:	12f40e63          	beq	s0,a5,6c0 <__neorv32_rte_debug_exc_handler+0x1b4>
 588:	00001537          	lui	a0,0x1
 58c:	10450513          	addi	a0,a0,260 # 1104 <__etext+0x2f8>
 590:	404000ef          	jal	ra,994 <neorv32_uart0_print>
 594:	00040513          	mv	a0,s0
 598:	f05ff0ef          	jal	ra,49c <__neorv32_rte_print_hex_word>
 59c:	00100793          	li	a5,1
 5a0:	08f40c63          	beq	s0,a5,638 <__neorv32_rte_debug_exc_handler+0x12c>
 5a4:	0280006f          	j	5cc <__neorv32_rte_debug_exc_handler+0xc0>
 5a8:	ff07c793          	xori	a5,a5,-16
 5ac:	00f407b3          	add	a5,s0,a5
 5b0:	00f00713          	li	a4,15
 5b4:	fcf76ae3          	bltu	a4,a5,588 <__neorv32_rte_debug_exc_handler+0x7c>
 5b8:	00001537          	lui	a0,0x1
 5bc:	0f450513          	addi	a0,a0,244 # 10f4 <__etext+0x2e8>
 5c0:	3d4000ef          	jal	ra,994 <neorv32_uart0_print>
 5c4:	00048513          	mv	a0,s1
 5c8:	3b4000ef          	jal	ra,97c <neorv32_uart0_putc>
 5cc:	ffd47413          	andi	s0,s0,-3
 5d0:	00500793          	li	a5,5
 5d4:	06f40263          	beq	s0,a5,638 <__neorv32_rte_debug_exc_handler+0x12c>
 5d8:	00001537          	lui	a0,0x1
 5dc:	14850513          	addi	a0,a0,328 # 1148 <__etext+0x33c>
 5e0:	3b4000ef          	jal	ra,994 <neorv32_uart0_print>
 5e4:	34002573          	csrr	a0,mscratch
 5e8:	eb5ff0ef          	jal	ra,49c <__neorv32_rte_print_hex_word>
 5ec:	00001537          	lui	a0,0x1
 5f0:	15050513          	addi	a0,a0,336 # 1150 <__etext+0x344>
 5f4:	3a0000ef          	jal	ra,994 <neorv32_uart0_print>
 5f8:	34302573          	csrr	a0,mtval
 5fc:	ea1ff0ef          	jal	ra,49c <__neorv32_rte_print_hex_word>
 600:	00812403          	lw	s0,8(sp)
 604:	00c12083          	lw	ra,12(sp)
 608:	00412483          	lw	s1,4(sp)
 60c:	00001537          	lui	a0,0x1
 610:	15c50513          	addi	a0,a0,348 # 115c <__etext+0x350>
 614:	01010113          	addi	sp,sp,16
 618:	37c0006f          	j	994 <neorv32_uart0_print>
 61c:	00001537          	lui	a0,0x1
 620:	fac50513          	addi	a0,a0,-84 # fac <__etext+0x1a0>
 624:	370000ef          	jal	ra,994 <neorv32_uart0_print>
 628:	fb1ff06f          	j	5d8 <__neorv32_rte_debug_exc_handler+0xcc>
 62c:	00001537          	lui	a0,0x1
 630:	fcc50513          	addi	a0,a0,-52 # fcc <__etext+0x1c0>
 634:	360000ef          	jal	ra,994 <neorv32_uart0_print>
 638:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 63c:	0a07d463          	bgez	a5,6e4 <__neorv32_rte_debug_exc_handler+0x1d8>
 640:	0017f793          	andi	a5,a5,1
 644:	08078a63          	beqz	a5,6d8 <__neorv32_rte_debug_exc_handler+0x1cc>
 648:	00001537          	lui	a0,0x1
 64c:	11c50513          	addi	a0,a0,284 # 111c <__etext+0x310>
 650:	fd5ff06f          	j	624 <__neorv32_rte_debug_exc_handler+0x118>
 654:	00001537          	lui	a0,0x1
 658:	fe850513          	addi	a0,a0,-24 # fe8 <__etext+0x1dc>
 65c:	fc9ff06f          	j	624 <__neorv32_rte_debug_exc_handler+0x118>
 660:	00001537          	lui	a0,0x1
 664:	ffc50513          	addi	a0,a0,-4 # ffc <__etext+0x1f0>
 668:	fbdff06f          	j	624 <__neorv32_rte_debug_exc_handler+0x118>
 66c:	00001537          	lui	a0,0x1
 670:	00850513          	addi	a0,a0,8 # 1008 <__etext+0x1fc>
 674:	fb1ff06f          	j	624 <__neorv32_rte_debug_exc_handler+0x118>
 678:	00001537          	lui	a0,0x1
 67c:	02050513          	addi	a0,a0,32 # 1020 <__etext+0x214>
 680:	fb5ff06f          	j	634 <__neorv32_rte_debug_exc_handler+0x128>
 684:	00001537          	lui	a0,0x1
 688:	03450513          	addi	a0,a0,52 # 1034 <__etext+0x228>
 68c:	f99ff06f          	j	624 <__neorv32_rte_debug_exc_handler+0x118>
 690:	00001537          	lui	a0,0x1
 694:	05050513          	addi	a0,a0,80 # 1050 <__etext+0x244>
 698:	f9dff06f          	j	634 <__neorv32_rte_debug_exc_handler+0x128>
 69c:	00001537          	lui	a0,0x1
 6a0:	06450513          	addi	a0,a0,100 # 1064 <__etext+0x258>
 6a4:	f81ff06f          	j	624 <__neorv32_rte_debug_exc_handler+0x118>
 6a8:	00001537          	lui	a0,0x1
 6ac:	08450513          	addi	a0,a0,132 # 1084 <__etext+0x278>
 6b0:	f75ff06f          	j	624 <__neorv32_rte_debug_exc_handler+0x118>
 6b4:	00001537          	lui	a0,0x1
 6b8:	0a450513          	addi	a0,a0,164 # 10a4 <__etext+0x298>
 6bc:	f69ff06f          	j	624 <__neorv32_rte_debug_exc_handler+0x118>
 6c0:	00001537          	lui	a0,0x1
 6c4:	0c050513          	addi	a0,a0,192 # 10c0 <__etext+0x2b4>
 6c8:	f5dff06f          	j	624 <__neorv32_rte_debug_exc_handler+0x118>
 6cc:	00001537          	lui	a0,0x1
 6d0:	0d850513          	addi	a0,a0,216 # 10d8 <__etext+0x2cc>
 6d4:	f51ff06f          	j	624 <__neorv32_rte_debug_exc_handler+0x118>
 6d8:	00001537          	lui	a0,0x1
 6dc:	12c50513          	addi	a0,a0,300 # 112c <__etext+0x320>
 6e0:	f45ff06f          	j	624 <__neorv32_rte_debug_exc_handler+0x118>
 6e4:	00001537          	lui	a0,0x1
 6e8:	13c50513          	addi	a0,a0,316 # 113c <__etext+0x330>
 6ec:	f39ff06f          	j	624 <__neorv32_rte_debug_exc_handler+0x118>
 6f0:	00c12083          	lw	ra,12(sp)
 6f4:	00812403          	lw	s0,8(sp)
 6f8:	00412483          	lw	s1,4(sp)
 6fc:	01010113          	addi	sp,sp,16
 700:	00008067          	ret

00000704 <neorv32_rte_exception_uninstall>:
 704:	01f00793          	li	a5,31
 708:	02a7e263          	bltu	a5,a0,72c <neorv32_rte_exception_uninstall+0x28>
 70c:	800007b7          	lui	a5,0x80000
 710:	00078793          	mv	a5,a5
 714:	00251513          	slli	a0,a0,0x2
 718:	00a78533          	add	a0,a5,a0
 71c:	50c00793          	li	a5,1292
 720:	00f52023          	sw	a5,0(a0)
 724:	00000513          	li	a0,0
 728:	00008067          	ret
 72c:	00100513          	li	a0,1
 730:	00008067          	ret

00000734 <neorv32_rte_setup>:
 734:	ff010113          	addi	sp,sp,-16
 738:	00112623          	sw	ra,12(sp)
 73c:	00812423          	sw	s0,8(sp)
 740:	00912223          	sw	s1,4(sp)
 744:	29000793          	li	a5,656
 748:	30579073          	csrw	mtvec,a5
 74c:	00000413          	li	s0,0
 750:	01d00493          	li	s1,29
 754:	00040513          	mv	a0,s0
 758:	00140413          	addi	s0,s0,1
 75c:	0ff47413          	andi	s0,s0,255
 760:	fa5ff0ef          	jal	ra,704 <neorv32_rte_exception_uninstall>
 764:	fe9418e3          	bne	s0,s1,754 <neorv32_rte_setup+0x20>
 768:	00c12083          	lw	ra,12(sp)
 76c:	00812403          	lw	s0,8(sp)
 770:	00412483          	lw	s1,4(sp)
 774:	01010113          	addi	sp,sp,16
 778:	00008067          	ret

0000077c <__neorv32_uart_itoa>:
 77c:	fd010113          	addi	sp,sp,-48
 780:	02812423          	sw	s0,40(sp)
 784:	02912223          	sw	s1,36(sp)
 788:	03212023          	sw	s2,32(sp)
 78c:	01312e23          	sw	s3,28(sp)
 790:	01412c23          	sw	s4,24(sp)
 794:	02112623          	sw	ra,44(sp)
 798:	01512a23          	sw	s5,20(sp)
 79c:	00001a37          	lui	s4,0x1
 7a0:	00050493          	mv	s1,a0
 7a4:	00058413          	mv	s0,a1
 7a8:	00058523          	sb	zero,10(a1)
 7ac:	00000993          	li	s3,0
 7b0:	00410913          	addi	s2,sp,4
 7b4:	1a4a0a13          	addi	s4,s4,420 # 11a4 <numbers.1>
 7b8:	00a00593          	li	a1,10
 7bc:	00048513          	mv	a0,s1
 7c0:	5e8000ef          	jal	ra,da8 <__umodsi3>
 7c4:	00aa0533          	add	a0,s4,a0
 7c8:	00054783          	lbu	a5,0(a0)
 7cc:	01390ab3          	add	s5,s2,s3
 7d0:	00048513          	mv	a0,s1
 7d4:	00fa8023          	sb	a5,0(s5)
 7d8:	00a00593          	li	a1,10
 7dc:	584000ef          	jal	ra,d60 <__udivsi3>
 7e0:	00198993          	addi	s3,s3,1
 7e4:	00a00793          	li	a5,10
 7e8:	00050493          	mv	s1,a0
 7ec:	fcf996e3          	bne	s3,a5,7b8 <__neorv32_uart_itoa+0x3c>
 7f0:	00090693          	mv	a3,s2
 7f4:	00900713          	li	a4,9
 7f8:	03000613          	li	a2,48
 7fc:	0096c583          	lbu	a1,9(a3)
 800:	00070793          	mv	a5,a4
 804:	fff70713          	addi	a4,a4,-1
 808:	01071713          	slli	a4,a4,0x10
 80c:	01075713          	srli	a4,a4,0x10
 810:	00c59a63          	bne	a1,a2,824 <__neorv32_uart_itoa+0xa8>
 814:	000684a3          	sb	zero,9(a3)
 818:	fff68693          	addi	a3,a3,-1
 81c:	fe0710e3          	bnez	a4,7fc <__neorv32_uart_itoa+0x80>
 820:	00000793          	li	a5,0
 824:	00f907b3          	add	a5,s2,a5
 828:	00000593          	li	a1,0
 82c:	0007c703          	lbu	a4,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 830:	00070c63          	beqz	a4,848 <__neorv32_uart_itoa+0xcc>
 834:	00158693          	addi	a3,a1,1
 838:	00b405b3          	add	a1,s0,a1
 83c:	00e58023          	sb	a4,0(a1)
 840:	01069593          	slli	a1,a3,0x10
 844:	0105d593          	srli	a1,a1,0x10
 848:	fff78713          	addi	a4,a5,-1
 84c:	02f91863          	bne	s2,a5,87c <__neorv32_uart_itoa+0x100>
 850:	00b40433          	add	s0,s0,a1
 854:	00040023          	sb	zero,0(s0)
 858:	02c12083          	lw	ra,44(sp)
 85c:	02812403          	lw	s0,40(sp)
 860:	02412483          	lw	s1,36(sp)
 864:	02012903          	lw	s2,32(sp)
 868:	01c12983          	lw	s3,28(sp)
 86c:	01812a03          	lw	s4,24(sp)
 870:	01412a83          	lw	s5,20(sp)
 874:	03010113          	addi	sp,sp,48
 878:	00008067          	ret
 87c:	00070793          	mv	a5,a4
 880:	fadff06f          	j	82c <__neorv32_uart_itoa+0xb0>

00000884 <__neorv32_uart_tohex>:
 884:	00001637          	lui	a2,0x1
 888:	00758693          	addi	a3,a1,7
 88c:	00000713          	li	a4,0
 890:	1b060613          	addi	a2,a2,432 # 11b0 <symbols.0>
 894:	02000813          	li	a6,32
 898:	00e557b3          	srl	a5,a0,a4
 89c:	00f7f793          	andi	a5,a5,15
 8a0:	00f607b3          	add	a5,a2,a5
 8a4:	0007c783          	lbu	a5,0(a5)
 8a8:	00470713          	addi	a4,a4,4
 8ac:	fff68693          	addi	a3,a3,-1
 8b0:	00f680a3          	sb	a5,1(a3)
 8b4:	ff0712e3          	bne	a4,a6,898 <__neorv32_uart_tohex+0x14>
 8b8:	00058423          	sb	zero,8(a1)
 8bc:	00008067          	ret

000008c0 <neorv32_uart0_available>:
 8c0:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 8c4:	01255513          	srli	a0,a0,0x12
 8c8:	00157513          	andi	a0,a0,1
 8cc:	00008067          	ret

000008d0 <neorv32_uart0_setup>:
 8d0:	ff010113          	addi	sp,sp,-16
 8d4:	00812423          	sw	s0,8(sp)
 8d8:	00912223          	sw	s1,4(sp)
 8dc:	00112623          	sw	ra,12(sp)
 8e0:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 8e4:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 8e8:	00058413          	mv	s0,a1
 8ec:	00151593          	slli	a1,a0,0x1
 8f0:	00078513          	mv	a0,a5
 8f4:	00060493          	mv	s1,a2
 8f8:	468000ef          	jal	ra,d60 <__udivsi3>
 8fc:	01051513          	slli	a0,a0,0x10
 900:	000017b7          	lui	a5,0x1
 904:	01055513          	srli	a0,a0,0x10
 908:	00000713          	li	a4,0
 90c:	ffe78793          	addi	a5,a5,-2 # ffe <__etext+0x1f2>
 910:	04a7e463          	bltu	a5,a0,958 <neorv32_uart0_setup+0x88>
 914:	0034f793          	andi	a5,s1,3
 918:	00347413          	andi	s0,s0,3
 91c:	fff50513          	addi	a0,a0,-1
 920:	01479793          	slli	a5,a5,0x14
 924:	01641413          	slli	s0,s0,0x16
 928:	00f567b3          	or	a5,a0,a5
 92c:	0087e7b3          	or	a5,a5,s0
 930:	01871713          	slli	a4,a4,0x18
 934:	00c12083          	lw	ra,12(sp)
 938:	00812403          	lw	s0,8(sp)
 93c:	00e7e7b3          	or	a5,a5,a4
 940:	10000737          	lui	a4,0x10000
 944:	00e7e7b3          	or	a5,a5,a4
 948:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 94c:	00412483          	lw	s1,4(sp)
 950:	01010113          	addi	sp,sp,16
 954:	00008067          	ret
 958:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffee3a>
 95c:	0fd6f693          	andi	a3,a3,253
 960:	00069a63          	bnez	a3,974 <neorv32_uart0_setup+0xa4>
 964:	00355513          	srli	a0,a0,0x3
 968:	00170713          	addi	a4,a4,1
 96c:	0ff77713          	andi	a4,a4,255
 970:	fa1ff06f          	j	910 <neorv32_uart0_setup+0x40>
 974:	00155513          	srli	a0,a0,0x1
 978:	ff1ff06f          	j	968 <neorv32_uart0_setup+0x98>

0000097c <neorv32_uart0_putc>:
 97c:	00040737          	lui	a4,0x40
 980:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 984:	00e7f7b3          	and	a5,a5,a4
 988:	fe079ce3          	bnez	a5,980 <neorv32_uart0_putc+0x4>
 98c:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 990:	00008067          	ret

00000994 <neorv32_uart0_print>:
 994:	ff010113          	addi	sp,sp,-16
 998:	00812423          	sw	s0,8(sp)
 99c:	01212023          	sw	s2,0(sp)
 9a0:	00112623          	sw	ra,12(sp)
 9a4:	00912223          	sw	s1,4(sp)
 9a8:	00050413          	mv	s0,a0
 9ac:	00a00913          	li	s2,10
 9b0:	00044483          	lbu	s1,0(s0)
 9b4:	00140413          	addi	s0,s0,1
 9b8:	00049e63          	bnez	s1,9d4 <neorv32_uart0_print+0x40>
 9bc:	00c12083          	lw	ra,12(sp)
 9c0:	00812403          	lw	s0,8(sp)
 9c4:	00412483          	lw	s1,4(sp)
 9c8:	00012903          	lw	s2,0(sp)
 9cc:	01010113          	addi	sp,sp,16
 9d0:	00008067          	ret
 9d4:	01249663          	bne	s1,s2,9e0 <neorv32_uart0_print+0x4c>
 9d8:	00d00513          	li	a0,13
 9dc:	fa1ff0ef          	jal	ra,97c <neorv32_uart0_putc>
 9e0:	00048513          	mv	a0,s1
 9e4:	f99ff0ef          	jal	ra,97c <neorv32_uart0_putc>
 9e8:	fc9ff06f          	j	9b0 <neorv32_uart0_print+0x1c>

000009ec <neorv32_uart0_printf>:
 9ec:	fa010113          	addi	sp,sp,-96
 9f0:	04f12a23          	sw	a5,84(sp)
 9f4:	04410793          	addi	a5,sp,68
 9f8:	02812c23          	sw	s0,56(sp)
 9fc:	03212823          	sw	s2,48(sp)
 a00:	03412423          	sw	s4,40(sp)
 a04:	03512223          	sw	s5,36(sp)
 a08:	03612023          	sw	s6,32(sp)
 a0c:	01712e23          	sw	s7,28(sp)
 a10:	01812c23          	sw	s8,24(sp)
 a14:	01912a23          	sw	s9,20(sp)
 a18:	02112e23          	sw	ra,60(sp)
 a1c:	02912a23          	sw	s1,52(sp)
 a20:	03312623          	sw	s3,44(sp)
 a24:	00050413          	mv	s0,a0
 a28:	04b12223          	sw	a1,68(sp)
 a2c:	04c12423          	sw	a2,72(sp)
 a30:	04d12623          	sw	a3,76(sp)
 a34:	04e12823          	sw	a4,80(sp)
 a38:	05012c23          	sw	a6,88(sp)
 a3c:	05112e23          	sw	a7,92(sp)
 a40:	00f12023          	sw	a5,0(sp)
 a44:	02500a13          	li	s4,37
 a48:	00a00a93          	li	s5,10
 a4c:	07300913          	li	s2,115
 a50:	07500b13          	li	s6,117
 a54:	07800b93          	li	s7,120
 a58:	06300c13          	li	s8,99
 a5c:	06900c93          	li	s9,105
 a60:	00044483          	lbu	s1,0(s0)
 a64:	02049c63          	bnez	s1,a9c <neorv32_uart0_printf+0xb0>
 a68:	03c12083          	lw	ra,60(sp)
 a6c:	03812403          	lw	s0,56(sp)
 a70:	03412483          	lw	s1,52(sp)
 a74:	03012903          	lw	s2,48(sp)
 a78:	02c12983          	lw	s3,44(sp)
 a7c:	02812a03          	lw	s4,40(sp)
 a80:	02412a83          	lw	s5,36(sp)
 a84:	02012b03          	lw	s6,32(sp)
 a88:	01c12b83          	lw	s7,28(sp)
 a8c:	01812c03          	lw	s8,24(sp)
 a90:	01412c83          	lw	s9,20(sp)
 a94:	06010113          	addi	sp,sp,96
 a98:	00008067          	ret
 a9c:	0d449863          	bne	s1,s4,b6c <neorv32_uart0_printf+0x180>
 aa0:	00240993          	addi	s3,s0,2
 aa4:	00144403          	lbu	s0,1(s0)
 aa8:	05240263          	beq	s0,s2,aec <neorv32_uart0_printf+0x100>
 aac:	00896e63          	bltu	s2,s0,ac8 <neorv32_uart0_printf+0xdc>
 ab0:	05840c63          	beq	s0,s8,b08 <neorv32_uart0_printf+0x11c>
 ab4:	07940663          	beq	s0,s9,b20 <neorv32_uart0_printf+0x134>
 ab8:	02500513          	li	a0,37
 abc:	ec1ff0ef          	jal	ra,97c <neorv32_uart0_putc>
 ac0:	00040513          	mv	a0,s0
 ac4:	0540006f          	j	b18 <neorv32_uart0_printf+0x12c>
 ac8:	09640663          	beq	s0,s6,b54 <neorv32_uart0_printf+0x168>
 acc:	ff7416e3          	bne	s0,s7,ab8 <neorv32_uart0_printf+0xcc>
 ad0:	00012783          	lw	a5,0(sp)
 ad4:	00410593          	addi	a1,sp,4
 ad8:	0007a503          	lw	a0,0(a5)
 adc:	00478713          	addi	a4,a5,4
 ae0:	00e12023          	sw	a4,0(sp)
 ae4:	da1ff0ef          	jal	ra,884 <__neorv32_uart_tohex>
 ae8:	0640006f          	j	b4c <neorv32_uart0_printf+0x160>
 aec:	00012783          	lw	a5,0(sp)
 af0:	0007a503          	lw	a0,0(a5)
 af4:	00478713          	addi	a4,a5,4
 af8:	00e12023          	sw	a4,0(sp)
 afc:	e99ff0ef          	jal	ra,994 <neorv32_uart0_print>
 b00:	00098413          	mv	s0,s3
 b04:	f5dff06f          	j	a60 <neorv32_uart0_printf+0x74>
 b08:	00012783          	lw	a5,0(sp)
 b0c:	0007c503          	lbu	a0,0(a5)
 b10:	00478713          	addi	a4,a5,4
 b14:	00e12023          	sw	a4,0(sp)
 b18:	e65ff0ef          	jal	ra,97c <neorv32_uart0_putc>
 b1c:	fe5ff06f          	j	b00 <neorv32_uart0_printf+0x114>
 b20:	00012783          	lw	a5,0(sp)
 b24:	0007a403          	lw	s0,0(a5)
 b28:	00478713          	addi	a4,a5,4
 b2c:	00e12023          	sw	a4,0(sp)
 b30:	00045863          	bgez	s0,b40 <neorv32_uart0_printf+0x154>
 b34:	02d00513          	li	a0,45
 b38:	40800433          	neg	s0,s0
 b3c:	e41ff0ef          	jal	ra,97c <neorv32_uart0_putc>
 b40:	00410593          	addi	a1,sp,4
 b44:	00040513          	mv	a0,s0
 b48:	c35ff0ef          	jal	ra,77c <__neorv32_uart_itoa>
 b4c:	00410513          	addi	a0,sp,4
 b50:	fadff06f          	j	afc <neorv32_uart0_printf+0x110>
 b54:	00012783          	lw	a5,0(sp)
 b58:	00410593          	addi	a1,sp,4
 b5c:	00478713          	addi	a4,a5,4
 b60:	0007a503          	lw	a0,0(a5)
 b64:	00e12023          	sw	a4,0(sp)
 b68:	fe1ff06f          	j	b48 <neorv32_uart0_printf+0x15c>
 b6c:	01549663          	bne	s1,s5,b78 <neorv32_uart0_printf+0x18c>
 b70:	00d00513          	li	a0,13
 b74:	e09ff0ef          	jal	ra,97c <neorv32_uart0_putc>
 b78:	00140993          	addi	s3,s0,1
 b7c:	00048513          	mv	a0,s1
 b80:	f99ff06f          	j	b18 <neorv32_uart0_printf+0x12c>

00000b84 <neorv32_gpio_available>:
 b84:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 b88:	01055513          	srli	a0,a0,0x10
 b8c:	00157513          	andi	a0,a0,1
 b90:	00008067          	ret

00000b94 <neorv32_gpio_pin_get>:
 b94:	00050793          	mv	a5,a0
 b98:	01f00713          	li	a4,31
 b9c:	00100513          	li	a0,1
 ba0:	00f51533          	sll	a0,a0,a5
 ba4:	00f74863          	blt	a4,a5,bb4 <neorv32_gpio_pin_get+0x20>
 ba8:	fc002783          	lw	a5,-64(zero) # ffffffc0 <__ctr0_io_space_begin+0x1c0>
 bac:	00a7f533          	and	a0,a5,a0
 bb0:	00008067          	ret
 bb4:	fc402783          	lw	a5,-60(zero) # ffffffc4 <__ctr0_io_space_begin+0x1c4>
 bb8:	ff5ff06f          	j	bac <neorv32_gpio_pin_get+0x18>

00000bbc <neorv32_cpu_get_systime>:
 bbc:	ff010113          	addi	sp,sp,-16
 bc0:	c81026f3          	rdtimeh	a3
 bc4:	c0102773          	rdtime	a4
 bc8:	c81027f3          	rdtimeh	a5
 bcc:	fed79ae3          	bne	a5,a3,bc0 <neorv32_cpu_get_systime+0x4>
 bd0:	00e12023          	sw	a4,0(sp)
 bd4:	00f12223          	sw	a5,4(sp)
 bd8:	00012503          	lw	a0,0(sp)
 bdc:	00412583          	lw	a1,4(sp)
 be0:	01010113          	addi	sp,sp,16
 be4:	00008067          	ret

00000be8 <neorv32_cpu_delay_ms>:
 be8:	fd010113          	addi	sp,sp,-48
 bec:	00a12623          	sw	a0,12(sp)
 bf0:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 bf4:	3e800593          	li	a1,1000
 bf8:	02112623          	sw	ra,44(sp)
 bfc:	02812423          	sw	s0,40(sp)
 c00:	02912223          	sw	s1,36(sp)
 c04:	03212023          	sw	s2,32(sp)
 c08:	01312e23          	sw	s3,28(sp)
 c0c:	154000ef          	jal	ra,d60 <__udivsi3>
 c10:	00c12603          	lw	a2,12(sp)
 c14:	00000693          	li	a3,0
 c18:	00000593          	li	a1,0
 c1c:	0ac000ef          	jal	ra,cc8 <__muldi3>
 c20:	00050413          	mv	s0,a0
 c24:	00058993          	mv	s3,a1
 c28:	f95ff0ef          	jal	ra,bbc <neorv32_cpu_get_systime>
 c2c:	00058913          	mv	s2,a1
 c30:	00050493          	mv	s1,a0
 c34:	f89ff0ef          	jal	ra,bbc <neorv32_cpu_get_systime>
 c38:	00b96663          	bltu	s2,a1,c44 <neorv32_cpu_delay_ms+0x5c>
 c3c:	05259263          	bne	a1,s2,c80 <neorv32_cpu_delay_ms+0x98>
 c40:	04a4f063          	bgeu	s1,a0,c80 <neorv32_cpu_delay_ms+0x98>
 c44:	008484b3          	add	s1,s1,s0
 c48:	0084b433          	sltu	s0,s1,s0
 c4c:	01390933          	add	s2,s2,s3
 c50:	01240433          	add	s0,s0,s2
 c54:	f69ff0ef          	jal	ra,bbc <neorv32_cpu_get_systime>
 c58:	fe85eee3          	bltu	a1,s0,c54 <neorv32_cpu_delay_ms+0x6c>
 c5c:	00b41463          	bne	s0,a1,c64 <neorv32_cpu_delay_ms+0x7c>
 c60:	fe956ae3          	bltu	a0,s1,c54 <neorv32_cpu_delay_ms+0x6c>
 c64:	02c12083          	lw	ra,44(sp)
 c68:	02812403          	lw	s0,40(sp)
 c6c:	02412483          	lw	s1,36(sp)
 c70:	02012903          	lw	s2,32(sp)
 c74:	01c12983          	lw	s3,28(sp)
 c78:	03010113          	addi	sp,sp,48
 c7c:	00008067          	ret
 c80:	01c99913          	slli	s2,s3,0x1c
 c84:	00445413          	srli	s0,s0,0x4
 c88:	00896433          	or	s0,s2,s0

00000c8c <__neorv32_cpu_delay_ms_start>:
 c8c:	00040a63          	beqz	s0,ca0 <__neorv32_cpu_delay_ms_end>
 c90:	00040863          	beqz	s0,ca0 <__neorv32_cpu_delay_ms_end>
 c94:	fff40413          	addi	s0,s0,-1
 c98:	00000013          	nop
 c9c:	ff1ff06f          	j	c8c <__neorv32_cpu_delay_ms_start>

00000ca0 <__neorv32_cpu_delay_ms_end>:
 ca0:	fc5ff06f          	j	c64 <neorv32_cpu_delay_ms+0x7c>

00000ca4 <__mulsi3>:
 ca4:	00050613          	mv	a2,a0
 ca8:	00000513          	li	a0,0
 cac:	0015f693          	andi	a3,a1,1
 cb0:	00068463          	beqz	a3,cb8 <__mulsi3+0x14>
 cb4:	00c50533          	add	a0,a0,a2
 cb8:	0015d593          	srli	a1,a1,0x1
 cbc:	00161613          	slli	a2,a2,0x1
 cc0:	fe0596e3          	bnez	a1,cac <__mulsi3+0x8>
 cc4:	00008067          	ret

00000cc8 <__muldi3>:
 cc8:	00050313          	mv	t1,a0
 ccc:	ff010113          	addi	sp,sp,-16
 cd0:	00060513          	mv	a0,a2
 cd4:	00068893          	mv	a7,a3
 cd8:	00112623          	sw	ra,12(sp)
 cdc:	00030613          	mv	a2,t1
 ce0:	00050693          	mv	a3,a0
 ce4:	00000713          	li	a4,0
 ce8:	00000793          	li	a5,0
 cec:	00000813          	li	a6,0
 cf0:	0016fe13          	andi	t3,a3,1
 cf4:	00171e93          	slli	t4,a4,0x1
 cf8:	000e0c63          	beqz	t3,d10 <__muldi3+0x48>
 cfc:	01060e33          	add	t3,a2,a6
 d00:	010e3833          	sltu	a6,t3,a6
 d04:	00e787b3          	add	a5,a5,a4
 d08:	00f807b3          	add	a5,a6,a5
 d0c:	000e0813          	mv	a6,t3
 d10:	01f65713          	srli	a4,a2,0x1f
 d14:	0016d693          	srli	a3,a3,0x1
 d18:	00eee733          	or	a4,t4,a4
 d1c:	00161613          	slli	a2,a2,0x1
 d20:	fc0698e3          	bnez	a3,cf0 <__muldi3+0x28>
 d24:	00058663          	beqz	a1,d30 <__muldi3+0x68>
 d28:	f7dff0ef          	jal	ra,ca4 <__mulsi3>
 d2c:	00a787b3          	add	a5,a5,a0
 d30:	00088a63          	beqz	a7,d44 <__muldi3+0x7c>
 d34:	00030513          	mv	a0,t1
 d38:	00088593          	mv	a1,a7
 d3c:	f69ff0ef          	jal	ra,ca4 <__mulsi3>
 d40:	00f507b3          	add	a5,a0,a5
 d44:	00c12083          	lw	ra,12(sp)
 d48:	00080513          	mv	a0,a6
 d4c:	00078593          	mv	a1,a5
 d50:	01010113          	addi	sp,sp,16
 d54:	00008067          	ret

00000d58 <__divsi3>:
 d58:	06054063          	bltz	a0,db8 <__umodsi3+0x10>
 d5c:	0605c663          	bltz	a1,dc8 <__umodsi3+0x20>

00000d60 <__udivsi3>:
 d60:	00058613          	mv	a2,a1
 d64:	00050593          	mv	a1,a0
 d68:	fff00513          	li	a0,-1
 d6c:	02060c63          	beqz	a2,da4 <__udivsi3+0x44>
 d70:	00100693          	li	a3,1
 d74:	00b67a63          	bgeu	a2,a1,d88 <__udivsi3+0x28>
 d78:	00c05863          	blez	a2,d88 <__udivsi3+0x28>
 d7c:	00161613          	slli	a2,a2,0x1
 d80:	00169693          	slli	a3,a3,0x1
 d84:	feb66ae3          	bltu	a2,a1,d78 <__udivsi3+0x18>
 d88:	00000513          	li	a0,0
 d8c:	00c5e663          	bltu	a1,a2,d98 <__udivsi3+0x38>
 d90:	40c585b3          	sub	a1,a1,a2
 d94:	00d56533          	or	a0,a0,a3
 d98:	0016d693          	srli	a3,a3,0x1
 d9c:	00165613          	srli	a2,a2,0x1
 da0:	fe0696e3          	bnez	a3,d8c <__udivsi3+0x2c>
 da4:	00008067          	ret

00000da8 <__umodsi3>:
 da8:	00008293          	mv	t0,ra
 dac:	fb5ff0ef          	jal	ra,d60 <__udivsi3>
 db0:	00058513          	mv	a0,a1
 db4:	00028067          	jr	t0
 db8:	40a00533          	neg	a0,a0
 dbc:	00b04863          	bgtz	a1,dcc <__umodsi3+0x24>
 dc0:	40b005b3          	neg	a1,a1
 dc4:	f9dff06f          	j	d60 <__udivsi3>
 dc8:	40b005b3          	neg	a1,a1
 dcc:	00008293          	mv	t0,ra
 dd0:	f91ff0ef          	jal	ra,d60 <__udivsi3>
 dd4:	40a00533          	neg	a0,a0
 dd8:	00028067          	jr	t0

00000ddc <__modsi3>:
 ddc:	00008293          	mv	t0,ra
 de0:	0005ca63          	bltz	a1,df4 <__modsi3+0x18>
 de4:	00054c63          	bltz	a0,dfc <__modsi3+0x20>
 de8:	f79ff0ef          	jal	ra,d60 <__udivsi3>
 dec:	00058513          	mv	a0,a1
 df0:	00028067          	jr	t0
 df4:	40b005b3          	neg	a1,a1
 df8:	fe0558e3          	bgez	a0,de8 <__modsi3+0xc>
 dfc:	40a00533          	neg	a0,a0
 e00:	f61ff0ef          	jal	ra,d60 <__udivsi3>
 e04:	40b00533          	neg	a0,a1
 e08:	00028067          	jr	t0
