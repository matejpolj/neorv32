
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
 18c:	5a8000ef          	jal	ra,734 <neorv32_rte_setup>
 190:	00005537          	lui	a0,0x5
 194:	00000613          	li	a2,0
 198:	00000593          	li	a1,0
 19c:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x39cc>
 1a0:	041000ef          	jal	ra,9e0 <neorv32_uart0_setup>
 1a4:	634000ef          	jal	ra,7d8 <neorv32_xirq_available>
 1a8:	02051263          	bnez	a0,1cc <main+0x4c>
 1ac:	00001537          	lui	a0,0x1
 1b0:	dd050513          	addi	a0,a0,-560 # dd0 <__etext+0x24>
 1b4:	149000ef          	jal	ra,afc <neorv32_uart0_printf>
 1b8:	00c12083          	lw	ra,12(sp)
 1bc:	00812403          	lw	s0,8(sp)
 1c0:	00100513          	li	a0,1
 1c4:	01010113          	addi	sp,sp,16
 1c8:	00008067          	ret
 1cc:	00001537          	lui	a0,0x1
 1d0:	de850513          	addi	a0,a0,-536 # de8 <__etext+0x3c>
 1d4:	129000ef          	jal	ra,afc <neorv32_uart0_printf>
 1d8:	610000ef          	jal	ra,7e8 <neorv32_xirq_setup>
 1dc:	00050863          	beqz	a0,1ec <main+0x6c>
 1e0:	00001537          	lui	a0,0x1
 1e4:	e1c50513          	addi	a0,a0,-484 # e1c <__etext+0x70>
 1e8:	fcdff06f          	j	1b4 <main+0x34>
 1ec:	23000593          	li	a1,560
 1f0:	62c000ef          	jal	ra,81c <neorv32_xirq_install>
 1f4:	00050413          	mv	s0,a0
 1f8:	24400593          	li	a1,580
 1fc:	00100513          	li	a0,1
 200:	61c000ef          	jal	ra,81c <neorv32_xirq_install>
 204:	00a40433          	add	s0,s0,a0
 208:	00040863          	beqz	s0,218 <main+0x98>
 20c:	00001537          	lui	a0,0x1
 210:	e3850513          	addi	a0,a0,-456 # e38 <__etext+0x8c>
 214:	fa1ff06f          	j	1b4 <main+0x34>
 218:	5fc000ef          	jal	ra,814 <neorv32_xirq_global_enable>
 21c:	30046073          	csrsi	mstatus,8
 220:	00001437          	lui	s0,0x1
 224:	e5440513          	addi	a0,s0,-428 # e54 <__etext+0xa8>
 228:	0d5000ef          	jal	ra,afc <neorv32_uart0_printf>
 22c:	ff9ff06f          	j	224 <main+0xa4>

00000230 <xirq_handler_ch0>:
 230:	f8402603          	lw	a2,-124(zero) # ffffff84 <__ctr0_io_space_begin+0x184>
 234:	00001537          	lui	a0,0x1
 238:	00000593          	li	a1,0
 23c:	dac50513          	addi	a0,a0,-596 # dac <__etext>
 240:	0bd0006f          	j	afc <neorv32_uart0_printf>

00000244 <xirq_handler_ch1>:
 244:	f8402603          	lw	a2,-124(zero) # ffffff84 <__ctr0_io_space_begin+0x184>
 248:	00001537          	lui	a0,0x1
 24c:	00100593          	li	a1,1
 250:	dac50513          	addi	a0,a0,-596 # dac <__etext>
 254:	0a90006f          	j	afc <neorv32_uart0_printf>

00000258 <__neorv32_rte_core>:
 258:	fc010113          	addi	sp,sp,-64
 25c:	02112e23          	sw	ra,60(sp)
 260:	02512c23          	sw	t0,56(sp)
 264:	02612a23          	sw	t1,52(sp)
 268:	02712823          	sw	t2,48(sp)
 26c:	02a12623          	sw	a0,44(sp)
 270:	02b12423          	sw	a1,40(sp)
 274:	02c12223          	sw	a2,36(sp)
 278:	02d12023          	sw	a3,32(sp)
 27c:	00e12e23          	sw	a4,28(sp)
 280:	00f12c23          	sw	a5,24(sp)
 284:	01012a23          	sw	a6,20(sp)
 288:	01112823          	sw	a7,16(sp)
 28c:	01c12623          	sw	t3,12(sp)
 290:	01d12423          	sw	t4,8(sp)
 294:	01e12223          	sw	t5,4(sp)
 298:	01f12023          	sw	t6,0(sp)
 29c:	341026f3          	csrr	a3,mepc
 2a0:	34069073          	csrw	mscratch,a3
 2a4:	342027f3          	csrr	a5,mcause
 2a8:	0407ce63          	bltz	a5,304 <__neorv32_rte_core+0xac>
 2ac:	0006d703          	lhu	a4,0(a3)
 2b0:	01071713          	slli	a4,a4,0x10
 2b4:	01075713          	srli	a4,a4,0x10
 2b8:	00468593          	addi	a1,a3,4
 2bc:	30102673          	csrr	a2,misa
 2c0:	00467613          	andi	a2,a2,4
 2c4:	00060a63          	beqz	a2,2d8 <__neorv32_rte_core+0x80>
 2c8:	00377713          	andi	a4,a4,3
 2cc:	00300613          	li	a2,3
 2d0:	00c70463          	beq	a4,a2,2d8 <__neorv32_rte_core+0x80>
 2d4:	00268593          	addi	a1,a3,2
 2d8:	34159073          	csrw	mepc,a1
 2dc:	00b00713          	li	a4,11
 2e0:	00f77663          	bgeu	a4,a5,2ec <__neorv32_rte_core+0x94>
 2e4:	4e000793          	li	a5,1248
 2e8:	0500006f          	j	338 <__neorv32_rte_core+0xe0>
 2ec:	00001737          	lui	a4,0x1
 2f0:	00279793          	slli	a5,a5,0x2
 2f4:	e6870713          	addi	a4,a4,-408 # e68 <__etext+0xbc>
 2f8:	00e787b3          	add	a5,a5,a4
 2fc:	0007a783          	lw	a5,0(a5)
 300:	00078067          	jr	a5
 304:	80000737          	lui	a4,0x80000
 308:	ffd74713          	xori	a4,a4,-3
 30c:	00e787b3          	add	a5,a5,a4
 310:	01c00713          	li	a4,28
 314:	fcf768e3          	bltu	a4,a5,2e4 <__neorv32_rte_core+0x8c>
 318:	00001737          	lui	a4,0x1
 31c:	00279793          	slli	a5,a5,0x2
 320:	e9870713          	addi	a4,a4,-360 # e98 <__etext+0xec>
 324:	00e787b3          	add	a5,a5,a4
 328:	0007a783          	lw	a5,0(a5)
 32c:	00078067          	jr	a5
 330:	800007b7          	lui	a5,0x80000
 334:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 338:	000780e7          	jalr	a5
 33c:	03c12083          	lw	ra,60(sp)
 340:	03812283          	lw	t0,56(sp)
 344:	03412303          	lw	t1,52(sp)
 348:	03012383          	lw	t2,48(sp)
 34c:	02c12503          	lw	a0,44(sp)
 350:	02812583          	lw	a1,40(sp)
 354:	02412603          	lw	a2,36(sp)
 358:	02012683          	lw	a3,32(sp)
 35c:	01c12703          	lw	a4,28(sp)
 360:	01812783          	lw	a5,24(sp)
 364:	01412803          	lw	a6,20(sp)
 368:	01012883          	lw	a7,16(sp)
 36c:	00c12e03          	lw	t3,12(sp)
 370:	00812e83          	lw	t4,8(sp)
 374:	00412f03          	lw	t5,4(sp)
 378:	00012f83          	lw	t6,0(sp)
 37c:	04010113          	addi	sp,sp,64
 380:	30200073          	mret
 384:	800007b7          	lui	a5,0x80000
 388:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 38c:	fadff06f          	j	338 <__neorv32_rte_core+0xe0>
 390:	800007b7          	lui	a5,0x80000
 394:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 398:	fa1ff06f          	j	338 <__neorv32_rte_core+0xe0>
 39c:	800007b7          	lui	a5,0x80000
 3a0:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
 3a4:	f95ff06f          	j	338 <__neorv32_rte_core+0xe0>
 3a8:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
 3ac:	f8dff06f          	j	338 <__neorv32_rte_core+0xe0>
 3b0:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
 3b4:	f85ff06f          	j	338 <__neorv32_rte_core+0xe0>
 3b8:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
 3bc:	f7dff06f          	j	338 <__neorv32_rte_core+0xe0>
 3c0:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
 3c4:	f75ff06f          	j	338 <__neorv32_rte_core+0xe0>
 3c8:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
 3cc:	f6dff06f          	j	338 <__neorv32_rte_core+0xe0>
 3d0:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
 3d4:	f65ff06f          	j	338 <__neorv32_rte_core+0xe0>
 3d8:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
 3dc:	f5dff06f          	j	338 <__neorv32_rte_core+0xe0>
 3e0:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
 3e4:	f55ff06f          	j	338 <__neorv32_rte_core+0xe0>
 3e8:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
 3ec:	f4dff06f          	j	338 <__neorv32_rte_core+0xe0>
 3f0:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
 3f4:	f45ff06f          	j	338 <__neorv32_rte_core+0xe0>
 3f8:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
 3fc:	f3dff06f          	j	338 <__neorv32_rte_core+0xe0>
 400:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
 404:	f35ff06f          	j	338 <__neorv32_rte_core+0xe0>
 408:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 40c:	f2dff06f          	j	338 <__neorv32_rte_core+0xe0>
 410:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 414:	f25ff06f          	j	338 <__neorv32_rte_core+0xe0>
 418:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 41c:	f1dff06f          	j	338 <__neorv32_rte_core+0xe0>
 420:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 424:	f15ff06f          	j	338 <__neorv32_rte_core+0xe0>
 428:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 42c:	f0dff06f          	j	338 <__neorv32_rte_core+0xe0>
 430:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 434:	f05ff06f          	j	338 <__neorv32_rte_core+0xe0>
 438:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 43c:	efdff06f          	j	338 <__neorv32_rte_core+0xe0>
 440:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 444:	ef5ff06f          	j	338 <__neorv32_rte_core+0xe0>
 448:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 44c:	eedff06f          	j	338 <__neorv32_rte_core+0xe0>
 450:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 454:	ee5ff06f          	j	338 <__neorv32_rte_core+0xe0>
 458:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 45c:	eddff06f          	j	338 <__neorv32_rte_core+0xe0>
 460:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 464:	ed5ff06f          	j	338 <__neorv32_rte_core+0xe0>
 468:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 46c:	ecdff06f          	j	338 <__neorv32_rte_core+0xe0>

00000470 <__neorv32_rte_print_hex_word>:
 470:	fe010113          	addi	sp,sp,-32
 474:	01212823          	sw	s2,16(sp)
 478:	00050913          	mv	s2,a0
 47c:	00001537          	lui	a0,0x1
 480:	00912a23          	sw	s1,20(sp)
 484:	f0c50513          	addi	a0,a0,-244 # f0c <__etext+0x160>
 488:	000014b7          	lui	s1,0x1
 48c:	00812c23          	sw	s0,24(sp)
 490:	01312623          	sw	s3,12(sp)
 494:	00112e23          	sw	ra,28(sp)
 498:	01c00413          	li	s0,28
 49c:	608000ef          	jal	ra,aa4 <neorv32_uart0_print>
 4a0:	10448493          	addi	s1,s1,260 # 1104 <hex_symbols.0>
 4a4:	ffc00993          	li	s3,-4
 4a8:	008957b3          	srl	a5,s2,s0
 4ac:	00f7f793          	andi	a5,a5,15
 4b0:	00f487b3          	add	a5,s1,a5
 4b4:	0007c503          	lbu	a0,0(a5)
 4b8:	ffc40413          	addi	s0,s0,-4
 4bc:	5d0000ef          	jal	ra,a8c <neorv32_uart0_putc>
 4c0:	ff3414e3          	bne	s0,s3,4a8 <__neorv32_rte_print_hex_word+0x38>
 4c4:	01c12083          	lw	ra,28(sp)
 4c8:	01812403          	lw	s0,24(sp)
 4cc:	01412483          	lw	s1,20(sp)
 4d0:	01012903          	lw	s2,16(sp)
 4d4:	00c12983          	lw	s3,12(sp)
 4d8:	02010113          	addi	sp,sp,32
 4dc:	00008067          	ret

000004e0 <__neorv32_rte_debug_exc_handler>:
 4e0:	ff010113          	addi	sp,sp,-16
 4e4:	00112623          	sw	ra,12(sp)
 4e8:	00812423          	sw	s0,8(sp)
 4ec:	00912223          	sw	s1,4(sp)
 4f0:	4e0000ef          	jal	ra,9d0 <neorv32_uart0_available>
 4f4:	1c050863          	beqz	a0,6c4 <__neorv32_rte_debug_exc_handler+0x1e4>
 4f8:	00001537          	lui	a0,0x1
 4fc:	f1050513          	addi	a0,a0,-240 # f10 <__etext+0x164>
 500:	5a4000ef          	jal	ra,aa4 <neorv32_uart0_print>
 504:	34202473          	csrr	s0,mcause
 508:	00900713          	li	a4,9
 50c:	00f47793          	andi	a5,s0,15
 510:	03078493          	addi	s1,a5,48
 514:	00f77463          	bgeu	a4,a5,51c <__neorv32_rte_debug_exc_handler+0x3c>
 518:	05778493          	addi	s1,a5,87
 51c:	00b00793          	li	a5,11
 520:	0087ee63          	bltu	a5,s0,53c <__neorv32_rte_debug_exc_handler+0x5c>
 524:	00001737          	lui	a4,0x1
 528:	00241793          	slli	a5,s0,0x2
 52c:	0d470713          	addi	a4,a4,212 # 10d4 <__etext+0x328>
 530:	00e787b3          	add	a5,a5,a4
 534:	0007a783          	lw	a5,0(a5)
 538:	00078067          	jr	a5
 53c:	800007b7          	lui	a5,0x80000
 540:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 544:	14e40e63          	beq	s0,a4,6a0 <__neorv32_rte_debug_exc_handler+0x1c0>
 548:	02876a63          	bltu	a4,s0,57c <__neorv32_rte_debug_exc_handler+0x9c>
 54c:	00378713          	addi	a4,a5,3
 550:	12e40c63          	beq	s0,a4,688 <__neorv32_rte_debug_exc_handler+0x1a8>
 554:	00778793          	addi	a5,a5,7
 558:	12f40e63          	beq	s0,a5,694 <__neorv32_rte_debug_exc_handler+0x1b4>
 55c:	00001537          	lui	a0,0x1
 560:	07050513          	addi	a0,a0,112 # 1070 <__etext+0x2c4>
 564:	540000ef          	jal	ra,aa4 <neorv32_uart0_print>
 568:	00040513          	mv	a0,s0
 56c:	f05ff0ef          	jal	ra,470 <__neorv32_rte_print_hex_word>
 570:	00100793          	li	a5,1
 574:	08f40c63          	beq	s0,a5,60c <__neorv32_rte_debug_exc_handler+0x12c>
 578:	0280006f          	j	5a0 <__neorv32_rte_debug_exc_handler+0xc0>
 57c:	ff07c793          	xori	a5,a5,-16
 580:	00f407b3          	add	a5,s0,a5
 584:	00f00713          	li	a4,15
 588:	fcf76ae3          	bltu	a4,a5,55c <__neorv32_rte_debug_exc_handler+0x7c>
 58c:	00001537          	lui	a0,0x1
 590:	06050513          	addi	a0,a0,96 # 1060 <__etext+0x2b4>
 594:	510000ef          	jal	ra,aa4 <neorv32_uart0_print>
 598:	00048513          	mv	a0,s1
 59c:	4f0000ef          	jal	ra,a8c <neorv32_uart0_putc>
 5a0:	ffd47413          	andi	s0,s0,-3
 5a4:	00500793          	li	a5,5
 5a8:	06f40263          	beq	s0,a5,60c <__neorv32_rte_debug_exc_handler+0x12c>
 5ac:	00001537          	lui	a0,0x1
 5b0:	0b450513          	addi	a0,a0,180 # 10b4 <__etext+0x308>
 5b4:	4f0000ef          	jal	ra,aa4 <neorv32_uart0_print>
 5b8:	34002573          	csrr	a0,mscratch
 5bc:	eb5ff0ef          	jal	ra,470 <__neorv32_rte_print_hex_word>
 5c0:	00001537          	lui	a0,0x1
 5c4:	0bc50513          	addi	a0,a0,188 # 10bc <__etext+0x310>
 5c8:	4dc000ef          	jal	ra,aa4 <neorv32_uart0_print>
 5cc:	34302573          	csrr	a0,mtval
 5d0:	ea1ff0ef          	jal	ra,470 <__neorv32_rte_print_hex_word>
 5d4:	00812403          	lw	s0,8(sp)
 5d8:	00c12083          	lw	ra,12(sp)
 5dc:	00412483          	lw	s1,4(sp)
 5e0:	00001537          	lui	a0,0x1
 5e4:	0c850513          	addi	a0,a0,200 # 10c8 <__etext+0x31c>
 5e8:	01010113          	addi	sp,sp,16
 5ec:	4b80006f          	j	aa4 <neorv32_uart0_print>
 5f0:	00001537          	lui	a0,0x1
 5f4:	f1850513          	addi	a0,a0,-232 # f18 <__etext+0x16c>
 5f8:	4ac000ef          	jal	ra,aa4 <neorv32_uart0_print>
 5fc:	fb1ff06f          	j	5ac <__neorv32_rte_debug_exc_handler+0xcc>
 600:	00001537          	lui	a0,0x1
 604:	f3850513          	addi	a0,a0,-200 # f38 <__etext+0x18c>
 608:	49c000ef          	jal	ra,aa4 <neorv32_uart0_print>
 60c:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 610:	0a07d463          	bgez	a5,6b8 <__neorv32_rte_debug_exc_handler+0x1d8>
 614:	0017f793          	andi	a5,a5,1
 618:	08078a63          	beqz	a5,6ac <__neorv32_rte_debug_exc_handler+0x1cc>
 61c:	00001537          	lui	a0,0x1
 620:	08850513          	addi	a0,a0,136 # 1088 <__etext+0x2dc>
 624:	fd5ff06f          	j	5f8 <__neorv32_rte_debug_exc_handler+0x118>
 628:	00001537          	lui	a0,0x1
 62c:	f5450513          	addi	a0,a0,-172 # f54 <__etext+0x1a8>
 630:	fc9ff06f          	j	5f8 <__neorv32_rte_debug_exc_handler+0x118>
 634:	00001537          	lui	a0,0x1
 638:	f6850513          	addi	a0,a0,-152 # f68 <__etext+0x1bc>
 63c:	fbdff06f          	j	5f8 <__neorv32_rte_debug_exc_handler+0x118>
 640:	00001537          	lui	a0,0x1
 644:	f7450513          	addi	a0,a0,-140 # f74 <__etext+0x1c8>
 648:	fb1ff06f          	j	5f8 <__neorv32_rte_debug_exc_handler+0x118>
 64c:	00001537          	lui	a0,0x1
 650:	f8c50513          	addi	a0,a0,-116 # f8c <__etext+0x1e0>
 654:	fb5ff06f          	j	608 <__neorv32_rte_debug_exc_handler+0x128>
 658:	00001537          	lui	a0,0x1
 65c:	fa050513          	addi	a0,a0,-96 # fa0 <__etext+0x1f4>
 660:	f99ff06f          	j	5f8 <__neorv32_rte_debug_exc_handler+0x118>
 664:	00001537          	lui	a0,0x1
 668:	fbc50513          	addi	a0,a0,-68 # fbc <__etext+0x210>
 66c:	f9dff06f          	j	608 <__neorv32_rte_debug_exc_handler+0x128>
 670:	00001537          	lui	a0,0x1
 674:	fd050513          	addi	a0,a0,-48 # fd0 <__etext+0x224>
 678:	f81ff06f          	j	5f8 <__neorv32_rte_debug_exc_handler+0x118>
 67c:	00001537          	lui	a0,0x1
 680:	ff050513          	addi	a0,a0,-16 # ff0 <__etext+0x244>
 684:	f75ff06f          	j	5f8 <__neorv32_rte_debug_exc_handler+0x118>
 688:	00001537          	lui	a0,0x1
 68c:	01050513          	addi	a0,a0,16 # 1010 <__etext+0x264>
 690:	f69ff06f          	j	5f8 <__neorv32_rte_debug_exc_handler+0x118>
 694:	00001537          	lui	a0,0x1
 698:	02c50513          	addi	a0,a0,44 # 102c <__etext+0x280>
 69c:	f5dff06f          	j	5f8 <__neorv32_rte_debug_exc_handler+0x118>
 6a0:	00001537          	lui	a0,0x1
 6a4:	04450513          	addi	a0,a0,68 # 1044 <__etext+0x298>
 6a8:	f51ff06f          	j	5f8 <__neorv32_rte_debug_exc_handler+0x118>
 6ac:	00001537          	lui	a0,0x1
 6b0:	09850513          	addi	a0,a0,152 # 1098 <__etext+0x2ec>
 6b4:	f45ff06f          	j	5f8 <__neorv32_rte_debug_exc_handler+0x118>
 6b8:	00001537          	lui	a0,0x1
 6bc:	0a850513          	addi	a0,a0,168 # 10a8 <__etext+0x2fc>
 6c0:	f39ff06f          	j	5f8 <__neorv32_rte_debug_exc_handler+0x118>
 6c4:	00c12083          	lw	ra,12(sp)
 6c8:	00812403          	lw	s0,8(sp)
 6cc:	00412483          	lw	s1,4(sp)
 6d0:	01010113          	addi	sp,sp,16
 6d4:	00008067          	ret

000006d8 <neorv32_rte_exception_install>:
 6d8:	01f00793          	li	a5,31
 6dc:	02a7e063          	bltu	a5,a0,6fc <neorv32_rte_exception_install+0x24>
 6e0:	800007b7          	lui	a5,0x80000
 6e4:	00078793          	mv	a5,a5
 6e8:	00251513          	slli	a0,a0,0x2
 6ec:	00a78533          	add	a0,a5,a0
 6f0:	00b52023          	sw	a1,0(a0)
 6f4:	00000513          	li	a0,0
 6f8:	00008067          	ret
 6fc:	00100513          	li	a0,1
 700:	00008067          	ret

00000704 <neorv32_rte_exception_uninstall>:
 704:	01f00793          	li	a5,31
 708:	02a7e263          	bltu	a5,a0,72c <neorv32_rte_exception_uninstall+0x28>
 70c:	800007b7          	lui	a5,0x80000
 710:	00078793          	mv	a5,a5
 714:	00251513          	slli	a0,a0,0x2
 718:	00a78533          	add	a0,a5,a0
 71c:	4e000793          	li	a5,1248
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
 744:	25800793          	li	a5,600
 748:	30579073          	csrw	mtvec,a5
 74c:	00000793          	li	a5,0
 750:	30479073          	csrw	mie,a5
 754:	34479073          	csrw	mip,a5
 758:	f6002e23          	sw	zero,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 75c:	00000413          	li	s0,0
 760:	01d00493          	li	s1,29
 764:	00040513          	mv	a0,s0
 768:	00140413          	addi	s0,s0,1
 76c:	0ff47413          	andi	s0,s0,255
 770:	f95ff0ef          	jal	ra,704 <neorv32_rte_exception_uninstall>
 774:	fe9418e3          	bne	s0,s1,764 <neorv32_rte_setup+0x30>
 778:	00c12083          	lw	ra,12(sp)
 77c:	00812403          	lw	s0,8(sp)
 780:	00412483          	lw	s1,4(sp)
 784:	01010113          	addi	sp,sp,16
 788:	00008067          	ret
 78c:	0000                	unimp
 78e:	0000                	unimp

00000790 <__neorv32_xirq_core>:
 790:	f8000693          	li	a3,-128
 794:	0086a783          	lw	a5,8(a3)
 798:	00100713          	li	a4,1
 79c:	00f71733          	sll	a4,a4,a5
 7a0:	fff74713          	not	a4,a4
 7a4:	00e6a223          	sw	a4,4(a3)
 7a8:	ff000737          	lui	a4,0xff000
 7ac:	fff70713          	addi	a4,a4,-1 # feffffff <__ctr0_io_space_begin+0xff0001ff>
 7b0:	34471073          	csrw	mip,a4
 7b4:	00279713          	slli	a4,a5,0x2
 7b8:	87418793          	addi	a5,gp,-1932 # 80000074 <__neorv32_xirq_vector_lut>
 7bc:	0006a423          	sw	zero,8(a3)
 7c0:	00e787b3          	add	a5,a5,a4
 7c4:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 7c8:	00078067          	jr	a5
 7cc:	0000                	unimp
 7ce:	0000                	unimp

000007d0 <__neorv32_xirq_dummy_handler>:
 7d0:	00000013          	nop
 7d4:	00008067          	ret

000007d8 <neorv32_xirq_available>:
 7d8:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 7dc:	01c55513          	srli	a0,a0,0x1c
 7e0:	00157513          	andi	a0,a0,1
 7e4:	00008067          	ret

000007e8 <neorv32_xirq_setup>:
 7e8:	f8002023          	sw	zero,-128(zero) # ffffff80 <__ctr0_io_space_begin+0x180>
 7ec:	87418793          	addi	a5,gp,-1932 # 80000074 <__neorv32_xirq_vector_lut>
 7f0:	f8002223          	sw	zero,-124(zero) # ffffff84 <__ctr0_io_space_begin+0x184>
 7f4:	08078693          	addi	a3,a5,128
 7f8:	7d000713          	li	a4,2000
 7fc:	00e7a023          	sw	a4,0(a5)
 800:	00478793          	addi	a5,a5,4
 804:	fed79ce3          	bne	a5,a3,7fc <neorv32_xirq_setup+0x14>
 808:	79000593          	li	a1,1936
 80c:	01500513          	li	a0,21
 810:	ec9ff06f          	j	6d8 <neorv32_rte_exception_install>

00000814 <neorv32_xirq_global_enable>:
 814:	01800513          	li	a0,24
 818:	4a40006f          	j	cbc <neorv32_cpu_irq_enable>

0000081c <neorv32_xirq_install>:
 81c:	01f00793          	li	a5,31
 820:	02a7ec63          	bltu	a5,a0,858 <neorv32_xirq_install+0x3c>
 824:	00251713          	slli	a4,a0,0x2
 828:	87418793          	addi	a5,gp,-1932 # 80000074 <__neorv32_xirq_vector_lut>
 82c:	00e787b3          	add	a5,a5,a4
 830:	00b7a023          	sw	a1,0(a5)
 834:	00100793          	li	a5,1
 838:	00a79533          	sll	a0,a5,a0
 83c:	fff54793          	not	a5,a0
 840:	f8f02223          	sw	a5,-124(zero) # ffffff84 <__ctr0_io_space_begin+0x184>
 844:	f8002783          	lw	a5,-128(zero) # ffffff80 <__ctr0_io_space_begin+0x180>
 848:	00a7e533          	or	a0,a5,a0
 84c:	f8a02023          	sw	a0,-128(zero) # ffffff80 <__ctr0_io_space_begin+0x180>
 850:	00000513          	li	a0,0
 854:	00008067          	ret
 858:	00100513          	li	a0,1
 85c:	00008067          	ret

00000860 <__neorv32_uart_itoa>:
 860:	fd010113          	addi	sp,sp,-48
 864:	02812423          	sw	s0,40(sp)
 868:	02912223          	sw	s1,36(sp)
 86c:	03212023          	sw	s2,32(sp)
 870:	01312e23          	sw	s3,28(sp)
 874:	01412c23          	sw	s4,24(sp)
 878:	02112623          	sw	ra,44(sp)
 87c:	01512a23          	sw	s5,20(sp)
 880:	00001a37          	lui	s4,0x1
 884:	00050493          	mv	s1,a0
 888:	00058413          	mv	s0,a1
 88c:	00058523          	sb	zero,10(a1)
 890:	00000993          	li	s3,0
 894:	00410913          	addi	s2,sp,4
 898:	114a0a13          	addi	s4,s4,276 # 1114 <numbers.1>
 89c:	00a00593          	li	a1,10
 8a0:	00048513          	mv	a0,s1
 8a4:	4a4000ef          	jal	ra,d48 <__umodsi3>
 8a8:	00aa0533          	add	a0,s4,a0
 8ac:	00054783          	lbu	a5,0(a0)
 8b0:	01390ab3          	add	s5,s2,s3
 8b4:	00048513          	mv	a0,s1
 8b8:	00fa8023          	sb	a5,0(s5)
 8bc:	00a00593          	li	a1,10
 8c0:	440000ef          	jal	ra,d00 <__udivsi3>
 8c4:	00198993          	addi	s3,s3,1
 8c8:	00a00793          	li	a5,10
 8cc:	00050493          	mv	s1,a0
 8d0:	fcf996e3          	bne	s3,a5,89c <__neorv32_uart_itoa+0x3c>
 8d4:	00090693          	mv	a3,s2
 8d8:	00900713          	li	a4,9
 8dc:	03000613          	li	a2,48
 8e0:	0096c583          	lbu	a1,9(a3)
 8e4:	00070793          	mv	a5,a4
 8e8:	fff70713          	addi	a4,a4,-1
 8ec:	01071713          	slli	a4,a4,0x10
 8f0:	01075713          	srli	a4,a4,0x10
 8f4:	00c59a63          	bne	a1,a2,908 <__neorv32_uart_itoa+0xa8>
 8f8:	000684a3          	sb	zero,9(a3)
 8fc:	fff68693          	addi	a3,a3,-1
 900:	fe0710e3          	bnez	a4,8e0 <__neorv32_uart_itoa+0x80>
 904:	00000793          	li	a5,0
 908:	00f907b3          	add	a5,s2,a5
 90c:	00000593          	li	a1,0
 910:	0007c703          	lbu	a4,0(a5)
 914:	00070c63          	beqz	a4,92c <__neorv32_uart_itoa+0xcc>
 918:	00158693          	addi	a3,a1,1
 91c:	00b405b3          	add	a1,s0,a1
 920:	00e58023          	sb	a4,0(a1)
 924:	01069593          	slli	a1,a3,0x10
 928:	0105d593          	srli	a1,a1,0x10
 92c:	fff78713          	addi	a4,a5,-1
 930:	02f91863          	bne	s2,a5,960 <__neorv32_uart_itoa+0x100>
 934:	00b40433          	add	s0,s0,a1
 938:	00040023          	sb	zero,0(s0)
 93c:	02c12083          	lw	ra,44(sp)
 940:	02812403          	lw	s0,40(sp)
 944:	02412483          	lw	s1,36(sp)
 948:	02012903          	lw	s2,32(sp)
 94c:	01c12983          	lw	s3,28(sp)
 950:	01812a03          	lw	s4,24(sp)
 954:	01412a83          	lw	s5,20(sp)
 958:	03010113          	addi	sp,sp,48
 95c:	00008067          	ret
 960:	00070793          	mv	a5,a4
 964:	fadff06f          	j	910 <__neorv32_uart_itoa+0xb0>

00000968 <__neorv32_uart_tohex>:
 968:	00001637          	lui	a2,0x1
 96c:	00758693          	addi	a3,a1,7
 970:	00000713          	li	a4,0
 974:	12060613          	addi	a2,a2,288 # 1120 <symbols.0>
 978:	02000813          	li	a6,32
 97c:	00e557b3          	srl	a5,a0,a4
 980:	00f7f793          	andi	a5,a5,15
 984:	00f607b3          	add	a5,a2,a5
 988:	0007c783          	lbu	a5,0(a5)
 98c:	00470713          	addi	a4,a4,4
 990:	fff68693          	addi	a3,a3,-1
 994:	00f680a3          	sb	a5,1(a3)
 998:	ff0712e3          	bne	a4,a6,97c <__neorv32_uart_tohex+0x14>
 99c:	00058423          	sb	zero,8(a1)
 9a0:	00008067          	ret

000009a4 <__neorv32_uart_touppercase.constprop.0>:
 9a4:	00b50693          	addi	a3,a0,11
 9a8:	01900613          	li	a2,25
 9ac:	00054783          	lbu	a5,0(a0)
 9b0:	f9f78713          	addi	a4,a5,-97
 9b4:	0ff77713          	andi	a4,a4,255
 9b8:	00e66663          	bltu	a2,a4,9c4 <__neorv32_uart_touppercase.constprop.0+0x20>
 9bc:	fe078793          	addi	a5,a5,-32
 9c0:	00f50023          	sb	a5,0(a0)
 9c4:	00150513          	addi	a0,a0,1
 9c8:	fed512e3          	bne	a0,a3,9ac <__neorv32_uart_touppercase.constprop.0+0x8>
 9cc:	00008067          	ret

000009d0 <neorv32_uart0_available>:
 9d0:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 9d4:	01255513          	srli	a0,a0,0x12
 9d8:	00157513          	andi	a0,a0,1
 9dc:	00008067          	ret

000009e0 <neorv32_uart0_setup>:
 9e0:	ff010113          	addi	sp,sp,-16
 9e4:	00812423          	sw	s0,8(sp)
 9e8:	00912223          	sw	s1,4(sp)
 9ec:	00112623          	sw	ra,12(sp)
 9f0:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 9f4:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 9f8:	00058413          	mv	s0,a1
 9fc:	00151593          	slli	a1,a0,0x1
 a00:	00078513          	mv	a0,a5
 a04:	00060493          	mv	s1,a2
 a08:	2f8000ef          	jal	ra,d00 <__udivsi3>
 a0c:	01051513          	slli	a0,a0,0x10
 a10:	000017b7          	lui	a5,0x1
 a14:	01055513          	srli	a0,a0,0x10
 a18:	00000713          	li	a4,0
 a1c:	ffe78793          	addi	a5,a5,-2 # ffe <__etext+0x252>
 a20:	04a7e463          	bltu	a5,a0,a68 <neorv32_uart0_setup+0x88>
 a24:	0034f793          	andi	a5,s1,3
 a28:	00347413          	andi	s0,s0,3
 a2c:	fff50513          	addi	a0,a0,-1
 a30:	01479793          	slli	a5,a5,0x14
 a34:	01641413          	slli	s0,s0,0x16
 a38:	00f567b3          	or	a5,a0,a5
 a3c:	0087e7b3          	or	a5,a5,s0
 a40:	01871713          	slli	a4,a4,0x18
 a44:	00c12083          	lw	ra,12(sp)
 a48:	00812403          	lw	s0,8(sp)
 a4c:	00e7e7b3          	or	a5,a5,a4
 a50:	10000737          	lui	a4,0x10000
 a54:	00e7e7b3          	or	a5,a5,a4
 a58:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 a5c:	00412483          	lw	s1,4(sp)
 a60:	01010113          	addi	sp,sp,16
 a64:	00008067          	ret
 a68:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffeeca>
 a6c:	0fd6f693          	andi	a3,a3,253
 a70:	00069a63          	bnez	a3,a84 <neorv32_uart0_setup+0xa4>
 a74:	00355513          	srli	a0,a0,0x3
 a78:	00170713          	addi	a4,a4,1
 a7c:	0ff77713          	andi	a4,a4,255
 a80:	fa1ff06f          	j	a20 <neorv32_uart0_setup+0x40>
 a84:	00155513          	srli	a0,a0,0x1
 a88:	ff1ff06f          	j	a78 <neorv32_uart0_setup+0x98>

00000a8c <neorv32_uart0_putc>:
 a8c:	00040737          	lui	a4,0x40
 a90:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 a94:	00e7f7b3          	and	a5,a5,a4
 a98:	fe079ce3          	bnez	a5,a90 <neorv32_uart0_putc+0x4>
 a9c:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 aa0:	00008067          	ret

00000aa4 <neorv32_uart0_print>:
 aa4:	ff010113          	addi	sp,sp,-16
 aa8:	00812423          	sw	s0,8(sp)
 aac:	01212023          	sw	s2,0(sp)
 ab0:	00112623          	sw	ra,12(sp)
 ab4:	00912223          	sw	s1,4(sp)
 ab8:	00050413          	mv	s0,a0
 abc:	00a00913          	li	s2,10
 ac0:	00044483          	lbu	s1,0(s0)
 ac4:	00140413          	addi	s0,s0,1
 ac8:	00049e63          	bnez	s1,ae4 <neorv32_uart0_print+0x40>
 acc:	00c12083          	lw	ra,12(sp)
 ad0:	00812403          	lw	s0,8(sp)
 ad4:	00412483          	lw	s1,4(sp)
 ad8:	00012903          	lw	s2,0(sp)
 adc:	01010113          	addi	sp,sp,16
 ae0:	00008067          	ret
 ae4:	01249663          	bne	s1,s2,af0 <neorv32_uart0_print+0x4c>
 ae8:	00d00513          	li	a0,13
 aec:	fa1ff0ef          	jal	ra,a8c <neorv32_uart0_putc>
 af0:	00048513          	mv	a0,s1
 af4:	f99ff0ef          	jal	ra,a8c <neorv32_uart0_putc>
 af8:	fc9ff06f          	j	ac0 <neorv32_uart0_print+0x1c>

00000afc <neorv32_uart0_printf>:
 afc:	fa010113          	addi	sp,sp,-96
 b00:	04f12a23          	sw	a5,84(sp)
 b04:	04410793          	addi	a5,sp,68
 b08:	02812c23          	sw	s0,56(sp)
 b0c:	03212823          	sw	s2,48(sp)
 b10:	03312623          	sw	s3,44(sp)
 b14:	03512223          	sw	s5,36(sp)
 b18:	03612023          	sw	s6,32(sp)
 b1c:	01712e23          	sw	s7,28(sp)
 b20:	01812c23          	sw	s8,24(sp)
 b24:	01912a23          	sw	s9,20(sp)
 b28:	02112e23          	sw	ra,60(sp)
 b2c:	02912a23          	sw	s1,52(sp)
 b30:	03412423          	sw	s4,40(sp)
 b34:	00050413          	mv	s0,a0
 b38:	04b12223          	sw	a1,68(sp)
 b3c:	04c12423          	sw	a2,72(sp)
 b40:	04d12623          	sw	a3,76(sp)
 b44:	04e12823          	sw	a4,80(sp)
 b48:	05012c23          	sw	a6,88(sp)
 b4c:	05112e23          	sw	a7,92(sp)
 b50:	00f12023          	sw	a5,0(sp)
 b54:	02500a93          	li	s5,37
 b58:	00a00b13          	li	s6,10
 b5c:	07000913          	li	s2,112
 b60:	05800993          	li	s3,88
 b64:	07500b93          	li	s7,117
 b68:	07800c13          	li	s8,120
 b6c:	07300c93          	li	s9,115
 b70:	00044483          	lbu	s1,0(s0)
 b74:	02049c63          	bnez	s1,bac <neorv32_uart0_printf+0xb0>
 b78:	03c12083          	lw	ra,60(sp)
 b7c:	03812403          	lw	s0,56(sp)
 b80:	03412483          	lw	s1,52(sp)
 b84:	03012903          	lw	s2,48(sp)
 b88:	02c12983          	lw	s3,44(sp)
 b8c:	02812a03          	lw	s4,40(sp)
 b90:	02412a83          	lw	s5,36(sp)
 b94:	02012b03          	lw	s6,32(sp)
 b98:	01c12b83          	lw	s7,28(sp)
 b9c:	01812c03          	lw	s8,24(sp)
 ba0:	01412c83          	lw	s9,20(sp)
 ba4:	06010113          	addi	sp,sp,96
 ba8:	00008067          	ret
 bac:	0f549c63          	bne	s1,s5,ca4 <neorv32_uart0_printf+0x1a8>
 bb0:	00240a13          	addi	s4,s0,2
 bb4:	00144403          	lbu	s0,1(s0)
 bb8:	0d240263          	beq	s0,s2,c7c <neorv32_uart0_printf+0x180>
 bbc:	06896463          	bltu	s2,s0,c24 <neorv32_uart0_printf+0x128>
 bc0:	06300793          	li	a5,99
 bc4:	08f40463          	beq	s0,a5,c4c <neorv32_uart0_printf+0x150>
 bc8:	0087ec63          	bltu	a5,s0,be0 <neorv32_uart0_printf+0xe4>
 bcc:	0b340863          	beq	s0,s3,c7c <neorv32_uart0_printf+0x180>
 bd0:	02500513          	li	a0,37
 bd4:	eb9ff0ef          	jal	ra,a8c <neorv32_uart0_putc>
 bd8:	00040513          	mv	a0,s0
 bdc:	0800006f          	j	c5c <neorv32_uart0_printf+0x160>
 be0:	06400793          	li	a5,100
 be4:	00f40663          	beq	s0,a5,bf0 <neorv32_uart0_printf+0xf4>
 be8:	06900793          	li	a5,105
 bec:	fef412e3          	bne	s0,a5,bd0 <neorv32_uart0_printf+0xd4>
 bf0:	00012783          	lw	a5,0(sp)
 bf4:	0007a403          	lw	s0,0(a5)
 bf8:	00478713          	addi	a4,a5,4
 bfc:	00e12023          	sw	a4,0(sp)
 c00:	00045863          	bgez	s0,c10 <neorv32_uart0_printf+0x114>
 c04:	02d00513          	li	a0,45
 c08:	40800433          	neg	s0,s0
 c0c:	e81ff0ef          	jal	ra,a8c <neorv32_uart0_putc>
 c10:	00410593          	addi	a1,sp,4
 c14:	00040513          	mv	a0,s0
 c18:	c49ff0ef          	jal	ra,860 <__neorv32_uart_itoa>
 c1c:	00410513          	addi	a0,sp,4
 c20:	0200006f          	j	c40 <neorv32_uart0_printf+0x144>
 c24:	05740063          	beq	s0,s7,c64 <neorv32_uart0_printf+0x168>
 c28:	05840a63          	beq	s0,s8,c7c <neorv32_uart0_printf+0x180>
 c2c:	fb9412e3          	bne	s0,s9,bd0 <neorv32_uart0_printf+0xd4>
 c30:	00012783          	lw	a5,0(sp)
 c34:	0007a503          	lw	a0,0(a5)
 c38:	00478713          	addi	a4,a5,4
 c3c:	00e12023          	sw	a4,0(sp)
 c40:	e65ff0ef          	jal	ra,aa4 <neorv32_uart0_print>
 c44:	000a0413          	mv	s0,s4
 c48:	f29ff06f          	j	b70 <neorv32_uart0_printf+0x74>
 c4c:	00012783          	lw	a5,0(sp)
 c50:	0007c503          	lbu	a0,0(a5)
 c54:	00478713          	addi	a4,a5,4
 c58:	00e12023          	sw	a4,0(sp)
 c5c:	e31ff0ef          	jal	ra,a8c <neorv32_uart0_putc>
 c60:	fe5ff06f          	j	c44 <neorv32_uart0_printf+0x148>
 c64:	00012783          	lw	a5,0(sp)
 c68:	00410593          	addi	a1,sp,4
 c6c:	00478713          	addi	a4,a5,4
 c70:	0007a503          	lw	a0,0(a5)
 c74:	00e12023          	sw	a4,0(sp)
 c78:	fa1ff06f          	j	c18 <neorv32_uart0_printf+0x11c>
 c7c:	00012783          	lw	a5,0(sp)
 c80:	00410593          	addi	a1,sp,4
 c84:	0007a503          	lw	a0,0(a5)
 c88:	00478713          	addi	a4,a5,4
 c8c:	00e12023          	sw	a4,0(sp)
 c90:	cd9ff0ef          	jal	ra,968 <__neorv32_uart_tohex>
 c94:	f93414e3          	bne	s0,s3,c1c <neorv32_uart0_printf+0x120>
 c98:	00410513          	addi	a0,sp,4
 c9c:	d09ff0ef          	jal	ra,9a4 <__neorv32_uart_touppercase.constprop.0>
 ca0:	f7dff06f          	j	c1c <neorv32_uart0_printf+0x120>
 ca4:	01649663          	bne	s1,s6,cb0 <neorv32_uart0_printf+0x1b4>
 ca8:	00d00513          	li	a0,13
 cac:	de1ff0ef          	jal	ra,a8c <neorv32_uart0_putc>
 cb0:	00140a13          	addi	s4,s0,1
 cb4:	00048513          	mv	a0,s1
 cb8:	fa5ff06f          	j	c5c <neorv32_uart0_printf+0x160>

00000cbc <neorv32_cpu_irq_enable>:
 cbc:	01f00793          	li	a5,31
 cc0:	00050713          	mv	a4,a0
 cc4:	02a7e663          	bltu	a5,a0,cf0 <neorv32_cpu_irq_enable+0x34>
 cc8:	ffff17b7          	lui	a5,0xffff1
 ccc:	88878793          	addi	a5,a5,-1912 # ffff0888 <__ctr0_io_space_begin+0xffff0a88>
 cd0:	00a7d7b3          	srl	a5,a5,a0
 cd4:	0017f793          	andi	a5,a5,1
 cd8:	00100513          	li	a0,1
 cdc:	00078c63          	beqz	a5,cf4 <neorv32_cpu_irq_enable+0x38>
 ce0:	00e51533          	sll	a0,a0,a4
 ce4:	30452073          	csrs	mie,a0
 ce8:	00000513          	li	a0,0
 cec:	00008067          	ret
 cf0:	00100513          	li	a0,1
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
