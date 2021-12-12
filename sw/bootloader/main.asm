
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
  c8:	80818613          	addi	a2,gp,-2040 # 80000008 <__BSS_END__>

000000cc <__crt0_clear_bss_loop>:
  cc:	00c5d863          	bge	a1,a2,dc <__crt0_clear_bss_loop_end>
  d0:	00058023          	sb	zero,0(a1)
  d4:	00158593          	addi	a1,a1,1
  d8:	ff5ff06f          	j	cc <__crt0_clear_bss_loop>

000000dc <__crt0_clear_bss_loop_end>:
  dc:	00001597          	auipc	a1,0x1
  e0:	02c58593          	addi	a1,a1,44 # 1108 <__crt0_copy_data_src_begin>
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
 180:	fd010113          	addi	sp,sp,-48
 184:	02912223          	sw	s1,36(sp)
 188:	800004b7          	lui	s1,0x80000
 18c:	00048793          	mv	a5,s1
 190:	02112623          	sw	ra,44(sp)
 194:	02812423          	sw	s0,40(sp)
 198:	03212023          	sw	s2,32(sp)
 19c:	01312e23          	sw	s3,28(sp)
 1a0:	01412c23          	sw	s4,24(sp)
 1a4:	01512a23          	sw	s5,20(sp)
 1a8:	01612823          	sw	s6,16(sp)
 1ac:	01712623          	sw	s7,12(sp)
 1b0:	01812423          	sw	s8,8(sp)
 1b4:	01912223          	sw	s9,4(sp)
 1b8:	0007a023          	sw	zero,0(a5)
 1bc:	800007b7          	lui	a5,0x80000
 1c0:	0007a223          	sw	zero,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 1c4:	51000793          	li	a5,1296
 1c8:	30579073          	csrw	mtvec,a5
 1cc:	00000693          	li	a3,0
 1d0:	00000613          	li	a2,0
 1d4:	00000593          	li	a1,0
 1d8:	00200513          	li	a0,2
 1dc:	37d000ef          	jal	ra,d58 <neorv32_spi_setup>
 1e0:	411000ef          	jal	ra,df0 <neorv32_gpio_available>
 1e4:	00048493          	mv	s1,s1
 1e8:	00050863          	beqz	a0,1f8 <main+0x78>
 1ec:	00100513          	li	a0,1
 1f0:	00000593          	li	a1,0
 1f4:	43d000ef          	jal	ra,e30 <neorv32_gpio_port_set>
 1f8:	00005537          	lui	a0,0x5
 1fc:	00000613          	li	a2,0
 200:	00000593          	li	a1,0
 204:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x39f8>
 208:	1fd000ef          	jal	ra,c04 <neorv32_uart0_setup>
 20c:	1c1000ef          	jal	ra,bcc <neorv32_mtime_available>
 210:	02050a63          	beqz	a0,244 <main+0xc4>
 214:	42d000ef          	jal	ra,e40 <neorv32_cpu_get_systime>
 218:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 21c:	0027d793          	srli	a5,a5,0x2
 220:	00a78533          	add	a0,a5,a0
 224:	00f537b3          	sltu	a5,a0,a5
 228:	00b785b3          	add	a1,a5,a1
 22c:	1b1000ef          	jal	ra,bdc <neorv32_mtime_set_timecmp>
 230:	08000793          	li	a5,128
 234:	30479073          	csrw	mie,a5
 238:	30046073          	csrsi	mstatus,8
 23c:	00000013          	nop
 240:	00000013          	nop
 244:	00001537          	lui	a0,0x1
 248:	03850513          	addi	a0,a0,56 # 1038 <__etext+0x118>
 24c:	2b5000ef          	jal	ra,d00 <neorv32_uart0_print>
 250:	f1302573          	csrr	a0,mimpid
 254:	24c000ef          	jal	ra,4a0 <print_hex_word>
 258:	00001537          	lui	a0,0x1
 25c:	07050513          	addi	a0,a0,112 # 1070 <__etext+0x150>
 260:	2a1000ef          	jal	ra,d00 <neorv32_uart0_print>
 264:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 268:	238000ef          	jal	ra,4a0 <print_hex_word>
 26c:	00001537          	lui	a0,0x1
 270:	07850513          	addi	a0,a0,120 # 1078 <__etext+0x158>
 274:	28d000ef          	jal	ra,d00 <neorv32_uart0_print>
 278:	30102573          	csrr	a0,misa
 27c:	224000ef          	jal	ra,4a0 <print_hex_word>
 280:	00001537          	lui	a0,0x1
 284:	08050513          	addi	a0,a0,128 # 1080 <__etext+0x160>
 288:	279000ef          	jal	ra,d00 <neorv32_uart0_print>
 28c:	fe402503          	lw	a0,-28(zero) # ffffffe4 <__ctr0_io_space_begin+0x1e4>
 290:	00001437          	lui	s0,0x1
 294:	20c000ef          	jal	ra,4a0 <print_hex_word>
 298:	00001537          	lui	a0,0x1
 29c:	08850513          	addi	a0,a0,136 # 1088 <__etext+0x168>
 2a0:	261000ef          	jal	ra,d00 <neorv32_uart0_print>
 2a4:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 2a8:	1f8000ef          	jal	ra,4a0 <print_hex_word>
 2ac:	00001537          	lui	a0,0x1
 2b0:	09050513          	addi	a0,a0,144 # 1090 <__etext+0x170>
 2b4:	24d000ef          	jal	ra,d00 <neorv32_uart0_print>
 2b8:	ff802503          	lw	a0,-8(zero) # fffffff8 <__ctr0_io_space_begin+0x1f8>
 2bc:	1e4000ef          	jal	ra,4a0 <print_hex_word>
 2c0:	09840513          	addi	a0,s0,152 # 1098 <__etext+0x178>
 2c4:	23d000ef          	jal	ra,d00 <neorv32_uart0_print>
 2c8:	ff002503          	lw	a0,-16(zero) # fffffff0 <__ctr0_io_space_begin+0x1f0>
 2cc:	1d4000ef          	jal	ra,4a0 <print_hex_word>
 2d0:	00001537          	lui	a0,0x1
 2d4:	0a450513          	addi	a0,a0,164 # 10a4 <__etext+0x184>
 2d8:	229000ef          	jal	ra,d00 <neorv32_uart0_print>
 2dc:	ffc02503          	lw	a0,-4(zero) # fffffffc <__ctr0_io_space_begin+0x1fc>
 2e0:	1c0000ef          	jal	ra,4a0 <print_hex_word>
 2e4:	09840513          	addi	a0,s0,152
 2e8:	219000ef          	jal	ra,d00 <neorv32_uart0_print>
 2ec:	ff402503          	lw	a0,-12(zero) # fffffff4 <__ctr0_io_space_begin+0x1f4>
 2f0:	1b0000ef          	jal	ra,4a0 <print_hex_word>
 2f4:	0d9000ef          	jal	ra,bcc <neorv32_mtime_available>
 2f8:	06050663          	beqz	a0,364 <main+0x1e4>
 2fc:	00001537          	lui	a0,0x1
 300:	0ac50513          	addi	a0,a0,172 # 10ac <__etext+0x18c>
 304:	1fd000ef          	jal	ra,d00 <neorv32_uart0_print>
 308:	339000ef          	jal	ra,e40 <neorv32_cpu_get_systime>
 30c:	fe002403          	lw	s0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 310:	00341413          	slli	s0,s0,0x3
 314:	00a40933          	add	s2,s0,a0
 318:	00893433          	sltu	s0,s2,s0
 31c:	00b40433          	add	s0,s0,a1
 320:	0d5000ef          	jal	ra,bf4 <neorv32_uart0_available>
 324:	02051663          	bnez	a0,350 <main+0x1d0>
 328:	319000ef          	jal	ra,e40 <neorv32_cpu_get_systime>
 32c:	fe85eae3          	bltu	a1,s0,320 <main+0x1a0>
 330:	00b41463          	bne	s0,a1,338 <main+0x1b8>
 334:	ff2566e3          	bltu	a0,s2,320 <main+0x1a0>
 338:	00100513          	li	a0,1
 33c:	4e0000ef          	jal	ra,81c <get_exe>
 340:	00001537          	lui	a0,0x1
 344:	0d450513          	addi	a0,a0,212 # 10d4 <__etext+0x1b4>
 348:	1b9000ef          	jal	ra,d00 <neorv32_uart0_print>
 34c:	0d4000ef          	jal	ra,420 <start_app>
 350:	1a5000ef          	jal	ra,cf4 <neorv32_uart0_char_received>
 354:	fc050ae3          	beqz	a0,328 <main+0x1a8>
 358:	00001537          	lui	a0,0x1
 35c:	0d850513          	addi	a0,a0,216 # 10d8 <__etext+0x1b8>
 360:	1a1000ef          	jal	ra,d00 <neorv32_uart0_print>
 364:	0b0000ef          	jal	ra,414 <print_help>
 368:	000019b7          	lui	s3,0x1
 36c:	00001a37          	lui	s4,0x1
 370:	07200a93          	li	s5,114
 374:	06800b13          	li	s6,104
 378:	07500b93          	li	s7,117
 37c:	07300c13          	li	s8,115
 380:	00001937          	lui	s2,0x1
 384:	00001cb7          	lui	s9,0x1
 388:	0e498513          	addi	a0,s3,228 # 10e4 <__etext+0x1c4>
 38c:	175000ef          	jal	ra,d00 <neorv32_uart0_print>
 390:	155000ef          	jal	ra,ce4 <neorv32_uart0_getc>
 394:	00050413          	mv	s0,a0
 398:	119000ef          	jal	ra,cb0 <neorv32_uart0_putc>
 39c:	0d4a0513          	addi	a0,s4,212 # 10d4 <__etext+0x1b4>
 3a0:	161000ef          	jal	ra,d00 <neorv32_uart0_print>
 3a4:	125000ef          	jal	ra,cc8 <neorv32_uart0_tx_busy>
 3a8:	fe051ee3          	bnez	a0,3a4 <main+0x224>
 3ac:	01541863          	bne	s0,s5,3bc <main+0x23c>
 3b0:	ffff02b7          	lui	t0,0xffff0
 3b4:	00028067          	jr	t0 # ffff0000 <__ctr0_io_space_begin+0xffff0200>
 3b8:	fd1ff06f          	j	388 <main+0x208>
 3bc:	01641663          	bne	s0,s6,3c8 <main+0x248>
 3c0:	054000ef          	jal	ra,414 <print_help>
 3c4:	fc5ff06f          	j	388 <main+0x208>
 3c8:	01741663          	bne	s0,s7,3d4 <main+0x254>
 3cc:	450000ef          	jal	ra,81c <get_exe>
 3d0:	fb9ff06f          	j	388 <main+0x208>
 3d4:	01841663          	bne	s0,s8,3e0 <main+0x260>
 3d8:	678000ef          	jal	ra,a50 <save_exe>
 3dc:	fadff06f          	j	388 <main+0x208>
 3e0:	06c00793          	li	a5,108
 3e4:	00f41663          	bne	s0,a5,3f0 <main+0x270>
 3e8:	00100513          	li	a0,1
 3ec:	fe1ff06f          	j	3cc <main+0x24c>
 3f0:	06500793          	li	a5,101
 3f4:	00f41c63          	bne	s0,a5,40c <main+0x28c>
 3f8:	0004a783          	lw	a5,0(s1) # 80000000 <__ctr0_io_space_begin+0x80000200>
 3fc:	f40798e3          	bnez	a5,34c <main+0x1cc>
 400:	fe0c8513          	addi	a0,s9,-32 # fe0 <__etext+0xc0>
 404:	0fd000ef          	jal	ra,d00 <neorv32_uart0_print>
 408:	f81ff06f          	j	388 <main+0x208>
 40c:	0ec90513          	addi	a0,s2,236 # 10ec <__etext+0x1cc>
 410:	ff5ff06f          	j	404 <main+0x284>

00000414 <print_help>:
 414:	00001537          	lui	a0,0x1
 418:	f2050513          	addi	a0,a0,-224 # f20 <__etext>
 41c:	0e50006f          	j	d00 <neorv32_uart0_print>

00000420 <start_app>:
 420:	ff010113          	addi	sp,sp,-16
 424:	00112623          	sw	ra,12(sp)
 428:	30047073          	csrci	mstatus,8
 42c:	00000013          	nop
 430:	00000013          	nop
 434:	00001537          	lui	a0,0x1
 438:	f8450513          	addi	a0,a0,-124 # f84 <__etext+0x64>
 43c:	0c5000ef          	jal	ra,d00 <neorv32_uart0_print>
 440:	089000ef          	jal	ra,cc8 <neorv32_uart0_tx_busy>
 444:	fe051ee3          	bnez	a0,440 <start_app+0x20>
 448:	ff002783          	lw	a5,-16(zero) # fffffff0 <__ctr0_io_space_begin+0x1f0>
 44c:	00078067          	jr	a5
 450:	0000006f          	j	450 <start_app+0x30>

00000454 <system_error>:
 454:	ff010113          	addi	sp,sp,-16
 458:	00812423          	sw	s0,8(sp)
 45c:	00050413          	mv	s0,a0
 460:	00001537          	lui	a0,0x1
 464:	f9450513          	addi	a0,a0,-108 # f94 <__etext+0x74>
 468:	00112623          	sw	ra,12(sp)
 46c:	095000ef          	jal	ra,d00 <neorv32_uart0_print>
 470:	03040513          	addi	a0,s0,48
 474:	0ff57513          	andi	a0,a0,255
 478:	039000ef          	jal	ra,cb0 <neorv32_uart0_putc>
 47c:	30047073          	csrci	mstatus,8
 480:	00000013          	nop
 484:	00000013          	nop
 488:	169000ef          	jal	ra,df0 <neorv32_gpio_available>
 48c:	00050863          	beqz	a0,49c <system_error+0x48>
 490:	00100513          	li	a0,1
 494:	00000593          	li	a1,0
 498:	199000ef          	jal	ra,e30 <neorv32_gpio_port_set>
 49c:	0000006f          	j	49c <system_error+0x48>

000004a0 <print_hex_word>:
 4a0:	fe010113          	addi	sp,sp,-32
 4a4:	01212823          	sw	s2,16(sp)
 4a8:	00050913          	mv	s2,a0
 4ac:	00001537          	lui	a0,0x1
 4b0:	00912a23          	sw	s1,20(sp)
 4b4:	fa050513          	addi	a0,a0,-96 # fa0 <__etext+0x80>
 4b8:	000014b7          	lui	s1,0x1
 4bc:	00812c23          	sw	s0,24(sp)
 4c0:	01312623          	sw	s3,12(sp)
 4c4:	00112e23          	sw	ra,28(sp)
 4c8:	01c00413          	li	s0,28
 4cc:	035000ef          	jal	ra,d00 <neorv32_uart0_print>
 4d0:	0f848493          	addi	s1,s1,248 # 10f8 <hex_symbols.0>
 4d4:	ffc00993          	li	s3,-4
 4d8:	008957b3          	srl	a5,s2,s0
 4dc:	00f7f793          	andi	a5,a5,15
 4e0:	00f487b3          	add	a5,s1,a5
 4e4:	0007c503          	lbu	a0,0(a5)
 4e8:	ffc40413          	addi	s0,s0,-4
 4ec:	7c4000ef          	jal	ra,cb0 <neorv32_uart0_putc>
 4f0:	ff3414e3          	bne	s0,s3,4d8 <print_hex_word+0x38>
 4f4:	01c12083          	lw	ra,28(sp)
 4f8:	01812403          	lw	s0,24(sp)
 4fc:	01412483          	lw	s1,20(sp)
 500:	01012903          	lw	s2,16(sp)
 504:	00c12983          	lw	s3,12(sp)
 508:	02010113          	addi	sp,sp,32
 50c:	00008067          	ret

00000510 <bootloader_trap_handler>:
 510:	fb010113          	addi	sp,sp,-80
 514:	04112623          	sw	ra,76(sp)
 518:	04512423          	sw	t0,72(sp)
 51c:	04612223          	sw	t1,68(sp)
 520:	04712023          	sw	t2,64(sp)
 524:	02812e23          	sw	s0,60(sp)
 528:	02912c23          	sw	s1,56(sp)
 52c:	02a12a23          	sw	a0,52(sp)
 530:	02b12823          	sw	a1,48(sp)
 534:	02c12623          	sw	a2,44(sp)
 538:	02d12423          	sw	a3,40(sp)
 53c:	02e12223          	sw	a4,36(sp)
 540:	02f12023          	sw	a5,32(sp)
 544:	01012e23          	sw	a6,28(sp)
 548:	01112c23          	sw	a7,24(sp)
 54c:	01c12a23          	sw	t3,20(sp)
 550:	01d12823          	sw	t4,16(sp)
 554:	01e12623          	sw	t5,12(sp)
 558:	01f12423          	sw	t6,8(sp)
 55c:	342024f3          	csrr	s1,mcause
 560:	800007b7          	lui	a5,0x80000
 564:	00778793          	addi	a5,a5,7 # 80000007 <__ctr0_io_space_begin+0x80000207>
 568:	08f49463          	bne	s1,a5,5f0 <bootloader_trap_handler+0xe0>
 56c:	085000ef          	jal	ra,df0 <neorv32_gpio_available>
 570:	00050663          	beqz	a0,57c <bootloader_trap_handler+0x6c>
 574:	00000513          	li	a0,0
 578:	089000ef          	jal	ra,e00 <neorv32_gpio_pin_toggle>
 57c:	650000ef          	jal	ra,bcc <neorv32_mtime_available>
 580:	02050063          	beqz	a0,5a0 <bootloader_trap_handler+0x90>
 584:	0bd000ef          	jal	ra,e40 <neorv32_cpu_get_systime>
 588:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 58c:	0027d793          	srli	a5,a5,0x2
 590:	00a78533          	add	a0,a5,a0
 594:	00f537b3          	sltu	a5,a0,a5
 598:	00b785b3          	add	a1,a5,a1
 59c:	640000ef          	jal	ra,bdc <neorv32_mtime_set_timecmp>
 5a0:	03c12403          	lw	s0,60(sp)
 5a4:	04c12083          	lw	ra,76(sp)
 5a8:	04812283          	lw	t0,72(sp)
 5ac:	04412303          	lw	t1,68(sp)
 5b0:	04012383          	lw	t2,64(sp)
 5b4:	03812483          	lw	s1,56(sp)
 5b8:	03412503          	lw	a0,52(sp)
 5bc:	03012583          	lw	a1,48(sp)
 5c0:	02c12603          	lw	a2,44(sp)
 5c4:	02812683          	lw	a3,40(sp)
 5c8:	02412703          	lw	a4,36(sp)
 5cc:	02012783          	lw	a5,32(sp)
 5d0:	01c12803          	lw	a6,28(sp)
 5d4:	01812883          	lw	a7,24(sp)
 5d8:	01412e03          	lw	t3,20(sp)
 5dc:	01012e83          	lw	t4,16(sp)
 5e0:	00c12f03          	lw	t5,12(sp)
 5e4:	00812f83          	lw	t6,8(sp)
 5e8:	05010113          	addi	sp,sp,80
 5ec:	30200073          	mret
 5f0:	00700793          	li	a5,7
 5f4:	00f49c63          	bne	s1,a5,60c <bootloader_trap_handler+0xfc>
 5f8:	800007b7          	lui	a5,0x80000
 5fc:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 600:	00078663          	beqz	a5,60c <bootloader_trap_handler+0xfc>
 604:	00100513          	li	a0,1
 608:	e4dff0ef          	jal	ra,454 <system_error>
 60c:	34102473          	csrr	s0,mepc
 610:	5e4000ef          	jal	ra,bf4 <neorv32_uart0_available>
 614:	04050263          	beqz	a0,658 <bootloader_trap_handler+0x148>
 618:	00001537          	lui	a0,0x1
 61c:	fa450513          	addi	a0,a0,-92 # fa4 <__etext+0x84>
 620:	6e0000ef          	jal	ra,d00 <neorv32_uart0_print>
 624:	00048513          	mv	a0,s1
 628:	e79ff0ef          	jal	ra,4a0 <print_hex_word>
 62c:	02000513          	li	a0,32
 630:	680000ef          	jal	ra,cb0 <neorv32_uart0_putc>
 634:	00040513          	mv	a0,s0
 638:	e69ff0ef          	jal	ra,4a0 <print_hex_word>
 63c:	02000513          	li	a0,32
 640:	670000ef          	jal	ra,cb0 <neorv32_uart0_putc>
 644:	34302573          	csrr	a0,mtval
 648:	e59ff0ef          	jal	ra,4a0 <print_hex_word>
 64c:	00001537          	lui	a0,0x1
 650:	fac50513          	addi	a0,a0,-84 # fac <__etext+0x8c>
 654:	6ac000ef          	jal	ra,d00 <neorv32_uart0_print>
 658:	00440413          	addi	s0,s0,4
 65c:	34141073          	csrw	mepc,s0
 660:	f41ff06f          	j	5a0 <bootloader_trap_handler+0x90>

00000664 <spi_flash_read_1st_id>:
 664:	ff010113          	addi	sp,sp,-16
 668:	00000513          	li	a0,0
 66c:	00112623          	sw	ra,12(sp)
 670:	00812423          	sw	s0,8(sp)
 674:	724000ef          	jal	ra,d98 <neorv32_spi_cs_en>
 678:	09e00513          	li	a0,158
 67c:	760000ef          	jal	ra,ddc <neorv32_spi_trans>
 680:	00000513          	li	a0,0
 684:	758000ef          	jal	ra,ddc <neorv32_spi_trans>
 688:	00050413          	mv	s0,a0
 68c:	00000513          	li	a0,0
 690:	728000ef          	jal	ra,db8 <neorv32_spi_cs_dis>
 694:	00c12083          	lw	ra,12(sp)
 698:	0ff47513          	andi	a0,s0,255
 69c:	00812403          	lw	s0,8(sp)
 6a0:	01010113          	addi	sp,sp,16
 6a4:	00008067          	ret

000006a8 <spi_flash_write_wait>:
 6a8:	ff010113          	addi	sp,sp,-16
 6ac:	00112623          	sw	ra,12(sp)
 6b0:	00812423          	sw	s0,8(sp)
 6b4:	00000513          	li	a0,0
 6b8:	6e0000ef          	jal	ra,d98 <neorv32_spi_cs_en>
 6bc:	00500513          	li	a0,5
 6c0:	71c000ef          	jal	ra,ddc <neorv32_spi_trans>
 6c4:	00000513          	li	a0,0
 6c8:	714000ef          	jal	ra,ddc <neorv32_spi_trans>
 6cc:	00050413          	mv	s0,a0
 6d0:	00147413          	andi	s0,s0,1
 6d4:	00000513          	li	a0,0
 6d8:	6e0000ef          	jal	ra,db8 <neorv32_spi_cs_dis>
 6dc:	fc041ce3          	bnez	s0,6b4 <spi_flash_write_wait+0xc>
 6e0:	00c12083          	lw	ra,12(sp)
 6e4:	00812403          	lw	s0,8(sp)
 6e8:	01010113          	addi	sp,sp,16
 6ec:	00008067          	ret

000006f0 <spi_flash_write_enable>:
 6f0:	ff010113          	addi	sp,sp,-16
 6f4:	00000513          	li	a0,0
 6f8:	00112623          	sw	ra,12(sp)
 6fc:	69c000ef          	jal	ra,d98 <neorv32_spi_cs_en>
 700:	00600513          	li	a0,6
 704:	6d8000ef          	jal	ra,ddc <neorv32_spi_trans>
 708:	00c12083          	lw	ra,12(sp)
 70c:	00000513          	li	a0,0
 710:	01010113          	addi	sp,sp,16
 714:	6a40006f          	j	db8 <neorv32_spi_cs_dis>

00000718 <spi_flash_write_addr>:
 718:	ff010113          	addi	sp,sp,-16
 71c:	00812423          	sw	s0,8(sp)
 720:	00050413          	mv	s0,a0
 724:	01055513          	srli	a0,a0,0x10
 728:	0ff57513          	andi	a0,a0,255
 72c:	00112623          	sw	ra,12(sp)
 730:	6ac000ef          	jal	ra,ddc <neorv32_spi_trans>
 734:	00845513          	srli	a0,s0,0x8
 738:	0ff57513          	andi	a0,a0,255
 73c:	6a0000ef          	jal	ra,ddc <neorv32_spi_trans>
 740:	0ff47513          	andi	a0,s0,255
 744:	00812403          	lw	s0,8(sp)
 748:	00c12083          	lw	ra,12(sp)
 74c:	01010113          	addi	sp,sp,16
 750:	68c0006f          	j	ddc <neorv32_spi_trans>

00000754 <spi_flash_read_byte>:
 754:	ff010113          	addi	sp,sp,-16
 758:	00812423          	sw	s0,8(sp)
 75c:	00050413          	mv	s0,a0
 760:	00000513          	li	a0,0
 764:	00112623          	sw	ra,12(sp)
 768:	630000ef          	jal	ra,d98 <neorv32_spi_cs_en>
 76c:	00300513          	li	a0,3
 770:	66c000ef          	jal	ra,ddc <neorv32_spi_trans>
 774:	00040513          	mv	a0,s0
 778:	fa1ff0ef          	jal	ra,718 <spi_flash_write_addr>
 77c:	00000513          	li	a0,0
 780:	65c000ef          	jal	ra,ddc <neorv32_spi_trans>
 784:	00050413          	mv	s0,a0
 788:	00000513          	li	a0,0
 78c:	62c000ef          	jal	ra,db8 <neorv32_spi_cs_dis>
 790:	00c12083          	lw	ra,12(sp)
 794:	0ff47513          	andi	a0,s0,255
 798:	00812403          	lw	s0,8(sp)
 79c:	01010113          	addi	sp,sp,16
 7a0:	00008067          	ret

000007a4 <get_exe_word>:
 7a4:	fd010113          	addi	sp,sp,-48
 7a8:	02812423          	sw	s0,40(sp)
 7ac:	02912223          	sw	s1,36(sp)
 7b0:	03212023          	sw	s2,32(sp)
 7b4:	01312e23          	sw	s3,28(sp)
 7b8:	01412c23          	sw	s4,24(sp)
 7bc:	02112623          	sw	ra,44(sp)
 7c0:	00050913          	mv	s2,a0
 7c4:	00058993          	mv	s3,a1
 7c8:	00c10493          	addi	s1,sp,12
 7cc:	00000413          	li	s0,0
 7d0:	00400a13          	li	s4,4
 7d4:	02091e63          	bnez	s2,810 <get_exe_word+0x6c>
 7d8:	50c000ef          	jal	ra,ce4 <neorv32_uart0_getc>
 7dc:	00a48023          	sb	a0,0(s1)
 7e0:	00140413          	addi	s0,s0,1
 7e4:	00148493          	addi	s1,s1,1
 7e8:	ff4416e3          	bne	s0,s4,7d4 <get_exe_word+0x30>
 7ec:	02c12083          	lw	ra,44(sp)
 7f0:	02812403          	lw	s0,40(sp)
 7f4:	00c12503          	lw	a0,12(sp)
 7f8:	02412483          	lw	s1,36(sp)
 7fc:	02012903          	lw	s2,32(sp)
 800:	01c12983          	lw	s3,28(sp)
 804:	01812a03          	lw	s4,24(sp)
 808:	03010113          	addi	sp,sp,48
 80c:	00008067          	ret
 810:	00898533          	add	a0,s3,s0
 814:	f41ff0ef          	jal	ra,754 <spi_flash_read_byte>
 818:	fc5ff06f          	j	7dc <get_exe_word+0x38>

0000081c <get_exe>:
 81c:	fd010113          	addi	sp,sp,-48
 820:	01412c23          	sw	s4,24(sp)
 824:	80000a37          	lui	s4,0x80000
 828:	02812423          	sw	s0,40(sp)
 82c:	004a0793          	addi	a5,s4,4 # 80000004 <__ctr0_io_space_begin+0x80000204>
 830:	02112623          	sw	ra,44(sp)
 834:	02912223          	sw	s1,36(sp)
 838:	03212023          	sw	s2,32(sp)
 83c:	01312e23          	sw	s3,28(sp)
 840:	01512a23          	sw	s5,20(sp)
 844:	01612823          	sw	s6,16(sp)
 848:	01712623          	sw	s7,12(sp)
 84c:	01812423          	sw	s8,8(sp)
 850:	00100713          	li	a4,1
 854:	00e7a023          	sw	a4,0(a5)
 858:	00050413          	mv	s0,a0
 85c:	004a0a13          	addi	s4,s4,4
 860:	02051863          	bnez	a0,890 <get_exe+0x74>
 864:	00001537          	lui	a0,0x1
 868:	fb050513          	addi	a0,a0,-80 # fb0 <__etext+0x90>
 86c:	494000ef          	jal	ra,d00 <neorv32_uart0_print>
 870:	080005b7          	lui	a1,0x8000
 874:	00040513          	mv	a0,s0
 878:	f2dff0ef          	jal	ra,7a4 <get_exe_word>
 87c:	4788d7b7          	lui	a5,0x4788d
 880:	afe78793          	addi	a5,a5,-1282 # 4788cafe <__crt0_copy_data_src_begin+0x4788b9f6>
 884:	02f50463          	beq	a0,a5,8ac <get_exe+0x90>
 888:	00000513          	li	a0,0
 88c:	01c0006f          	j	8a8 <get_exe+0x8c>
 890:	00001537          	lui	a0,0x1
 894:	fd050513          	addi	a0,a0,-48 # fd0 <__etext+0xb0>
 898:	468000ef          	jal	ra,d00 <neorv32_uart0_print>
 89c:	dc9ff0ef          	jal	ra,664 <spi_flash_read_1st_id>
 8a0:	fc0518e3          	bnez	a0,870 <get_exe+0x54>
 8a4:	00300513          	li	a0,3
 8a8:	badff0ef          	jal	ra,454 <system_error>
 8ac:	080009b7          	lui	s3,0x8000
 8b0:	00498593          	addi	a1,s3,4 # 8000004 <__crt0_copy_data_src_begin+0x7ffeefc>
 8b4:	00040513          	mv	a0,s0
 8b8:	eedff0ef          	jal	ra,7a4 <get_exe_word>
 8bc:	00050a93          	mv	s5,a0
 8c0:	00898593          	addi	a1,s3,8
 8c4:	00040513          	mv	a0,s0
 8c8:	eddff0ef          	jal	ra,7a4 <get_exe_word>
 8cc:	ff002c03          	lw	s8,-16(zero) # fffffff0 <__ctr0_io_space_begin+0x1f0>
 8d0:	00050b13          	mv	s6,a0
 8d4:	ffcafb93          	andi	s7,s5,-4
 8d8:	00000913          	li	s2,0
 8dc:	00000493          	li	s1,0
 8e0:	00c98993          	addi	s3,s3,12
 8e4:	013905b3          	add	a1,s2,s3
 8e8:	052b9c63          	bne	s7,s2,940 <get_exe+0x124>
 8ec:	016484b3          	add	s1,s1,s6
 8f0:	00200513          	li	a0,2
 8f4:	fa049ae3          	bnez	s1,8a8 <get_exe+0x8c>
 8f8:	00001537          	lui	a0,0x1
 8fc:	fdc50513          	addi	a0,a0,-36 # fdc <__etext+0xbc>
 900:	400000ef          	jal	ra,d00 <neorv32_uart0_print>
 904:	02c12083          	lw	ra,44(sp)
 908:	02812403          	lw	s0,40(sp)
 90c:	800007b7          	lui	a5,0x80000
 910:	0157a023          	sw	s5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 914:	000a2023          	sw	zero,0(s4)
 918:	02412483          	lw	s1,36(sp)
 91c:	02012903          	lw	s2,32(sp)
 920:	01c12983          	lw	s3,28(sp)
 924:	01812a03          	lw	s4,24(sp)
 928:	01412a83          	lw	s5,20(sp)
 92c:	01012b03          	lw	s6,16(sp)
 930:	00c12b83          	lw	s7,12(sp)
 934:	00812c03          	lw	s8,8(sp)
 938:	03010113          	addi	sp,sp,48
 93c:	00008067          	ret
 940:	00040513          	mv	a0,s0
 944:	e61ff0ef          	jal	ra,7a4 <get_exe_word>
 948:	012c07b3          	add	a5,s8,s2
 94c:	00a484b3          	add	s1,s1,a0
 950:	00a7a023          	sw	a0,0(a5)
 954:	00490913          	addi	s2,s2,4
 958:	f8dff06f          	j	8e4 <get_exe+0xc8>

0000095c <spi_flash_write_byte>:
 95c:	ff010113          	addi	sp,sp,-16
 960:	00112623          	sw	ra,12(sp)
 964:	00812423          	sw	s0,8(sp)
 968:	00912223          	sw	s1,4(sp)
 96c:	00058413          	mv	s0,a1
 970:	00050493          	mv	s1,a0
 974:	d7dff0ef          	jal	ra,6f0 <spi_flash_write_enable>
 978:	00000513          	li	a0,0
 97c:	41c000ef          	jal	ra,d98 <neorv32_spi_cs_en>
 980:	00200513          	li	a0,2
 984:	458000ef          	jal	ra,ddc <neorv32_spi_trans>
 988:	00048513          	mv	a0,s1
 98c:	d8dff0ef          	jal	ra,718 <spi_flash_write_addr>
 990:	00040513          	mv	a0,s0
 994:	448000ef          	jal	ra,ddc <neorv32_spi_trans>
 998:	00000513          	li	a0,0
 99c:	41c000ef          	jal	ra,db8 <neorv32_spi_cs_dis>
 9a0:	00812403          	lw	s0,8(sp)
 9a4:	00c12083          	lw	ra,12(sp)
 9a8:	00412483          	lw	s1,4(sp)
 9ac:	01010113          	addi	sp,sp,16
 9b0:	cf9ff06f          	j	6a8 <spi_flash_write_wait>

000009b4 <spi_flash_write_word>:
 9b4:	fe010113          	addi	sp,sp,-32
 9b8:	00812c23          	sw	s0,24(sp)
 9bc:	00912a23          	sw	s1,20(sp)
 9c0:	01212823          	sw	s2,16(sp)
 9c4:	00112e23          	sw	ra,28(sp)
 9c8:	00050493          	mv	s1,a0
 9cc:	00b12623          	sw	a1,12(sp)
 9d0:	00000413          	li	s0,0
 9d4:	00400913          	li	s2,4
 9d8:	00c10793          	addi	a5,sp,12
 9dc:	008787b3          	add	a5,a5,s0
 9e0:	0007c583          	lbu	a1,0(a5)
 9e4:	00848533          	add	a0,s1,s0
 9e8:	00140413          	addi	s0,s0,1
 9ec:	f71ff0ef          	jal	ra,95c <spi_flash_write_byte>
 9f0:	ff2414e3          	bne	s0,s2,9d8 <spi_flash_write_word+0x24>
 9f4:	01c12083          	lw	ra,28(sp)
 9f8:	01812403          	lw	s0,24(sp)
 9fc:	01412483          	lw	s1,20(sp)
 a00:	01012903          	lw	s2,16(sp)
 a04:	02010113          	addi	sp,sp,32
 a08:	00008067          	ret

00000a0c <spi_flash_erase_sector>:
 a0c:	ff010113          	addi	sp,sp,-16
 a10:	00112623          	sw	ra,12(sp)
 a14:	00812423          	sw	s0,8(sp)
 a18:	00050413          	mv	s0,a0
 a1c:	cd5ff0ef          	jal	ra,6f0 <spi_flash_write_enable>
 a20:	00000513          	li	a0,0
 a24:	374000ef          	jal	ra,d98 <neorv32_spi_cs_en>
 a28:	0d800513          	li	a0,216
 a2c:	3b0000ef          	jal	ra,ddc <neorv32_spi_trans>
 a30:	00040513          	mv	a0,s0
 a34:	ce5ff0ef          	jal	ra,718 <spi_flash_write_addr>
 a38:	00000513          	li	a0,0
 a3c:	37c000ef          	jal	ra,db8 <neorv32_spi_cs_dis>
 a40:	00812403          	lw	s0,8(sp)
 a44:	00c12083          	lw	ra,12(sp)
 a48:	01010113          	addi	sp,sp,16
 a4c:	c5dff06f          	j	6a8 <spi_flash_write_wait>

00000a50 <save_exe>:
 a50:	fe010113          	addi	sp,sp,-32
 a54:	800007b7          	lui	a5,0x80000
 a58:	00812c23          	sw	s0,24(sp)
 a5c:	0007a403          	lw	s0,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 a60:	00112e23          	sw	ra,28(sp)
 a64:	00912a23          	sw	s1,20(sp)
 a68:	01212823          	sw	s2,16(sp)
 a6c:	01312623          	sw	s3,12(sp)
 a70:	01412423          	sw	s4,8(sp)
 a74:	01512223          	sw	s5,4(sp)
 a78:	02041863          	bnez	s0,aa8 <save_exe+0x58>
 a7c:	00001537          	lui	a0,0x1
 a80:	fe050513          	addi	a0,a0,-32 # fe0 <__etext+0xc0>
 a84:	01812403          	lw	s0,24(sp)
 a88:	01c12083          	lw	ra,28(sp)
 a8c:	01412483          	lw	s1,20(sp)
 a90:	01012903          	lw	s2,16(sp)
 a94:	00c12983          	lw	s3,12(sp)
 a98:	00812a03          	lw	s4,8(sp)
 a9c:	00412a83          	lw	s5,4(sp)
 aa0:	02010113          	addi	sp,sp,32
 aa4:	25c0006f          	j	d00 <neorv32_uart0_print>
 aa8:	00001537          	lui	a0,0x1
 aac:	ffc50513          	addi	a0,a0,-4 # ffc <__etext+0xdc>
 ab0:	250000ef          	jal	ra,d00 <neorv32_uart0_print>
 ab4:	00040513          	mv	a0,s0
 ab8:	9e9ff0ef          	jal	ra,4a0 <print_hex_word>
 abc:	00001537          	lui	a0,0x1
 ac0:	00450513          	addi	a0,a0,4 # 1004 <__etext+0xe4>
 ac4:	23c000ef          	jal	ra,d00 <neorv32_uart0_print>
 ac8:	08000537          	lui	a0,0x8000
 acc:	9d5ff0ef          	jal	ra,4a0 <print_hex_word>
 ad0:	00001537          	lui	a0,0x1
 ad4:	01c50513          	addi	a0,a0,28 # 101c <__etext+0xfc>
 ad8:	228000ef          	jal	ra,d00 <neorv32_uart0_print>
 adc:	208000ef          	jal	ra,ce4 <neorv32_uart0_getc>
 ae0:	00050493          	mv	s1,a0
 ae4:	1cc000ef          	jal	ra,cb0 <neorv32_uart0_putc>
 ae8:	07900793          	li	a5,121
 aec:	0af49e63          	bne	s1,a5,ba8 <save_exe+0x158>
 af0:	b75ff0ef          	jal	ra,664 <spi_flash_read_1st_id>
 af4:	00051663          	bnez	a0,b00 <save_exe+0xb0>
 af8:	00300513          	li	a0,3
 afc:	959ff0ef          	jal	ra,454 <system_error>
 b00:	00001537          	lui	a0,0x1
 b04:	02850513          	addi	a0,a0,40 # 1028 <__etext+0x108>
 b08:	01045493          	srli	s1,s0,0x10
 b0c:	1f4000ef          	jal	ra,d00 <neorv32_uart0_print>
 b10:	00148493          	addi	s1,s1,1
 b14:	08000937          	lui	s2,0x8000
 b18:	fff00993          	li	s3,-1
 b1c:	00010a37          	lui	s4,0x10
 b20:	fff48493          	addi	s1,s1,-1
 b24:	07349063          	bne	s1,s3,b84 <save_exe+0x134>
 b28:	4788d5b7          	lui	a1,0x4788d
 b2c:	afe58593          	addi	a1,a1,-1282 # 4788cafe <__crt0_copy_data_src_begin+0x4788b9f6>
 b30:	08000537          	lui	a0,0x8000
 b34:	e81ff0ef          	jal	ra,9b4 <spi_flash_write_word>
 b38:	08000537          	lui	a0,0x8000
 b3c:	00040593          	mv	a1,s0
 b40:	00450513          	addi	a0,a0,4 # 8000004 <__crt0_copy_data_src_begin+0x7ffeefc>
 b44:	e71ff0ef          	jal	ra,9b4 <spi_flash_write_word>
 b48:	ff002a03          	lw	s4,-16(zero) # fffffff0 <__ctr0_io_space_begin+0x1f0>
 b4c:	080009b7          	lui	s3,0x8000
 b50:	ffc47413          	andi	s0,s0,-4
 b54:	00000493          	li	s1,0
 b58:	00000913          	li	s2,0
 b5c:	00c98a93          	addi	s5,s3,12 # 800000c <__crt0_copy_data_src_begin+0x7ffef04>
 b60:	01548533          	add	a0,s1,s5
 b64:	009a07b3          	add	a5,s4,s1
 b68:	02849663          	bne	s1,s0,b94 <save_exe+0x144>
 b6c:	00898513          	addi	a0,s3,8
 b70:	412005b3          	neg	a1,s2
 b74:	e41ff0ef          	jal	ra,9b4 <spi_flash_write_word>
 b78:	00001537          	lui	a0,0x1
 b7c:	fdc50513          	addi	a0,a0,-36 # fdc <__etext+0xbc>
 b80:	f05ff06f          	j	a84 <save_exe+0x34>
 b84:	00090513          	mv	a0,s2
 b88:	e85ff0ef          	jal	ra,a0c <spi_flash_erase_sector>
 b8c:	01490933          	add	s2,s2,s4
 b90:	f91ff06f          	j	b20 <save_exe+0xd0>
 b94:	0007a583          	lw	a1,0(a5)
 b98:	00448493          	addi	s1,s1,4
 b9c:	00b90933          	add	s2,s2,a1
 ba0:	e15ff0ef          	jal	ra,9b4 <spi_flash_write_word>
 ba4:	fbdff06f          	j	b60 <save_exe+0x110>
 ba8:	01c12083          	lw	ra,28(sp)
 bac:	01812403          	lw	s0,24(sp)
 bb0:	01412483          	lw	s1,20(sp)
 bb4:	01012903          	lw	s2,16(sp)
 bb8:	00c12983          	lw	s3,12(sp)
 bbc:	00812a03          	lw	s4,8(sp)
 bc0:	00412a83          	lw	s5,4(sp)
 bc4:	02010113          	addi	sp,sp,32
 bc8:	00008067          	ret

00000bcc <neorv32_mtime_available>:
 bcc:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 bd0:	01155513          	srli	a0,a0,0x11
 bd4:	00157513          	andi	a0,a0,1
 bd8:	00008067          	ret

00000bdc <neorv32_mtime_set_timecmp>:
 bdc:	f9000793          	li	a5,-112
 be0:	fff00713          	li	a4,-1
 be4:	00e7a423          	sw	a4,8(a5)
 be8:	00b7a623          	sw	a1,12(a5)
 bec:	00a7a423          	sw	a0,8(a5)
 bf0:	00008067          	ret

00000bf4 <neorv32_uart0_available>:
 bf4:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 bf8:	01255513          	srli	a0,a0,0x12
 bfc:	00157513          	andi	a0,a0,1
 c00:	00008067          	ret

00000c04 <neorv32_uart0_setup>:
 c04:	ff010113          	addi	sp,sp,-16
 c08:	00812423          	sw	s0,8(sp)
 c0c:	00912223          	sw	s1,4(sp)
 c10:	00112623          	sw	ra,12(sp)
 c14:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 c18:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 c1c:	00058413          	mv	s0,a1
 c20:	00151593          	slli	a1,a0,0x1
 c24:	00078513          	mv	a0,a5
 c28:	00060493          	mv	s1,a2
 c2c:	248000ef          	jal	ra,e74 <__udivsi3>
 c30:	01051513          	slli	a0,a0,0x10
 c34:	000017b7          	lui	a5,0x1
 c38:	01055513          	srli	a0,a0,0x10
 c3c:	00000713          	li	a4,0
 c40:	ffe78793          	addi	a5,a5,-2 # ffe <__etext+0xde>
 c44:	04a7e463          	bltu	a5,a0,c8c <neorv32_uart0_setup+0x88>
 c48:	0034f793          	andi	a5,s1,3
 c4c:	00347413          	andi	s0,s0,3
 c50:	fff50513          	addi	a0,a0,-1
 c54:	01479793          	slli	a5,a5,0x14
 c58:	01641413          	slli	s0,s0,0x16
 c5c:	00f567b3          	or	a5,a0,a5
 c60:	0087e7b3          	or	a5,a5,s0
 c64:	01871713          	slli	a4,a4,0x18
 c68:	00c12083          	lw	ra,12(sp)
 c6c:	00812403          	lw	s0,8(sp)
 c70:	00e7e7b3          	or	a5,a5,a4
 c74:	10000737          	lui	a4,0x10000
 c78:	00e7e7b3          	or	a5,a5,a4
 c7c:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 c80:	00412483          	lw	s1,4(sp)
 c84:	01010113          	addi	sp,sp,16
 c88:	00008067          	ret
 c8c:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffeef6>
 c90:	0fd6f693          	andi	a3,a3,253
 c94:	00069a63          	bnez	a3,ca8 <neorv32_uart0_setup+0xa4>
 c98:	00355513          	srli	a0,a0,0x3
 c9c:	00170713          	addi	a4,a4,1
 ca0:	0ff77713          	andi	a4,a4,255
 ca4:	fa1ff06f          	j	c44 <neorv32_uart0_setup+0x40>
 ca8:	00155513          	srli	a0,a0,0x1
 cac:	ff1ff06f          	j	c9c <neorv32_uart0_setup+0x98>

00000cb0 <neorv32_uart0_putc>:
 cb0:	00040737          	lui	a4,0x40
 cb4:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 cb8:	00e7f7b3          	and	a5,a5,a4
 cbc:	fe079ce3          	bnez	a5,cb4 <neorv32_uart0_putc+0x4>
 cc0:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 cc4:	00008067          	ret

00000cc8 <neorv32_uart0_tx_busy>:
 cc8:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 ccc:	00100513          	li	a0,1
 cd0:	0007c863          	bltz	a5,ce0 <neorv32_uart0_tx_busy+0x18>
 cd4:	0107d513          	srli	a0,a5,0x10
 cd8:	00154513          	xori	a0,a0,1
 cdc:	00157513          	andi	a0,a0,1
 ce0:	00008067          	ret

00000ce4 <neorv32_uart0_getc>:
 ce4:	fa402503          	lw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 ce8:	fe055ee3          	bgez	a0,ce4 <neorv32_uart0_getc>
 cec:	0ff57513          	andi	a0,a0,255
 cf0:	00008067          	ret

00000cf4 <neorv32_uart0_char_received>:
 cf4:	fa402503          	lw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 cf8:	01f55513          	srli	a0,a0,0x1f
 cfc:	00008067          	ret

00000d00 <neorv32_uart0_print>:
 d00:	ff010113          	addi	sp,sp,-16
 d04:	00812423          	sw	s0,8(sp)
 d08:	01212023          	sw	s2,0(sp)
 d0c:	00112623          	sw	ra,12(sp)
 d10:	00912223          	sw	s1,4(sp)
 d14:	00050413          	mv	s0,a0
 d18:	00a00913          	li	s2,10
 d1c:	00044483          	lbu	s1,0(s0)
 d20:	00140413          	addi	s0,s0,1
 d24:	00049e63          	bnez	s1,d40 <neorv32_uart0_print+0x40>
 d28:	00c12083          	lw	ra,12(sp)
 d2c:	00812403          	lw	s0,8(sp)
 d30:	00412483          	lw	s1,4(sp)
 d34:	00012903          	lw	s2,0(sp)
 d38:	01010113          	addi	sp,sp,16
 d3c:	00008067          	ret
 d40:	01249663          	bne	s1,s2,d4c <neorv32_uart0_print+0x4c>
 d44:	00d00513          	li	a0,13
 d48:	f69ff0ef          	jal	ra,cb0 <neorv32_uart0_putc>
 d4c:	00048513          	mv	a0,s1
 d50:	f61ff0ef          	jal	ra,cb0 <neorv32_uart0_putc>
 d54:	fc9ff06f          	j	d1c <neorv32_uart0_print+0x1c>

00000d58 <neorv32_spi_setup>:
 d58:	00757513          	andi	a0,a0,7
 d5c:	0036f793          	andi	a5,a3,3
 d60:	00167613          	andi	a2,a2,1
 d64:	00a51513          	slli	a0,a0,0xa
 d68:	00d79793          	slli	a5,a5,0xd
 d6c:	0015f593          	andi	a1,a1,1
 d70:	00f567b3          	or	a5,a0,a5
 d74:	00f61613          	slli	a2,a2,0xf
 d78:	00c7e7b3          	or	a5,a5,a2
 d7c:	00959593          	slli	a1,a1,0x9
 d80:	fa800713          	li	a4,-88
 d84:	00b7e7b3          	or	a5,a5,a1
 d88:	00072023          	sw	zero,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3eef8>
 d8c:	1007e793          	ori	a5,a5,256
 d90:	00f72023          	sw	a5,0(a4)
 d94:	00008067          	ret

00000d98 <neorv32_spi_cs_en>:
 d98:	fa800713          	li	a4,-88
 d9c:	00072683          	lw	a3,0(a4)
 da0:	00757793          	andi	a5,a0,7
 da4:	00100513          	li	a0,1
 da8:	00f51533          	sll	a0,a0,a5
 dac:	00d56533          	or	a0,a0,a3
 db0:	00a72023          	sw	a0,0(a4)
 db4:	00008067          	ret

00000db8 <neorv32_spi_cs_dis>:
 db8:	fa800713          	li	a4,-88
 dbc:	00072683          	lw	a3,0(a4)
 dc0:	00757513          	andi	a0,a0,7
 dc4:	00100793          	li	a5,1
 dc8:	00a797b3          	sll	a5,a5,a0
 dcc:	fff7c793          	not	a5,a5
 dd0:	00d7f7b3          	and	a5,a5,a3
 dd4:	00f72023          	sw	a5,0(a4)
 dd8:	00008067          	ret

00000ddc <neorv32_spi_trans>:
 ddc:	faa02623          	sw	a0,-84(zero) # ffffffac <__ctr0_io_space_begin+0x1ac>
 de0:	fa802783          	lw	a5,-88(zero) # ffffffa8 <__ctr0_io_space_begin+0x1a8>
 de4:	fe07cee3          	bltz	a5,de0 <neorv32_spi_trans+0x4>
 de8:	fac02503          	lw	a0,-84(zero) # ffffffac <__ctr0_io_space_begin+0x1ac>
 dec:	00008067          	ret

00000df0 <neorv32_gpio_available>:
 df0:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 df4:	01055513          	srli	a0,a0,0x10
 df8:	00157513          	andi	a0,a0,1
 dfc:	00008067          	ret

00000e00 <neorv32_gpio_pin_toggle>:
 e00:	00100793          	li	a5,1
 e04:	01f00713          	li	a4,31
 e08:	00a797b3          	sll	a5,a5,a0
 e0c:	00a74a63          	blt	a4,a0,e20 <neorv32_gpio_pin_toggle+0x20>
 e10:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 e14:	00f747b3          	xor	a5,a4,a5
 e18:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 e1c:	00008067          	ret
 e20:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 e24:	00f747b3          	xor	a5,a4,a5
 e28:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 e2c:	00008067          	ret

00000e30 <neorv32_gpio_port_set>:
 e30:	fc000793          	li	a5,-64
 e34:	00a7a423          	sw	a0,8(a5)
 e38:	00b7a623          	sw	a1,12(a5)
 e3c:	00008067          	ret

00000e40 <neorv32_cpu_get_systime>:
 e40:	ff010113          	addi	sp,sp,-16
 e44:	c81026f3          	rdtimeh	a3
 e48:	c0102773          	rdtime	a4
 e4c:	c81027f3          	rdtimeh	a5
 e50:	fed79ae3          	bne	a5,a3,e44 <neorv32_cpu_get_systime+0x4>
 e54:	00e12023          	sw	a4,0(sp)
 e58:	00f12223          	sw	a5,4(sp)
 e5c:	00012503          	lw	a0,0(sp)
 e60:	00412583          	lw	a1,4(sp)
 e64:	01010113          	addi	sp,sp,16
 e68:	00008067          	ret

00000e6c <__divsi3>:
 e6c:	06054063          	bltz	a0,ecc <__umodsi3+0x10>
 e70:	0605c663          	bltz	a1,edc <__umodsi3+0x20>

00000e74 <__udivsi3>:
 e74:	00058613          	mv	a2,a1
 e78:	00050593          	mv	a1,a0
 e7c:	fff00513          	li	a0,-1
 e80:	02060c63          	beqz	a2,eb8 <__udivsi3+0x44>
 e84:	00100693          	li	a3,1
 e88:	00b67a63          	bgeu	a2,a1,e9c <__udivsi3+0x28>
 e8c:	00c05863          	blez	a2,e9c <__udivsi3+0x28>
 e90:	00161613          	slli	a2,a2,0x1
 e94:	00169693          	slli	a3,a3,0x1
 e98:	feb66ae3          	bltu	a2,a1,e8c <__udivsi3+0x18>
 e9c:	00000513          	li	a0,0
 ea0:	00c5e663          	bltu	a1,a2,eac <__udivsi3+0x38>
 ea4:	40c585b3          	sub	a1,a1,a2
 ea8:	00d56533          	or	a0,a0,a3
 eac:	0016d693          	srli	a3,a3,0x1
 eb0:	00165613          	srli	a2,a2,0x1
 eb4:	fe0696e3          	bnez	a3,ea0 <__udivsi3+0x2c>
 eb8:	00008067          	ret

00000ebc <__umodsi3>:
 ebc:	00008293          	mv	t0,ra
 ec0:	fb5ff0ef          	jal	ra,e74 <__udivsi3>
 ec4:	00058513          	mv	a0,a1
 ec8:	00028067          	jr	t0
 ecc:	40a00533          	neg	a0,a0
 ed0:	00b04863          	bgtz	a1,ee0 <__umodsi3+0x24>
 ed4:	40b005b3          	neg	a1,a1
 ed8:	f9dff06f          	j	e74 <__udivsi3>
 edc:	40b005b3          	neg	a1,a1
 ee0:	00008293          	mv	t0,ra
 ee4:	f91ff0ef          	jal	ra,e74 <__udivsi3>
 ee8:	40a00533          	neg	a0,a0
 eec:	00028067          	jr	t0

00000ef0 <__modsi3>:
 ef0:	00008293          	mv	t0,ra
 ef4:	0005ca63          	bltz	a1,f08 <__modsi3+0x18>
 ef8:	00054c63          	bltz	a0,f10 <__modsi3+0x20>
 efc:	f79ff0ef          	jal	ra,e74 <__udivsi3>
 f00:	00058513          	mv	a0,a1
 f04:	00028067          	jr	t0
 f08:	40b005b3          	neg	a1,a1
 f0c:	fe0558e3          	bgez	a0,efc <__modsi3+0xc>
 f10:	40a00533          	neg	a0,a0
 f14:	f61ff0ef          	jal	ra,e74 <__udivsi3>
 f18:	40b00533          	neg	a0,a1
 f1c:	00028067          	jr	t0
