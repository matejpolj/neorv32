
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
      c0:	1c818593          	addi	a1,gp,456 # 800009c8 <__malloc_max_total_mem>
      c4:	2f818613          	addi	a2,gp,760 # 80000af8 <__BSS_END__>

000000c8 <__crt0_clear_bss_loop>:
      c8:	00c5d863          	bge	a1,a2,d8 <__crt0_clear_bss_loop_end>
      cc:	00058023          	sb	zero,0(a1)
      d0:	00158593          	addi	a1,a1,1
      d4:	ff5ff06f          	j	c8 <__crt0_clear_bss_loop>

000000d8 <__crt0_clear_bss_loop_end>:
      d8:	00014597          	auipc	a1,0x14
      dc:	d8458593          	addi	a1,a1,-636 # 13e5c <__crt0_copy_data_src_begin>
      e0:	80000617          	auipc	a2,0x80000
      e4:	f2060613          	addi	a2,a2,-224 # 80000000 <__ctr0_io_space_begin+0x80000200>
      e8:	1c818693          	addi	a3,gp,456 # 800009c8 <__malloc_max_total_mem>

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
     178:	fe010113          	addi	sp,sp,-32
     17c:	00112e23          	sw	ra,28(sp)
     180:	00812c23          	sw	s0,24(sp)
     184:	00912a23          	sw	s1,20(sp)
     188:	01212823          	sw	s2,16(sp)
     18c:	16c000ef          	jal	ra,2f8 <term_Start>
     190:	291000ef          	jal	ra,c20 <neorv32_gpio_available>
     194:	12050e63          	beqz	a0,2d0 <main+0x158>
     198:	241000ef          	jal	ra,bd8 <neorv32_rte_setup>
     19c:	000067b7          	lui	a5,0x6
     1a0:	00013537          	lui	a0,0x13
     1a4:	31b78793          	addi	a5,a5,795 # 631b <_ldtoa_r+0xbc7>
     1a8:	00c10593          	addi	a1,sp,12
     1ac:	e5050513          	addi	a0,a0,-432 # 12e50 <__etext+0x2c>
     1b0:	00f11623          	sh	a5,12(sp)
     1b4:	00010723          	sb	zero,14(sp)
     1b8:	154000ef          	jal	ra,30c <term_printf>
     1bc:	0c800513          	li	a0,200
     1c0:	4c0000ef          	jal	ra,680 <neorv32_cpu_delay_ms>
     1c4:	00013437          	lui	s0,0x13
     1c8:	f6840513          	addi	a0,s0,-152 # 12f68 <__etext+0x144>
     1cc:	140000ef          	jal	ra,30c <term_printf>
     1d0:	000134b7          	lui	s1,0x13
     1d4:	e5448513          	addi	a0,s1,-428 # 12e54 <__etext+0x30>
     1d8:	134000ef          	jal	ra,30c <term_printf>
     1dc:	00013537          	lui	a0,0x13
     1e0:	e7850513          	addi	a0,a0,-392 # 12e78 <__etext+0x54>
     1e4:	128000ef          	jal	ra,30c <term_printf>
     1e8:	e5448513          	addi	a0,s1,-428
     1ec:	120000ef          	jal	ra,30c <term_printf>
     1f0:	f6840513          	addi	a0,s0,-152
     1f4:	118000ef          	jal	ra,30c <term_printf>
     1f8:	00000513          	li	a0,0
     1fc:	00000593          	li	a1,0
     200:	231000ef          	jal	ra,c30 <neorv32_gpio_port_set>
     204:	00013537          	lui	a0,0x13
     208:	020005b7          	lui	a1,0x2000
     20c:	e9c50513          	addi	a0,a0,-356 # 12e9c <__etext+0x78>
     210:	0fc000ef          	jal	ra,30c <term_printf>
     214:	00013537          	lui	a0,0x13
     218:	ec450513          	addi	a0,a0,-316 # 12ec4 <__etext+0xa0>
     21c:	0f0000ef          	jal	ra,30c <term_printf>
     220:	90000537          	lui	a0,0x90000
     224:	170000ef          	jal	ra,394 <memTestDataBus>
     228:	04050463          	beqz	a0,270 <main+0xf8>
     22c:	00013537          	lui	a0,0x13
     230:	ed850513          	addi	a0,a0,-296 # 12ed8 <__etext+0xb4>
     234:	0d8000ef          	jal	ra,30c <term_printf>
     238:	00013537          	lui	a0,0x13
     23c:	f3c50513          	addi	a0,a0,-196 # 12f3c <__etext+0x118>
     240:	0cc000ef          	jal	ra,30c <term_printf>
     244:	00100493          	li	s1,1
     248:	00800913          	li	s2,8
     24c:	00000413          	li	s0,0
     250:	00849533          	sll	a0,s1,s0
     254:	41f55593          	srai	a1,a0,0x1f
     258:	1d9000ef          	jal	ra,c30 <neorv32_gpio_port_set>
     25c:	0c800513          	li	a0,200
     260:	00140413          	addi	s0,s0,1
     264:	41c000ef          	jal	ra,680 <neorv32_cpu_delay_ms>
     268:	ff2414e3          	bne	s0,s2,250 <main+0xd8>
     26c:	fe1ff06f          	j	24c <main+0xd4>
     270:	00013437          	lui	s0,0x13
     274:	ee040513          	addi	a0,s0,-288 # 12ee0 <__etext+0xbc>
     278:	094000ef          	jal	ra,30c <term_printf>
     27c:	00013537          	lui	a0,0x13
     280:	ee850513          	addi	a0,a0,-280 # 12ee8 <__etext+0xc4>
     284:	088000ef          	jal	ra,30c <term_printf>
     288:	020005b7          	lui	a1,0x2000
     28c:	90000537          	lui	a0,0x90000
     290:	138000ef          	jal	ra,3c8 <memTestAddressBus>
     294:	f8051ce3          	bnez	a0,22c <main+0xb4>
     298:	ee040513          	addi	a0,s0,-288
     29c:	070000ef          	jal	ra,30c <term_printf>
     2a0:	00013537          	lui	a0,0x13
     2a4:	f0050513          	addi	a0,a0,-256 # 12f00 <__etext+0xdc>
     2a8:	064000ef          	jal	ra,30c <term_printf>
     2ac:	020005b7          	lui	a1,0x2000
     2b0:	90000537          	lui	a0,0x90000
     2b4:	1f4000ef          	jal	ra,4a8 <memTestDevice>
     2b8:	f6051ae3          	bnez	a0,22c <main+0xb4>
     2bc:	ee040513          	addi	a0,s0,-288
     2c0:	04c000ef          	jal	ra,30c <term_printf>
     2c4:	00013537          	lui	a0,0x13
     2c8:	f1450513          	addi	a0,a0,-236 # 12f14 <__etext+0xf0>
     2cc:	f69ff06f          	j	234 <main+0xbc>
     2d0:	00013537          	lui	a0,0x13
     2d4:	e2850513          	addi	a0,a0,-472 # 12e28 <__etext+0x4>
     2d8:	034000ef          	jal	ra,30c <term_printf>
     2dc:	01c12083          	lw	ra,28(sp)
     2e0:	01812403          	lw	s0,24(sp)
     2e4:	01412483          	lw	s1,20(sp)
     2e8:	01012903          	lw	s2,16(sp)
     2ec:	00100513          	li	a0,1
     2f0:	02010113          	addi	sp,sp,32
     2f4:	00008067          	ret

000002f8 <term_Start>:
     2f8:	00005537          	lui	a0,0x5
     2fc:	00000613          	li	a2,0
     300:	00000593          	li	a1,0
     304:	b0050513          	addi	a0,a0,-1280 # 4b00 <eiremain+0xd4>
     308:	2300006f          	j	538 <neorv32_uart0_setup>

0000030c <term_printf>:
     30c:	fc010113          	addi	sp,sp,-64
     310:	01212823          	sw	s2,16(sp)
     314:	02b12223          	sw	a1,36(sp)
     318:	02c12423          	sw	a2,40(sp)
     31c:	02d12623          	sw	a3,44(sp)
     320:	00050613          	mv	a2,a0
     324:	02410693          	addi	a3,sp,36
     328:	1dc18513          	addi	a0,gp,476 # 800009dc <PrintfBuffer>
     32c:	08000593          	li	a1,128
     330:	00812c23          	sw	s0,24(sp)
     334:	00912a23          	sw	s1,20(sp)
     338:	00112e23          	sw	ra,28(sp)
     33c:	02e12823          	sw	a4,48(sp)
     340:	02f12a23          	sw	a5,52(sp)
     344:	03012c23          	sw	a6,56(sp)
     348:	03112e23          	sw	a7,60(sp)
     34c:	00d12623          	sw	a3,12(sp)
     350:	381000ef          	jal	ra,ed0 <vsnprintf>
     354:	00050413          	mv	s0,a0
     358:	00000493          	li	s1,0
     35c:	1dc18913          	addi	s2,gp,476 # 800009dc <PrintfBuffer>
     360:	0284c063          	blt	s1,s0,380 <term_printf+0x74>
     364:	01c12083          	lw	ra,28(sp)
     368:	00040513          	mv	a0,s0
     36c:	01812403          	lw	s0,24(sp)
     370:	01412483          	lw	s1,20(sp)
     374:	01012903          	lw	s2,16(sp)
     378:	04010113          	addi	sp,sp,64
     37c:	00008067          	ret
     380:	009907b3          	add	a5,s2,s1
     384:	0007c503          	lbu	a0,0(a5)
     388:	00148493          	addi	s1,s1,1
     38c:	258000ef          	jal	ra,5e4 <neorv32_uart0_putc>
     390:	fd1ff06f          	j	360 <term_printf+0x54>

00000394 <memTestDataBus>:
     394:	00050793          	mv	a5,a0
     398:	02000713          	li	a4,32
     39c:	00100513          	li	a0,1
     3a0:	00a7a023          	sw	a0,0(a5)
     3a4:	0007a683          	lw	a3,0(a5)
     3a8:	00a69863          	bne	a3,a0,3b8 <memTestDataBus+0x24>
     3ac:	00151693          	slli	a3,a0,0x1
     3b0:	fff70513          	addi	a0,a4,-1
     3b4:	00051463          	bnez	a0,3bc <memTestDataBus+0x28>
     3b8:	00008067          	ret
     3bc:	00050713          	mv	a4,a0
     3c0:	00068513          	mv	a0,a3
     3c4:	fddff06f          	j	3a0 <memTestDataBus+0xc>

000003c8 <memTestAddressBus>:
     3c8:	0025d593          	srli	a1,a1,0x2
     3cc:	aaaab6b7          	lui	a3,0xaaaab
     3d0:	00050713          	mv	a4,a0
     3d4:	fff58593          	addi	a1,a1,-1 # 1ffffff <__crt0_copy_data_src_begin+0x1fec1a3>
     3d8:	00100793          	li	a5,1
     3dc:	aaa68693          	addi	a3,a3,-1366 # aaaaaaaa <__ctr0_io_space_begin+0xaaaaacaa>
     3e0:	00b7f633          	and	a2,a5,a1
     3e4:	04061863          	bnez	a2,434 <memTestAddressBus+0x6c>
     3e8:	555557b7          	lui	a5,0x55555
     3ec:	55578793          	addi	a5,a5,1365 # 55555555 <__crt0_copy_data_src_begin+0x555416f9>
     3f0:	aaaab637          	lui	a2,0xaaaab
     3f4:	00f72023          	sw	a5,0(a4)
     3f8:	00100693          	li	a3,1
     3fc:	aaa60613          	addi	a2,a2,-1366 # aaaaaaaa <__ctr0_io_space_begin+0xaaaaacaa>
     400:	00b6f7b3          	and	a5,a3,a1
     404:	04079263          	bnez	a5,448 <memTestAddressBus+0x80>
     408:	aaaab637          	lui	a2,0xaaaab
     40c:	aaa60613          	addi	a2,a2,-1366 # aaaaaaaa <__ctr0_io_space_begin+0xaaaaacaa>
     410:	55555837          	lui	a6,0x55555
     414:	00c72023          	sw	a2,0(a4)
     418:	00100693          	li	a3,1
     41c:	55580813          	addi	a6,a6,1365 # 55555555 <__crt0_copy_data_src_begin+0x555416f9>
     420:	00060313          	mv	t1,a2
     424:	00b6f7b3          	and	a5,a3,a1
     428:	02079c63          	bnez	a5,460 <memTestAddressBus+0x98>
     42c:	00000513          	li	a0,0
     430:	00008067          	ret
     434:	00279613          	slli	a2,a5,0x2
     438:	00c70633          	add	a2,a4,a2
     43c:	00d62023          	sw	a3,0(a2)
     440:	00179793          	slli	a5,a5,0x1
     444:	f9dff06f          	j	3e0 <memTestAddressBus+0x18>
     448:	00269793          	slli	a5,a3,0x2
     44c:	00f70533          	add	a0,a4,a5
     450:	00052783          	lw	a5,0(a0)
     454:	fcc79ee3          	bne	a5,a2,430 <memTestAddressBus+0x68>
     458:	00169693          	slli	a3,a3,0x1
     45c:	fa5ff06f          	j	400 <memTestAddressBus+0x38>
     460:	00269793          	slli	a5,a3,0x2
     464:	00f70533          	add	a0,a4,a5
     468:	01052023          	sw	a6,0(a0)
     46c:	00072783          	lw	a5,0(a4)
     470:	fc6790e3          	bne	a5,t1,430 <memTestAddressBus+0x68>
     474:	00100793          	li	a5,1
     478:	00b7f8b3          	and	a7,a5,a1
     47c:	00089863          	bnez	a7,48c <memTestAddressBus+0xc4>
     480:	00c52023          	sw	a2,0(a0)
     484:	00169693          	slli	a3,a3,0x1
     488:	f9dff06f          	j	424 <memTestAddressBus+0x5c>
     48c:	00279893          	slli	a7,a5,0x2
     490:	011708b3          	add	a7,a4,a7
     494:	0008a883          	lw	a7,0(a7)
     498:	00688463          	beq	a7,t1,4a0 <memTestAddressBus+0xd8>
     49c:	f8d79ae3          	bne	a5,a3,430 <memTestAddressBus+0x68>
     4a0:	00179793          	slli	a5,a5,0x1
     4a4:	fd5ff06f          	j	478 <memTestAddressBus+0xb0>

000004a8 <memTestDevice>:
     4a8:	00050613          	mv	a2,a0
     4ac:	0025d593          	srli	a1,a1,0x2
     4b0:	00000793          	li	a5,0
     4b4:	00178713          	addi	a4,a5,1
     4b8:	02b79063          	bne	a5,a1,4d8 <memTestDevice+0x30>
     4bc:	00000713          	li	a4,0
     4c0:	02e59663          	bne	a1,a4,4ec <memTestDevice+0x44>
     4c4:	00000693          	li	a3,0
     4c8:	ffe00593          	li	a1,-2
     4cc:	04e69063          	bne	a3,a4,50c <memTestDevice+0x64>
     4d0:	00000513          	li	a0,0
     4d4:	00008067          	ret
     4d8:	00279793          	slli	a5,a5,0x2
     4dc:	00f607b3          	add	a5,a2,a5
     4e0:	00e7a023          	sw	a4,0(a5)
     4e4:	00070793          	mv	a5,a4
     4e8:	fcdff06f          	j	4b4 <memTestDevice+0xc>
     4ec:	00271793          	slli	a5,a4,0x2
     4f0:	00f60533          	add	a0,a2,a5
     4f4:	00052783          	lw	a5,0(a0)
     4f8:	00170713          	addi	a4,a4,1
     4fc:	fce79ce3          	bne	a5,a4,4d4 <memTestDevice+0x2c>
     500:	fff74793          	not	a5,a4
     504:	00f52023          	sw	a5,0(a0)
     508:	fb9ff06f          	j	4c0 <memTestDevice+0x18>
     50c:	00269793          	slli	a5,a3,0x2
     510:	00f60533          	add	a0,a2,a5
     514:	00052803          	lw	a6,0(a0)
     518:	40d587b3          	sub	a5,a1,a3
     51c:	faf81ce3          	bne	a6,a5,4d4 <memTestDevice+0x2c>
     520:	00168693          	addi	a3,a3,1
     524:	fa9ff06f          	j	4cc <memTestDevice+0x24>

00000528 <neorv32_uart0_available>:
     528:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     52c:	01255513          	srli	a0,a0,0x12
     530:	00157513          	andi	a0,a0,1
     534:	00008067          	ret

00000538 <neorv32_uart0_setup>:
     538:	ff010113          	addi	sp,sp,-16
     53c:	00812423          	sw	s0,8(sp)
     540:	00912223          	sw	s1,4(sp)
     544:	00112623          	sw	ra,12(sp)
     548:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     54c:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
     550:	00058413          	mv	s0,a1
     554:	00151593          	slli	a1,a0,0x1
     558:	00078513          	mv	a0,a5
     55c:	00060493          	mv	s1,a2
     560:	79c000ef          	jal	ra,cfc <__udivsi3>
     564:	01051513          	slli	a0,a0,0x10
     568:	000017b7          	lui	a5,0x1
     56c:	01055513          	srli	a0,a0,0x10
     570:	00000713          	li	a4,0
     574:	ffe78793          	addi	a5,a5,-2 # ffe <_vsnprintf_r+0x6e>
     578:	04a7e463          	bltu	a5,a0,5c0 <neorv32_uart0_setup+0x88>
     57c:	0034f793          	andi	a5,s1,3
     580:	00347413          	andi	s0,s0,3
     584:	fff50513          	addi	a0,a0,-1
     588:	01479793          	slli	a5,a5,0x14
     58c:	01641413          	slli	s0,s0,0x16
     590:	00f567b3          	or	a5,a0,a5
     594:	0087e7b3          	or	a5,a5,s0
     598:	01871713          	slli	a4,a4,0x18
     59c:	00c12083          	lw	ra,12(sp)
     5a0:	00812403          	lw	s0,8(sp)
     5a4:	00e7e7b3          	or	a5,a5,a4
     5a8:	10000737          	lui	a4,0x10000
     5ac:	00e7e7b3          	or	a5,a5,a4
     5b0:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     5b4:	00412483          	lw	s1,4(sp)
     5b8:	01010113          	addi	sp,sp,16
     5bc:	00008067          	ret
     5c0:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xffec1a2>
     5c4:	0fd6f693          	andi	a3,a3,253
     5c8:	00069a63          	bnez	a3,5dc <neorv32_uart0_setup+0xa4>
     5cc:	00355513          	srli	a0,a0,0x3
     5d0:	00170713          	addi	a4,a4,1
     5d4:	0ff77713          	andi	a4,a4,255
     5d8:	fa1ff06f          	j	578 <neorv32_uart0_setup+0x40>
     5dc:	00155513          	srli	a0,a0,0x1
     5e0:	ff1ff06f          	j	5d0 <neorv32_uart0_setup+0x98>

000005e4 <neorv32_uart0_putc>:
     5e4:	00040737          	lui	a4,0x40
     5e8:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     5ec:	00e7f7b3          	and	a5,a5,a4
     5f0:	fe079ce3          	bnez	a5,5e8 <neorv32_uart0_putc+0x4>
     5f4:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
     5f8:	00008067          	ret

000005fc <neorv32_uart0_print>:
     5fc:	ff010113          	addi	sp,sp,-16
     600:	00812423          	sw	s0,8(sp)
     604:	01212023          	sw	s2,0(sp)
     608:	00112623          	sw	ra,12(sp)
     60c:	00912223          	sw	s1,4(sp)
     610:	00050413          	mv	s0,a0
     614:	00a00913          	li	s2,10
     618:	00044483          	lbu	s1,0(s0)
     61c:	00140413          	addi	s0,s0,1
     620:	00049e63          	bnez	s1,63c <neorv32_uart0_print+0x40>
     624:	00c12083          	lw	ra,12(sp)
     628:	00812403          	lw	s0,8(sp)
     62c:	00412483          	lw	s1,4(sp)
     630:	00012903          	lw	s2,0(sp)
     634:	01010113          	addi	sp,sp,16
     638:	00008067          	ret
     63c:	01249663          	bne	s1,s2,648 <neorv32_uart0_print+0x4c>
     640:	00d00513          	li	a0,13
     644:	fa1ff0ef          	jal	ra,5e4 <neorv32_uart0_putc>
     648:	00048513          	mv	a0,s1
     64c:	f99ff0ef          	jal	ra,5e4 <neorv32_uart0_putc>
     650:	fc9ff06f          	j	618 <neorv32_uart0_print+0x1c>

00000654 <neorv32_cpu_get_systime>:
     654:	ff010113          	addi	sp,sp,-16
     658:	c81026f3          	rdtimeh	a3
     65c:	c0102773          	rdtime	a4
     660:	c81027f3          	rdtimeh	a5
     664:	fed79ae3          	bne	a5,a3,658 <neorv32_cpu_get_systime+0x4>
     668:	00e12023          	sw	a4,0(sp)
     66c:	00f12223          	sw	a5,4(sp)
     670:	00012503          	lw	a0,0(sp)
     674:	00412583          	lw	a1,4(sp)
     678:	01010113          	addi	sp,sp,16
     67c:	00008067          	ret

00000680 <neorv32_cpu_delay_ms>:
     680:	fd010113          	addi	sp,sp,-48
     684:	00a12623          	sw	a0,12(sp)
     688:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
     68c:	3e800593          	li	a1,1000
     690:	02112623          	sw	ra,44(sp)
     694:	02812423          	sw	s0,40(sp)
     698:	02912223          	sw	s1,36(sp)
     69c:	03212023          	sw	s2,32(sp)
     6a0:	01312e23          	sw	s3,28(sp)
     6a4:	658000ef          	jal	ra,cfc <__udivsi3>
     6a8:	00c12603          	lw	a2,12(sp)
     6ac:	00000693          	li	a3,0
     6b0:	00000593          	li	a1,0
     6b4:	5b0000ef          	jal	ra,c64 <__muldi3>
     6b8:	00050413          	mv	s0,a0
     6bc:	00058993          	mv	s3,a1
     6c0:	f95ff0ef          	jal	ra,654 <neorv32_cpu_get_systime>
     6c4:	00058913          	mv	s2,a1
     6c8:	00050493          	mv	s1,a0
     6cc:	f89ff0ef          	jal	ra,654 <neorv32_cpu_get_systime>
     6d0:	00b96663          	bltu	s2,a1,6dc <neorv32_cpu_delay_ms+0x5c>
     6d4:	05259263          	bne	a1,s2,718 <neorv32_cpu_delay_ms+0x98>
     6d8:	04a4f063          	bgeu	s1,a0,718 <neorv32_cpu_delay_ms+0x98>
     6dc:	008484b3          	add	s1,s1,s0
     6e0:	0084b433          	sltu	s0,s1,s0
     6e4:	01390933          	add	s2,s2,s3
     6e8:	01240433          	add	s0,s0,s2
     6ec:	f69ff0ef          	jal	ra,654 <neorv32_cpu_get_systime>
     6f0:	fe85eee3          	bltu	a1,s0,6ec <neorv32_cpu_delay_ms+0x6c>
     6f4:	00b41463          	bne	s0,a1,6fc <neorv32_cpu_delay_ms+0x7c>
     6f8:	fe956ae3          	bltu	a0,s1,6ec <neorv32_cpu_delay_ms+0x6c>
     6fc:	02c12083          	lw	ra,44(sp)
     700:	02812403          	lw	s0,40(sp)
     704:	02412483          	lw	s1,36(sp)
     708:	02012903          	lw	s2,32(sp)
     70c:	01c12983          	lw	s3,28(sp)
     710:	03010113          	addi	sp,sp,48
     714:	00008067          	ret
     718:	01c99913          	slli	s2,s3,0x1c
     71c:	00445413          	srli	s0,s0,0x4
     720:	00896433          	or	s0,s2,s0

00000724 <__neorv32_cpu_delay_ms_start>:
     724:	00040a63          	beqz	s0,738 <__neorv32_cpu_delay_ms_end>
     728:	00040863          	beqz	s0,738 <__neorv32_cpu_delay_ms_end>
     72c:	fff40413          	addi	s0,s0,-1
     730:	00000013          	nop
     734:	ff1ff06f          	j	724 <__neorv32_cpu_delay_ms_start>

00000738 <__neorv32_cpu_delay_ms_end>:
     738:	fc5ff06f          	j	6fc <neorv32_cpu_delay_ms+0x7c>
     73c:	0000                	unimp
     73e:	0000                	unimp

00000740 <__neorv32_rte_core>:
     740:	fc010113          	addi	sp,sp,-64
     744:	02112e23          	sw	ra,60(sp)
     748:	02512c23          	sw	t0,56(sp)
     74c:	02612a23          	sw	t1,52(sp)
     750:	02712823          	sw	t2,48(sp)
     754:	02a12623          	sw	a0,44(sp)
     758:	02b12423          	sw	a1,40(sp)
     75c:	02c12223          	sw	a2,36(sp)
     760:	02d12023          	sw	a3,32(sp)
     764:	00e12e23          	sw	a4,28(sp)
     768:	00f12c23          	sw	a5,24(sp)
     76c:	01012a23          	sw	a6,20(sp)
     770:	01112823          	sw	a7,16(sp)
     774:	01c12623          	sw	t3,12(sp)
     778:	01d12423          	sw	t4,8(sp)
     77c:	01e12223          	sw	t5,4(sp)
     780:	01f12023          	sw	t6,0(sp)
     784:	34102773          	csrr	a4,mepc
     788:	34071073          	csrw	mscratch,a4
     78c:	342027f3          	csrr	a5,mcause
     790:	0807ca63          	bltz	a5,824 <__neorv32_rte_core+0xe4>
     794:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x2c1a4>
     798:	00300593          	li	a1,3
     79c:	0036f693          	andi	a3,a3,3
     7a0:	00270613          	addi	a2,a4,2
     7a4:	00b69463          	bne	a3,a1,7ac <__neorv32_rte_core+0x6c>
     7a8:	00470613          	addi	a2,a4,4
     7ac:	34161073          	csrw	mepc,a2
     7b0:	00b00713          	li	a4,11
     7b4:	04f77c63          	bgeu	a4,a5,80c <__neorv32_rte_core+0xcc>
     7b8:	000017b7          	lui	a5,0x1
     7bc:	9b078793          	addi	a5,a5,-1616 # 9b0 <__neorv32_rte_debug_exc_handler>
     7c0:	000780e7          	jalr	a5
     7c4:	03c12083          	lw	ra,60(sp)
     7c8:	03812283          	lw	t0,56(sp)
     7cc:	03412303          	lw	t1,52(sp)
     7d0:	03012383          	lw	t2,48(sp)
     7d4:	02c12503          	lw	a0,44(sp)
     7d8:	02812583          	lw	a1,40(sp)
     7dc:	02412603          	lw	a2,36(sp)
     7e0:	02012683          	lw	a3,32(sp)
     7e4:	01c12703          	lw	a4,28(sp)
     7e8:	01812783          	lw	a5,24(sp)
     7ec:	01412803          	lw	a6,20(sp)
     7f0:	01012883          	lw	a7,16(sp)
     7f4:	00c12e03          	lw	t3,12(sp)
     7f8:	00812e83          	lw	t4,8(sp)
     7fc:	00412f03          	lw	t5,4(sp)
     800:	00012f83          	lw	t6,0(sp)
     804:	04010113          	addi	sp,sp,64
     808:	30200073          	mret
     80c:	00013737          	lui	a4,0x13
     810:	00279793          	slli	a5,a5,0x2
     814:	f6c70713          	addi	a4,a4,-148 # 12f6c <__etext+0x148>
     818:	00e787b3          	add	a5,a5,a4
     81c:	0007a783          	lw	a5,0(a5)
     820:	00078067          	jr	a5
     824:	80000737          	lui	a4,0x80000
     828:	ffd74713          	xori	a4,a4,-3
     82c:	00e787b3          	add	a5,a5,a4
     830:	01c00713          	li	a4,28
     834:	f8f762e3          	bltu	a4,a5,7b8 <__neorv32_rte_core+0x78>
     838:	00013737          	lui	a4,0x13
     83c:	00279793          	slli	a5,a5,0x2
     840:	f9c70713          	addi	a4,a4,-100 # 12f9c <__etext+0x178>
     844:	00e787b3          	add	a5,a5,a4
     848:	0007a783          	lw	a5,0(a5)
     84c:	00078067          	jr	a5
     850:	25c1a783          	lw	a5,604(gp) # 80000a5c <__neorv32_rte_vector_lut>
     854:	f6dff06f          	j	7c0 <__neorv32_rte_core+0x80>
     858:	2601a783          	lw	a5,608(gp) # 80000a60 <__neorv32_rte_vector_lut+0x4>
     85c:	f65ff06f          	j	7c0 <__neorv32_rte_core+0x80>
     860:	2641a783          	lw	a5,612(gp) # 80000a64 <__neorv32_rte_vector_lut+0x8>
     864:	f5dff06f          	j	7c0 <__neorv32_rte_core+0x80>
     868:	2681a783          	lw	a5,616(gp) # 80000a68 <__neorv32_rte_vector_lut+0xc>
     86c:	f55ff06f          	j	7c0 <__neorv32_rte_core+0x80>
     870:	26c1a783          	lw	a5,620(gp) # 80000a6c <__neorv32_rte_vector_lut+0x10>
     874:	f4dff06f          	j	7c0 <__neorv32_rte_core+0x80>
     878:	2701a783          	lw	a5,624(gp) # 80000a70 <__neorv32_rte_vector_lut+0x14>
     87c:	f45ff06f          	j	7c0 <__neorv32_rte_core+0x80>
     880:	2741a783          	lw	a5,628(gp) # 80000a74 <__neorv32_rte_vector_lut+0x18>
     884:	f3dff06f          	j	7c0 <__neorv32_rte_core+0x80>
     888:	2781a783          	lw	a5,632(gp) # 80000a78 <__neorv32_rte_vector_lut+0x1c>
     88c:	f35ff06f          	j	7c0 <__neorv32_rte_core+0x80>
     890:	27c1a783          	lw	a5,636(gp) # 80000a7c <__neorv32_rte_vector_lut+0x20>
     894:	f2dff06f          	j	7c0 <__neorv32_rte_core+0x80>
     898:	2801a783          	lw	a5,640(gp) # 80000a80 <__neorv32_rte_vector_lut+0x24>
     89c:	f25ff06f          	j	7c0 <__neorv32_rte_core+0x80>
     8a0:	2841a783          	lw	a5,644(gp) # 80000a84 <__neorv32_rte_vector_lut+0x28>
     8a4:	f1dff06f          	j	7c0 <__neorv32_rte_core+0x80>
     8a8:	2881a783          	lw	a5,648(gp) # 80000a88 <__neorv32_rte_vector_lut+0x2c>
     8ac:	f15ff06f          	j	7c0 <__neorv32_rte_core+0x80>
     8b0:	28c1a783          	lw	a5,652(gp) # 80000a8c <__neorv32_rte_vector_lut+0x30>
     8b4:	f0dff06f          	j	7c0 <__neorv32_rte_core+0x80>
     8b8:	2901a783          	lw	a5,656(gp) # 80000a90 <__neorv32_rte_vector_lut+0x34>
     8bc:	f05ff06f          	j	7c0 <__neorv32_rte_core+0x80>
     8c0:	2941a783          	lw	a5,660(gp) # 80000a94 <__neorv32_rte_vector_lut+0x38>
     8c4:	efdff06f          	j	7c0 <__neorv32_rte_core+0x80>
     8c8:	2981a783          	lw	a5,664(gp) # 80000a98 <__neorv32_rte_vector_lut+0x3c>
     8cc:	ef5ff06f          	j	7c0 <__neorv32_rte_core+0x80>
     8d0:	29c1a783          	lw	a5,668(gp) # 80000a9c <__neorv32_rte_vector_lut+0x40>
     8d4:	eedff06f          	j	7c0 <__neorv32_rte_core+0x80>
     8d8:	2a01a783          	lw	a5,672(gp) # 80000aa0 <__neorv32_rte_vector_lut+0x44>
     8dc:	ee5ff06f          	j	7c0 <__neorv32_rte_core+0x80>
     8e0:	2a41a783          	lw	a5,676(gp) # 80000aa4 <__neorv32_rte_vector_lut+0x48>
     8e4:	eddff06f          	j	7c0 <__neorv32_rte_core+0x80>
     8e8:	2a81a783          	lw	a5,680(gp) # 80000aa8 <__neorv32_rte_vector_lut+0x4c>
     8ec:	ed5ff06f          	j	7c0 <__neorv32_rte_core+0x80>
     8f0:	2ac1a783          	lw	a5,684(gp) # 80000aac <__neorv32_rte_vector_lut+0x50>
     8f4:	ecdff06f          	j	7c0 <__neorv32_rte_core+0x80>
     8f8:	2b01a783          	lw	a5,688(gp) # 80000ab0 <__neorv32_rte_vector_lut+0x54>
     8fc:	ec5ff06f          	j	7c0 <__neorv32_rte_core+0x80>
     900:	2b41a783          	lw	a5,692(gp) # 80000ab4 <__neorv32_rte_vector_lut+0x58>
     904:	ebdff06f          	j	7c0 <__neorv32_rte_core+0x80>
     908:	2b81a783          	lw	a5,696(gp) # 80000ab8 <__neorv32_rte_vector_lut+0x5c>
     90c:	eb5ff06f          	j	7c0 <__neorv32_rte_core+0x80>
     910:	2bc1a783          	lw	a5,700(gp) # 80000abc <__neorv32_rte_vector_lut+0x60>
     914:	eadff06f          	j	7c0 <__neorv32_rte_core+0x80>
     918:	2c01a783          	lw	a5,704(gp) # 80000ac0 <__neorv32_rte_vector_lut+0x64>
     91c:	ea5ff06f          	j	7c0 <__neorv32_rte_core+0x80>
     920:	2c41a783          	lw	a5,708(gp) # 80000ac4 <__neorv32_rte_vector_lut+0x68>
     924:	e9dff06f          	j	7c0 <__neorv32_rte_core+0x80>
     928:	2c81a783          	lw	a5,712(gp) # 80000ac8 <__neorv32_rte_vector_lut+0x6c>
     92c:	e95ff06f          	j	7c0 <__neorv32_rte_core+0x80>
     930:	2cc1a783          	lw	a5,716(gp) # 80000acc <__neorv32_rte_vector_lut+0x70>
     934:	e8dff06f          	j	7c0 <__neorv32_rte_core+0x80>
     938:	0000                	unimp
     93a:	0000                	unimp
     93c:	0000                	unimp
     93e:	0000                	unimp

00000940 <__neorv32_rte_print_hex_word>:
     940:	fe010113          	addi	sp,sp,-32
     944:	01212823          	sw	s2,16(sp)
     948:	00050913          	mv	s2,a0
     94c:	00013537          	lui	a0,0x13
     950:	00912a23          	sw	s1,20(sp)
     954:	01050513          	addi	a0,a0,16 # 13010 <__etext+0x1ec>
     958:	000134b7          	lui	s1,0x13
     95c:	00812c23          	sw	s0,24(sp)
     960:	01312623          	sw	s3,12(sp)
     964:	00112e23          	sw	ra,28(sp)
     968:	01c00413          	li	s0,28
     96c:	c91ff0ef          	jal	ra,5fc <neorv32_uart0_print>
     970:	20448493          	addi	s1,s1,516 # 13204 <hex_symbols.0>
     974:	ffc00993          	li	s3,-4
     978:	008957b3          	srl	a5,s2,s0
     97c:	00f7f793          	andi	a5,a5,15
     980:	00f487b3          	add	a5,s1,a5
     984:	0007c503          	lbu	a0,0(a5)
     988:	ffc40413          	addi	s0,s0,-4
     98c:	c59ff0ef          	jal	ra,5e4 <neorv32_uart0_putc>
     990:	ff3414e3          	bne	s0,s3,978 <__neorv32_rte_print_hex_word+0x38>
     994:	01c12083          	lw	ra,28(sp)
     998:	01812403          	lw	s0,24(sp)
     99c:	01412483          	lw	s1,20(sp)
     9a0:	01012903          	lw	s2,16(sp)
     9a4:	00c12983          	lw	s3,12(sp)
     9a8:	02010113          	addi	sp,sp,32
     9ac:	00008067          	ret

000009b0 <__neorv32_rte_debug_exc_handler>:
     9b0:	ff010113          	addi	sp,sp,-16
     9b4:	00112623          	sw	ra,12(sp)
     9b8:	00812423          	sw	s0,8(sp)
     9bc:	00912223          	sw	s1,4(sp)
     9c0:	b69ff0ef          	jal	ra,528 <neorv32_uart0_available>
     9c4:	1c050863          	beqz	a0,b94 <__neorv32_rte_debug_exc_handler+0x1e4>
     9c8:	00013537          	lui	a0,0x13
     9cc:	01450513          	addi	a0,a0,20 # 13014 <__etext+0x1f0>
     9d0:	c2dff0ef          	jal	ra,5fc <neorv32_uart0_print>
     9d4:	34202473          	csrr	s0,mcause
     9d8:	00900713          	li	a4,9
     9dc:	00f47793          	andi	a5,s0,15
     9e0:	03078493          	addi	s1,a5,48
     9e4:	00f77463          	bgeu	a4,a5,9ec <__neorv32_rte_debug_exc_handler+0x3c>
     9e8:	05778493          	addi	s1,a5,87
     9ec:	00b00793          	li	a5,11
     9f0:	0087ee63          	bltu	a5,s0,a0c <__neorv32_rte_debug_exc_handler+0x5c>
     9f4:	00013737          	lui	a4,0x13
     9f8:	00241793          	slli	a5,s0,0x2
     9fc:	1d470713          	addi	a4,a4,468 # 131d4 <__etext+0x3b0>
     a00:	00e787b3          	add	a5,a5,a4
     a04:	0007a783          	lw	a5,0(a5)
     a08:	00078067          	jr	a5
     a0c:	800007b7          	lui	a5,0x80000
     a10:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
     a14:	14e40e63          	beq	s0,a4,b70 <__neorv32_rte_debug_exc_handler+0x1c0>
     a18:	02876a63          	bltu	a4,s0,a4c <__neorv32_rte_debug_exc_handler+0x9c>
     a1c:	00378713          	addi	a4,a5,3
     a20:	12e40c63          	beq	s0,a4,b58 <__neorv32_rte_debug_exc_handler+0x1a8>
     a24:	00778793          	addi	a5,a5,7
     a28:	12f40e63          	beq	s0,a5,b64 <__neorv32_rte_debug_exc_handler+0x1b4>
     a2c:	00013537          	lui	a0,0x13
     a30:	17450513          	addi	a0,a0,372 # 13174 <__etext+0x350>
     a34:	bc9ff0ef          	jal	ra,5fc <neorv32_uart0_print>
     a38:	00040513          	mv	a0,s0
     a3c:	f05ff0ef          	jal	ra,940 <__neorv32_rte_print_hex_word>
     a40:	00100793          	li	a5,1
     a44:	08f40c63          	beq	s0,a5,adc <__neorv32_rte_debug_exc_handler+0x12c>
     a48:	0280006f          	j	a70 <__neorv32_rte_debug_exc_handler+0xc0>
     a4c:	ff07c793          	xori	a5,a5,-16
     a50:	00f407b3          	add	a5,s0,a5
     a54:	00f00713          	li	a4,15
     a58:	fcf76ae3          	bltu	a4,a5,a2c <__neorv32_rte_debug_exc_handler+0x7c>
     a5c:	00013537          	lui	a0,0x13
     a60:	16450513          	addi	a0,a0,356 # 13164 <__etext+0x340>
     a64:	b99ff0ef          	jal	ra,5fc <neorv32_uart0_print>
     a68:	00048513          	mv	a0,s1
     a6c:	b79ff0ef          	jal	ra,5e4 <neorv32_uart0_putc>
     a70:	ffd47413          	andi	s0,s0,-3
     a74:	00500793          	li	a5,5
     a78:	06f40263          	beq	s0,a5,adc <__neorv32_rte_debug_exc_handler+0x12c>
     a7c:	00013537          	lui	a0,0x13
     a80:	1b850513          	addi	a0,a0,440 # 131b8 <__etext+0x394>
     a84:	b79ff0ef          	jal	ra,5fc <neorv32_uart0_print>
     a88:	34002573          	csrr	a0,mscratch
     a8c:	eb5ff0ef          	jal	ra,940 <__neorv32_rte_print_hex_word>
     a90:	00013537          	lui	a0,0x13
     a94:	1c050513          	addi	a0,a0,448 # 131c0 <__etext+0x39c>
     a98:	b65ff0ef          	jal	ra,5fc <neorv32_uart0_print>
     a9c:	34302573          	csrr	a0,mtval
     aa0:	ea1ff0ef          	jal	ra,940 <__neorv32_rte_print_hex_word>
     aa4:	00812403          	lw	s0,8(sp)
     aa8:	00c12083          	lw	ra,12(sp)
     aac:	00412483          	lw	s1,4(sp)
     ab0:	00013537          	lui	a0,0x13
     ab4:	1cc50513          	addi	a0,a0,460 # 131cc <__etext+0x3a8>
     ab8:	01010113          	addi	sp,sp,16
     abc:	b41ff06f          	j	5fc <neorv32_uart0_print>
     ac0:	00013537          	lui	a0,0x13
     ac4:	01c50513          	addi	a0,a0,28 # 1301c <__etext+0x1f8>
     ac8:	b35ff0ef          	jal	ra,5fc <neorv32_uart0_print>
     acc:	fb1ff06f          	j	a7c <__neorv32_rte_debug_exc_handler+0xcc>
     ad0:	00013537          	lui	a0,0x13
     ad4:	03c50513          	addi	a0,a0,60 # 1303c <__etext+0x218>
     ad8:	b25ff0ef          	jal	ra,5fc <neorv32_uart0_print>
     adc:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
     ae0:	0a07d463          	bgez	a5,b88 <__neorv32_rte_debug_exc_handler+0x1d8>
     ae4:	0017f793          	andi	a5,a5,1
     ae8:	08078a63          	beqz	a5,b7c <__neorv32_rte_debug_exc_handler+0x1cc>
     aec:	00013537          	lui	a0,0x13
     af0:	18c50513          	addi	a0,a0,396 # 1318c <__etext+0x368>
     af4:	fd5ff06f          	j	ac8 <__neorv32_rte_debug_exc_handler+0x118>
     af8:	00013537          	lui	a0,0x13
     afc:	05850513          	addi	a0,a0,88 # 13058 <__etext+0x234>
     b00:	fc9ff06f          	j	ac8 <__neorv32_rte_debug_exc_handler+0x118>
     b04:	00013537          	lui	a0,0x13
     b08:	06c50513          	addi	a0,a0,108 # 1306c <__etext+0x248>
     b0c:	fbdff06f          	j	ac8 <__neorv32_rte_debug_exc_handler+0x118>
     b10:	00013537          	lui	a0,0x13
     b14:	07850513          	addi	a0,a0,120 # 13078 <__etext+0x254>
     b18:	fb1ff06f          	j	ac8 <__neorv32_rte_debug_exc_handler+0x118>
     b1c:	00013537          	lui	a0,0x13
     b20:	09050513          	addi	a0,a0,144 # 13090 <__etext+0x26c>
     b24:	fb5ff06f          	j	ad8 <__neorv32_rte_debug_exc_handler+0x128>
     b28:	00013537          	lui	a0,0x13
     b2c:	0a450513          	addi	a0,a0,164 # 130a4 <__etext+0x280>
     b30:	f99ff06f          	j	ac8 <__neorv32_rte_debug_exc_handler+0x118>
     b34:	00013537          	lui	a0,0x13
     b38:	0c050513          	addi	a0,a0,192 # 130c0 <__etext+0x29c>
     b3c:	f9dff06f          	j	ad8 <__neorv32_rte_debug_exc_handler+0x128>
     b40:	00013537          	lui	a0,0x13
     b44:	0d450513          	addi	a0,a0,212 # 130d4 <__etext+0x2b0>
     b48:	f81ff06f          	j	ac8 <__neorv32_rte_debug_exc_handler+0x118>
     b4c:	00013537          	lui	a0,0x13
     b50:	0f450513          	addi	a0,a0,244 # 130f4 <__etext+0x2d0>
     b54:	f75ff06f          	j	ac8 <__neorv32_rte_debug_exc_handler+0x118>
     b58:	00013537          	lui	a0,0x13
     b5c:	11450513          	addi	a0,a0,276 # 13114 <__etext+0x2f0>
     b60:	f69ff06f          	j	ac8 <__neorv32_rte_debug_exc_handler+0x118>
     b64:	00013537          	lui	a0,0x13
     b68:	13050513          	addi	a0,a0,304 # 13130 <__etext+0x30c>
     b6c:	f5dff06f          	j	ac8 <__neorv32_rte_debug_exc_handler+0x118>
     b70:	00013537          	lui	a0,0x13
     b74:	14850513          	addi	a0,a0,328 # 13148 <__etext+0x324>
     b78:	f51ff06f          	j	ac8 <__neorv32_rte_debug_exc_handler+0x118>
     b7c:	00013537          	lui	a0,0x13
     b80:	19c50513          	addi	a0,a0,412 # 1319c <__etext+0x378>
     b84:	f45ff06f          	j	ac8 <__neorv32_rte_debug_exc_handler+0x118>
     b88:	00013537          	lui	a0,0x13
     b8c:	1ac50513          	addi	a0,a0,428 # 131ac <__etext+0x388>
     b90:	f39ff06f          	j	ac8 <__neorv32_rte_debug_exc_handler+0x118>
     b94:	00c12083          	lw	ra,12(sp)
     b98:	00812403          	lw	s0,8(sp)
     b9c:	00412483          	lw	s1,4(sp)
     ba0:	01010113          	addi	sp,sp,16
     ba4:	00008067          	ret

00000ba8 <neorv32_rte_exception_uninstall>:
     ba8:	01f00793          	li	a5,31
     bac:	02a7e263          	bltu	a5,a0,bd0 <neorv32_rte_exception_uninstall+0x28>
     bb0:	25c18793          	addi	a5,gp,604 # 80000a5c <__neorv32_rte_vector_lut>
     bb4:	00251513          	slli	a0,a0,0x2
     bb8:	00a78533          	add	a0,a5,a0
     bbc:	000017b7          	lui	a5,0x1
     bc0:	9b078793          	addi	a5,a5,-1616 # 9b0 <__neorv32_rte_debug_exc_handler>
     bc4:	00f52023          	sw	a5,0(a0)
     bc8:	00000513          	li	a0,0
     bcc:	00008067          	ret
     bd0:	00100513          	li	a0,1
     bd4:	00008067          	ret

00000bd8 <neorv32_rte_setup>:
     bd8:	ff010113          	addi	sp,sp,-16
     bdc:	00112623          	sw	ra,12(sp)
     be0:	00812423          	sw	s0,8(sp)
     be4:	00912223          	sw	s1,4(sp)
     be8:	74000793          	li	a5,1856
     bec:	30579073          	csrw	mtvec,a5
     bf0:	00000413          	li	s0,0
     bf4:	01d00493          	li	s1,29
     bf8:	00040513          	mv	a0,s0
     bfc:	00140413          	addi	s0,s0,1
     c00:	0ff47413          	andi	s0,s0,255
     c04:	fa5ff0ef          	jal	ra,ba8 <neorv32_rte_exception_uninstall>
     c08:	fe9418e3          	bne	s0,s1,bf8 <neorv32_rte_setup+0x20>
     c0c:	00c12083          	lw	ra,12(sp)
     c10:	00812403          	lw	s0,8(sp)
     c14:	00412483          	lw	s1,4(sp)
     c18:	01010113          	addi	sp,sp,16
     c1c:	00008067          	ret

00000c20 <neorv32_gpio_available>:
     c20:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     c24:	01055513          	srli	a0,a0,0x10
     c28:	00157513          	andi	a0,a0,1
     c2c:	00008067          	ret

00000c30 <neorv32_gpio_port_set>:
     c30:	fc000793          	li	a5,-64
     c34:	00a7a423          	sw	a0,8(a5)
     c38:	00b7a623          	sw	a1,12(a5)
     c3c:	00008067          	ret

00000c40 <__mulsi3>:
     c40:	00050613          	mv	a2,a0
     c44:	00000513          	li	a0,0
     c48:	0015f693          	andi	a3,a1,1
     c4c:	00068463          	beqz	a3,c54 <__mulsi3+0x14>
     c50:	00c50533          	add	a0,a0,a2
     c54:	0015d593          	srli	a1,a1,0x1
     c58:	00161613          	slli	a2,a2,0x1
     c5c:	fe0596e3          	bnez	a1,c48 <__mulsi3+0x8>
     c60:	00008067          	ret

00000c64 <__muldi3>:
     c64:	00050313          	mv	t1,a0
     c68:	ff010113          	addi	sp,sp,-16
     c6c:	00060513          	mv	a0,a2
     c70:	00068893          	mv	a7,a3
     c74:	00112623          	sw	ra,12(sp)
     c78:	00030613          	mv	a2,t1
     c7c:	00050693          	mv	a3,a0
     c80:	00000713          	li	a4,0
     c84:	00000793          	li	a5,0
     c88:	00000813          	li	a6,0
     c8c:	0016fe13          	andi	t3,a3,1
     c90:	00171e93          	slli	t4,a4,0x1
     c94:	000e0c63          	beqz	t3,cac <__muldi3+0x48>
     c98:	01060e33          	add	t3,a2,a6
     c9c:	010e3833          	sltu	a6,t3,a6
     ca0:	00e787b3          	add	a5,a5,a4
     ca4:	00f807b3          	add	a5,a6,a5
     ca8:	000e0813          	mv	a6,t3
     cac:	01f65713          	srli	a4,a2,0x1f
     cb0:	0016d693          	srli	a3,a3,0x1
     cb4:	00eee733          	or	a4,t4,a4
     cb8:	00161613          	slli	a2,a2,0x1
     cbc:	fc0698e3          	bnez	a3,c8c <__muldi3+0x28>
     cc0:	00058663          	beqz	a1,ccc <__muldi3+0x68>
     cc4:	f7dff0ef          	jal	ra,c40 <__mulsi3>
     cc8:	00a787b3          	add	a5,a5,a0
     ccc:	00088a63          	beqz	a7,ce0 <__muldi3+0x7c>
     cd0:	00030513          	mv	a0,t1
     cd4:	00088593          	mv	a1,a7
     cd8:	f69ff0ef          	jal	ra,c40 <__mulsi3>
     cdc:	00f507b3          	add	a5,a0,a5
     ce0:	00c12083          	lw	ra,12(sp)
     ce4:	00080513          	mv	a0,a6
     ce8:	00078593          	mv	a1,a5
     cec:	01010113          	addi	sp,sp,16
     cf0:	00008067          	ret

00000cf4 <__divsi3>:
     cf4:	06054063          	bltz	a0,d54 <__umodsi3+0x10>
     cf8:	0605c663          	bltz	a1,d64 <__umodsi3+0x20>

00000cfc <__udivsi3>:
     cfc:	00058613          	mv	a2,a1
     d00:	00050593          	mv	a1,a0
     d04:	fff00513          	li	a0,-1
     d08:	02060c63          	beqz	a2,d40 <__udivsi3+0x44>
     d0c:	00100693          	li	a3,1
     d10:	00b67a63          	bgeu	a2,a1,d24 <__udivsi3+0x28>
     d14:	00c05863          	blez	a2,d24 <__udivsi3+0x28>
     d18:	00161613          	slli	a2,a2,0x1
     d1c:	00169693          	slli	a3,a3,0x1
     d20:	feb66ae3          	bltu	a2,a1,d14 <__udivsi3+0x18>
     d24:	00000513          	li	a0,0
     d28:	00c5e663          	bltu	a1,a2,d34 <__udivsi3+0x38>
     d2c:	40c585b3          	sub	a1,a1,a2
     d30:	00d56533          	or	a0,a0,a3
     d34:	0016d693          	srli	a3,a3,0x1
     d38:	00165613          	srli	a2,a2,0x1
     d3c:	fe0696e3          	bnez	a3,d28 <__udivsi3+0x2c>
     d40:	00008067          	ret

00000d44 <__umodsi3>:
     d44:	00008293          	mv	t0,ra
     d48:	fb5ff0ef          	jal	ra,cfc <__udivsi3>
     d4c:	00058513          	mv	a0,a1
     d50:	00028067          	jr	t0
     d54:	40a00533          	neg	a0,a0
     d58:	00b04863          	bgtz	a1,d68 <__umodsi3+0x24>
     d5c:	40b005b3          	neg	a1,a1
     d60:	f9dff06f          	j	cfc <__udivsi3>
     d64:	40b005b3          	neg	a1,a1
     d68:	00008293          	mv	t0,ra
     d6c:	f91ff0ef          	jal	ra,cfc <__udivsi3>
     d70:	40a00533          	neg	a0,a0
     d74:	00028067          	jr	t0

00000d78 <__modsi3>:
     d78:	00008293          	mv	t0,ra
     d7c:	0005ca63          	bltz	a1,d90 <__modsi3+0x18>
     d80:	00054c63          	bltz	a0,d98 <__modsi3+0x20>
     d84:	f79ff0ef          	jal	ra,cfc <__udivsi3>
     d88:	00058513          	mv	a0,a1
     d8c:	00028067          	jr	t0
     d90:	40b005b3          	neg	a1,a1
     d94:	fe0558e3          	bgez	a0,d84 <__modsi3+0xc>
     d98:	40a00533          	neg	a0,a0
     d9c:	f61ff0ef          	jal	ra,cfc <__udivsi3>
     da0:	40b00533          	neg	a0,a1
     da4:	00028067          	jr	t0

00000da8 <memcpy>:
     da8:	00a5c7b3          	xor	a5,a1,a0
     dac:	0037f793          	andi	a5,a5,3
     db0:	00c508b3          	add	a7,a0,a2
     db4:	06079663          	bnez	a5,e20 <memcpy+0x78>
     db8:	00300793          	li	a5,3
     dbc:	06c7f263          	bgeu	a5,a2,e20 <memcpy+0x78>
     dc0:	00357793          	andi	a5,a0,3
     dc4:	00050713          	mv	a4,a0
     dc8:	0c079a63          	bnez	a5,e9c <memcpy+0xf4>
     dcc:	ffc8f613          	andi	a2,a7,-4
     dd0:	40e606b3          	sub	a3,a2,a4
     dd4:	02000793          	li	a5,32
     dd8:	02000293          	li	t0,32
     ddc:	06d7c263          	blt	a5,a3,e40 <memcpy+0x98>
     de0:	00058693          	mv	a3,a1
     de4:	00070793          	mv	a5,a4
     de8:	02c77863          	bgeu	a4,a2,e18 <memcpy+0x70>
     dec:	0006a803          	lw	a6,0(a3)
     df0:	00478793          	addi	a5,a5,4
     df4:	00468693          	addi	a3,a3,4
     df8:	ff07ae23          	sw	a6,-4(a5)
     dfc:	fec7e8e3          	bltu	a5,a2,dec <memcpy+0x44>
     e00:	fff60793          	addi	a5,a2,-1
     e04:	40e787b3          	sub	a5,a5,a4
     e08:	ffc7f793          	andi	a5,a5,-4
     e0c:	00478793          	addi	a5,a5,4
     e10:	00f70733          	add	a4,a4,a5
     e14:	00f585b3          	add	a1,a1,a5
     e18:	01176863          	bltu	a4,a7,e28 <memcpy+0x80>
     e1c:	00008067          	ret
     e20:	00050713          	mv	a4,a0
     e24:	ff157ce3          	bgeu	a0,a7,e1c <memcpy+0x74>
     e28:	0005c783          	lbu	a5,0(a1)
     e2c:	00170713          	addi	a4,a4,1
     e30:	00158593          	addi	a1,a1,1
     e34:	fef70fa3          	sb	a5,-1(a4)
     e38:	ff1768e3          	bltu	a4,a7,e28 <memcpy+0x80>
     e3c:	00008067          	ret
     e40:	0045a683          	lw	a3,4(a1)
     e44:	01c5a783          	lw	a5,28(a1)
     e48:	0005af83          	lw	t6,0(a1)
     e4c:	0085af03          	lw	t5,8(a1)
     e50:	00c5ae83          	lw	t4,12(a1)
     e54:	0105ae03          	lw	t3,16(a1)
     e58:	0145a303          	lw	t1,20(a1)
     e5c:	0185a803          	lw	a6,24(a1)
     e60:	00d72223          	sw	a3,4(a4)
     e64:	0205a683          	lw	a3,32(a1)
     e68:	01f72023          	sw	t6,0(a4)
     e6c:	01e72423          	sw	t5,8(a4)
     e70:	01d72623          	sw	t4,12(a4)
     e74:	01c72823          	sw	t3,16(a4)
     e78:	00672a23          	sw	t1,20(a4)
     e7c:	01072c23          	sw	a6,24(a4)
     e80:	00f72e23          	sw	a5,28(a4)
     e84:	02470713          	addi	a4,a4,36
     e88:	40e607b3          	sub	a5,a2,a4
     e8c:	fed72e23          	sw	a3,-4(a4)
     e90:	02458593          	addi	a1,a1,36
     e94:	faf2c6e3          	blt	t0,a5,e40 <memcpy+0x98>
     e98:	f49ff06f          	j	de0 <memcpy+0x38>
     e9c:	0005c683          	lbu	a3,0(a1)
     ea0:	00170713          	addi	a4,a4,1
     ea4:	00377793          	andi	a5,a4,3
     ea8:	fed70fa3          	sb	a3,-1(a4)
     eac:	00158593          	addi	a1,a1,1
     eb0:	f0078ee3          	beqz	a5,dcc <memcpy+0x24>
     eb4:	0005c683          	lbu	a3,0(a1)
     eb8:	00170713          	addi	a4,a4,1
     ebc:	00377793          	andi	a5,a4,3
     ec0:	fed70fa3          	sb	a3,-1(a4)
     ec4:	00158593          	addi	a1,a1,1
     ec8:	fc079ae3          	bnez	a5,e9c <memcpy+0xf4>
     ecc:	f01ff06f          	j	dcc <memcpy+0x24>

00000ed0 <vsnprintf>:
     ed0:	f8010113          	addi	sp,sp,-128
     ed4:	06812c23          	sw	s0,120(sp)
     ed8:	06112e23          	sw	ra,124(sp)
     edc:	06912a23          	sw	s1,116(sp)
     ee0:	1bc1a403          	lw	s0,444(gp) # 800009bc <_impure_ptr>
     ee4:	0805ce63          	bltz	a1,f80 <vsnprintf+0xb0>
     ee8:	20800793          	li	a5,520
     eec:	00f11a23          	sh	a5,20(sp)
     ef0:	00a12423          	sw	a0,8(sp)
     ef4:	00a12c23          	sw	a0,24(sp)
     ef8:	04058663          	beqz	a1,f44 <vsnprintf+0x74>
     efc:	fff58793          	addi	a5,a1,-1
     f00:	fff00493          	li	s1,-1
     f04:	00810593          	addi	a1,sp,8
     f08:	00040513          	mv	a0,s0
     f0c:	00f12823          	sw	a5,16(sp)
     f10:	00f12e23          	sw	a5,28(sp)
     f14:	00911b23          	sh	s1,22(sp)
     f18:	13c000ef          	jal	ra,1054 <_svfprintf_r>
     f1c:	00955663          	bge	a0,s1,f28 <vsnprintf+0x58>
     f20:	08b00793          	li	a5,139
     f24:	00f42023          	sw	a5,0(s0)
     f28:	00812783          	lw	a5,8(sp)
     f2c:	00078023          	sb	zero,0(a5)
     f30:	07c12083          	lw	ra,124(sp)
     f34:	07812403          	lw	s0,120(sp)
     f38:	07412483          	lw	s1,116(sp)
     f3c:	08010113          	addi	sp,sp,128
     f40:	00008067          	ret
     f44:	fff00493          	li	s1,-1
     f48:	00810593          	addi	a1,sp,8
     f4c:	00040513          	mv	a0,s0
     f50:	00012823          	sw	zero,16(sp)
     f54:	00012e23          	sw	zero,28(sp)
     f58:	00911b23          	sh	s1,22(sp)
     f5c:	0f8000ef          	jal	ra,1054 <_svfprintf_r>
     f60:	00955663          	bge	a0,s1,f6c <vsnprintf+0x9c>
     f64:	08b00793          	li	a5,139
     f68:	00f42023          	sw	a5,0(s0)
     f6c:	07c12083          	lw	ra,124(sp)
     f70:	07812403          	lw	s0,120(sp)
     f74:	07412483          	lw	s1,116(sp)
     f78:	08010113          	addi	sp,sp,128
     f7c:	00008067          	ret
     f80:	08b00793          	li	a5,139
     f84:	00f42023          	sw	a5,0(s0)
     f88:	fff00513          	li	a0,-1
     f8c:	fe1ff06f          	j	f6c <vsnprintf+0x9c>

00000f90 <_vsnprintf_r>:
     f90:	f8010113          	addi	sp,sp,-128
     f94:	06812c23          	sw	s0,120(sp)
     f98:	06112e23          	sw	ra,124(sp)
     f9c:	06912a23          	sw	s1,116(sp)
     fa0:	00060793          	mv	a5,a2
     fa4:	00050413          	mv	s0,a0
     fa8:	08064e63          	bltz	a2,1044 <_vsnprintf_r+0xb4>
     fac:	00068613          	mv	a2,a3
     fb0:	00070693          	mv	a3,a4
     fb4:	20800713          	li	a4,520
     fb8:	00e11a23          	sh	a4,20(sp)
     fbc:	00b12423          	sw	a1,8(sp)
     fc0:	00b12c23          	sw	a1,24(sp)
     fc4:	04078463          	beqz	a5,100c <_vsnprintf_r+0x7c>
     fc8:	fff78793          	addi	a5,a5,-1
     fcc:	fff00493          	li	s1,-1
     fd0:	00810593          	addi	a1,sp,8
     fd4:	00f12823          	sw	a5,16(sp)
     fd8:	00f12e23          	sw	a5,28(sp)
     fdc:	00911b23          	sh	s1,22(sp)
     fe0:	074000ef          	jal	ra,1054 <_svfprintf_r>
     fe4:	00955663          	bge	a0,s1,ff0 <_vsnprintf_r+0x60>
     fe8:	08b00793          	li	a5,139
     fec:	00f42023          	sw	a5,0(s0)
     ff0:	00812783          	lw	a5,8(sp)
     ff4:	00078023          	sb	zero,0(a5)
     ff8:	07c12083          	lw	ra,124(sp)
     ffc:	07812403          	lw	s0,120(sp)
    1000:	07412483          	lw	s1,116(sp)
    1004:	08010113          	addi	sp,sp,128
    1008:	00008067          	ret
    100c:	fff00493          	li	s1,-1
    1010:	00810593          	addi	a1,sp,8
    1014:	00012823          	sw	zero,16(sp)
    1018:	00012e23          	sw	zero,28(sp)
    101c:	00911b23          	sh	s1,22(sp)
    1020:	034000ef          	jal	ra,1054 <_svfprintf_r>
    1024:	00955663          	bge	a0,s1,1030 <_vsnprintf_r+0xa0>
    1028:	08b00793          	li	a5,139
    102c:	00f42023          	sw	a5,0(s0)
    1030:	07c12083          	lw	ra,124(sp)
    1034:	07812403          	lw	s0,120(sp)
    1038:	07412483          	lw	s1,116(sp)
    103c:	08010113          	addi	sp,sp,128
    1040:	00008067          	ret
    1044:	08b00793          	li	a5,139
    1048:	00f52023          	sw	a5,0(a0)
    104c:	fff00513          	li	a0,-1
    1050:	fe1ff06f          	j	1030 <_vsnprintf_r+0xa0>

00001054 <_svfprintf_r>:
    1054:	e1010113          	addi	sp,sp,-496
    1058:	1e112623          	sw	ra,492(sp)
    105c:	1f212023          	sw	s2,480(sp)
    1060:	1d812423          	sw	s8,456(sp)
    1064:	1da12023          	sw	s10,448(sp)
    1068:	00058c13          	mv	s8,a1
    106c:	00060913          	mv	s2,a2
    1070:	00d12a23          	sw	a3,20(sp)
    1074:	1e812423          	sw	s0,488(sp)
    1078:	1e912223          	sw	s1,484(sp)
    107c:	1d312e23          	sw	s3,476(sp)
    1080:	1d412c23          	sw	s4,472(sp)
    1084:	1d512a23          	sw	s5,468(sp)
    1088:	1d612823          	sw	s6,464(sp)
    108c:	1d712623          	sw	s7,460(sp)
    1090:	1d912223          	sw	s9,452(sp)
    1094:	1bb12e23          	sw	s11,444(sp)
    1098:	00050d13          	mv	s10,a0
    109c:	1c9050ef          	jal	ra,6a64 <_localeconv_r>
    10a0:	00052783          	lw	a5,0(a0)
    10a4:	00078513          	mv	a0,a5
    10a8:	02f12823          	sw	a5,48(sp)
    10ac:	768070ef          	jal	ra,8814 <strlen>
    10b0:	00cc5783          	lhu	a5,12(s8)
    10b4:	0e012823          	sw	zero,240(sp)
    10b8:	0e012a23          	sw	zero,244(sp)
    10bc:	0e012c23          	sw	zero,248(sp)
    10c0:	0e012e23          	sw	zero,252(sp)
    10c4:	0807f793          	andi	a5,a5,128
    10c8:	02a12623          	sw	a0,44(sp)
    10cc:	00078863          	beqz	a5,10dc <_svfprintf_r+0x88>
    10d0:	010c2783          	lw	a5,16(s8)
    10d4:	00079463          	bnez	a5,10dc <_svfprintf_r+0x88>
    10d8:	58c0106f          	j	2664 <_svfprintf_r+0x1610>
    10dc:	10c10793          	addi	a5,sp,268
    10e0:	00078893          	mv	a7,a5
    10e4:	0ef12223          	sw	a5,228(sp)
    10e8:	000137b7          	lui	a5,0x13
    10ec:	25878793          	addi	a5,a5,600 # 13258 <hex_symbols.0+0x54>
    10f0:	00f12c23          	sw	a5,24(sp)
    10f4:	000137b7          	lui	a5,0x13
    10f8:	3d478793          	addi	a5,a5,980 # 133d4 <zeroes.0>
    10fc:	00090b13          	mv	s6,s2
    1100:	00f12423          	sw	a5,8(sp)
    1104:	000b4783          	lbu	a5,0(s6)
    1108:	0e012623          	sw	zero,236(sp)
    110c:	0e012423          	sw	zero,232(sp)
    1110:	02012023          	sw	zero,32(sp)
    1114:	02012a23          	sw	zero,52(sp)
    1118:	02012c23          	sw	zero,56(sp)
    111c:	02012e23          	sw	zero,60(sp)
    1120:	04012223          	sw	zero,68(sp)
    1124:	04012423          	sw	zero,72(sp)
    1128:	00012623          	sw	zero,12(sp)
    112c:	00088d93          	mv	s11,a7
    1130:	22078263          	beqz	a5,1354 <_svfprintf_r+0x300>
    1134:	000b0413          	mv	s0,s6
    1138:	02500713          	li	a4,37
    113c:	2ce78263          	beq	a5,a4,1400 <_svfprintf_r+0x3ac>
    1140:	00144783          	lbu	a5,1(s0)
    1144:	00140413          	addi	s0,s0,1
    1148:	fe079ae3          	bnez	a5,113c <_svfprintf_r+0xe8>
    114c:	416404b3          	sub	s1,s0,s6
    1150:	21640263          	beq	s0,s6,1354 <_svfprintf_r+0x300>
    1154:	0ec12703          	lw	a4,236(sp)
    1158:	0e812783          	lw	a5,232(sp)
    115c:	016da023          	sw	s6,0(s11)
    1160:	00970733          	add	a4,a4,s1
    1164:	00178793          	addi	a5,a5,1
    1168:	009da223          	sw	s1,4(s11)
    116c:	0ee12623          	sw	a4,236(sp)
    1170:	0ef12423          	sw	a5,232(sp)
    1174:	00700713          	li	a4,7
    1178:	008d8d93          	addi	s11,s11,8
    117c:	28f74a63          	blt	a4,a5,1410 <_svfprintf_r+0x3bc>
    1180:	00c12703          	lw	a4,12(sp)
    1184:	00044783          	lbu	a5,0(s0)
    1188:	00970733          	add	a4,a4,s1
    118c:	00e12623          	sw	a4,12(sp)
    1190:	1c078263          	beqz	a5,1354 <_svfprintf_r+0x300>
    1194:	fff00313          	li	t1,-1
    1198:	00144483          	lbu	s1,1(s0)
    119c:	0c0103a3          	sb	zero,199(sp)
    11a0:	00140413          	addi	s0,s0,1
    11a4:	00000993          	li	s3,0
    11a8:	00000a13          	li	s4,0
    11ac:	05a00913          	li	s2,90
    11b0:	00900a93          	li	s5,9
    11b4:	02a00b93          	li	s7,42
    11b8:	00030c93          	mv	s9,t1
    11bc:	00140413          	addi	s0,s0,1
    11c0:	fe048793          	addi	a5,s1,-32
    11c4:	04f96463          	bltu	s2,a5,120c <_svfprintf_r+0x1b8>
    11c8:	01812703          	lw	a4,24(sp)
    11cc:	00279793          	slli	a5,a5,0x2
    11d0:	00e787b3          	add	a5,a5,a4
    11d4:	0007a783          	lw	a5,0(a5)
    11d8:	00078067          	jr	a5
    11dc:	00000993          	li	s3,0
    11e0:	fd048693          	addi	a3,s1,-48
    11e4:	00044483          	lbu	s1,0(s0)
    11e8:	00299793          	slli	a5,s3,0x2
    11ec:	013787b3          	add	a5,a5,s3
    11f0:	00179793          	slli	a5,a5,0x1
    11f4:	00f689b3          	add	s3,a3,a5
    11f8:	fd048693          	addi	a3,s1,-48
    11fc:	00140413          	addi	s0,s0,1
    1200:	fedaf2e3          	bgeu	s5,a3,11e4 <_svfprintf_r+0x190>
    1204:	fe048793          	addi	a5,s1,-32
    1208:	fcf970e3          	bgeu	s2,a5,11c8 <_svfprintf_r+0x174>
    120c:	14048463          	beqz	s1,1354 <_svfprintf_r+0x300>
    1210:	14910623          	sb	s1,332(sp)
    1214:	0c0103a3          	sb	zero,199(sp)
    1218:	00100a93          	li	s5,1
    121c:	00100c93          	li	s9,1
    1220:	14c10b13          	addi	s6,sp,332
    1224:	00012823          	sw	zero,16(sp)
    1228:	00000313          	li	t1,0
    122c:	02012423          	sw	zero,40(sp)
    1230:	02012223          	sw	zero,36(sp)
    1234:	00012e23          	sw	zero,28(sp)
    1238:	002a7b93          	andi	s7,s4,2
    123c:	000b8463          	beqz	s7,1244 <_svfprintf_r+0x1f0>
    1240:	002a8a93          	addi	s5,s5,2
    1244:	084a7913          	andi	s2,s4,132
    1248:	0ec12783          	lw	a5,236(sp)
    124c:	00091663          	bnez	s2,1258 <_svfprintf_r+0x204>
    1250:	415986b3          	sub	a3,s3,s5
    1254:	60d044e3          	bgtz	a3,205c <_svfprintf_r+0x1008>
    1258:	0c714703          	lbu	a4,199(sp)
    125c:	02070a63          	beqz	a4,1290 <_svfprintf_r+0x23c>
    1260:	0e812703          	lw	a4,232(sp)
    1264:	0c710693          	addi	a3,sp,199
    1268:	00dda023          	sw	a3,0(s11)
    126c:	00178793          	addi	a5,a5,1
    1270:	00100693          	li	a3,1
    1274:	00170713          	addi	a4,a4,1
    1278:	00dda223          	sw	a3,4(s11)
    127c:	0ef12623          	sw	a5,236(sp)
    1280:	0ee12423          	sw	a4,232(sp)
    1284:	00700693          	li	a3,7
    1288:	008d8d93          	addi	s11,s11,8
    128c:	4ae6c063          	blt	a3,a4,172c <_svfprintf_r+0x6d8>
    1290:	020b8a63          	beqz	s7,12c4 <_svfprintf_r+0x270>
    1294:	0e812703          	lw	a4,232(sp)
    1298:	0c810693          	addi	a3,sp,200
    129c:	00dda023          	sw	a3,0(s11)
    12a0:	00278793          	addi	a5,a5,2
    12a4:	00200693          	li	a3,2
    12a8:	00170713          	addi	a4,a4,1
    12ac:	00dda223          	sw	a3,4(s11)
    12b0:	0ef12623          	sw	a5,236(sp)
    12b4:	0ee12423          	sw	a4,232(sp)
    12b8:	00700693          	li	a3,7
    12bc:	008d8d93          	addi	s11,s11,8
    12c0:	6ae6cae3          	blt	a3,a4,2174 <_svfprintf_r+0x1120>
    12c4:	08000713          	li	a4,128
    12c8:	3ce902e3          	beq	s2,a4,1e8c <_svfprintf_r+0xe38>
    12cc:	41930933          	sub	s2,t1,s9
    12d0:	4b2044e3          	bgtz	s2,1f78 <_svfprintf_r+0xf24>
    12d4:	100a7713          	andi	a4,s4,256
    12d8:	280710e3          	bnez	a4,1d58 <_svfprintf_r+0xd04>
    12dc:	0e812703          	lw	a4,232(sp)
    12e0:	019787b3          	add	a5,a5,s9
    12e4:	016da023          	sw	s6,0(s11)
    12e8:	00170713          	addi	a4,a4,1
    12ec:	019da223          	sw	s9,4(s11)
    12f0:	0ef12623          	sw	a5,236(sp)
    12f4:	0ee12423          	sw	a4,232(sp)
    12f8:	00700693          	li	a3,7
    12fc:	56e6c863          	blt	a3,a4,186c <_svfprintf_r+0x818>
    1300:	008d8d93          	addi	s11,s11,8
    1304:	004a7a13          	andi	s4,s4,4
    1308:	000a0663          	beqz	s4,1314 <_svfprintf_r+0x2c0>
    130c:	415984b3          	sub	s1,s3,s5
    1310:	56904e63          	bgtz	s1,188c <_svfprintf_r+0x838>
    1314:	0159d463          	bge	s3,s5,131c <_svfprintf_r+0x2c8>
    1318:	000a8993          	mv	s3,s5
    131c:	00c12703          	lw	a4,12(sp)
    1320:	01370733          	add	a4,a4,s3
    1324:	00e12623          	sw	a4,12(sp)
    1328:	500794e3          	bnez	a5,2030 <_svfprintf_r+0xfdc>
    132c:	01012783          	lw	a5,16(sp)
    1330:	0e012423          	sw	zero,232(sp)
    1334:	00078863          	beqz	a5,1344 <_svfprintf_r+0x2f0>
    1338:	01012583          	lw	a1,16(sp)
    133c:	000d0513          	mv	a0,s10
    1340:	7e8020ef          	jal	ra,3b28 <_free_r>
    1344:	10c10d93          	addi	s11,sp,268
    1348:	00040b13          	mv	s6,s0
    134c:	000b4783          	lbu	a5,0(s6)
    1350:	de0792e3          	bnez	a5,1134 <_svfprintf_r+0xe0>
    1354:	0ec12783          	lw	a5,236(sp)
    1358:	00078463          	beqz	a5,1360 <_svfprintf_r+0x30c>
    135c:	3590106f          	j	2eb4 <_svfprintf_r+0x1e60>
    1360:	00cc5783          	lhu	a5,12(s8)
    1364:	0407f793          	andi	a5,a5,64
    1368:	00078463          	beqz	a5,1370 <_svfprintf_r+0x31c>
    136c:	3e40206f          	j	3750 <_svfprintf_r+0x26fc>
    1370:	1ec12083          	lw	ra,492(sp)
    1374:	1e812403          	lw	s0,488(sp)
    1378:	00c12503          	lw	a0,12(sp)
    137c:	1e412483          	lw	s1,484(sp)
    1380:	1e012903          	lw	s2,480(sp)
    1384:	1dc12983          	lw	s3,476(sp)
    1388:	1d812a03          	lw	s4,472(sp)
    138c:	1d412a83          	lw	s5,468(sp)
    1390:	1d012b03          	lw	s6,464(sp)
    1394:	1cc12b83          	lw	s7,460(sp)
    1398:	1c812c03          	lw	s8,456(sp)
    139c:	1c412c83          	lw	s9,452(sp)
    13a0:	1c012d03          	lw	s10,448(sp)
    13a4:	1bc12d83          	lw	s11,444(sp)
    13a8:	1f010113          	addi	sp,sp,496
    13ac:	00008067          	ret
    13b0:	000d0513          	mv	a0,s10
    13b4:	6b0050ef          	jal	ra,6a64 <_localeconv_r>
    13b8:	00452783          	lw	a5,4(a0)
    13bc:	00078513          	mv	a0,a5
    13c0:	04f12423          	sw	a5,72(sp)
    13c4:	450070ef          	jal	ra,8814 <strlen>
    13c8:	00050793          	mv	a5,a0
    13cc:	000d0513          	mv	a0,s10
    13d0:	00078493          	mv	s1,a5
    13d4:	04f12223          	sw	a5,68(sp)
    13d8:	68c050ef          	jal	ra,6a64 <_localeconv_r>
    13dc:	00852783          	lw	a5,8(a0)
    13e0:	02f12e23          	sw	a5,60(sp)
    13e4:	00048463          	beqz	s1,13ec <_svfprintf_r+0x398>
    13e8:	12c0106f          	j	2514 <_svfprintf_r+0x14c0>
    13ec:	00044483          	lbu	s1,0(s0)
    13f0:	dcdff06f          	j	11bc <_svfprintf_r+0x168>
    13f4:	00044483          	lbu	s1,0(s0)
    13f8:	020a6a13          	ori	s4,s4,32
    13fc:	dc1ff06f          	j	11bc <_svfprintf_r+0x168>
    1400:	416404b3          	sub	s1,s0,s6
    1404:	d56418e3          	bne	s0,s6,1154 <_svfprintf_r+0x100>
    1408:	00044783          	lbu	a5,0(s0)
    140c:	d85ff06f          	j	1190 <_svfprintf_r+0x13c>
    1410:	0e410613          	addi	a2,sp,228
    1414:	000c0593          	mv	a1,s8
    1418:	000d0513          	mv	a0,s10
    141c:	52c070ef          	jal	ra,8948 <__ssprint_r>
    1420:	f40510e3          	bnez	a0,1360 <_svfprintf_r+0x30c>
    1424:	10c10d93          	addi	s11,sp,268
    1428:	d59ff06f          	j	1180 <_svfprintf_r+0x12c>
    142c:	008a7793          	andi	a5,s4,8
    1430:	000c8313          	mv	t1,s9
    1434:	00078463          	beqz	a5,143c <_svfprintf_r+0x3e8>
    1438:	1000106f          	j	2538 <_svfprintf_r+0x14e4>
    143c:	01412783          	lw	a5,20(sp)
    1440:	0b010513          	addi	a0,sp,176
    1444:	01912823          	sw	s9,16(sp)
    1448:	00778793          	addi	a5,a5,7
    144c:	ff87f793          	andi	a5,a5,-8
    1450:	0007a583          	lw	a1,0(a5)
    1454:	0047a603          	lw	a2,4(a5)
    1458:	00878793          	addi	a5,a5,8
    145c:	00f12a23          	sw	a5,20(sp)
    1460:	428110ef          	jal	ra,12888 <__extenddftf2>
    1464:	0b012783          	lw	a5,176(sp)
    1468:	01012303          	lw	t1,16(sp)
    146c:	0ef12823          	sw	a5,240(sp)
    1470:	0b412783          	lw	a5,180(sp)
    1474:	0ef12a23          	sw	a5,244(sp)
    1478:	0b812783          	lw	a5,184(sp)
    147c:	0ef12c23          	sw	a5,248(sp)
    1480:	0bc12783          	lw	a5,188(sp)
    1484:	0ef12e23          	sw	a5,252(sp)
    1488:	0f010513          	addi	a0,sp,240
    148c:	00612823          	sw	t1,16(sp)
    1490:	554050ef          	jal	ra,69e4 <_ldcheck>
    1494:	0ca12623          	sw	a0,204(sp)
    1498:	00200793          	li	a5,2
    149c:	01012303          	lw	t1,16(sp)
    14a0:	00f51463          	bne	a0,a5,14a8 <_svfprintf_r+0x454>
    14a4:	68c0106f          	j	2b30 <_svfprintf_r+0x1adc>
    14a8:	00100793          	li	a5,1
    14ac:	00f51463          	bne	a0,a5,14b4 <_svfprintf_r+0x460>
    14b0:	07d0106f          	j	2d2c <_svfprintf_r+0x1cd8>
    14b4:	06100793          	li	a5,97
    14b8:	00f49463          	bne	s1,a5,14c0 <_svfprintf_r+0x46c>
    14bc:	26c0206f          	j	3728 <_svfprintf_r+0x26d4>
    14c0:	04100793          	li	a5,65
    14c4:	00f49463          	bne	s1,a5,14cc <_svfprintf_r+0x478>
    14c8:	5610106f          	j	3228 <_svfprintf_r+0x21d4>
    14cc:	fdf4f713          	andi	a4,s1,-33
    14d0:	fff00793          	li	a5,-1
    14d4:	02e12423          	sw	a4,40(sp)
    14d8:	00f31463          	bne	t1,a5,14e0 <_svfprintf_r+0x48c>
    14dc:	21d0106f          	j	2ef8 <_svfprintf_r+0x1ea4>
    14e0:	04700793          	li	a5,71
    14e4:	00f71463          	bne	a4,a5,14ec <_svfprintf_r+0x498>
    14e8:	2580206f          	j	3740 <_svfprintf_r+0x26ec>
    14ec:	0fc12b83          	lw	s7,252(sp)
    14f0:	05412823          	sw	s4,80(sp)
    14f4:	0f012e03          	lw	t3,240(sp)
    14f8:	0f412e83          	lw	t4,244(sp)
    14fc:	0f812f03          	lw	t5,248(sp)
    1500:	100a6793          	ori	a5,s4,256
    1504:	000bd463          	bgez	s7,150c <_svfprintf_r+0x4b8>
    1508:	0b00206f          	j	35b8 <_svfprintf_r+0x2564>
    150c:	04012c23          	sw	zero,88(sp)
    1510:	00078a13          	mv	s4,a5
    1514:	00012823          	sw	zero,16(sp)
    1518:	02812703          	lw	a4,40(sp)
    151c:	04600793          	li	a5,70
    1520:	00f71463          	bne	a4,a5,1528 <_svfprintf_r+0x4d4>
    1524:	2f90106f          	j	301c <_svfprintf_r+0x1fc8>
    1528:	04500793          	li	a5,69
    152c:	00f71463          	bne	a4,a5,1534 <_svfprintf_r+0x4e0>
    1530:	0b00206f          	j	35e0 <_svfprintf_r+0x258c>
    1534:	0b010a93          	addi	s5,sp,176
    1538:	0d010793          	addi	a5,sp,208
    153c:	0cc10713          	addi	a4,sp,204
    1540:	00030693          	mv	a3,t1
    1544:	0dc10813          	addi	a6,sp,220
    1548:	00200613          	li	a2,2
    154c:	000a8593          	mv	a1,s5
    1550:	000d0513          	mv	a0,s10
    1554:	04612023          	sw	t1,64(sp)
    1558:	0bc12823          	sw	t3,176(sp)
    155c:	03c12223          	sw	t3,36(sp)
    1560:	0bd12a23          	sw	t4,180(sp)
    1564:	03d12023          	sw	t4,32(sp)
    1568:	0be12c23          	sw	t5,184(sp)
    156c:	01e12e23          	sw	t5,28(sp)
    1570:	0b712e23          	sw	s7,188(sp)
    1574:	1e0040ef          	jal	ra,5754 <_ldtoa_r>
    1578:	02812703          	lw	a4,40(sp)
    157c:	04700793          	li	a5,71
    1580:	01c12f03          	lw	t5,28(sp)
    1584:	02012e83          	lw	t4,32(sp)
    1588:	02412e03          	lw	t3,36(sp)
    158c:	04012303          	lw	t1,64(sp)
    1590:	00050b13          	mv	s6,a0
    1594:	00f70463          	beq	a4,a5,159c <_svfprintf_r+0x548>
    1598:	4580206f          	j	39f0 <_svfprintf_r+0x299c>
    159c:	05012783          	lw	a5,80(sp)
    15a0:	0017f793          	andi	a5,a5,1
    15a4:	00078463          	beqz	a5,15ac <_svfprintf_r+0x558>
    15a8:	0a00206f          	j	3648 <_svfprintf_r+0x25f4>
    15ac:	0dc12683          	lw	a3,220(sp)
    15b0:	416687b3          	sub	a5,a3,s6
    15b4:	02f12023          	sw	a5,32(sp)
    15b8:	0cc12703          	lw	a4,204(sp)
    15bc:	04700793          	li	a5,71
    15c0:	00e12e23          	sw	a4,28(sp)
    15c4:	02812703          	lw	a4,40(sp)
    15c8:	00f71463          	bne	a4,a5,15d0 <_svfprintf_r+0x57c>
    15cc:	1690106f          	j	2f34 <_svfprintf_r+0x1ee0>
    15d0:	02812703          	lw	a4,40(sp)
    15d4:	04600793          	li	a5,70
    15d8:	00f71463          	bne	a4,a5,15e0 <_svfprintf_r+0x58c>
    15dc:	4290106f          	j	3204 <_svfprintf_r+0x21b0>
    15e0:	01c12783          	lw	a5,28(sp)
    15e4:	02812603          	lw	a2,40(sp)
    15e8:	04100693          	li	a3,65
    15ec:	fff78a93          	addi	s5,a5,-1
    15f0:	0d512623          	sw	s5,204(sp)
    15f4:	0ff4f793          	andi	a5,s1,255
    15f8:	00000713          	li	a4,0
    15fc:	00d61863          	bne	a2,a3,160c <_svfprintf_r+0x5b8>
    1600:	00f78793          	addi	a5,a5,15
    1604:	0ff7f793          	andi	a5,a5,255
    1608:	00100713          	li	a4,1
    160c:	0cf10a23          	sb	a5,212(sp)
    1610:	02b00793          	li	a5,43
    1614:	000ada63          	bgez	s5,1628 <_svfprintf_r+0x5d4>
    1618:	01c12783          	lw	a5,28(sp)
    161c:	00100a93          	li	s5,1
    1620:	40fa8ab3          	sub	s5,s5,a5
    1624:	02d00793          	li	a5,45
    1628:	0cf10aa3          	sb	a5,213(sp)
    162c:	00900793          	li	a5,9
    1630:	0157c463          	blt	a5,s5,1638 <_svfprintf_r+0x5e4>
    1634:	13c0206f          	j	3770 <_svfprintf_r+0x271c>
    1638:	0e310b93          	addi	s7,sp,227
    163c:	000b8c93          	mv	s9,s7
    1640:	00a00593          	li	a1,10
    1644:	000a8513          	mv	a0,s5
    1648:	f30ff0ef          	jal	ra,d78 <__modsi3>
    164c:	03050793          	addi	a5,a0,48
    1650:	fefc8fa3          	sb	a5,-1(s9)
    1654:	000a8513          	mv	a0,s5
    1658:	00a00593          	li	a1,10
    165c:	e98ff0ef          	jal	ra,cf4 <__divsi3>
    1660:	000a8a13          	mv	s4,s5
    1664:	06300793          	li	a5,99
    1668:	000c8913          	mv	s2,s9
    166c:	00050a93          	mv	s5,a0
    1670:	fffc8c93          	addi	s9,s9,-1
    1674:	fd47c6e3          	blt	a5,s4,1640 <_svfprintf_r+0x5ec>
    1678:	03050693          	addi	a3,a0,48
    167c:	0ff6f693          	andi	a3,a3,255
    1680:	ffe90793          	addi	a5,s2,-2
    1684:	fedc8fa3          	sb	a3,-1(s9)
    1688:	0177e463          	bltu	a5,s7,1690 <_svfprintf_r+0x63c>
    168c:	34c0206f          	j	39d8 <_svfprintf_r+0x2984>
    1690:	0d610713          	addi	a4,sp,214
    1694:	0080006f          	j	169c <_svfprintf_r+0x648>
    1698:	0007c683          	lbu	a3,0(a5)
    169c:	00d70023          	sb	a3,0(a4)
    16a0:	00178793          	addi	a5,a5,1
    16a4:	00170713          	addi	a4,a4,1
    16a8:	ff7798e3          	bne	a5,s7,1698 <_svfprintf_r+0x644>
    16ac:	0e510793          	addi	a5,sp,229
    16b0:	0d610713          	addi	a4,sp,214
    16b4:	412787b3          	sub	a5,a5,s2
    16b8:	00f707b3          	add	a5,a4,a5
    16bc:	0d410713          	addi	a4,sp,212
    16c0:	40e787b3          	sub	a5,a5,a4
    16c4:	02f12c23          	sw	a5,56(sp)
    16c8:	03812683          	lw	a3,56(sp)
    16cc:	02012703          	lw	a4,32(sp)
    16d0:	00100793          	li	a5,1
    16d4:	00e68cb3          	add	s9,a3,a4
    16d8:	00e7c463          	blt	a5,a4,16e0 <_svfprintf_r+0x68c>
    16dc:	2600206f          	j	393c <_svfprintf_r+0x28e8>
    16e0:	02c12783          	lw	a5,44(sp)
    16e4:	00fc8cb3          	add	s9,s9,a5
    16e8:	05012783          	lw	a5,80(sp)
    16ec:	fffcca93          	not	s5,s9
    16f0:	41fada93          	srai	s5,s5,0x1f
    16f4:	bff7fa13          	andi	s4,a5,-1025
    16f8:	100a6a13          	ori	s4,s4,256
    16fc:	015cfab3          	and	s5,s9,s5
    1700:	02012423          	sw	zero,40(sp)
    1704:	02012223          	sw	zero,36(sp)
    1708:	00012e23          	sw	zero,28(sp)
    170c:	05812783          	lw	a5,88(sp)
    1710:	00079463          	bnez	a5,1718 <_svfprintf_r+0x6c4>
    1714:	0950106f          	j	2fa8 <_svfprintf_r+0x1f54>
    1718:	02d00793          	li	a5,45
    171c:	0cf103a3          	sb	a5,199(sp)
    1720:	00000313          	li	t1,0
    1724:	001a8a93          	addi	s5,s5,1
    1728:	b11ff06f          	j	1238 <_svfprintf_r+0x1e4>
    172c:	0e410613          	addi	a2,sp,228
    1730:	000c0593          	mv	a1,s8
    1734:	000d0513          	mv	a0,s10
    1738:	04612023          	sw	t1,64(sp)
    173c:	20c070ef          	jal	ra,8948 <__ssprint_r>
    1740:	100512e3          	bnez	a0,2044 <_svfprintf_r+0xff0>
    1744:	0ec12783          	lw	a5,236(sp)
    1748:	04012303          	lw	t1,64(sp)
    174c:	10c10d93          	addi	s11,sp,268
    1750:	b41ff06f          	j	1290 <_svfprintf_r+0x23c>
    1754:	0e812703          	lw	a4,232(sp)
    1758:	00178c93          	addi	s9,a5,1
    175c:	02012783          	lw	a5,32(sp)
    1760:	00100693          	li	a3,1
    1764:	016da023          	sw	s6,0(s11)
    1768:	00170493          	addi	s1,a4,1
    176c:	008d8913          	addi	s2,s11,8
    1770:	3af6dee3          	bge	a3,a5,232c <_svfprintf_r+0x12d8>
    1774:	00100793          	li	a5,1
    1778:	00fda223          	sw	a5,4(s11)
    177c:	0f912623          	sw	s9,236(sp)
    1780:	0e912423          	sw	s1,232(sp)
    1784:	00700793          	li	a5,7
    1788:	4e97c8e3          	blt	a5,s1,2478 <_svfprintf_r+0x1424>
    178c:	02c12783          	lw	a5,44(sp)
    1790:	03012703          	lw	a4,48(sp)
    1794:	00148493          	addi	s1,s1,1
    1798:	00fc8cb3          	add	s9,s9,a5
    179c:	00f92223          	sw	a5,4(s2)
    17a0:	00e92023          	sw	a4,0(s2)
    17a4:	0f912623          	sw	s9,236(sp)
    17a8:	0e912423          	sw	s1,232(sp)
    17ac:	00700793          	li	a5,7
    17b0:	00890913          	addi	s2,s2,8
    17b4:	4e97c4e3          	blt	a5,s1,249c <_svfprintf_r+0x1448>
    17b8:	0f012783          	lw	a5,240(sp)
    17bc:	00148693          	addi	a3,s1,1
    17c0:	0a010593          	addi	a1,sp,160
    17c4:	0af12823          	sw	a5,176(sp)
    17c8:	0f412783          	lw	a5,244(sp)
    17cc:	0b010513          	addi	a0,sp,176
    17d0:	00d12e23          	sw	a3,28(sp)
    17d4:	0af12a23          	sw	a5,180(sp)
    17d8:	0f812783          	lw	a5,248(sp)
    17dc:	0a012023          	sw	zero,160(sp)
    17e0:	0a012223          	sw	zero,164(sp)
    17e4:	0af12c23          	sw	a5,184(sp)
    17e8:	0fc12783          	lw	a5,252(sp)
    17ec:	0a012423          	sw	zero,168(sp)
    17f0:	0a012623          	sw	zero,172(sp)
    17f4:	0af12e23          	sw	a5,188(sp)
    17f8:	1e40e0ef          	jal	ra,f9dc <__eqtf2>
    17fc:	01c12683          	lw	a3,28(sp)
    1800:	02012783          	lw	a5,32(sp)
    1804:	00890d93          	addi	s11,s2,8
    1808:	00068713          	mv	a4,a3
    180c:	fff78793          	addi	a5,a5,-1
    1810:	340502e3          	beqz	a0,2354 <_svfprintf_r+0x1300>
    1814:	00fc8cb3          	add	s9,s9,a5
    1818:	001b0813          	addi	a6,s6,1
    181c:	00f92223          	sw	a5,4(s2)
    1820:	01092023          	sw	a6,0(s2)
    1824:	0f912623          	sw	s9,236(sp)
    1828:	0ed12423          	sw	a3,232(sp)
    182c:	00700793          	li	a5,7
    1830:	00d7d463          	bge	a5,a3,1838 <_svfprintf_r+0x7e4>
    1834:	0880106f          	j	28bc <_svfprintf_r+0x1868>
    1838:	01090793          	addi	a5,s2,16
    183c:	00248713          	addi	a4,s1,2
    1840:	000d8913          	mv	s2,s11
    1844:	00078d93          	mv	s11,a5
    1848:	03812603          	lw	a2,56(sp)
    184c:	0d410693          	addi	a3,sp,212
    1850:	00d92023          	sw	a3,0(s2)
    1854:	00cc87b3          	add	a5,s9,a2
    1858:	00c92223          	sw	a2,4(s2)
    185c:	0ef12623          	sw	a5,236(sp)
    1860:	0ee12423          	sw	a4,232(sp)
    1864:	00700693          	li	a3,7
    1868:	a8e6dee3          	bge	a3,a4,1304 <_svfprintf_r+0x2b0>
    186c:	0e410613          	addi	a2,sp,228
    1870:	000c0593          	mv	a1,s8
    1874:	000d0513          	mv	a0,s10
    1878:	0d0070ef          	jal	ra,8948 <__ssprint_r>
    187c:	7c051463          	bnez	a0,2044 <_svfprintf_r+0xff0>
    1880:	0ec12783          	lw	a5,236(sp)
    1884:	10c10d93          	addi	s11,sp,268
    1888:	a7dff06f          	j	1304 <_svfprintf_r+0x2b0>
    188c:	01000693          	li	a3,16
    1890:	0e812703          	lw	a4,232(sp)
    1894:	0096c463          	blt	a3,s1,189c <_svfprintf_r+0x848>
    1898:	53d0106f          	j	35d4 <_svfprintf_r+0x2580>
    189c:	000136b7          	lui	a3,0x13
    18a0:	3c468e93          	addi	t4,a3,964 # 133c4 <blanks.1>
    18a4:	01000913          	li	s2,16
    18a8:	00700a13          	li	s4,7
    18ac:	000e8b13          	mv	s6,t4
    18b0:	00c0006f          	j	18bc <_svfprintf_r+0x868>
    18b4:	ff048493          	addi	s1,s1,-16
    18b8:	04995663          	bge	s2,s1,1904 <_svfprintf_r+0x8b0>
    18bc:	01078793          	addi	a5,a5,16
    18c0:	00170713          	addi	a4,a4,1
    18c4:	016da023          	sw	s6,0(s11)
    18c8:	012da223          	sw	s2,4(s11)
    18cc:	0ef12623          	sw	a5,236(sp)
    18d0:	0ee12423          	sw	a4,232(sp)
    18d4:	008d8d93          	addi	s11,s11,8
    18d8:	fcea5ee3          	bge	s4,a4,18b4 <_svfprintf_r+0x860>
    18dc:	0e410613          	addi	a2,sp,228
    18e0:	000c0593          	mv	a1,s8
    18e4:	000d0513          	mv	a0,s10
    18e8:	060070ef          	jal	ra,8948 <__ssprint_r>
    18ec:	74051c63          	bnez	a0,2044 <_svfprintf_r+0xff0>
    18f0:	ff048493          	addi	s1,s1,-16
    18f4:	0ec12783          	lw	a5,236(sp)
    18f8:	0e812703          	lw	a4,232(sp)
    18fc:	10c10d93          	addi	s11,sp,268
    1900:	fa994ee3          	blt	s2,s1,18bc <_svfprintf_r+0x868>
    1904:	000b0e93          	mv	t4,s6
    1908:	009787b3          	add	a5,a5,s1
    190c:	00170713          	addi	a4,a4,1
    1910:	01dda023          	sw	t4,0(s11)
    1914:	009da223          	sw	s1,4(s11)
    1918:	0ef12623          	sw	a5,236(sp)
    191c:	0ee12423          	sw	a4,232(sp)
    1920:	00700693          	li	a3,7
    1924:	9ee6d8e3          	bge	a3,a4,1314 <_svfprintf_r+0x2c0>
    1928:	0e410613          	addi	a2,sp,228
    192c:	000c0593          	mv	a1,s8
    1930:	000d0513          	mv	a0,s10
    1934:	014070ef          	jal	ra,8948 <__ssprint_r>
    1938:	70051663          	bnez	a0,2044 <_svfprintf_r+0xff0>
    193c:	0ec12783          	lw	a5,236(sp)
    1940:	9d5ff06f          	j	1314 <_svfprintf_r+0x2c0>
    1944:	01412783          	lw	a5,20(sp)
    1948:	0c0103a3          	sb	zero,199(sp)
    194c:	0007ab03          	lw	s6,0(a5)
    1950:	00478913          	addi	s2,a5,4
    1954:	000b1463          	bnez	s6,195c <_svfprintf_r+0x908>
    1958:	2680106f          	j	2bc0 <_svfprintf_r+0x1b6c>
    195c:	fff00793          	li	a5,-1
    1960:	58fc8ce3          	beq	s9,a5,26f8 <_svfprintf_r+0x16a4>
    1964:	000c8613          	mv	a2,s9
    1968:	00000593          	li	a1,0
    196c:	000b0513          	mv	a0,s6
    1970:	01912a23          	sw	s9,20(sp)
    1974:	099050ef          	jal	ra,720c <memchr>
    1978:	00a12823          	sw	a0,16(sp)
    197c:	01412303          	lw	t1,20(sp)
    1980:	00051463          	bnez	a0,1988 <_svfprintf_r+0x934>
    1984:	7e40106f          	j	3168 <_svfprintf_r+0x2114>
    1988:	01012783          	lw	a5,16(sp)
    198c:	41678cb3          	sub	s9,a5,s6
    1990:	0c714783          	lbu	a5,199(sp)
    1994:	fffcca93          	not	s5,s9
    1998:	41fada93          	srai	s5,s5,0x1f
    199c:	01212a23          	sw	s2,20(sp)
    19a0:	00012823          	sw	zero,16(sp)
    19a4:	02012423          	sw	zero,40(sp)
    19a8:	02012223          	sw	zero,36(sp)
    19ac:	00012e23          	sw	zero,28(sp)
    19b0:	015cfab3          	and	s5,s9,s5
    19b4:	00000313          	li	t1,0
    19b8:	880780e3          	beqz	a5,1238 <_svfprintf_r+0x1e4>
    19bc:	001a8a93          	addi	s5,s5,1
    19c0:	879ff06f          	j	1238 <_svfprintf_r+0x1e4>
    19c4:	01412703          	lw	a4,20(sp)
    19c8:	0c0103a3          	sb	zero,199(sp)
    19cc:	00100a93          	li	s5,1
    19d0:	00072783          	lw	a5,0(a4)
    19d4:	00470713          	addi	a4,a4,4
    19d8:	00e12a23          	sw	a4,20(sp)
    19dc:	14f10623          	sb	a5,332(sp)
    19e0:	00100c93          	li	s9,1
    19e4:	14c10b13          	addi	s6,sp,332
    19e8:	83dff06f          	j	1224 <_svfprintf_r+0x1d0>
    19ec:	00044483          	lbu	s1,0(s0)
    19f0:	06800793          	li	a5,104
    19f4:	44f482e3          	beq	s1,a5,2638 <_svfprintf_r+0x15e4>
    19f8:	040a6a13          	ori	s4,s4,64
    19fc:	fc0ff06f          	j	11bc <_svfprintf_r+0x168>
    1a00:	01412683          	lw	a3,20(sp)
    1a04:	020a7793          	andi	a5,s4,32
    1a08:	0006a703          	lw	a4,0(a3)
    1a0c:	00468693          	addi	a3,a3,4
    1a10:	00d12a23          	sw	a3,20(sp)
    1a14:	2e0794e3          	bnez	a5,24fc <_svfprintf_r+0x14a8>
    1a18:	010a7793          	andi	a5,s4,16
    1a1c:	00078463          	beqz	a5,1a24 <_svfprintf_r+0x9d0>
    1a20:	1900106f          	j	2bb0 <_svfprintf_r+0x1b5c>
    1a24:	040a7793          	andi	a5,s4,64
    1a28:	00078463          	beqz	a5,1a30 <_svfprintf_r+0x9dc>
    1a2c:	4140106f          	j	2e40 <_svfprintf_r+0x1dec>
    1a30:	200a7a13          	andi	s4,s4,512
    1a34:	000a1463          	bnez	s4,1a3c <_svfprintf_r+0x9e8>
    1a38:	1780106f          	j	2bb0 <_svfprintf_r+0x1b5c>
    1a3c:	00c12783          	lw	a5,12(sp)
    1a40:	00040b13          	mv	s6,s0
    1a44:	00f70023          	sb	a5,0(a4)
    1a48:	905ff06f          	j	134c <_svfprintf_r+0x2f8>
    1a4c:	00044483          	lbu	s1,0(s0)
    1a50:	06c00793          	li	a5,108
    1a54:	3cf48ae3          	beq	s1,a5,2628 <_svfprintf_r+0x15d4>
    1a58:	010a6a13          	ori	s4,s4,16
    1a5c:	f60ff06f          	j	11bc <_svfprintf_r+0x168>
    1a60:	01412703          	lw	a4,20(sp)
    1a64:	ffff87b7          	lui	a5,0xffff8
    1a68:	8307c793          	xori	a5,a5,-2000
    1a6c:	0cf11423          	sh	a5,200(sp)
    1a70:	00470793          	addi	a5,a4,4
    1a74:	000c8313          	mv	t1,s9
    1a78:	00f12a23          	sw	a5,20(sp)
    1a7c:	00072c83          	lw	s9,0(a4)
    1a80:	000137b7          	lui	a5,0x13
    1a84:	22478793          	addi	a5,a5,548 # 13224 <hex_symbols.0+0x20>
    1a88:	02f12a23          	sw	a5,52(sp)
    1a8c:	00000913          	li	s2,0
    1a90:	002a6b93          	ori	s7,s4,2
    1a94:	00200793          	li	a5,2
    1a98:	07800493          	li	s1,120
    1a9c:	0c0103a3          	sb	zero,199(sp)
    1aa0:	fff00693          	li	a3,-1
    1aa4:	1ed30663          	beq	t1,a3,1c90 <_svfprintf_r+0xc3c>
    1aa8:	012ce6b3          	or	a3,s9,s2
    1aac:	f7fbfa13          	andi	s4,s7,-129
    1ab0:	1c069e63          	bnez	a3,1c8c <_svfprintf_r+0xc38>
    1ab4:	24031463          	bnez	t1,1cfc <_svfprintf_r+0xca8>
    1ab8:	060792e3          	bnez	a5,231c <_svfprintf_r+0x12c8>
    1abc:	001bfc93          	andi	s9,s7,1
    1ac0:	1b010b13          	addi	s6,sp,432
    1ac4:	200c9ae3          	bnez	s9,24d8 <_svfprintf_r+0x1484>
    1ac8:	0c714783          	lbu	a5,199(sp)
    1acc:	00030a93          	mv	s5,t1
    1ad0:	01935463          	bge	t1,s9,1ad8 <_svfprintf_r+0xa84>
    1ad4:	000c8a93          	mv	s5,s9
    1ad8:	00012823          	sw	zero,16(sp)
    1adc:	02012423          	sw	zero,40(sp)
    1ae0:	02012223          	sw	zero,36(sp)
    1ae4:	00012e23          	sw	zero,28(sp)
    1ae8:	ec079ae3          	bnez	a5,19bc <_svfprintf_r+0x968>
    1aec:	f4cff06f          	j	1238 <_svfprintf_r+0x1e4>
    1af0:	000c8313          	mv	t1,s9
    1af4:	010a6a13          	ori	s4,s4,16
    1af8:	020a7793          	andi	a5,s4,32
    1afc:	0c0786e3          	beqz	a5,23c8 <_svfprintf_r+0x1374>
    1b00:	01412783          	lw	a5,20(sp)
    1b04:	00778b13          	addi	s6,a5,7
    1b08:	ff8b7b13          	andi	s6,s6,-8
    1b0c:	000b2c83          	lw	s9,0(s6)
    1b10:	004b2903          	lw	s2,4(s6)
    1b14:	008b0793          	addi	a5,s6,8
    1b18:	00f12a23          	sw	a5,20(sp)
    1b1c:	bffa7b93          	andi	s7,s4,-1025
    1b20:	00000793          	li	a5,0
    1b24:	f79ff06f          	j	1a9c <_svfprintf_r+0xa48>
    1b28:	000c8313          	mv	t1,s9
    1b2c:	010a6b93          	ori	s7,s4,16
    1b30:	020bf793          	andi	a5,s7,32
    1b34:	10078ae3          	beqz	a5,2448 <_svfprintf_r+0x13f4>
    1b38:	01412783          	lw	a5,20(sp)
    1b3c:	00778b13          	addi	s6,a5,7
    1b40:	ff8b7b13          	andi	s6,s6,-8
    1b44:	008b0793          	addi	a5,s6,8
    1b48:	00f12a23          	sw	a5,20(sp)
    1b4c:	000b2c83          	lw	s9,0(s6)
    1b50:	004b2903          	lw	s2,4(s6)
    1b54:	00100793          	li	a5,1
    1b58:	f45ff06f          	j	1a9c <_svfprintf_r+0xa48>
    1b5c:	00044483          	lbu	s1,0(s0)
    1b60:	080a6a13          	ori	s4,s4,128
    1b64:	e58ff06f          	j	11bc <_svfprintf_r+0x168>
    1b68:	00044483          	lbu	s1,0(s0)
    1b6c:	008a6a13          	ori	s4,s4,8
    1b70:	e4cff06f          	j	11bc <_svfprintf_r+0x168>
    1b74:	000c8313          	mv	t1,s9
    1b78:	010a6a13          	ori	s4,s4,16
    1b7c:	020a7793          	andi	a5,s4,32
    1b80:	06078ae3          	beqz	a5,23f4 <_svfprintf_r+0x13a0>
    1b84:	01412783          	lw	a5,20(sp)
    1b88:	00778b13          	addi	s6,a5,7
    1b8c:	ff8b7b13          	andi	s6,s6,-8
    1b90:	004b2783          	lw	a5,4(s6)
    1b94:	000b2c83          	lw	s9,0(s6)
    1b98:	008b0713          	addi	a4,s6,8
    1b9c:	00e12a23          	sw	a4,20(sp)
    1ba0:	00078913          	mv	s2,a5
    1ba4:	0807c0e3          	bltz	a5,2424 <_svfprintf_r+0x13d0>
    1ba8:	fff00793          	li	a5,-1
    1bac:	000a0b93          	mv	s7,s4
    1bb0:	00f30863          	beq	t1,a5,1bc0 <_svfprintf_r+0xb6c>
    1bb4:	012ce7b3          	or	a5,s9,s2
    1bb8:	f7fa7b93          	andi	s7,s4,-129
    1bbc:	74078c63          	beqz	a5,2314 <_svfprintf_r+0x12c0>
    1bc0:	520914e3          	bnez	s2,28e8 <_svfprintf_r+0x1894>
    1bc4:	00900793          	li	a5,9
    1bc8:	5397e0e3          	bltu	a5,s9,28e8 <_svfprintf_r+0x1894>
    1bcc:	030c8c93          	addi	s9,s9,48
    1bd0:	1b9107a3          	sb	s9,431(sp)
    1bd4:	000b8a13          	mv	s4,s7
    1bd8:	00100c93          	li	s9,1
    1bdc:	1af10b13          	addi	s6,sp,431
    1be0:	ee9ff06f          	j	1ac8 <_svfprintf_r+0xa74>
    1be4:	01412783          	lw	a5,20(sp)
    1be8:	00044483          	lbu	s1,0(s0)
    1bec:	0007a983          	lw	s3,0(a5)
    1bf0:	00478793          	addi	a5,a5,4
    1bf4:	00f12a23          	sw	a5,20(sp)
    1bf8:	dc09d263          	bgez	s3,11bc <_svfprintf_r+0x168>
    1bfc:	413009b3          	neg	s3,s3
    1c00:	004a6a13          	ori	s4,s4,4
    1c04:	db8ff06f          	j	11bc <_svfprintf_r+0x168>
    1c08:	00044483          	lbu	s1,0(s0)
    1c0c:	001a6a13          	ori	s4,s4,1
    1c10:	dacff06f          	j	11bc <_svfprintf_r+0x168>
    1c14:	0c714783          	lbu	a5,199(sp)
    1c18:	00044483          	lbu	s1,0(s0)
    1c1c:	da079063          	bnez	a5,11bc <_svfprintf_r+0x168>
    1c20:	02000793          	li	a5,32
    1c24:	0cf103a3          	sb	a5,199(sp)
    1c28:	d94ff06f          	j	11bc <_svfprintf_r+0x168>
    1c2c:	00044483          	lbu	s1,0(s0)
    1c30:	004a6a13          	ori	s4,s4,4
    1c34:	d88ff06f          	j	11bc <_svfprintf_r+0x168>
    1c38:	02b00793          	li	a5,43
    1c3c:	00044483          	lbu	s1,0(s0)
    1c40:	0cf103a3          	sb	a5,199(sp)
    1c44:	d78ff06f          	j	11bc <_svfprintf_r+0x168>
    1c48:	00044483          	lbu	s1,0(s0)
    1c4c:	00140713          	addi	a4,s0,1
    1c50:	01749463          	bne	s1,s7,1c58 <_svfprintf_r+0xc04>
    1c54:	5390106f          	j	398c <_svfprintf_r+0x2938>
    1c58:	fd048693          	addi	a3,s1,-48
    1c5c:	00070413          	mv	s0,a4
    1c60:	00000c93          	li	s9,0
    1c64:	d4daee63          	bltu	s5,a3,11c0 <_svfprintf_r+0x16c>
    1c68:	00044483          	lbu	s1,0(s0)
    1c6c:	002c9793          	slli	a5,s9,0x2
    1c70:	019787b3          	add	a5,a5,s9
    1c74:	00179793          	slli	a5,a5,0x1
    1c78:	00d78cb3          	add	s9,a5,a3
    1c7c:	fd048693          	addi	a3,s1,-48
    1c80:	00140413          	addi	s0,s0,1
    1c84:	fedaf2e3          	bgeu	s5,a3,1c68 <_svfprintf_r+0xc14>
    1c88:	d38ff06f          	j	11c0 <_svfprintf_r+0x16c>
    1c8c:	000a0b93          	mv	s7,s4
    1c90:	00100693          	li	a3,1
    1c94:	f2d786e3          	beq	a5,a3,1bc0 <_svfprintf_r+0xb6c>
    1c98:	00200693          	li	a3,2
    1c9c:	06d78c63          	beq	a5,a3,1d14 <_svfprintf_r+0xcc0>
    1ca0:	1b010b13          	addi	s6,sp,432
    1ca4:	01d91713          	slli	a4,s2,0x1d
    1ca8:	007cf793          	andi	a5,s9,7
    1cac:	003cdc93          	srli	s9,s9,0x3
    1cb0:	03078793          	addi	a5,a5,48
    1cb4:	01976cb3          	or	s9,a4,s9
    1cb8:	00395913          	srli	s2,s2,0x3
    1cbc:	fefb0fa3          	sb	a5,-1(s6)
    1cc0:	012ce733          	or	a4,s9,s2
    1cc4:	000b0613          	mv	a2,s6
    1cc8:	fffb0b13          	addi	s6,s6,-1
    1ccc:	fc071ce3          	bnez	a4,1ca4 <_svfprintf_r+0xc50>
    1cd0:	001bf693          	andi	a3,s7,1
    1cd4:	06068a63          	beqz	a3,1d48 <_svfprintf_r+0xcf4>
    1cd8:	03000693          	li	a3,48
    1cdc:	06d78663          	beq	a5,a3,1d48 <_svfprintf_r+0xcf4>
    1ce0:	ffe60613          	addi	a2,a2,-2
    1ce4:	1b010793          	addi	a5,sp,432
    1ce8:	fedb0fa3          	sb	a3,-1(s6)
    1cec:	40c78cb3          	sub	s9,a5,a2
    1cf0:	000b8a13          	mv	s4,s7
    1cf4:	00060b13          	mv	s6,a2
    1cf8:	dd1ff06f          	j	1ac8 <_svfprintf_r+0xa74>
    1cfc:	00100713          	li	a4,1
    1d00:	00e79463          	bne	a5,a4,1d08 <_svfprintf_r+0xcb4>
    1d04:	2350106f          	j	3738 <_svfprintf_r+0x26e4>
    1d08:	00200713          	li	a4,2
    1d0c:	000a0b93          	mv	s7,s4
    1d10:	f8e798e3          	bne	a5,a4,1ca0 <_svfprintf_r+0xc4c>
    1d14:	03412683          	lw	a3,52(sp)
    1d18:	1b010b13          	addi	s6,sp,432
    1d1c:	00fcf793          	andi	a5,s9,15
    1d20:	00f687b3          	add	a5,a3,a5
    1d24:	0007c703          	lbu	a4,0(a5)
    1d28:	004cdc93          	srli	s9,s9,0x4
    1d2c:	01c91793          	slli	a5,s2,0x1c
    1d30:	0197ecb3          	or	s9,a5,s9
    1d34:	00495913          	srli	s2,s2,0x4
    1d38:	feeb0fa3          	sb	a4,-1(s6)
    1d3c:	012ce7b3          	or	a5,s9,s2
    1d40:	fffb0b13          	addi	s6,s6,-1
    1d44:	fc079ce3          	bnez	a5,1d1c <_svfprintf_r+0xcc8>
    1d48:	1b010793          	addi	a5,sp,432
    1d4c:	41678cb3          	sub	s9,a5,s6
    1d50:	000b8a13          	mv	s4,s7
    1d54:	d75ff06f          	j	1ac8 <_svfprintf_r+0xa74>
    1d58:	06500713          	li	a4,101
    1d5c:	9e975ce3          	bge	a4,s1,1754 <_svfprintf_r+0x700>
    1d60:	0f012703          	lw	a4,240(sp)
    1d64:	0a010593          	addi	a1,sp,160
    1d68:	0b010513          	addi	a0,sp,176
    1d6c:	0ae12823          	sw	a4,176(sp)
    1d70:	0f412703          	lw	a4,244(sp)
    1d74:	04f12023          	sw	a5,64(sp)
    1d78:	0a012023          	sw	zero,160(sp)
    1d7c:	0ae12a23          	sw	a4,180(sp)
    1d80:	0f812703          	lw	a4,248(sp)
    1d84:	0a012223          	sw	zero,164(sp)
    1d88:	0a012423          	sw	zero,168(sp)
    1d8c:	0ae12c23          	sw	a4,184(sp)
    1d90:	0fc12703          	lw	a4,252(sp)
    1d94:	0a012623          	sw	zero,172(sp)
    1d98:	0ae12e23          	sw	a4,188(sp)
    1d9c:	4410d0ef          	jal	ra,f9dc <__eqtf2>
    1da0:	04012783          	lw	a5,64(sp)
    1da4:	3e051c63          	bnez	a0,219c <_svfprintf_r+0x1148>
    1da8:	0e812703          	lw	a4,232(sp)
    1dac:	000136b7          	lui	a3,0x13
    1db0:	25468693          	addi	a3,a3,596 # 13254 <hex_symbols.0+0x50>
    1db4:	00dda023          	sw	a3,0(s11)
    1db8:	00178793          	addi	a5,a5,1
    1dbc:	00100693          	li	a3,1
    1dc0:	00170713          	addi	a4,a4,1
    1dc4:	00dda223          	sw	a3,4(s11)
    1dc8:	0ef12623          	sw	a5,236(sp)
    1dcc:	0ee12423          	sw	a4,232(sp)
    1dd0:	00700693          	li	a3,7
    1dd4:	008d8d93          	addi	s11,s11,8
    1dd8:	4ce6cce3          	blt	a3,a4,2ab0 <_svfprintf_r+0x1a5c>
    1ddc:	0cc12703          	lw	a4,204(sp)
    1de0:	02012683          	lw	a3,32(sp)
    1de4:	6cd75e63          	bge	a4,a3,24c0 <_svfprintf_r+0x146c>
    1de8:	03012703          	lw	a4,48(sp)
    1dec:	02c12683          	lw	a3,44(sp)
    1df0:	008d8d93          	addi	s11,s11,8
    1df4:	feedac23          	sw	a4,-8(s11)
    1df8:	0e812703          	lw	a4,232(sp)
    1dfc:	00d787b3          	add	a5,a5,a3
    1e00:	feddae23          	sw	a3,-4(s11)
    1e04:	00170713          	addi	a4,a4,1
    1e08:	0ef12623          	sw	a5,236(sp)
    1e0c:	0ee12423          	sw	a4,232(sp)
    1e10:	00700693          	li	a3,7
    1e14:	7ee6ca63          	blt	a3,a4,2608 <_svfprintf_r+0x15b4>
    1e18:	02012703          	lw	a4,32(sp)
    1e1c:	fff70493          	addi	s1,a4,-1
    1e20:	ce905263          	blez	s1,1304 <_svfprintf_r+0x2b0>
    1e24:	01000693          	li	a3,16
    1e28:	0e812703          	lw	a4,232(sp)
    1e2c:	4a96d2e3          	bge	a3,s1,2ad0 <_svfprintf_r+0x1a7c>
    1e30:	01000913          	li	s2,16
    1e34:	00700c93          	li	s9,7
    1e38:	00c0006f          	j	1e44 <_svfprintf_r+0xdf0>
    1e3c:	ff048493          	addi	s1,s1,-16
    1e40:	489958e3          	bge	s2,s1,2ad0 <_svfprintf_r+0x1a7c>
    1e44:	00812683          	lw	a3,8(sp)
    1e48:	01078793          	addi	a5,a5,16
    1e4c:	00170713          	addi	a4,a4,1
    1e50:	00dda023          	sw	a3,0(s11)
    1e54:	012da223          	sw	s2,4(s11)
    1e58:	0ef12623          	sw	a5,236(sp)
    1e5c:	0ee12423          	sw	a4,232(sp)
    1e60:	008d8d93          	addi	s11,s11,8
    1e64:	fcecdce3          	bge	s9,a4,1e3c <_svfprintf_r+0xde8>
    1e68:	0e410613          	addi	a2,sp,228
    1e6c:	000c0593          	mv	a1,s8
    1e70:	000d0513          	mv	a0,s10
    1e74:	2d5060ef          	jal	ra,8948 <__ssprint_r>
    1e78:	1c051663          	bnez	a0,2044 <_svfprintf_r+0xff0>
    1e7c:	0ec12783          	lw	a5,236(sp)
    1e80:	0e812703          	lw	a4,232(sp)
    1e84:	10c10d93          	addi	s11,sp,268
    1e88:	fb5ff06f          	j	1e3c <_svfprintf_r+0xde8>
    1e8c:	41598933          	sub	s2,s3,s5
    1e90:	c3205e63          	blez	s2,12cc <_svfprintf_r+0x278>
    1e94:	01000613          	li	a2,16
    1e98:	0e812703          	lw	a4,232(sp)
    1e9c:	09265463          	bge	a2,s2,1f24 <_svfprintf_r+0xed0>
    1ea0:	04812023          	sw	s0,64(sp)
    1ea4:	01000e13          	li	t3,16
    1ea8:	000c0413          	mv	s0,s8
    1eac:	00700b93          	li	s7,7
    1eb0:	00090c13          	mv	s8,s2
    1eb4:	00030913          	mv	s2,t1
    1eb8:	00c0006f          	j	1ec4 <_svfprintf_r+0xe70>
    1ebc:	ff0c0c13          	addi	s8,s8,-16
    1ec0:	058e5a63          	bge	t3,s8,1f14 <_svfprintf_r+0xec0>
    1ec4:	00812683          	lw	a3,8(sp)
    1ec8:	01078793          	addi	a5,a5,16
    1ecc:	00170713          	addi	a4,a4,1
    1ed0:	00dda023          	sw	a3,0(s11)
    1ed4:	01cda223          	sw	t3,4(s11)
    1ed8:	0ef12623          	sw	a5,236(sp)
    1edc:	0ee12423          	sw	a4,232(sp)
    1ee0:	008d8d93          	addi	s11,s11,8
    1ee4:	fcebdce3          	bge	s7,a4,1ebc <_svfprintf_r+0xe68>
    1ee8:	0e410613          	addi	a2,sp,228
    1eec:	00040593          	mv	a1,s0
    1ef0:	000d0513          	mv	a0,s10
    1ef4:	255060ef          	jal	ra,8948 <__ssprint_r>
    1ef8:	420516e3          	bnez	a0,2b24 <_svfprintf_r+0x1ad0>
    1efc:	01000e13          	li	t3,16
    1f00:	ff0c0c13          	addi	s8,s8,-16
    1f04:	0ec12783          	lw	a5,236(sp)
    1f08:	0e812703          	lw	a4,232(sp)
    1f0c:	10c10d93          	addi	s11,sp,268
    1f10:	fb8e4ae3          	blt	t3,s8,1ec4 <_svfprintf_r+0xe70>
    1f14:	00090313          	mv	t1,s2
    1f18:	000c0913          	mv	s2,s8
    1f1c:	00040c13          	mv	s8,s0
    1f20:	04012403          	lw	s0,64(sp)
    1f24:	00812683          	lw	a3,8(sp)
    1f28:	012787b3          	add	a5,a5,s2
    1f2c:	00170713          	addi	a4,a4,1
    1f30:	00dda023          	sw	a3,0(s11)
    1f34:	012da223          	sw	s2,4(s11)
    1f38:	0ef12623          	sw	a5,236(sp)
    1f3c:	0ee12423          	sw	a4,232(sp)
    1f40:	00700693          	li	a3,7
    1f44:	008d8d93          	addi	s11,s11,8
    1f48:	b8e6d263          	bge	a3,a4,12cc <_svfprintf_r+0x278>
    1f4c:	0e410613          	addi	a2,sp,228
    1f50:	000c0593          	mv	a1,s8
    1f54:	000d0513          	mv	a0,s10
    1f58:	04612023          	sw	t1,64(sp)
    1f5c:	1ed060ef          	jal	ra,8948 <__ssprint_r>
    1f60:	0e051263          	bnez	a0,2044 <_svfprintf_r+0xff0>
    1f64:	04012303          	lw	t1,64(sp)
    1f68:	0ec12783          	lw	a5,236(sp)
    1f6c:	10c10d93          	addi	s11,sp,268
    1f70:	41930933          	sub	s2,t1,s9
    1f74:	b7205063          	blez	s2,12d4 <_svfprintf_r+0x280>
    1f78:	01000613          	li	a2,16
    1f7c:	0e812703          	lw	a4,232(sp)
    1f80:	07265463          	bge	a2,s2,1fe8 <_svfprintf_r+0xf94>
    1f84:	01000313          	li	t1,16
    1f88:	00700b93          	li	s7,7
    1f8c:	00c0006f          	j	1f98 <_svfprintf_r+0xf44>
    1f90:	ff090913          	addi	s2,s2,-16
    1f94:	05235a63          	bge	t1,s2,1fe8 <_svfprintf_r+0xf94>
    1f98:	00812683          	lw	a3,8(sp)
    1f9c:	01078793          	addi	a5,a5,16
    1fa0:	00170713          	addi	a4,a4,1
    1fa4:	00dda023          	sw	a3,0(s11)
    1fa8:	006da223          	sw	t1,4(s11)
    1fac:	0ef12623          	sw	a5,236(sp)
    1fb0:	0ee12423          	sw	a4,232(sp)
    1fb4:	008d8d93          	addi	s11,s11,8
    1fb8:	fcebdce3          	bge	s7,a4,1f90 <_svfprintf_r+0xf3c>
    1fbc:	0e410613          	addi	a2,sp,228
    1fc0:	000c0593          	mv	a1,s8
    1fc4:	000d0513          	mv	a0,s10
    1fc8:	181060ef          	jal	ra,8948 <__ssprint_r>
    1fcc:	06051c63          	bnez	a0,2044 <_svfprintf_r+0xff0>
    1fd0:	01000313          	li	t1,16
    1fd4:	ff090913          	addi	s2,s2,-16
    1fd8:	0ec12783          	lw	a5,236(sp)
    1fdc:	0e812703          	lw	a4,232(sp)
    1fe0:	10c10d93          	addi	s11,sp,268
    1fe4:	fb234ae3          	blt	t1,s2,1f98 <_svfprintf_r+0xf44>
    1fe8:	00812683          	lw	a3,8(sp)
    1fec:	012787b3          	add	a5,a5,s2
    1ff0:	00170713          	addi	a4,a4,1
    1ff4:	00dda023          	sw	a3,0(s11)
    1ff8:	012da223          	sw	s2,4(s11)
    1ffc:	0ef12623          	sw	a5,236(sp)
    2000:	0ee12423          	sw	a4,232(sp)
    2004:	00700693          	li	a3,7
    2008:	008d8d93          	addi	s11,s11,8
    200c:	ace6d463          	bge	a3,a4,12d4 <_svfprintf_r+0x280>
    2010:	0e410613          	addi	a2,sp,228
    2014:	000c0593          	mv	a1,s8
    2018:	000d0513          	mv	a0,s10
    201c:	12d060ef          	jal	ra,8948 <__ssprint_r>
    2020:	02051263          	bnez	a0,2044 <_svfprintf_r+0xff0>
    2024:	0ec12783          	lw	a5,236(sp)
    2028:	10c10d93          	addi	s11,sp,268
    202c:	aa8ff06f          	j	12d4 <_svfprintf_r+0x280>
    2030:	0e410613          	addi	a2,sp,228
    2034:	000c0593          	mv	a1,s8
    2038:	000d0513          	mv	a0,s10
    203c:	10d060ef          	jal	ra,8948 <__ssprint_r>
    2040:	ae050663          	beqz	a0,132c <_svfprintf_r+0x2d8>
    2044:	01012b83          	lw	s7,16(sp)
    2048:	b00b8c63          	beqz	s7,1360 <_svfprintf_r+0x30c>
    204c:	000b8593          	mv	a1,s7
    2050:	000d0513          	mv	a0,s10
    2054:	2d5010ef          	jal	ra,3b28 <_free_r>
    2058:	b08ff06f          	j	1360 <_svfprintf_r+0x30c>
    205c:	01000613          	li	a2,16
    2060:	0e812703          	lw	a4,232(sp)
    2064:	00d64463          	blt	a2,a3,206c <_svfprintf_r+0x1018>
    2068:	0f40106f          	j	315c <_svfprintf_r+0x2108>
    206c:	00013637          	lui	a2,0x13
    2070:	3c460e93          	addi	t4,a2,964 # 133c4 <blanks.1>
    2074:	05212023          	sw	s2,64(sp)
    2078:	04812623          	sw	s0,76(sp)
    207c:	04912823          	sw	s1,80(sp)
    2080:	000d0413          	mv	s0,s10
    2084:	000c0493          	mv	s1,s8
    2088:	01000e13          	li	t3,16
    208c:	000b0c13          	mv	s8,s6
    2090:	00700293          	li	t0,7
    2094:	000a8b13          	mv	s6,s5
    2098:	00068d13          	mv	s10,a3
    209c:	00030a93          	mv	s5,t1
    20a0:	000e8913          	mv	s2,t4
    20a4:	00c0006f          	j	20b0 <_svfprintf_r+0x105c>
    20a8:	ff0d0d13          	addi	s10,s10,-16
    20ac:	05ae5a63          	bge	t3,s10,2100 <_svfprintf_r+0x10ac>
    20b0:	01078793          	addi	a5,a5,16
    20b4:	00170713          	addi	a4,a4,1
    20b8:	012da023          	sw	s2,0(s11)
    20bc:	01cda223          	sw	t3,4(s11)
    20c0:	0ef12623          	sw	a5,236(sp)
    20c4:	0ee12423          	sw	a4,232(sp)
    20c8:	008d8d93          	addi	s11,s11,8
    20cc:	fce2dee3          	bge	t0,a4,20a8 <_svfprintf_r+0x1054>
    20d0:	0e410613          	addi	a2,sp,228
    20d4:	00048593          	mv	a1,s1
    20d8:	00040513          	mv	a0,s0
    20dc:	06d060ef          	jal	ra,8948 <__ssprint_r>
    20e0:	1a0512e3          	bnez	a0,2a84 <_svfprintf_r+0x1a30>
    20e4:	01000e13          	li	t3,16
    20e8:	ff0d0d13          	addi	s10,s10,-16
    20ec:	0ec12783          	lw	a5,236(sp)
    20f0:	0e812703          	lw	a4,232(sp)
    20f4:	10c10d93          	addi	s11,sp,268
    20f8:	00700293          	li	t0,7
    20fc:	fbae4ae3          	blt	t3,s10,20b0 <_svfprintf_r+0x105c>
    2100:	000d0693          	mv	a3,s10
    2104:	000a8313          	mv	t1,s5
    2108:	00040d13          	mv	s10,s0
    210c:	000b0a93          	mv	s5,s6
    2110:	00090e93          	mv	t4,s2
    2114:	000c0b13          	mv	s6,s8
    2118:	04c12403          	lw	s0,76(sp)
    211c:	00048c13          	mv	s8,s1
    2120:	04012903          	lw	s2,64(sp)
    2124:	05012483          	lw	s1,80(sp)
    2128:	00d787b3          	add	a5,a5,a3
    212c:	00170713          	addi	a4,a4,1
    2130:	00dda223          	sw	a3,4(s11)
    2134:	01dda023          	sw	t4,0(s11)
    2138:	0ef12623          	sw	a5,236(sp)
    213c:	0ee12423          	sw	a4,232(sp)
    2140:	00700693          	li	a3,7
    2144:	008d8d93          	addi	s11,s11,8
    2148:	90e6d863          	bge	a3,a4,1258 <_svfprintf_r+0x204>
    214c:	0e410613          	addi	a2,sp,228
    2150:	000c0593          	mv	a1,s8
    2154:	000d0513          	mv	a0,s10
    2158:	04612023          	sw	t1,64(sp)
    215c:	7ec060ef          	jal	ra,8948 <__ssprint_r>
    2160:	ee0512e3          	bnez	a0,2044 <_svfprintf_r+0xff0>
    2164:	0ec12783          	lw	a5,236(sp)
    2168:	04012303          	lw	t1,64(sp)
    216c:	10c10d93          	addi	s11,sp,268
    2170:	8e8ff06f          	j	1258 <_svfprintf_r+0x204>
    2174:	0e410613          	addi	a2,sp,228
    2178:	000c0593          	mv	a1,s8
    217c:	000d0513          	mv	a0,s10
    2180:	04612023          	sw	t1,64(sp)
    2184:	7c4060ef          	jal	ra,8948 <__ssprint_r>
    2188:	ea051ee3          	bnez	a0,2044 <_svfprintf_r+0xff0>
    218c:	0ec12783          	lw	a5,236(sp)
    2190:	04012303          	lw	t1,64(sp)
    2194:	10c10d93          	addi	s11,sp,268
    2198:	92cff06f          	j	12c4 <_svfprintf_r+0x270>
    219c:	0cc12603          	lw	a2,204(sp)
    21a0:	00c05ae3          	blez	a2,29b4 <_svfprintf_r+0x1960>
    21a4:	01c12703          	lw	a4,28(sp)
    21a8:	02012683          	lw	a3,32(sp)
    21ac:	00070493          	mv	s1,a4
    21b0:	3ee6c063          	blt	a3,a4,2590 <_svfprintf_r+0x153c>
    21b4:	02905663          	blez	s1,21e0 <_svfprintf_r+0x118c>
    21b8:	0e812703          	lw	a4,232(sp)
    21bc:	009787b3          	add	a5,a5,s1
    21c0:	016da023          	sw	s6,0(s11)
    21c4:	00170713          	addi	a4,a4,1
    21c8:	009da223          	sw	s1,4(s11)
    21cc:	0ef12623          	sw	a5,236(sp)
    21d0:	0ee12423          	sw	a4,232(sp)
    21d4:	00700693          	li	a3,7
    21d8:	008d8d93          	addi	s11,s11,8
    21dc:	40e6cee3          	blt	a3,a4,2df8 <_svfprintf_r+0x1da4>
    21e0:	fff4c713          	not	a4,s1
    21e4:	41f75713          	srai	a4,a4,0x1f
    21e8:	00e4f4b3          	and	s1,s1,a4
    21ec:	01c12703          	lw	a4,28(sp)
    21f0:	409704b3          	sub	s1,a4,s1
    21f4:	48904c63          	bgtz	s1,268c <_svfprintf_r+0x1638>
    21f8:	01c12683          	lw	a3,28(sp)
    21fc:	400a7713          	andi	a4,s4,1024
    2200:	00db04b3          	add	s1,s6,a3
    2204:	50071263          	bnez	a4,2708 <_svfprintf_r+0x16b4>
    2208:	0cc12683          	lw	a3,204(sp)
    220c:	02012703          	lw	a4,32(sp)
    2210:	00e6c663          	blt	a3,a4,221c <_svfprintf_r+0x11c8>
    2214:	001a7713          	andi	a4,s4,1
    2218:	400704e3          	beqz	a4,2e20 <_svfprintf_r+0x1dcc>
    221c:	03012703          	lw	a4,48(sp)
    2220:	02c12603          	lw	a2,44(sp)
    2224:	008d8d93          	addi	s11,s11,8
    2228:	feedac23          	sw	a4,-8(s11)
    222c:	0e812703          	lw	a4,232(sp)
    2230:	00c787b3          	add	a5,a5,a2
    2234:	fecdae23          	sw	a2,-4(s11)
    2238:	00170713          	addi	a4,a4,1
    223c:	0ef12623          	sw	a5,236(sp)
    2240:	0ee12423          	sw	a4,232(sp)
    2244:	00700613          	li	a2,7
    2248:	5ae646e3          	blt	a2,a4,2ff4 <_svfprintf_r+0x1fa0>
    224c:	02012603          	lw	a2,32(sp)
    2250:	00cb0733          	add	a4,s6,a2
    2254:	40970733          	sub	a4,a4,s1
    2258:	40d60633          	sub	a2,a2,a3
    225c:	00060913          	mv	s2,a2
    2260:	00c75463          	bge	a4,a2,2268 <_svfprintf_r+0x1214>
    2264:	00070913          	mv	s2,a4
    2268:	03205663          	blez	s2,2294 <_svfprintf_r+0x1240>
    226c:	0e812703          	lw	a4,232(sp)
    2270:	012787b3          	add	a5,a5,s2
    2274:	009da023          	sw	s1,0(s11)
    2278:	00170713          	addi	a4,a4,1
    227c:	012da223          	sw	s2,4(s11)
    2280:	0ef12623          	sw	a5,236(sp)
    2284:	0ee12423          	sw	a4,232(sp)
    2288:	00700693          	li	a3,7
    228c:	008d8d93          	addi	s11,s11,8
    2290:	70e6c8e3          	blt	a3,a4,31a0 <_svfprintf_r+0x214c>
    2294:	fff94713          	not	a4,s2
    2298:	41f75713          	srai	a4,a4,0x1f
    229c:	00e97733          	and	a4,s2,a4
    22a0:	40e604b3          	sub	s1,a2,a4
    22a4:	00904463          	bgtz	s1,22ac <_svfprintf_r+0x1258>
    22a8:	85cff06f          	j	1304 <_svfprintf_r+0x2b0>
    22ac:	01000693          	li	a3,16
    22b0:	0e812703          	lw	a4,232(sp)
    22b4:	0096dee3          	bge	a3,s1,2ad0 <_svfprintf_r+0x1a7c>
    22b8:	01000913          	li	s2,16
    22bc:	00700c93          	li	s9,7
    22c0:	00c0006f          	j	22cc <_svfprintf_r+0x1278>
    22c4:	ff048493          	addi	s1,s1,-16
    22c8:	009954e3          	bge	s2,s1,2ad0 <_svfprintf_r+0x1a7c>
    22cc:	00812683          	lw	a3,8(sp)
    22d0:	01078793          	addi	a5,a5,16
    22d4:	00170713          	addi	a4,a4,1
    22d8:	00dda023          	sw	a3,0(s11)
    22dc:	012da223          	sw	s2,4(s11)
    22e0:	0ef12623          	sw	a5,236(sp)
    22e4:	0ee12423          	sw	a4,232(sp)
    22e8:	008d8d93          	addi	s11,s11,8
    22ec:	fcecdce3          	bge	s9,a4,22c4 <_svfprintf_r+0x1270>
    22f0:	0e410613          	addi	a2,sp,228
    22f4:	000c0593          	mv	a1,s8
    22f8:	000d0513          	mv	a0,s10
    22fc:	64c060ef          	jal	ra,8948 <__ssprint_r>
    2300:	d40512e3          	bnez	a0,2044 <_svfprintf_r+0xff0>
    2304:	0ec12783          	lw	a5,236(sp)
    2308:	0e812703          	lw	a4,232(sp)
    230c:	10c10d93          	addi	s11,sp,268
    2310:	fb5ff06f          	j	22c4 <_svfprintf_r+0x1270>
    2314:	8a031ce3          	bnez	t1,1bcc <_svfprintf_r+0xb78>
    2318:	000b8a13          	mv	s4,s7
    231c:	00000313          	li	t1,0
    2320:	00000c93          	li	s9,0
    2324:	1b010b13          	addi	s6,sp,432
    2328:	fa0ff06f          	j	1ac8 <_svfprintf_r+0xa74>
    232c:	001a7793          	andi	a5,s4,1
    2330:	c4079263          	bnez	a5,1774 <_svfprintf_r+0x720>
    2334:	00dda223          	sw	a3,4(s11)
    2338:	0f912623          	sw	s9,236(sp)
    233c:	0e912423          	sw	s1,232(sp)
    2340:	00700793          	li	a5,7
    2344:	5697cc63          	blt	a5,s1,28bc <_svfprintf_r+0x1868>
    2348:	00270713          	addi	a4,a4,2
    234c:	010d8d93          	addi	s11,s11,16
    2350:	cf8ff06f          	j	1848 <_svfprintf_r+0x7f4>
    2354:	cef05a63          	blez	a5,1848 <_svfprintf_r+0x7f4>
    2358:	01000613          	li	a2,16
    235c:	00f64463          	blt	a2,a5,2364 <_svfprintf_r+0x1310>
    2360:	6240106f          	j	3984 <_svfprintf_r+0x2930>
    2364:	01000d93          	li	s11,16
    2368:	00700b13          	li	s6,7
    236c:	00078b93          	mv	s7,a5
    2370:	00068493          	mv	s1,a3
    2374:	0100006f          	j	2384 <_svfprintf_r+0x1330>
    2378:	ff0b8b93          	addi	s7,s7,-16
    237c:	0f7ddee3          	bge	s11,s7,2c78 <_svfprintf_r+0x1c24>
    2380:	00148493          	addi	s1,s1,1
    2384:	00812783          	lw	a5,8(sp)
    2388:	010c8c93          	addi	s9,s9,16
    238c:	01b92223          	sw	s11,4(s2)
    2390:	00f92023          	sw	a5,0(s2)
    2394:	0f912623          	sw	s9,236(sp)
    2398:	0e912423          	sw	s1,232(sp)
    239c:	00890913          	addi	s2,s2,8
    23a0:	fc9b5ce3          	bge	s6,s1,2378 <_svfprintf_r+0x1324>
    23a4:	0e410613          	addi	a2,sp,228
    23a8:	000c0593          	mv	a1,s8
    23ac:	000d0513          	mv	a0,s10
    23b0:	598060ef          	jal	ra,8948 <__ssprint_r>
    23b4:	c80518e3          	bnez	a0,2044 <_svfprintf_r+0xff0>
    23b8:	0ec12c83          	lw	s9,236(sp)
    23bc:	0e812483          	lw	s1,232(sp)
    23c0:	10c10913          	addi	s2,sp,268
    23c4:	fb5ff06f          	j	2378 <_svfprintf_r+0x1324>
    23c8:	01412683          	lw	a3,20(sp)
    23cc:	010a7793          	andi	a5,s4,16
    23d0:	00468713          	addi	a4,a3,4
    23d4:	1a079663          	bnez	a5,2580 <_svfprintf_r+0x152c>
    23d8:	040a7793          	andi	a5,s4,64
    23dc:	10078ce3          	beqz	a5,2cf4 <_svfprintf_r+0x1ca0>
    23e0:	01412783          	lw	a5,20(sp)
    23e4:	00000913          	li	s2,0
    23e8:	00e12a23          	sw	a4,20(sp)
    23ec:	0007dc83          	lhu	s9,0(a5)
    23f0:	f2cff06f          	j	1b1c <_svfprintf_r+0xac8>
    23f4:	01412683          	lw	a3,20(sp)
    23f8:	010a7793          	andi	a5,s4,16
    23fc:	00468713          	addi	a4,a3,4
    2400:	16079663          	bnez	a5,256c <_svfprintf_r+0x1518>
    2404:	040a7793          	andi	a5,s4,64
    2408:	0c0786e3          	beqz	a5,2cd4 <_svfprintf_r+0x1c80>
    240c:	01412783          	lw	a5,20(sp)
    2410:	00e12a23          	sw	a4,20(sp)
    2414:	00079c83          	lh	s9,0(a5)
    2418:	41fcd913          	srai	s2,s9,0x1f
    241c:	00090793          	mv	a5,s2
    2420:	f807d463          	bgez	a5,1ba8 <_svfprintf_r+0xb54>
    2424:	019037b3          	snez	a5,s9
    2428:	41200933          	neg	s2,s2
    242c:	40f90933          	sub	s2,s2,a5
    2430:	02d00793          	li	a5,45
    2434:	0cf103a3          	sb	a5,199(sp)
    2438:	41900cb3          	neg	s9,s9
    243c:	000a0b93          	mv	s7,s4
    2440:	00100793          	li	a5,1
    2444:	e5cff06f          	j	1aa0 <_svfprintf_r+0xa4c>
    2448:	01412703          	lw	a4,20(sp)
    244c:	010bf793          	andi	a5,s7,16
    2450:	00470693          	addi	a3,a4,4
    2454:	08079a63          	bnez	a5,24e8 <_svfprintf_r+0x1494>
    2458:	040bf793          	andi	a5,s7,64
    245c:	04078ce3          	beqz	a5,2cb4 <_svfprintf_r+0x1c60>
    2460:	01412783          	lw	a5,20(sp)
    2464:	00000913          	li	s2,0
    2468:	00d12a23          	sw	a3,20(sp)
    246c:	0007dc83          	lhu	s9,0(a5)
    2470:	00100793          	li	a5,1
    2474:	e28ff06f          	j	1a9c <_svfprintf_r+0xa48>
    2478:	0e410613          	addi	a2,sp,228
    247c:	000c0593          	mv	a1,s8
    2480:	000d0513          	mv	a0,s10
    2484:	4c4060ef          	jal	ra,8948 <__ssprint_r>
    2488:	ba051ee3          	bnez	a0,2044 <_svfprintf_r+0xff0>
    248c:	0ec12c83          	lw	s9,236(sp)
    2490:	0e812483          	lw	s1,232(sp)
    2494:	10c10913          	addi	s2,sp,268
    2498:	af4ff06f          	j	178c <_svfprintf_r+0x738>
    249c:	0e410613          	addi	a2,sp,228
    24a0:	000c0593          	mv	a1,s8
    24a4:	000d0513          	mv	a0,s10
    24a8:	4a0060ef          	jal	ra,8948 <__ssprint_r>
    24ac:	b8051ce3          	bnez	a0,2044 <_svfprintf_r+0xff0>
    24b0:	0ec12c83          	lw	s9,236(sp)
    24b4:	0e812483          	lw	s1,232(sp)
    24b8:	10c10913          	addi	s2,sp,268
    24bc:	afcff06f          	j	17b8 <_svfprintf_r+0x764>
    24c0:	001a7713          	andi	a4,s4,1
    24c4:	00071463          	bnez	a4,24cc <_svfprintf_r+0x1478>
    24c8:	e3dfe06f          	j	1304 <_svfprintf_r+0x2b0>
    24cc:	91dff06f          	j	1de8 <_svfprintf_r+0xd94>
    24d0:	000c8313          	mv	t1,s9
    24d4:	ea8ff06f          	j	1b7c <_svfprintf_r+0xb28>
    24d8:	03000793          	li	a5,48
    24dc:	1af107a3          	sb	a5,431(sp)
    24e0:	1af10b13          	addi	s6,sp,431
    24e4:	de4ff06f          	j	1ac8 <_svfprintf_r+0xa74>
    24e8:	00072c83          	lw	s9,0(a4)
    24ec:	00000913          	li	s2,0
    24f0:	00d12a23          	sw	a3,20(sp)
    24f4:	00100793          	li	a5,1
    24f8:	da4ff06f          	j	1a9c <_svfprintf_r+0xa48>
    24fc:	00c12683          	lw	a3,12(sp)
    2500:	00040b13          	mv	s6,s0
    2504:	41f6d793          	srai	a5,a3,0x1f
    2508:	00d72023          	sw	a3,0(a4)
    250c:	00f72223          	sw	a5,4(a4)
    2510:	e3dfe06f          	j	134c <_svfprintf_r+0x2f8>
    2514:	03c12783          	lw	a5,60(sp)
    2518:	00044483          	lbu	s1,0(s0)
    251c:	00079463          	bnez	a5,2524 <_svfprintf_r+0x14d0>
    2520:	c9dfe06f          	j	11bc <_svfprintf_r+0x168>
    2524:	0007c783          	lbu	a5,0(a5)
    2528:	00079463          	bnez	a5,2530 <_svfprintf_r+0x14dc>
    252c:	c91fe06f          	j	11bc <_svfprintf_r+0x168>
    2530:	400a6a13          	ori	s4,s4,1024
    2534:	c89fe06f          	j	11bc <_svfprintf_r+0x168>
    2538:	01412703          	lw	a4,20(sp)
    253c:	00072783          	lw	a5,0(a4)
    2540:	00470713          	addi	a4,a4,4
    2544:	00e12a23          	sw	a4,20(sp)
    2548:	0007a603          	lw	a2,0(a5)
    254c:	0047a683          	lw	a3,4(a5)
    2550:	0087a703          	lw	a4,8(a5)
    2554:	00c7a783          	lw	a5,12(a5)
    2558:	0ec12823          	sw	a2,240(sp)
    255c:	0ed12a23          	sw	a3,244(sp)
    2560:	0ee12c23          	sw	a4,248(sp)
    2564:	0ef12e23          	sw	a5,252(sp)
    2568:	f21fe06f          	j	1488 <_svfprintf_r+0x434>
    256c:	0006ac83          	lw	s9,0(a3)
    2570:	00e12a23          	sw	a4,20(sp)
    2574:	41fcd913          	srai	s2,s9,0x1f
    2578:	00090793          	mv	a5,s2
    257c:	e28ff06f          	j	1ba4 <_svfprintf_r+0xb50>
    2580:	0006ac83          	lw	s9,0(a3)
    2584:	00000913          	li	s2,0
    2588:	00e12a23          	sw	a4,20(sp)
    258c:	d90ff06f          	j	1b1c <_svfprintf_r+0xac8>
    2590:	00068493          	mv	s1,a3
    2594:	c29042e3          	bgtz	s1,21b8 <_svfprintf_r+0x1164>
    2598:	c49ff06f          	j	21e0 <_svfprintf_r+0x118c>
    259c:	000c8313          	mv	t1,s9
    25a0:	000a0b93          	mv	s7,s4
    25a4:	d8cff06f          	j	1b30 <_svfprintf_r+0xadc>
    25a8:	000137b7          	lui	a5,0x13
    25ac:	22478793          	addi	a5,a5,548 # 13224 <hex_symbols.0+0x20>
    25b0:	000c8313          	mv	t1,s9
    25b4:	02f12a23          	sw	a5,52(sp)
    25b8:	020a7793          	andi	a5,s4,32
    25bc:	2a078e63          	beqz	a5,2878 <_svfprintf_r+0x1824>
    25c0:	01412783          	lw	a5,20(sp)
    25c4:	00778b13          	addi	s6,a5,7
    25c8:	ff8b7b13          	andi	s6,s6,-8
    25cc:	000b2c83          	lw	s9,0(s6)
    25d0:	004b2903          	lw	s2,4(s6)
    25d4:	008b0793          	addi	a5,s6,8
    25d8:	00f12a23          	sw	a5,20(sp)
    25dc:	001a7793          	andi	a5,s4,1
    25e0:	00078e63          	beqz	a5,25fc <_svfprintf_r+0x15a8>
    25e4:	012ce7b3          	or	a5,s9,s2
    25e8:	00078a63          	beqz	a5,25fc <_svfprintf_r+0x15a8>
    25ec:	03000793          	li	a5,48
    25f0:	0cf10423          	sb	a5,200(sp)
    25f4:	0c9104a3          	sb	s1,201(sp)
    25f8:	002a6a13          	ori	s4,s4,2
    25fc:	bffa7b93          	andi	s7,s4,-1025
    2600:	00200793          	li	a5,2
    2604:	c98ff06f          	j	1a9c <_svfprintf_r+0xa48>
    2608:	0e410613          	addi	a2,sp,228
    260c:	000c0593          	mv	a1,s8
    2610:	000d0513          	mv	a0,s10
    2614:	334060ef          	jal	ra,8948 <__ssprint_r>
    2618:	a20516e3          	bnez	a0,2044 <_svfprintf_r+0xff0>
    261c:	0ec12783          	lw	a5,236(sp)
    2620:	10c10d93          	addi	s11,sp,268
    2624:	ff4ff06f          	j	1e18 <_svfprintf_r+0xdc4>
    2628:	00144483          	lbu	s1,1(s0)
    262c:	020a6a13          	ori	s4,s4,32
    2630:	00140413          	addi	s0,s0,1
    2634:	b89fe06f          	j	11bc <_svfprintf_r+0x168>
    2638:	00144483          	lbu	s1,1(s0)
    263c:	200a6a13          	ori	s4,s4,512
    2640:	00140413          	addi	s0,s0,1
    2644:	b79fe06f          	j	11bc <_svfprintf_r+0x168>
    2648:	000137b7          	lui	a5,0x13
    264c:	23878793          	addi	a5,a5,568 # 13238 <hex_symbols.0+0x34>
    2650:	000c8313          	mv	t1,s9
    2654:	02f12a23          	sw	a5,52(sp)
    2658:	f61ff06f          	j	25b8 <_svfprintf_r+0x1564>
    265c:	000c8313          	mv	t1,s9
    2660:	c98ff06f          	j	1af8 <_svfprintf_r+0xaa4>
    2664:	04000593          	li	a1,64
    2668:	000d0513          	mv	a0,s10
    266c:	408040ef          	jal	ra,6a74 <_malloc_r>
    2670:	00ac2023          	sw	a0,0(s8)
    2674:	00ac2823          	sw	a0,16(s8)
    2678:	00051463          	bnez	a0,2680 <_svfprintf_r+0x162c>
    267c:	3340106f          	j	39b0 <_svfprintf_r+0x295c>
    2680:	04000793          	li	a5,64
    2684:	00fc2a23          	sw	a5,20(s8)
    2688:	a55fe06f          	j	10dc <_svfprintf_r+0x88>
    268c:	01000693          	li	a3,16
    2690:	0e812703          	lw	a4,232(sp)
    2694:	6a96dc63          	bge	a3,s1,2d4c <_svfprintf_r+0x1cf8>
    2698:	01000c93          	li	s9,16
    269c:	00700693          	li	a3,7
    26a0:	00c0006f          	j	26ac <_svfprintf_r+0x1658>
    26a4:	ff048493          	addi	s1,s1,-16
    26a8:	6a9cd263          	bge	s9,s1,2d4c <_svfprintf_r+0x1cf8>
    26ac:	00812603          	lw	a2,8(sp)
    26b0:	01078793          	addi	a5,a5,16
    26b4:	00170713          	addi	a4,a4,1
    26b8:	00cda023          	sw	a2,0(s11)
    26bc:	019da223          	sw	s9,4(s11)
    26c0:	0ef12623          	sw	a5,236(sp)
    26c4:	0ee12423          	sw	a4,232(sp)
    26c8:	008d8d93          	addi	s11,s11,8
    26cc:	fce6dce3          	bge	a3,a4,26a4 <_svfprintf_r+0x1650>
    26d0:	0e410613          	addi	a2,sp,228
    26d4:	000c0593          	mv	a1,s8
    26d8:	000d0513          	mv	a0,s10
    26dc:	26c060ef          	jal	ra,8948 <__ssprint_r>
    26e0:	960512e3          	bnez	a0,2044 <_svfprintf_r+0xff0>
    26e4:	0ec12783          	lw	a5,236(sp)
    26e8:	0e812703          	lw	a4,232(sp)
    26ec:	10c10d93          	addi	s11,sp,268
    26f0:	00700693          	li	a3,7
    26f4:	fb1ff06f          	j	26a4 <_svfprintf_r+0x1650>
    26f8:	000b0513          	mv	a0,s6
    26fc:	118060ef          	jal	ra,8814 <strlen>
    2700:	00050c93          	mv	s9,a0
    2704:	a8cff06f          	j	1990 <_svfprintf_r+0x93c>
    2708:	02012703          	lw	a4,32(sp)
    270c:	05312623          	sw	s3,76(sp)
    2710:	02412983          	lw	s3,36(sp)
    2714:	01412e23          	sw	s4,28(sp)
    2718:	04812023          	sw	s0,64(sp)
    271c:	03512223          	sw	s5,36(sp)
    2720:	00eb0bb3          	add	s7,s6,a4
    2724:	000d8693          	mv	a3,s11
    2728:	03c12403          	lw	s0,60(sp)
    272c:	000b0d93          	mv	s11,s6
    2730:	04412c83          	lw	s9,68(sp)
    2734:	02812a03          	lw	s4,40(sp)
    2738:	04812a83          	lw	s5,72(sp)
    273c:	00700313          	li	t1,7
    2740:	01000913          	li	s2,16
    2744:	000c0b13          	mv	s6,s8
    2748:	08098863          	beqz	s3,27d8 <_svfprintf_r+0x1784>
    274c:	080a1863          	bnez	s4,27dc <_svfprintf_r+0x1788>
    2750:	fff40413          	addi	s0,s0,-1
    2754:	fff98993          	addi	s3,s3,-1
    2758:	0e812703          	lw	a4,232(sp)
    275c:	019787b3          	add	a5,a5,s9
    2760:	0156a023          	sw	s5,0(a3)
    2764:	00170713          	addi	a4,a4,1
    2768:	0196a223          	sw	s9,4(a3)
    276c:	0ef12623          	sw	a5,236(sp)
    2770:	0ee12423          	sw	a4,232(sp)
    2774:	00868693          	addi	a3,a3,8
    2778:	12e34063          	blt	t1,a4,2898 <_svfprintf_r+0x1844>
    277c:	00044603          	lbu	a2,0(s0)
    2780:	409b8533          	sub	a0,s7,s1
    2784:	00060c13          	mv	s8,a2
    2788:	00c55463          	bge	a0,a2,2790 <_svfprintf_r+0x173c>
    278c:	00050c13          	mv	s8,a0
    2790:	03805663          	blez	s8,27bc <_svfprintf_r+0x1768>
    2794:	0e812603          	lw	a2,232(sp)
    2798:	018787b3          	add	a5,a5,s8
    279c:	0096a023          	sw	s1,0(a3)
    27a0:	00160613          	addi	a2,a2,1
    27a4:	0186a223          	sw	s8,4(a3)
    27a8:	0ef12623          	sw	a5,236(sp)
    27ac:	0ec12423          	sw	a2,232(sp)
    27b0:	34c34663          	blt	t1,a2,2afc <_svfprintf_r+0x1aa8>
    27b4:	00044603          	lbu	a2,0(s0)
    27b8:	00868693          	addi	a3,a3,8
    27bc:	fffc4513          	not	a0,s8
    27c0:	41f55513          	srai	a0,a0,0x1f
    27c4:	00ac7733          	and	a4,s8,a0
    27c8:	40e60c33          	sub	s8,a2,a4
    27cc:	01804c63          	bgtz	s8,27e4 <_svfprintf_r+0x1790>
    27d0:	00c484b3          	add	s1,s1,a2
    27d4:	f6099ce3          	bnez	s3,274c <_svfprintf_r+0x16f8>
    27d8:	720a0463          	beqz	s4,2f00 <_svfprintf_r+0x1eac>
    27dc:	fffa0a13          	addi	s4,s4,-1
    27e0:	f79ff06f          	j	2758 <_svfprintf_r+0x1704>
    27e4:	0e812603          	lw	a2,232(sp)
    27e8:	01894863          	blt	s2,s8,27f8 <_svfprintf_r+0x17a4>
    27ec:	05c0006f          	j	2848 <_svfprintf_r+0x17f4>
    27f0:	ff0c0c13          	addi	s8,s8,-16
    27f4:	05895a63          	bge	s2,s8,2848 <_svfprintf_r+0x17f4>
    27f8:	00812703          	lw	a4,8(sp)
    27fc:	01078793          	addi	a5,a5,16
    2800:	00160613          	addi	a2,a2,1
    2804:	00e6a023          	sw	a4,0(a3)
    2808:	0126a223          	sw	s2,4(a3)
    280c:	0ef12623          	sw	a5,236(sp)
    2810:	0ec12423          	sw	a2,232(sp)
    2814:	00868693          	addi	a3,a3,8
    2818:	fcc35ce3          	bge	t1,a2,27f0 <_svfprintf_r+0x179c>
    281c:	0e410613          	addi	a2,sp,228
    2820:	000b0593          	mv	a1,s6
    2824:	000d0513          	mv	a0,s10
    2828:	120060ef          	jal	ra,8948 <__ssprint_r>
    282c:	5a051a63          	bnez	a0,2de0 <_svfprintf_r+0x1d8c>
    2830:	ff0c0c13          	addi	s8,s8,-16
    2834:	0ec12783          	lw	a5,236(sp)
    2838:	0e812603          	lw	a2,232(sp)
    283c:	10c10693          	addi	a3,sp,268
    2840:	00700313          	li	t1,7
    2844:	fb894ae3          	blt	s2,s8,27f8 <_svfprintf_r+0x17a4>
    2848:	00812703          	lw	a4,8(sp)
    284c:	018787b3          	add	a5,a5,s8
    2850:	00160613          	addi	a2,a2,1
    2854:	00e6a023          	sw	a4,0(a3)
    2858:	0186a223          	sw	s8,4(a3)
    285c:	0ef12623          	sw	a5,236(sp)
    2860:	0ec12423          	sw	a2,232(sp)
    2864:	74c34c63          	blt	t1,a2,2fbc <_svfprintf_r+0x1f68>
    2868:	00044603          	lbu	a2,0(s0)
    286c:	00868693          	addi	a3,a3,8
    2870:	00c484b3          	add	s1,s1,a2
    2874:	f61ff06f          	j	27d4 <_svfprintf_r+0x1780>
    2878:	01412683          	lw	a3,20(sp)
    287c:	010a7793          	andi	a5,s4,16
    2880:	00468713          	addi	a4,a3,4
    2884:	20078863          	beqz	a5,2a94 <_svfprintf_r+0x1a40>
    2888:	0006ac83          	lw	s9,0(a3)
    288c:	00000913          	li	s2,0
    2890:	00e12a23          	sw	a4,20(sp)
    2894:	d49ff06f          	j	25dc <_svfprintf_r+0x1588>
    2898:	0e410613          	addi	a2,sp,228
    289c:	000b0593          	mv	a1,s6
    28a0:	000d0513          	mv	a0,s10
    28a4:	0a4060ef          	jal	ra,8948 <__ssprint_r>
    28a8:	52051c63          	bnez	a0,2de0 <_svfprintf_r+0x1d8c>
    28ac:	0ec12783          	lw	a5,236(sp)
    28b0:	10c10693          	addi	a3,sp,268
    28b4:	00700313          	li	t1,7
    28b8:	ec5ff06f          	j	277c <_svfprintf_r+0x1728>
    28bc:	0e410613          	addi	a2,sp,228
    28c0:	000c0593          	mv	a1,s8
    28c4:	000d0513          	mv	a0,s10
    28c8:	080060ef          	jal	ra,8948 <__ssprint_r>
    28cc:	f6051c63          	bnez	a0,2044 <_svfprintf_r+0xff0>
    28d0:	0e812703          	lw	a4,232(sp)
    28d4:	0ec12c83          	lw	s9,236(sp)
    28d8:	11410d93          	addi	s11,sp,276
    28dc:	00170713          	addi	a4,a4,1
    28e0:	10c10913          	addi	s2,sp,268
    28e4:	f65fe06f          	j	1848 <_svfprintf_r+0x7f4>
    28e8:	1b010b13          	addi	s6,sp,432
    28ec:	00000793          	li	a5,0
    28f0:	00812823          	sw	s0,16(sp)
    28f4:	00912e23          	sw	s1,28(sp)
    28f8:	000b0413          	mv	s0,s6
    28fc:	03312223          	sw	s3,36(sp)
    2900:	000c0b13          	mv	s6,s8
    2904:	000c8493          	mv	s1,s9
    2908:	00090993          	mv	s3,s2
    290c:	03c12c83          	lw	s9,60(sp)
    2910:	400bfa13          	andi	s4,s7,1024
    2914:	0ff00a93          	li	s5,255
    2918:	00030c13          	mv	s8,t1
    291c:	00078913          	mv	s2,a5
    2920:	0240006f          	j	2944 <_svfprintf_r+0x18f0>
    2924:	00a00613          	li	a2,10
    2928:	00000693          	li	a3,0
    292c:	00048513          	mv	a0,s1
    2930:	00098593          	mv	a1,s3
    2934:	7780b0ef          	jal	ra,e0ac <__udivdi3>
    2938:	48098e63          	beqz	s3,2dd4 <_svfprintf_r+0x1d80>
    293c:	00050493          	mv	s1,a0
    2940:	00058993          	mv	s3,a1
    2944:	00a00613          	li	a2,10
    2948:	00000693          	li	a3,0
    294c:	00048513          	mv	a0,s1
    2950:	00098593          	mv	a1,s3
    2954:	5310b0ef          	jal	ra,e684 <__umoddi3>
    2958:	03050513          	addi	a0,a0,48
    295c:	fea40fa3          	sb	a0,-1(s0)
    2960:	00190913          	addi	s2,s2,1
    2964:	fff40413          	addi	s0,s0,-1
    2968:	fa0a0ee3          	beqz	s4,2924 <_svfprintf_r+0x18d0>
    296c:	000cc683          	lbu	a3,0(s9)
    2970:	fad91ae3          	bne	s2,a3,2924 <_svfprintf_r+0x18d0>
    2974:	fb5908e3          	beq	s2,s5,2924 <_svfprintf_r+0x18d0>
    2978:	40099e63          	bnez	s3,2d94 <_svfprintf_r+0x1d40>
    297c:	00900793          	li	a5,9
    2980:	4097ea63          	bltu	a5,s1,2d94 <_svfprintf_r+0x1d40>
    2984:	000c0313          	mv	t1,s8
    2988:	1b010793          	addi	a5,sp,432
    298c:	000b0c13          	mv	s8,s6
    2990:	00040b13          	mv	s6,s0
    2994:	03912e23          	sw	s9,60(sp)
    2998:	01c12483          	lw	s1,28(sp)
    299c:	02412983          	lw	s3,36(sp)
    29a0:	01012403          	lw	s0,16(sp)
    29a4:	03212023          	sw	s2,32(sp)
    29a8:	41678cb3          	sub	s9,a5,s6
    29ac:	000b8a13          	mv	s4,s7
    29b0:	918ff06f          	j	1ac8 <_svfprintf_r+0xa74>
    29b4:	0e812703          	lw	a4,232(sp)
    29b8:	000136b7          	lui	a3,0x13
    29bc:	25468693          	addi	a3,a3,596 # 13254 <hex_symbols.0+0x50>
    29c0:	00dda023          	sw	a3,0(s11)
    29c4:	00178793          	addi	a5,a5,1
    29c8:	00100693          	li	a3,1
    29cc:	00170713          	addi	a4,a4,1
    29d0:	00dda223          	sw	a3,4(s11)
    29d4:	0ef12623          	sw	a5,236(sp)
    29d8:	0ee12423          	sw	a4,232(sp)
    29dc:	00700693          	li	a3,7
    29e0:	008d8d93          	addi	s11,s11,8
    29e4:	06e6ce63          	blt	a3,a4,2a60 <_svfprintf_r+0x1a0c>
    29e8:	1e061a63          	bnez	a2,2bdc <_svfprintf_r+0x1b88>
    29ec:	02012683          	lw	a3,32(sp)
    29f0:	001a7713          	andi	a4,s4,1
    29f4:	00d76733          	or	a4,a4,a3
    29f8:	00071463          	bnez	a4,2a00 <_svfprintf_r+0x19ac>
    29fc:	909fe06f          	j	1304 <_svfprintf_r+0x2b0>
    2a00:	03012703          	lw	a4,48(sp)
    2a04:	02c12683          	lw	a3,44(sp)
    2a08:	008d8893          	addi	a7,s11,8
    2a0c:	00eda023          	sw	a4,0(s11)
    2a10:	0e812703          	lw	a4,232(sp)
    2a14:	00f687b3          	add	a5,a3,a5
    2a18:	00dda223          	sw	a3,4(s11)
    2a1c:	00170713          	addi	a4,a4,1
    2a20:	0ef12623          	sw	a5,236(sp)
    2a24:	0ee12423          	sw	a4,232(sp)
    2a28:	00700693          	li	a3,7
    2a2c:	4ae6c063          	blt	a3,a4,2ecc <_svfprintf_r+0x1e78>
    2a30:	02012683          	lw	a3,32(sp)
    2a34:	00170713          	addi	a4,a4,1
    2a38:	0168a023          	sw	s6,0(a7)
    2a3c:	00f687b3          	add	a5,a3,a5
    2a40:	00d8a223          	sw	a3,4(a7)
    2a44:	0ef12623          	sw	a5,236(sp)
    2a48:	0ee12423          	sw	a4,232(sp)
    2a4c:	00700693          	li	a3,7
    2a50:	00888d93          	addi	s11,a7,8
    2a54:	00e6c463          	blt	a3,a4,2a5c <_svfprintf_r+0x1a08>
    2a58:	8adfe06f          	j	1304 <_svfprintf_r+0x2b0>
    2a5c:	e11fe06f          	j	186c <_svfprintf_r+0x818>
    2a60:	0e410613          	addi	a2,sp,228
    2a64:	000c0593          	mv	a1,s8
    2a68:	000d0513          	mv	a0,s10
    2a6c:	6dd050ef          	jal	ra,8948 <__ssprint_r>
    2a70:	dc051a63          	bnez	a0,2044 <_svfprintf_r+0xff0>
    2a74:	0cc12603          	lw	a2,204(sp)
    2a78:	0ec12783          	lw	a5,236(sp)
    2a7c:	10c10d93          	addi	s11,sp,268
    2a80:	f69ff06f          	j	29e8 <_svfprintf_r+0x1994>
    2a84:	01012b83          	lw	s7,16(sp)
    2a88:	00040d13          	mv	s10,s0
    2a8c:	00048c13          	mv	s8,s1
    2a90:	db8ff06f          	j	2048 <_svfprintf_r+0xff4>
    2a94:	040a7793          	andi	a5,s4,64
    2a98:	26078c63          	beqz	a5,2d10 <_svfprintf_r+0x1cbc>
    2a9c:	01412783          	lw	a5,20(sp)
    2aa0:	00000913          	li	s2,0
    2aa4:	00e12a23          	sw	a4,20(sp)
    2aa8:	0007dc83          	lhu	s9,0(a5)
    2aac:	b31ff06f          	j	25dc <_svfprintf_r+0x1588>
    2ab0:	0e410613          	addi	a2,sp,228
    2ab4:	000c0593          	mv	a1,s8
    2ab8:	000d0513          	mv	a0,s10
    2abc:	68d050ef          	jal	ra,8948 <__ssprint_r>
    2ac0:	d8051263          	bnez	a0,2044 <_svfprintf_r+0xff0>
    2ac4:	0ec12783          	lw	a5,236(sp)
    2ac8:	10c10d93          	addi	s11,sp,268
    2acc:	b10ff06f          	j	1ddc <_svfprintf_r+0xd88>
    2ad0:	00812683          	lw	a3,8(sp)
    2ad4:	009787b3          	add	a5,a5,s1
    2ad8:	009da223          	sw	s1,4(s11)
    2adc:	00dda023          	sw	a3,0(s11)
    2ae0:	00170713          	addi	a4,a4,1
    2ae4:	0ef12623          	sw	a5,236(sp)
    2ae8:	0ee12423          	sw	a4,232(sp)
    2aec:	00700693          	li	a3,7
    2af0:	00e6c463          	blt	a3,a4,2af8 <_svfprintf_r+0x1aa4>
    2af4:	80dfe06f          	j	1300 <_svfprintf_r+0x2ac>
    2af8:	d75fe06f          	j	186c <_svfprintf_r+0x818>
    2afc:	0e410613          	addi	a2,sp,228
    2b00:	000b0593          	mv	a1,s6
    2b04:	000d0513          	mv	a0,s10
    2b08:	641050ef          	jal	ra,8948 <__ssprint_r>
    2b0c:	2c051a63          	bnez	a0,2de0 <_svfprintf_r+0x1d8c>
    2b10:	00044603          	lbu	a2,0(s0)
    2b14:	0ec12783          	lw	a5,236(sp)
    2b18:	10c10693          	addi	a3,sp,268
    2b1c:	00700313          	li	t1,7
    2b20:	c9dff06f          	j	27bc <_svfprintf_r+0x1768>
    2b24:	01012b83          	lw	s7,16(sp)
    2b28:	00040c13          	mv	s8,s0
    2b2c:	d1cff06f          	j	2048 <_svfprintf_r+0xff4>
    2b30:	0f012783          	lw	a5,240(sp)
    2b34:	0a010593          	addi	a1,sp,160
    2b38:	0b010513          	addi	a0,sp,176
    2b3c:	0af12823          	sw	a5,176(sp)
    2b40:	0f412783          	lw	a5,244(sp)
    2b44:	0a012023          	sw	zero,160(sp)
    2b48:	0a012223          	sw	zero,164(sp)
    2b4c:	0af12a23          	sw	a5,180(sp)
    2b50:	0f812783          	lw	a5,248(sp)
    2b54:	0a012423          	sw	zero,168(sp)
    2b58:	0a012623          	sw	zero,172(sp)
    2b5c:	0af12c23          	sw	a5,184(sp)
    2b60:	0fc12783          	lw	a5,252(sp)
    2b64:	0af12e23          	sw	a5,188(sp)
    2b68:	0840d0ef          	jal	ra,fbec <__letf2>
    2b6c:	46054e63          	bltz	a0,2fe8 <_svfprintf_r+0x1f94>
    2b70:	0c714783          	lbu	a5,199(sp)
    2b74:	04700713          	li	a4,71
    2b78:	26975a63          	bge	a4,s1,2dec <_svfprintf_r+0x1d98>
    2b7c:	00013837          	lui	a6,0x13
    2b80:	21880b13          	addi	s6,a6,536 # 13218 <hex_symbols.0+0x14>
    2b84:	00012823          	sw	zero,16(sp)
    2b88:	02012423          	sw	zero,40(sp)
    2b8c:	02012223          	sw	zero,36(sp)
    2b90:	00012e23          	sw	zero,28(sp)
    2b94:	f7fa7a13          	andi	s4,s4,-129
    2b98:	00300a93          	li	s5,3
    2b9c:	00300c93          	li	s9,3
    2ba0:	00000313          	li	t1,0
    2ba4:	00078463          	beqz	a5,2bac <_svfprintf_r+0x1b58>
    2ba8:	e15fe06f          	j	19bc <_svfprintf_r+0x968>
    2bac:	e8cfe06f          	j	1238 <_svfprintf_r+0x1e4>
    2bb0:	00c12783          	lw	a5,12(sp)
    2bb4:	00040b13          	mv	s6,s0
    2bb8:	00f72023          	sw	a5,0(a4)
    2bbc:	f90fe06f          	j	134c <_svfprintf_r+0x2f8>
    2bc0:	00600793          	li	a5,6
    2bc4:	2597ea63          	bltu	a5,s9,2e18 <_svfprintf_r+0x1dc4>
    2bc8:	00013837          	lui	a6,0x13
    2bcc:	000c8a93          	mv	s5,s9
    2bd0:	01212a23          	sw	s2,20(sp)
    2bd4:	24c80b13          	addi	s6,a6,588 # 1324c <hex_symbols.0+0x48>
    2bd8:	e4cfe06f          	j	1224 <_svfprintf_r+0x1d0>
    2bdc:	03012703          	lw	a4,48(sp)
    2be0:	02c12683          	lw	a3,44(sp)
    2be4:	008d8893          	addi	a7,s11,8
    2be8:	00eda023          	sw	a4,0(s11)
    2bec:	0e812703          	lw	a4,232(sp)
    2bf0:	00f687b3          	add	a5,a3,a5
    2bf4:	00dda223          	sw	a3,4(s11)
    2bf8:	00170713          	addi	a4,a4,1
    2bfc:	0ef12623          	sw	a5,236(sp)
    2c00:	0ee12423          	sw	a4,232(sp)
    2c04:	00700693          	li	a3,7
    2c08:	2ce6c263          	blt	a3,a4,2ecc <_svfprintf_r+0x1e78>
    2c0c:	e20652e3          	bgez	a2,2a30 <_svfprintf_r+0x19dc>
    2c10:	ff000693          	li	a3,-16
    2c14:	40c004b3          	neg	s1,a2
    2c18:	2cd650e3          	bge	a2,a3,36d8 <_svfprintf_r+0x2684>
    2c1c:	01000913          	li	s2,16
    2c20:	00700c93          	li	s9,7
    2c24:	00c0006f          	j	2c30 <_svfprintf_r+0x1bdc>
    2c28:	ff048493          	addi	s1,s1,-16
    2c2c:	2a9956e3          	bge	s2,s1,36d8 <_svfprintf_r+0x2684>
    2c30:	00812683          	lw	a3,8(sp)
    2c34:	01078793          	addi	a5,a5,16
    2c38:	00170713          	addi	a4,a4,1
    2c3c:	00d8a023          	sw	a3,0(a7)
    2c40:	0128a223          	sw	s2,4(a7)
    2c44:	0ef12623          	sw	a5,236(sp)
    2c48:	0ee12423          	sw	a4,232(sp)
    2c4c:	00888893          	addi	a7,a7,8
    2c50:	fcecdce3          	bge	s9,a4,2c28 <_svfprintf_r+0x1bd4>
    2c54:	0e410613          	addi	a2,sp,228
    2c58:	000c0593          	mv	a1,s8
    2c5c:	000d0513          	mv	a0,s10
    2c60:	4e9050ef          	jal	ra,8948 <__ssprint_r>
    2c64:	be051063          	bnez	a0,2044 <_svfprintf_r+0xff0>
    2c68:	0ec12783          	lw	a5,236(sp)
    2c6c:	0e812703          	lw	a4,232(sp)
    2c70:	10c10893          	addi	a7,sp,268
    2c74:	fb5ff06f          	j	2c28 <_svfprintf_r+0x1bd4>
    2c78:	000b8793          	mv	a5,s7
    2c7c:	00148713          	addi	a4,s1,1
    2c80:	00890693          	addi	a3,s2,8
    2c84:	00812603          	lw	a2,8(sp)
    2c88:	00fc8cb3          	add	s9,s9,a5
    2c8c:	00f92223          	sw	a5,4(s2)
    2c90:	00c92023          	sw	a2,0(s2)
    2c94:	0f912623          	sw	s9,236(sp)
    2c98:	0ee12423          	sw	a4,232(sp)
    2c9c:	00700793          	li	a5,7
    2ca0:	c0e7cee3          	blt	a5,a4,28bc <_svfprintf_r+0x1868>
    2ca4:	00170713          	addi	a4,a4,1
    2ca8:	00868d93          	addi	s11,a3,8
    2cac:	00068913          	mv	s2,a3
    2cb0:	b99fe06f          	j	1848 <_svfprintf_r+0x7f4>
    2cb4:	200bf793          	andi	a5,s7,512
    2cb8:	1a078863          	beqz	a5,2e68 <_svfprintf_r+0x1e14>
    2cbc:	01412783          	lw	a5,20(sp)
    2cc0:	00000913          	li	s2,0
    2cc4:	00d12a23          	sw	a3,20(sp)
    2cc8:	0007cc83          	lbu	s9,0(a5)
    2ccc:	00100793          	li	a5,1
    2cd0:	dcdfe06f          	j	1a9c <_svfprintf_r+0xa48>
    2cd4:	200a7793          	andi	a5,s4,512
    2cd8:	16078c63          	beqz	a5,2e50 <_svfprintf_r+0x1dfc>
    2cdc:	01412783          	lw	a5,20(sp)
    2ce0:	00e12a23          	sw	a4,20(sp)
    2ce4:	00078c83          	lb	s9,0(a5)
    2ce8:	41fcd913          	srai	s2,s9,0x1f
    2cec:	00090793          	mv	a5,s2
    2cf0:	eb5fe06f          	j	1ba4 <_svfprintf_r+0xb50>
    2cf4:	200a7793          	andi	a5,s4,512
    2cf8:	18078e63          	beqz	a5,2e94 <_svfprintf_r+0x1e40>
    2cfc:	01412783          	lw	a5,20(sp)
    2d00:	00000913          	li	s2,0
    2d04:	00e12a23          	sw	a4,20(sp)
    2d08:	0007cc83          	lbu	s9,0(a5)
    2d0c:	e11fe06f          	j	1b1c <_svfprintf_r+0xac8>
    2d10:	200a7793          	andi	a5,s4,512
    2d14:	16078663          	beqz	a5,2e80 <_svfprintf_r+0x1e2c>
    2d18:	01412783          	lw	a5,20(sp)
    2d1c:	00000913          	li	s2,0
    2d20:	00e12a23          	sw	a4,20(sp)
    2d24:	0007cc83          	lbu	s9,0(a5)
    2d28:	8b5ff06f          	j	25dc <_svfprintf_r+0x1588>
    2d2c:	0fc12783          	lw	a5,252(sp)
    2d30:	1607cc63          	bltz	a5,2ea8 <_svfprintf_r+0x1e54>
    2d34:	0c714783          	lbu	a5,199(sp)
    2d38:	04700713          	li	a4,71
    2d3c:	44975c63          	bge	a4,s1,3194 <_svfprintf_r+0x2140>
    2d40:	00013837          	lui	a6,0x13
    2d44:	22080b13          	addi	s6,a6,544 # 13220 <hex_symbols.0+0x1c>
    2d48:	e3dff06f          	j	2b84 <_svfprintf_r+0x1b30>
    2d4c:	00812683          	lw	a3,8(sp)
    2d50:	009787b3          	add	a5,a5,s1
    2d54:	00170713          	addi	a4,a4,1
    2d58:	00dda023          	sw	a3,0(s11)
    2d5c:	009da223          	sw	s1,4(s11)
    2d60:	0ef12623          	sw	a5,236(sp)
    2d64:	0ee12423          	sw	a4,232(sp)
    2d68:	00700693          	li	a3,7
    2d6c:	008d8d93          	addi	s11,s11,8
    2d70:	c8e6d463          	bge	a3,a4,21f8 <_svfprintf_r+0x11a4>
    2d74:	0e410613          	addi	a2,sp,228
    2d78:	000c0593          	mv	a1,s8
    2d7c:	000d0513          	mv	a0,s10
    2d80:	3c9050ef          	jal	ra,8948 <__ssprint_r>
    2d84:	ac051063          	bnez	a0,2044 <_svfprintf_r+0xff0>
    2d88:	0ec12783          	lw	a5,236(sp)
    2d8c:	10c10d93          	addi	s11,sp,268
    2d90:	c68ff06f          	j	21f8 <_svfprintf_r+0x11a4>
    2d94:	04412783          	lw	a5,68(sp)
    2d98:	04812583          	lw	a1,72(sp)
    2d9c:	00000913          	li	s2,0
    2da0:	40f40433          	sub	s0,s0,a5
    2da4:	00078613          	mv	a2,a5
    2da8:	00040513          	mv	a0,s0
    2dac:	2f5050ef          	jal	ra,88a0 <strncpy>
    2db0:	001cc583          	lbu	a1,1(s9)
    2db4:	00a00613          	li	a2,10
    2db8:	00000693          	li	a3,0
    2dbc:	00b03833          	snez	a6,a1
    2dc0:	00048513          	mv	a0,s1
    2dc4:	00098593          	mv	a1,s3
    2dc8:	010c8cb3          	add	s9,s9,a6
    2dcc:	2e00b0ef          	jal	ra,e0ac <__udivdi3>
    2dd0:	b6dff06f          	j	293c <_svfprintf_r+0x18e8>
    2dd4:	00900793          	li	a5,9
    2dd8:	b697e2e3          	bltu	a5,s1,293c <_svfprintf_r+0x18e8>
    2ddc:	ba9ff06f          	j	2984 <_svfprintf_r+0x1930>
    2de0:	01012b83          	lw	s7,16(sp)
    2de4:	000b0c13          	mv	s8,s6
    2de8:	a60ff06f          	j	2048 <_svfprintf_r+0xff4>
    2dec:	00013837          	lui	a6,0x13
    2df0:	21480b13          	addi	s6,a6,532 # 13214 <hex_symbols.0+0x10>
    2df4:	d91ff06f          	j	2b84 <_svfprintf_r+0x1b30>
    2df8:	0e410613          	addi	a2,sp,228
    2dfc:	000c0593          	mv	a1,s8
    2e00:	000d0513          	mv	a0,s10
    2e04:	345050ef          	jal	ra,8948 <__ssprint_r>
    2e08:	a2051e63          	bnez	a0,2044 <_svfprintf_r+0xff0>
    2e0c:	0ec12783          	lw	a5,236(sp)
    2e10:	10c10d93          	addi	s11,sp,268
    2e14:	bccff06f          	j	21e0 <_svfprintf_r+0x118c>
    2e18:	00600c93          	li	s9,6
    2e1c:	dadff06f          	j	2bc8 <_svfprintf_r+0x1b74>
    2e20:	02012703          	lw	a4,32(sp)
    2e24:	00eb0833          	add	a6,s6,a4
    2e28:	40d70633          	sub	a2,a4,a3
    2e2c:	409806b3          	sub	a3,a6,s1
    2e30:	00060913          	mv	s2,a2
    2e34:	c6c6d063          	bge	a3,a2,2294 <_svfprintf_r+0x1240>
    2e38:	00068913          	mv	s2,a3
    2e3c:	c58ff06f          	j	2294 <_svfprintf_r+0x1240>
    2e40:	00c12783          	lw	a5,12(sp)
    2e44:	00040b13          	mv	s6,s0
    2e48:	00f71023          	sh	a5,0(a4)
    2e4c:	d00fe06f          	j	134c <_svfprintf_r+0x2f8>
    2e50:	01412783          	lw	a5,20(sp)
    2e54:	00e12a23          	sw	a4,20(sp)
    2e58:	0007ac83          	lw	s9,0(a5)
    2e5c:	41fcd913          	srai	s2,s9,0x1f
    2e60:	00090793          	mv	a5,s2
    2e64:	d41fe06f          	j	1ba4 <_svfprintf_r+0xb50>
    2e68:	01412783          	lw	a5,20(sp)
    2e6c:	00000913          	li	s2,0
    2e70:	00d12a23          	sw	a3,20(sp)
    2e74:	0007ac83          	lw	s9,0(a5)
    2e78:	00100793          	li	a5,1
    2e7c:	c21fe06f          	j	1a9c <_svfprintf_r+0xa48>
    2e80:	01412783          	lw	a5,20(sp)
    2e84:	00000913          	li	s2,0
    2e88:	00e12a23          	sw	a4,20(sp)
    2e8c:	0007ac83          	lw	s9,0(a5)
    2e90:	f4cff06f          	j	25dc <_svfprintf_r+0x1588>
    2e94:	01412783          	lw	a5,20(sp)
    2e98:	00000913          	li	s2,0
    2e9c:	00e12a23          	sw	a4,20(sp)
    2ea0:	0007ac83          	lw	s9,0(a5)
    2ea4:	c79fe06f          	j	1b1c <_svfprintf_r+0xac8>
    2ea8:	02d00793          	li	a5,45
    2eac:	0cf103a3          	sb	a5,199(sp)
    2eb0:	e89ff06f          	j	2d38 <_svfprintf_r+0x1ce4>
    2eb4:	0e410613          	addi	a2,sp,228
    2eb8:	000c0593          	mv	a1,s8
    2ebc:	000d0513          	mv	a0,s10
    2ec0:	289050ef          	jal	ra,8948 <__ssprint_r>
    2ec4:	00cc5783          	lhu	a5,12(s8)
    2ec8:	c9cfe06f          	j	1364 <_svfprintf_r+0x310>
    2ecc:	0e410613          	addi	a2,sp,228
    2ed0:	000c0593          	mv	a1,s8
    2ed4:	000d0513          	mv	a0,s10
    2ed8:	271050ef          	jal	ra,8948 <__ssprint_r>
    2edc:	96051463          	bnez	a0,2044 <_svfprintf_r+0xff0>
    2ee0:	0cc12603          	lw	a2,204(sp)
    2ee4:	0ec12783          	lw	a5,236(sp)
    2ee8:	0e812703          	lw	a4,232(sp)
    2eec:	10c10893          	addi	a7,sp,268
    2ef0:	b40650e3          	bgez	a2,2a30 <_svfprintf_r+0x19dc>
    2ef4:	d1dff06f          	j	2c10 <_svfprintf_r+0x1bbc>
    2ef8:	00600313          	li	t1,6
    2efc:	df0fe06f          	j	14ec <_svfprintf_r+0x498>
    2f00:	02012703          	lw	a4,32(sp)
    2f04:	000b0c13          	mv	s8,s6
    2f08:	000d8b13          	mv	s6,s11
    2f0c:	02812e23          	sw	s0,60(sp)
    2f10:	00eb0733          	add	a4,s6,a4
    2f14:	01c12a03          	lw	s4,28(sp)
    2f18:	04012403          	lw	s0,64(sp)
    2f1c:	04c12983          	lw	s3,76(sp)
    2f20:	02412a83          	lw	s5,36(sp)
    2f24:	00068d93          	mv	s11,a3
    2f28:	ae977063          	bgeu	a4,s1,2208 <_svfprintf_r+0x11b4>
    2f2c:	00070493          	mv	s1,a4
    2f30:	ad8ff06f          	j	2208 <_svfprintf_r+0x11b4>
    2f34:	01c12703          	lw	a4,28(sp)
    2f38:	ffd00793          	li	a5,-3
    2f3c:	00f74463          	blt	a4,a5,2f44 <_svfprintf_r+0x1ef0>
    2f40:	00e35a63          	bge	t1,a4,2f54 <_svfprintf_r+0x1f00>
    2f44:	ffe48493          	addi	s1,s1,-2
    2f48:	fdf4f793          	andi	a5,s1,-33
    2f4c:	02f12423          	sw	a5,40(sp)
    2f50:	e90fe06f          	j	15e0 <_svfprintf_r+0x58c>
    2f54:	02012783          	lw	a5,32(sp)
    2f58:	01c12703          	lw	a4,28(sp)
    2f5c:	26f74a63          	blt	a4,a5,31d0 <_svfprintf_r+0x217c>
    2f60:	05012783          	lw	a5,80(sp)
    2f64:	00070c93          	mv	s9,a4
    2f68:	0017f793          	andi	a5,a5,1
    2f6c:	00078663          	beqz	a5,2f78 <_svfprintf_r+0x1f24>
    2f70:	02c12783          	lw	a5,44(sp)
    2f74:	00f70cb3          	add	s9,a4,a5
    2f78:	05012783          	lw	a5,80(sp)
    2f7c:	4007f793          	andi	a5,a5,1024
    2f80:	00078663          	beqz	a5,2f8c <_svfprintf_r+0x1f38>
    2f84:	01c12783          	lw	a5,28(sp)
    2f88:	10f04ee3          	bgtz	a5,38a4 <_svfprintf_r+0x2850>
    2f8c:	fffcca93          	not	s5,s9
    2f90:	41fada93          	srai	s5,s5,0x1f
    2f94:	015cfab3          	and	s5,s9,s5
    2f98:	06700493          	li	s1,103
    2f9c:	02012423          	sw	zero,40(sp)
    2fa0:	02012223          	sw	zero,36(sp)
    2fa4:	f68fe06f          	j	170c <_svfprintf_r+0x6b8>
    2fa8:	0c714783          	lbu	a5,199(sp)
    2fac:	00000313          	li	t1,0
    2fb0:	00078463          	beqz	a5,2fb8 <_svfprintf_r+0x1f64>
    2fb4:	a09fe06f          	j	19bc <_svfprintf_r+0x968>
    2fb8:	a80fe06f          	j	1238 <_svfprintf_r+0x1e4>
    2fbc:	0e410613          	addi	a2,sp,228
    2fc0:	000b0593          	mv	a1,s6
    2fc4:	000d0513          	mv	a0,s10
    2fc8:	181050ef          	jal	ra,8948 <__ssprint_r>
    2fcc:	e0051ae3          	bnez	a0,2de0 <_svfprintf_r+0x1d8c>
    2fd0:	00044603          	lbu	a2,0(s0)
    2fd4:	0ec12783          	lw	a5,236(sp)
    2fd8:	10c10693          	addi	a3,sp,268
    2fdc:	00700313          	li	t1,7
    2fe0:	00c484b3          	add	s1,s1,a2
    2fe4:	ff0ff06f          	j	27d4 <_svfprintf_r+0x1780>
    2fe8:	02d00793          	li	a5,45
    2fec:	0cf103a3          	sb	a5,199(sp)
    2ff0:	b85ff06f          	j	2b74 <_svfprintf_r+0x1b20>
    2ff4:	0e410613          	addi	a2,sp,228
    2ff8:	000c0593          	mv	a1,s8
    2ffc:	000d0513          	mv	a0,s10
    3000:	149050ef          	jal	ra,8948 <__ssprint_r>
    3004:	00050463          	beqz	a0,300c <_svfprintf_r+0x1fb8>
    3008:	83cff06f          	j	2044 <_svfprintf_r+0xff0>
    300c:	0cc12683          	lw	a3,204(sp)
    3010:	0ec12783          	lw	a5,236(sp)
    3014:	10c10d93          	addi	s11,sp,268
    3018:	a34ff06f          	j	224c <_svfprintf_r+0x11f8>
    301c:	0b010a93          	addi	s5,sp,176
    3020:	0d010793          	addi	a5,sp,208
    3024:	0cc10713          	addi	a4,sp,204
    3028:	00030693          	mv	a3,t1
    302c:	0dc10813          	addi	a6,sp,220
    3030:	00300613          	li	a2,3
    3034:	000a8593          	mv	a1,s5
    3038:	000d0513          	mv	a0,s10
    303c:	04612023          	sw	t1,64(sp)
    3040:	0bc12823          	sw	t3,176(sp)
    3044:	03c12223          	sw	t3,36(sp)
    3048:	0bd12a23          	sw	t4,180(sp)
    304c:	03d12023          	sw	t4,32(sp)
    3050:	0be12c23          	sw	t5,184(sp)
    3054:	01e12e23          	sw	t5,28(sp)
    3058:	0b712e23          	sw	s7,188(sp)
    305c:	6f8020ef          	jal	ra,5754 <_ldtoa_r>
    3060:	00054703          	lbu	a4,0(a0)
    3064:	03000793          	li	a5,48
    3068:	01c12f03          	lw	t5,28(sp)
    306c:	02012e83          	lw	t4,32(sp)
    3070:	02412e03          	lw	t3,36(sp)
    3074:	04012303          	lw	t1,64(sp)
    3078:	00050b13          	mv	s6,a0
    307c:	0a010c93          	addi	s9,sp,160
    3080:	06f70c63          	beq	a4,a5,30f8 <_svfprintf_r+0x20a4>
    3084:	0cc12783          	lw	a5,204(sp)
    3088:	006787b3          	add	a5,a5,t1
    308c:	00fb0933          	add	s2,s6,a5
    3090:	000c8593          	mv	a1,s9
    3094:	000a8513          	mv	a0,s5
    3098:	00612e23          	sw	t1,28(sp)
    309c:	0bc12823          	sw	t3,176(sp)
    30a0:	0bd12a23          	sw	t4,180(sp)
    30a4:	0be12c23          	sw	t5,184(sp)
    30a8:	0b712e23          	sw	s7,188(sp)
    30ac:	0a012023          	sw	zero,160(sp)
    30b0:	0a012223          	sw	zero,164(sp)
    30b4:	0a012423          	sw	zero,168(sp)
    30b8:	0a012623          	sw	zero,172(sp)
    30bc:	1210c0ef          	jal	ra,f9dc <__eqtf2>
    30c0:	01c12303          	lw	t1,28(sp)
    30c4:	00090693          	mv	a3,s2
    30c8:	00051463          	bnez	a0,30d0 <_svfprintf_r+0x207c>
    30cc:	ce4fe06f          	j	15b0 <_svfprintf_r+0x55c>
    30d0:	0dc12683          	lw	a3,220(sp)
    30d4:	0126e463          	bltu	a3,s2,30dc <_svfprintf_r+0x2088>
    30d8:	cd8fe06f          	j	15b0 <_svfprintf_r+0x55c>
    30dc:	03000713          	li	a4,48
    30e0:	00168793          	addi	a5,a3,1
    30e4:	0cf12e23          	sw	a5,220(sp)
    30e8:	00e68023          	sb	a4,0(a3)
    30ec:	0dc12683          	lw	a3,220(sp)
    30f0:	ff26e8e3          	bltu	a3,s2,30e0 <_svfprintf_r+0x208c>
    30f4:	cbcfe06f          	j	15b0 <_svfprintf_r+0x55c>
    30f8:	0a010c93          	addi	s9,sp,160
    30fc:	000c8593          	mv	a1,s9
    3100:	000a8513          	mv	a0,s5
    3104:	04612023          	sw	t1,64(sp)
    3108:	0bc12823          	sw	t3,176(sp)
    310c:	03c12223          	sw	t3,36(sp)
    3110:	0bd12a23          	sw	t4,180(sp)
    3114:	03d12023          	sw	t4,32(sp)
    3118:	0be12c23          	sw	t5,184(sp)
    311c:	01e12e23          	sw	t5,28(sp)
    3120:	0b712e23          	sw	s7,188(sp)
    3124:	0a012023          	sw	zero,160(sp)
    3128:	0a012223          	sw	zero,164(sp)
    312c:	0a012423          	sw	zero,168(sp)
    3130:	0a012623          	sw	zero,172(sp)
    3134:	0a90c0ef          	jal	ra,f9dc <__eqtf2>
    3138:	01c12f03          	lw	t5,28(sp)
    313c:	02012e83          	lw	t4,32(sp)
    3140:	02412e03          	lw	t3,36(sp)
    3144:	04012303          	lw	t1,64(sp)
    3148:	f2050ee3          	beqz	a0,3084 <_svfprintf_r+0x2030>
    314c:	00100793          	li	a5,1
    3150:	406787b3          	sub	a5,a5,t1
    3154:	0cf12623          	sw	a5,204(sp)
    3158:	f31ff06f          	j	3088 <_svfprintf_r+0x2034>
    315c:	00013637          	lui	a2,0x13
    3160:	3c460e93          	addi	t4,a2,964 # 133c4 <blanks.1>
    3164:	fc5fe06f          	j	2128 <_svfprintf_r+0x10d4>
    3168:	0c714783          	lbu	a5,199(sp)
    316c:	01212a23          	sw	s2,20(sp)
    3170:	02012423          	sw	zero,40(sp)
    3174:	02012223          	sw	zero,36(sp)
    3178:	00012e23          	sw	zero,28(sp)
    317c:	00030a93          	mv	s5,t1
    3180:	00030c93          	mv	s9,t1
    3184:	00000313          	li	t1,0
    3188:	00078463          	beqz	a5,3190 <_svfprintf_r+0x213c>
    318c:	831fe06f          	j	19bc <_svfprintf_r+0x968>
    3190:	8a8fe06f          	j	1238 <_svfprintf_r+0x1e4>
    3194:	00013837          	lui	a6,0x13
    3198:	21c80b13          	addi	s6,a6,540 # 1321c <hex_symbols.0+0x18>
    319c:	9e9ff06f          	j	2b84 <_svfprintf_r+0x1b30>
    31a0:	0e410613          	addi	a2,sp,228
    31a4:	000c0593          	mv	a1,s8
    31a8:	000d0513          	mv	a0,s10
    31ac:	79c050ef          	jal	ra,8948 <__ssprint_r>
    31b0:	00050463          	beqz	a0,31b8 <_svfprintf_r+0x2164>
    31b4:	e91fe06f          	j	2044 <_svfprintf_r+0xff0>
    31b8:	0cc12483          	lw	s1,204(sp)
    31bc:	02012703          	lw	a4,32(sp)
    31c0:	0ec12783          	lw	a5,236(sp)
    31c4:	10c10d93          	addi	s11,sp,268
    31c8:	40970633          	sub	a2,a4,s1
    31cc:	8c8ff06f          	j	2294 <_svfprintf_r+0x1240>
    31d0:	02012783          	lw	a5,32(sp)
    31d4:	02c12703          	lw	a4,44(sp)
    31d8:	06700493          	li	s1,103
    31dc:	00e78cb3          	add	s9,a5,a4
    31e0:	01c12783          	lw	a5,28(sp)
    31e4:	74f05063          	blez	a5,3924 <_svfprintf_r+0x28d0>
    31e8:	05012783          	lw	a5,80(sp)
    31ec:	4007f793          	andi	a5,a5,1024
    31f0:	6a079c63          	bnez	a5,38a8 <_svfprintf_r+0x2854>
    31f4:	fffcca93          	not	s5,s9
    31f8:	41fada93          	srai	s5,s5,0x1f
    31fc:	015cfab3          	and	s5,s9,s5
    3200:	d9dff06f          	j	2f9c <_svfprintf_r+0x1f48>
    3204:	05012783          	lw	a5,80(sp)
    3208:	01c12703          	lw	a4,28(sp)
    320c:	0017f793          	andi	a5,a5,1
    3210:	0067e7b3          	or	a5,a5,t1
    3214:	72e05e63          	blez	a4,3950 <_svfprintf_r+0x28fc>
    3218:	54079263          	bnez	a5,375c <_svfprintf_r+0x2708>
    321c:	01c12c83          	lw	s9,28(sp)
    3220:	06600493          	li	s1,102
    3224:	fc5ff06f          	j	31e8 <_svfprintf_r+0x2194>
    3228:	03000793          	li	a5,48
    322c:	0cf10423          	sb	a5,200(sp)
    3230:	05800793          	li	a5,88
    3234:	002a6713          	ori	a4,s4,2
    3238:	0cf104a3          	sb	a5,201(sp)
    323c:	04e12823          	sw	a4,80(sp)
    3240:	06300793          	li	a5,99
    3244:	00012823          	sw	zero,16(sp)
    3248:	14c10b13          	addi	s6,sp,332
    324c:	4667c463          	blt	a5,t1,36b4 <_svfprintf_r+0x2660>
    3250:	0fc12b83          	lw	s7,252(sp)
    3254:	fdf4f793          	andi	a5,s1,-33
    3258:	02f12423          	sw	a5,40(sp)
    325c:	04012c23          	sw	zero,88(sp)
    3260:	0f012e03          	lw	t3,240(sp)
    3264:	0f412e83          	lw	t4,244(sp)
    3268:	0f812f03          	lw	t5,248(sp)
    326c:	102a6a13          	ori	s4,s4,258
    3270:	340bc863          	bltz	s7,35c0 <_svfprintf_r+0x256c>
    3274:	06100793          	li	a5,97
    3278:	52f48463          	beq	s1,a5,37a0 <_svfprintf_r+0x274c>
    327c:	04100793          	li	a5,65
    3280:	00f48463          	beq	s1,a5,3288 <_svfprintf_r+0x2234>
    3284:	a94fe06f          	j	1518 <_svfprintf_r+0x4c4>
    3288:	0b010a93          	addi	s5,sp,176
    328c:	000a8513          	mv	a0,s5
    3290:	04612a23          	sw	t1,84(sp)
    3294:	0bc12823          	sw	t3,176(sp)
    3298:	0bd12a23          	sw	t4,180(sp)
    329c:	0be12c23          	sw	t5,184(sp)
    32a0:	0b712e23          	sw	s7,188(sp)
    32a4:	7d80f0ef          	jal	ra,12a7c <__trunctfdf2>
    32a8:	0cc10613          	addi	a2,sp,204
    32ac:	2d0050ef          	jal	ra,857c <frexp>
    32b0:	00058613          	mv	a2,a1
    32b4:	00050593          	mv	a1,a0
    32b8:	000a8513          	mv	a0,s5
    32bc:	5cc0f0ef          	jal	ra,12888 <__extenddftf2>
    32c0:	0b012783          	lw	a5,176(sp)
    32c4:	0a010c93          	addi	s9,sp,160
    32c8:	09010913          	addi	s2,sp,144
    32cc:	08f12823          	sw	a5,144(sp)
    32d0:	0b412783          	lw	a5,180(sp)
    32d4:	08010613          	addi	a2,sp,128
    32d8:	00090593          	mv	a1,s2
    32dc:	08f12a23          	sw	a5,148(sp)
    32e0:	0b812783          	lw	a5,184(sp)
    32e4:	000c8513          	mv	a0,s9
    32e8:	04c12023          	sw	a2,64(sp)
    32ec:	08f12c23          	sw	a5,152(sp)
    32f0:	0bc12783          	lw	a5,188(sp)
    32f4:	08012023          	sw	zero,128(sp)
    32f8:	08012223          	sw	zero,132(sp)
    32fc:	08f12e23          	sw	a5,156(sp)
    3300:	3ffc07b7          	lui	a5,0x3ffc0
    3304:	08f12623          	sw	a5,140(sp)
    3308:	08012423          	sw	zero,136(sp)
    330c:	2250c0ef          	jal	ra,fd30 <__multf3>
    3310:	0a012683          	lw	a3,160(sp)
    3314:	0a412e03          	lw	t3,164(sp)
    3318:	0a812e83          	lw	t4,168(sp)
    331c:	0ac12f03          	lw	t5,172(sp)
    3320:	000c8593          	mv	a1,s9
    3324:	000a8513          	mv	a0,s5
    3328:	0ad12823          	sw	a3,176(sp)
    332c:	04d12623          	sw	a3,76(sp)
    3330:	0bc12a23          	sw	t3,180(sp)
    3334:	03c12223          	sw	t3,36(sp)
    3338:	0bd12c23          	sw	t4,184(sp)
    333c:	03d12023          	sw	t4,32(sp)
    3340:	0be12e23          	sw	t5,188(sp)
    3344:	01e12e23          	sw	t5,28(sp)
    3348:	0a012023          	sw	zero,160(sp)
    334c:	0a012223          	sw	zero,164(sp)
    3350:	0a012423          	sw	zero,168(sp)
    3354:	0a012623          	sw	zero,172(sp)
    3358:	6840c0ef          	jal	ra,f9dc <__eqtf2>
    335c:	01c12f03          	lw	t5,28(sp)
    3360:	02012e83          	lw	t4,32(sp)
    3364:	02412e03          	lw	t3,36(sp)
    3368:	04c12683          	lw	a3,76(sp)
    336c:	05412303          	lw	t1,84(sp)
    3370:	00051663          	bnez	a0,337c <_svfprintf_r+0x2328>
    3374:	00100793          	li	a5,1
    3378:	0cf12623          	sw	a5,204(sp)
    337c:	000137b7          	lui	a5,0x13
    3380:	23878793          	addi	a5,a5,568 # 13238 <hex_symbols.0+0x34>
    3384:	02f12223          	sw	a5,36(sp)
    3388:	fff30713          	addi	a4,t1,-1
    338c:	05412e23          	sw	s4,92(sp)
    3390:	06912223          	sw	s1,100(sp)
    3394:	07b12823          	sw	s11,112(sp)
    3398:	07a12a23          	sw	s10,116(sp)
    339c:	07812c23          	sw	s8,120(sp)
    33a0:	000b0b93          	mv	s7,s6
    33a4:	06812023          	sw	s0,96(sp)
    33a8:	07312423          	sw	s3,104(sp)
    33ac:	06612623          	sw	t1,108(sp)
    33b0:	00070c13          	mv	s8,a4
    33b4:	07612e23          	sw	s6,124(sp)
    33b8:	00068d13          	mv	s10,a3
    33bc:	000e0d93          	mv	s11,t3
    33c0:	000e8493          	mv	s1,t4
    33c4:	000f0a13          	mv	s4,t5
    33c8:	0480006f          	j	3410 <_svfprintf_r+0x23bc>
    33cc:	000c8593          	mv	a1,s9
    33d0:	000a8513          	mv	a0,s5
    33d4:	02c12023          	sw	a2,32(sp)
    33d8:	01f12e23          	sw	t6,28(sp)
    33dc:	0bf12c23          	sw	t6,184(sp)
    33e0:	0ac12e23          	sw	a2,188(sp)
    33e4:	0b612823          	sw	s6,176(sp)
    33e8:	0b312a23          	sw	s3,180(sp)
    33ec:	0a012023          	sw	zero,160(sp)
    33f0:	0a012223          	sw	zero,164(sp)
    33f4:	0a012423          	sw	zero,168(sp)
    33f8:	0a012623          	sw	zero,172(sp)
    33fc:	5e00c0ef          	jal	ra,f9dc <__eqtf2>
    3400:	fffc0c13          	addi	s8,s8,-1
    3404:	00048f93          	mv	t6,s1
    3408:	000a0613          	mv	a2,s4
    340c:	0e050263          	beqz	a0,34f0 <_svfprintf_r+0x249c>
    3410:	400307b7          	lui	a5,0x40030
    3414:	00090613          	mv	a2,s2
    3418:	000c8593          	mv	a1,s9
    341c:	000a8513          	mv	a0,s5
    3420:	08f12e23          	sw	a5,156(sp)
    3424:	0ba12023          	sw	s10,160(sp)
    3428:	0bb12223          	sw	s11,164(sp)
    342c:	0a912423          	sw	s1,168(sp)
    3430:	0b412623          	sw	s4,172(sp)
    3434:	08012823          	sw	zero,144(sp)
    3438:	08012a23          	sw	zero,148(sp)
    343c:	08012c23          	sw	zero,152(sp)
    3440:	0f10c0ef          	jal	ra,fd30 <__multf3>
    3444:	000a8513          	mv	a0,s5
    3448:	1d80f0ef          	jal	ra,12620 <__fixtfsi>
    344c:	00050593          	mv	a1,a0
    3450:	00050413          	mv	s0,a0
    3454:	000a8513          	mv	a0,s5
    3458:	0b012983          	lw	s3,176(sp)
    345c:	0b412483          	lw	s1,180(sp)
    3460:	0b812b03          	lw	s6,184(sp)
    3464:	0bc12a03          	lw	s4,188(sp)
    3468:	2cc0f0ef          	jal	ra,12734 <__floatsitf>
    346c:	0b012683          	lw	a3,176(sp)
    3470:	04012603          	lw	a2,64(sp)
    3474:	00090593          	mv	a1,s2
    3478:	08d12023          	sw	a3,128(sp)
    347c:	0b412683          	lw	a3,180(sp)
    3480:	000c8513          	mv	a0,s9
    3484:	09312823          	sw	s3,144(sp)
    3488:	08d12223          	sw	a3,132(sp)
    348c:	0b812683          	lw	a3,184(sp)
    3490:	08912a23          	sw	s1,148(sp)
    3494:	09612c23          	sw	s6,152(sp)
    3498:	08d12423          	sw	a3,136(sp)
    349c:	0bc12683          	lw	a3,188(sp)
    34a0:	09412e23          	sw	s4,156(sp)
    34a4:	08d12623          	sw	a3,140(sp)
    34a8:	4050d0ef          	jal	ra,110ac <__subtf3>
    34ac:	02412783          	lw	a5,36(sp)
    34b0:	0a012b03          	lw	s6,160(sp)
    34b4:	0a412983          	lw	s3,164(sp)
    34b8:	008786b3          	add	a3,a5,s0
    34bc:	0006c683          	lbu	a3,0(a3)
    34c0:	0a812f83          	lw	t6,168(sp)
    34c4:	0ac12603          	lw	a2,172(sp)
    34c8:	05712a23          	sw	s7,84(sp)
    34cc:	00db8023          	sb	a3,0(s7)
    34d0:	05812623          	sw	s8,76(sp)
    34d4:	fff00793          	li	a5,-1
    34d8:	001b8b93          	addi	s7,s7,1
    34dc:	000b0d13          	mv	s10,s6
    34e0:	00098d93          	mv	s11,s3
    34e4:	000f8493          	mv	s1,t6
    34e8:	00060a13          	mv	s4,a2
    34ec:	eefc10e3          	bne	s8,a5,33cc <_svfprintf_r+0x2378>
    34f0:	06c12303          	lw	t1,108(sp)
    34f4:	000b0393          	mv	t2,s6
    34f8:	00098293          	mv	t0,s3
    34fc:	3ffe0937          	lui	s2,0x3ffe0
    3500:	000c8593          	mv	a1,s9
    3504:	000a8513          	mv	a0,s5
    3508:	02612023          	sw	t1,32(sp)
    350c:	00812e23          	sw	s0,28(sp)
    3510:	05c12a03          	lw	s4,92(sp)
    3514:	06412483          	lw	s1,100(sp)
    3518:	06012403          	lw	s0,96(sp)
    351c:	0a712823          	sw	t2,176(sp)
    3520:	06712223          	sw	t2,100(sp)
    3524:	0a512a23          	sw	t0,180(sp)
    3528:	06512023          	sw	t0,96(sp)
    352c:	0bf12c23          	sw	t6,184(sp)
    3530:	05f12e23          	sw	t6,92(sp)
    3534:	0ac12e23          	sw	a2,188(sp)
    3538:	04c12023          	sw	a2,64(sp)
    353c:	0a012023          	sw	zero,160(sp)
    3540:	0a012223          	sw	zero,164(sp)
    3544:	0a012423          	sw	zero,168(sp)
    3548:	0b212623          	sw	s2,172(sp)
    354c:	55c0c0ef          	jal	ra,faa8 <__getf2>
    3550:	07012d83          	lw	s11,112(sp)
    3554:	07412d03          	lw	s10,116(sp)
    3558:	07812c03          	lw	s8,120(sp)
    355c:	07c12b03          	lw	s6,124(sp)
    3560:	06812983          	lw	s3,104(sp)
    3564:	02012303          	lw	t1,32(sp)
    3568:	0ea04663          	bgtz	a0,3654 <_svfprintf_r+0x2600>
    356c:	000c8593          	mv	a1,s9
    3570:	000a8513          	mv	a0,s5
    3574:	4680c0ef          	jal	ra,f9dc <__eqtf2>
    3578:	02012303          	lw	t1,32(sp)
    357c:	00051863          	bnez	a0,358c <_svfprintf_r+0x2538>
    3580:	01c12783          	lw	a5,28(sp)
    3584:	0017fc93          	andi	s9,a5,1
    3588:	0c0c9663          	bnez	s9,3654 <_svfprintf_r+0x2600>
    358c:	04c12783          	lw	a5,76(sp)
    3590:	03000693          	li	a3,48
    3594:	00178713          	addi	a4,a5,1 # 40030001 <__crt0_copy_data_src_begin+0x4001c1a5>
    3598:	00eb8733          	add	a4,s7,a4
    359c:	0007c863          	bltz	a5,35ac <_svfprintf_r+0x2558>
    35a0:	001b8b93          	addi	s7,s7,1
    35a4:	fedb8fa3          	sb	a3,-1(s7)
    35a8:	feeb9ce3          	bne	s7,a4,35a0 <_svfprintf_r+0x254c>
    35ac:	416b87b3          	sub	a5,s7,s6
    35b0:	02f12023          	sw	a5,32(sp)
    35b4:	804fe06f          	j	15b8 <_svfprintf_r+0x564>
    35b8:	00012823          	sw	zero,16(sp)
    35bc:	00078a13          	mv	s4,a5
    35c0:	800007b7          	lui	a5,0x80000
    35c4:	0177cbb3          	xor	s7,a5,s7
    35c8:	02d00793          	li	a5,45
    35cc:	04f12c23          	sw	a5,88(sp)
    35d0:	ca5ff06f          	j	3274 <_svfprintf_r+0x2220>
    35d4:	000136b7          	lui	a3,0x13
    35d8:	3c468e93          	addi	t4,a3,964 # 133c4 <blanks.1>
    35dc:	b2cfe06f          	j	1908 <_svfprintf_r+0x8b4>
    35e0:	00130913          	addi	s2,t1,1
    35e4:	0b010a93          	addi	s5,sp,176
    35e8:	0dc10813          	addi	a6,sp,220
    35ec:	0d010793          	addi	a5,sp,208
    35f0:	0cc10713          	addi	a4,sp,204
    35f4:	00090693          	mv	a3,s2
    35f8:	00200613          	li	a2,2
    35fc:	000a8593          	mv	a1,s5
    3600:	000d0513          	mv	a0,s10
    3604:	04612023          	sw	t1,64(sp)
    3608:	0bc12823          	sw	t3,176(sp)
    360c:	03c12223          	sw	t3,36(sp)
    3610:	0bd12a23          	sw	t4,180(sp)
    3614:	03d12023          	sw	t4,32(sp)
    3618:	0be12c23          	sw	t5,184(sp)
    361c:	01e12e23          	sw	t5,28(sp)
    3620:	0b712e23          	sw	s7,188(sp)
    3624:	130020ef          	jal	ra,5754 <_ldtoa_r>
    3628:	01c12f03          	lw	t5,28(sp)
    362c:	02012e83          	lw	t4,32(sp)
    3630:	02412e03          	lw	t3,36(sp)
    3634:	04012303          	lw	t1,64(sp)
    3638:	00050b13          	mv	s6,a0
    363c:	012b0933          	add	s2,s6,s2
    3640:	0a010c93          	addi	s9,sp,160
    3644:	a4dff06f          	j	3090 <_svfprintf_r+0x203c>
    3648:	006b0933          	add	s2,s6,t1
    364c:	0a010c93          	addi	s9,sp,160
    3650:	a41ff06f          	j	3090 <_svfprintf_r+0x203c>
    3654:	05412783          	lw	a5,84(sp)
    3658:	000b8713          	mv	a4,s7
    365c:	0cf12e23          	sw	a5,220(sp)
    3660:	02412783          	lw	a5,36(sp)
    3664:	fffbc683          	lbu	a3,-1(s7)
    3668:	00f7c603          	lbu	a2,15(a5) # 8000000f <__ctr0_io_space_begin+0x8000020f>
    366c:	02c69063          	bne	a3,a2,368c <_svfprintf_r+0x2638>
    3670:	03000593          	li	a1,48
    3674:	feb70fa3          	sb	a1,-1(a4)
    3678:	0dc12703          	lw	a4,220(sp)
    367c:	fff70793          	addi	a5,a4,-1
    3680:	0cf12e23          	sw	a5,220(sp)
    3684:	fff74683          	lbu	a3,-1(a4)
    3688:	fed606e3          	beq	a2,a3,3674 <_svfprintf_r+0x2620>
    368c:	00168613          	addi	a2,a3,1
    3690:	03900593          	li	a1,57
    3694:	0ff67613          	andi	a2,a2,255
    3698:	00b68663          	beq	a3,a1,36a4 <_svfprintf_r+0x2650>
    369c:	fec70fa3          	sb	a2,-1(a4)
    36a0:	f0dff06f          	j	35ac <_svfprintf_r+0x2558>
    36a4:	02412783          	lw	a5,36(sp)
    36a8:	00a7c603          	lbu	a2,10(a5)
    36ac:	fec70fa3          	sb	a2,-1(a4)
    36b0:	efdff06f          	j	35ac <_svfprintf_r+0x2558>
    36b4:	00130593          	addi	a1,t1,1
    36b8:	000d0513          	mv	a0,s10
    36bc:	00612823          	sw	t1,16(sp)
    36c0:	3b4030ef          	jal	ra,6a74 <_malloc_r>
    36c4:	01012303          	lw	t1,16(sp)
    36c8:	00050b13          	mv	s6,a0
    36cc:	2e050c63          	beqz	a0,39c4 <_svfprintf_r+0x2970>
    36d0:	00a12823          	sw	a0,16(sp)
    36d4:	b7dff06f          	j	3250 <_svfprintf_r+0x21fc>
    36d8:	00812683          	lw	a3,8(sp)
    36dc:	009787b3          	add	a5,a5,s1
    36e0:	00170713          	addi	a4,a4,1
    36e4:	00d8a023          	sw	a3,0(a7)
    36e8:	0098a223          	sw	s1,4(a7)
    36ec:	0ef12623          	sw	a5,236(sp)
    36f0:	0ee12423          	sw	a4,232(sp)
    36f4:	00700693          	li	a3,7
    36f8:	00888893          	addi	a7,a7,8
    36fc:	b2e6da63          	bge	a3,a4,2a30 <_svfprintf_r+0x19dc>
    3700:	0e410613          	addi	a2,sp,228
    3704:	000c0593          	mv	a1,s8
    3708:	000d0513          	mv	a0,s10
    370c:	23c050ef          	jal	ra,8948 <__ssprint_r>
    3710:	00050463          	beqz	a0,3718 <_svfprintf_r+0x26c4>
    3714:	931fe06f          	j	2044 <_svfprintf_r+0xff0>
    3718:	0ec12783          	lw	a5,236(sp)
    371c:	0e812703          	lw	a4,232(sp)
    3720:	10c10893          	addi	a7,sp,268
    3724:	b0cff06f          	j	2a30 <_svfprintf_r+0x19dc>
    3728:	03000793          	li	a5,48
    372c:	0cf10423          	sb	a5,200(sp)
    3730:	07800793          	li	a5,120
    3734:	b01ff06f          	j	3234 <_svfprintf_r+0x21e0>
    3738:	000a0b93          	mv	s7,s4
    373c:	c90fe06f          	j	1bcc <_svfprintf_r+0xb78>
    3740:	00030463          	beqz	t1,3748 <_svfprintf_r+0x26f4>
    3744:	da9fd06f          	j	14ec <_svfprintf_r+0x498>
    3748:	00100313          	li	t1,1
    374c:	da1fd06f          	j	14ec <_svfprintf_r+0x498>
    3750:	fff00793          	li	a5,-1
    3754:	00f12623          	sw	a5,12(sp)
    3758:	c19fd06f          	j	1370 <_svfprintf_r+0x31c>
    375c:	02c12783          	lw	a5,44(sp)
    3760:	06600493          	li	s1,102
    3764:	00f70cb3          	add	s9,a4,a5
    3768:	006c8cb3          	add	s9,s9,t1
    376c:	a7dff06f          	j	31e8 <_svfprintf_r+0x2194>
    3770:	0d610793          	addi	a5,sp,214
    3774:	00071863          	bnez	a4,3784 <_svfprintf_r+0x2730>
    3778:	03000793          	li	a5,48
    377c:	0cf10b23          	sb	a5,214(sp)
    3780:	0d710793          	addi	a5,sp,215
    3784:	1b010713          	addi	a4,sp,432
    3788:	030a8a93          	addi	s5,s5,48
    378c:	40e78733          	sub	a4,a5,a4
    3790:	01578023          	sb	s5,0(a5)
    3794:	0dd70793          	addi	a5,a4,221
    3798:	02f12c23          	sw	a5,56(sp)
    379c:	f2dfd06f          	j	16c8 <_svfprintf_r+0x674>
    37a0:	0b010a93          	addi	s5,sp,176
    37a4:	000a8513          	mv	a0,s5
    37a8:	04612a23          	sw	t1,84(sp)
    37ac:	0bc12823          	sw	t3,176(sp)
    37b0:	0bd12a23          	sw	t4,180(sp)
    37b4:	0be12c23          	sw	t5,184(sp)
    37b8:	0b712e23          	sw	s7,188(sp)
    37bc:	2c00f0ef          	jal	ra,12a7c <__trunctfdf2>
    37c0:	0cc10613          	addi	a2,sp,204
    37c4:	5b9040ef          	jal	ra,857c <frexp>
    37c8:	00058613          	mv	a2,a1
    37cc:	00050593          	mv	a1,a0
    37d0:	000a8513          	mv	a0,s5
    37d4:	0b40f0ef          	jal	ra,12888 <__extenddftf2>
    37d8:	0b012783          	lw	a5,176(sp)
    37dc:	0a010c93          	addi	s9,sp,160
    37e0:	09010913          	addi	s2,sp,144
    37e4:	08f12823          	sw	a5,144(sp)
    37e8:	0b412783          	lw	a5,180(sp)
    37ec:	08010613          	addi	a2,sp,128
    37f0:	00090593          	mv	a1,s2
    37f4:	08f12a23          	sw	a5,148(sp)
    37f8:	0b812783          	lw	a5,184(sp)
    37fc:	000c8513          	mv	a0,s9
    3800:	04c12023          	sw	a2,64(sp)
    3804:	08f12c23          	sw	a5,152(sp)
    3808:	0bc12783          	lw	a5,188(sp)
    380c:	08012023          	sw	zero,128(sp)
    3810:	08012223          	sw	zero,132(sp)
    3814:	08f12e23          	sw	a5,156(sp)
    3818:	3ffc07b7          	lui	a5,0x3ffc0
    381c:	08f12623          	sw	a5,140(sp)
    3820:	08012423          	sw	zero,136(sp)
    3824:	50c0c0ef          	jal	ra,fd30 <__multf3>
    3828:	0a012683          	lw	a3,160(sp)
    382c:	0a412e03          	lw	t3,164(sp)
    3830:	0a812e83          	lw	t4,168(sp)
    3834:	0ac12f03          	lw	t5,172(sp)
    3838:	000c8593          	mv	a1,s9
    383c:	000a8513          	mv	a0,s5
    3840:	0ad12823          	sw	a3,176(sp)
    3844:	04d12623          	sw	a3,76(sp)
    3848:	0bc12a23          	sw	t3,180(sp)
    384c:	03c12223          	sw	t3,36(sp)
    3850:	0bd12c23          	sw	t4,184(sp)
    3854:	03d12023          	sw	t4,32(sp)
    3858:	0be12e23          	sw	t5,188(sp)
    385c:	01e12e23          	sw	t5,28(sp)
    3860:	0a012023          	sw	zero,160(sp)
    3864:	0a012223          	sw	zero,164(sp)
    3868:	0a012423          	sw	zero,168(sp)
    386c:	0a012623          	sw	zero,172(sp)
    3870:	16c0c0ef          	jal	ra,f9dc <__eqtf2>
    3874:	01c12f03          	lw	t5,28(sp)
    3878:	02012e83          	lw	t4,32(sp)
    387c:	02412e03          	lw	t3,36(sp)
    3880:	04c12683          	lw	a3,76(sp)
    3884:	05412303          	lw	t1,84(sp)
    3888:	00051663          	bnez	a0,3894 <_svfprintf_r+0x2840>
    388c:	00100793          	li	a5,1
    3890:	0cf12623          	sw	a5,204(sp)
    3894:	000137b7          	lui	a5,0x13
    3898:	22478793          	addi	a5,a5,548 # 13224 <hex_symbols.0+0x20>
    389c:	02f12223          	sw	a5,36(sp)
    38a0:	ae9ff06f          	j	3388 <_svfprintf_r+0x2334>
    38a4:	06700493          	li	s1,103
    38a8:	03c12603          	lw	a2,60(sp)
    38ac:	0ff00713          	li	a4,255
    38b0:	00064783          	lbu	a5,0(a2)
    38b4:	12e78863          	beq	a5,a4,39e4 <_svfprintf_r+0x2990>
    38b8:	01c12683          	lw	a3,28(sp)
    38bc:	00000513          	li	a0,0
    38c0:	00000593          	li	a1,0
    38c4:	00d7de63          	bge	a5,a3,38e0 <_svfprintf_r+0x288c>
    38c8:	40f686b3          	sub	a3,a3,a5
    38cc:	00164783          	lbu	a5,1(a2)
    38d0:	04078463          	beqz	a5,3918 <_svfprintf_r+0x28c4>
    38d4:	00158593          	addi	a1,a1,1
    38d8:	00160613          	addi	a2,a2,1
    38dc:	fee794e3          	bne	a5,a4,38c4 <_svfprintf_r+0x2870>
    38e0:	00d12e23          	sw	a3,28(sp)
    38e4:	02c12e23          	sw	a2,60(sp)
    38e8:	02b12223          	sw	a1,36(sp)
    38ec:	02a12423          	sw	a0,40(sp)
    38f0:	02412783          	lw	a5,36(sp)
    38f4:	02812703          	lw	a4,40(sp)
    38f8:	04412583          	lw	a1,68(sp)
    38fc:	00e78533          	add	a0,a5,a4
    3900:	b40fd0ef          	jal	ra,c40 <__mulsi3>
    3904:	01950cb3          	add	s9,a0,s9
    3908:	fffcca93          	not	s5,s9
    390c:	41fada93          	srai	s5,s5,0x1f
    3910:	015cfab3          	and	s5,s9,s5
    3914:	df9fd06f          	j	170c <_svfprintf_r+0x6b8>
    3918:	00064783          	lbu	a5,0(a2)
    391c:	00150513          	addi	a0,a0,1
    3920:	fbdff06f          	j	38dc <_svfprintf_r+0x2888>
    3924:	40fc8cb3          	sub	s9,s9,a5
    3928:	001c8c93          	addi	s9,s9,1
    392c:	fffcca93          	not	s5,s9
    3930:	41fada93          	srai	s5,s5,0x1f
    3934:	015cfab3          	and	s5,s9,s5
    3938:	e64ff06f          	j	2f9c <_svfprintf_r+0x1f48>
    393c:	05012783          	lw	a5,80(sp)
    3940:	0017f793          	andi	a5,a5,1
    3944:	00079463          	bnez	a5,394c <_svfprintf_r+0x28f8>
    3948:	da1fd06f          	j	16e8 <_svfprintf_r+0x694>
    394c:	d95fd06f          	j	16e0 <_svfprintf_r+0x68c>
    3950:	00079a63          	bnez	a5,3964 <_svfprintf_r+0x2910>
    3954:	00100a93          	li	s5,1
    3958:	06600493          	li	s1,102
    395c:	00100c93          	li	s9,1
    3960:	e3cff06f          	j	2f9c <_svfprintf_r+0x1f48>
    3964:	02c12783          	lw	a5,44(sp)
    3968:	06600493          	li	s1,102
    396c:	00178c93          	addi	s9,a5,1
    3970:	006c8cb3          	add	s9,s9,t1
    3974:	fffcca93          	not	s5,s9
    3978:	41fada93          	srai	s5,s5,0x1f
    397c:	015cfab3          	and	s5,s9,s5
    3980:	e1cff06f          	j	2f9c <_svfprintf_r+0x1f48>
    3984:	000d8693          	mv	a3,s11
    3988:	afcff06f          	j	2c84 <_svfprintf_r+0x1c30>
    398c:	01412783          	lw	a5,20(sp)
    3990:	0007ac83          	lw	s9,0(a5)
    3994:	00478793          	addi	a5,a5,4
    3998:	000cd463          	bgez	s9,39a0 <_svfprintf_r+0x294c>
    399c:	fff00c93          	li	s9,-1
    39a0:	00144483          	lbu	s1,1(s0)
    39a4:	00f12a23          	sw	a5,20(sp)
    39a8:	00070413          	mv	s0,a4
    39ac:	811fd06f          	j	11bc <_svfprintf_r+0x168>
    39b0:	00c00793          	li	a5,12
    39b4:	00fd2023          	sw	a5,0(s10)
    39b8:	fff00793          	li	a5,-1
    39bc:	00f12623          	sw	a5,12(sp)
    39c0:	9b1fd06f          	j	1370 <_svfprintf_r+0x31c>
    39c4:	00cc5783          	lhu	a5,12(s8)
    39c8:	0407e713          	ori	a4,a5,64
    39cc:	00070793          	mv	a5,a4
    39d0:	00ec1623          	sh	a4,12(s8)
    39d4:	991fd06f          	j	1364 <_svfprintf_r+0x310>
    39d8:	00200793          	li	a5,2
    39dc:	02f12c23          	sw	a5,56(sp)
    39e0:	ce9fd06f          	j	16c8 <_svfprintf_r+0x674>
    39e4:	02012423          	sw	zero,40(sp)
    39e8:	02012223          	sw	zero,36(sp)
    39ec:	f05ff06f          	j	38f0 <_svfprintf_r+0x289c>
    39f0:	00030913          	mv	s2,t1
    39f4:	c49ff06f          	j	363c <_svfprintf_r+0x25e8>

000039f8 <_malloc_trim_r>:
    39f8:	fe010113          	addi	sp,sp,-32
    39fc:	01312623          	sw	s3,12(sp)
    3a00:	00812c23          	sw	s0,24(sp)
    3a04:	00912a23          	sw	s1,20(sp)
    3a08:	01212823          	sw	s2,16(sp)
    3a0c:	01412423          	sw	s4,8(sp)
    3a10:	00112e23          	sw	ra,28(sp)
    3a14:	00058a13          	mv	s4,a1
    3a18:	00050913          	mv	s2,a0
    3a1c:	c2818993          	addi	s3,gp,-984 # 80000428 <__malloc_av_>
    3a20:	0b5030ef          	jal	ra,72d4 <__malloc_lock>
    3a24:	0089a703          	lw	a4,8(s3)
    3a28:	000017b7          	lui	a5,0x1
    3a2c:	fef78413          	addi	s0,a5,-17 # fef <_vsnprintf_r+0x5f>
    3a30:	00472483          	lw	s1,4(a4)
    3a34:	41440433          	sub	s0,s0,s4
    3a38:	ffc4f493          	andi	s1,s1,-4
    3a3c:	00940433          	add	s0,s0,s1
    3a40:	00c45413          	srli	s0,s0,0xc
    3a44:	fff40413          	addi	s0,s0,-1
    3a48:	00c41413          	slli	s0,s0,0xc
    3a4c:	00f44e63          	blt	s0,a5,3a68 <_malloc_trim_r+0x70>
    3a50:	00000593          	li	a1,0
    3a54:	00090513          	mv	a0,s2
    3a58:	3cd040ef          	jal	ra,8624 <_sbrk_r>
    3a5c:	0089a783          	lw	a5,8(s3)
    3a60:	009787b3          	add	a5,a5,s1
    3a64:	02f50863          	beq	a0,a5,3a94 <_malloc_trim_r+0x9c>
    3a68:	00090513          	mv	a0,s2
    3a6c:	06d030ef          	jal	ra,72d8 <__malloc_unlock>
    3a70:	01c12083          	lw	ra,28(sp)
    3a74:	01812403          	lw	s0,24(sp)
    3a78:	01412483          	lw	s1,20(sp)
    3a7c:	01012903          	lw	s2,16(sp)
    3a80:	00c12983          	lw	s3,12(sp)
    3a84:	00812a03          	lw	s4,8(sp)
    3a88:	00000513          	li	a0,0
    3a8c:	02010113          	addi	sp,sp,32
    3a90:	00008067          	ret
    3a94:	408005b3          	neg	a1,s0
    3a98:	00090513          	mv	a0,s2
    3a9c:	389040ef          	jal	ra,8624 <_sbrk_r>
    3aa0:	fff00793          	li	a5,-1
    3aa4:	04f50863          	beq	a0,a5,3af4 <_malloc_trim_r+0xfc>
    3aa8:	2d018793          	addi	a5,gp,720 # 80000ad0 <__malloc_current_mallinfo>
    3aac:	0007a703          	lw	a4,0(a5)
    3ab0:	0089a683          	lw	a3,8(s3)
    3ab4:	408484b3          	sub	s1,s1,s0
    3ab8:	0014e493          	ori	s1,s1,1
    3abc:	40870433          	sub	s0,a4,s0
    3ac0:	00090513          	mv	a0,s2
    3ac4:	0096a223          	sw	s1,4(a3)
    3ac8:	0087a023          	sw	s0,0(a5)
    3acc:	00d030ef          	jal	ra,72d8 <__malloc_unlock>
    3ad0:	01c12083          	lw	ra,28(sp)
    3ad4:	01812403          	lw	s0,24(sp)
    3ad8:	01412483          	lw	s1,20(sp)
    3adc:	01012903          	lw	s2,16(sp)
    3ae0:	00c12983          	lw	s3,12(sp)
    3ae4:	00812a03          	lw	s4,8(sp)
    3ae8:	00100513          	li	a0,1
    3aec:	02010113          	addi	sp,sp,32
    3af0:	00008067          	ret
    3af4:	00000593          	li	a1,0
    3af8:	00090513          	mv	a0,s2
    3afc:	329040ef          	jal	ra,8624 <_sbrk_r>
    3b00:	0089a703          	lw	a4,8(s3)
    3b04:	00f00693          	li	a3,15
    3b08:	40e507b3          	sub	a5,a0,a4
    3b0c:	f4f6dee3          	bge	a3,a5,3a68 <_malloc_trim_r+0x70>
    3b10:	1c01a683          	lw	a3,448(gp) # 800009c0 <__malloc_sbrk_base>
    3b14:	0017e793          	ori	a5,a5,1
    3b18:	00f72223          	sw	a5,4(a4)
    3b1c:	40d50533          	sub	a0,a0,a3
    3b20:	2ca1a823          	sw	a0,720(gp) # 80000ad0 <__malloc_current_mallinfo>
    3b24:	f45ff06f          	j	3a68 <_malloc_trim_r+0x70>

00003b28 <_free_r>:
    3b28:	12058463          	beqz	a1,3c50 <_free_r+0x128>
    3b2c:	ff010113          	addi	sp,sp,-16
    3b30:	00812423          	sw	s0,8(sp)
    3b34:	00912223          	sw	s1,4(sp)
    3b38:	00058413          	mv	s0,a1
    3b3c:	00050493          	mv	s1,a0
    3b40:	00112623          	sw	ra,12(sp)
    3b44:	790030ef          	jal	ra,72d4 <__malloc_lock>
    3b48:	ffc42803          	lw	a6,-4(s0)
    3b4c:	ff840713          	addi	a4,s0,-8
    3b50:	ffe87793          	andi	a5,a6,-2
    3b54:	00f70633          	add	a2,a4,a5
    3b58:	c2818593          	addi	a1,gp,-984 # 80000428 <__malloc_av_>
    3b5c:	00462683          	lw	a3,4(a2)
    3b60:	0085a503          	lw	a0,8(a1)
    3b64:	ffc6f693          	andi	a3,a3,-4
    3b68:	1ac50663          	beq	a0,a2,3d14 <_free_r+0x1ec>
    3b6c:	00d62223          	sw	a3,4(a2)
    3b70:	00187813          	andi	a6,a6,1
    3b74:	00d60533          	add	a0,a2,a3
    3b78:	08081e63          	bnez	a6,3c14 <_free_r+0xec>
    3b7c:	ff842303          	lw	t1,-8(s0)
    3b80:	00452803          	lw	a6,4(a0)
    3b84:	40670733          	sub	a4,a4,t1
    3b88:	00872883          	lw	a7,8(a4)
    3b8c:	c3018513          	addi	a0,gp,-976 # 80000430 <__malloc_av_+0x8>
    3b90:	006787b3          	add	a5,a5,t1
    3b94:	00187813          	andi	a6,a6,1
    3b98:	12a88e63          	beq	a7,a0,3cd4 <_free_r+0x1ac>
    3b9c:	00c72303          	lw	t1,12(a4)
    3ba0:	0068a623          	sw	t1,12(a7)
    3ba4:	01132423          	sw	a7,8(t1)
    3ba8:	1c080e63          	beqz	a6,3d84 <_free_r+0x25c>
    3bac:	0017e693          	ori	a3,a5,1
    3bb0:	00d72223          	sw	a3,4(a4)
    3bb4:	00f62023          	sw	a5,0(a2)
    3bb8:	1ff00693          	li	a3,511
    3bbc:	0af6e663          	bltu	a3,a5,3c68 <_free_r+0x140>
    3bc0:	ff87f693          	andi	a3,a5,-8
    3bc4:	00868693          	addi	a3,a3,8
    3bc8:	0045a503          	lw	a0,4(a1)
    3bcc:	00d586b3          	add	a3,a1,a3
    3bd0:	0006a603          	lw	a2,0(a3)
    3bd4:	0057d813          	srli	a6,a5,0x5
    3bd8:	00100793          	li	a5,1
    3bdc:	010797b3          	sll	a5,a5,a6
    3be0:	00a7e7b3          	or	a5,a5,a0
    3be4:	ff868513          	addi	a0,a3,-8
    3be8:	00a72623          	sw	a0,12(a4)
    3bec:	00c72423          	sw	a2,8(a4)
    3bf0:	00f5a223          	sw	a5,4(a1)
    3bf4:	00e6a023          	sw	a4,0(a3)
    3bf8:	00e62623          	sw	a4,12(a2)
    3bfc:	00812403          	lw	s0,8(sp)
    3c00:	00c12083          	lw	ra,12(sp)
    3c04:	00048513          	mv	a0,s1
    3c08:	00412483          	lw	s1,4(sp)
    3c0c:	01010113          	addi	sp,sp,16
    3c10:	6c80306f          	j	72d8 <__malloc_unlock>
    3c14:	00452503          	lw	a0,4(a0)
    3c18:	00157513          	andi	a0,a0,1
    3c1c:	02051c63          	bnez	a0,3c54 <_free_r+0x12c>
    3c20:	00d787b3          	add	a5,a5,a3
    3c24:	c3018513          	addi	a0,gp,-976 # 80000430 <__malloc_av_+0x8>
    3c28:	00862683          	lw	a3,8(a2)
    3c2c:	0017e893          	ori	a7,a5,1
    3c30:	00f70833          	add	a6,a4,a5
    3c34:	16a68463          	beq	a3,a0,3d9c <_free_r+0x274>
    3c38:	00c62603          	lw	a2,12(a2)
    3c3c:	00c6a623          	sw	a2,12(a3)
    3c40:	00d62423          	sw	a3,8(a2)
    3c44:	01172223          	sw	a7,4(a4)
    3c48:	00f82023          	sw	a5,0(a6)
    3c4c:	f6dff06f          	j	3bb8 <_free_r+0x90>
    3c50:	00008067          	ret
    3c54:	0017e693          	ori	a3,a5,1
    3c58:	fed42e23          	sw	a3,-4(s0)
    3c5c:	00f62023          	sw	a5,0(a2)
    3c60:	1ff00693          	li	a3,511
    3c64:	f4f6fee3          	bgeu	a3,a5,3bc0 <_free_r+0x98>
    3c68:	0097d693          	srli	a3,a5,0x9
    3c6c:	00400613          	li	a2,4
    3c70:	0ed66863          	bltu	a2,a3,3d60 <_free_r+0x238>
    3c74:	0067d693          	srli	a3,a5,0x6
    3c78:	03968813          	addi	a6,a3,57
    3c7c:	03868613          	addi	a2,a3,56
    3c80:	00381813          	slli	a6,a6,0x3
    3c84:	01058833          	add	a6,a1,a6
    3c88:	00082683          	lw	a3,0(a6)
    3c8c:	ff880813          	addi	a6,a6,-8
    3c90:	12d80463          	beq	a6,a3,3db8 <_free_r+0x290>
    3c94:	0046a603          	lw	a2,4(a3)
    3c98:	ffc67613          	andi	a2,a2,-4
    3c9c:	00c7f663          	bgeu	a5,a2,3ca8 <_free_r+0x180>
    3ca0:	0086a683          	lw	a3,8(a3)
    3ca4:	fed818e3          	bne	a6,a3,3c94 <_free_r+0x16c>
    3ca8:	00c6a803          	lw	a6,12(a3)
    3cac:	01072623          	sw	a6,12(a4)
    3cb0:	00d72423          	sw	a3,8(a4)
    3cb4:	00812403          	lw	s0,8(sp)
    3cb8:	00c12083          	lw	ra,12(sp)
    3cbc:	00e82423          	sw	a4,8(a6)
    3cc0:	00048513          	mv	a0,s1
    3cc4:	00412483          	lw	s1,4(sp)
    3cc8:	00e6a623          	sw	a4,12(a3)
    3ccc:	01010113          	addi	sp,sp,16
    3cd0:	6080306f          	j	72d8 <__malloc_unlock>
    3cd4:	14081263          	bnez	a6,3e18 <_free_r+0x2f0>
    3cd8:	00c62583          	lw	a1,12(a2)
    3cdc:	00862603          	lw	a2,8(a2)
    3ce0:	00f687b3          	add	a5,a3,a5
    3ce4:	00812403          	lw	s0,8(sp)
    3ce8:	00b62623          	sw	a1,12(a2)
    3cec:	00c5a423          	sw	a2,8(a1)
    3cf0:	0017e693          	ori	a3,a5,1
    3cf4:	00c12083          	lw	ra,12(sp)
    3cf8:	00d72223          	sw	a3,4(a4)
    3cfc:	00048513          	mv	a0,s1
    3d00:	00f70733          	add	a4,a4,a5
    3d04:	00412483          	lw	s1,4(sp)
    3d08:	00f72023          	sw	a5,0(a4)
    3d0c:	01010113          	addi	sp,sp,16
    3d10:	5c80306f          	j	72d8 <__malloc_unlock>
    3d14:	00187813          	andi	a6,a6,1
    3d18:	00d787b3          	add	a5,a5,a3
    3d1c:	02081063          	bnez	a6,3d3c <_free_r+0x214>
    3d20:	ff842503          	lw	a0,-8(s0)
    3d24:	40a70733          	sub	a4,a4,a0
    3d28:	00c72683          	lw	a3,12(a4)
    3d2c:	00872603          	lw	a2,8(a4)
    3d30:	00a787b3          	add	a5,a5,a0
    3d34:	00d62623          	sw	a3,12(a2)
    3d38:	00c6a423          	sw	a2,8(a3)
    3d3c:	0017e613          	ori	a2,a5,1
    3d40:	1c41a683          	lw	a3,452(gp) # 800009c4 <__malloc_trim_threshold>
    3d44:	00c72223          	sw	a2,4(a4)
    3d48:	00e5a423          	sw	a4,8(a1)
    3d4c:	ead7e8e3          	bltu	a5,a3,3bfc <_free_r+0xd4>
    3d50:	1d01a583          	lw	a1,464(gp) # 800009d0 <__malloc_top_pad>
    3d54:	00048513          	mv	a0,s1
    3d58:	ca1ff0ef          	jal	ra,39f8 <_malloc_trim_r>
    3d5c:	ea1ff06f          	j	3bfc <_free_r+0xd4>
    3d60:	01400613          	li	a2,20
    3d64:	02d67463          	bgeu	a2,a3,3d8c <_free_r+0x264>
    3d68:	05400613          	li	a2,84
    3d6c:	06d66463          	bltu	a2,a3,3dd4 <_free_r+0x2ac>
    3d70:	00c7d693          	srli	a3,a5,0xc
    3d74:	06f68813          	addi	a6,a3,111
    3d78:	06e68613          	addi	a2,a3,110
    3d7c:	00381813          	slli	a6,a6,0x3
    3d80:	f05ff06f          	j	3c84 <_free_r+0x15c>
    3d84:	00d787b3          	add	a5,a5,a3
    3d88:	ea1ff06f          	j	3c28 <_free_r+0x100>
    3d8c:	05c68813          	addi	a6,a3,92
    3d90:	05b68613          	addi	a2,a3,91
    3d94:	00381813          	slli	a6,a6,0x3
    3d98:	eedff06f          	j	3c84 <_free_r+0x15c>
    3d9c:	00e5aa23          	sw	a4,20(a1)
    3da0:	00e5a823          	sw	a4,16(a1)
    3da4:	00a72623          	sw	a0,12(a4)
    3da8:	00a72423          	sw	a0,8(a4)
    3dac:	01172223          	sw	a7,4(a4)
    3db0:	00f82023          	sw	a5,0(a6)
    3db4:	e49ff06f          	j	3bfc <_free_r+0xd4>
    3db8:	0045a503          	lw	a0,4(a1)
    3dbc:	40265613          	srai	a2,a2,0x2
    3dc0:	00100793          	li	a5,1
    3dc4:	00c79633          	sll	a2,a5,a2
    3dc8:	00a66633          	or	a2,a2,a0
    3dcc:	00c5a223          	sw	a2,4(a1)
    3dd0:	eddff06f          	j	3cac <_free_r+0x184>
    3dd4:	15400613          	li	a2,340
    3dd8:	00d66c63          	bltu	a2,a3,3df0 <_free_r+0x2c8>
    3ddc:	00f7d693          	srli	a3,a5,0xf
    3de0:	07868813          	addi	a6,a3,120
    3de4:	07768613          	addi	a2,a3,119
    3de8:	00381813          	slli	a6,a6,0x3
    3dec:	e99ff06f          	j	3c84 <_free_r+0x15c>
    3df0:	55400613          	li	a2,1364
    3df4:	00d66c63          	bltu	a2,a3,3e0c <_free_r+0x2e4>
    3df8:	0127d693          	srli	a3,a5,0x12
    3dfc:	07d68813          	addi	a6,a3,125
    3e00:	07c68613          	addi	a2,a3,124
    3e04:	00381813          	slli	a6,a6,0x3
    3e08:	e7dff06f          	j	3c84 <_free_r+0x15c>
    3e0c:	3f800813          	li	a6,1016
    3e10:	07e00613          	li	a2,126
    3e14:	e71ff06f          	j	3c84 <_free_r+0x15c>
    3e18:	0017e693          	ori	a3,a5,1
    3e1c:	00d72223          	sw	a3,4(a4)
    3e20:	00f62023          	sw	a5,0(a2)
    3e24:	dd9ff06f          	j	3bfc <_free_r+0xd4>

00003e28 <eshdn1>:
    3e28:	00450693          	addi	a3,a0,4
    3e2c:	00000793          	li	a5,0
    3e30:	01a50513          	addi	a0,a0,26
    3e34:	ffff8837          	lui	a6,0xffff8
    3e38:	01c0006f          	j	3e54 <eshdn1+0x2c>
    3e3c:	00179793          	slli	a5,a5,0x1
    3e40:	00e69023          	sh	a4,0(a3)
    3e44:	01079793          	slli	a5,a5,0x10
    3e48:	00268693          	addi	a3,a3,2
    3e4c:	0107d793          	srli	a5,a5,0x10
    3e50:	02d50e63          	beq	a0,a3,3e8c <eshdn1+0x64>
    3e54:	0006d703          	lhu	a4,0(a3)
    3e58:	00177613          	andi	a2,a4,1
    3e5c:	00060463          	beqz	a2,3e64 <eshdn1+0x3c>
    3e60:	0017e793          	ori	a5,a5,1
    3e64:	00175713          	srli	a4,a4,0x1
    3e68:	0027f613          	andi	a2,a5,2
    3e6c:	010765b3          	or	a1,a4,a6
    3e70:	fc0606e3          	beqz	a2,3e3c <eshdn1+0x14>
    3e74:	00179793          	slli	a5,a5,0x1
    3e78:	00b69023          	sh	a1,0(a3)
    3e7c:	01079793          	slli	a5,a5,0x10
    3e80:	00268693          	addi	a3,a3,2
    3e84:	0107d793          	srli	a5,a5,0x10
    3e88:	fcd516e3          	bne	a0,a3,3e54 <eshdn1+0x2c>
    3e8c:	00008067          	ret

00003e90 <eshup1>:
    3e90:	01850693          	addi	a3,a0,24
    3e94:	00000713          	li	a4,0
    3e98:	00250513          	addi	a0,a0,2
    3e9c:	01c0006f          	j	3eb8 <eshup1+0x28>
    3ea0:	00171713          	slli	a4,a4,0x1
    3ea4:	00f69023          	sh	a5,0(a3)
    3ea8:	01071713          	slli	a4,a4,0x10
    3eac:	ffe68693          	addi	a3,a3,-2
    3eb0:	01075713          	srli	a4,a4,0x10
    3eb4:	04d50463          	beq	a0,a3,3efc <eshup1+0x6c>
    3eb8:	0006d783          	lhu	a5,0(a3)
    3ebc:	01079613          	slli	a2,a5,0x10
    3ec0:	41065613          	srai	a2,a2,0x10
    3ec4:	00179793          	slli	a5,a5,0x1
    3ec8:	00065463          	bgez	a2,3ed0 <eshup1+0x40>
    3ecc:	00176713          	ori	a4,a4,1
    3ed0:	01079793          	slli	a5,a5,0x10
    3ed4:	0107d793          	srli	a5,a5,0x10
    3ed8:	00277613          	andi	a2,a4,2
    3edc:	0017e593          	ori	a1,a5,1
    3ee0:	fc0600e3          	beqz	a2,3ea0 <eshup1+0x10>
    3ee4:	00171713          	slli	a4,a4,0x1
    3ee8:	00b69023          	sh	a1,0(a3)
    3eec:	01071713          	slli	a4,a4,0x10
    3ef0:	ffe68693          	addi	a3,a3,-2
    3ef4:	01075713          	srli	a4,a4,0x10
    3ef8:	fcd510e3          	bne	a0,a3,3eb8 <eshup1+0x28>
    3efc:	00008067          	ret

00003f00 <m16m>:
    3f00:	fc010113          	addi	sp,sp,-64
    3f04:	03312623          	sw	s3,44(sp)
    3f08:	000109b7          	lui	s3,0x10
    3f0c:	02812c23          	sw	s0,56(sp)
    3f10:	02912a23          	sw	s1,52(sp)
    3f14:	03212823          	sw	s2,48(sp)
    3f18:	03412423          	sw	s4,40(sp)
    3f1c:	03512223          	sw	s5,36(sp)
    3f20:	02112e23          	sw	ra,60(sp)
    3f24:	00050a13          	mv	s4,a0
    3f28:	00060493          	mv	s1,a2
    3f2c:	00011d23          	sh	zero,26(sp)
    3f30:	00011e23          	sh	zero,28(sp)
    3f34:	01858913          	addi	s2,a1,24
    3f38:	01c10413          	addi	s0,sp,28
    3f3c:	00810a93          	addi	s5,sp,8
    3f40:	fff98993          	addi	s3,s3,-1 # ffff <__multf3+0x2cf>
    3f44:	00095503          	lhu	a0,0(s2) # 3ffe0000 <__crt0_copy_data_src_begin+0x3ffcc1a4>
    3f48:	000a0593          	mv	a1,s4
    3f4c:	ffe40413          	addi	s0,s0,-2
    3f50:	ffe90913          	addi	s2,s2,-2
    3f54:	04051663          	bnez	a0,3fa0 <m16m+0xa0>
    3f58:	fe041f23          	sh	zero,-2(s0)
    3f5c:	ff5414e3          	bne	s0,s5,3f44 <m16m+0x44>
    3f60:	00448613          	addi	a2,s1,4
    3f64:	01e10713          	addi	a4,sp,30
    3f68:	00045783          	lhu	a5,0(s0)
    3f6c:	00240413          	addi	s0,s0,2
    3f70:	00260613          	addi	a2,a2,2
    3f74:	fef61f23          	sh	a5,-2(a2)
    3f78:	fee418e3          	bne	s0,a4,3f68 <m16m+0x68>
    3f7c:	03c12083          	lw	ra,60(sp)
    3f80:	03812403          	lw	s0,56(sp)
    3f84:	03412483          	lw	s1,52(sp)
    3f88:	03012903          	lw	s2,48(sp)
    3f8c:	02c12983          	lw	s3,44(sp)
    3f90:	02812a03          	lw	s4,40(sp)
    3f94:	02412a83          	lw	s5,36(sp)
    3f98:	04010113          	addi	sp,sp,64
    3f9c:	00008067          	ret
    3fa0:	ca1fc0ef          	jal	ra,c40 <__mulsi3>
    3fa4:	00245783          	lhu	a5,2(s0)
    3fa8:	00045603          	lhu	a2,0(s0)
    3fac:	01357733          	and	a4,a0,s3
    3fb0:	00f70733          	add	a4,a4,a5
    3fb4:	01055793          	srli	a5,a0,0x10
    3fb8:	01075693          	srli	a3,a4,0x10
    3fbc:	00c787b3          	add	a5,a5,a2
    3fc0:	00d787b3          	add	a5,a5,a3
    3fc4:	0107d693          	srli	a3,a5,0x10
    3fc8:	00e41123          	sh	a4,2(s0)
    3fcc:	00f41023          	sh	a5,0(s0)
    3fd0:	fed41f23          	sh	a3,-2(s0)
    3fd4:	f75418e3          	bne	s0,s5,3f44 <m16m+0x44>
    3fd8:	f89ff06f          	j	3f60 <m16m+0x60>

00003fdc <emovo.constprop.0>:
    3fdc:	00055703          	lhu	a4,0(a0)
    3fe0:	00255783          	lhu	a5,2(a0)
    3fe4:	00070663          	beqz	a4,3ff0 <emovo.constprop.0+0x14>
    3fe8:	00008737          	lui	a4,0x8
    3fec:	00e7e7b3          	or	a5,a5,a4
    3ff0:	00f59923          	sh	a5,18(a1)
    3ff4:	00255703          	lhu	a4,2(a0)
    3ff8:	000087b7          	lui	a5,0x8
    3ffc:	fff78793          	addi	a5,a5,-1 # 7fff <__mdiff+0x1b3>
    4000:	02f70463          	beq	a4,a5,4028 <emovo.constprop.0+0x4c>
    4004:	00650793          	addi	a5,a0,6
    4008:	01058593          	addi	a1,a1,16
    400c:	01850513          	addi	a0,a0,24
    4010:	0007d703          	lhu	a4,0(a5)
    4014:	00278793          	addi	a5,a5,2
    4018:	ffe58593          	addi	a1,a1,-2
    401c:	00e59123          	sh	a4,2(a1)
    4020:	fea798e3          	bne	a5,a0,4010 <emovo.constprop.0+0x34>
    4024:	00008067          	ret
    4028:	00650793          	addi	a5,a0,6
    402c:	01a50513          	addi	a0,a0,26
    4030:	0007d703          	lhu	a4,0(a5)
    4034:	00278793          	addi	a5,a5,2
    4038:	02071a63          	bnez	a4,406c <emovo.constprop.0+0x90>
    403c:	fea79ae3          	bne	a5,a0,4030 <emovo.constprop.0+0x54>
    4040:	01258713          	addi	a4,a1,18
    4044:	00058793          	mv	a5,a1
    4048:	00278793          	addi	a5,a5,2
    404c:	fe079f23          	sh	zero,-2(a5)
    4050:	fef71ce3          	bne	a4,a5,4048 <emovo.constprop.0+0x6c>
    4054:	0125d783          	lhu	a5,18(a1)
    4058:	00008737          	lui	a4,0x8
    405c:	fff70713          	addi	a4,a4,-1 # 7fff <__mdiff+0x1b3>
    4060:	00e7e7b3          	or	a5,a5,a4
    4064:	00f59923          	sh	a5,18(a1)
    4068:	00008067          	ret
    406c:	01058713          	addi	a4,a1,16
    4070:	00058793          	mv	a5,a1
    4074:	00278793          	addi	a5,a5,2
    4078:	fe079f23          	sh	zero,-2(a5)
    407c:	fef71ce3          	bne	a4,a5,4074 <emovo.constprop.0+0x98>
    4080:	ffffc7b7          	lui	a5,0xffffc
    4084:	00f59823          	sh	a5,16(a1)
    4088:	ffff87b7          	lui	a5,0xffff8
    408c:	fff7c793          	not	a5,a5
    4090:	00f59923          	sh	a5,18(a1)
    4094:	00008067          	ret

00004098 <enormlz>:
    4098:	00455783          	lhu	a5,4(a0)
    409c:	ff010113          	addi	sp,sp,-16
    40a0:	00912223          	sw	s1,4(sp)
    40a4:	00112623          	sw	ra,12(sp)
    40a8:	00812423          	sw	s0,8(sp)
    40ac:	01212023          	sw	s2,0(sp)
    40b0:	00050493          	mv	s1,a0
    40b4:	0c079c63          	bnez	a5,418c <enormlz+0xf4>
    40b8:	00655703          	lhu	a4,6(a0)
    40bc:	00000413          	li	s0,0
    40c0:	01071793          	slli	a5,a4,0x10
    40c4:	4107d793          	srai	a5,a5,0x10
    40c8:	0a07c463          	bltz	a5,4170 <enormlz+0xd8>
    40cc:	01a50693          	addi	a3,a0,26
    40d0:	0a000613          	li	a2,160
    40d4:	02071863          	bnez	a4,4104 <enormlz+0x6c>
    40d8:	00648793          	addi	a5,s1,6
    40dc:	0080006f          	j	40e4 <enormlz+0x4c>
    40e0:	0007d703          	lhu	a4,0(a5) # ffff8000 <__ctr0_io_space_begin+0xffff8200>
    40e4:	00278793          	addi	a5,a5,2
    40e8:	fee79e23          	sh	a4,-4(a5)
    40ec:	fed79ae3          	bne	a5,a3,40e0 <enormlz+0x48>
    40f0:	00049c23          	sh	zero,24(s1)
    40f4:	01040413          	addi	s0,s0,16
    40f8:	06c40c63          	beq	s0,a2,4170 <enormlz+0xd8>
    40fc:	0064d703          	lhu	a4,6(s1)
    4100:	fc070ce3          	beqz	a4,40d8 <enormlz+0x40>
    4104:	f0077793          	andi	a5,a4,-256
    4108:	04079063          	bnez	a5,4148 <enormlz+0xb0>
    410c:	01848513          	addi	a0,s1,24
    4110:	00248593          	addi	a1,s1,2
    4114:	00000793          	li	a5,0
    4118:	00050713          	mv	a4,a0
    411c:	00075683          	lhu	a3,0(a4)
    4120:	ffe70713          	addi	a4,a4,-2
    4124:	00869613          	slli	a2,a3,0x8
    4128:	00c7e7b3          	or	a5,a5,a2
    412c:	00f71123          	sh	a5,2(a4)
    4130:	0086d793          	srli	a5,a3,0x8
    4134:	fee594e3          	bne	a1,a4,411c <enormlz+0x84>
    4138:	0064d703          	lhu	a4,6(s1)
    413c:	00840413          	addi	s0,s0,8
    4140:	f0077793          	andi	a5,a4,-256
    4144:	fc0788e3          	beqz	a5,4114 <enormlz+0x7c>
    4148:	0a000913          	li	s2,160
    414c:	0140006f          	j	4160 <enormlz+0xc8>
    4150:	00140413          	addi	s0,s0,1
    4154:	d3dff0ef          	jal	ra,3e90 <eshup1>
    4158:	00894c63          	blt	s2,s0,4170 <enormlz+0xd8>
    415c:	0064d703          	lhu	a4,6(s1)
    4160:	01071713          	slli	a4,a4,0x10
    4164:	41075713          	srai	a4,a4,0x10
    4168:	00048513          	mv	a0,s1
    416c:	fe0752e3          	bgez	a4,4150 <enormlz+0xb8>
    4170:	00c12083          	lw	ra,12(sp)
    4174:	00040513          	mv	a0,s0
    4178:	00812403          	lw	s0,8(sp)
    417c:	00412483          	lw	s1,4(sp)
    4180:	00012903          	lw	s2,0(sp)
    4184:	01010113          	addi	sp,sp,16
    4188:	00008067          	ret
    418c:	f007f713          	andi	a4,a5,-256
    4190:	00000413          	li	s0,0
    4194:	04071063          	bnez	a4,41d4 <enormlz+0x13c>
    4198:	f6f00913          	li	s2,-145
    419c:	0140006f          	j	41b0 <enormlz+0x118>
    41a0:	fff40413          	addi	s0,s0,-1
    41a4:	c85ff0ef          	jal	ra,3e28 <eshdn1>
    41a8:	fd2404e3          	beq	s0,s2,4170 <enormlz+0xd8>
    41ac:	0044d783          	lhu	a5,4(s1)
    41b0:	00048513          	mv	a0,s1
    41b4:	fe0796e3          	bnez	a5,41a0 <enormlz+0x108>
    41b8:	00c12083          	lw	ra,12(sp)
    41bc:	00040513          	mv	a0,s0
    41c0:	00812403          	lw	s0,8(sp)
    41c4:	00412483          	lw	s1,4(sp)
    41c8:	00012903          	lw	s2,0(sp)
    41cc:	01010113          	addi	sp,sp,16
    41d0:	00008067          	ret
    41d4:	00450693          	addi	a3,a0,4
    41d8:	01a50593          	addi	a1,a0,26
    41dc:	00000713          	li	a4,0
    41e0:	0080006f          	j	41e8 <enormlz+0x150>
    41e4:	0006d783          	lhu	a5,0(a3)
    41e8:	0087d613          	srli	a2,a5,0x8
    41ec:	00c76733          	or	a4,a4,a2
    41f0:	00879793          	slli	a5,a5,0x8
    41f4:	00e69023          	sh	a4,0(a3)
    41f8:	01079713          	slli	a4,a5,0x10
    41fc:	00268693          	addi	a3,a3,2
    4200:	01075713          	srli	a4,a4,0x10
    4204:	fed590e3          	bne	a1,a3,41e4 <enormlz+0x14c>
    4208:	0044d783          	lhu	a5,4(s1)
    420c:	ff800413          	li	s0,-8
    4210:	f89ff06f          	j	4198 <enormlz+0x100>

00004214 <eshift.part.0>:
    4214:	fe010113          	addi	sp,sp,-32
    4218:	00812c23          	sw	s0,24(sp)
    421c:	00912a23          	sw	s1,20(sp)
    4220:	00112e23          	sw	ra,28(sp)
    4224:	01212823          	sw	s2,16(sp)
    4228:	01312623          	sw	s3,12(sp)
    422c:	00058493          	mv	s1,a1
    4230:	00050413          	mv	s0,a0
    4234:	0a05c463          	bltz	a1,42dc <eshift.part.0+0xc8>
    4238:	00f00793          	li	a5,15
    423c:	00058613          	mv	a2,a1
    4240:	00450513          	addi	a0,a0,4
    4244:	01840693          	addi	a3,s0,24
    4248:	00f00593          	li	a1,15
    424c:	0297d463          	bge	a5,s1,4274 <eshift.part.0+0x60>
    4250:	00050793          	mv	a5,a0
    4254:	0027d703          	lhu	a4,2(a5)
    4258:	00278793          	addi	a5,a5,2
    425c:	fee79f23          	sh	a4,-2(a5)
    4260:	fef69ae3          	bne	a3,a5,4254 <eshift.part.0+0x40>
    4264:	00041c23          	sh	zero,24(s0)
    4268:	ff060613          	addi	a2,a2,-16
    426c:	fec5c2e3          	blt	a1,a2,4250 <eshift.part.0+0x3c>
    4270:	00f4f493          	andi	s1,s1,15
    4274:	00700793          	li	a5,7
    4278:	0297d863          	bge	a5,s1,42a8 <eshift.part.0+0x94>
    427c:	01840713          	addi	a4,s0,24
    4280:	00240593          	addi	a1,s0,2
    4284:	00000793          	li	a5,0
    4288:	00075683          	lhu	a3,0(a4)
    428c:	ffe70713          	addi	a4,a4,-2
    4290:	00869613          	slli	a2,a3,0x8
    4294:	00c7e7b3          	or	a5,a5,a2
    4298:	00f71123          	sh	a5,2(a4)
    429c:	0086d793          	srli	a5,a3,0x8
    42a0:	fee594e3          	bne	a1,a4,4288 <eshift.part.0+0x74>
    42a4:	ff848493          	addi	s1,s1,-8
    42a8:	00048a63          	beqz	s1,42bc <eshift.part.0+0xa8>
    42ac:	fff48493          	addi	s1,s1,-1
    42b0:	00040513          	mv	a0,s0
    42b4:	bddff0ef          	jal	ra,3e90 <eshup1>
    42b8:	fe049ae3          	bnez	s1,42ac <eshift.part.0+0x98>
    42bc:	00000513          	li	a0,0
    42c0:	01c12083          	lw	ra,28(sp)
    42c4:	01812403          	lw	s0,24(sp)
    42c8:	01412483          	lw	s1,20(sp)
    42cc:	01012903          	lw	s2,16(sp)
    42d0:	00c12983          	lw	s3,12(sp)
    42d4:	02010113          	addi	sp,sp,32
    42d8:	00008067          	ret
    42dc:	ff100793          	li	a5,-15
    42e0:	40b00933          	neg	s2,a1
    42e4:	12f5de63          	bge	a1,a5,4420 <eshift.part.0+0x20c>
    42e8:	01850593          	addi	a1,a0,24
    42ec:	00000993          	li	s3,0
    42f0:	00450693          	addi	a3,a0,4
    42f4:	00f00613          	li	a2,15
    42f8:	01845703          	lhu	a4,24(s0)
    42fc:	00058793          	mv	a5,a1
    4300:	00e9e9b3          	or	s3,s3,a4
    4304:	ffe7d703          	lhu	a4,-2(a5)
    4308:	ffe78793          	addi	a5,a5,-2
    430c:	00e79123          	sh	a4,2(a5)
    4310:	fed79ae3          	bne	a5,a3,4304 <eshift.part.0+0xf0>
    4314:	00041223          	sh	zero,4(s0)
    4318:	ff090913          	addi	s2,s2,-16
    431c:	fd264ee3          	blt	a2,s2,42f8 <eshift.part.0+0xe4>
    4320:	ff000913          	li	s2,-16
    4324:	ff100713          	li	a4,-15
    4328:	40990933          	sub	s2,s2,s1
    432c:	00000793          	li	a5,0
    4330:	0ae4c663          	blt	s1,a4,43dc <eshift.part.0+0x1c8>
    4334:	00f90933          	add	s2,s2,a5
    4338:	00700793          	li	a5,7
    433c:	0527ca63          	blt	a5,s2,4390 <eshift.part.0+0x17c>
    4340:	0c090263          	beqz	s2,4404 <eshift.part.0+0x1f0>
    4344:	01845783          	lhu	a5,24(s0)
    4348:	fff90913          	addi	s2,s2,-1
    434c:	00040513          	mv	a0,s0
    4350:	0017f793          	andi	a5,a5,1
    4354:	0137e9b3          	or	s3,a5,s3
    4358:	ad1ff0ef          	jal	ra,3e28 <eshdn1>
    435c:	fe0914e3          	bnez	s2,4344 <eshift.part.0+0x130>
    4360:	01099793          	slli	a5,s3,0x10
    4364:	4107d793          	srai	a5,a5,0x10
    4368:	08079663          	bnez	a5,43f4 <eshift.part.0+0x1e0>
    436c:	01099513          	slli	a0,s3,0x10
    4370:	01055513          	srli	a0,a0,0x10
    4374:	01c12083          	lw	ra,28(sp)
    4378:	01812403          	lw	s0,24(sp)
    437c:	01412483          	lw	s1,20(sp)
    4380:	01012903          	lw	s2,16(sp)
    4384:	00c12983          	lw	s3,12(sp)
    4388:	02010113          	addi	sp,sp,32
    438c:	00008067          	ret
    4390:	01099993          	slli	s3,s3,0x10
    4394:	4109d993          	srai	s3,s3,0x10
    4398:	01844783          	lbu	a5,24(s0)
    439c:	01a40593          	addi	a1,s0,26
    43a0:	00f9e9b3          	or	s3,s3,a5
    43a4:	01099993          	slli	s3,s3,0x10
    43a8:	0109d993          	srli	s3,s3,0x10
    43ac:	00000793          	li	a5,0
    43b0:	0006d703          	lhu	a4,0(a3)
    43b4:	00268693          	addi	a3,a3,2
    43b8:	00875613          	srli	a2,a4,0x8
    43bc:	00c7e7b3          	or	a5,a5,a2
    43c0:	00871713          	slli	a4,a4,0x8
    43c4:	fef69f23          	sh	a5,-2(a3)
    43c8:	01071793          	slli	a5,a4,0x10
    43cc:	0107d793          	srli	a5,a5,0x10
    43d0:	fed590e3          	bne	a1,a3,43b0 <eshift.part.0+0x19c>
    43d4:	ff890913          	addi	s2,s2,-8
    43d8:	f69ff06f          	j	4340 <eshift.part.0+0x12c>
    43dc:	ff097793          	andi	a5,s2,-16
    43e0:	40f007b3          	neg	a5,a5
    43e4:	00f90933          	add	s2,s2,a5
    43e8:	00700793          	li	a5,7
    43ec:	f527dae3          	bge	a5,s2,4340 <eshift.part.0+0x12c>
    43f0:	fa1ff06f          	j	4390 <eshift.part.0+0x17c>
    43f4:	00100993          	li	s3,1
    43f8:	01099513          	slli	a0,s3,0x10
    43fc:	01055513          	srli	a0,a0,0x10
    4400:	f75ff06f          	j	4374 <eshift.part.0+0x160>
    4404:	00098513          	mv	a0,s3
    4408:	00099863          	bnez	s3,4418 <eshift.part.0+0x204>
    440c:	01051513          	slli	a0,a0,0x10
    4410:	01055513          	srli	a0,a0,0x10
    4414:	eadff06f          	j	42c0 <eshift.part.0+0xac>
    4418:	00100513          	li	a0,1
    441c:	ff1ff06f          	j	440c <eshift.part.0+0x1f8>
    4420:	ff900793          	li	a5,-7
    4424:	00000993          	li	s3,0
    4428:	00450693          	addi	a3,a0,4
    442c:	f6f5c6e3          	blt	a1,a5,4398 <eshift.part.0+0x184>
    4430:	f15ff06f          	j	4344 <eshift.part.0+0x130>

00004434 <emovi>:
    4434:	01255783          	lhu	a5,18(a0)
    4438:	00008637          	lui	a2,0x8
    443c:	fff60613          	addi	a2,a2,-1 # 7fff <__mdiff+0x1b3>
    4440:	00f7d793          	srli	a5,a5,0xf
    4444:	40f007b3          	neg	a5,a5
    4448:	00f59023          	sh	a5,0(a1)
    444c:	01255683          	lhu	a3,18(a0)
    4450:	01050793          	addi	a5,a0,16
    4454:	00458713          	addi	a4,a1,4
    4458:	00d676b3          	and	a3,a2,a3
    445c:	00d59123          	sh	a3,2(a1)
    4460:	02c68663          	beq	a3,a2,448c <emovi+0x58>
    4464:	00658713          	addi	a4,a1,6
    4468:	00059223          	sh	zero,4(a1)
    446c:	ffe50513          	addi	a0,a0,-2
    4470:	0007d683          	lhu	a3,0(a5)
    4474:	ffe78793          	addi	a5,a5,-2
    4478:	00270713          	addi	a4,a4,2
    447c:	fed71f23          	sh	a3,-2(a4)
    4480:	fef518e3          	bne	a0,a5,4470 <emovi+0x3c>
    4484:	00059c23          	sh	zero,24(a1)
    4488:	00008067          	ret
    448c:	01255603          	lhu	a2,18(a0)
    4490:	00c6f633          	and	a2,a3,a2
    4494:	00d61e63          	bne	a2,a3,44b0 <emovi+0x7c>
    4498:	01250813          	addi	a6,a0,18
    449c:	00050693          	mv	a3,a0
    44a0:	0006d603          	lhu	a2,0(a3)
    44a4:	00268693          	addi	a3,a3,2
    44a8:	00061e63          	bnez	a2,44c4 <emovi+0x90>
    44ac:	ff069ae3          	bne	a3,a6,44a0 <emovi+0x6c>
    44b0:	01a58593          	addi	a1,a1,26
    44b4:	00270713          	addi	a4,a4,2
    44b8:	fe071f23          	sh	zero,-2(a4)
    44bc:	fee59ce3          	bne	a1,a4,44b4 <emovi+0x80>
    44c0:	00008067          	ret
    44c4:	00658713          	addi	a4,a1,6
    44c8:	00059223          	sh	zero,4(a1)
    44cc:	ffc50513          	addi	a0,a0,-4
    44d0:	0007d683          	lhu	a3,0(a5)
    44d4:	ffe78793          	addi	a5,a5,-2
    44d8:	00270713          	addi	a4,a4,2
    44dc:	fed71f23          	sh	a3,-2(a4)
    44e0:	fea798e3          	bne	a5,a0,44d0 <emovi+0x9c>
    44e4:	00008067          	ret

000044e8 <ecmp>:
    44e8:	01255783          	lhu	a5,18(a0)
    44ec:	fb010113          	addi	sp,sp,-80
    44f0:	04812423          	sw	s0,72(sp)
    44f4:	fff7c793          	not	a5,a5
    44f8:	04112623          	sw	ra,76(sp)
    44fc:	01179713          	slli	a4,a5,0x11
    4500:	00058413          	mv	s0,a1
    4504:	00071e63          	bnez	a4,4520 <ecmp+0x38>
    4508:	01250693          	addi	a3,a0,18
    450c:	00050793          	mv	a5,a0
    4510:	0007d703          	lhu	a4,0(a5)
    4514:	00278793          	addi	a5,a5,2
    4518:	08071c63          	bnez	a4,45b0 <ecmp+0xc8>
    451c:	fed79ae3          	bne	a5,a3,4510 <ecmp+0x28>
    4520:	01245783          	lhu	a5,18(s0)
    4524:	fff7c793          	not	a5,a5
    4528:	01179713          	slli	a4,a5,0x11
    452c:	06070063          	beqz	a4,458c <ecmp+0xa4>
    4530:	00810593          	addi	a1,sp,8
    4534:	f01ff0ef          	jal	ra,4434 <emovi>
    4538:	02410593          	addi	a1,sp,36
    453c:	00040513          	mv	a0,s0
    4540:	ef5ff0ef          	jal	ra,4434 <emovi>
    4544:	00815583          	lhu	a1,8(sp)
    4548:	02415503          	lhu	a0,36(sp)
    454c:	06b50c63          	beq	a0,a1,45c4 <ecmp+0xdc>
    4550:	00a10793          	addi	a5,sp,10
    4554:	02610713          	addi	a4,sp,38
    4558:	02010613          	addi	a2,sp,32
    455c:	0007d683          	lhu	a3,0(a5)
    4560:	00278793          	addi	a5,a5,2
    4564:	0a069863          	bnez	a3,4614 <ecmp+0x12c>
    4568:	00075683          	lhu	a3,0(a4)
    456c:	00270713          	addi	a4,a4,2
    4570:	0a069263          	bnez	a3,4614 <ecmp+0x12c>
    4574:	fef614e3          	bne	a2,a5,455c <ecmp+0x74>
    4578:	00000513          	li	a0,0
    457c:	04c12083          	lw	ra,76(sp)
    4580:	04812403          	lw	s0,72(sp)
    4584:	05010113          	addi	sp,sp,80
    4588:	00008067          	ret
    458c:	00040793          	mv	a5,s0
    4590:	0007d703          	lhu	a4,0(a5)
    4594:	01240693          	addi	a3,s0,18
    4598:	00278793          	addi	a5,a5,2
    459c:	00071a63          	bnez	a4,45b0 <ecmp+0xc8>
    45a0:	f8d788e3          	beq	a5,a3,4530 <ecmp+0x48>
    45a4:	0007d703          	lhu	a4,0(a5)
    45a8:	00278793          	addi	a5,a5,2
    45ac:	fe070ae3          	beqz	a4,45a0 <ecmp+0xb8>
    45b0:	04c12083          	lw	ra,76(sp)
    45b4:	04812403          	lw	s0,72(sp)
    45b8:	ffe00513          	li	a0,-2
    45bc:	05010113          	addi	sp,sp,80
    45c0:	00008067          	ret
    45c4:	00a15603          	lhu	a2,10(sp)
    45c8:	02615683          	lhu	a3,38(sp)
    45cc:	00153513          	seqz	a0,a0
    45d0:	00a10713          	addi	a4,sp,10
    45d4:	02610793          	addi	a5,sp,38
    45d8:	00151513          	slli	a0,a0,0x1
    45dc:	fff50513          	addi	a0,a0,-1
    45e0:	03c10593          	addi	a1,sp,60
    45e4:	00278793          	addi	a5,a5,2
    45e8:	00270713          	addi	a4,a4,2
    45ec:	00d61e63          	bne	a2,a3,4608 <ecmp+0x120>
    45f0:	f8b784e3          	beq	a5,a1,4578 <ecmp+0x90>
    45f4:	00075603          	lhu	a2,0(a4)
    45f8:	0007d683          	lhu	a3,0(a5)
    45fc:	00270713          	addi	a4,a4,2
    4600:	00278793          	addi	a5,a5,2
    4604:	fed606e3          	beq	a2,a3,45f0 <ecmp+0x108>
    4608:	f6c6eae3          	bltu	a3,a2,457c <ecmp+0x94>
    460c:	40a00533          	neg	a0,a0
    4610:	f6dff06f          	j	457c <ecmp+0x94>
    4614:	00100513          	li	a0,1
    4618:	f60582e3          	beqz	a1,457c <ecmp+0x94>
    461c:	fff00513          	li	a0,-1
    4620:	f5dff06f          	j	457c <ecmp+0x94>

00004624 <emdnorm>:
    4624:	fe010113          	addi	sp,sp,-32
    4628:	00812c23          	sw	s0,24(sp)
    462c:	00912a23          	sw	s1,20(sp)
    4630:	01212823          	sw	s2,16(sp)
    4634:	01312623          	sw	s3,12(sp)
    4638:	01412423          	sw	s4,8(sp)
    463c:	01512223          	sw	s5,4(sp)
    4640:	00068913          	mv	s2,a3
    4644:	00078493          	mv	s1,a5
    4648:	00112e23          	sw	ra,28(sp)
    464c:	00050413          	mv	s0,a0
    4650:	00058993          	mv	s3,a1
    4654:	00060a13          	mv	s4,a2
    4658:	00070a93          	mv	s5,a4
    465c:	a3dff0ef          	jal	ra,4098 <enormlz>
    4660:	09000793          	li	a5,144
    4664:	40a90933          	sub	s2,s2,a0
    4668:	18a7dc63          	bge	a5,a0,4800 <emdnorm+0x1dc>
    466c:	000087b7          	lui	a5,0x8
    4670:	ffe78793          	addi	a5,a5,-2 # 7ffe <__mdiff+0x1b2>
    4674:	2127da63          	bge	a5,s2,4888 <emdnorm+0x264>
    4678:	1e0a8463          	beqz	s5,4860 <emdnorm+0x23c>
    467c:	0044a503          	lw	a0,4(s1)
    4680:	0004a783          	lw	a5,0(s1)
    4684:	06f50a63          	beq	a0,a5,46f8 <emdnorm+0xd4>
    4688:	01a48713          	addi	a4,s1,26
    468c:	03448793          	addi	a5,s1,52
    4690:	00270713          	addi	a4,a4,2
    4694:	fe071f23          	sh	zero,-2(a4)
    4698:	fef71ce3          	bne	a4,a5,4690 <emdnorm+0x6c>
    469c:	03800793          	li	a5,56
    46a0:	36f50063          	beq	a0,a5,4a00 <emdnorm+0x3dc>
    46a4:	18a7d063          	bge	a5,a0,4824 <emdnorm+0x200>
    46a8:	04000793          	li	a5,64
    46ac:	2ef50e63          	beq	a0,a5,49a8 <emdnorm+0x384>
    46b0:	07100793          	li	a5,113
    46b4:	32f51063          	bne	a0,a5,49d4 <emdnorm+0x3b0>
    46b8:	400087b7          	lui	a5,0x40008
    46bc:	fff78793          	addi	a5,a5,-1 # 40007fff <__crt0_copy_data_src_begin+0x3fff41a3>
    46c0:	00a00713          	li	a4,10
    46c4:	00f4aa23          	sw	a5,20(s1)
    46c8:	ffff87b7          	lui	a5,0xffff8
    46cc:	00e4a423          	sw	a4,8(s1)
    46d0:	00f49c23          	sh	a5,24(s1)
    46d4:	00e4a623          	sw	a4,12(s1)
    46d8:	00a00793          	li	a5,10
    46dc:	00008737          	lui	a4,0x8
    46e0:	00878793          	addi	a5,a5,8 # ffff8008 <__ctr0_io_space_begin+0xffff8208>
    46e4:	00179793          	slli	a5,a5,0x1
    46e8:	00f487b3          	add	a5,s1,a5
    46ec:	00e79523          	sh	a4,10(a5)
    46f0:	00a4a023          	sw	a0,0(s1)
    46f4:	1d205863          	blez	s2,48c4 <emdnorm+0x2a0>
    46f8:	0084a583          	lw	a1,8(s1)
    46fc:	0144d783          	lhu	a5,20(s1)
    4700:	08f00813          	li	a6,143
    4704:	00159613          	slli	a2,a1,0x1
    4708:	00c40633          	add	a2,s0,a2
    470c:	00065703          	lhu	a4,0(a2)
    4710:	00f776b3          	and	a3,a4,a5
    4714:	02a84a63          	blt	a6,a0,4748 <emdnorm+0x124>
    4718:	00b00813          	li	a6,11
    471c:	02b84663          	blt	a6,a1,4748 <emdnorm+0x124>
    4720:	00060793          	mv	a5,a2
    4724:	01840593          	addi	a1,s0,24
    4728:	0027d703          	lhu	a4,2(a5)
    472c:	00070463          	beqz	a4,4734 <emdnorm+0x110>
    4730:	0016e693          	ori	a3,a3,1
    4734:	00079123          	sh	zero,2(a5)
    4738:	00278793          	addi	a5,a5,2
    473c:	fef596e3          	bne	a1,a5,4728 <emdnorm+0x104>
    4740:	00065703          	lhu	a4,0(a2)
    4744:	0144d783          	lhu	a5,20(s1)
    4748:	fff7c793          	not	a5,a5
    474c:	00e7f7b3          	and	a5,a5,a4
    4750:	00f61023          	sh	a5,0(a2)
    4754:	0164d783          	lhu	a5,22(s1)
    4758:	00d7f733          	and	a4,a5,a3
    475c:	06070063          	beqz	a4,47bc <emdnorm+0x198>
    4760:	02d79263          	bne	a5,a3,4784 <emdnorm+0x160>
    4764:	20099863          	bnez	s3,4974 <emdnorm+0x350>
    4768:	00c4a783          	lw	a5,12(s1)
    476c:	0184d703          	lhu	a4,24(s1)
    4770:	00179793          	slli	a5,a5,0x1
    4774:	00f407b3          	add	a5,s0,a5
    4778:	0007d783          	lhu	a5,0(a5)
    477c:	00e7f7b3          	and	a5,a5,a4
    4780:	02078e63          	beqz	a5,47bc <emdnorm+0x198>
    4784:	03248613          	addi	a2,s1,50
    4788:	01840693          	addi	a3,s0,24
    478c:	01c48493          	addi	s1,s1,28
    4790:	00000713          	li	a4,0
    4794:	00065783          	lhu	a5,0(a2)
    4798:	0006d583          	lhu	a1,0(a3)
    479c:	ffe68693          	addi	a3,a3,-2
    47a0:	ffe60613          	addi	a2,a2,-2
    47a4:	00b787b3          	add	a5,a5,a1
    47a8:	00e787b3          	add	a5,a5,a4
    47ac:	0107d713          	srli	a4,a5,0x10
    47b0:	00f69123          	sh	a5,2(a3)
    47b4:	00177713          	andi	a4,a4,1
    47b8:	fc961ee3          	bne	a2,s1,4794 <emdnorm+0x170>
    47bc:	17205663          	blez	s2,4928 <emdnorm+0x304>
    47c0:	00445783          	lhu	a5,4(s0)
    47c4:	12079e63          	bnez	a5,4900 <emdnorm+0x2dc>
    47c8:	000087b7          	lui	a5,0x8
    47cc:	00041c23          	sh	zero,24(s0)
    47d0:	ffe78793          	addi	a5,a5,-2 # 7ffe <__mdiff+0x1b2>
    47d4:	0927c863          	blt	a5,s2,4864 <emdnorm+0x240>
    47d8:	01241123          	sh	s2,2(s0)
    47dc:	01c12083          	lw	ra,28(sp)
    47e0:	01812403          	lw	s0,24(sp)
    47e4:	01412483          	lw	s1,20(sp)
    47e8:	01012903          	lw	s2,16(sp)
    47ec:	00c12983          	lw	s3,12(sp)
    47f0:	00812a03          	lw	s4,8(sp)
    47f4:	00412a83          	lw	s5,4(sp)
    47f8:	02010113          	addi	sp,sp,32
    47fc:	00008067          	ret
    4800:	0e095463          	bgez	s2,48e8 <emdnorm+0x2c4>
    4804:	f7000793          	li	a5,-144
    4808:	08f95c63          	bge	s2,a5,48a0 <emdnorm+0x27c>
    480c:	00240793          	addi	a5,s0,2
    4810:	01a40413          	addi	s0,s0,26
    4814:	00278793          	addi	a5,a5,2
    4818:	fe079f23          	sh	zero,-2(a5)
    481c:	fe879ce3          	bne	a5,s0,4814 <emdnorm+0x1f0>
    4820:	fbdff06f          	j	47dc <emdnorm+0x1b8>
    4824:	01800793          	li	a5,24
    4828:	14f50a63          	beq	a0,a5,497c <emdnorm+0x358>
    482c:	03500793          	li	a5,53
    4830:	1af51263          	bne	a0,a5,49d4 <emdnorm+0x3b0>
    4834:	00001737          	lui	a4,0x1
    4838:	040007b7          	lui	a5,0x4000
    483c:	00600693          	li	a3,6
    4840:	7ff78793          	addi	a5,a5,2047 # 40007ff <__crt0_copy_data_src_begin+0x3fec9a3>
    4844:	80070713          	addi	a4,a4,-2048 # 800 <__neorv32_rte_core+0xc0>
    4848:	00f4aa23          	sw	a5,20(s1)
    484c:	00d4a423          	sw	a3,8(s1)
    4850:	00e49c23          	sh	a4,24(s1)
    4854:	00d4a623          	sw	a3,12(s1)
    4858:	00600793          	li	a5,6
    485c:	e85ff06f          	j	46e0 <emdnorm+0xbc>
    4860:	00041c23          	sh	zero,24(s0)
    4864:	ffff87b7          	lui	a5,0xffff8
    4868:	fff7c793          	not	a5,a5
    486c:	00f41123          	sh	a5,2(s0)
    4870:	00440793          	addi	a5,s0,4
    4874:	01840413          	addi	s0,s0,24
    4878:	00079023          	sh	zero,0(a5) # ffff8000 <__ctr0_io_space_begin+0xffff8200>
    487c:	00278793          	addi	a5,a5,2
    4880:	fef41ce3          	bne	s0,a5,4878 <emdnorm+0x254>
    4884:	f59ff06f          	j	47dc <emdnorm+0x1b8>
    4888:	00240793          	addi	a5,s0,2
    488c:	01a40413          	addi	s0,s0,26
    4890:	00278793          	addi	a5,a5,2
    4894:	fe079f23          	sh	zero,-2(a5)
    4898:	fe879ce3          	bne	a5,s0,4890 <emdnorm+0x26c>
    489c:	f41ff06f          	j	47dc <emdnorm+0x1b8>
    48a0:	00090593          	mv	a1,s2
    48a4:	00040513          	mv	a0,s0
    48a8:	96dff0ef          	jal	ra,4214 <eshift.part.0>
    48ac:	00050463          	beqz	a0,48b4 <emdnorm+0x290>
    48b0:	00100993          	li	s3,1
    48b4:	0a0a8a63          	beqz	s5,4968 <emdnorm+0x344>
    48b8:	0044a503          	lw	a0,4(s1)
    48bc:	0004a783          	lw	a5,0(s1)
    48c0:	dcf514e3          	bne	a0,a5,4688 <emdnorm+0x64>
    48c4:	09000793          	li	a5,144
    48c8:	08f50263          	beq	a0,a5,494c <emdnorm+0x328>
    48cc:	01845783          	lhu	a5,24(s0)
    48d0:	00040513          	mv	a0,s0
    48d4:	0017f793          	andi	a5,a5,1
    48d8:	00f9e9b3          	or	s3,s3,a5
    48dc:	d4cff0ef          	jal	ra,3e28 <eshdn1>
    48e0:	0044a503          	lw	a0,4(s1)
    48e4:	e15ff06f          	j	46f8 <emdnorm+0xd4>
    48e8:	ee0a80e3          	beqz	s5,47c8 <emdnorm+0x1a4>
    48ec:	0044a503          	lw	a0,4(s1)
    48f0:	0004a783          	lw	a5,0(s1)
    48f4:	d8f51ae3          	bne	a0,a5,4688 <emdnorm+0x64>
    48f8:	e12040e3          	bgtz	s2,46f8 <emdnorm+0xd4>
    48fc:	fc9ff06f          	j	48c4 <emdnorm+0x2a0>
    4900:	00040513          	mv	a0,s0
    4904:	d24ff0ef          	jal	ra,3e28 <eshdn1>
    4908:	000087b7          	lui	a5,0x8
    490c:	00190913          	addi	s2,s2,1
    4910:	00041c23          	sh	zero,24(s0)
    4914:	ffe78793          	addi	a5,a5,-2 # 7ffe <__mdiff+0x1b2>
    4918:	f527c6e3          	blt	a5,s2,4864 <emdnorm+0x240>
    491c:	ea095ee3          	bgez	s2,47d8 <emdnorm+0x1b4>
    4920:	00041123          	sh	zero,2(s0)
    4924:	eb9ff06f          	j	47dc <emdnorm+0x1b8>
    4928:	09000793          	li	a5,144
    492c:	00f50663          	beq	a0,a5,4938 <emdnorm+0x314>
    4930:	00040513          	mv	a0,s0
    4934:	d5cff0ef          	jal	ra,3e90 <eshup1>
    4938:	00445783          	lhu	a5,4(s0)
    493c:	fc0792e3          	bnez	a5,4900 <emdnorm+0x2dc>
    4940:	00041c23          	sh	zero,24(s0)
    4944:	fc094ee3          	bltz	s2,4920 <emdnorm+0x2fc>
    4948:	e91ff06f          	j	47d8 <emdnorm+0x1b4>
    494c:	0084a603          	lw	a2,8(s1)
    4950:	0144d783          	lhu	a5,20(s1)
    4954:	00161613          	slli	a2,a2,0x1
    4958:	00c40633          	add	a2,s0,a2
    495c:	00065703          	lhu	a4,0(a2)
    4960:	00e7f6b3          	and	a3,a5,a4
    4964:	de5ff06f          	j	4748 <emdnorm+0x124>
    4968:	00041c23          	sh	zero,24(s0)
    496c:	00041123          	sh	zero,2(s0)
    4970:	e6dff06f          	j	47dc <emdnorm+0x1b8>
    4974:	e00a08e3          	beqz	s4,4784 <emdnorm+0x160>
    4978:	e45ff06f          	j	47bc <emdnorm+0x198>
    497c:	008007b7          	lui	a5,0x800
    4980:	0ff78793          	addi	a5,a5,255 # 8000ff <__crt0_copy_data_src_begin+0x7ec2a3>
    4984:	00400713          	li	a4,4
    4988:	00f4aa23          	sw	a5,20(s1)
    498c:	10000793          	li	a5,256
    4990:	00e4a423          	sw	a4,8(s1)
    4994:	00f49c23          	sh	a5,24(s1)
    4998:	00e4a623          	sw	a4,12(s1)
    499c:	00400793          	li	a5,4
    49a0:	10000713          	li	a4,256
    49a4:	d3dff06f          	j	46e0 <emdnorm+0xbc>
    49a8:	00700793          	li	a5,7
    49ac:	00f4a423          	sw	a5,8(s1)
    49b0:	800107b7          	lui	a5,0x80010
    49b4:	fff78793          	addi	a5,a5,-1 # 8000ffff <__ctr0_io_space_begin+0x800101ff>
    49b8:	00f4aa23          	sw	a5,20(s1)
    49bc:	00100793          	li	a5,1
    49c0:	00f49c23          	sh	a5,24(s1)
    49c4:	00600793          	li	a5,6
    49c8:	00f4a623          	sw	a5,12(s1)
    49cc:	00100713          	li	a4,1
    49d0:	d11ff06f          	j	46e0 <emdnorm+0xbc>
    49d4:	00c00793          	li	a5,12
    49d8:	00f4a423          	sw	a5,8(s1)
    49dc:	800107b7          	lui	a5,0x80010
    49e0:	fff78793          	addi	a5,a5,-1 # 8000ffff <__ctr0_io_space_begin+0x800101ff>
    49e4:	00f4aa23          	sw	a5,20(s1)
    49e8:	00100793          	li	a5,1
    49ec:	00f49c23          	sh	a5,24(s1)
    49f0:	00b00793          	li	a5,11
    49f4:	00f4a623          	sw	a5,12(s1)
    49f8:	00100713          	li	a4,1
    49fc:	ce5ff06f          	j	46e0 <emdnorm+0xbc>
    4a00:	008007b7          	lui	a5,0x800
    4a04:	0ff78793          	addi	a5,a5,255 # 8000ff <__crt0_copy_data_src_begin+0x7ec2a3>
    4a08:	00600713          	li	a4,6
    4a0c:	00f4aa23          	sw	a5,20(s1)
    4a10:	10000793          	li	a5,256
    4a14:	00e4a423          	sw	a4,8(s1)
    4a18:	00f49c23          	sh	a5,24(s1)
    4a1c:	00e4a623          	sw	a4,12(s1)
    4a20:	00600793          	li	a5,6
    4a24:	10000713          	li	a4,256
    4a28:	cb9ff06f          	j	46e0 <emdnorm+0xbc>

00004a2c <eiremain>:
    4a2c:	fd010113          	addi	sp,sp,-48
    4a30:	03212023          	sw	s2,32(sp)
    4a34:	01312e23          	sw	s3,28(sp)
    4a38:	00058913          	mv	s2,a1
    4a3c:	00255983          	lhu	s3,2(a0)
    4a40:	02112623          	sw	ra,44(sp)
    4a44:	02812423          	sw	s0,40(sp)
    4a48:	02912223          	sw	s1,36(sp)
    4a4c:	01412c23          	sw	s4,24(sp)
    4a50:	00060493          	mv	s1,a2
    4a54:	01712623          	sw	s7,12(sp)
    4a58:	01512a23          	sw	s5,20(sp)
    4a5c:	01612823          	sw	s6,16(sp)
    4a60:	01812423          	sw	s8,8(sp)
    4a64:	01912223          	sw	s9,4(sp)
    4a68:	01a12023          	sw	s10,0(sp)
    4a6c:	00050b93          	mv	s7,a0
    4a70:	e28ff0ef          	jal	ra,4098 <enormlz>
    4a74:	00295403          	lhu	s0,2(s2)
    4a78:	00050793          	mv	a5,a0
    4a7c:	00090513          	mv	a0,s2
    4a80:	40f989b3          	sub	s3,s3,a5
    4a84:	03448a13          	addi	s4,s1,52
    4a88:	e10ff0ef          	jal	ra,4098 <enormlz>
    4a8c:	40a40433          	sub	s0,s0,a0
    4a90:	04e48713          	addi	a4,s1,78
    4a94:	000a0793          	mv	a5,s4
    4a98:	00278793          	addi	a5,a5,2
    4a9c:	fe079f23          	sh	zero,-2(a5)
    4aa0:	fee79ce3          	bne	a5,a4,4a98 <eiremain+0x6c>
    4aa4:	09344863          	blt	s0,s3,4b34 <eiremain+0x108>
    4aa8:	004b8b13          	addi	s6,s7,4
    4aac:	00490a93          	addi	s5,s2,4
    4ab0:	01ab8c13          	addi	s8,s7,26
    4ab4:	00290d13          	addi	s10,s2,2
    4ab8:	000a8713          	mv	a4,s5
    4abc:	000b0793          	mv	a5,s6
    4ac0:	0007d603          	lhu	a2,0(a5)
    4ac4:	00075683          	lhu	a3,0(a4)
    4ac8:	00278793          	addi	a5,a5,2
    4acc:	00270713          	addi	a4,a4,2
    4ad0:	0ad61a63          	bne	a2,a3,4b84 <eiremain+0x158>
    4ad4:	ff8796e3          	bne	a5,s8,4ac0 <eiremain+0x94>
    4ad8:	018b8613          	addi	a2,s7,24
    4adc:	01890713          	addi	a4,s2,24
    4ae0:	00000693          	li	a3,0
    4ae4:	00075783          	lhu	a5,0(a4)
    4ae8:	00065583          	lhu	a1,0(a2)
    4aec:	ffe70713          	addi	a4,a4,-2
    4af0:	40d787b3          	sub	a5,a5,a3
    4af4:	40b787b3          	sub	a5,a5,a1
    4af8:	0107d693          	srli	a3,a5,0x10
    4afc:	00f71123          	sh	a5,2(a4)
    4b00:	0016f693          	andi	a3,a3,1
    4b04:	ffe60613          	addi	a2,a2,-2
    4b08:	fced1ee3          	bne	s10,a4,4ae4 <eiremain+0xb8>
    4b0c:	00100c93          	li	s9,1
    4b10:	000a0513          	mv	a0,s4
    4b14:	b7cff0ef          	jal	ra,3e90 <eshup1>
    4b18:	04c4d783          	lhu	a5,76(s1)
    4b1c:	fff40413          	addi	s0,s0,-1
    4b20:	00090513          	mv	a0,s2
    4b24:	00fce7b3          	or	a5,s9,a5
    4b28:	04f49623          	sh	a5,76(s1)
    4b2c:	b64ff0ef          	jal	ra,3e90 <eshup1>
    4b30:	f93454e3          	bge	s0,s3,4ab8 <eiremain+0x8c>
    4b34:	00040693          	mv	a3,s0
    4b38:	02812403          	lw	s0,40(sp)
    4b3c:	02c12083          	lw	ra,44(sp)
    4b40:	01c12983          	lw	s3,28(sp)
    4b44:	01812a03          	lw	s4,24(sp)
    4b48:	01412a83          	lw	s5,20(sp)
    4b4c:	01012b03          	lw	s6,16(sp)
    4b50:	00c12b83          	lw	s7,12(sp)
    4b54:	00812c03          	lw	s8,8(sp)
    4b58:	00412c83          	lw	s9,4(sp)
    4b5c:	00012d03          	lw	s10,0(sp)
    4b60:	00048793          	mv	a5,s1
    4b64:	00090513          	mv	a0,s2
    4b68:	02412483          	lw	s1,36(sp)
    4b6c:	02012903          	lw	s2,32(sp)
    4b70:	00000713          	li	a4,0
    4b74:	00000613          	li	a2,0
    4b78:	00000593          	li	a1,0
    4b7c:	03010113          	addi	sp,sp,48
    4b80:	aa5ff06f          	j	4624 <emdnorm>
    4b84:	00000c93          	li	s9,0
    4b88:	f8c6e4e3          	bltu	a3,a2,4b10 <eiremain+0xe4>
    4b8c:	f4dff06f          	j	4ad8 <eiremain+0xac>

00004b90 <emul>:
    4b90:	f7010113          	addi	sp,sp,-144
    4b94:	08912223          	sw	s1,132(sp)
    4b98:	00050493          	mv	s1,a0
    4b9c:	01255503          	lhu	a0,18(a0)
    4ba0:	00008737          	lui	a4,0x8
    4ba4:	fff70713          	addi	a4,a4,-1 # 7fff <__mdiff+0x1b3>
    4ba8:	08812423          	sw	s0,136(sp)
    4bac:	09212023          	sw	s2,128(sp)
    4bb0:	07412c23          	sw	s4,120(sp)
    4bb4:	08112623          	sw	ra,140(sp)
    4bb8:	07312e23          	sw	s3,124(sp)
    4bbc:	07512a23          	sw	s5,116(sp)
    4bc0:	07612823          	sw	s6,112(sp)
    4bc4:	07712623          	sw	s7,108(sp)
    4bc8:	07812423          	sw	s8,104(sp)
    4bcc:	07912223          	sw	s9,100(sp)
    4bd0:	00a77533          	and	a0,a4,a0
    4bd4:	00058913          	mv	s2,a1
    4bd8:	00060413          	mv	s0,a2
    4bdc:	00068a13          	mv	s4,a3
    4be0:	00e51e63          	bne	a0,a4,4bfc <emul+0x6c>
    4be4:	01248993          	addi	s3,s1,18
    4be8:	00048713          	mv	a4,s1
    4bec:	00075603          	lhu	a2,0(a4)
    4bf0:	00270713          	addi	a4,a4,2
    4bf4:	22061e63          	bnez	a2,4e30 <emul+0x2a0>
    4bf8:	ff371ae3          	bne	a4,s3,4bec <emul+0x5c>
    4bfc:	01295603          	lhu	a2,18(s2)
    4c00:	000087b7          	lui	a5,0x8
    4c04:	fff78793          	addi	a5,a5,-1 # 7fff <__mdiff+0x1b3>
    4c08:	00f675b3          	and	a1,a2,a5
    4c0c:	12f59463          	bne	a1,a5,4d34 <emul+0x1a4>
    4c10:	01290693          	addi	a3,s2,18
    4c14:	00090713          	mv	a4,s2
    4c18:	00075783          	lhu	a5,0(a4)
    4c1c:	00270713          	addi	a4,a4,2
    4c20:	22079663          	bnez	a5,4e4c <emul+0x2bc>
    4c24:	fee69ae3          	bne	a3,a4,4c18 <emul+0x88>
    4c28:	000087b7          	lui	a5,0x8
    4c2c:	fff78793          	addi	a5,a5,-1 # 7fff <__mdiff+0x1b3>
    4c30:	10f50463          	beq	a0,a5,4d38 <emul+0x1a8>
    4c34:	00090793          	mv	a5,s2
    4c38:	0007d703          	lhu	a4,0(a5)
    4c3c:	00278793          	addi	a5,a5,2
    4c40:	1c071863          	bnez	a4,4e10 <emul+0x280>
    4c44:	fef69ae3          	bne	a3,a5,4c38 <emul+0xa8>
    4c48:	000135b7          	lui	a1,0x13
    4c4c:	47058593          	addi	a1,a1,1136 # 13470 <ezero>
    4c50:	00048513          	mv	a0,s1
    4c54:	895ff0ef          	jal	ra,44e8 <ecmp>
    4c58:	20050863          	beqz	a0,4e68 <emul+0x2d8>
    4c5c:	0124d503          	lhu	a0,18(s1)
    4c60:	01295603          	lhu	a2,18(s2)
    4c64:	000087b7          	lui	a5,0x8
    4c68:	fff78793          	addi	a5,a5,-1 # 7fff <__mdiff+0x1b3>
    4c6c:	00f57833          	and	a6,a0,a5
    4c70:	00f675b3          	and	a1,a2,a5
    4c74:	1af80a63          	beq	a6,a5,4e28 <emul+0x298>
    4c78:	000087b7          	lui	a5,0x8
    4c7c:	fff78793          	addi	a5,a5,-1 # 7fff <__mdiff+0x1b3>
    4c80:	14f59063          	bne	a1,a5,4dc0 <emul+0x230>
    4c84:	01290693          	addi	a3,s2,18
    4c88:	00090793          	mv	a5,s2
    4c8c:	0007d703          	lhu	a4,0(a5)
    4c90:	00278793          	addi	a5,a5,2
    4c94:	12071663          	bnez	a4,4dc0 <emul+0x230>
    4c98:	fed79ae3          	bne	a5,a3,4c8c <emul+0xfc>
    4c9c:	00008737          	lui	a4,0x8
    4ca0:	fff70713          	addi	a4,a4,-1 # 7fff <__mdiff+0x1b3>
    4ca4:	00f55893          	srli	a7,a0,0xf
    4ca8:	00080593          	mv	a1,a6
    4cac:	01248993          	addi	s3,s1,18
    4cb0:	0ee80463          	beq	a6,a4,4d98 <emul+0x208>
    4cb4:	00095703          	lhu	a4,0(s2)
    4cb8:	00290913          	addi	s2,s2,2
    4cbc:	32071863          	bnez	a4,4fec <emul+0x45c>
    4cc0:	fed91ae3          	bne	s2,a3,4cb4 <emul+0x124>
    4cc4:	00f65793          	srli	a5,a2,0xf
    4cc8:	411787b3          	sub	a5,a5,a7
    4ccc:	00f037b3          	snez	a5,a5
    4cd0:	00f79793          	slli	a5,a5,0xf
    4cd4:	00f41923          	sh	a5,18(s0)
    4cd8:	01240713          	addi	a4,s0,18
    4cdc:	00040793          	mv	a5,s0
    4ce0:	00278793          	addi	a5,a5,2
    4ce4:	fe079f23          	sh	zero,-2(a5)
    4ce8:	fee79ce3          	bne	a5,a4,4ce0 <emul+0x150>
    4cec:	01245783          	lhu	a5,18(s0)
    4cf0:	00008737          	lui	a4,0x8
    4cf4:	fff70713          	addi	a4,a4,-1 # 7fff <__mdiff+0x1b3>
    4cf8:	00e7e7b3          	or	a5,a5,a4
    4cfc:	00f41923          	sh	a5,18(s0)
    4d00:	08c12083          	lw	ra,140(sp)
    4d04:	08812403          	lw	s0,136(sp)
    4d08:	08412483          	lw	s1,132(sp)
    4d0c:	08012903          	lw	s2,128(sp)
    4d10:	07c12983          	lw	s3,124(sp)
    4d14:	07812a03          	lw	s4,120(sp)
    4d18:	07412a83          	lw	s5,116(sp)
    4d1c:	07012b03          	lw	s6,112(sp)
    4d20:	06c12b83          	lw	s7,108(sp)
    4d24:	06812c03          	lw	s8,104(sp)
    4d28:	06412c83          	lw	s9,100(sp)
    4d2c:	09010113          	addi	sp,sp,144
    4d30:	00008067          	ret
    4d34:	08f51663          	bne	a0,a5,4dc0 <emul+0x230>
    4d38:	01248993          	addi	s3,s1,18
    4d3c:	00048793          	mv	a5,s1
    4d40:	0007d703          	lhu	a4,0(a5)
    4d44:	00278793          	addi	a5,a5,2
    4d48:	2a071a63          	bnez	a4,4ffc <emul+0x46c>
    4d4c:	fef99ae3          	bne	s3,a5,4d40 <emul+0x1b0>
    4d50:	000135b7          	lui	a1,0x13
    4d54:	47058593          	addi	a1,a1,1136 # 13470 <ezero>
    4d58:	00090513          	mv	a0,s2
    4d5c:	f8cff0ef          	jal	ra,44e8 <ecmp>
    4d60:	10050463          	beqz	a0,4e68 <emul+0x2d8>
    4d64:	01295603          	lhu	a2,18(s2)
    4d68:	000087b7          	lui	a5,0x8
    4d6c:	fff78793          	addi	a5,a5,-1 # 7fff <__mdiff+0x1b3>
    4d70:	00f675b3          	and	a1,a2,a5
    4d74:	12f58063          	beq	a1,a5,4e94 <emul+0x304>
    4d78:	0124d503          	lhu	a0,18(s1)
    4d7c:	00f57733          	and	a4,a0,a5
    4d80:	04f71063          	bne	a4,a5,4dc0 <emul+0x230>
    4d84:	00048793          	mv	a5,s1
    4d88:	0007d703          	lhu	a4,0(a5)
    4d8c:	00278793          	addi	a5,a5,2
    4d90:	2a071463          	bnez	a4,5038 <emul+0x4a8>
    4d94:	fef99ae3          	bne	s3,a5,4d88 <emul+0x1f8>
    4d98:	0004d783          	lhu	a5,0(s1)
    4d9c:	00248493          	addi	s1,s1,2
    4da0:	24079a63          	bnez	a5,4ff4 <emul+0x464>
    4da4:	ff349ae3          	bne	s1,s3,4d98 <emul+0x208>
    4da8:	00f55893          	srli	a7,a0,0xf
    4dac:	00008737          	lui	a4,0x8
    4db0:	fff70713          	addi	a4,a4,-1 # 7fff <__mdiff+0x1b3>
    4db4:	f0e598e3          	bne	a1,a4,4cc4 <emul+0x134>
    4db8:	01290693          	addi	a3,s2,18
    4dbc:	ef9ff06f          	j	4cb4 <emul+0x124>
    4dc0:	00048513          	mv	a0,s1
    4dc4:	00c10593          	addi	a1,sp,12
    4dc8:	e6cff0ef          	jal	ra,4434 <emovi>
    4dcc:	02810593          	addi	a1,sp,40
    4dd0:	00090513          	mv	a0,s2
    4dd4:	e60ff0ef          	jal	ra,4434 <emovi>
    4dd8:	00e15483          	lhu	s1,14(sp)
    4ddc:	02a15983          	lhu	s3,42(sp)
    4de0:	0a049e63          	bnez	s1,4e9c <emul+0x30c>
    4de4:	01010793          	addi	a5,sp,16
    4de8:	02410693          	addi	a3,sp,36
    4dec:	22d78263          	beq	a5,a3,5010 <emul+0x480>
    4df0:	0007d703          	lhu	a4,0(a5)
    4df4:	00278793          	addi	a5,a5,2
    4df8:	fe070ae3          	beqz	a4,4dec <emul+0x25c>
    4dfc:	00c10513          	addi	a0,sp,12
    4e00:	a98ff0ef          	jal	ra,4098 <enormlz>
    4e04:	02a15703          	lhu	a4,42(sp)
    4e08:	40a004b3          	neg	s1,a0
    4e0c:	0940006f          	j	4ea0 <emul+0x310>
    4e10:	0124d503          	lhu	a0,18(s1)
    4e14:	000087b7          	lui	a5,0x8
    4e18:	fff78793          	addi	a5,a5,-1 # 7fff <__mdiff+0x1b3>
    4e1c:	00f575b3          	and	a1,a0,a5
    4e20:	00058813          	mv	a6,a1
    4e24:	e6f592e3          	bne	a1,a5,4c88 <emul+0xf8>
    4e28:	01248993          	addi	s3,s1,18
    4e2c:	f59ff06f          	j	4d84 <emul+0x1f4>
    4e30:	01448713          	addi	a4,s1,20
    4e34:	0004d783          	lhu	a5,0(s1)
    4e38:	00248493          	addi	s1,s1,2
    4e3c:	00240413          	addi	s0,s0,2
    4e40:	fef41f23          	sh	a5,-2(s0)
    4e44:	fee498e3          	bne	s1,a4,4e34 <emul+0x2a4>
    4e48:	eb9ff06f          	j	4d00 <emul+0x170>
    4e4c:	01440713          	addi	a4,s0,20
    4e50:	00095783          	lhu	a5,0(s2)
    4e54:	00240413          	addi	s0,s0,2
    4e58:	00290913          	addi	s2,s2,2
    4e5c:	fef41f23          	sh	a5,-2(s0)
    4e60:	fee418e3          	bne	s0,a4,4e50 <emul+0x2c0>
    4e64:	e9dff06f          	j	4d00 <emul+0x170>
    4e68:	01040713          	addi	a4,s0,16
    4e6c:	00040793          	mv	a5,s0
    4e70:	00278793          	addi	a5,a5,2
    4e74:	fe079f23          	sh	zero,-2(a5)
    4e78:	fee79ce3          	bne	a5,a4,4e70 <emul+0x2e0>
    4e7c:	ffffc7b7          	lui	a5,0xffffc
    4e80:	00f41823          	sh	a5,16(s0)
    4e84:	ffff87b7          	lui	a5,0xffff8
    4e88:	fff7c793          	not	a5,a5
    4e8c:	00f41923          	sh	a5,18(s0)
    4e90:	e71ff06f          	j	4d00 <emul+0x170>
    4e94:	01290693          	addi	a3,s2,18
    4e98:	d9dff06f          	j	4c34 <emul+0xa4>
    4e9c:	00098713          	mv	a4,s3
    4ea0:	00098913          	mv	s2,s3
    4ea4:	02c10793          	addi	a5,sp,44
    4ea8:	04010693          	addi	a3,sp,64
    4eac:	02071263          	bnez	a4,4ed0 <emul+0x340>
    4eb0:	16f68a63          	beq	a3,a5,5024 <emul+0x494>
    4eb4:	0007d703          	lhu	a4,0(a5) # ffff8000 <__ctr0_io_space_begin+0xffff8200>
    4eb8:	00278793          	addi	a5,a5,2
    4ebc:	fe070ae3          	beqz	a4,4eb0 <emul+0x320>
    4ec0:	02810513          	addi	a0,sp,40
    4ec4:	9d4ff0ef          	jal	ra,4098 <enormlz>
    4ec8:	02a15703          	lhu	a4,42(sp)
    4ecc:	40a98933          	sub	s2,s3,a0
    4ed0:	02815783          	lhu	a5,40(sp)
    4ed4:	038a0993          	addi	s3,s4,56
    4ed8:	02ea1b23          	sh	a4,54(s4)
    4edc:	02fa1a23          	sh	a5,52(s4)
    4ee0:	04ea0713          	addi	a4,s4,78
    4ee4:	00098793          	mv	a5,s3
    4ee8:	00079023          	sh	zero,0(a5)
    4eec:	00278793          	addi	a5,a5,2
    4ef0:	fef71ce3          	bne	a4,a5,4ee8 <emul+0x358>
    4ef4:	04ca0c13          	addi	s8,s4,76
    4ef8:	00000b93          	li	s7,0
    4efc:	02410a93          	addi	s5,sp,36
    4f00:	01010c93          	addi	s9,sp,16
    4f04:	04610b13          	addi	s6,sp,70
    4f08:	000ad503          	lhu	a0,0(s5)
    4f0c:	ffea8a93          	addi	s5,s5,-2
    4f10:	08051c63          	bnez	a0,4fa8 <emul+0x418>
    4f14:	04ca5783          	lhu	a5,76(s4)
    4f18:	000c0713          	mv	a4,s8
    4f1c:	00fbebb3          	or	s7,s7,a5
    4f20:	ffe75603          	lhu	a2,-2(a4)
    4f24:	ffe70713          	addi	a4,a4,-2
    4f28:	00c71123          	sh	a2,2(a4)
    4f2c:	fee99ae3          	bne	s3,a4,4f20 <emul+0x390>
    4f30:	020a1c23          	sh	zero,56(s4)
    4f34:	fd9a9ae3          	bne	s5,s9,4f08 <emul+0x378>
    4f38:	034a0713          	addi	a4,s4,52
    4f3c:	02810793          	addi	a5,sp,40
    4f40:	04210613          	addi	a2,sp,66
    4f44:	00075683          	lhu	a3,0(a4)
    4f48:	00278793          	addi	a5,a5,2
    4f4c:	00270713          	addi	a4,a4,2
    4f50:	fed79f23          	sh	a3,-2(a5)
    4f54:	fef618e3          	bne	a2,a5,4f44 <emul+0x3b4>
    4f58:	ffffc6b7          	lui	a3,0xffffc
    4f5c:	012484b3          	add	s1,s1,s2
    4f60:	00268693          	addi	a3,a3,2 # ffffc002 <__ctr0_io_space_begin+0xffffc202>
    4f64:	000b8593          	mv	a1,s7
    4f68:	02810513          	addi	a0,sp,40
    4f6c:	000a0793          	mv	a5,s4
    4f70:	04000713          	li	a4,64
    4f74:	00d486b3          	add	a3,s1,a3
    4f78:	00000613          	li	a2,0
    4f7c:	ea8ff0ef          	jal	ra,4624 <emdnorm>
    4f80:	02815703          	lhu	a4,40(sp)
    4f84:	00c15783          	lhu	a5,12(sp)
    4f88:	00040593          	mv	a1,s0
    4f8c:	02810513          	addi	a0,sp,40
    4f90:	40e787b3          	sub	a5,a5,a4
    4f94:	00f037b3          	snez	a5,a5
    4f98:	40f007b3          	neg	a5,a5
    4f9c:	02f11423          	sh	a5,40(sp)
    4fa0:	83cff0ef          	jal	ra,3fdc <emovo.constprop.0>
    4fa4:	d5dff06f          	j	4d00 <emul+0x170>
    4fa8:	04410613          	addi	a2,sp,68
    4fac:	02810593          	addi	a1,sp,40
    4fb0:	f51fe0ef          	jal	ra,3f00 <m16m>
    4fb4:	000c0513          	mv	a0,s8
    4fb8:	00000593          	li	a1,0
    4fbc:	05c10613          	addi	a2,sp,92
    4fc0:	00055783          	lhu	a5,0(a0)
    4fc4:	00065703          	lhu	a4,0(a2)
    4fc8:	ffe50513          	addi	a0,a0,-2
    4fcc:	ffe60613          	addi	a2,a2,-2
    4fd0:	00f70733          	add	a4,a4,a5
    4fd4:	00b70733          	add	a4,a4,a1
    4fd8:	01075593          	srli	a1,a4,0x10
    4fdc:	00e51123          	sh	a4,2(a0)
    4fe0:	0015f593          	andi	a1,a1,1
    4fe4:	fd661ee3          	bne	a2,s6,4fc0 <emul+0x430>
    4fe8:	f2dff06f          	j	4f14 <emul+0x384>
    4fec:	00000793          	li	a5,0
    4ff0:	cd9ff06f          	j	4cc8 <emul+0x138>
    4ff4:	00000893          	li	a7,0
    4ff8:	db5ff06f          	j	4dac <emul+0x21c>
    4ffc:	000087b7          	lui	a5,0x8
    5000:	fff78793          	addi	a5,a5,-1 # 7fff <__mdiff+0x1b3>
    5004:	e8f588e3          	beq	a1,a5,4e94 <emul+0x304>
    5008:	0124d503          	lhu	a0,18(s1)
    500c:	d79ff06f          	j	4d84 <emul+0x1f4>
    5010:	01440793          	addi	a5,s0,20
    5014:	00240413          	addi	s0,s0,2
    5018:	fe041f23          	sh	zero,-2(s0)
    501c:	fef41ce3          	bne	s0,a5,5014 <emul+0x484>
    5020:	ce1ff06f          	j	4d00 <emul+0x170>
    5024:	01440793          	addi	a5,s0,20
    5028:	00240413          	addi	s0,s0,2
    502c:	fe041f23          	sh	zero,-2(s0)
    5030:	fef41ce3          	bne	s0,a5,5028 <emul+0x498>
    5034:	ccdff06f          	j	4d00 <emul+0x170>
    5038:	00008837          	lui	a6,0x8
    503c:	fff80813          	addi	a6,a6,-1 # 7fff <__mdiff+0x1b3>
    5040:	c39ff06f          	j	4c78 <emul+0xe8>

00005044 <ediv>:
    5044:	01255783          	lhu	a5,18(a0)
    5048:	f5010113          	addi	sp,sp,-176
    504c:	0a812423          	sw	s0,168(sp)
    5050:	fff7c793          	not	a5,a5
    5054:	0a912223          	sw	s1,164(sp)
    5058:	0b212023          	sw	s2,160(sp)
    505c:	09312e23          	sw	s3,156(sp)
    5060:	0a112623          	sw	ra,172(sp)
    5064:	09412c23          	sw	s4,152(sp)
    5068:	09512a23          	sw	s5,148(sp)
    506c:	09612823          	sw	s6,144(sp)
    5070:	09712623          	sw	s7,140(sp)
    5074:	09812423          	sw	s8,136(sp)
    5078:	09912223          	sw	s9,132(sp)
    507c:	09a12023          	sw	s10,128(sp)
    5080:	07b12e23          	sw	s11,124(sp)
    5084:	01179713          	slli	a4,a5,0x11
    5088:	00050493          	mv	s1,a0
    508c:	00058913          	mv	s2,a1
    5090:	00060413          	mv	s0,a2
    5094:	00068993          	mv	s3,a3
    5098:	00071e63          	bnez	a4,50b4 <ediv+0x70>
    509c:	01250693          	addi	a3,a0,18
    50a0:	00050793          	mv	a5,a0
    50a4:	0007d703          	lhu	a4,0(a5)
    50a8:	00278793          	addi	a5,a5,2
    50ac:	30071463          	bnez	a4,53b4 <ediv+0x370>
    50b0:	fed79ae3          	bne	a5,a3,50a4 <ediv+0x60>
    50b4:	01295783          	lhu	a5,18(s2)
    50b8:	fff7c793          	not	a5,a5
    50bc:	01179713          	slli	a4,a5,0x11
    50c0:	00071e63          	bnez	a4,50dc <ediv+0x98>
    50c4:	01290693          	addi	a3,s2,18
    50c8:	00090793          	mv	a5,s2
    50cc:	0007d703          	lhu	a4,0(a5)
    50d0:	00278793          	addi	a5,a5,2
    50d4:	2e071e63          	bnez	a4,53d0 <ediv+0x38c>
    50d8:	fef69ae3          	bne	a3,a5,50cc <ediv+0x88>
    50dc:	00013a37          	lui	s4,0x13
    50e0:	470a0593          	addi	a1,s4,1136 # 13470 <ezero>
    50e4:	00048513          	mv	a0,s1
    50e8:	c00ff0ef          	jal	ra,44e8 <ecmp>
    50ec:	30050063          	beqz	a0,53ec <ediv+0x3a8>
    50f0:	0124d603          	lhu	a2,18(s1)
    50f4:	01295583          	lhu	a1,18(s2)
    50f8:	000087b7          	lui	a5,0x8
    50fc:	fff78793          	addi	a5,a5,-1 # 7fff <__mdiff+0x1b3>
    5100:	00f67533          	and	a0,a2,a5
    5104:	00f5f6b3          	and	a3,a1,a5
    5108:	0af51663          	bne	a0,a5,51b4 <ediv+0x170>
    510c:	01248813          	addi	a6,s1,18
    5110:	00048793          	mv	a5,s1
    5114:	0007d703          	lhu	a4,0(a5)
    5118:	00278793          	addi	a5,a5,2
    511c:	08071863          	bnez	a4,51ac <ediv+0x168>
    5120:	ff079ae3          	bne	a5,a6,5114 <ediv+0xd0>
    5124:	000087b7          	lui	a5,0x8
    5128:	fff78793          	addi	a5,a5,-1 # 7fff <__mdiff+0x1b3>
    512c:	2cf69c63          	bne	a3,a5,5404 <ediv+0x3c0>
    5130:	01290693          	addi	a3,s2,18
    5134:	00090793          	mv	a5,s2
    5138:	0007d703          	lhu	a4,0(a5)
    513c:	00278793          	addi	a5,a5,2
    5140:	48071e63          	bnez	a4,55dc <ediv+0x598>
    5144:	fed79ae3          	bne	a5,a3,5138 <ediv+0xf4>
    5148:	01040713          	addi	a4,s0,16
    514c:	00040793          	mv	a5,s0
    5150:	00278793          	addi	a5,a5,2
    5154:	fe079f23          	sh	zero,-2(a5)
    5158:	fee79ce3          	bne	a5,a4,5150 <ediv+0x10c>
    515c:	ffffc7b7          	lui	a5,0xffffc
    5160:	00f41823          	sh	a5,16(s0)
    5164:	ffff87b7          	lui	a5,0xffff8
    5168:	fff7c793          	not	a5,a5
    516c:	00f41923          	sh	a5,18(s0)
    5170:	0ac12083          	lw	ra,172(sp)
    5174:	0a812403          	lw	s0,168(sp)
    5178:	0a412483          	lw	s1,164(sp)
    517c:	0a012903          	lw	s2,160(sp)
    5180:	09c12983          	lw	s3,156(sp)
    5184:	09812a03          	lw	s4,152(sp)
    5188:	09412a83          	lw	s5,148(sp)
    518c:	09012b03          	lw	s6,144(sp)
    5190:	08c12b83          	lw	s7,140(sp)
    5194:	08812c03          	lw	s8,136(sp)
    5198:	08412c83          	lw	s9,132(sp)
    519c:	08012d03          	lw	s10,128(sp)
    51a0:	07c12d83          	lw	s11,124(sp)
    51a4:	0b010113          	addi	sp,sp,176
    51a8:	00008067          	ret
    51ac:	000087b7          	lui	a5,0x8
    51b0:	fff78793          	addi	a5,a5,-1 # 7fff <__mdiff+0x1b3>
    51b4:	26f68263          	beq	a3,a5,5418 <ediv+0x3d4>
    51b8:	00048513          	mv	a0,s1
    51bc:	01c10593          	addi	a1,sp,28
    51c0:	a74ff0ef          	jal	ra,4434 <emovi>
    51c4:	03810593          	addi	a1,sp,56
    51c8:	00090513          	mv	a0,s2
    51cc:	a68ff0ef          	jal	ra,4434 <emovi>
    51d0:	03a15a83          	lhu	s5,58(sp)
    51d4:	01e15483          	lhu	s1,30(sp)
    51d8:	2c0a8863          	beqz	s5,54a8 <ediv+0x464>
    51dc:	01512623          	sw	s5,12(sp)
    51e0:	00048613          	mv	a2,s1
    51e4:	00912423          	sw	s1,8(sp)
    51e8:	02010793          	addi	a5,sp,32
    51ec:	03410693          	addi	a3,sp,52
    51f0:	02061263          	bnez	a2,5214 <ediv+0x1d0>
    51f4:	3af68663          	beq	a3,a5,55a0 <ediv+0x55c>
    51f8:	0007d703          	lhu	a4,0(a5)
    51fc:	00278793          	addi	a5,a5,2
    5200:	fe070ae3          	beqz	a4,51f4 <ediv+0x1b0>
    5204:	01c10513          	addi	a0,sp,28
    5208:	e91fe0ef          	jal	ra,4098 <enormlz>
    520c:	40a487b3          	sub	a5,s1,a0
    5210:	00f12423          	sw	a5,8(sp)
    5214:	03812703          	lw	a4,56(sp)
    5218:	03898a93          	addi	s5,s3,56
    521c:	000a8793          	mv	a5,s5
    5220:	02e9aa23          	sw	a4,52(s3)
    5224:	04e98493          	addi	s1,s3,78
    5228:	00278793          	addi	a5,a5,2
    522c:	fe079f23          	sh	zero,-2(a5)
    5230:	fe979ce3          	bne	a5,s1,5228 <ediv+0x1e4>
    5234:	03810513          	addi	a0,sp,56
    5238:	bf1fe0ef          	jal	ra,3e28 <eshdn1>
    523c:	02215b03          	lhu	s6,34(sp)
    5240:	00010937          	lui	s2,0x10
    5244:	05010c13          	addi	s8,sp,80
    5248:	010b1a13          	slli	s4,s6,0x10
    524c:	416a0a33          	sub	s4,s4,s6
    5250:	03a10c93          	addi	s9,sp,58
    5254:	fff90913          	addi	s2,s2,-1 # ffff <__multf3+0x2cf>
    5258:	06e10d13          	addi	s10,sp,110
    525c:	05610d93          	addi	s11,sp,86
    5260:	03c15783          	lhu	a5,60(sp)
    5264:	03e15703          	lhu	a4,62(sp)
    5268:	00090b93          	mv	s7,s2
    526c:	01079793          	slli	a5,a5,0x10
    5270:	00e78533          	add	a0,a5,a4
    5274:	00aa6a63          	bltu	s4,a0,5288 <ediv+0x244>
    5278:	000b0593          	mv	a1,s6
    527c:	a81fb0ef          	jal	ra,cfc <__udivsi3>
    5280:	01051b93          	slli	s7,a0,0x10
    5284:	010bdb93          	srli	s7,s7,0x10
    5288:	05410613          	addi	a2,sp,84
    528c:	01c10593          	addi	a1,sp,28
    5290:	000b8513          	mv	a0,s7
    5294:	c6dfe0ef          	jal	ra,3f00 <m16m>
    5298:	03c10713          	addi	a4,sp,60
    529c:	05810793          	addi	a5,sp,88
    52a0:	0007d603          	lhu	a2,0(a5)
    52a4:	00075683          	lhu	a3,0(a4)
    52a8:	00278793          	addi	a5,a5,2
    52ac:	00270713          	addi	a4,a4,2
    52b0:	22d61463          	bne	a2,a3,54d8 <ediv+0x494>
    52b4:	ffa796e3          	bne	a5,s10,52a0 <ediv+0x25c>
    52b8:	00000793          	li	a5,0
    52bc:	06c10693          	addi	a3,sp,108
    52c0:	000c0613          	mv	a2,s8
    52c4:	00065703          	lhu	a4,0(a2)
    52c8:	0006d583          	lhu	a1,0(a3)
    52cc:	ffe60613          	addi	a2,a2,-2
    52d0:	40f70733          	sub	a4,a4,a5
    52d4:	40b70733          	sub	a4,a4,a1
    52d8:	01075793          	srli	a5,a4,0x10
    52dc:	00e61123          	sh	a4,2(a2)
    52e0:	0017f793          	andi	a5,a5,1
    52e4:	ffe68693          	addi	a3,a3,-2
    52e8:	fd961ee3          	bne	a2,s9,52c4 <ediv+0x280>
    52ec:	017a9023          	sh	s7,0(s5)
    52f0:	03c10793          	addi	a5,sp,60
    52f4:	0027d703          	lhu	a4,2(a5)
    52f8:	00278793          	addi	a5,a5,2
    52fc:	fee79f23          	sh	a4,-2(a5)
    5300:	ff879ae3          	bne	a5,s8,52f4 <ediv+0x2b0>
    5304:	04011823          	sh	zero,80(sp)
    5308:	002a8a93          	addi	s5,s5,2
    530c:	f5549ae3          	bne	s1,s5,5260 <ediv+0x21c>
    5310:	00000713          	li	a4,0
    5314:	03c10793          	addi	a5,sp,60
    5318:	05210613          	addi	a2,sp,82
    531c:	0007d683          	lhu	a3,0(a5)
    5320:	00278793          	addi	a5,a5,2
    5324:	00d76733          	or	a4,a4,a3
    5328:	fec79ae3          	bne	a5,a2,531c <ediv+0x2d8>
    532c:	01071793          	slli	a5,a4,0x10
    5330:	4107d793          	srai	a5,a5,0x10
    5334:	00078463          	beqz	a5,533c <ediv+0x2f8>
    5338:	00100713          	li	a4,1
    533c:	01071593          	slli	a1,a4,0x10
    5340:	0105d593          	srli	a1,a1,0x10
    5344:	03498713          	addi	a4,s3,52
    5348:	03810793          	addi	a5,sp,56
    534c:	00075683          	lhu	a3,0(a4)
    5350:	00278793          	addi	a5,a5,2
    5354:	00270713          	addi	a4,a4,2
    5358:	fed79f23          	sh	a3,-2(a5)
    535c:	fef618e3          	bne	a2,a5,534c <ediv+0x308>
    5360:	00c12783          	lw	a5,12(sp)
    5364:	00812703          	lw	a4,8(sp)
    5368:	000046b7          	lui	a3,0x4
    536c:	fff68693          	addi	a3,a3,-1 # 3fff <emovo.constprop.0+0x23>
    5370:	40e78ab3          	sub	s5,a5,a4
    5374:	03810513          	addi	a0,sp,56
    5378:	00098793          	mv	a5,s3
    537c:	04000713          	li	a4,64
    5380:	00da86b3          	add	a3,s5,a3
    5384:	00000613          	li	a2,0
    5388:	a9cff0ef          	jal	ra,4624 <emdnorm>
    538c:	03815703          	lhu	a4,56(sp)
    5390:	01c15783          	lhu	a5,28(sp)
    5394:	00040593          	mv	a1,s0
    5398:	03810513          	addi	a0,sp,56
    539c:	40e787b3          	sub	a5,a5,a4
    53a0:	00f037b3          	snez	a5,a5
    53a4:	40f007b3          	neg	a5,a5
    53a8:	02f11c23          	sh	a5,56(sp)
    53ac:	c31fe0ef          	jal	ra,3fdc <emovo.constprop.0>
    53b0:	dc1ff06f          	j	5170 <ediv+0x12c>
    53b4:	01448713          	addi	a4,s1,20
    53b8:	0004d783          	lhu	a5,0(s1)
    53bc:	00248493          	addi	s1,s1,2
    53c0:	00240413          	addi	s0,s0,2
    53c4:	fef41f23          	sh	a5,-2(s0)
    53c8:	fee498e3          	bne	s1,a4,53b8 <ediv+0x374>
    53cc:	da5ff06f          	j	5170 <ediv+0x12c>
    53d0:	01490713          	addi	a4,s2,20
    53d4:	00095783          	lhu	a5,0(s2)
    53d8:	00290913          	addi	s2,s2,2
    53dc:	00240413          	addi	s0,s0,2
    53e0:	fef41f23          	sh	a5,-2(s0)
    53e4:	fee918e3          	bne	s2,a4,53d4 <ediv+0x390>
    53e8:	d89ff06f          	j	5170 <ediv+0x12c>
    53ec:	470a0593          	addi	a1,s4,1136
    53f0:	00090513          	mv	a0,s2
    53f4:	8f4ff0ef          	jal	ra,44e8 <ecmp>
    53f8:	ce051ce3          	bnez	a0,50f0 <ediv+0xac>
    53fc:	d4dff06f          	j	5148 <ediv+0x104>
    5400:	da080ce3          	beqz	a6,51b8 <ediv+0x174>
    5404:	01440793          	addi	a5,s0,20
    5408:	00240413          	addi	s0,s0,2
    540c:	fe041f23          	sh	zero,-2(s0)
    5410:	fef41ce3          	bne	s0,a5,5408 <ediv+0x3c4>
    5414:	d5dff06f          	j	5170 <ediv+0x12c>
    5418:	00000813          	li	a6,0
    541c:	01290693          	addi	a3,s2,18
    5420:	00090793          	mv	a5,s2
    5424:	0007d703          	lhu	a4,0(a5)
    5428:	00278793          	addi	a5,a5,2
    542c:	fc071ae3          	bnez	a4,5400 <ediv+0x3bc>
    5430:	fed79ae3          	bne	a5,a3,5424 <ediv+0x3e0>
    5434:	000087b7          	lui	a5,0x8
    5438:	fff78793          	addi	a5,a5,-1 # 7fff <__mdiff+0x1b3>
    543c:	04f50a63          	beq	a0,a5,5490 <ediv+0x44c>
    5440:	00f65613          	srli	a2,a2,0xf
    5444:	00095783          	lhu	a5,0(s2)
    5448:	00290913          	addi	s2,s2,2
    544c:	18079063          	bnez	a5,55cc <ediv+0x588>
    5450:	fed91ae3          	bne	s2,a3,5444 <ediv+0x400>
    5454:	00f5d593          	srli	a1,a1,0xf
    5458:	00c58463          	beq	a1,a2,5460 <ediv+0x41c>
    545c:	00008737          	lui	a4,0x8
    5460:	00e41923          	sh	a4,18(s0)
    5464:	00040793          	mv	a5,s0
    5468:	01240713          	addi	a4,s0,18
    546c:	00278793          	addi	a5,a5,2
    5470:	fe079f23          	sh	zero,-2(a5)
    5474:	fee79ce3          	bne	a5,a4,546c <ediv+0x428>
    5478:	01245783          	lhu	a5,18(s0)
    547c:	00008737          	lui	a4,0x8
    5480:	fff70713          	addi	a4,a4,-1 # 7fff <__mdiff+0x1b3>
    5484:	00e7e7b3          	or	a5,a5,a4
    5488:	00f41923          	sh	a5,18(s0)
    548c:	ce5ff06f          	j	5170 <ediv+0x12c>
    5490:	01248513          	addi	a0,s1,18
    5494:	0004d783          	lhu	a5,0(s1)
    5498:	00248493          	addi	s1,s1,2
    549c:	12079c63          	bnez	a5,55d4 <ediv+0x590>
    54a0:	fea49ae3          	bne	s1,a0,5494 <ediv+0x450>
    54a4:	f9dff06f          	j	5440 <ediv+0x3fc>
    54a8:	03c10793          	addi	a5,sp,60
    54ac:	05010c13          	addi	s8,sp,80
    54b0:	0cfc0e63          	beq	s8,a5,558c <ediv+0x548>
    54b4:	0007d703          	lhu	a4,0(a5)
    54b8:	00278793          	addi	a5,a5,2
    54bc:	fe070ae3          	beqz	a4,54b0 <ediv+0x46c>
    54c0:	03810513          	addi	a0,sp,56
    54c4:	bd5fe0ef          	jal	ra,4098 <enormlz>
    54c8:	40a007b3          	neg	a5,a0
    54cc:	01e15603          	lhu	a2,30(sp)
    54d0:	00f12623          	sw	a5,12(sp)
    54d4:	d11ff06f          	j	51e4 <ediv+0x1a0>
    54d8:	dec6f0e3          	bgeu	a3,a2,52b8 <ediv+0x274>
    54dc:	fffb8793          	addi	a5,s7,-1
    54e0:	01079893          	slli	a7,a5,0x10
    54e4:	0108d893          	srli	a7,a7,0x10
    54e8:	00000693          	li	a3,0
    54ec:	03410613          	addi	a2,sp,52
    54f0:	06c10713          	addi	a4,sp,108
    54f4:	00075783          	lhu	a5,0(a4)
    54f8:	00065583          	lhu	a1,0(a2)
    54fc:	ffe70713          	addi	a4,a4,-2
    5500:	40d787b3          	sub	a5,a5,a3
    5504:	40b787b3          	sub	a5,a5,a1
    5508:	0107d693          	srli	a3,a5,0x10
    550c:	00f71123          	sh	a5,2(a4)
    5510:	0016f693          	andi	a3,a3,1
    5514:	ffe60613          	addi	a2,a2,-2
    5518:	fdb71ee3          	bne	a4,s11,54f4 <ediv+0x4b0>
    551c:	03c10713          	addi	a4,sp,60
    5520:	05810793          	addi	a5,sp,88
    5524:	0007d603          	lhu	a2,0(a5)
    5528:	00075683          	lhu	a3,0(a4)
    552c:	00278793          	addi	a5,a5,2
    5530:	00270713          	addi	a4,a4,2
    5534:	00d61863          	bne	a2,a3,5544 <ediv+0x500>
    5538:	ffa796e3          	bne	a5,s10,5524 <ediv+0x4e0>
    553c:	00088b93          	mv	s7,a7
    5540:	d79ff06f          	j	52b8 <ediv+0x274>
    5544:	fec6fce3          	bgeu	a3,a2,553c <ediv+0x4f8>
    5548:	ffeb8513          	addi	a0,s7,-2
    554c:	01051b93          	slli	s7,a0,0x10
    5550:	010bdb93          	srli	s7,s7,0x10
    5554:	00000693          	li	a3,0
    5558:	03410613          	addi	a2,sp,52
    555c:	06c10713          	addi	a4,sp,108
    5560:	00075783          	lhu	a5,0(a4)
    5564:	00065583          	lhu	a1,0(a2)
    5568:	ffe70713          	addi	a4,a4,-2
    556c:	40d787b3          	sub	a5,a5,a3
    5570:	40b787b3          	sub	a5,a5,a1
    5574:	0107d693          	srli	a3,a5,0x10
    5578:	00f71123          	sh	a5,2(a4)
    557c:	0016f693          	andi	a3,a3,1
    5580:	ffe60613          	addi	a2,a2,-2
    5584:	fdb71ee3          	bne	a4,s11,5560 <ediv+0x51c>
    5588:	d31ff06f          	j	52b8 <ediv+0x274>
    558c:	01440793          	addi	a5,s0,20
    5590:	00240413          	addi	s0,s0,2
    5594:	fe041f23          	sh	zero,-2(s0)
    5598:	fef41ce3          	bne	s0,a5,5590 <ediv+0x54c>
    559c:	bd5ff06f          	j	5170 <ediv+0x12c>
    55a0:	01c15703          	lhu	a4,28(sp)
    55a4:	03815783          	lhu	a5,56(sp)
    55a8:	00f70463          	beq	a4,a5,55b0 <ediv+0x56c>
    55ac:	00008637          	lui	a2,0x8
    55b0:	00c41923          	sh	a2,18(s0)
    55b4:	01240713          	addi	a4,s0,18
    55b8:	00040793          	mv	a5,s0
    55bc:	00278793          	addi	a5,a5,2
    55c0:	fe079f23          	sh	zero,-2(a5)
    55c4:	fee79ce3          	bne	a5,a4,55bc <ediv+0x578>
    55c8:	eb1ff06f          	j	5478 <ediv+0x434>
    55cc:	00000593          	li	a1,0
    55d0:	e89ff06f          	j	5458 <ediv+0x414>
    55d4:	00000613          	li	a2,0
    55d8:	e6dff06f          	j	5444 <ediv+0x400>
    55dc:	00100813          	li	a6,1
    55e0:	e41ff06f          	j	5420 <ediv+0x3dc>

000055e4 <e113toe.isra.0>:
    55e4:	fd010113          	addi	sp,sp,-48
    55e8:	02812423          	sw	s0,40(sp)
    55ec:	02112623          	sw	ra,44(sp)
    55f0:	00058413          	mv	s0,a1
    55f4:	00410793          	addi	a5,sp,4
    55f8:	01e10713          	addi	a4,sp,30
    55fc:	00278793          	addi	a5,a5,2
    5600:	fe079f23          	sh	zero,-2(a5)
    5604:	fee79ce3          	bne	a5,a4,55fc <e113toe.isra.0+0x18>
    5608:	00e55603          	lhu	a2,14(a0)
    560c:	01061793          	slli	a5,a2,0x10
    5610:	4107d793          	srai	a5,a5,0x10
    5614:	0607ca63          	bltz	a5,5688 <e113toe.isra.0+0xa4>
    5618:	000087b7          	lui	a5,0x8
    561c:	fff78793          	addi	a5,a5,-1 # 7fff <__mdiff+0x1b3>
    5620:	00011223          	sh	zero,4(sp)
    5624:	00f67633          	and	a2,a2,a5
    5628:	06f60c63          	beq	a2,a5,56a0 <e113toe.isra.0+0xbc>
    562c:	00e50793          	addi	a5,a0,14
    5630:	00c11323          	sh	a2,6(sp)
    5634:	00a10713          	addi	a4,sp,10
    5638:	ffe7d683          	lhu	a3,-2(a5)
    563c:	ffe78793          	addi	a5,a5,-2
    5640:	00270713          	addi	a4,a4,2
    5644:	fed71f23          	sh	a3,-2(a4)
    5648:	fef518e3          	bne	a0,a5,5638 <e113toe.isra.0+0x54>
    564c:	02061263          	bnez	a2,5670 <e113toe.isra.0+0x8c>
    5650:	00011423          	sh	zero,8(sp)
    5654:	00040593          	mv	a1,s0
    5658:	00410513          	addi	a0,sp,4
    565c:	981fe0ef          	jal	ra,3fdc <emovo.constprop.0>
    5660:	02c12083          	lw	ra,44(sp)
    5664:	02812403          	lw	s0,40(sp)
    5668:	03010113          	addi	sp,sp,48
    566c:	00008067          	ret
    5670:	00100793          	li	a5,1
    5674:	fff00593          	li	a1,-1
    5678:	00410513          	addi	a0,sp,4
    567c:	00f11423          	sh	a5,8(sp)
    5680:	b95fe0ef          	jal	ra,4214 <eshift.part.0>
    5684:	fd1ff06f          	j	5654 <e113toe.isra.0+0x70>
    5688:	fff00793          	li	a5,-1
    568c:	00f11223          	sh	a5,4(sp)
    5690:	000087b7          	lui	a5,0x8
    5694:	fff78793          	addi	a5,a5,-1 # 7fff <__mdiff+0x1b3>
    5698:	00f67633          	and	a2,a2,a5
    569c:	f8f618e3          	bne	a2,a5,562c <e113toe.isra.0+0x48>
    56a0:	00050793          	mv	a5,a0
    56a4:	00e50693          	addi	a3,a0,14
    56a8:	0007d703          	lhu	a4,0(a5)
    56ac:	00278793          	addi	a5,a5,2
    56b0:	06071c63          	bnez	a4,5728 <e113toe.isra.0+0x144>
    56b4:	fef69ae3          	bne	a3,a5,56a8 <e113toe.isra.0+0xc4>
    56b8:	01440713          	addi	a4,s0,20
    56bc:	00040793          	mv	a5,s0
    56c0:	00278793          	addi	a5,a5,2
    56c4:	fe079f23          	sh	zero,-2(a5)
    56c8:	fee79ce3          	bne	a5,a4,56c0 <e113toe.isra.0+0xdc>
    56cc:	01240713          	addi	a4,s0,18
    56d0:	00040793          	mv	a5,s0
    56d4:	00278793          	addi	a5,a5,2
    56d8:	fe079f23          	sh	zero,-2(a5)
    56dc:	fef71ce3          	bne	a4,a5,56d4 <e113toe.isra.0+0xf0>
    56e0:	01245783          	lhu	a5,18(s0)
    56e4:	000086b7          	lui	a3,0x8
    56e8:	fff68693          	addi	a3,a3,-1 # 7fff <__mdiff+0x1b3>
    56ec:	00d7e7b3          	or	a5,a5,a3
    56f0:	01079793          	slli	a5,a5,0x10
    56f4:	0107d793          	srli	a5,a5,0x10
    56f8:	00f41923          	sh	a5,18(s0)
    56fc:	00e51683          	lh	a3,14(a0)
    5700:	f606d0e3          	bgez	a3,5660 <e113toe.isra.0+0x7c>
    5704:	00040693          	mv	a3,s0
    5708:	0006d603          	lhu	a2,0(a3)
    570c:	00268693          	addi	a3,a3,2
    5710:	f40618e3          	bnez	a2,5660 <e113toe.isra.0+0x7c>
    5714:	fed71ae3          	bne	a4,a3,5708 <e113toe.isra.0+0x124>
    5718:	ffff8737          	lui	a4,0xffff8
    571c:	00e7c7b3          	xor	a5,a5,a4
    5720:	00f41923          	sh	a5,18(s0)
    5724:	f3dff06f          	j	5660 <e113toe.isra.0+0x7c>
    5728:	01040713          	addi	a4,s0,16
    572c:	00040793          	mv	a5,s0
    5730:	00278793          	addi	a5,a5,2
    5734:	fe079f23          	sh	zero,-2(a5)
    5738:	fee79ce3          	bne	a5,a4,5730 <e113toe.isra.0+0x14c>
    573c:	ffffc7b7          	lui	a5,0xffffc
    5740:	00f41823          	sh	a5,16(s0)
    5744:	ffff87b7          	lui	a5,0xffff8
    5748:	fff7c793          	not	a5,a5
    574c:	00f41923          	sh	a5,18(s0)
    5750:	f11ff06f          	j	5660 <e113toe.isra.0+0x7c>

00005754 <_ldtoa_r>:
    5754:	00c5a883          	lw	a7,12(a1)
    5758:	e1010113          	addi	sp,sp,-496
    575c:	0005ae83          	lw	t4,0(a1)
    5760:	0045ae03          	lw	t3,4(a1)
    5764:	0085a303          	lw	t1,8(a1)
    5768:	03112e23          	sw	a7,60(sp)
    576c:	04052583          	lw	a1,64(a0)
    5770:	fff00893          	li	a7,-1
    5774:	17112023          	sw	a7,352(sp)
    5778:	09000893          	li	a7,144
    577c:	1e812423          	sw	s0,488(sp)
    5780:	1d412c23          	sw	s4,472(sp)
    5784:	1e112623          	sw	ra,492(sp)
    5788:	1e912223          	sw	s1,484(sp)
    578c:	1f212023          	sw	s2,480(sp)
    5790:	1d312e23          	sw	s3,476(sp)
    5794:	1d512a23          	sw	s5,468(sp)
    5798:	1d612823          	sw	s6,464(sp)
    579c:	1d712623          	sw	s7,460(sp)
    57a0:	1d812423          	sw	s8,456(sp)
    57a4:	1d912223          	sw	s9,452(sp)
    57a8:	1da12023          	sw	s10,448(sp)
    57ac:	1bb12e23          	sw	s11,444(sp)
    57b0:	03d12823          	sw	t4,48(sp)
    57b4:	03c12a23          	sw	t3,52(sp)
    57b8:	02612c23          	sw	t1,56(sp)
    57bc:	17112223          	sw	a7,356(sp)
    57c0:	00c12023          	sw	a2,0(sp)
    57c4:	00d12423          	sw	a3,8(sp)
    57c8:	00e12623          	sw	a4,12(sp)
    57cc:	01012a23          	sw	a6,20(sp)
    57d0:	00050a13          	mv	s4,a0
    57d4:	00078413          	mv	s0,a5
    57d8:	02058063          	beqz	a1,57f8 <_ldtoa_r+0xa4>
    57dc:	04452703          	lw	a4,68(a0)
    57e0:	00100793          	li	a5,1
    57e4:	00e797b3          	sll	a5,a5,a4
    57e8:	00e5a223          	sw	a4,4(a1)
    57ec:	00f5a423          	sw	a5,8(a1)
    57f0:	395010ef          	jal	ra,7384 <_Bfree>
    57f4:	040a2023          	sw	zero,64(s4)
    57f8:	06010913          	addi	s2,sp,96
    57fc:	00090593          	mv	a1,s2
    5800:	03010513          	addi	a0,sp,48
    5804:	de1ff0ef          	jal	ra,55e4 <e113toe.isra.0>
    5808:	07215603          	lhu	a2,114(sp)
    580c:	00008737          	lui	a4,0x8
    5810:	fff70713          	addi	a4,a4,-1 # 7fff <__mdiff+0x1b3>
    5814:	00e675b3          	and	a1,a2,a4
    5818:	00e59e63          	bne	a1,a4,5834 <_ldtoa_r+0xe0>
    581c:	00090713          	mv	a4,s2
    5820:	07210793          	addi	a5,sp,114
    5824:	00075683          	lhu	a3,0(a4)
    5828:	00270713          	addi	a4,a4,2
    582c:	3c0698e3          	bnez	a3,63fc <_ldtoa_r+0xca8>
    5830:	fef71ae3          	bne	a4,a5,5824 <_ldtoa_r+0xd0>
    5834:	00f65613          	srli	a2,a2,0xf
    5838:	00012703          	lw	a4,0(sp)
    583c:	00c42023          	sw	a2,0(s0)
    5840:	00300793          	li	a5,3
    5844:	08f70ee3          	beq	a4,a5,60e0 <_ldtoa_r+0x98c>
    5848:	01400793          	li	a5,20
    584c:	00f12223          	sw	a5,4(sp)
    5850:	3a071ae3          	bnez	a4,6404 <_ldtoa_r+0xcb0>
    5854:	16412703          	lw	a4,356(sp)
    5858:	000087b7          	lui	a5,0x8
    585c:	fff78793          	addi	a5,a5,-1 # 7fff <__mdiff+0x1b3>
    5860:	00e12823          	sw	a4,16(sp)
    5864:	00f59e63          	bne	a1,a5,5880 <_ldtoa_r+0x12c>
    5868:	00090793          	mv	a5,s2
    586c:	07210693          	addi	a3,sp,114
    5870:	0007d703          	lhu	a4,0(a5)
    5874:	00278793          	addi	a5,a5,2
    5878:	0e0712e3          	bnez	a4,615c <_ldtoa_r+0xa08>
    587c:	fed79ae3          	bne	a5,a3,5870 <_ldtoa_r+0x11c>
    5880:	09000793          	li	a5,144
    5884:	16f12223          	sw	a5,356(sp)
    5888:	07c10713          	addi	a4,sp,124
    588c:	00090793          	mv	a5,s2
    5890:	07410613          	addi	a2,sp,116
    5894:	0007d683          	lhu	a3,0(a5)
    5898:	00278793          	addi	a5,a5,2
    589c:	00270713          	addi	a4,a4,2
    58a0:	fed71f23          	sh	a3,-2(a4)
    58a4:	fec798e3          	bne	a5,a2,5894 <_ldtoa_r+0x140>
    58a8:	08e15603          	lhu	a2,142(sp)
    58ac:	00012c23          	sw	zero,24(sp)
    58b0:	01061793          	slli	a5,a2,0x10
    58b4:	4107d793          	srai	a5,a5,0x10
    58b8:	5607c863          	bltz	a5,5e28 <_ldtoa_r+0x6d4>
    58bc:	00013bb7          	lui	s7,0x13
    58c0:	470b8d93          	addi	s11,s7,1136 # 13470 <ezero>
    58c4:	014d8c13          	addi	s8,s11,20
    58c8:	00000693          	li	a3,0
    58cc:	09810793          	addi	a5,sp,152
    58d0:	000c0713          	mv	a4,s8
    58d4:	0ac10d13          	addi	s10,sp,172
    58d8:	0080006f          	j	58e0 <_ldtoa_r+0x18c>
    58dc:	00075683          	lhu	a3,0(a4)
    58e0:	00278793          	addi	a5,a5,2
    58e4:	fed79f23          	sh	a3,-2(a5)
    58e8:	00270713          	addi	a4,a4,2
    58ec:	ffa798e3          	bne	a5,s10,58dc <_ldtoa_r+0x188>
    58f0:	14060463          	beqz	a2,5a38 <_ldtoa_r+0x2e4>
    58f4:	000087b7          	lui	a5,0x8
    58f8:	fff78793          	addi	a5,a5,-1 # 7fff <__mdiff+0x1b3>
    58fc:	4af60ee3          	beq	a2,a5,65b8 <_ldtoa_r+0xe64>
    5900:	08c11783          	lh	a5,140(sp)
    5904:	5207dce3          	bgez	a5,663c <_ldtoa_r+0xee8>
    5908:	07c10593          	addi	a1,sp,124
    590c:	000c0513          	mv	a0,s8
    5910:	bd9fe0ef          	jal	ra,44e8 <ecmp>
    5914:	12050e63          	beqz	a0,5a50 <_ldtoa_r+0x2fc>
    5918:	060542e3          	bltz	a0,617c <_ldtoa_r+0xa28>
    591c:	08e15783          	lhu	a5,142(sp)
    5920:	5c0796e3          	bnez	a5,66ec <_ldtoa_r+0xf98>
    5924:	08c11783          	lh	a5,140(sp)
    5928:	00000493          	li	s1,0
    592c:	16010993          	addi	s3,sp,352
    5930:	0207c463          	bltz	a5,5958 <_ldtoa_r+0x204>
    5934:	118d8413          	addi	s0,s11,280
    5938:	07c10613          	addi	a2,sp,124
    593c:	00098693          	mv	a3,s3
    5940:	00060593          	mv	a1,a2
    5944:	00040513          	mv	a0,s0
    5948:	a48ff0ef          	jal	ra,4b90 <emul>
    594c:	08c11783          	lh	a5,140(sp)
    5950:	fff48493          	addi	s1,s1,-1
    5954:	fe07d2e3          	bgez	a5,5938 <_ldtoa_r+0x1e4>
    5958:	0d010413          	addi	s0,sp,208
    595c:	0e810b13          	addi	s6,sp,232
    5960:	00040713          	mv	a4,s0
    5964:	07c10793          	addi	a5,sp,124
    5968:	09010613          	addi	a2,sp,144
    596c:	0007d683          	lhu	a3,0(a5)
    5970:	00278793          	addi	a5,a5,2
    5974:	00270713          	addi	a4,a4,2
    5978:	fed71f23          	sh	a3,-2(a4)
    597c:	fec798e3          	bne	a5,a2,596c <_ldtoa_r+0x218>
    5980:	00000693          	li	a3,0
    5984:	09810793          	addi	a5,sp,152
    5988:	000c0713          	mv	a4,s8
    598c:	0080006f          	j	5994 <_ldtoa_r+0x240>
    5990:	00075683          	lhu	a3,0(a4)
    5994:	00278793          	addi	a5,a5,2
    5998:	fed79f23          	sh	a3,-2(a5)
    599c:	00270713          	addi	a4,a4,2
    59a0:	ffa798e3          	bne	a5,s10,5990 <_ldtoa_r+0x23c>
    59a4:	028d8c93          	addi	s9,s11,40
    59a8:	12cd8d13          	addi	s10,s11,300
    59ac:	fffffab7          	lui	s5,0xfffff
    59b0:	118d8d93          	addi	s11,s11,280
    59b4:	00c0006f          	j	59c0 <_ldtoa_r+0x26c>
    59b8:	014d0d13          	addi	s10,s10,20
    59bc:	014c8c93          	addi	s9,s9,20
    59c0:	00040593          	mv	a1,s0
    59c4:	000c0513          	mv	a0,s8
    59c8:	b21fe0ef          	jal	ra,44e8 <ecmp>
    59cc:	04a05863          	blez	a0,5a1c <_ldtoa_r+0x2c8>
    59d0:	00040593          	mv	a1,s0
    59d4:	000d0513          	mv	a0,s10
    59d8:	b11fe0ef          	jal	ra,44e8 <ecmp>
    59dc:	02054863          	bltz	a0,5a0c <_ldtoa_r+0x2b8>
    59e0:	00098693          	mv	a3,s3
    59e4:	00040613          	mv	a2,s0
    59e8:	00040593          	mv	a1,s0
    59ec:	000c8513          	mv	a0,s9
    59f0:	9a0ff0ef          	jal	ra,4b90 <emul>
    59f4:	09810613          	addi	a2,sp,152
    59f8:	00098693          	mv	a3,s3
    59fc:	00060593          	mv	a1,a2
    5a00:	000c8513          	mv	a0,s9
    5a04:	98cff0ef          	jal	ra,4b90 <emul>
    5a08:	015484b3          	add	s1,s1,s5
    5a0c:	01fad793          	srli	a5,s5,0x1f
    5a10:	015787b3          	add	a5,a5,s5
    5a14:	4017da93          	srai	s5,a5,0x1
    5a18:	fbbc90e3          	bne	s9,s11,59b8 <_ldtoa_r+0x264>
    5a1c:	09810613          	addi	a2,sp,152
    5a20:	00098693          	mv	a3,s3
    5a24:	000c0593          	mv	a1,s8
    5a28:	00060513          	mv	a0,a2
    5a2c:	e18ff0ef          	jal	ra,5044 <ediv>
    5a30:	12410a93          	addi	s5,sp,292
    5a34:	0300006f          	j	5a64 <_ldtoa_r+0x310>
    5a38:	07c10793          	addi	a5,sp,124
    5a3c:	08e10693          	addi	a3,sp,142
    5a40:	0007d703          	lhu	a4,0(a5)
    5a44:	ec0712e3          	bnez	a4,5908 <_ldtoa_r+0x1b4>
    5a48:	00278793          	addi	a5,a5,2
    5a4c:	fef69ae3          	bne	a3,a5,5a40 <_ldtoa_r+0x2ec>
    5a50:	00000493          	li	s1,0
    5a54:	12410a93          	addi	s5,sp,292
    5a58:	16010993          	addi	s3,sp,352
    5a5c:	0d010413          	addi	s0,sp,208
    5a60:	0e810b13          	addi	s6,sp,232
    5a64:	00040593          	mv	a1,s0
    5a68:	09810513          	addi	a0,sp,152
    5a6c:	9c9fe0ef          	jal	ra,4434 <emovi>
    5a70:	09810713          	addi	a4,sp,152
    5a74:	00040793          	mv	a5,s0
    5a78:	0007d683          	lhu	a3,0(a5)
    5a7c:	00278793          	addi	a5,a5,2
    5a80:	00270713          	addi	a4,a4,2
    5a84:	fed71f23          	sh	a3,-2(a4)
    5a88:	ff6798e3          	bne	a5,s6,5a78 <_ldtoa_r+0x324>
    5a8c:	00040593          	mv	a1,s0
    5a90:	07c10513          	addi	a0,sp,124
    5a94:	0a011823          	sh	zero,176(sp)
    5a98:	99dfe0ef          	jal	ra,4434 <emovi>
    5a9c:	07c10793          	addi	a5,sp,124
    5aa0:	00045703          	lhu	a4,0(s0)
    5aa4:	00240413          	addi	s0,s0,2
    5aa8:	00278793          	addi	a5,a5,2
    5aac:	fee79f23          	sh	a4,-2(a5)
    5ab0:	ff6418e3          	bne	s0,s6,5aa0 <_ldtoa_r+0x34c>
    5ab4:	09810513          	addi	a0,sp,152
    5ab8:	00098613          	mv	a2,s3
    5abc:	07c10593          	addi	a1,sp,124
    5ac0:	08011a23          	sh	zero,148(sp)
    5ac4:	f69fe0ef          	jal	ra,4a2c <eiremain>
    5ac8:	1ac15503          	lhu	a0,428(sp)
    5acc:	16051a63          	bnez	a0,5c40 <_ldtoa_r+0x4ec>
    5ad0:	09410c13          	addi	s8,sp,148
    5ad4:	07e10c93          	addi	s9,sp,126
    5ad8:	0b610413          	addi	s0,sp,182
    5adc:	470b8593          	addi	a1,s7,1136
    5ae0:	07c10513          	addi	a0,sp,124
    5ae4:	a05fe0ef          	jal	ra,44e8 <ecmp>
    5ae8:	14050c63          	beqz	a0,5c40 <_ldtoa_r+0x4ec>
    5aec:	00000713          	li	a4,0
    5af0:	000c0693          	mv	a3,s8
    5af4:	0006d783          	lhu	a5,0(a3)
    5af8:	01079613          	slli	a2,a5,0x10
    5afc:	41065613          	srai	a2,a2,0x10
    5b00:	00065463          	bgez	a2,5b08 <_ldtoa_r+0x3b4>
    5b04:	00176713          	ori	a4,a4,1
    5b08:	00179793          	slli	a5,a5,0x1
    5b0c:	01079793          	slli	a5,a5,0x10
    5b10:	00277613          	andi	a2,a4,2
    5b14:	0107d793          	srli	a5,a5,0x10
    5b18:	00060463          	beqz	a2,5b20 <_ldtoa_r+0x3cc>
    5b1c:	0017e793          	ori	a5,a5,1
    5b20:	00171713          	slli	a4,a4,0x1
    5b24:	00f69023          	sh	a5,0(a3)
    5b28:	01071713          	slli	a4,a4,0x10
    5b2c:	ffe68693          	addi	a3,a3,-2
    5b30:	01075713          	srli	a4,a4,0x10
    5b34:	fd9690e3          	bne	a3,s9,5af4 <_ldtoa_r+0x3a0>
    5b38:	0b410713          	addi	a4,sp,180
    5b3c:	07c10793          	addi	a5,sp,124
    5b40:	0007d683          	lhu	a3,0(a5)
    5b44:	00278793          	addi	a5,a5,2
    5b48:	00270713          	addi	a4,a4,2
    5b4c:	fed71f23          	sh	a3,-2(a4)
    5b50:	ff8798e3          	bne	a5,s8,5b40 <_ldtoa_r+0x3ec>
    5b54:	0c011623          	sh	zero,204(sp)
    5b58:	00000713          	li	a4,0
    5b5c:	0cc10693          	addi	a3,sp,204
    5b60:	0006d783          	lhu	a5,0(a3)
    5b64:	01079613          	slli	a2,a5,0x10
    5b68:	41065613          	srai	a2,a2,0x10
    5b6c:	00065463          	bgez	a2,5b74 <_ldtoa_r+0x420>
    5b70:	00176713          	ori	a4,a4,1
    5b74:	00179793          	slli	a5,a5,0x1
    5b78:	01079793          	slli	a5,a5,0x10
    5b7c:	00277613          	andi	a2,a4,2
    5b80:	0107d793          	srli	a5,a5,0x10
    5b84:	00060463          	beqz	a2,5b8c <_ldtoa_r+0x438>
    5b88:	0017e793          	ori	a5,a5,1
    5b8c:	00171713          	slli	a4,a4,0x1
    5b90:	00f69023          	sh	a5,0(a3)
    5b94:	01071713          	slli	a4,a4,0x10
    5b98:	ffe68693          	addi	a3,a3,-2
    5b9c:	01075713          	srli	a4,a4,0x10
    5ba0:	fc8690e3          	bne	a3,s0,5b60 <_ldtoa_r+0x40c>
    5ba4:	00000713          	li	a4,0
    5ba8:	0cc10693          	addi	a3,sp,204
    5bac:	0006d783          	lhu	a5,0(a3)
    5bb0:	01079613          	slli	a2,a5,0x10
    5bb4:	41065613          	srai	a2,a2,0x10
    5bb8:	00065463          	bgez	a2,5bc0 <_ldtoa_r+0x46c>
    5bbc:	00176713          	ori	a4,a4,1
    5bc0:	00179793          	slli	a5,a5,0x1
    5bc4:	01079793          	slli	a5,a5,0x10
    5bc8:	00277613          	andi	a2,a4,2
    5bcc:	0107d793          	srli	a5,a5,0x10
    5bd0:	00060463          	beqz	a2,5bd8 <_ldtoa_r+0x484>
    5bd4:	0017e793          	ori	a5,a5,1
    5bd8:	00171713          	slli	a4,a4,0x1
    5bdc:	00f69023          	sh	a5,0(a3)
    5be0:	01071713          	slli	a4,a4,0x10
    5be4:	ffe68693          	addi	a3,a3,-2
    5be8:	01075713          	srli	a4,a4,0x10
    5bec:	fc8690e3          	bne	a3,s0,5bac <_ldtoa_r+0x458>
    5bf0:	00000613          	li	a2,0
    5bf4:	000c0693          	mv	a3,s8
    5bf8:	0cc10713          	addi	a4,sp,204
    5bfc:	0006d583          	lhu	a1,0(a3)
    5c00:	00075783          	lhu	a5,0(a4)
    5c04:	ffe68693          	addi	a3,a3,-2
    5c08:	ffe70713          	addi	a4,a4,-2
    5c0c:	00b787b3          	add	a5,a5,a1
    5c10:	00c787b3          	add	a5,a5,a2
    5c14:	0107d613          	srli	a2,a5,0x10
    5c18:	00f69123          	sh	a5,2(a3)
    5c1c:	00167613          	andi	a2,a2,1
    5c20:	fc871ee3          	bne	a4,s0,5bfc <_ldtoa_r+0x4a8>
    5c24:	09810513          	addi	a0,sp,152
    5c28:	00098613          	mv	a2,s3
    5c2c:	07c10593          	addi	a1,sp,124
    5c30:	dfdfe0ef          	jal	ra,4a2c <eiremain>
    5c34:	1ac15503          	lhu	a0,428(sp)
    5c38:	fff48493          	addi	s1,s1,-1
    5c3c:	ea0500e3          	beqz	a0,5adc <_ldtoa_r+0x388>
    5c40:	01812783          	lw	a5,24(sp)
    5c44:	00012683          	lw	a3,0(sp)
    5c48:	00300713          	li	a4,3
    5c4c:	00f037b3          	snez	a5,a5
    5c50:	40f007b3          	neg	a5,a5
    5c54:	00d7f793          	andi	a5,a5,13
    5c58:	02078793          	addi	a5,a5,32
    5c5c:	12f10223          	sb	a5,292(sp)
    5c60:	00412783          	lw	a5,4(sp)
    5c64:	00e69463          	bne	a3,a4,5c6c <_ldtoa_r+0x518>
    5c68:	009787b3          	add	a5,a5,s1
    5c6c:	02a00713          	li	a4,42
    5c70:	00f12c23          	sw	a5,24(sp)
    5c74:	00f75463          	bge	a4,a5,5c7c <_ldtoa_r+0x528>
    5c78:	00e12c23          	sw	a4,24(sp)
    5c7c:	00a00713          	li	a4,10
    5c80:	4ae50463          	beq	a0,a4,6128 <_ldtoa_r+0x9d4>
    5c84:	03050513          	addi	a0,a0,48
    5c88:	02e00713          	li	a4,46
    5c8c:	12a102a3          	sb	a0,293(sp)
    5c90:	12e10323          	sb	a4,294(sp)
    5c94:	1c07c4e3          	bltz	a5,665c <_ldtoa_r+0xf08>
    5c98:	12710b13          	addi	s6,sp,295
    5c9c:	00000413          	li	s0,0
    5ca0:	00912e23          	sw	s1,28(sp)
    5ca4:	000b0493          	mv	s1,s6
    5ca8:	00040b13          	mv	s6,s0
    5cac:	01812403          	lw	s0,24(sp)
    5cb0:	0b410c93          	addi	s9,sp,180
    5cb4:	09410d13          	addi	s10,sp,148
    5cb8:	07e10d93          	addi	s11,sp,126
    5cbc:	0b610c13          	addi	s8,sp,182
    5cc0:	00000693          	li	a3,0
    5cc4:	000d0613          	mv	a2,s10
    5cc8:	00065783          	lhu	a5,0(a2) # 8000 <__mdiff+0x1b4>
    5ccc:	01079593          	slli	a1,a5,0x10
    5cd0:	4105d593          	srai	a1,a1,0x10
    5cd4:	0005d463          	bgez	a1,5cdc <_ldtoa_r+0x588>
    5cd8:	0016e693          	ori	a3,a3,1
    5cdc:	00179793          	slli	a5,a5,0x1
    5ce0:	01079793          	slli	a5,a5,0x10
    5ce4:	0026f593          	andi	a1,a3,2
    5ce8:	0107d793          	srli	a5,a5,0x10
    5cec:	00058463          	beqz	a1,5cf4 <_ldtoa_r+0x5a0>
    5cf0:	0017e793          	ori	a5,a5,1
    5cf4:	00169693          	slli	a3,a3,0x1
    5cf8:	00f61023          	sh	a5,0(a2)
    5cfc:	01069693          	slli	a3,a3,0x10
    5d00:	ffe60613          	addi	a2,a2,-2
    5d04:	0106d693          	srli	a3,a3,0x10
    5d08:	fdb610e3          	bne	a2,s11,5cc8 <_ldtoa_r+0x574>
    5d0c:	000c8693          	mv	a3,s9
    5d10:	07c10793          	addi	a5,sp,124
    5d14:	0007d603          	lhu	a2,0(a5)
    5d18:	00278793          	addi	a5,a5,2
    5d1c:	00268693          	addi	a3,a3,2
    5d20:	fec69f23          	sh	a2,-2(a3)
    5d24:	ffa798e3          	bne	a5,s10,5d14 <_ldtoa_r+0x5c0>
    5d28:	0c011623          	sh	zero,204(sp)
    5d2c:	00000693          	li	a3,0
    5d30:	0cc10613          	addi	a2,sp,204
    5d34:	00065783          	lhu	a5,0(a2)
    5d38:	01079593          	slli	a1,a5,0x10
    5d3c:	4105d593          	srai	a1,a1,0x10
    5d40:	0005d463          	bgez	a1,5d48 <_ldtoa_r+0x5f4>
    5d44:	0016e693          	ori	a3,a3,1
    5d48:	00179793          	slli	a5,a5,0x1
    5d4c:	01079793          	slli	a5,a5,0x10
    5d50:	0026f593          	andi	a1,a3,2
    5d54:	0107d793          	srli	a5,a5,0x10
    5d58:	00058463          	beqz	a1,5d60 <_ldtoa_r+0x60c>
    5d5c:	0017e793          	ori	a5,a5,1
    5d60:	00169693          	slli	a3,a3,0x1
    5d64:	00f61023          	sh	a5,0(a2)
    5d68:	01069693          	slli	a3,a3,0x10
    5d6c:	ffe60613          	addi	a2,a2,-2
    5d70:	0106d693          	srli	a3,a3,0x10
    5d74:	fd8610e3          	bne	a2,s8,5d34 <_ldtoa_r+0x5e0>
    5d78:	00000693          	li	a3,0
    5d7c:	0cc10613          	addi	a2,sp,204
    5d80:	00065783          	lhu	a5,0(a2)
    5d84:	01079593          	slli	a1,a5,0x10
    5d88:	4105d593          	srai	a1,a1,0x10
    5d8c:	0005d463          	bgez	a1,5d94 <_ldtoa_r+0x640>
    5d90:	0016e693          	ori	a3,a3,1
    5d94:	00179793          	slli	a5,a5,0x1
    5d98:	01079793          	slli	a5,a5,0x10
    5d9c:	0026f593          	andi	a1,a3,2
    5da0:	0107d793          	srli	a5,a5,0x10
    5da4:	00058463          	beqz	a1,5dac <_ldtoa_r+0x658>
    5da8:	0017e793          	ori	a5,a5,1
    5dac:	00169693          	slli	a3,a3,0x1
    5db0:	00f61023          	sh	a5,0(a2)
    5db4:	01069693          	slli	a3,a3,0x10
    5db8:	ffe60613          	addi	a2,a2,-2
    5dbc:	0106d693          	srli	a3,a3,0x10
    5dc0:	fd8610e3          	bne	a2,s8,5d80 <_ldtoa_r+0x62c>
    5dc4:	00000593          	li	a1,0
    5dc8:	000d0613          	mv	a2,s10
    5dcc:	0cc10693          	addi	a3,sp,204
    5dd0:	00065503          	lhu	a0,0(a2)
    5dd4:	0006d783          	lhu	a5,0(a3)
    5dd8:	ffe60613          	addi	a2,a2,-2
    5ddc:	ffe68693          	addi	a3,a3,-2
    5de0:	00a787b3          	add	a5,a5,a0
    5de4:	00b787b3          	add	a5,a5,a1
    5de8:	0107d593          	srli	a1,a5,0x10
    5dec:	00f61123          	sh	a5,2(a2)
    5df0:	0015f593          	andi	a1,a1,1
    5df4:	fd869ee3          	bne	a3,s8,5dd0 <_ldtoa_r+0x67c>
    5df8:	00098613          	mv	a2,s3
    5dfc:	07c10593          	addi	a1,sp,124
    5e00:	09810513          	addi	a0,sp,152
    5e04:	c29fe0ef          	jal	ra,4a2c <eiremain>
    5e08:	1ac15603          	lhu	a2,428(sp)
    5e0c:	00148793          	addi	a5,s1,1
    5e10:	001b0b13          	addi	s6,s6,1
    5e14:	03060693          	addi	a3,a2,48
    5e18:	fed78fa3          	sb	a3,-1(a5)
    5e1c:	03644463          	blt	s0,s6,5e44 <_ldtoa_r+0x6f0>
    5e20:	00078493          	mv	s1,a5
    5e24:	e9dff06f          	j	5cc0 <_ldtoa_r+0x56c>
    5e28:	01161613          	slli	a2,a2,0x11
    5e2c:	000107b7          	lui	a5,0x10
    5e30:	01165613          	srli	a2,a2,0x11
    5e34:	fff78793          	addi	a5,a5,-1 # ffff <__multf3+0x2cf>
    5e38:	08c11723          	sh	a2,142(sp)
    5e3c:	00f12c23          	sw	a5,24(sp)
    5e40:	a7dff06f          	j	58bc <_ldtoa_r+0x168>
    5e44:	00048b13          	mv	s6,s1
    5e48:	01c12483          	lw	s1,28(sp)
    5e4c:	00400713          	li	a4,4
    5e50:	04c75a63          	bge	a4,a2,5ea4 <_ldtoa_r+0x750>
    5e54:	00500713          	li	a4,5
    5e58:	00e60ae3          	beq	a2,a4,666c <_ldtoa_r+0xf18>
    5e5c:	ffe7c703          	lbu	a4,-2(a5)
    5e60:	01812683          	lw	a3,24(sp)
    5e64:	ffe78613          	addi	a2,a5,-2
    5e68:	07f77713          	andi	a4,a4,127
    5e6c:	0206c663          	bltz	a3,5e98 <_ldtoa_r+0x744>
    5e70:	02e00793          	li	a5,46
    5e74:	03800593          	li	a1,56
    5e78:	03000513          	li	a0,48
    5e7c:	76f70663          	beq	a4,a5,65e8 <_ldtoa_r+0xe94>
    5e80:	78e5d263          	bge	a1,a4,6604 <_ldtoa_r+0xeb0>
    5e84:	fff64703          	lbu	a4,-1(a2)
    5e88:	00a60023          	sb	a0,0(a2)
    5e8c:	fff60613          	addi	a2,a2,-1
    5e90:	07f77713          	andi	a4,a4,127
    5e94:	fe9ff06f          	j	5e7c <_ldtoa_r+0x728>
    5e98:	03100713          	li	a4,49
    5e9c:	fee78f23          	sb	a4,-2(a5)
    5ea0:	00148493          	addi	s1,s1,1
    5ea4:	000135b7          	lui	a1,0x13
    5ea8:	00048613          	mv	a2,s1
    5eac:	40058593          	addi	a1,a1,1024 # 13400 <zeroes.0+0x2c>
    5eb0:	000b0513          	mv	a0,s6
    5eb4:	039020ef          	jal	ra,86ec <sprintf>
    5eb8:	07215783          	lhu	a5,114(sp)
    5ebc:	01012703          	lw	a4,16(sp)
    5ec0:	16912823          	sw	s1,368(sp)
    5ec4:	fff7c793          	not	a5,a5
    5ec8:	16e12223          	sw	a4,356(sp)
    5ecc:	01179713          	slli	a4,a5,0x11
    5ed0:	18070863          	beqz	a4,6060 <_ldtoa_r+0x90c>
    5ed4:	00c12683          	lw	a3,12(sp)
    5ed8:	12414703          	lbu	a4,292(sp)
    5edc:	00148793          	addi	a5,s1,1
    5ee0:	00f6a023          	sw	a5,0(a3)
    5ee4:	000a8793          	mv	a5,s5
    5ee8:	02070a63          	beqz	a4,5f1c <_ldtoa_r+0x7c8>
    5eec:	02e00693          	li	a3,46
    5ef0:	20d70663          	beq	a4,a3,60fc <_ldtoa_r+0x9a8>
    5ef4:	0017c703          	lbu	a4,1(a5)
    5ef8:	00178793          	addi	a5,a5,1
    5efc:	fe071ae3          	bnez	a4,5ef0 <_ldtoa_r+0x79c>
    5f00:	04500693          	li	a3,69
    5f04:	00fae663          	bltu	s5,a5,5f10 <_ldtoa_r+0x7bc>
    5f08:	0140006f          	j	5f1c <_ldtoa_r+0x7c8>
    5f0c:	01578863          	beq	a5,s5,5f1c <_ldtoa_r+0x7c8>
    5f10:	fff7c703          	lbu	a4,-1(a5)
    5f14:	fff78793          	addi	a5,a5,-1
    5f18:	fed71ae3          	bne	a4,a3,5f0c <_ldtoa_r+0x7b8>
    5f1c:	00078023          	sb	zero,0(a5)
    5f20:	000a8793          	mv	a5,s5
    5f24:	02000693          	li	a3,32
    5f28:	02d00613          	li	a2,45
    5f2c:	0007c703          	lbu	a4,0(a5)
    5f30:	00d70463          	beq	a4,a3,5f38 <_ldtoa_r+0x7e4>
    5f34:	00c71663          	bne	a4,a2,5f40 <_ldtoa_r+0x7ec>
    5f38:	00178793          	addi	a5,a5,1
    5f3c:	ff1ff06f          	j	5f2c <_ldtoa_r+0x7d8>
    5f40:	000a8413          	mv	s0,s5
    5f44:	00c0006f          	j	5f50 <_ldtoa_r+0x7fc>
    5f48:	0007c703          	lbu	a4,0(a5)
    5f4c:	00068413          	mv	s0,a3
    5f50:	00e40023          	sb	a4,0(s0)
    5f54:	00140693          	addi	a3,s0,1
    5f58:	00178793          	addi	a5,a5,1
    5f5c:	fe0716e3          	bnez	a4,5f48 <_ldtoa_r+0x7f4>
    5f60:	00012703          	lw	a4,0(sp)
    5f64:	00200793          	li	a5,2
    5f68:	fff44683          	lbu	a3,-1(s0)
    5f6c:	12f70063          	beq	a4,a5,608c <_ldtoa_r+0x938>
    5f70:	00412783          	lw	a5,4(sp)
    5f74:	00078713          	mv	a4,a5
    5f78:	0097d463          	bge	a5,s1,5f80 <_ldtoa_r+0x82c>
    5f7c:	00048713          	mv	a4,s1
    5f80:	03000793          	li	a5,48
    5f84:	02f69663          	bne	a3,a5,5fb0 <_ldtoa_r+0x85c>
    5f88:	415407b3          	sub	a5,s0,s5
    5f8c:	02f75263          	bge	a4,a5,5fb0 <_ldtoa_r+0x85c>
    5f90:	03000693          	li	a3,48
    5f94:	00c0006f          	j	5fa0 <_ldtoa_r+0x84c>
    5f98:	415407b3          	sub	a5,s0,s5
    5f9c:	00f75a63          	bge	a4,a5,5fb0 <_ldtoa_r+0x85c>
    5fa0:	ffe44783          	lbu	a5,-2(s0)
    5fa4:	fe040fa3          	sb	zero,-1(s0)
    5fa8:	fff40413          	addi	s0,s0,-1
    5fac:	fed786e3          	beq	a5,a3,5f98 <_ldtoa_r+0x844>
    5fb0:	00012703          	lw	a4,0(sp)
    5fb4:	00300793          	li	a5,3
    5fb8:	0ef70663          	beq	a4,a5,60a4 <_ldtoa_r+0x950>
    5fbc:	00812783          	lw	a5,8(sp)
    5fc0:	040a2223          	sw	zero,68(s4)
    5fc4:	00978613          	addi	a2,a5,9
    5fc8:	01700793          	li	a5,23
    5fcc:	10c7f663          	bgeu	a5,a2,60d8 <_ldtoa_r+0x984>
    5fd0:	00100713          	li	a4,1
    5fd4:	00400793          	li	a5,4
    5fd8:	00179793          	slli	a5,a5,0x1
    5fdc:	01478693          	addi	a3,a5,20
    5fe0:	00070593          	mv	a1,a4
    5fe4:	00170713          	addi	a4,a4,1
    5fe8:	fed678e3          	bgeu	a2,a3,5fd8 <_ldtoa_r+0x884>
    5fec:	04ba2223          	sw	a1,68(s4)
    5ff0:	000a0513          	mv	a0,s4
    5ff4:	2e8010ef          	jal	ra,72dc <_Balloc>
    5ff8:	00050493          	mv	s1,a0
    5ffc:	080502e3          	beqz	a0,6880 <_ldtoa_r+0x112c>
    6000:	04aa2023          	sw	a0,64(s4)
    6004:	000a8593          	mv	a1,s5
    6008:	75c020ef          	jal	ra,8764 <strcpy>
    600c:	01412703          	lw	a4,20(sp)
    6010:	00070863          	beqz	a4,6020 <_ldtoa_r+0x8cc>
    6014:	415407b3          	sub	a5,s0,s5
    6018:	00f487b3          	add	a5,s1,a5
    601c:	00f72023          	sw	a5,0(a4)
    6020:	1ec12083          	lw	ra,492(sp)
    6024:	1e812403          	lw	s0,488(sp)
    6028:	1e012903          	lw	s2,480(sp)
    602c:	1dc12983          	lw	s3,476(sp)
    6030:	1d812a03          	lw	s4,472(sp)
    6034:	1d412a83          	lw	s5,468(sp)
    6038:	1d012b03          	lw	s6,464(sp)
    603c:	1cc12b83          	lw	s7,460(sp)
    6040:	1c812c03          	lw	s8,456(sp)
    6044:	1c412c83          	lw	s9,452(sp)
    6048:	1c012d03          	lw	s10,448(sp)
    604c:	1bc12d83          	lw	s11,444(sp)
    6050:	00048513          	mv	a0,s1
    6054:	1e412483          	lw	s1,484(sp)
    6058:	1f010113          	addi	sp,sp,496
    605c:	00008067          	ret
    6060:	00090793          	mv	a5,s2
    6064:	07210693          	addi	a3,sp,114
    6068:	0007d703          	lhu	a4,0(a5)
    606c:	00278793          	addi	a5,a5,2
    6070:	5a071063          	bnez	a4,6610 <_ldtoa_r+0xebc>
    6074:	fed79ae3          	bne	a5,a3,6068 <_ldtoa_r+0x914>
    6078:	00c12703          	lw	a4,12(sp)
    607c:	000027b7          	lui	a5,0x2
    6080:	70f78793          	addi	a5,a5,1807 # 270f <_svfprintf_r+0x16bb>
    6084:	00f72023          	sw	a5,0(a4)
    6088:	e99ff06f          	j	5f20 <_ldtoa_r+0x7cc>
    608c:	03000793          	li	a5,48
    6090:	f2f696e3          	bne	a3,a5,5fbc <_ldtoa_r+0x868>
    6094:	415407b3          	sub	a5,s0,s5
    6098:	00100713          	li	a4,1
    609c:	eef74ae3          	blt	a4,a5,5f90 <_ldtoa_r+0x83c>
    60a0:	f1dff06f          	j	5fbc <_ldtoa_r+0x868>
    60a4:	00412783          	lw	a5,4(sp)
    60a8:	009784b3          	add	s1,a5,s1
    60ac:	4e04c063          	bltz	s1,658c <_ldtoa_r+0xe38>
    60b0:	00c12783          	lw	a5,12(sp)
    60b4:	00812703          	lw	a4,8(sp)
    60b8:	0007a783          	lw	a5,0(a5)
    60bc:	00f707b3          	add	a5,a4,a5
    60c0:	00f12423          	sw	a5,8(sp)
    60c4:	00812783          	lw	a5,8(sp)
    60c8:	040a2223          	sw	zero,68(s4)
    60cc:	00378613          	addi	a2,a5,3
    60d0:	01700793          	li	a5,23
    60d4:	eec7eee3          	bltu	a5,a2,5fd0 <_ldtoa_r+0x87c>
    60d8:	00000593          	li	a1,0
    60dc:	f15ff06f          	j	5ff0 <_ldtoa_r+0x89c>
    60e0:	00812783          	lw	a5,8(sp)
    60e4:	00078713          	mv	a4,a5
    60e8:	00f12223          	sw	a5,4(sp)
    60ec:	02a00793          	li	a5,42
    60f0:	f6e7d263          	bge	a5,a4,5854 <_ldtoa_r+0x100>
    60f4:	00f12223          	sw	a5,4(sp)
    60f8:	f5cff06f          	j	5854 <_ldtoa_r+0x100>
    60fc:	0007c703          	lbu	a4,0(a5)
    6100:	e00700e3          	beqz	a4,5f00 <_ldtoa_r+0x7ac>
    6104:	0017c703          	lbu	a4,1(a5)
    6108:	00178793          	addi	a5,a5,1
    610c:	fee78fa3          	sb	a4,-1(a5)
    6110:	de0708e3          	beqz	a4,5f00 <_ldtoa_r+0x7ac>
    6114:	0017c703          	lbu	a4,1(a5)
    6118:	00178793          	addi	a5,a5,1
    611c:	fee78fa3          	sb	a4,-1(a5)
    6120:	fe0712e3          	bnez	a4,6104 <_ldtoa_r+0x9b0>
    6124:	dddff06f          	j	5f00 <_ldtoa_r+0x7ac>
    6128:	03100713          	li	a4,49
    612c:	12e102a3          	sb	a4,293(sp)
    6130:	02e00713          	li	a4,46
    6134:	12e10323          	sb	a4,294(sp)
    6138:	00148493          	addi	s1,s1,1
    613c:	2af05a63          	blez	a5,63f0 <_ldtoa_r+0xc9c>
    6140:	03000793          	li	a5,48
    6144:	12f103a3          	sb	a5,295(sp)
    6148:	01812783          	lw	a5,24(sp)
    614c:	12810b13          	addi	s6,sp,296
    6150:	fff78793          	addi	a5,a5,-1
    6154:	00f12c23          	sw	a5,24(sp)
    6158:	b45ff06f          	j	5c9c <_ldtoa_r+0x548>
    615c:	12410a93          	addi	s5,sp,292
    6160:	000135b7          	lui	a1,0x13
    6164:	46858593          	addi	a1,a1,1128 # 13468 <zeroes.0+0x94>
    6168:	000a8513          	mv	a0,s5
    616c:	000024b7          	lui	s1,0x2
    6170:	57c020ef          	jal	ra,86ec <sprintf>
    6174:	70f48493          	addi	s1,s1,1807 # 270f <_svfprintf_r+0x16bb>
    6178:	d41ff06f          	j	5eb8 <_ldtoa_r+0x764>
    617c:	0b410c93          	addi	s9,sp,180
    6180:	000c8713          	mv	a4,s9
    6184:	07c10793          	addi	a5,sp,124
    6188:	09010613          	addi	a2,sp,144
    618c:	0007d683          	lhu	a3,0(a5)
    6190:	00278793          	addi	a5,a5,2
    6194:	00270713          	addi	a4,a4,2
    6198:	fed71f23          	sh	a3,-2(a4)
    619c:	fec798e3          	bne	a5,a2,618c <_ldtoa_r+0xa38>
    61a0:	000047b7          	lui	a5,0x4
    61a4:	08e78793          	addi	a5,a5,142 # 408e <emovo.constprop.0+0xb2>
    61a8:	0cf11323          	sh	a5,198(sp)
    61ac:	000087b7          	lui	a5,0x8
    61b0:	fff78793          	addi	a5,a5,-1 # 7fff <__mdiff+0x1b3>
    61b4:	00f12e23          	sw	a5,28(sp)
    61b8:	ffffc7b7          	lui	a5,0xffffc
    61bc:	12410a93          	addi	s5,sp,292
    61c0:	0d010413          	addi	s0,sp,208
    61c4:	01000713          	li	a4,16
    61c8:	0c8d8313          	addi	t1,s11,200
    61cc:	00278793          	addi	a5,a5,2 # ffffc002 <__ctr0_io_space_begin+0xffffc202>
    61d0:	03412423          	sw	s4,40(sp)
    61d4:	03512223          	sw	s5,36(sp)
    61d8:	00000493          	li	s1,0
    61dc:	00040a93          	mv	s5,s0
    61e0:	16010993          	addi	s3,sp,352
    61e4:	0aa10b13          	addi	s6,sp,170
    61e8:	02f12023          	sw	a5,32(sp)
    61ec:	00030a13          	mv	s4,t1
    61f0:	00070413          	mv	s0,a4
    61f4:	00098693          	mv	a3,s3
    61f8:	09810613          	addi	a2,sp,152
    61fc:	000c8593          	mv	a1,s9
    6200:	000a0513          	mv	a0,s4
    6204:	e41fe0ef          	jal	ra,5044 <ediv>
    6208:	04c10713          	addi	a4,sp,76
    620c:	09810793          	addi	a5,sp,152
    6210:	0007d683          	lhu	a3,0(a5)
    6214:	00278793          	addi	a5,a5,2
    6218:	00270713          	addi	a4,a4,2
    621c:	fed71f23          	sh	a3,-2(a4)
    6220:	ffa798e3          	bne	a5,s10,6210 <_ldtoa_r+0xabc>
    6224:	01c12783          	lw	a5,28(sp)
    6228:	05e15583          	lhu	a1,94(sp)
    622c:	00f5f633          	and	a2,a1,a5
    6230:	02012783          	lw	a5,32(sp)
    6234:	00f60533          	add	a0,a2,a5
    6238:	36a05463          	blez	a0,65a0 <_ldtoa_r+0xe4c>
    623c:	09000613          	li	a2,144
    6240:	40a60633          	sub	a2,a2,a0
    6244:	000a8713          	mv	a4,s5
    6248:	04c10793          	addi	a5,sp,76
    624c:	0007d683          	lhu	a3,0(a5)
    6250:	00278793          	addi	a5,a5,2
    6254:	00270713          	addi	a4,a4,2
    6258:	fed71f23          	sh	a3,-2(a4)
    625c:	ff2798e3          	bne	a5,s2,624c <_ldtoa_r+0xaf8>
    6260:	06c05663          	blez	a2,62cc <_ldtoa_r+0xb78>
    6264:	00f00793          	li	a5,15
    6268:	000a8713          	mv	a4,s5
    626c:	02c7de63          	bge	a5,a2,62a8 <_ldtoa_r+0xb54>
    6270:	08000693          	li	a3,128
    6274:	40a686b3          	sub	a3,a3,a0
    6278:	0046d693          	srli	a3,a3,0x4
    627c:	00168713          	addi	a4,a3,1
    6280:	00171713          	slli	a4,a4,0x1
    6284:	00ea8733          	add	a4,s5,a4
    6288:	000a8793          	mv	a5,s5
    628c:	00278793          	addi	a5,a5,2
    6290:	fe079f23          	sh	zero,-2(a5)
    6294:	fef71ce3          	bne	a4,a5,628c <_ldtoa_r+0xb38>
    6298:	08000613          	li	a2,128
    629c:	40a60633          	sub	a2,a2,a0
    62a0:	00469693          	slli	a3,a3,0x4
    62a4:	40d60633          	sub	a2,a2,a3
    62a8:	00161793          	slli	a5,a2,0x1
    62ac:	00fd87b3          	add	a5,s11,a5
    62b0:	00075683          	lhu	a3,0(a4)
    62b4:	2307d783          	lhu	a5,560(a5)
    62b8:	00f6f7b3          	and	a5,a3,a5
    62bc:	00f71023          	sh	a5,0(a4)
    62c0:	01059593          	slli	a1,a1,0x10
    62c4:	4105d593          	srai	a1,a1,0x10
    62c8:	1405c463          	bltz	a1,6410 <_ldtoa_r+0xcbc>
    62cc:	09810793          	addi	a5,sp,152
    62d0:	000a8713          	mv	a4,s5
    62d4:	0007d603          	lhu	a2,0(a5)
    62d8:	00075683          	lhu	a3,0(a4)
    62dc:	02d61863          	bne	a2,a3,630c <_ldtoa_r+0xbb8>
    62e0:	00278793          	addi	a5,a5,2
    62e4:	00270713          	addi	a4,a4,2
    62e8:	fefb16e3          	bne	s6,a5,62d4 <_ldtoa_r+0xb80>
    62ec:	000c8713          	mv	a4,s9
    62f0:	09810793          	addi	a5,sp,152
    62f4:	0007d683          	lhu	a3,0(a5)
    62f8:	00278793          	addi	a5,a5,2
    62fc:	00270713          	addi	a4,a4,2
    6300:	fed71f23          	sh	a3,-2(a4)
    6304:	ffa798e3          	bne	a5,s10,62f4 <_ldtoa_r+0xba0>
    6308:	008484b3          	add	s1,s1,s0
    630c:	014a0a13          	addi	s4,s4,20
    6310:	12cd8793          	addi	a5,s11,300
    6314:	00145413          	srli	s0,s0,0x1
    6318:	ecfa1ee3          	bne	s4,a5,61f4 <_ldtoa_r+0xaa0>
    631c:	0c615783          	lhu	a5,198(sp)
    6320:	08e15703          	lhu	a4,142(sp)
    6324:	000a8413          	mv	s0,s5
    6328:	02812a03          	lw	s4,40(sp)
    632c:	00e787b3          	add	a5,a5,a4
    6330:	ffffc737          	lui	a4,0xffffc
    6334:	f7270713          	addi	a4,a4,-142 # ffffbf72 <__ctr0_io_space_begin+0xffffc172>
    6338:	02412a83          	lw	s5,36(sp)
    633c:	00e787b3          	add	a5,a5,a4
    6340:	0cf11323          	sh	a5,198(sp)
    6344:	07c10713          	addi	a4,sp,124
    6348:	000c8793          	mv	a5,s9
    634c:	0c810613          	addi	a2,sp,200
    6350:	0007d683          	lhu	a3,0(a5)
    6354:	00278793          	addi	a5,a5,2
    6358:	00270713          	addi	a4,a4,2
    635c:	fed71f23          	sh	a3,-2(a4)
    6360:	fec798e3          	bne	a5,a2,6350 <_ldtoa_r+0xbfc>
    6364:	00000713          	li	a4,0
    6368:	09810793          	addi	a5,sp,152
    636c:	0080006f          	j	6374 <_ldtoa_r+0xc20>
    6370:	000c5703          	lhu	a4,0(s8)
    6374:	00278793          	addi	a5,a5,2
    6378:	fee79f23          	sh	a4,-2(a5)
    637c:	002c0c13          	addi	s8,s8,2
    6380:	ffa798e3          	bne	a5,s10,6370 <_ldtoa_r+0xc1c>
    6384:	028d8d13          	addi	s10,s11,40
    6388:	00001c37          	lui	s8,0x1
    638c:	118d8d93          	addi	s11,s11,280
    6390:	0100006f          	j	63a0 <_ldtoa_r+0xc4c>
    6394:	001c5c13          	srli	s8,s8,0x1
    6398:	25bd0463          	beq	s10,s11,65e0 <_ldtoa_r+0xe8c>
    639c:	014d0d13          	addi	s10,s10,20
    63a0:	000c8593          	mv	a1,s9
    63a4:	000d8513          	mv	a0,s11
    63a8:	940fe0ef          	jal	ra,44e8 <ecmp>
    63ac:	22a04a63          	bgtz	a0,65e0 <_ldtoa_r+0xe8c>
    63b0:	000c8593          	mv	a1,s9
    63b4:	000d0513          	mv	a0,s10
    63b8:	930fe0ef          	jal	ra,44e8 <ecmp>
    63bc:	fca04ce3          	bgtz	a0,6394 <_ldtoa_r+0xc40>
    63c0:	00098693          	mv	a3,s3
    63c4:	000c8613          	mv	a2,s9
    63c8:	000c8593          	mv	a1,s9
    63cc:	000d0513          	mv	a0,s10
    63d0:	c75fe0ef          	jal	ra,5044 <ediv>
    63d4:	09810613          	addi	a2,sp,152
    63d8:	00098693          	mv	a3,s3
    63dc:	00060593          	mv	a1,a2
    63e0:	000d0513          	mv	a0,s10
    63e4:	facfe0ef          	jal	ra,4b90 <emul>
    63e8:	018484b3          	add	s1,s1,s8
    63ec:	fa9ff06f          	j	6394 <_ldtoa_r+0xc40>
    63f0:	12710b13          	addi	s6,sp,295
    63f4:	aa0798e3          	bnez	a5,5ea4 <_ldtoa_r+0x750>
    63f8:	8a5ff06f          	j	5c9c <_ldtoa_r+0x548>
    63fc:	00000613          	li	a2,0
    6400:	c38ff06f          	j	5838 <_ldtoa_r+0xe4>
    6404:	00812783          	lw	a5,8(sp)
    6408:	fff78793          	addi	a5,a5,-1
    640c:	cd9ff06f          	j	60e4 <_ldtoa_r+0x990>
    6410:	04c10793          	addi	a5,sp,76
    6414:	000a8713          	mv	a4,s5
    6418:	0140006f          	j	642c <_ldtoa_r+0xcd8>
    641c:	00278793          	addi	a5,a5,2
    6420:	05e10693          	addi	a3,sp,94
    6424:	00270713          	addi	a4,a4,2
    6428:	eaf682e3          	beq	a3,a5,62cc <_ldtoa_r+0xb78>
    642c:	0007d603          	lhu	a2,0(a5)
    6430:	00075683          	lhu	a3,0(a4)
    6434:	fed604e3          	beq	a2,a3,641c <_ldtoa_r+0xcc8>
    6438:	0e215783          	lhu	a5,226(sp)
    643c:	01c12703          	lw	a4,28(sp)
    6440:	00f777b3          	and	a5,a4,a5
    6444:	3ce78063          	beq	a5,a4,6804 <_ldtoa_r+0x10b0>
    6448:	0ec10593          	addi	a1,sp,236
    644c:	000c0513          	mv	a0,s8
    6450:	fe5fd0ef          	jal	ra,4434 <emovi>
    6454:	10810593          	addi	a1,sp,264
    6458:	000a8513          	mv	a0,s5
    645c:	fd9fd0ef          	jal	ra,4434 <emovi>
    6460:	0ec15703          	lhu	a4,236(sp)
    6464:	10a15603          	lhu	a2,266(sp)
    6468:	0ee15883          	lhu	a7,238(sp)
    646c:	fff74713          	not	a4,a4
    6470:	01071713          	slli	a4,a4,0x10
    6474:	01075713          	srli	a4,a4,0x10
    6478:	0ee11623          	sh	a4,236(sp)
    647c:	40c885b3          	sub	a1,a7,a2
    6480:	00060693          	mv	a3,a2
    6484:	06b05e63          	blez	a1,6500 <_ldtoa_r+0xdac>
    6488:	02412583          	lw	a1,36(sp)
    648c:	10810693          	addi	a3,sp,264
    6490:	12010793          	addi	a5,sp,288
    6494:	0006d503          	lhu	a0,0(a3)
    6498:	00268693          	addi	a3,a3,2
    649c:	00258593          	addi	a1,a1,2
    64a0:	fea59f23          	sh	a0,-2(a1)
    64a4:	fef698e3          	bne	a3,a5,6494 <_ldtoa_r+0xd40>
    64a8:	12011e23          	sh	zero,316(sp)
    64ac:	10810693          	addi	a3,sp,264
    64b0:	0ec10593          	addi	a1,sp,236
    64b4:	0080006f          	j	64bc <_ldtoa_r+0xd68>
    64b8:	0005d703          	lhu	a4,0(a1)
    64bc:	00268693          	addi	a3,a3,2
    64c0:	fee69f23          	sh	a4,-2(a3)
    64c4:	00258593          	addi	a1,a1,2
    64c8:	fef698e3          	bne	a3,a5,64b8 <_ldtoa_r+0xd64>
    64cc:	02412783          	lw	a5,36(sp)
    64d0:	12011023          	sh	zero,288(sp)
    64d4:	0ec10713          	addi	a4,sp,236
    64d8:	13c10513          	addi	a0,sp,316
    64dc:	0007d683          	lhu	a3,0(a5)
    64e0:	00278793          	addi	a5,a5,2
    64e4:	00270713          	addi	a4,a4,2
    64e8:	fed71f23          	sh	a3,-2(a4)
    64ec:	fea798e3          	bne	a5,a0,64dc <_ldtoa_r+0xd88>
    64f0:	10a15683          	lhu	a3,266(sp)
    64f4:	411605b3          	sub	a1,a2,a7
    64f8:	10011223          	sh	zero,260(sp)
    64fc:	00068613          	mv	a2,a3
    6500:	32058c63          	beqz	a1,6838 <_ldtoa_r+0x10e4>
    6504:	02d12623          	sw	a3,44(sp)
    6508:	f6f00793          	li	a5,-145
    650c:	06f5c863          	blt	a1,a5,657c <_ldtoa_r+0xe28>
    6510:	0ec10513          	addi	a0,sp,236
    6514:	d01fd0ef          	jal	ra,4214 <eshift.part.0>
    6518:	02c12683          	lw	a3,44(sp)
    651c:	00050593          	mv	a1,a0
    6520:	12010793          	addi	a5,sp,288
    6524:	10410713          	addi	a4,sp,260
    6528:	0ec15503          	lhu	a0,236(sp)
    652c:	10815603          	lhu	a2,264(sp)
    6530:	3ac50863          	beq	a0,a2,68e0 <_ldtoa_r+0x118c>
    6534:	00000613          	li	a2,0
    6538:	10a10893          	addi	a7,sp,266
    653c:	00060513          	mv	a0,a2
    6540:	0007d603          	lhu	a2,0(a5)
    6544:	00075803          	lhu	a6,0(a4)
    6548:	ffe78793          	addi	a5,a5,-2
    654c:	40a60633          	sub	a2,a2,a0
    6550:	41060633          	sub	a2,a2,a6
    6554:	01065513          	srli	a0,a2,0x10
    6558:	00c79123          	sh	a2,2(a5)
    655c:	00157513          	andi	a0,a0,1
    6560:	ffe70713          	addi	a4,a4,-2
    6564:	fd179ee3          	bne	a5,a7,6540 <_ldtoa_r+0xdec>
    6568:	00100613          	li	a2,1
    656c:	00098793          	mv	a5,s3
    6570:	04000713          	li	a4,64
    6574:	10810513          	addi	a0,sp,264
    6578:	8acfe0ef          	jal	ra,4624 <emdnorm>
    657c:	000a8593          	mv	a1,s5
    6580:	10810513          	addi	a0,sp,264
    6584:	a59fd0ef          	jal	ra,3fdc <emovo.constprop.0>
    6588:	d45ff06f          	j	62cc <_ldtoa_r+0xb78>
    658c:	00c12783          	lw	a5,12(sp)
    6590:	12010223          	sb	zero,292(sp)
    6594:	000a8413          	mv	s0,s5
    6598:	0007a023          	sw	zero,0(a5)
    659c:	b29ff06f          	j	60c4 <_ldtoa_r+0x970>
    65a0:	000a8793          	mv	a5,s5
    65a4:	0e410713          	addi	a4,sp,228
    65a8:	00278793          	addi	a5,a5,2
    65ac:	fe079f23          	sh	zero,-2(a5)
    65b0:	fee79ce3          	bne	a5,a4,65a8 <_ldtoa_r+0xe54>
    65b4:	d0dff06f          	j	62c0 <_ldtoa_r+0xb6c>
    65b8:	01812783          	lw	a5,24(sp)
    65bc:	12410a93          	addi	s5,sp,292
    65c0:	10078263          	beqz	a5,66c4 <_ldtoa_r+0xf70>
    65c4:	000135b7          	lui	a1,0x13
    65c8:	3e458593          	addi	a1,a1,996 # 133e4 <zeroes.0+0x10>
    65cc:	000a8513          	mv	a0,s5
    65d0:	000024b7          	lui	s1,0x2
    65d4:	118020ef          	jal	ra,86ec <sprintf>
    65d8:	70f48493          	addi	s1,s1,1807 # 270f <_svfprintf_r+0x16bb>
    65dc:	8ddff06f          	j	5eb8 <_ldtoa_r+0x764>
    65e0:	0e810b13          	addi	s6,sp,232
    65e4:	c80ff06f          	j	5a64 <_ldtoa_r+0x310>
    65e8:	fff64783          	lbu	a5,-1(a2)
    65ec:	03800713          	li	a4,56
    65f0:	0ef77863          	bgeu	a4,a5,66e0 <_ldtoa_r+0xf8c>
    65f4:	03100793          	li	a5,49
    65f8:	00148493          	addi	s1,s1,1
    65fc:	fef60fa3          	sb	a5,-1(a2)
    6600:	8a5ff06f          	j	5ea4 <_ldtoa_r+0x750>
    6604:	00170713          	addi	a4,a4,1
    6608:	00e60023          	sb	a4,0(a2)
    660c:	899ff06f          	j	5ea4 <_ldtoa_r+0x750>
    6610:	07210713          	addi	a4,sp,114
    6614:	0080006f          	j	661c <_ldtoa_r+0xec8>
    6618:	8ae90ee3          	beq	s2,a4,5ed4 <_ldtoa_r+0x780>
    661c:	00095783          	lhu	a5,0(s2)
    6620:	00290913          	addi	s2,s2,2
    6624:	fe078ae3          	beqz	a5,6618 <_ldtoa_r+0xec4>
    6628:	00c12703          	lw	a4,12(sp)
    662c:	000027b7          	lui	a5,0x2
    6630:	70f78793          	addi	a5,a5,1807 # 270f <_svfprintf_r+0x16bb>
    6634:	00f72023          	sw	a5,0(a4)
    6638:	8e9ff06f          	j	5f20 <_ldtoa_r+0x7cc>
    663c:	12410a93          	addi	s5,sp,292
    6640:	000135b7          	lui	a1,0x13
    6644:	3fc58593          	addi	a1,a1,1020 # 133fc <zeroes.0+0x28>
    6648:	000a8513          	mv	a0,s5
    664c:	000024b7          	lui	s1,0x2
    6650:	09c020ef          	jal	ra,86ec <sprintf>
    6654:	70f48493          	addi	s1,s1,1807 # 270f <_svfprintf_r+0x16bb>
    6658:	861ff06f          	j	5eb8 <_ldtoa_r+0x764>
    665c:	1ac15603          	lhu	a2,428(sp)
    6660:	12610b13          	addi	s6,sp,294
    6664:	12710793          	addi	a5,sp,295
    6668:	fe4ff06f          	j	5e4c <_ldtoa_r+0x6f8>
    666c:	09810593          	addi	a1,sp,152
    6670:	07c10513          	addi	a0,sp,124
    6674:	00f12e23          	sw	a5,28(sp)
    6678:	965fd0ef          	jal	ra,3fdc <emovo.constprop.0>
    667c:	470b8593          	addi	a1,s7,1136
    6680:	09810513          	addi	a0,sp,152
    6684:	e65fd0ef          	jal	ra,44e8 <ecmp>
    6688:	01c12783          	lw	a5,28(sp)
    668c:	fc051863          	bnez	a0,5e5c <_ldtoa_r+0x708>
    6690:	01812703          	lw	a4,24(sp)
    6694:	800748e3          	bltz	a4,5ea4 <_ldtoa_r+0x750>
    6698:	ffe7c703          	lbu	a4,-2(a5)
    669c:	fd270613          	addi	a2,a4,-46
    66a0:	00163613          	seqz	a2,a2
    66a4:	fff64613          	not	a2,a2
    66a8:	00cb0633          	add	a2,s6,a2
    66ac:	00064603          	lbu	a2,0(a2)
    66b0:	00167613          	andi	a2,a2,1
    66b4:	fe060863          	beqz	a2,5ea4 <_ldtoa_r+0x750>
    66b8:	ffe78613          	addi	a2,a5,-2
    66bc:	07f77713          	andi	a4,a4,127
    66c0:	fb0ff06f          	j	5e70 <_ldtoa_r+0x71c>
    66c4:	000135b7          	lui	a1,0x13
    66c8:	3f058593          	addi	a1,a1,1008 # 133f0 <zeroes.0+0x1c>
    66cc:	000a8513          	mv	a0,s5
    66d0:	000024b7          	lui	s1,0x2
    66d4:	018020ef          	jal	ra,86ec <sprintf>
    66d8:	70f48493          	addi	s1,s1,1807 # 270f <_svfprintf_r+0x16bb>
    66dc:	fdcff06f          	j	5eb8 <_ldtoa_r+0x764>
    66e0:	00178793          	addi	a5,a5,1
    66e4:	fef60fa3          	sb	a5,-1(a2)
    66e8:	fbcff06f          	j	5ea4 <_ldtoa_r+0x750>
    66ec:	0d010413          	addi	s0,sp,208
    66f0:	00040593          	mv	a1,s0
    66f4:	07c10513          	addi	a0,sp,124
    66f8:	00004cb7          	lui	s9,0x4
    66fc:	d39fd0ef          	jal	ra,4434 <emovi>
    6700:	00000493          	li	s1,0
    6704:	0e810b13          	addi	s6,sp,232
    6708:	0cc10993          	addi	s3,sp,204
    670c:	0d210a93          	addi	s5,sp,210
    6710:	ffec8c93          	addi	s9,s9,-2 # 3ffe <emovo.constprop.0+0x22>
    6714:	0e815783          	lhu	a5,232(sp)
    6718:	0077f793          	andi	a5,a5,7
    671c:	0c079a63          	bnez	a5,67f0 <_ldtoa_r+0x109c>
    6720:	0b410713          	addi	a4,sp,180
    6724:	00040793          	mv	a5,s0
    6728:	0007d683          	lhu	a3,0(a5)
    672c:	00278793          	addi	a5,a5,2
    6730:	00270713          	addi	a4,a4,2
    6734:	fed71f23          	sh	a3,-2(a4)
    6738:	ff6798e3          	bne	a5,s6,6728 <_ldtoa_r+0xfd4>
    673c:	0b410513          	addi	a0,sp,180
    6740:	0c011623          	sh	zero,204(sp)
    6744:	ee4fd0ef          	jal	ra,3e28 <eshdn1>
    6748:	0b410513          	addi	a0,sp,180
    674c:	edcfd0ef          	jal	ra,3e28 <eshdn1>
    6750:	00000613          	li	a2,0
    6754:	00098693          	mv	a3,s3
    6758:	000b0713          	mv	a4,s6
    675c:	0006d583          	lhu	a1,0(a3)
    6760:	00075783          	lhu	a5,0(a4)
    6764:	ffe68693          	addi	a3,a3,-2
    6768:	ffe70713          	addi	a4,a4,-2
    676c:	00b787b3          	add	a5,a5,a1
    6770:	00c787b3          	add	a5,a5,a2
    6774:	0107d613          	srli	a2,a5,0x10
    6778:	00f69123          	sh	a5,2(a3)
    677c:	00167613          	andi	a2,a2,1
    6780:	fd571ee3          	bne	a4,s5,675c <_ldtoa_r+0x1008>
    6784:	0b615783          	lhu	a5,182(sp)
    6788:	0b815703          	lhu	a4,184(sp)
    678c:	00378793          	addi	a5,a5,3
    6790:	0af11b23          	sh	a5,182(sp)
    6794:	02070063          	beqz	a4,67b4 <_ldtoa_r+0x1060>
    6798:	0b410513          	addi	a0,sp,180
    679c:	e8cfd0ef          	jal	ra,3e28 <eshdn1>
    67a0:	0b615783          	lhu	a5,182(sp)
    67a4:	0b815703          	lhu	a4,184(sp)
    67a8:	00178793          	addi	a5,a5,1
    67ac:	0af11b23          	sh	a5,182(sp)
    67b0:	fe0714e3          	bnez	a4,6798 <_ldtoa_r+0x1044>
    67b4:	0cc15783          	lhu	a5,204(sp)
    67b8:	02079c63          	bnez	a5,67f0 <_ldtoa_r+0x109c>
    67bc:	0b615783          	lhu	a5,182(sp)
    67c0:	02fce863          	bltu	s9,a5,67f0 <_ldtoa_r+0x109c>
    67c4:	00040713          	mv	a4,s0
    67c8:	0b410793          	addi	a5,sp,180
    67cc:	0007d683          	lhu	a3,0(a5)
    67d0:	00278793          	addi	a5,a5,2
    67d4:	00270713          	addi	a4,a4,2
    67d8:	fed71f23          	sh	a3,-2(a4)
    67dc:	ff3798e3          	bne	a5,s3,67cc <_ldtoa_r+0x1078>
    67e0:	0e011423          	sh	zero,232(sp)
    67e4:	fff48493          	addi	s1,s1,-1
    67e8:	fd500793          	li	a5,-43
    67ec:	f2f494e3          	bne	s1,a5,6714 <_ldtoa_r+0xfc0>
    67f0:	07c10593          	addi	a1,sp,124
    67f4:	00040513          	mv	a0,s0
    67f8:	fe4fd0ef          	jal	ra,3fdc <emovo.constprop.0>
    67fc:	16010993          	addi	s3,sp,352
    6800:	960ff06f          	j	5960 <_ldtoa_r+0x20c>
    6804:	000a8793          	mv	a5,s5
    6808:	0007d703          	lhu	a4,0(a5)
    680c:	00278793          	addi	a5,a5,2
    6810:	aa071ee3          	bnez	a4,62cc <_ldtoa_r+0xb78>
    6814:	0e210713          	addi	a4,sp,226
    6818:	fee798e3          	bne	a5,a4,6808 <_ldtoa_r+0x10b4>
    681c:	000a8793          	mv	a5,s5
    6820:	0007d703          	lhu	a4,0(a5)
    6824:	00278793          	addi	a5,a5,2
    6828:	c20710e3          	bnez	a4,6448 <_ldtoa_r+0xcf4>
    682c:	0e210713          	addi	a4,sp,226
    6830:	fee798e3          	bne	a5,a4,6820 <_ldtoa_r+0x10cc>
    6834:	a99ff06f          	j	62cc <_ldtoa_r+0xb78>
    6838:	10c10713          	addi	a4,sp,268
    683c:	0f010793          	addi	a5,sp,240
    6840:	0007d883          	lhu	a7,0(a5)
    6844:	00075503          	lhu	a0,0(a4)
    6848:	00278793          	addi	a5,a5,2
    684c:	00270713          	addi	a4,a4,2
    6850:	04a89863          	bne	a7,a0,68a0 <_ldtoa_r+0x114c>
    6854:	10610513          	addi	a0,sp,262
    6858:	fea794e3          	bne	a5,a0,6840 <_ldtoa_r+0x10ec>
    685c:	0ec15703          	lhu	a4,236(sp)
    6860:	10815783          	lhu	a5,264(sp)
    6864:	04f70663          	beq	a4,a5,68b0 <_ldtoa_r+0x115c>
    6868:	000a8793          	mv	a5,s5
    686c:	0e410713          	addi	a4,sp,228
    6870:	00278793          	addi	a5,a5,2
    6874:	fe079f23          	sh	zero,-2(a5)
    6878:	fee79ce3          	bne	a5,a4,6870 <_ldtoa_r+0x111c>
    687c:	a51ff06f          	j	62cc <_ldtoa_r+0xb78>
    6880:	000136b7          	lui	a3,0x13
    6884:	000015b7          	lui	a1,0x1
    6888:	00013537          	lui	a0,0x13
    688c:	40468693          	addi	a3,a3,1028 # 13404 <zeroes.0+0x30>
    6890:	00000613          	li	a2,0
    6894:	b6e58593          	addi	a1,a1,-1170 # b6e <__neorv32_rte_debug_exc_handler+0x1be>
    6898:	41850513          	addi	a0,a0,1048 # 13418 <zeroes.0+0x44>
    689c:	32c030ef          	jal	ra,9bc8 <__assert_func>
    68a0:	07156c63          	bltu	a0,a7,6918 <_ldtoa_r+0x11c4>
    68a4:	12010793          	addi	a5,sp,288
    68a8:	10410713          	addi	a4,sp,260
    68ac:	c7dff06f          	j	6528 <_ldtoa_r+0xdd4>
    68b0:	00068713          	mv	a4,a3
    68b4:	00069663          	bnez	a3,68c0 <_ldtoa_r+0x116c>
    68b8:	10e11783          	lh	a5,270(sp)
    68bc:	0c07d663          	bgez	a5,6988 <_ldtoa_r+0x1234>
    68c0:	10a10713          	addi	a4,sp,266
    68c4:	12010793          	addi	a5,sp,288
    68c8:	00075583          	lhu	a1,0(a4)
    68cc:	10059663          	bnez	a1,69d8 <_ldtoa_r+0x1284>
    68d0:	00270713          	addi	a4,a4,2
    68d4:	fee79ae3          	bne	a5,a4,68c8 <_ldtoa_r+0x1174>
    68d8:	10c11523          	sh	a2,266(sp)
    68dc:	ca1ff06f          	j	657c <_ldtoa_r+0xe28>
    68e0:	00000613          	li	a2,0
    68e4:	0ee10893          	addi	a7,sp,238
    68e8:	0007d803          	lhu	a6,0(a5)
    68ec:	00075503          	lhu	a0,0(a4)
    68f0:	ffe78793          	addi	a5,a5,-2
    68f4:	ffe70713          	addi	a4,a4,-2
    68f8:	01050533          	add	a0,a0,a6
    68fc:	00c50633          	add	a2,a0,a2
    6900:	01065513          	srli	a0,a2,0x10
    6904:	00c79123          	sh	a2,2(a5)
    6908:	00157613          	andi	a2,a0,1
    690c:	fd171ee3          	bne	a4,a7,68e8 <_ldtoa_r+0x1194>
    6910:	00000613          	li	a2,0
    6914:	c59ff06f          	j	656c <_ldtoa_r+0xe18>
    6918:	02412603          	lw	a2,36(sp)
    691c:	10810713          	addi	a4,sp,264
    6920:	12010793          	addi	a5,sp,288
    6924:	00075503          	lhu	a0,0(a4)
    6928:	00270713          	addi	a4,a4,2
    692c:	00260613          	addi	a2,a2,2
    6930:	fea61f23          	sh	a0,-2(a2)
    6934:	fef718e3          	bne	a4,a5,6924 <_ldtoa_r+0x11d0>
    6938:	12011e23          	sh	zero,316(sp)
    693c:	10810513          	addi	a0,sp,264
    6940:	0ec10613          	addi	a2,sp,236
    6944:	10410713          	addi	a4,sp,260
    6948:	00065803          	lhu	a6,0(a2)
    694c:	00260613          	addi	a2,a2,2
    6950:	00250513          	addi	a0,a0,2
    6954:	ff051f23          	sh	a6,-2(a0)
    6958:	fee618e3          	bne	a2,a4,6948 <_ldtoa_r+0x11f4>
    695c:	02412603          	lw	a2,36(sp)
    6960:	12011023          	sh	zero,288(sp)
    6964:	0ec10893          	addi	a7,sp,236
    6968:	13c10513          	addi	a0,sp,316
    696c:	00065803          	lhu	a6,0(a2)
    6970:	00260613          	addi	a2,a2,2
    6974:	00288893          	addi	a7,a7,2
    6978:	ff089f23          	sh	a6,-2(a7)
    697c:	fea618e3          	bne	a2,a0,696c <_ldtoa_r+0x1218>
    6980:	10011223          	sh	zero,260(sp)
    6984:	ba5ff06f          	j	6528 <_ldtoa_r+0xdd4>
    6988:	12010693          	addi	a3,sp,288
    698c:	10a10893          	addi	a7,sp,266
    6990:	0006d783          	lhu	a5,0(a3)
    6994:	01079613          	slli	a2,a5,0x10
    6998:	41065613          	srai	a2,a2,0x10
    699c:	00065463          	bgez	a2,69a4 <_ldtoa_r+0x1250>
    69a0:	00176713          	ori	a4,a4,1
    69a4:	00179793          	slli	a5,a5,0x1
    69a8:	01079793          	slli	a5,a5,0x10
    69ac:	00277613          	andi	a2,a4,2
    69b0:	0107d793          	srli	a5,a5,0x10
    69b4:	00060463          	beqz	a2,69bc <_ldtoa_r+0x1268>
    69b8:	0017e793          	ori	a5,a5,1
    69bc:	00171713          	slli	a4,a4,0x1
    69c0:	00f69023          	sh	a5,0(a3)
    69c4:	01071713          	slli	a4,a4,0x10
    69c8:	ffe68693          	addi	a3,a3,-2
    69cc:	01075713          	srli	a4,a4,0x10
    69d0:	fd1690e3          	bne	a3,a7,6990 <_ldtoa_r+0x123c>
    69d4:	ba9ff06f          	j	657c <_ldtoa_r+0xe28>
    69d8:	00168613          	addi	a2,a3,1
    69dc:	10c11523          	sh	a2,266(sp)
    69e0:	b9dff06f          	j	657c <_ldtoa_r+0xe28>

000069e4 <_ldcheck>:
    69e4:	00852703          	lw	a4,8(a0)
    69e8:	00c52783          	lw	a5,12(a0)
    69ec:	00052603          	lw	a2,0(a0)
    69f0:	00452683          	lw	a3,4(a0)
    69f4:	fc010113          	addi	sp,sp,-64
    69f8:	00010513          	mv	a0,sp
    69fc:	01410593          	addi	a1,sp,20
    6a00:	00e12423          	sw	a4,8(sp)
    6a04:	00f12623          	sw	a5,12(sp)
    6a08:	02112e23          	sw	ra,60(sp)
    6a0c:	00c12023          	sw	a2,0(sp)
    6a10:	00d12223          	sw	a3,4(sp)
    6a14:	bd1fe0ef          	jal	ra,55e4 <e113toe.isra.0>
    6a18:	02615783          	lhu	a5,38(sp)
    6a1c:	00000513          	li	a0,0
    6a20:	fff7c793          	not	a5,a5
    6a24:	01179713          	slli	a4,a5,0x11
    6a28:	02071063          	bnez	a4,6a48 <_ldcheck+0x64>
    6a2c:	01410793          	addi	a5,sp,20
    6a30:	02610693          	addi	a3,sp,38
    6a34:	0007d703          	lhu	a4,0(a5)
    6a38:	00278793          	addi	a5,a5,2
    6a3c:	00071c63          	bnez	a4,6a54 <_ldcheck+0x70>
    6a40:	fed79ae3          	bne	a5,a3,6a34 <_ldcheck+0x50>
    6a44:	00200513          	li	a0,2
    6a48:	03c12083          	lw	ra,60(sp)
    6a4c:	04010113          	addi	sp,sp,64
    6a50:	00008067          	ret
    6a54:	00100513          	li	a0,1
    6a58:	ff1ff06f          	j	6a48 <_ldcheck+0x64>

00006a5c <__localeconv_l>:
    6a5c:	0f050513          	addi	a0,a0,240
    6a60:	00008067          	ret

00006a64 <_localeconv_r>:
    6a64:	12018513          	addi	a0,gp,288 # 80000920 <__global_locale+0xf0>
    6a68:	00008067          	ret

00006a6c <localeconv>:
    6a6c:	12018513          	addi	a0,gp,288 # 80000920 <__global_locale+0xf0>
    6a70:	00008067          	ret

00006a74 <_malloc_r>:
    6a74:	fd010113          	addi	sp,sp,-48
    6a78:	01312e23          	sw	s3,28(sp)
    6a7c:	02112623          	sw	ra,44(sp)
    6a80:	02812423          	sw	s0,40(sp)
    6a84:	02912223          	sw	s1,36(sp)
    6a88:	03212023          	sw	s2,32(sp)
    6a8c:	01412c23          	sw	s4,24(sp)
    6a90:	01512a23          	sw	s5,20(sp)
    6a94:	01612823          	sw	s6,16(sp)
    6a98:	01712623          	sw	s7,12(sp)
    6a9c:	01812423          	sw	s8,8(sp)
    6aa0:	01912223          	sw	s9,4(sp)
    6aa4:	00b58793          	addi	a5,a1,11
    6aa8:	01600713          	li	a4,22
    6aac:	00050993          	mv	s3,a0
    6ab0:	06f76463          	bltu	a4,a5,6b18 <_malloc_r+0xa4>
    6ab4:	01000793          	li	a5,16
    6ab8:	1eb7e263          	bltu	a5,a1,6c9c <_malloc_r+0x228>
    6abc:	019000ef          	jal	ra,72d4 <__malloc_lock>
    6ac0:	01000493          	li	s1,16
    6ac4:	01800793          	li	a5,24
    6ac8:	00200613          	li	a2,2
    6acc:	c2818913          	addi	s2,gp,-984 # 80000428 <__malloc_av_>
    6ad0:	00f907b3          	add	a5,s2,a5
    6ad4:	0047a403          	lw	s0,4(a5)
    6ad8:	ff878713          	addi	a4,a5,-8
    6adc:	20e40863          	beq	s0,a4,6cec <_malloc_r+0x278>
    6ae0:	00442783          	lw	a5,4(s0)
    6ae4:	00c42683          	lw	a3,12(s0)
    6ae8:	00842603          	lw	a2,8(s0)
    6aec:	ffc7f793          	andi	a5,a5,-4
    6af0:	00f407b3          	add	a5,s0,a5
    6af4:	0047a703          	lw	a4,4(a5)
    6af8:	00d62623          	sw	a3,12(a2)
    6afc:	00c6a423          	sw	a2,8(a3)
    6b00:	00176713          	ori	a4,a4,1
    6b04:	00098513          	mv	a0,s3
    6b08:	00e7a223          	sw	a4,4(a5)
    6b0c:	7cc000ef          	jal	ra,72d8 <__malloc_unlock>
    6b10:	00840513          	addi	a0,s0,8
    6b14:	1940006f          	j	6ca8 <_malloc_r+0x234>
    6b18:	ff87f493          	andi	s1,a5,-8
    6b1c:	1807c063          	bltz	a5,6c9c <_malloc_r+0x228>
    6b20:	16b4ee63          	bltu	s1,a1,6c9c <_malloc_r+0x228>
    6b24:	7b0000ef          	jal	ra,72d4 <__malloc_lock>
    6b28:	1f700793          	li	a5,503
    6b2c:	4497fa63          	bgeu	a5,s1,6f80 <_malloc_r+0x50c>
    6b30:	0094d793          	srli	a5,s1,0x9
    6b34:	1a078463          	beqz	a5,6cdc <_malloc_r+0x268>
    6b38:	00400713          	li	a4,4
    6b3c:	3cf76063          	bltu	a4,a5,6efc <_malloc_r+0x488>
    6b40:	0064d793          	srli	a5,s1,0x6
    6b44:	03978613          	addi	a2,a5,57
    6b48:	03878513          	addi	a0,a5,56
    6b4c:	00361693          	slli	a3,a2,0x3
    6b50:	c2818913          	addi	s2,gp,-984 # 80000428 <__malloc_av_>
    6b54:	00d906b3          	add	a3,s2,a3
    6b58:	0046a403          	lw	s0,4(a3)
    6b5c:	ff868693          	addi	a3,a3,-8
    6b60:	02868663          	beq	a3,s0,6b8c <_malloc_r+0x118>
    6b64:	00f00593          	li	a1,15
    6b68:	0100006f          	j	6b78 <_malloc_r+0x104>
    6b6c:	32075263          	bgez	a4,6e90 <_malloc_r+0x41c>
    6b70:	00c42403          	lw	s0,12(s0)
    6b74:	00868c63          	beq	a3,s0,6b8c <_malloc_r+0x118>
    6b78:	00442783          	lw	a5,4(s0)
    6b7c:	ffc7f793          	andi	a5,a5,-4
    6b80:	40978733          	sub	a4,a5,s1
    6b84:	fee5d4e3          	bge	a1,a4,6b6c <_malloc_r+0xf8>
    6b88:	00050613          	mv	a2,a0
    6b8c:	01092403          	lw	s0,16(s2)
    6b90:	00890893          	addi	a7,s2,8
    6b94:	17140863          	beq	s0,a7,6d04 <_malloc_r+0x290>
    6b98:	00442503          	lw	a0,4(s0)
    6b9c:	00f00693          	li	a3,15
    6ba0:	ffc57513          	andi	a0,a0,-4
    6ba4:	409507b3          	sub	a5,a0,s1
    6ba8:	40f6c263          	blt	a3,a5,6fac <_malloc_r+0x538>
    6bac:	01192a23          	sw	a7,20(s2)
    6bb0:	01192823          	sw	a7,16(s2)
    6bb4:	3c07dc63          	bgez	a5,6f8c <_malloc_r+0x518>
    6bb8:	1ff00793          	li	a5,511
    6bbc:	2ea7e063          	bltu	a5,a0,6e9c <_malloc_r+0x428>
    6bc0:	ff857793          	andi	a5,a0,-8
    6bc4:	00878793          	addi	a5,a5,8
    6bc8:	00492583          	lw	a1,4(s2)
    6bcc:	00f907b3          	add	a5,s2,a5
    6bd0:	0007a683          	lw	a3,0(a5)
    6bd4:	00555513          	srli	a0,a0,0x5
    6bd8:	00100713          	li	a4,1
    6bdc:	00a71733          	sll	a4,a4,a0
    6be0:	00b76733          	or	a4,a4,a1
    6be4:	ff878593          	addi	a1,a5,-8
    6be8:	00b42623          	sw	a1,12(s0)
    6bec:	00d42423          	sw	a3,8(s0)
    6bf0:	00e92223          	sw	a4,4(s2)
    6bf4:	0087a023          	sw	s0,0(a5)
    6bf8:	0086a623          	sw	s0,12(a3)
    6bfc:	40265793          	srai	a5,a2,0x2
    6c00:	00100593          	li	a1,1
    6c04:	00f595b3          	sll	a1,a1,a5
    6c08:	10b76863          	bltu	a4,a1,6d18 <_malloc_r+0x2a4>
    6c0c:	00e5f7b3          	and	a5,a1,a4
    6c10:	02079463          	bnez	a5,6c38 <_malloc_r+0x1c4>
    6c14:	00159593          	slli	a1,a1,0x1
    6c18:	ffc67613          	andi	a2,a2,-4
    6c1c:	00e5f7b3          	and	a5,a1,a4
    6c20:	00460613          	addi	a2,a2,4
    6c24:	00079a63          	bnez	a5,6c38 <_malloc_r+0x1c4>
    6c28:	00159593          	slli	a1,a1,0x1
    6c2c:	00e5f7b3          	and	a5,a1,a4
    6c30:	00460613          	addi	a2,a2,4
    6c34:	fe078ae3          	beqz	a5,6c28 <_malloc_r+0x1b4>
    6c38:	00f00813          	li	a6,15
    6c3c:	00361313          	slli	t1,a2,0x3
    6c40:	00690333          	add	t1,s2,t1
    6c44:	00030513          	mv	a0,t1
    6c48:	00c52783          	lw	a5,12(a0)
    6c4c:	00060e13          	mv	t3,a2
    6c50:	2cf50863          	beq	a0,a5,6f20 <_malloc_r+0x4ac>
    6c54:	0047a703          	lw	a4,4(a5)
    6c58:	00078413          	mv	s0,a5
    6c5c:	00c7a783          	lw	a5,12(a5)
    6c60:	ffc77713          	andi	a4,a4,-4
    6c64:	409706b3          	sub	a3,a4,s1
    6c68:	2cd84863          	blt	a6,a3,6f38 <_malloc_r+0x4c4>
    6c6c:	fe06c2e3          	bltz	a3,6c50 <_malloc_r+0x1dc>
    6c70:	00e40733          	add	a4,s0,a4
    6c74:	00472683          	lw	a3,4(a4)
    6c78:	00842603          	lw	a2,8(s0)
    6c7c:	00098513          	mv	a0,s3
    6c80:	0016e693          	ori	a3,a3,1
    6c84:	00d72223          	sw	a3,4(a4)
    6c88:	00f62623          	sw	a5,12(a2)
    6c8c:	00c7a423          	sw	a2,8(a5)
    6c90:	648000ef          	jal	ra,72d8 <__malloc_unlock>
    6c94:	00840513          	addi	a0,s0,8
    6c98:	0100006f          	j	6ca8 <_malloc_r+0x234>
    6c9c:	00c00793          	li	a5,12
    6ca0:	00f9a023          	sw	a5,0(s3)
    6ca4:	00000513          	li	a0,0
    6ca8:	02c12083          	lw	ra,44(sp)
    6cac:	02812403          	lw	s0,40(sp)
    6cb0:	02412483          	lw	s1,36(sp)
    6cb4:	02012903          	lw	s2,32(sp)
    6cb8:	01c12983          	lw	s3,28(sp)
    6cbc:	01812a03          	lw	s4,24(sp)
    6cc0:	01412a83          	lw	s5,20(sp)
    6cc4:	01012b03          	lw	s6,16(sp)
    6cc8:	00c12b83          	lw	s7,12(sp)
    6ccc:	00812c03          	lw	s8,8(sp)
    6cd0:	00412c83          	lw	s9,4(sp)
    6cd4:	03010113          	addi	sp,sp,48
    6cd8:	00008067          	ret
    6cdc:	20000693          	li	a3,512
    6ce0:	04000613          	li	a2,64
    6ce4:	03f00513          	li	a0,63
    6ce8:	e69ff06f          	j	6b50 <_malloc_r+0xdc>
    6cec:	00c7a403          	lw	s0,12(a5)
    6cf0:	00260613          	addi	a2,a2,2
    6cf4:	de8796e3          	bne	a5,s0,6ae0 <_malloc_r+0x6c>
    6cf8:	01092403          	lw	s0,16(s2)
    6cfc:	00890893          	addi	a7,s2,8
    6d00:	e9141ce3          	bne	s0,a7,6b98 <_malloc_r+0x124>
    6d04:	00492703          	lw	a4,4(s2)
    6d08:	40265793          	srai	a5,a2,0x2
    6d0c:	00100593          	li	a1,1
    6d10:	00f595b3          	sll	a1,a1,a5
    6d14:	eeb77ce3          	bgeu	a4,a1,6c0c <_malloc_r+0x198>
    6d18:	00892403          	lw	s0,8(s2)
    6d1c:	00442a83          	lw	s5,4(s0)
    6d20:	ffcafb13          	andi	s6,s5,-4
    6d24:	009b6863          	bltu	s6,s1,6d34 <_malloc_r+0x2c0>
    6d28:	409b07b3          	sub	a5,s6,s1
    6d2c:	00f00713          	li	a4,15
    6d30:	12f74c63          	blt	a4,a5,6e68 <_malloc_r+0x3f4>
    6d34:	1d01aa83          	lw	s5,464(gp) # 800009d0 <__malloc_top_pad>
    6d38:	1c01a703          	lw	a4,448(gp) # 800009c0 <__malloc_sbrk_base>
    6d3c:	fff00793          	li	a5,-1
    6d40:	01640a33          	add	s4,s0,s6
    6d44:	01548ab3          	add	s5,s1,s5
    6d48:	34f70463          	beq	a4,a5,7090 <_malloc_r+0x61c>
    6d4c:	000017b7          	lui	a5,0x1
    6d50:	00f78793          	addi	a5,a5,15 # 100f <_vsnprintf_r+0x7f>
    6d54:	00fa8ab3          	add	s5,s5,a5
    6d58:	fffff7b7          	lui	a5,0xfffff
    6d5c:	00fafab3          	and	s5,s5,a5
    6d60:	000a8593          	mv	a1,s5
    6d64:	00098513          	mv	a0,s3
    6d68:	0bd010ef          	jal	ra,8624 <_sbrk_r>
    6d6c:	fff00793          	li	a5,-1
    6d70:	00050b93          	mv	s7,a0
    6d74:	28f50663          	beq	a0,a5,7000 <_malloc_r+0x58c>
    6d78:	29456263          	bltu	a0,s4,6ffc <_malloc_r+0x588>
    6d7c:	2d018c13          	addi	s8,gp,720 # 80000ad0 <__malloc_current_mallinfo>
    6d80:	000c2583          	lw	a1,0(s8) # 1000 <_vsnprintf_r+0x70>
    6d84:	00ba85b3          	add	a1,s5,a1
    6d88:	00bc2023          	sw	a1,0(s8)
    6d8c:	00058793          	mv	a5,a1
    6d90:	38aa0e63          	beq	s4,a0,712c <_malloc_r+0x6b8>
    6d94:	1c01a683          	lw	a3,448(gp) # 800009c0 <__malloc_sbrk_base>
    6d98:	fff00713          	li	a4,-1
    6d9c:	3ae68663          	beq	a3,a4,7148 <_malloc_r+0x6d4>
    6da0:	414b8a33          	sub	s4,s7,s4
    6da4:	00fa07b3          	add	a5,s4,a5
    6da8:	00fc2023          	sw	a5,0(s8)
    6dac:	007bfc93          	andi	s9,s7,7
    6db0:	300c8263          	beqz	s9,70b4 <_malloc_r+0x640>
    6db4:	000017b7          	lui	a5,0x1
    6db8:	419b8bb3          	sub	s7,s7,s9
    6dbc:	00878593          	addi	a1,a5,8 # 1008 <_vsnprintf_r+0x78>
    6dc0:	008b8b93          	addi	s7,s7,8
    6dc4:	419585b3          	sub	a1,a1,s9
    6dc8:	015b8ab3          	add	s5,s7,s5
    6dcc:	fff78793          	addi	a5,a5,-1
    6dd0:	415585b3          	sub	a1,a1,s5
    6dd4:	00f5fa33          	and	s4,a1,a5
    6dd8:	000a0593          	mv	a1,s4
    6ddc:	00098513          	mv	a0,s3
    6de0:	045010ef          	jal	ra,8624 <_sbrk_r>
    6de4:	fff00793          	li	a5,-1
    6de8:	3af50a63          	beq	a0,a5,719c <_malloc_r+0x728>
    6dec:	41750533          	sub	a0,a0,s7
    6df0:	01450ab3          	add	s5,a0,s4
    6df4:	000c2583          	lw	a1,0(s8)
    6df8:	01792423          	sw	s7,8(s2)
    6dfc:	001aea93          	ori	s5,s5,1
    6e00:	00ba05b3          	add	a1,s4,a1
    6e04:	00bc2023          	sw	a1,0(s8)
    6e08:	015ba223          	sw	s5,4(s7)
    6e0c:	35240263          	beq	s0,s2,7150 <_malloc_r+0x6dc>
    6e10:	00f00693          	li	a3,15
    6e14:	3566f263          	bgeu	a3,s6,7158 <_malloc_r+0x6e4>
    6e18:	00442703          	lw	a4,4(s0)
    6e1c:	ff4b0793          	addi	a5,s6,-12
    6e20:	ff87f793          	andi	a5,a5,-8
    6e24:	00177713          	andi	a4,a4,1
    6e28:	00f76733          	or	a4,a4,a5
    6e2c:	00e42223          	sw	a4,4(s0)
    6e30:	00500613          	li	a2,5
    6e34:	00f40733          	add	a4,s0,a5
    6e38:	00c72223          	sw	a2,4(a4)
    6e3c:	00c72423          	sw	a2,8(a4)
    6e40:	36f6e863          	bltu	a3,a5,71b0 <_malloc_r+0x73c>
    6e44:	004baa83          	lw	s5,4(s7)
    6e48:	000b8413          	mv	s0,s7
    6e4c:	1cc1a703          	lw	a4,460(gp) # 800009cc <__malloc_max_sbrked_mem>
    6e50:	00b77463          	bgeu	a4,a1,6e58 <_malloc_r+0x3e4>
    6e54:	1cb1a623          	sw	a1,460(gp) # 800009cc <__malloc_max_sbrked_mem>
    6e58:	1c81a703          	lw	a4,456(gp) # 800009c8 <__malloc_max_total_mem>
    6e5c:	1ab77663          	bgeu	a4,a1,7008 <_malloc_r+0x594>
    6e60:	1cb1a423          	sw	a1,456(gp) # 800009c8 <__malloc_max_total_mem>
    6e64:	1a40006f          	j	7008 <_malloc_r+0x594>
    6e68:	0014e713          	ori	a4,s1,1
    6e6c:	00e42223          	sw	a4,4(s0)
    6e70:	009404b3          	add	s1,s0,s1
    6e74:	00992423          	sw	s1,8(s2)
    6e78:	0017e793          	ori	a5,a5,1
    6e7c:	00098513          	mv	a0,s3
    6e80:	00f4a223          	sw	a5,4(s1)
    6e84:	454000ef          	jal	ra,72d8 <__malloc_unlock>
    6e88:	00840513          	addi	a0,s0,8
    6e8c:	e1dff06f          	j	6ca8 <_malloc_r+0x234>
    6e90:	00c42683          	lw	a3,12(s0)
    6e94:	00842603          	lw	a2,8(s0)
    6e98:	c59ff06f          	j	6af0 <_malloc_r+0x7c>
    6e9c:	00955793          	srli	a5,a0,0x9
    6ea0:	00400713          	li	a4,4
    6ea4:	14f77263          	bgeu	a4,a5,6fe8 <_malloc_r+0x574>
    6ea8:	01400713          	li	a4,20
    6eac:	22f76a63          	bltu	a4,a5,70e0 <_malloc_r+0x66c>
    6eb0:	05c78693          	addi	a3,a5,92
    6eb4:	05b78593          	addi	a1,a5,91
    6eb8:	00369693          	slli	a3,a3,0x3
    6ebc:	00d906b3          	add	a3,s2,a3
    6ec0:	0006a783          	lw	a5,0(a3)
    6ec4:	ff868693          	addi	a3,a3,-8
    6ec8:	1cf68863          	beq	a3,a5,7098 <_malloc_r+0x624>
    6ecc:	0047a703          	lw	a4,4(a5)
    6ed0:	ffc77713          	andi	a4,a4,-4
    6ed4:	00e57663          	bgeu	a0,a4,6ee0 <_malloc_r+0x46c>
    6ed8:	0087a783          	lw	a5,8(a5)
    6edc:	fef698e3          	bne	a3,a5,6ecc <_malloc_r+0x458>
    6ee0:	00c7a683          	lw	a3,12(a5)
    6ee4:	00492703          	lw	a4,4(s2)
    6ee8:	00d42623          	sw	a3,12(s0)
    6eec:	00f42423          	sw	a5,8(s0)
    6ef0:	0086a423          	sw	s0,8(a3)
    6ef4:	0087a623          	sw	s0,12(a5)
    6ef8:	d05ff06f          	j	6bfc <_malloc_r+0x188>
    6efc:	01400713          	li	a4,20
    6f00:	12f77663          	bgeu	a4,a5,702c <_malloc_r+0x5b8>
    6f04:	05400713          	li	a4,84
    6f08:	1ef76a63          	bltu	a4,a5,70fc <_malloc_r+0x688>
    6f0c:	00c4d793          	srli	a5,s1,0xc
    6f10:	06f78613          	addi	a2,a5,111
    6f14:	06e78513          	addi	a0,a5,110
    6f18:	00361693          	slli	a3,a2,0x3
    6f1c:	c35ff06f          	j	6b50 <_malloc_r+0xdc>
    6f20:	001e0e13          	addi	t3,t3,1
    6f24:	003e7793          	andi	a5,t3,3
    6f28:	00850513          	addi	a0,a0,8
    6f2c:	10078e63          	beqz	a5,7048 <_malloc_r+0x5d4>
    6f30:	00c52783          	lw	a5,12(a0)
    6f34:	d1dff06f          	j	6c50 <_malloc_r+0x1dc>
    6f38:	00842603          	lw	a2,8(s0)
    6f3c:	0014e593          	ori	a1,s1,1
    6f40:	00b42223          	sw	a1,4(s0)
    6f44:	00f62623          	sw	a5,12(a2)
    6f48:	00c7a423          	sw	a2,8(a5)
    6f4c:	009404b3          	add	s1,s0,s1
    6f50:	00992a23          	sw	s1,20(s2)
    6f54:	00992823          	sw	s1,16(s2)
    6f58:	0016e793          	ori	a5,a3,1
    6f5c:	0114a623          	sw	a7,12(s1)
    6f60:	0114a423          	sw	a7,8(s1)
    6f64:	00f4a223          	sw	a5,4(s1)
    6f68:	00e40733          	add	a4,s0,a4
    6f6c:	00098513          	mv	a0,s3
    6f70:	00d72023          	sw	a3,0(a4)
    6f74:	364000ef          	jal	ra,72d8 <__malloc_unlock>
    6f78:	00840513          	addi	a0,s0,8
    6f7c:	d2dff06f          	j	6ca8 <_malloc_r+0x234>
    6f80:	0034d613          	srli	a2,s1,0x3
    6f84:	00848793          	addi	a5,s1,8
    6f88:	b45ff06f          	j	6acc <_malloc_r+0x58>
    6f8c:	00a40733          	add	a4,s0,a0
    6f90:	00472783          	lw	a5,4(a4)
    6f94:	00098513          	mv	a0,s3
    6f98:	0017e793          	ori	a5,a5,1
    6f9c:	00f72223          	sw	a5,4(a4)
    6fa0:	338000ef          	jal	ra,72d8 <__malloc_unlock>
    6fa4:	00840513          	addi	a0,s0,8
    6fa8:	d01ff06f          	j	6ca8 <_malloc_r+0x234>
    6fac:	0014e713          	ori	a4,s1,1
    6fb0:	00e42223          	sw	a4,4(s0)
    6fb4:	009404b3          	add	s1,s0,s1
    6fb8:	00992a23          	sw	s1,20(s2)
    6fbc:	00992823          	sw	s1,16(s2)
    6fc0:	0017e713          	ori	a4,a5,1
    6fc4:	0114a623          	sw	a7,12(s1)
    6fc8:	0114a423          	sw	a7,8(s1)
    6fcc:	00e4a223          	sw	a4,4(s1)
    6fd0:	00a40533          	add	a0,s0,a0
    6fd4:	00f52023          	sw	a5,0(a0)
    6fd8:	00098513          	mv	a0,s3
    6fdc:	2fc000ef          	jal	ra,72d8 <__malloc_unlock>
    6fe0:	00840513          	addi	a0,s0,8
    6fe4:	cc5ff06f          	j	6ca8 <_malloc_r+0x234>
    6fe8:	00655793          	srli	a5,a0,0x6
    6fec:	03978693          	addi	a3,a5,57
    6ff0:	03878593          	addi	a1,a5,56
    6ff4:	00369693          	slli	a3,a3,0x3
    6ff8:	ec5ff06f          	j	6ebc <_malloc_r+0x448>
    6ffc:	11240e63          	beq	s0,s2,7118 <_malloc_r+0x6a4>
    7000:	00892403          	lw	s0,8(s2)
    7004:	00442a83          	lw	s5,4(s0)
    7008:	ffcafa93          	andi	s5,s5,-4
    700c:	409a87b3          	sub	a5,s5,s1
    7010:	009ae663          	bltu	s5,s1,701c <_malloc_r+0x5a8>
    7014:	00f00713          	li	a4,15
    7018:	e4f748e3          	blt	a4,a5,6e68 <_malloc_r+0x3f4>
    701c:	00098513          	mv	a0,s3
    7020:	2b8000ef          	jal	ra,72d8 <__malloc_unlock>
    7024:	00000513          	li	a0,0
    7028:	c81ff06f          	j	6ca8 <_malloc_r+0x234>
    702c:	05c78613          	addi	a2,a5,92
    7030:	05b78513          	addi	a0,a5,91
    7034:	00361693          	slli	a3,a2,0x3
    7038:	b19ff06f          	j	6b50 <_malloc_r+0xdc>
    703c:	00832783          	lw	a5,8(t1)
    7040:	fff60613          	addi	a2,a2,-1
    7044:	1c679063          	bne	a5,t1,7204 <_malloc_r+0x790>
    7048:	00367793          	andi	a5,a2,3
    704c:	ff830313          	addi	t1,t1,-8
    7050:	fe0796e3          	bnez	a5,703c <_malloc_r+0x5c8>
    7054:	00492703          	lw	a4,4(s2)
    7058:	fff5c793          	not	a5,a1
    705c:	00e7f7b3          	and	a5,a5,a4
    7060:	00f92223          	sw	a5,4(s2)
    7064:	00159593          	slli	a1,a1,0x1
    7068:	cab7e8e3          	bltu	a5,a1,6d18 <_malloc_r+0x2a4>
    706c:	ca0586e3          	beqz	a1,6d18 <_malloc_r+0x2a4>
    7070:	00f5f733          	and	a4,a1,a5
    7074:	00071a63          	bnez	a4,7088 <_malloc_r+0x614>
    7078:	00159593          	slli	a1,a1,0x1
    707c:	00f5f733          	and	a4,a1,a5
    7080:	004e0e13          	addi	t3,t3,4
    7084:	fe070ae3          	beqz	a4,7078 <_malloc_r+0x604>
    7088:	000e0613          	mv	a2,t3
    708c:	bb1ff06f          	j	6c3c <_malloc_r+0x1c8>
    7090:	010a8a93          	addi	s5,s5,16 # fffff010 <__ctr0_io_space_begin+0xfffff210>
    7094:	ccdff06f          	j	6d60 <_malloc_r+0x2ec>
    7098:	00492503          	lw	a0,4(s2)
    709c:	4025d593          	srai	a1,a1,0x2
    70a0:	00100713          	li	a4,1
    70a4:	00b71733          	sll	a4,a4,a1
    70a8:	00a76733          	or	a4,a4,a0
    70ac:	00e92223          	sw	a4,4(s2)
    70b0:	e39ff06f          	j	6ee8 <_malloc_r+0x474>
    70b4:	015b85b3          	add	a1,s7,s5
    70b8:	40b005b3          	neg	a1,a1
    70bc:	01459593          	slli	a1,a1,0x14
    70c0:	0145da13          	srli	s4,a1,0x14
    70c4:	000a0593          	mv	a1,s4
    70c8:	00098513          	mv	a0,s3
    70cc:	558010ef          	jal	ra,8624 <_sbrk_r>
    70d0:	fff00793          	li	a5,-1
    70d4:	d0f51ce3          	bne	a0,a5,6dec <_malloc_r+0x378>
    70d8:	00000a13          	li	s4,0
    70dc:	d19ff06f          	j	6df4 <_malloc_r+0x380>
    70e0:	05400713          	li	a4,84
    70e4:	08f76063          	bltu	a4,a5,7164 <_malloc_r+0x6f0>
    70e8:	00c55793          	srli	a5,a0,0xc
    70ec:	06f78693          	addi	a3,a5,111
    70f0:	06e78593          	addi	a1,a5,110
    70f4:	00369693          	slli	a3,a3,0x3
    70f8:	dc5ff06f          	j	6ebc <_malloc_r+0x448>
    70fc:	15400713          	li	a4,340
    7100:	08f76063          	bltu	a4,a5,7180 <_malloc_r+0x70c>
    7104:	00f4d793          	srli	a5,s1,0xf
    7108:	07878613          	addi	a2,a5,120
    710c:	07778513          	addi	a0,a5,119
    7110:	00361693          	slli	a3,a2,0x3
    7114:	a3dff06f          	j	6b50 <_malloc_r+0xdc>
    7118:	2d018c13          	addi	s8,gp,720 # 80000ad0 <__malloc_current_mallinfo>
    711c:	000c2783          	lw	a5,0(s8)
    7120:	00fa87b3          	add	a5,s5,a5
    7124:	00fc2023          	sw	a5,0(s8)
    7128:	c6dff06f          	j	6d94 <_malloc_r+0x320>
    712c:	014a1713          	slli	a4,s4,0x14
    7130:	c60712e3          	bnez	a4,6d94 <_malloc_r+0x320>
    7134:	00892403          	lw	s0,8(s2)
    7138:	015b0ab3          	add	s5,s6,s5
    713c:	001aea93          	ori	s5,s5,1
    7140:	01542223          	sw	s5,4(s0)
    7144:	d09ff06f          	j	6e4c <_malloc_r+0x3d8>
    7148:	1d71a023          	sw	s7,448(gp) # 800009c0 <__malloc_sbrk_base>
    714c:	c61ff06f          	j	6dac <_malloc_r+0x338>
    7150:	000b8413          	mv	s0,s7
    7154:	cf9ff06f          	j	6e4c <_malloc_r+0x3d8>
    7158:	00100793          	li	a5,1
    715c:	00fba223          	sw	a5,4(s7)
    7160:	ebdff06f          	j	701c <_malloc_r+0x5a8>
    7164:	15400713          	li	a4,340
    7168:	06f76263          	bltu	a4,a5,71cc <_malloc_r+0x758>
    716c:	00f55793          	srli	a5,a0,0xf
    7170:	07878693          	addi	a3,a5,120
    7174:	07778593          	addi	a1,a5,119
    7178:	00369693          	slli	a3,a3,0x3
    717c:	d41ff06f          	j	6ebc <_malloc_r+0x448>
    7180:	55400713          	li	a4,1364
    7184:	06f76263          	bltu	a4,a5,71e8 <_malloc_r+0x774>
    7188:	0124d793          	srli	a5,s1,0x12
    718c:	07d78613          	addi	a2,a5,125
    7190:	07c78513          	addi	a0,a5,124
    7194:	00361693          	slli	a3,a2,0x3
    7198:	9b9ff06f          	j	6b50 <_malloc_r+0xdc>
    719c:	ff8c8c93          	addi	s9,s9,-8
    71a0:	019a8ab3          	add	s5,s5,s9
    71a4:	417a8ab3          	sub	s5,s5,s7
    71a8:	00000a13          	li	s4,0
    71ac:	c49ff06f          	j	6df4 <_malloc_r+0x380>
    71b0:	00840593          	addi	a1,s0,8
    71b4:	00098513          	mv	a0,s3
    71b8:	971fc0ef          	jal	ra,3b28 <_free_r>
    71bc:	00892403          	lw	s0,8(s2)
    71c0:	000c2583          	lw	a1,0(s8)
    71c4:	00442a83          	lw	s5,4(s0)
    71c8:	c85ff06f          	j	6e4c <_malloc_r+0x3d8>
    71cc:	55400713          	li	a4,1364
    71d0:	02f76463          	bltu	a4,a5,71f8 <_malloc_r+0x784>
    71d4:	01255793          	srli	a5,a0,0x12
    71d8:	07d78693          	addi	a3,a5,125
    71dc:	07c78593          	addi	a1,a5,124
    71e0:	00369693          	slli	a3,a3,0x3
    71e4:	cd9ff06f          	j	6ebc <_malloc_r+0x448>
    71e8:	3f800693          	li	a3,1016
    71ec:	07f00613          	li	a2,127
    71f0:	07e00513          	li	a0,126
    71f4:	95dff06f          	j	6b50 <_malloc_r+0xdc>
    71f8:	3f800693          	li	a3,1016
    71fc:	07e00593          	li	a1,126
    7200:	cbdff06f          	j	6ebc <_malloc_r+0x448>
    7204:	00492783          	lw	a5,4(s2)
    7208:	e5dff06f          	j	7064 <_malloc_r+0x5f0>

0000720c <memchr>:
    720c:	00357793          	andi	a5,a0,3
    7210:	0ff5f693          	andi	a3,a1,255
    7214:	02078a63          	beqz	a5,7248 <memchr+0x3c>
    7218:	fff60793          	addi	a5,a2,-1
    721c:	02060e63          	beqz	a2,7258 <memchr+0x4c>
    7220:	fff00613          	li	a2,-1
    7224:	0180006f          	j	723c <memchr+0x30>
    7228:	00150513          	addi	a0,a0,1
    722c:	00357713          	andi	a4,a0,3
    7230:	00070e63          	beqz	a4,724c <memchr+0x40>
    7234:	fff78793          	addi	a5,a5,-1
    7238:	02c78063          	beq	a5,a2,7258 <memchr+0x4c>
    723c:	00054703          	lbu	a4,0(a0)
    7240:	fed714e3          	bne	a4,a3,7228 <memchr+0x1c>
    7244:	00008067          	ret
    7248:	00060793          	mv	a5,a2
    724c:	00300713          	li	a4,3
    7250:	02f76663          	bltu	a4,a5,727c <memchr+0x70>
    7254:	00079663          	bnez	a5,7260 <memchr+0x54>
    7258:	00000513          	li	a0,0
    725c:	00008067          	ret
    7260:	00f507b3          	add	a5,a0,a5
    7264:	00c0006f          	j	7270 <memchr+0x64>
    7268:	00150513          	addi	a0,a0,1
    726c:	fea786e3          	beq	a5,a0,7258 <memchr+0x4c>
    7270:	00054703          	lbu	a4,0(a0)
    7274:	fed71ae3          	bne	a4,a3,7268 <memchr+0x5c>
    7278:	00008067          	ret
    727c:	0ff5f593          	andi	a1,a1,255
    7280:	00859893          	slli	a7,a1,0x8
    7284:	00b8e5b3          	or	a1,a7,a1
    7288:	01059893          	slli	a7,a1,0x10
    728c:	00b8e8b3          	or	a7,a7,a1
    7290:	feff0837          	lui	a6,0xfeff0
    7294:	808085b7          	lui	a1,0x80808
    7298:	eff80813          	addi	a6,a6,-257 # fefefeff <__ctr0_io_space_begin+0xfeff00ff>
    729c:	08058593          	addi	a1,a1,128 # 80808080 <__ctr0_io_space_begin+0x80808280>
    72a0:	00300313          	li	t1,3
    72a4:	00052703          	lw	a4,0(a0)
    72a8:	00e8c733          	xor	a4,a7,a4
    72ac:	01070633          	add	a2,a4,a6
    72b0:	fff74713          	not	a4,a4
    72b4:	00e67733          	and	a4,a2,a4
    72b8:	00b77733          	and	a4,a4,a1
    72bc:	fa0712e3          	bnez	a4,7260 <memchr+0x54>
    72c0:	ffc78793          	addi	a5,a5,-4
    72c4:	00450513          	addi	a0,a0,4
    72c8:	fcf36ee3          	bltu	t1,a5,72a4 <memchr+0x98>
    72cc:	f8079ae3          	bnez	a5,7260 <memchr+0x54>
    72d0:	f89ff06f          	j	7258 <memchr+0x4c>

000072d4 <__malloc_lock>:
    72d4:	00008067          	ret

000072d8 <__malloc_unlock>:
    72d8:	00008067          	ret

000072dc <_Balloc>:
    72dc:	04c52783          	lw	a5,76(a0)
    72e0:	ff010113          	addi	sp,sp,-16
    72e4:	00812423          	sw	s0,8(sp)
    72e8:	00912223          	sw	s1,4(sp)
    72ec:	00112623          	sw	ra,12(sp)
    72f0:	01212023          	sw	s2,0(sp)
    72f4:	00050413          	mv	s0,a0
    72f8:	00058493          	mv	s1,a1
    72fc:	02078e63          	beqz	a5,7338 <_Balloc+0x5c>
    7300:	00249513          	slli	a0,s1,0x2
    7304:	00a787b3          	add	a5,a5,a0
    7308:	0007a503          	lw	a0,0(a5)
    730c:	04050663          	beqz	a0,7358 <_Balloc+0x7c>
    7310:	00052703          	lw	a4,0(a0)
    7314:	00e7a023          	sw	a4,0(a5)
    7318:	00052823          	sw	zero,16(a0)
    731c:	00052623          	sw	zero,12(a0)
    7320:	00c12083          	lw	ra,12(sp)
    7324:	00812403          	lw	s0,8(sp)
    7328:	00412483          	lw	s1,4(sp)
    732c:	00012903          	lw	s2,0(sp)
    7330:	01010113          	addi	sp,sp,16
    7334:	00008067          	ret
    7338:	02100613          	li	a2,33
    733c:	00400593          	li	a1,4
    7340:	0f1020ef          	jal	ra,9c30 <_calloc_r>
    7344:	04a42623          	sw	a0,76(s0)
    7348:	00050793          	mv	a5,a0
    734c:	fa051ae3          	bnez	a0,7300 <_Balloc+0x24>
    7350:	00000513          	li	a0,0
    7354:	fcdff06f          	j	7320 <_Balloc+0x44>
    7358:	00100913          	li	s2,1
    735c:	00991933          	sll	s2,s2,s1
    7360:	00590613          	addi	a2,s2,5
    7364:	00261613          	slli	a2,a2,0x2
    7368:	00100593          	li	a1,1
    736c:	00040513          	mv	a0,s0
    7370:	0c1020ef          	jal	ra,9c30 <_calloc_r>
    7374:	fc050ee3          	beqz	a0,7350 <_Balloc+0x74>
    7378:	00952223          	sw	s1,4(a0)
    737c:	01252423          	sw	s2,8(a0)
    7380:	f99ff06f          	j	7318 <_Balloc+0x3c>

00007384 <_Bfree>:
    7384:	02058063          	beqz	a1,73a4 <_Bfree+0x20>
    7388:	0045a703          	lw	a4,4(a1)
    738c:	04c52783          	lw	a5,76(a0)
    7390:	00271713          	slli	a4,a4,0x2
    7394:	00e787b3          	add	a5,a5,a4
    7398:	0007a703          	lw	a4,0(a5)
    739c:	00e5a023          	sw	a4,0(a1)
    73a0:	00b7a023          	sw	a1,0(a5)
    73a4:	00008067          	ret

000073a8 <__multadd>:
    73a8:	fd010113          	addi	sp,sp,-48
    73ac:	03212023          	sw	s2,32(sp)
    73b0:	0105a903          	lw	s2,16(a1)
    73b4:	01812423          	sw	s8,8(sp)
    73b8:	00010c37          	lui	s8,0x10
    73bc:	02812423          	sw	s0,40(sp)
    73c0:	02912223          	sw	s1,36(sp)
    73c4:	01312e23          	sw	s3,28(sp)
    73c8:	01412c23          	sw	s4,24(sp)
    73cc:	01512a23          	sw	s5,20(sp)
    73d0:	01612823          	sw	s6,16(sp)
    73d4:	02112623          	sw	ra,44(sp)
    73d8:	01712623          	sw	s7,12(sp)
    73dc:	00058993          	mv	s3,a1
    73e0:	00050a13          	mv	s4,a0
    73e4:	00060a93          	mv	s5,a2
    73e8:	00068413          	mv	s0,a3
    73ec:	01458493          	addi	s1,a1,20
    73f0:	00000b13          	li	s6,0
    73f4:	fffc0c13          	addi	s8,s8,-1 # ffff <__multf3+0x2cf>
    73f8:	0004ab83          	lw	s7,0(s1)
    73fc:	000a8593          	mv	a1,s5
    7400:	00448493          	addi	s1,s1,4
    7404:	018bf533          	and	a0,s7,s8
    7408:	839f90ef          	jal	ra,c40 <__mulsi3>
    740c:	00850433          	add	s0,a0,s0
    7410:	000a8593          	mv	a1,s5
    7414:	010bd513          	srli	a0,s7,0x10
    7418:	829f90ef          	jal	ra,c40 <__mulsi3>
    741c:	01045693          	srli	a3,s0,0x10
    7420:	00d50533          	add	a0,a0,a3
    7424:	01051793          	slli	a5,a0,0x10
    7428:	01847433          	and	s0,s0,s8
    742c:	00878433          	add	s0,a5,s0
    7430:	fe84ae23          	sw	s0,-4(s1)
    7434:	001b0b13          	addi	s6,s6,1
    7438:	01055413          	srli	s0,a0,0x10
    743c:	fb2b4ee3          	blt	s6,s2,73f8 <__multadd+0x50>
    7440:	02040263          	beqz	s0,7464 <__multadd+0xbc>
    7444:	0089a783          	lw	a5,8(s3)
    7448:	04f95863          	bge	s2,a5,7498 <__multadd+0xf0>
    744c:	00490793          	addi	a5,s2,4
    7450:	00279793          	slli	a5,a5,0x2
    7454:	00f987b3          	add	a5,s3,a5
    7458:	0087a223          	sw	s0,4(a5)
    745c:	00190913          	addi	s2,s2,1
    7460:	0129a823          	sw	s2,16(s3)
    7464:	02c12083          	lw	ra,44(sp)
    7468:	02812403          	lw	s0,40(sp)
    746c:	02412483          	lw	s1,36(sp)
    7470:	02012903          	lw	s2,32(sp)
    7474:	01812a03          	lw	s4,24(sp)
    7478:	01412a83          	lw	s5,20(sp)
    747c:	01012b03          	lw	s6,16(sp)
    7480:	00c12b83          	lw	s7,12(sp)
    7484:	00812c03          	lw	s8,8(sp)
    7488:	00098513          	mv	a0,s3
    748c:	01c12983          	lw	s3,28(sp)
    7490:	03010113          	addi	sp,sp,48
    7494:	00008067          	ret
    7498:	0049a583          	lw	a1,4(s3)
    749c:	000a0513          	mv	a0,s4
    74a0:	00158593          	addi	a1,a1,1
    74a4:	e39ff0ef          	jal	ra,72dc <_Balloc>
    74a8:	00050493          	mv	s1,a0
    74ac:	04050c63          	beqz	a0,7504 <__multadd+0x15c>
    74b0:	0109a603          	lw	a2,16(s3)
    74b4:	00c98593          	addi	a1,s3,12
    74b8:	00c50513          	addi	a0,a0,12
    74bc:	00260613          	addi	a2,a2,2
    74c0:	00261613          	slli	a2,a2,0x2
    74c4:	8e5f90ef          	jal	ra,da8 <memcpy>
    74c8:	0049a703          	lw	a4,4(s3)
    74cc:	04ca2783          	lw	a5,76(s4)
    74d0:	00271713          	slli	a4,a4,0x2
    74d4:	00e787b3          	add	a5,a5,a4
    74d8:	0007a703          	lw	a4,0(a5)
    74dc:	00e9a023          	sw	a4,0(s3)
    74e0:	0137a023          	sw	s3,0(a5)
    74e4:	00490793          	addi	a5,s2,4
    74e8:	00048993          	mv	s3,s1
    74ec:	00279793          	slli	a5,a5,0x2
    74f0:	00f987b3          	add	a5,s3,a5
    74f4:	0087a223          	sw	s0,4(a5)
    74f8:	00190913          	addi	s2,s2,1
    74fc:	0129a823          	sw	s2,16(s3)
    7500:	f65ff06f          	j	7464 <__multadd+0xbc>
    7504:	000136b7          	lui	a3,0x13
    7508:	00013537          	lui	a0,0x13
    750c:	40468693          	addi	a3,a3,1028 # 13404 <zeroes.0+0x30>
    7510:	00000613          	li	a2,0
    7514:	0b500593          	li	a1,181
    7518:	6c450513          	addi	a0,a0,1732 # 136c4 <bmask+0x24>
    751c:	6ac020ef          	jal	ra,9bc8 <__assert_func>

00007520 <__s2b>:
    7520:	fe010113          	addi	sp,sp,-32
    7524:	00812c23          	sw	s0,24(sp)
    7528:	01212823          	sw	s2,16(sp)
    752c:	00058413          	mv	s0,a1
    7530:	00050913          	mv	s2,a0
    7534:	00900593          	li	a1,9
    7538:	00868513          	addi	a0,a3,8
    753c:	00912a23          	sw	s1,20(sp)
    7540:	01312623          	sw	s3,12(sp)
    7544:	01412423          	sw	s4,8(sp)
    7548:	00112e23          	sw	ra,28(sp)
    754c:	01512223          	sw	s5,4(sp)
    7550:	00068493          	mv	s1,a3
    7554:	00060993          	mv	s3,a2
    7558:	00070a13          	mv	s4,a4
    755c:	f98f90ef          	jal	ra,cf4 <__divsi3>
    7560:	00900793          	li	a5,9
    7564:	0c97d863          	bge	a5,s1,7634 <__s2b+0x114>
    7568:	00100793          	li	a5,1
    756c:	00000593          	li	a1,0
    7570:	00179793          	slli	a5,a5,0x1
    7574:	00158593          	addi	a1,a1,1
    7578:	fea7cce3          	blt	a5,a0,7570 <__s2b+0x50>
    757c:	00090513          	mv	a0,s2
    7580:	d5dff0ef          	jal	ra,72dc <_Balloc>
    7584:	00050593          	mv	a1,a0
    7588:	0a050a63          	beqz	a0,763c <__s2b+0x11c>
    758c:	00100793          	li	a5,1
    7590:	00f52823          	sw	a5,16(a0)
    7594:	01452a23          	sw	s4,20(a0)
    7598:	00900793          	li	a5,9
    759c:	0937d663          	bge	a5,s3,7628 <__s2b+0x108>
    75a0:	00940a93          	addi	s5,s0,9
    75a4:	01340a33          	add	s4,s0,s3
    75a8:	000a8413          	mv	s0,s5
    75ac:	00044683          	lbu	a3,0(s0)
    75b0:	00a00613          	li	a2,10
    75b4:	00090513          	mv	a0,s2
    75b8:	fd068693          	addi	a3,a3,-48
    75bc:	dedff0ef          	jal	ra,73a8 <__multadd>
    75c0:	00140413          	addi	s0,s0,1
    75c4:	00050593          	mv	a1,a0
    75c8:	ff4412e3          	bne	s0,s4,75ac <__s2b+0x8c>
    75cc:	ff898413          	addi	s0,s3,-8
    75d0:	008a8433          	add	s0,s5,s0
    75d4:	0299d663          	bge	s3,s1,7600 <__s2b+0xe0>
    75d8:	413484b3          	sub	s1,s1,s3
    75dc:	009404b3          	add	s1,s0,s1
    75e0:	00044683          	lbu	a3,0(s0)
    75e4:	00a00613          	li	a2,10
    75e8:	00090513          	mv	a0,s2
    75ec:	fd068693          	addi	a3,a3,-48
    75f0:	db9ff0ef          	jal	ra,73a8 <__multadd>
    75f4:	00140413          	addi	s0,s0,1
    75f8:	00050593          	mv	a1,a0
    75fc:	fe8492e3          	bne	s1,s0,75e0 <__s2b+0xc0>
    7600:	01c12083          	lw	ra,28(sp)
    7604:	01812403          	lw	s0,24(sp)
    7608:	01412483          	lw	s1,20(sp)
    760c:	01012903          	lw	s2,16(sp)
    7610:	00c12983          	lw	s3,12(sp)
    7614:	00812a03          	lw	s4,8(sp)
    7618:	00412a83          	lw	s5,4(sp)
    761c:	00058513          	mv	a0,a1
    7620:	02010113          	addi	sp,sp,32
    7624:	00008067          	ret
    7628:	00a40413          	addi	s0,s0,10
    762c:	00900993          	li	s3,9
    7630:	fa5ff06f          	j	75d4 <__s2b+0xb4>
    7634:	00000593          	li	a1,0
    7638:	f45ff06f          	j	757c <__s2b+0x5c>
    763c:	000136b7          	lui	a3,0x13
    7640:	00013537          	lui	a0,0x13
    7644:	40468693          	addi	a3,a3,1028 # 13404 <zeroes.0+0x30>
    7648:	00000613          	li	a2,0
    764c:	0ce00593          	li	a1,206
    7650:	6c450513          	addi	a0,a0,1732 # 136c4 <bmask+0x24>
    7654:	574020ef          	jal	ra,9bc8 <__assert_func>

00007658 <__hi0bits>:
    7658:	ffff0737          	lui	a4,0xffff0
    765c:	00e57733          	and	a4,a0,a4
    7660:	00050793          	mv	a5,a0
    7664:	00000513          	li	a0,0
    7668:	00071663          	bnez	a4,7674 <__hi0bits+0x1c>
    766c:	01079793          	slli	a5,a5,0x10
    7670:	01000513          	li	a0,16
    7674:	ff000737          	lui	a4,0xff000
    7678:	00e7f733          	and	a4,a5,a4
    767c:	00071663          	bnez	a4,7688 <__hi0bits+0x30>
    7680:	00850513          	addi	a0,a0,8
    7684:	00879793          	slli	a5,a5,0x8
    7688:	f0000737          	lui	a4,0xf0000
    768c:	00e7f733          	and	a4,a5,a4
    7690:	00071663          	bnez	a4,769c <__hi0bits+0x44>
    7694:	00450513          	addi	a0,a0,4
    7698:	00479793          	slli	a5,a5,0x4
    769c:	c0000737          	lui	a4,0xc0000
    76a0:	00e7f733          	and	a4,a5,a4
    76a4:	00071663          	bnez	a4,76b0 <__hi0bits+0x58>
    76a8:	00250513          	addi	a0,a0,2
    76ac:	00279793          	slli	a5,a5,0x2
    76b0:	0007ca63          	bltz	a5,76c4 <__hi0bits+0x6c>
    76b4:	40000737          	lui	a4,0x40000
    76b8:	00e7f7b3          	and	a5,a5,a4
    76bc:	00150513          	addi	a0,a0,1
    76c0:	00078463          	beqz	a5,76c8 <__hi0bits+0x70>
    76c4:	00008067          	ret
    76c8:	02000513          	li	a0,32
    76cc:	00008067          	ret

000076d0 <__lo0bits>:
    76d0:	00052783          	lw	a5,0(a0)
    76d4:	00050713          	mv	a4,a0
    76d8:	0077f693          	andi	a3,a5,7
    76dc:	02068463          	beqz	a3,7704 <__lo0bits+0x34>
    76e0:	0017f693          	andi	a3,a5,1
    76e4:	00000513          	li	a0,0
    76e8:	04069e63          	bnez	a3,7744 <__lo0bits+0x74>
    76ec:	0027f693          	andi	a3,a5,2
    76f0:	0a068863          	beqz	a3,77a0 <__lo0bits+0xd0>
    76f4:	0017d793          	srli	a5,a5,0x1
    76f8:	00f72023          	sw	a5,0(a4) # 40000000 <__crt0_copy_data_src_begin+0x3ffec1a4>
    76fc:	00100513          	li	a0,1
    7700:	00008067          	ret
    7704:	01079693          	slli	a3,a5,0x10
    7708:	0106d693          	srli	a3,a3,0x10
    770c:	00000513          	li	a0,0
    7710:	06068e63          	beqz	a3,778c <__lo0bits+0xbc>
    7714:	0ff7f693          	andi	a3,a5,255
    7718:	06068063          	beqz	a3,7778 <__lo0bits+0xa8>
    771c:	00f7f693          	andi	a3,a5,15
    7720:	04068263          	beqz	a3,7764 <__lo0bits+0x94>
    7724:	0037f693          	andi	a3,a5,3
    7728:	02068463          	beqz	a3,7750 <__lo0bits+0x80>
    772c:	0017f693          	andi	a3,a5,1
    7730:	00069c63          	bnez	a3,7748 <__lo0bits+0x78>
    7734:	0017d793          	srli	a5,a5,0x1
    7738:	00150513          	addi	a0,a0,1
    773c:	00079663          	bnez	a5,7748 <__lo0bits+0x78>
    7740:	02000513          	li	a0,32
    7744:	00008067          	ret
    7748:	00f72023          	sw	a5,0(a4)
    774c:	00008067          	ret
    7750:	0027d793          	srli	a5,a5,0x2
    7754:	0017f693          	andi	a3,a5,1
    7758:	00250513          	addi	a0,a0,2
    775c:	fe0696e3          	bnez	a3,7748 <__lo0bits+0x78>
    7760:	fd5ff06f          	j	7734 <__lo0bits+0x64>
    7764:	0047d793          	srli	a5,a5,0x4
    7768:	0037f693          	andi	a3,a5,3
    776c:	00450513          	addi	a0,a0,4
    7770:	fa069ee3          	bnez	a3,772c <__lo0bits+0x5c>
    7774:	fddff06f          	j	7750 <__lo0bits+0x80>
    7778:	0087d793          	srli	a5,a5,0x8
    777c:	00f7f693          	andi	a3,a5,15
    7780:	00850513          	addi	a0,a0,8
    7784:	fa0690e3          	bnez	a3,7724 <__lo0bits+0x54>
    7788:	fddff06f          	j	7764 <__lo0bits+0x94>
    778c:	0107d793          	srli	a5,a5,0x10
    7790:	0ff7f693          	andi	a3,a5,255
    7794:	01000513          	li	a0,16
    7798:	f80692e3          	bnez	a3,771c <__lo0bits+0x4c>
    779c:	fddff06f          	j	7778 <__lo0bits+0xa8>
    77a0:	0027d793          	srli	a5,a5,0x2
    77a4:	00f72023          	sw	a5,0(a4)
    77a8:	00200513          	li	a0,2
    77ac:	00008067          	ret

000077b0 <__i2b>:
    77b0:	04c52783          	lw	a5,76(a0)
    77b4:	ff010113          	addi	sp,sp,-16
    77b8:	00812423          	sw	s0,8(sp)
    77bc:	00912223          	sw	s1,4(sp)
    77c0:	00112623          	sw	ra,12(sp)
    77c4:	00050413          	mv	s0,a0
    77c8:	00058493          	mv	s1,a1
    77cc:	02078c63          	beqz	a5,7804 <__i2b+0x54>
    77d0:	0047a503          	lw	a0,4(a5)
    77d4:	06050263          	beqz	a0,7838 <__i2b+0x88>
    77d8:	00052703          	lw	a4,0(a0)
    77dc:	00e7a223          	sw	a4,4(a5)
    77e0:	00c12083          	lw	ra,12(sp)
    77e4:	00812403          	lw	s0,8(sp)
    77e8:	00100793          	li	a5,1
    77ec:	00952a23          	sw	s1,20(a0)
    77f0:	00052623          	sw	zero,12(a0)
    77f4:	00f52823          	sw	a5,16(a0)
    77f8:	00412483          	lw	s1,4(sp)
    77fc:	01010113          	addi	sp,sp,16
    7800:	00008067          	ret
    7804:	02100613          	li	a2,33
    7808:	00400593          	li	a1,4
    780c:	424020ef          	jal	ra,9c30 <_calloc_r>
    7810:	04a42623          	sw	a0,76(s0)
    7814:	00050793          	mv	a5,a0
    7818:	fa051ce3          	bnez	a0,77d0 <__i2b+0x20>
    781c:	000136b7          	lui	a3,0x13
    7820:	00013537          	lui	a0,0x13
    7824:	40468693          	addi	a3,a3,1028 # 13404 <zeroes.0+0x30>
    7828:	00000613          	li	a2,0
    782c:	14000593          	li	a1,320
    7830:	6c450513          	addi	a0,a0,1732 # 136c4 <bmask+0x24>
    7834:	394020ef          	jal	ra,9bc8 <__assert_func>
    7838:	01c00613          	li	a2,28
    783c:	00100593          	li	a1,1
    7840:	00040513          	mv	a0,s0
    7844:	3ec020ef          	jal	ra,9c30 <_calloc_r>
    7848:	fc050ae3          	beqz	a0,781c <__i2b+0x6c>
    784c:	00100793          	li	a5,1
    7850:	00f52223          	sw	a5,4(a0)
    7854:	00200793          	li	a5,2
    7858:	00f52423          	sw	a5,8(a0)
    785c:	f85ff06f          	j	77e0 <__i2b+0x30>

00007860 <__multiply>:
    7860:	fb010113          	addi	sp,sp,-80
    7864:	03312e23          	sw	s3,60(sp)
    7868:	03812423          	sw	s8,40(sp)
    786c:	01062983          	lw	s3,16(a2)
    7870:	0105ac03          	lw	s8,16(a1)
    7874:	04812423          	sw	s0,72(sp)
    7878:	03412c23          	sw	s4,56(sp)
    787c:	04112623          	sw	ra,76(sp)
    7880:	04912223          	sw	s1,68(sp)
    7884:	05212023          	sw	s2,64(sp)
    7888:	03512a23          	sw	s5,52(sp)
    788c:	03612823          	sw	s6,48(sp)
    7890:	03712623          	sw	s7,44(sp)
    7894:	03912223          	sw	s9,36(sp)
    7898:	03a12023          	sw	s10,32(sp)
    789c:	01b12e23          	sw	s11,28(sp)
    78a0:	00058a13          	mv	s4,a1
    78a4:	00060413          	mv	s0,a2
    78a8:	013c4c63          	blt	s8,s3,78c0 <__multiply+0x60>
    78ac:	00098713          	mv	a4,s3
    78b0:	00058413          	mv	s0,a1
    78b4:	000c0993          	mv	s3,s8
    78b8:	00060a13          	mv	s4,a2
    78bc:	00070c13          	mv	s8,a4
    78c0:	00842783          	lw	a5,8(s0)
    78c4:	00442583          	lw	a1,4(s0)
    78c8:	01898bb3          	add	s7,s3,s8
    78cc:	0177a7b3          	slt	a5,a5,s7
    78d0:	00f585b3          	add	a1,a1,a5
    78d4:	a09ff0ef          	jal	ra,72dc <_Balloc>
    78d8:	00a12623          	sw	a0,12(sp)
    78dc:	20050a63          	beqz	a0,7af0 <__multiply+0x290>
    78e0:	00c12783          	lw	a5,12(sp)
    78e4:	002b9a93          	slli	s5,s7,0x2
    78e8:	01478b13          	addi	s6,a5,20
    78ec:	015b0ab3          	add	s5,s6,s5
    78f0:	000b0793          	mv	a5,s6
    78f4:	015b7863          	bgeu	s6,s5,7904 <__multiply+0xa4>
    78f8:	0007a023          	sw	zero,0(a5)
    78fc:	00478793          	addi	a5,a5,4
    7900:	ff57ece3          	bltu	a5,s5,78f8 <__multiply+0x98>
    7904:	014a0a13          	addi	s4,s4,20
    7908:	002c1c13          	slli	s8,s8,0x2
    790c:	01440793          	addi	a5,s0,20
    7910:	018a0733          	add	a4,s4,s8
    7914:	00299993          	slli	s3,s3,0x2
    7918:	00f12423          	sw	a5,8(sp)
    791c:	00e12023          	sw	a4,0(sp)
    7920:	013789b3          	add	s3,a5,s3
    7924:	14ea7863          	bgeu	s4,a4,7a74 <__multiply+0x214>
    7928:	00400713          	li	a4,4
    792c:	01540793          	addi	a5,s0,21
    7930:	00e12223          	sw	a4,4(sp)
    7934:	1af9f263          	bgeu	s3,a5,7ad8 <__multiply+0x278>
    7938:	000104b7          	lui	s1,0x10
    793c:	fff48493          	addi	s1,s1,-1 # ffff <__multf3+0x2cf>
    7940:	01c0006f          	j	795c <__multiply+0xfc>
    7944:	0107dc13          	srli	s8,a5,0x10
    7948:	0a0c1063          	bnez	s8,79e8 <__multiply+0x188>
    794c:	00012783          	lw	a5,0(sp)
    7950:	004a0a13          	addi	s4,s4,4
    7954:	004b0b13          	addi	s6,s6,4
    7958:	10fa7e63          	bgeu	s4,a5,7a74 <__multiply+0x214>
    795c:	000a2783          	lw	a5,0(s4)
    7960:	0097fd33          	and	s10,a5,s1
    7964:	fe0d00e3          	beqz	s10,7944 <__multiply+0xe4>
    7968:	00812c03          	lw	s8,8(sp)
    796c:	000b0c93          	mv	s9,s6
    7970:	00000413          	li	s0,0
    7974:	000c2d83          	lw	s11,0(s8)
    7978:	000ca903          	lw	s2,0(s9)
    797c:	000d0593          	mv	a1,s10
    7980:	009df533          	and	a0,s11,s1
    7984:	abcf90ef          	jal	ra,c40 <__mulsi3>
    7988:	009977b3          	and	a5,s2,s1
    798c:	00f507b3          	add	a5,a0,a5
    7990:	000d0593          	mv	a1,s10
    7994:	010dd513          	srli	a0,s11,0x10
    7998:	00878433          	add	s0,a5,s0
    799c:	01095913          	srli	s2,s2,0x10
    79a0:	aa0f90ef          	jal	ra,c40 <__mulsi3>
    79a4:	01045793          	srli	a5,s0,0x10
    79a8:	01250533          	add	a0,a0,s2
    79ac:	00f50533          	add	a0,a0,a5
    79b0:	01051793          	slli	a5,a0,0x10
    79b4:	00947433          	and	s0,s0,s1
    79b8:	0087e433          	or	s0,a5,s0
    79bc:	008ca023          	sw	s0,0(s9)
    79c0:	004c0c13          	addi	s8,s8,4
    79c4:	004c8c93          	addi	s9,s9,4
    79c8:	01055413          	srli	s0,a0,0x10
    79cc:	fb3c64e3          	bltu	s8,s3,7974 <__multiply+0x114>
    79d0:	00412783          	lw	a5,4(sp)
    79d4:	00fb07b3          	add	a5,s6,a5
    79d8:	0087a023          	sw	s0,0(a5)
    79dc:	000a2783          	lw	a5,0(s4)
    79e0:	0107dc13          	srli	s8,a5,0x10
    79e4:	f60c04e3          	beqz	s8,794c <__multiply+0xec>
    79e8:	000b2403          	lw	s0,0(s6)
    79ec:	00812d83          	lw	s11,8(sp)
    79f0:	000b0d13          	mv	s10,s6
    79f4:	00040913          	mv	s2,s0
    79f8:	00000c93          	li	s9,0
    79fc:	000da503          	lw	a0,0(s11)
    7a00:	000c0593          	mv	a1,s8
    7a04:	00947433          	and	s0,s0,s1
    7a08:	00957533          	and	a0,a0,s1
    7a0c:	a34f90ef          	jal	ra,c40 <__mulsi3>
    7a10:	01095793          	srli	a5,s2,0x10
    7a14:	00f507b3          	add	a5,a0,a5
    7a18:	01978cb3          	add	s9,a5,s9
    7a1c:	010c9613          	slli	a2,s9,0x10
    7a20:	00866433          	or	s0,a2,s0
    7a24:	008d2023          	sw	s0,0(s10)
    7a28:	002dd503          	lhu	a0,2(s11)
    7a2c:	004d2903          	lw	s2,4(s10)
    7a30:	000c0593          	mv	a1,s8
    7a34:	a0cf90ef          	jal	ra,c40 <__mulsi3>
    7a38:	00997433          	and	s0,s2,s1
    7a3c:	010cd793          	srli	a5,s9,0x10
    7a40:	00850433          	add	s0,a0,s0
    7a44:	00f40433          	add	s0,s0,a5
    7a48:	004d8d93          	addi	s11,s11,4
    7a4c:	004d0d13          	addi	s10,s10,4
    7a50:	01045c93          	srli	s9,s0,0x10
    7a54:	fb3de4e3          	bltu	s11,s3,79fc <__multiply+0x19c>
    7a58:	00412783          	lw	a5,4(sp)
    7a5c:	004a0a13          	addi	s4,s4,4
    7a60:	00fb07b3          	add	a5,s6,a5
    7a64:	0087a023          	sw	s0,0(a5)
    7a68:	00012783          	lw	a5,0(sp)
    7a6c:	004b0b13          	addi	s6,s6,4
    7a70:	eefa66e3          	bltu	s4,a5,795c <__multiply+0xfc>
    7a74:	01704863          	bgtz	s7,7a84 <__multiply+0x224>
    7a78:	0180006f          	j	7a90 <__multiply+0x230>
    7a7c:	fffb8b93          	addi	s7,s7,-1
    7a80:	000b8863          	beqz	s7,7a90 <__multiply+0x230>
    7a84:	ffcaa783          	lw	a5,-4(s5)
    7a88:	ffca8a93          	addi	s5,s5,-4
    7a8c:	fe0788e3          	beqz	a5,7a7c <__multiply+0x21c>
    7a90:	00c12783          	lw	a5,12(sp)
    7a94:	04c12083          	lw	ra,76(sp)
    7a98:	04812403          	lw	s0,72(sp)
    7a9c:	0177a823          	sw	s7,16(a5)
    7aa0:	04412483          	lw	s1,68(sp)
    7aa4:	04012903          	lw	s2,64(sp)
    7aa8:	03c12983          	lw	s3,60(sp)
    7aac:	03812a03          	lw	s4,56(sp)
    7ab0:	03412a83          	lw	s5,52(sp)
    7ab4:	03012b03          	lw	s6,48(sp)
    7ab8:	02c12b83          	lw	s7,44(sp)
    7abc:	02812c03          	lw	s8,40(sp)
    7ac0:	02412c83          	lw	s9,36(sp)
    7ac4:	02012d03          	lw	s10,32(sp)
    7ac8:	01c12d83          	lw	s11,28(sp)
    7acc:	00078513          	mv	a0,a5
    7ad0:	05010113          	addi	sp,sp,80
    7ad4:	00008067          	ret
    7ad8:	40898db3          	sub	s11,s3,s0
    7adc:	febd8d93          	addi	s11,s11,-21
    7ae0:	ffcdfd93          	andi	s11,s11,-4
    7ae4:	004d8793          	addi	a5,s11,4
    7ae8:	00f12223          	sw	a5,4(sp)
    7aec:	e4dff06f          	j	7938 <__multiply+0xd8>
    7af0:	000136b7          	lui	a3,0x13
    7af4:	00013537          	lui	a0,0x13
    7af8:	40468693          	addi	a3,a3,1028 # 13404 <zeroes.0+0x30>
    7afc:	00000613          	li	a2,0
    7b00:	15d00593          	li	a1,349
    7b04:	6c450513          	addi	a0,a0,1732 # 136c4 <bmask+0x24>
    7b08:	0c0020ef          	jal	ra,9bc8 <__assert_func>

00007b0c <__pow5mult>:
    7b0c:	fe010113          	addi	sp,sp,-32
    7b10:	00812c23          	sw	s0,24(sp)
    7b14:	01212823          	sw	s2,16(sp)
    7b18:	01312623          	sw	s3,12(sp)
    7b1c:	00112e23          	sw	ra,28(sp)
    7b20:	00912a23          	sw	s1,20(sp)
    7b24:	00367793          	andi	a5,a2,3
    7b28:	00060413          	mv	s0,a2
    7b2c:	00050993          	mv	s3,a0
    7b30:	00058913          	mv	s2,a1
    7b34:	0a079e63          	bnez	a5,7bf0 <__pow5mult+0xe4>
    7b38:	40245413          	srai	s0,s0,0x2
    7b3c:	06040663          	beqz	s0,7ba8 <__pow5mult+0x9c>
    7b40:	0489a483          	lw	s1,72(s3)
    7b44:	0c048a63          	beqz	s1,7c18 <__pow5mult+0x10c>
    7b48:	00147793          	andi	a5,s0,1
    7b4c:	02079063          	bnez	a5,7b6c <__pow5mult+0x60>
    7b50:	40145413          	srai	s0,s0,0x1
    7b54:	04040a63          	beqz	s0,7ba8 <__pow5mult+0x9c>
    7b58:	0004a503          	lw	a0,0(s1)
    7b5c:	06050663          	beqz	a0,7bc8 <__pow5mult+0xbc>
    7b60:	00050493          	mv	s1,a0
    7b64:	00147793          	andi	a5,s0,1
    7b68:	fe0784e3          	beqz	a5,7b50 <__pow5mult+0x44>
    7b6c:	00048613          	mv	a2,s1
    7b70:	00090593          	mv	a1,s2
    7b74:	00098513          	mv	a0,s3
    7b78:	ce9ff0ef          	jal	ra,7860 <__multiply>
    7b7c:	06090663          	beqz	s2,7be8 <__pow5mult+0xdc>
    7b80:	00492703          	lw	a4,4(s2)
    7b84:	04c9a783          	lw	a5,76(s3)
    7b88:	40145413          	srai	s0,s0,0x1
    7b8c:	00271713          	slli	a4,a4,0x2
    7b90:	00e787b3          	add	a5,a5,a4
    7b94:	0007a703          	lw	a4,0(a5)
    7b98:	00e92023          	sw	a4,0(s2)
    7b9c:	0127a023          	sw	s2,0(a5)
    7ba0:	00050913          	mv	s2,a0
    7ba4:	fa041ae3          	bnez	s0,7b58 <__pow5mult+0x4c>
    7ba8:	01c12083          	lw	ra,28(sp)
    7bac:	01812403          	lw	s0,24(sp)
    7bb0:	01412483          	lw	s1,20(sp)
    7bb4:	00c12983          	lw	s3,12(sp)
    7bb8:	00090513          	mv	a0,s2
    7bbc:	01012903          	lw	s2,16(sp)
    7bc0:	02010113          	addi	sp,sp,32
    7bc4:	00008067          	ret
    7bc8:	00048613          	mv	a2,s1
    7bcc:	00048593          	mv	a1,s1
    7bd0:	00098513          	mv	a0,s3
    7bd4:	c8dff0ef          	jal	ra,7860 <__multiply>
    7bd8:	00a4a023          	sw	a0,0(s1)
    7bdc:	00052023          	sw	zero,0(a0)
    7be0:	00050493          	mv	s1,a0
    7be4:	f81ff06f          	j	7b64 <__pow5mult+0x58>
    7be8:	00050913          	mv	s2,a0
    7bec:	f65ff06f          	j	7b50 <__pow5mult+0x44>
    7bf0:	fff78793          	addi	a5,a5,-1
    7bf4:	00013737          	lui	a4,0x13
    7bf8:	71870713          	addi	a4,a4,1816 # 13718 <p05.0>
    7bfc:	00279793          	slli	a5,a5,0x2
    7c00:	00f707b3          	add	a5,a4,a5
    7c04:	0007a603          	lw	a2,0(a5)
    7c08:	00000693          	li	a3,0
    7c0c:	f9cff0ef          	jal	ra,73a8 <__multadd>
    7c10:	00050913          	mv	s2,a0
    7c14:	f25ff06f          	j	7b38 <__pow5mult+0x2c>
    7c18:	00100593          	li	a1,1
    7c1c:	00098513          	mv	a0,s3
    7c20:	ebcff0ef          	jal	ra,72dc <_Balloc>
    7c24:	00050493          	mv	s1,a0
    7c28:	02050063          	beqz	a0,7c48 <__pow5mult+0x13c>
    7c2c:	27100793          	li	a5,625
    7c30:	00f52a23          	sw	a5,20(a0)
    7c34:	00100793          	li	a5,1
    7c38:	00f52823          	sw	a5,16(a0)
    7c3c:	04a9a423          	sw	a0,72(s3)
    7c40:	00052023          	sw	zero,0(a0)
    7c44:	f05ff06f          	j	7b48 <__pow5mult+0x3c>
    7c48:	000136b7          	lui	a3,0x13
    7c4c:	00013537          	lui	a0,0x13
    7c50:	40468693          	addi	a3,a3,1028 # 13404 <zeroes.0+0x30>
    7c54:	00000613          	li	a2,0
    7c58:	14000593          	li	a1,320
    7c5c:	6c450513          	addi	a0,a0,1732 # 136c4 <bmask+0x24>
    7c60:	769010ef          	jal	ra,9bc8 <__assert_func>

00007c64 <__lshift>:
    7c64:	fe010113          	addi	sp,sp,-32
    7c68:	01412423          	sw	s4,8(sp)
    7c6c:	0105aa03          	lw	s4,16(a1)
    7c70:	0085a783          	lw	a5,8(a1)
    7c74:	01312623          	sw	s3,12(sp)
    7c78:	40565993          	srai	s3,a2,0x5
    7c7c:	01498a33          	add	s4,s3,s4
    7c80:	00812c23          	sw	s0,24(sp)
    7c84:	00912a23          	sw	s1,20(sp)
    7c88:	01212823          	sw	s2,16(sp)
    7c8c:	01512223          	sw	s5,4(sp)
    7c90:	00112e23          	sw	ra,28(sp)
    7c94:	001a0913          	addi	s2,s4,1
    7c98:	00058493          	mv	s1,a1
    7c9c:	00060413          	mv	s0,a2
    7ca0:	0045a583          	lw	a1,4(a1)
    7ca4:	00050a93          	mv	s5,a0
    7ca8:	0127d863          	bge	a5,s2,7cb8 <__lshift+0x54>
    7cac:	00179793          	slli	a5,a5,0x1
    7cb0:	00158593          	addi	a1,a1,1
    7cb4:	ff27cce3          	blt	a5,s2,7cac <__lshift+0x48>
    7cb8:	000a8513          	mv	a0,s5
    7cbc:	e20ff0ef          	jal	ra,72dc <_Balloc>
    7cc0:	10050c63          	beqz	a0,7dd8 <__lshift+0x174>
    7cc4:	01450813          	addi	a6,a0,20
    7cc8:	03305463          	blez	s3,7cf0 <__lshift+0x8c>
    7ccc:	00598993          	addi	s3,s3,5
    7cd0:	00299993          	slli	s3,s3,0x2
    7cd4:	01350733          	add	a4,a0,s3
    7cd8:	00080793          	mv	a5,a6
    7cdc:	00478793          	addi	a5,a5,4
    7ce0:	fe07ae23          	sw	zero,-4(a5)
    7ce4:	fee79ce3          	bne	a5,a4,7cdc <__lshift+0x78>
    7ce8:	fec98993          	addi	s3,s3,-20
    7cec:	01380833          	add	a6,a6,s3
    7cf0:	0104a603          	lw	a2,16(s1)
    7cf4:	01448793          	addi	a5,s1,20
    7cf8:	01f47313          	andi	t1,s0,31
    7cfc:	00261613          	slli	a2,a2,0x2
    7d00:	00c78633          	add	a2,a5,a2
    7d04:	0a030463          	beqz	t1,7dac <__lshift+0x148>
    7d08:	02000593          	li	a1,32
    7d0c:	406585b3          	sub	a1,a1,t1
    7d10:	00080893          	mv	a7,a6
    7d14:	00000693          	li	a3,0
    7d18:	0007a703          	lw	a4,0(a5)
    7d1c:	00488893          	addi	a7,a7,4
    7d20:	00478793          	addi	a5,a5,4
    7d24:	00671733          	sll	a4,a4,t1
    7d28:	00d76733          	or	a4,a4,a3
    7d2c:	fee8ae23          	sw	a4,-4(a7)
    7d30:	ffc7a703          	lw	a4,-4(a5)
    7d34:	00b756b3          	srl	a3,a4,a1
    7d38:	fec7e0e3          	bltu	a5,a2,7d18 <__lshift+0xb4>
    7d3c:	01548713          	addi	a4,s1,21
    7d40:	00400793          	li	a5,4
    7d44:	00e66a63          	bltu	a2,a4,7d58 <__lshift+0xf4>
    7d48:	409607b3          	sub	a5,a2,s1
    7d4c:	feb78793          	addi	a5,a5,-21
    7d50:	ffc7f793          	andi	a5,a5,-4
    7d54:	00478793          	addi	a5,a5,4
    7d58:	00f80833          	add	a6,a6,a5
    7d5c:	00d82023          	sw	a3,0(a6)
    7d60:	00068463          	beqz	a3,7d68 <__lshift+0x104>
    7d64:	00090a13          	mv	s4,s2
    7d68:	0044a703          	lw	a4,4(s1)
    7d6c:	04caa783          	lw	a5,76(s5)
    7d70:	01c12083          	lw	ra,28(sp)
    7d74:	00271713          	slli	a4,a4,0x2
    7d78:	00e787b3          	add	a5,a5,a4
    7d7c:	0007a703          	lw	a4,0(a5)
    7d80:	01452823          	sw	s4,16(a0)
    7d84:	01812403          	lw	s0,24(sp)
    7d88:	00e4a023          	sw	a4,0(s1)
    7d8c:	0097a023          	sw	s1,0(a5)
    7d90:	01012903          	lw	s2,16(sp)
    7d94:	01412483          	lw	s1,20(sp)
    7d98:	00c12983          	lw	s3,12(sp)
    7d9c:	00812a03          	lw	s4,8(sp)
    7da0:	00412a83          	lw	s5,4(sp)
    7da4:	02010113          	addi	sp,sp,32
    7da8:	00008067          	ret
    7dac:	0007a703          	lw	a4,0(a5)
    7db0:	00478793          	addi	a5,a5,4
    7db4:	00480813          	addi	a6,a6,4
    7db8:	fee82e23          	sw	a4,-4(a6)
    7dbc:	fac7f6e3          	bgeu	a5,a2,7d68 <__lshift+0x104>
    7dc0:	0007a703          	lw	a4,0(a5)
    7dc4:	00478793          	addi	a5,a5,4
    7dc8:	00480813          	addi	a6,a6,4
    7dcc:	fee82e23          	sw	a4,-4(a6)
    7dd0:	fcc7eee3          	bltu	a5,a2,7dac <__lshift+0x148>
    7dd4:	f95ff06f          	j	7d68 <__lshift+0x104>
    7dd8:	000136b7          	lui	a3,0x13
    7ddc:	00013537          	lui	a0,0x13
    7de0:	40468693          	addi	a3,a3,1028 # 13404 <zeroes.0+0x30>
    7de4:	00000613          	li	a2,0
    7de8:	1d900593          	li	a1,473
    7dec:	6c450513          	addi	a0,a0,1732 # 136c4 <bmask+0x24>
    7df0:	5d9010ef          	jal	ra,9bc8 <__assert_func>

00007df4 <__mcmp>:
    7df4:	01052703          	lw	a4,16(a0)
    7df8:	0105a783          	lw	a5,16(a1)
    7dfc:	00050813          	mv	a6,a0
    7e00:	40f70533          	sub	a0,a4,a5
    7e04:	04f71263          	bne	a4,a5,7e48 <__mcmp+0x54>
    7e08:	00279793          	slli	a5,a5,0x2
    7e0c:	01480813          	addi	a6,a6,20
    7e10:	01458593          	addi	a1,a1,20
    7e14:	00f80733          	add	a4,a6,a5
    7e18:	00f587b3          	add	a5,a1,a5
    7e1c:	0080006f          	j	7e24 <__mcmp+0x30>
    7e20:	02e87463          	bgeu	a6,a4,7e48 <__mcmp+0x54>
    7e24:	ffc72683          	lw	a3,-4(a4)
    7e28:	ffc7a603          	lw	a2,-4(a5)
    7e2c:	ffc70713          	addi	a4,a4,-4
    7e30:	ffc78793          	addi	a5,a5,-4
    7e34:	fec686e3          	beq	a3,a2,7e20 <__mcmp+0x2c>
    7e38:	00c6b6b3          	sltu	a3,a3,a2
    7e3c:	40d00533          	neg	a0,a3
    7e40:	00156513          	ori	a0,a0,1
    7e44:	00008067          	ret
    7e48:	00008067          	ret

00007e4c <__mdiff>:
    7e4c:	0105a783          	lw	a5,16(a1)
    7e50:	01062703          	lw	a4,16(a2)
    7e54:	ff010113          	addi	sp,sp,-16
    7e58:	00812423          	sw	s0,8(sp)
    7e5c:	00912223          	sw	s1,4(sp)
    7e60:	01212023          	sw	s2,0(sp)
    7e64:	00112623          	sw	ra,12(sp)
    7e68:	00058493          	mv	s1,a1
    7e6c:	00060413          	mv	s0,a2
    7e70:	40e78933          	sub	s2,a5,a4
    7e74:	1ae79463          	bne	a5,a4,801c <__mdiff+0x1d0>
    7e78:	00271693          	slli	a3,a4,0x2
    7e7c:	01458593          	addi	a1,a1,20
    7e80:	01460713          	addi	a4,a2,20
    7e84:	00d587b3          	add	a5,a1,a3
    7e88:	00d70733          	add	a4,a4,a3
    7e8c:	0080006f          	j	7e94 <__mdiff+0x48>
    7e90:	18f5fc63          	bgeu	a1,a5,8028 <__mdiff+0x1dc>
    7e94:	ffc7a603          	lw	a2,-4(a5)
    7e98:	ffc72683          	lw	a3,-4(a4)
    7e9c:	ffc78793          	addi	a5,a5,-4
    7ea0:	ffc70713          	addi	a4,a4,-4
    7ea4:	fed606e3          	beq	a2,a3,7e90 <__mdiff+0x44>
    7ea8:	16d66063          	bltu	a2,a3,8008 <__mdiff+0x1bc>
    7eac:	0044a583          	lw	a1,4(s1)
    7eb0:	c2cff0ef          	jal	ra,72dc <_Balloc>
    7eb4:	1a050263          	beqz	a0,8058 <__mdiff+0x20c>
    7eb8:	0104ae03          	lw	t3,16(s1)
    7ebc:	01042283          	lw	t0,16(s0)
    7ec0:	01448493          	addi	s1,s1,20
    7ec4:	002e1e93          	slli	t4,t3,0x2
    7ec8:	01440813          	addi	a6,s0,20
    7ecc:	00229293          	slli	t0,t0,0x2
    7ed0:	01450f93          	addi	t6,a0,20
    7ed4:	000108b7          	lui	a7,0x10
    7ed8:	01252623          	sw	s2,12(a0)
    7edc:	01d48eb3          	add	t4,s1,t4
    7ee0:	005802b3          	add	t0,a6,t0
    7ee4:	000f8f13          	mv	t5,t6
    7ee8:	00048313          	mv	t1,s1
    7eec:	00000793          	li	a5,0
    7ef0:	fff88893          	addi	a7,a7,-1 # ffff <__multf3+0x2cf>
    7ef4:	00032703          	lw	a4,0(t1)
    7ef8:	00082583          	lw	a1,0(a6)
    7efc:	004f0f13          	addi	t5,t5,4
    7f00:	011776b3          	and	a3,a4,a7
    7f04:	00f686b3          	add	a3,a3,a5
    7f08:	0115f7b3          	and	a5,a1,a7
    7f0c:	40f686b3          	sub	a3,a3,a5
    7f10:	0105d593          	srli	a1,a1,0x10
    7f14:	01075793          	srli	a5,a4,0x10
    7f18:	40b787b3          	sub	a5,a5,a1
    7f1c:	4106d713          	srai	a4,a3,0x10
    7f20:	00e787b3          	add	a5,a5,a4
    7f24:	01079713          	slli	a4,a5,0x10
    7f28:	0116f6b3          	and	a3,a3,a7
    7f2c:	00d766b3          	or	a3,a4,a3
    7f30:	00480813          	addi	a6,a6,4
    7f34:	fedf2e23          	sw	a3,-4(t5)
    7f38:	00430313          	addi	t1,t1,4
    7f3c:	4107d793          	srai	a5,a5,0x10
    7f40:	fa586ae3          	bltu	a6,t0,7ef4 <__mdiff+0xa8>
    7f44:	408285b3          	sub	a1,t0,s0
    7f48:	feb58593          	addi	a1,a1,-21
    7f4c:	01540413          	addi	s0,s0,21
    7f50:	0025d593          	srli	a1,a1,0x2
    7f54:	00000713          	li	a4,0
    7f58:	0082e463          	bltu	t0,s0,7f60 <__mdiff+0x114>
    7f5c:	00259713          	slli	a4,a1,0x2
    7f60:	00ef8733          	add	a4,t6,a4
    7f64:	00400813          	li	a6,4
    7f68:	0082e663          	bltu	t0,s0,7f74 <__mdiff+0x128>
    7f6c:	00158593          	addi	a1,a1,1
    7f70:	00259813          	slli	a6,a1,0x2
    7f74:	010484b3          	add	s1,s1,a6
    7f78:	010f8fb3          	add	t6,t6,a6
    7f7c:	05d4fe63          	bgeu	s1,t4,7fd8 <__mdiff+0x18c>
    7f80:	000108b7          	lui	a7,0x10
    7f84:	000f8813          	mv	a6,t6
    7f88:	00048593          	mv	a1,s1
    7f8c:	fff88893          	addi	a7,a7,-1 # ffff <__multf3+0x2cf>
    7f90:	0005a703          	lw	a4,0(a1)
    7f94:	00480813          	addi	a6,a6,4
    7f98:	00458593          	addi	a1,a1,4
    7f9c:	01177633          	and	a2,a4,a7
    7fa0:	00f60633          	add	a2,a2,a5
    7fa4:	41065693          	srai	a3,a2,0x10
    7fa8:	01075793          	srli	a5,a4,0x10
    7fac:	00d787b3          	add	a5,a5,a3
    7fb0:	01079693          	slli	a3,a5,0x10
    7fb4:	01167633          	and	a2,a2,a7
    7fb8:	00c6e6b3          	or	a3,a3,a2
    7fbc:	fed82e23          	sw	a3,-4(a6)
    7fc0:	4107d793          	srai	a5,a5,0x10
    7fc4:	fdd5e6e3          	bltu	a1,t4,7f90 <__mdiff+0x144>
    7fc8:	fffe8713          	addi	a4,t4,-1
    7fcc:	40970733          	sub	a4,a4,s1
    7fd0:	ffc77713          	andi	a4,a4,-4
    7fd4:	00ef8733          	add	a4,t6,a4
    7fd8:	00069a63          	bnez	a3,7fec <__mdiff+0x1a0>
    7fdc:	ffc72783          	lw	a5,-4(a4)
    7fe0:	fffe0e13          	addi	t3,t3,-1
    7fe4:	ffc70713          	addi	a4,a4,-4
    7fe8:	fe078ae3          	beqz	a5,7fdc <__mdiff+0x190>
    7fec:	00c12083          	lw	ra,12(sp)
    7ff0:	00812403          	lw	s0,8(sp)
    7ff4:	01c52823          	sw	t3,16(a0)
    7ff8:	00412483          	lw	s1,4(sp)
    7ffc:	00012903          	lw	s2,0(sp)
    8000:	01010113          	addi	sp,sp,16
    8004:	00008067          	ret
    8008:	00048793          	mv	a5,s1
    800c:	00100913          	li	s2,1
    8010:	00040493          	mv	s1,s0
    8014:	00078413          	mv	s0,a5
    8018:	e95ff06f          	j	7eac <__mdiff+0x60>
    801c:	fe0946e3          	bltz	s2,8008 <__mdiff+0x1bc>
    8020:	00000913          	li	s2,0
    8024:	e89ff06f          	j	7eac <__mdiff+0x60>
    8028:	00000593          	li	a1,0
    802c:	ab0ff0ef          	jal	ra,72dc <_Balloc>
    8030:	04050263          	beqz	a0,8074 <__mdiff+0x228>
    8034:	00c12083          	lw	ra,12(sp)
    8038:	00812403          	lw	s0,8(sp)
    803c:	00100793          	li	a5,1
    8040:	00f52823          	sw	a5,16(a0)
    8044:	00052a23          	sw	zero,20(a0)
    8048:	00412483          	lw	s1,4(sp)
    804c:	00012903          	lw	s2,0(sp)
    8050:	01010113          	addi	sp,sp,16
    8054:	00008067          	ret
    8058:	000136b7          	lui	a3,0x13
    805c:	00013537          	lui	a0,0x13
    8060:	40468693          	addi	a3,a3,1028 # 13404 <zeroes.0+0x30>
    8064:	00000613          	li	a2,0
    8068:	24000593          	li	a1,576
    806c:	6c450513          	addi	a0,a0,1732 # 136c4 <bmask+0x24>
    8070:	359010ef          	jal	ra,9bc8 <__assert_func>
    8074:	000136b7          	lui	a3,0x13
    8078:	00013537          	lui	a0,0x13
    807c:	40468693          	addi	a3,a3,1028 # 13404 <zeroes.0+0x30>
    8080:	00000613          	li	a2,0
    8084:	23200593          	li	a1,562
    8088:	6c450513          	addi	a0,a0,1732 # 136c4 <bmask+0x24>
    808c:	33d010ef          	jal	ra,9bc8 <__assert_func>

00008090 <__ulp>:
    8090:	7ff007b7          	lui	a5,0x7ff00
    8094:	00b7f5b3          	and	a1,a5,a1
    8098:	fcc007b7          	lui	a5,0xfcc00
    809c:	00f585b3          	add	a1,a1,a5
    80a0:	00b05863          	blez	a1,80b0 <__ulp+0x20>
    80a4:	00000793          	li	a5,0
    80a8:	00078513          	mv	a0,a5
    80ac:	00008067          	ret
    80b0:	40b005b3          	neg	a1,a1
    80b4:	4145d593          	srai	a1,a1,0x14
    80b8:	01300793          	li	a5,19
    80bc:	00b7c863          	blt	a5,a1,80cc <__ulp+0x3c>
    80c0:	000807b7          	lui	a5,0x80
    80c4:	40b7d5b3          	sra	a1,a5,a1
    80c8:	fddff06f          	j	80a4 <__ulp+0x14>
    80cc:	fec58713          	addi	a4,a1,-20
    80d0:	01e00693          	li	a3,30
    80d4:	00000593          	li	a1,0
    80d8:	00100793          	li	a5,1
    80dc:	fce6c6e3          	blt	a3,a4,80a8 <__ulp+0x18>
    80e0:	800007b7          	lui	a5,0x80000
    80e4:	00e7d7b3          	srl	a5,a5,a4
    80e8:	00078513          	mv	a0,a5
    80ec:	00008067          	ret

000080f0 <__b2d>:
    80f0:	fe010113          	addi	sp,sp,-32
    80f4:	00912a23          	sw	s1,20(sp)
    80f8:	01052483          	lw	s1,16(a0)
    80fc:	00812c23          	sw	s0,24(sp)
    8100:	01450413          	addi	s0,a0,20
    8104:	00249493          	slli	s1,s1,0x2
    8108:	009404b3          	add	s1,s0,s1
    810c:	01212823          	sw	s2,16(sp)
    8110:	ffc4a903          	lw	s2,-4(s1)
    8114:	01312623          	sw	s3,12(sp)
    8118:	01412423          	sw	s4,8(sp)
    811c:	00090513          	mv	a0,s2
    8120:	00058993          	mv	s3,a1
    8124:	00112e23          	sw	ra,28(sp)
    8128:	d30ff0ef          	jal	ra,7658 <__hi0bits>
    812c:	02000713          	li	a4,32
    8130:	40a707b3          	sub	a5,a4,a0
    8134:	00f9a023          	sw	a5,0(s3)
    8138:	00a00793          	li	a5,10
    813c:	ffc48a13          	addi	s4,s1,-4
    8140:	08a7d063          	bge	a5,a0,81c0 <__b2d+0xd0>
    8144:	ff550513          	addi	a0,a0,-11
    8148:	05447063          	bgeu	s0,s4,8188 <__b2d+0x98>
    814c:	ff84a783          	lw	a5,-8(s1)
    8150:	04050063          	beqz	a0,8190 <__b2d+0xa0>
    8154:	40a706b3          	sub	a3,a4,a0
    8158:	00d7d733          	srl	a4,a5,a3
    815c:	00a91933          	sll	s2,s2,a0
    8160:	00e96933          	or	s2,s2,a4
    8164:	ff848613          	addi	a2,s1,-8
    8168:	3ff00737          	lui	a4,0x3ff00
    816c:	00e96733          	or	a4,s2,a4
    8170:	00a797b3          	sll	a5,a5,a0
    8174:	02c47263          	bgeu	s0,a2,8198 <__b2d+0xa8>
    8178:	ff44a603          	lw	a2,-12(s1)
    817c:	00d656b3          	srl	a3,a2,a3
    8180:	00d7e7b3          	or	a5,a5,a3
    8184:	0140006f          	j	8198 <__b2d+0xa8>
    8188:	00000793          	li	a5,0
    818c:	06051463          	bnez	a0,81f4 <__b2d+0x104>
    8190:	3ff00737          	lui	a4,0x3ff00
    8194:	00e96733          	or	a4,s2,a4
    8198:	01c12083          	lw	ra,28(sp)
    819c:	01812403          	lw	s0,24(sp)
    81a0:	01412483          	lw	s1,20(sp)
    81a4:	01012903          	lw	s2,16(sp)
    81a8:	00c12983          	lw	s3,12(sp)
    81ac:	00812a03          	lw	s4,8(sp)
    81b0:	00078513          	mv	a0,a5
    81b4:	00070593          	mv	a1,a4
    81b8:	02010113          	addi	sp,sp,32
    81bc:	00008067          	ret
    81c0:	00b00693          	li	a3,11
    81c4:	40a686b3          	sub	a3,a3,a0
    81c8:	3ff007b7          	lui	a5,0x3ff00
    81cc:	00d95733          	srl	a4,s2,a3
    81d0:	00f76733          	or	a4,a4,a5
    81d4:	00000793          	li	a5,0
    81d8:	01447663          	bgeu	s0,s4,81e4 <__b2d+0xf4>
    81dc:	ff84a783          	lw	a5,-8(s1)
    81e0:	00d7d7b3          	srl	a5,a5,a3
    81e4:	01550513          	addi	a0,a0,21
    81e8:	00a91533          	sll	a0,s2,a0
    81ec:	00f567b3          	or	a5,a0,a5
    81f0:	fa9ff06f          	j	8198 <__b2d+0xa8>
    81f4:	00a91533          	sll	a0,s2,a0
    81f8:	3ff00737          	lui	a4,0x3ff00
    81fc:	00e56733          	or	a4,a0,a4
    8200:	00000793          	li	a5,0
    8204:	f95ff06f          	j	8198 <__b2d+0xa8>

00008208 <__d2b>:
    8208:	fd010113          	addi	sp,sp,-48
    820c:	01512a23          	sw	s5,20(sp)
    8210:	00058a93          	mv	s5,a1
    8214:	00100593          	li	a1,1
    8218:	03212023          	sw	s2,32(sp)
    821c:	01312e23          	sw	s3,28(sp)
    8220:	01412c23          	sw	s4,24(sp)
    8224:	02112623          	sw	ra,44(sp)
    8228:	02812423          	sw	s0,40(sp)
    822c:	02912223          	sw	s1,36(sp)
    8230:	00060913          	mv	s2,a2
    8234:	00068a13          	mv	s4,a3
    8238:	00070993          	mv	s3,a4
    823c:	8a0ff0ef          	jal	ra,72dc <_Balloc>
    8240:	10050863          	beqz	a0,8350 <__d2b+0x148>
    8244:	001007b7          	lui	a5,0x100
    8248:	01495493          	srli	s1,s2,0x14
    824c:	fff78613          	addi	a2,a5,-1 # fffff <__crt0_copy_data_src_begin+0xec1a3>
    8250:	7ff4f493          	andi	s1,s1,2047
    8254:	00050413          	mv	s0,a0
    8258:	01267633          	and	a2,a2,s2
    825c:	00048463          	beqz	s1,8264 <__d2b+0x5c>
    8260:	00f66633          	or	a2,a2,a5
    8264:	00c12623          	sw	a2,12(sp)
    8268:	080a8863          	beqz	s5,82f8 <__d2b+0xf0>
    826c:	00810513          	addi	a0,sp,8
    8270:	01512423          	sw	s5,8(sp)
    8274:	c5cff0ef          	jal	ra,76d0 <__lo0bits>
    8278:	00c12703          	lw	a4,12(sp)
    827c:	00050793          	mv	a5,a0
    8280:	0c050263          	beqz	a0,8344 <__d2b+0x13c>
    8284:	00812603          	lw	a2,8(sp)
    8288:	02000693          	li	a3,32
    828c:	40a686b3          	sub	a3,a3,a0
    8290:	00d716b3          	sll	a3,a4,a3
    8294:	00c6e6b3          	or	a3,a3,a2
    8298:	00a75733          	srl	a4,a4,a0
    829c:	00d42a23          	sw	a3,20(s0)
    82a0:	00e12623          	sw	a4,12(sp)
    82a4:	00e03933          	snez	s2,a4
    82a8:	00190913          	addi	s2,s2,1
    82ac:	00e42c23          	sw	a4,24(s0)
    82b0:	01242823          	sw	s2,16(s0)
    82b4:	06048463          	beqz	s1,831c <__d2b+0x114>
    82b8:	bcd48493          	addi	s1,s1,-1075
    82bc:	00f484b3          	add	s1,s1,a5
    82c0:	03500513          	li	a0,53
    82c4:	009a2023          	sw	s1,0(s4)
    82c8:	40f507b3          	sub	a5,a0,a5
    82cc:	00f9a023          	sw	a5,0(s3)
    82d0:	02c12083          	lw	ra,44(sp)
    82d4:	00040513          	mv	a0,s0
    82d8:	02812403          	lw	s0,40(sp)
    82dc:	02412483          	lw	s1,36(sp)
    82e0:	02012903          	lw	s2,32(sp)
    82e4:	01c12983          	lw	s3,28(sp)
    82e8:	01812a03          	lw	s4,24(sp)
    82ec:	01412a83          	lw	s5,20(sp)
    82f0:	03010113          	addi	sp,sp,48
    82f4:	00008067          	ret
    82f8:	00c10513          	addi	a0,sp,12
    82fc:	bd4ff0ef          	jal	ra,76d0 <__lo0bits>
    8300:	00100793          	li	a5,1
    8304:	00f42823          	sw	a5,16(s0)
    8308:	00c12783          	lw	a5,12(sp)
    830c:	00100913          	li	s2,1
    8310:	00f42a23          	sw	a5,20(s0)
    8314:	02050793          	addi	a5,a0,32
    8318:	fa0490e3          	bnez	s1,82b8 <__d2b+0xb0>
    831c:	00291713          	slli	a4,s2,0x2
    8320:	00e40733          	add	a4,s0,a4
    8324:	01072503          	lw	a0,16(a4) # 3ff00010 <__crt0_copy_data_src_begin+0x3feec1b4>
    8328:	bce78793          	addi	a5,a5,-1074
    832c:	00fa2023          	sw	a5,0(s4)
    8330:	b28ff0ef          	jal	ra,7658 <__hi0bits>
    8334:	00591913          	slli	s2,s2,0x5
    8338:	40a90933          	sub	s2,s2,a0
    833c:	0129a023          	sw	s2,0(s3)
    8340:	f91ff06f          	j	82d0 <__d2b+0xc8>
    8344:	00812683          	lw	a3,8(sp)
    8348:	00d42a23          	sw	a3,20(s0)
    834c:	f59ff06f          	j	82a4 <__d2b+0x9c>
    8350:	000136b7          	lui	a3,0x13
    8354:	00013537          	lui	a0,0x13
    8358:	40468693          	addi	a3,a3,1028 # 13404 <zeroes.0+0x30>
    835c:	00000613          	li	a2,0
    8360:	30a00593          	li	a1,778
    8364:	6c450513          	addi	a0,a0,1732 # 136c4 <bmask+0x24>
    8368:	061010ef          	jal	ra,9bc8 <__assert_func>

0000836c <__ratio>:
    836c:	fd010113          	addi	sp,sp,-48
    8370:	03212023          	sw	s2,32(sp)
    8374:	00058913          	mv	s2,a1
    8378:	00810593          	addi	a1,sp,8
    837c:	02112623          	sw	ra,44(sp)
    8380:	02812423          	sw	s0,40(sp)
    8384:	02912223          	sw	s1,36(sp)
    8388:	01312e23          	sw	s3,28(sp)
    838c:	00050993          	mv	s3,a0
    8390:	d61ff0ef          	jal	ra,80f0 <__b2d>
    8394:	00050493          	mv	s1,a0
    8398:	00058413          	mv	s0,a1
    839c:	00090513          	mv	a0,s2
    83a0:	00c10593          	addi	a1,sp,12
    83a4:	d4dff0ef          	jal	ra,80f0 <__b2d>
    83a8:	01092703          	lw	a4,16(s2)
    83ac:	0109a783          	lw	a5,16(s3)
    83b0:	00c12683          	lw	a3,12(sp)
    83b4:	40e787b3          	sub	a5,a5,a4
    83b8:	00812703          	lw	a4,8(sp)
    83bc:	00579793          	slli	a5,a5,0x5
    83c0:	40d70733          	sub	a4,a4,a3
    83c4:	00e787b3          	add	a5,a5,a4
    83c8:	00050713          	mv	a4,a0
    83cc:	02f05e63          	blez	a5,8408 <__ratio+0x9c>
    83d0:	01479793          	slli	a5,a5,0x14
    83d4:	00878433          	add	s0,a5,s0
    83d8:	00058693          	mv	a3,a1
    83dc:	00048513          	mv	a0,s1
    83e0:	00040593          	mv	a1,s0
    83e4:	00070613          	mv	a2,a4
    83e8:	78c060ef          	jal	ra,eb74 <__divdf3>
    83ec:	02c12083          	lw	ra,44(sp)
    83f0:	02812403          	lw	s0,40(sp)
    83f4:	02412483          	lw	s1,36(sp)
    83f8:	02012903          	lw	s2,32(sp)
    83fc:	01c12983          	lw	s3,28(sp)
    8400:	03010113          	addi	sp,sp,48
    8404:	00008067          	ret
    8408:	01479793          	slli	a5,a5,0x14
    840c:	40f585b3          	sub	a1,a1,a5
    8410:	fc9ff06f          	j	83d8 <__ratio+0x6c>

00008414 <_mprec_log10>:
    8414:	ff010113          	addi	sp,sp,-16
    8418:	01212023          	sw	s2,0(sp)
    841c:	00112623          	sw	ra,12(sp)
    8420:	00812423          	sw	s0,8(sp)
    8424:	00912223          	sw	s1,4(sp)
    8428:	01700793          	li	a5,23
    842c:	00050913          	mv	s2,a0
    8430:	04a7d663          	bge	a5,a0,847c <_mprec_log10+0x68>
    8434:	1a01a783          	lw	a5,416(gp) # 800009a0 <__global_locale+0x170>
    8438:	1a41a583          	lw	a1,420(gp) # 800009a4 <__global_locale+0x174>
    843c:	1a81a403          	lw	s0,424(gp) # 800009a8 <__global_locale+0x178>
    8440:	1ac1a483          	lw	s1,428(gp) # 800009ac <__global_locale+0x17c>
    8444:	00078513          	mv	a0,a5
    8448:	00040613          	mv	a2,s0
    844c:	00048693          	mv	a3,s1
    8450:	705060ef          	jal	ra,f354 <__muldf3>
    8454:	fff90913          	addi	s2,s2,-1
    8458:	00050793          	mv	a5,a0
    845c:	fe0914e3          	bnez	s2,8444 <_mprec_log10+0x30>
    8460:	00c12083          	lw	ra,12(sp)
    8464:	00812403          	lw	s0,8(sp)
    8468:	00412483          	lw	s1,4(sp)
    846c:	00012903          	lw	s2,0(sp)
    8470:	00078513          	mv	a0,a5
    8474:	01010113          	addi	sp,sp,16
    8478:	00008067          	ret
    847c:	000137b7          	lui	a5,0x13
    8480:	00351913          	slli	s2,a0,0x3
    8484:	71878793          	addi	a5,a5,1816 # 13718 <p05.0>
    8488:	01278933          	add	s2,a5,s2
    848c:	01092783          	lw	a5,16(s2)
    8490:	00c12083          	lw	ra,12(sp)
    8494:	00812403          	lw	s0,8(sp)
    8498:	01492583          	lw	a1,20(s2)
    849c:	00412483          	lw	s1,4(sp)
    84a0:	00012903          	lw	s2,0(sp)
    84a4:	00078513          	mv	a0,a5
    84a8:	01010113          	addi	sp,sp,16
    84ac:	00008067          	ret

000084b0 <__copybits>:
    84b0:	01062683          	lw	a3,16(a2)
    84b4:	fff58593          	addi	a1,a1,-1
    84b8:	4055d593          	srai	a1,a1,0x5
    84bc:	00158593          	addi	a1,a1,1
    84c0:	01460793          	addi	a5,a2,20
    84c4:	00269693          	slli	a3,a3,0x2
    84c8:	00259593          	slli	a1,a1,0x2
    84cc:	00d786b3          	add	a3,a5,a3
    84d0:	00b505b3          	add	a1,a0,a1
    84d4:	02d7f863          	bgeu	a5,a3,8504 <__copybits+0x54>
    84d8:	00050713          	mv	a4,a0
    84dc:	0007a803          	lw	a6,0(a5)
    84e0:	00478793          	addi	a5,a5,4
    84e4:	00470713          	addi	a4,a4,4
    84e8:	ff072e23          	sw	a6,-4(a4)
    84ec:	fed7e8e3          	bltu	a5,a3,84dc <__copybits+0x2c>
    84f0:	40c687b3          	sub	a5,a3,a2
    84f4:	feb78793          	addi	a5,a5,-21
    84f8:	ffc7f793          	andi	a5,a5,-4
    84fc:	00478793          	addi	a5,a5,4
    8500:	00f50533          	add	a0,a0,a5
    8504:	00b57863          	bgeu	a0,a1,8514 <__copybits+0x64>
    8508:	00450513          	addi	a0,a0,4
    850c:	fe052e23          	sw	zero,-4(a0)
    8510:	feb56ce3          	bltu	a0,a1,8508 <__copybits+0x58>
    8514:	00008067          	ret

00008518 <__any_on>:
    8518:	01052703          	lw	a4,16(a0)
    851c:	4055d613          	srai	a2,a1,0x5
    8520:	01450693          	addi	a3,a0,20
    8524:	02c75263          	bge	a4,a2,8548 <__any_on+0x30>
    8528:	00271793          	slli	a5,a4,0x2
    852c:	00f687b3          	add	a5,a3,a5
    8530:	04f6f263          	bgeu	a3,a5,8574 <__any_on+0x5c>
    8534:	ffc7a703          	lw	a4,-4(a5)
    8538:	ffc78793          	addi	a5,a5,-4
    853c:	fe070ae3          	beqz	a4,8530 <__any_on+0x18>
    8540:	00100513          	li	a0,1
    8544:	00008067          	ret
    8548:	00261793          	slli	a5,a2,0x2
    854c:	00f687b3          	add	a5,a3,a5
    8550:	fee650e3          	bge	a2,a4,8530 <__any_on+0x18>
    8554:	01f5f593          	andi	a1,a1,31
    8558:	fc058ce3          	beqz	a1,8530 <__any_on+0x18>
    855c:	0007a603          	lw	a2,0(a5)
    8560:	00100513          	li	a0,1
    8564:	00b65733          	srl	a4,a2,a1
    8568:	00b715b3          	sll	a1,a4,a1
    856c:	fcb602e3          	beq	a2,a1,8530 <__any_on+0x18>
    8570:	00008067          	ret
    8574:	00000513          	li	a0,0
    8578:	00008067          	ret

0000857c <frexp>:
    857c:	ff010113          	addi	sp,sp,-16
    8580:	00912223          	sw	s1,4(sp)
    8584:	800004b7          	lui	s1,0x80000
    8588:	00812423          	sw	s0,8(sp)
    858c:	00112623          	sw	ra,12(sp)
    8590:	fff4c493          	not	s1,s1
    8594:	00060413          	mv	s0,a2
    8598:	00062023          	sw	zero,0(a2)
    859c:	00b4f6b3          	and	a3,s1,a1
    85a0:	7ff00637          	lui	a2,0x7ff00
    85a4:	00058793          	mv	a5,a1
    85a8:	00050713          	mv	a4,a0
    85ac:	04c6de63          	bge	a3,a2,8608 <frexp+0x8c>
    85b0:	00a6e8b3          	or	a7,a3,a0
    85b4:	04088a63          	beqz	a7,8608 <frexp+0x8c>
    85b8:	00c5f633          	and	a2,a1,a2
    85bc:	00058813          	mv	a6,a1
    85c0:	00000893          	li	a7,0
    85c4:	02061063          	bnez	a2,85e4 <frexp+0x68>
    85c8:	1b41a683          	lw	a3,436(gp) # 800009b4 <__global_locale+0x184>
    85cc:	1b01a603          	lw	a2,432(gp) # 800009b0 <__global_locale+0x180>
    85d0:	585060ef          	jal	ra,f354 <__muldf3>
    85d4:	00050713          	mv	a4,a0
    85d8:	00058813          	mv	a6,a1
    85dc:	00b4f6b3          	and	a3,s1,a1
    85e0:	fca00893          	li	a7,-54
    85e4:	4146d693          	srai	a3,a3,0x14
    85e8:	801007b7          	lui	a5,0x80100
    85ec:	fff78793          	addi	a5,a5,-1 # 800fffff <__ctr0_io_space_begin+0x801001ff>
    85f0:	c0268693          	addi	a3,a3,-1022
    85f4:	00f87833          	and	a6,a6,a5
    85f8:	011686b3          	add	a3,a3,a7
    85fc:	3fe007b7          	lui	a5,0x3fe00
    8600:	00f867b3          	or	a5,a6,a5
    8604:	00d42023          	sw	a3,0(s0)
    8608:	00c12083          	lw	ra,12(sp)
    860c:	00812403          	lw	s0,8(sp)
    8610:	00412483          	lw	s1,4(sp)
    8614:	00070513          	mv	a0,a4
    8618:	00078593          	mv	a1,a5
    861c:	01010113          	addi	sp,sp,16
    8620:	00008067          	ret

00008624 <_sbrk_r>:
    8624:	ff010113          	addi	sp,sp,-16
    8628:	00812423          	sw	s0,8(sp)
    862c:	00912223          	sw	s1,4(sp)
    8630:	00050413          	mv	s0,a0
    8634:	00058513          	mv	a0,a1
    8638:	00112623          	sw	ra,12(sp)
    863c:	1c01aa23          	sw	zero,468(gp) # 800009d4 <errno>
    8640:	10d050ef          	jal	ra,df4c <_sbrk>
    8644:	fff00793          	li	a5,-1
    8648:	00f50c63          	beq	a0,a5,8660 <_sbrk_r+0x3c>
    864c:	00c12083          	lw	ra,12(sp)
    8650:	00812403          	lw	s0,8(sp)
    8654:	00412483          	lw	s1,4(sp)
    8658:	01010113          	addi	sp,sp,16
    865c:	00008067          	ret
    8660:	1d41a783          	lw	a5,468(gp) # 800009d4 <errno>
    8664:	fe0784e3          	beqz	a5,864c <_sbrk_r+0x28>
    8668:	00c12083          	lw	ra,12(sp)
    866c:	00f42023          	sw	a5,0(s0)
    8670:	00812403          	lw	s0,8(sp)
    8674:	00412483          	lw	s1,4(sp)
    8678:	01010113          	addi	sp,sp,16
    867c:	00008067          	ret

00008680 <_sprintf_r>:
    8680:	f6010113          	addi	sp,sp,-160
    8684:	08c10e93          	addi	t4,sp,140
    8688:	08f12a23          	sw	a5,148(sp)
    868c:	80000337          	lui	t1,0x80000
    8690:	ffff07b7          	lui	a5,0xffff0
    8694:	00058e13          	mv	t3,a1
    8698:	fff34313          	not	t1,t1
    869c:	08d12623          	sw	a3,140(sp)
    86a0:	20878793          	addi	a5,a5,520 # ffff0208 <__ctr0_io_space_begin+0xffff0408>
    86a4:	00810593          	addi	a1,sp,8
    86a8:	000e8693          	mv	a3,t4
    86ac:	06112e23          	sw	ra,124(sp)
    86b0:	00f12a23          	sw	a5,20(sp)
    86b4:	08e12823          	sw	a4,144(sp)
    86b8:	09012c23          	sw	a6,152(sp)
    86bc:	09112e23          	sw	a7,156(sp)
    86c0:	01c12423          	sw	t3,8(sp)
    86c4:	01c12c23          	sw	t3,24(sp)
    86c8:	00612e23          	sw	t1,28(sp)
    86cc:	00612823          	sw	t1,16(sp)
    86d0:	01d12223          	sw	t4,4(sp)
    86d4:	981f80ef          	jal	ra,1054 <_svfprintf_r>
    86d8:	00812783          	lw	a5,8(sp)
    86dc:	00078023          	sb	zero,0(a5)
    86e0:	07c12083          	lw	ra,124(sp)
    86e4:	0a010113          	addi	sp,sp,160
    86e8:	00008067          	ret

000086ec <sprintf>:
    86ec:	00050e13          	mv	t3,a0
    86f0:	f6010113          	addi	sp,sp,-160
    86f4:	1bc1a503          	lw	a0,444(gp) # 800009bc <_impure_ptr>
    86f8:	08810e93          	addi	t4,sp,136
    86fc:	08f12a23          	sw	a5,148(sp)
    8700:	80000337          	lui	t1,0x80000
    8704:	ffff07b7          	lui	a5,0xffff0
    8708:	fff34313          	not	t1,t1
    870c:	08c12423          	sw	a2,136(sp)
    8710:	08d12623          	sw	a3,140(sp)
    8714:	20878793          	addi	a5,a5,520 # ffff0208 <__ctr0_io_space_begin+0xffff0408>
    8718:	00058613          	mv	a2,a1
    871c:	000e8693          	mv	a3,t4
    8720:	00810593          	addi	a1,sp,8
    8724:	06112e23          	sw	ra,124(sp)
    8728:	00f12a23          	sw	a5,20(sp)
    872c:	08e12823          	sw	a4,144(sp)
    8730:	09012c23          	sw	a6,152(sp)
    8734:	09112e23          	sw	a7,156(sp)
    8738:	01c12423          	sw	t3,8(sp)
    873c:	01c12c23          	sw	t3,24(sp)
    8740:	00612e23          	sw	t1,28(sp)
    8744:	00612823          	sw	t1,16(sp)
    8748:	01d12223          	sw	t4,4(sp)
    874c:	909f80ef          	jal	ra,1054 <_svfprintf_r>
    8750:	00812783          	lw	a5,8(sp)
    8754:	00078023          	sb	zero,0(a5)
    8758:	07c12083          	lw	ra,124(sp)
    875c:	0a010113          	addi	sp,sp,160
    8760:	00008067          	ret

00008764 <strcpy>:
    8764:	00b567b3          	or	a5,a0,a1
    8768:	0037f793          	andi	a5,a5,3
    876c:	08079263          	bnez	a5,87f0 <strcpy+0x8c>
    8770:	0005a703          	lw	a4,0(a1)
    8774:	7f7f86b7          	lui	a3,0x7f7f8
    8778:	f7f68693          	addi	a3,a3,-129 # 7f7f7f7f <__crt0_copy_data_src_begin+0x7f7e4123>
    877c:	00d777b3          	and	a5,a4,a3
    8780:	00d787b3          	add	a5,a5,a3
    8784:	00e7e7b3          	or	a5,a5,a4
    8788:	00d7e7b3          	or	a5,a5,a3
    878c:	fff00613          	li	a2,-1
    8790:	06c79e63          	bne	a5,a2,880c <strcpy+0xa8>
    8794:	00050613          	mv	a2,a0
    8798:	fff00813          	li	a6,-1
    879c:	00e62023          	sw	a4,0(a2) # 7ff00000 <__crt0_copy_data_src_begin+0x7feec1a4>
    87a0:	0045a703          	lw	a4,4(a1)
    87a4:	00458593          	addi	a1,a1,4
    87a8:	00460613          	addi	a2,a2,4
    87ac:	00d777b3          	and	a5,a4,a3
    87b0:	00d787b3          	add	a5,a5,a3
    87b4:	00e7e7b3          	or	a5,a5,a4
    87b8:	00d7e7b3          	or	a5,a5,a3
    87bc:	ff0780e3          	beq	a5,a6,879c <strcpy+0x38>
    87c0:	0005c783          	lbu	a5,0(a1)
    87c4:	0015c703          	lbu	a4,1(a1)
    87c8:	0025c683          	lbu	a3,2(a1)
    87cc:	00f60023          	sb	a5,0(a2)
    87d0:	00078a63          	beqz	a5,87e4 <strcpy+0x80>
    87d4:	00e600a3          	sb	a4,1(a2)
    87d8:	00070663          	beqz	a4,87e4 <strcpy+0x80>
    87dc:	00d60123          	sb	a3,2(a2)
    87e0:	00069463          	bnez	a3,87e8 <strcpy+0x84>
    87e4:	00008067          	ret
    87e8:	000601a3          	sb	zero,3(a2)
    87ec:	00008067          	ret
    87f0:	00050793          	mv	a5,a0
    87f4:	0005c703          	lbu	a4,0(a1)
    87f8:	00178793          	addi	a5,a5,1
    87fc:	00158593          	addi	a1,a1,1
    8800:	fee78fa3          	sb	a4,-1(a5)
    8804:	fe0718e3          	bnez	a4,87f4 <strcpy+0x90>
    8808:	00008067          	ret
    880c:	00050613          	mv	a2,a0
    8810:	fb1ff06f          	j	87c0 <strcpy+0x5c>

00008814 <strlen>:
    8814:	00357793          	andi	a5,a0,3
    8818:	00050713          	mv	a4,a0
    881c:	04079c63          	bnez	a5,8874 <strlen+0x60>
    8820:	7f7f86b7          	lui	a3,0x7f7f8
    8824:	f7f68693          	addi	a3,a3,-129 # 7f7f7f7f <__crt0_copy_data_src_begin+0x7f7e4123>
    8828:	fff00593          	li	a1,-1
    882c:	00072603          	lw	a2,0(a4)
    8830:	00470713          	addi	a4,a4,4
    8834:	00d677b3          	and	a5,a2,a3
    8838:	00d787b3          	add	a5,a5,a3
    883c:	00c7e7b3          	or	a5,a5,a2
    8840:	00d7e7b3          	or	a5,a5,a3
    8844:	feb784e3          	beq	a5,a1,882c <strlen+0x18>
    8848:	ffc74683          	lbu	a3,-4(a4)
    884c:	ffd74603          	lbu	a2,-3(a4)
    8850:	ffe74783          	lbu	a5,-2(a4)
    8854:	40a70733          	sub	a4,a4,a0
    8858:	04068063          	beqz	a3,8898 <strlen+0x84>
    885c:	02060a63          	beqz	a2,8890 <strlen+0x7c>
    8860:	00f03533          	snez	a0,a5
    8864:	00e50533          	add	a0,a0,a4
    8868:	ffe50513          	addi	a0,a0,-2
    886c:	00008067          	ret
    8870:	fa0688e3          	beqz	a3,8820 <strlen+0xc>
    8874:	00074783          	lbu	a5,0(a4)
    8878:	00170713          	addi	a4,a4,1
    887c:	00377693          	andi	a3,a4,3
    8880:	fe0798e3          	bnez	a5,8870 <strlen+0x5c>
    8884:	40a70733          	sub	a4,a4,a0
    8888:	fff70513          	addi	a0,a4,-1
    888c:	00008067          	ret
    8890:	ffd70513          	addi	a0,a4,-3
    8894:	00008067          	ret
    8898:	ffc70513          	addi	a0,a4,-4
    889c:	00008067          	ret

000088a0 <strncpy>:
    88a0:	00a5e7b3          	or	a5,a1,a0
    88a4:	0037f793          	andi	a5,a5,3
    88a8:	00050713          	mv	a4,a0
    88ac:	06079863          	bnez	a5,891c <strncpy+0x7c>
    88b0:	00300793          	li	a5,3
    88b4:	06c7f463          	bgeu	a5,a2,891c <strncpy+0x7c>
    88b8:	feff0337          	lui	t1,0xfeff0
    88bc:	808088b7          	lui	a7,0x80808
    88c0:	eff30313          	addi	t1,t1,-257 # fefefeff <__ctr0_io_space_begin+0xfeff00ff>
    88c4:	08088893          	addi	a7,a7,128 # 80808080 <__ctr0_io_space_begin+0x80808280>
    88c8:	00300e13          	li	t3,3
    88cc:	0005a683          	lw	a3,0(a1)
    88d0:	006687b3          	add	a5,a3,t1
    88d4:	fff6c813          	not	a6,a3
    88d8:	0107f7b3          	and	a5,a5,a6
    88dc:	0117f7b3          	and	a5,a5,a7
    88e0:	02079e63          	bnez	a5,891c <strncpy+0x7c>
    88e4:	00d72023          	sw	a3,0(a4)
    88e8:	ffc60613          	addi	a2,a2,-4
    88ec:	00470713          	addi	a4,a4,4
    88f0:	00458593          	addi	a1,a1,4
    88f4:	fcce6ce3          	bltu	t3,a2,88cc <strncpy+0x2c>
    88f8:	00158593          	addi	a1,a1,1
    88fc:	00170793          	addi	a5,a4,1
    8900:	02060463          	beqz	a2,8928 <strncpy+0x88>
    8904:	fff5c683          	lbu	a3,-1(a1)
    8908:	fff60813          	addi	a6,a2,-1
    890c:	fed78fa3          	sb	a3,-1(a5)
    8910:	00068e63          	beqz	a3,892c <strncpy+0x8c>
    8914:	00078713          	mv	a4,a5
    8918:	00080613          	mv	a2,a6
    891c:	00158593          	addi	a1,a1,1
    8920:	00170793          	addi	a5,a4,1
    8924:	fe0610e3          	bnez	a2,8904 <strncpy+0x64>
    8928:	00008067          	ret
    892c:	00c70633          	add	a2,a4,a2
    8930:	00080a63          	beqz	a6,8944 <strncpy+0xa4>
    8934:	00178793          	addi	a5,a5,1
    8938:	fe078fa3          	sb	zero,-1(a5)
    893c:	fec79ce3          	bne	a5,a2,8934 <strncpy+0x94>
    8940:	00008067          	ret
    8944:	00008067          	ret

00008948 <__ssprint_r>:
    8948:	00862783          	lw	a5,8(a2)
    894c:	fd010113          	addi	sp,sp,-48
    8950:	01512a23          	sw	s5,20(sp)
    8954:	02112623          	sw	ra,44(sp)
    8958:	02812423          	sw	s0,40(sp)
    895c:	02912223          	sw	s1,36(sp)
    8960:	03212023          	sw	s2,32(sp)
    8964:	01312e23          	sw	s3,28(sp)
    8968:	01412c23          	sw	s4,24(sp)
    896c:	01612823          	sw	s6,16(sp)
    8970:	01712623          	sw	s7,12(sp)
    8974:	01812423          	sw	s8,8(sp)
    8978:	00060a93          	mv	s5,a2
    897c:	14078863          	beqz	a5,8acc <__ssprint_r+0x184>
    8980:	00050b13          	mv	s6,a0
    8984:	00062983          	lw	s3,0(a2)
    8988:	0005a503          	lw	a0,0(a1)
    898c:	0085a483          	lw	s1,8(a1)
    8990:	00058413          	mv	s0,a1
    8994:	0d40006f          	j	8a68 <__ssprint_r+0x120>
    8998:	00c45783          	lhu	a5,12(s0)
    899c:	4807f713          	andi	a4,a5,1152
    89a0:	08070a63          	beqz	a4,8a34 <__ssprint_r+0xec>
    89a4:	01442683          	lw	a3,20(s0)
    89a8:	01042583          	lw	a1,16(s0)
    89ac:	00190713          	addi	a4,s2,1
    89b0:	00169493          	slli	s1,a3,0x1
    89b4:	00d486b3          	add	a3,s1,a3
    89b8:	01f6d493          	srli	s1,a3,0x1f
    89bc:	40b50a33          	sub	s4,a0,a1
    89c0:	00d484b3          	add	s1,s1,a3
    89c4:	4014d493          	srai	s1,s1,0x1
    89c8:	01470733          	add	a4,a4,s4
    89cc:	00048613          	mv	a2,s1
    89d0:	00e4f663          	bgeu	s1,a4,89dc <__ssprint_r+0x94>
    89d4:	00070493          	mv	s1,a4
    89d8:	00070613          	mv	a2,a4
    89dc:	4007f793          	andi	a5,a5,1024
    89e0:	0a078663          	beqz	a5,8a8c <__ssprint_r+0x144>
    89e4:	00060593          	mv	a1,a2
    89e8:	000b0513          	mv	a0,s6
    89ec:	888fe0ef          	jal	ra,6a74 <_malloc_r>
    89f0:	00050c13          	mv	s8,a0
    89f4:	0a050a63          	beqz	a0,8aa8 <__ssprint_r+0x160>
    89f8:	01042583          	lw	a1,16(s0)
    89fc:	000a0613          	mv	a2,s4
    8a00:	ba8f80ef          	jal	ra,da8 <memcpy>
    8a04:	00c45783          	lhu	a5,12(s0)
    8a08:	b7f7f793          	andi	a5,a5,-1153
    8a0c:	0807e793          	ori	a5,a5,128
    8a10:	00f41623          	sh	a5,12(s0)
    8a14:	014c0533          	add	a0,s8,s4
    8a18:	41448a33          	sub	s4,s1,s4
    8a1c:	00942a23          	sw	s1,20(s0)
    8a20:	01442423          	sw	s4,8(s0)
    8a24:	01842823          	sw	s8,16(s0)
    8a28:	00a42023          	sw	a0,0(s0)
    8a2c:	00090493          	mv	s1,s2
    8a30:	00090a13          	mv	s4,s2
    8a34:	000a0613          	mv	a2,s4
    8a38:	000b8593          	mv	a1,s7
    8a3c:	57c010ef          	jal	ra,9fb8 <memmove>
    8a40:	00842703          	lw	a4,8(s0)
    8a44:	00042503          	lw	a0,0(s0)
    8a48:	008aa783          	lw	a5,8(s5)
    8a4c:	409704b3          	sub	s1,a4,s1
    8a50:	01450533          	add	a0,a0,s4
    8a54:	00942423          	sw	s1,8(s0)
    8a58:	00a42023          	sw	a0,0(s0)
    8a5c:	41278933          	sub	s2,a5,s2
    8a60:	012aa423          	sw	s2,8(s5)
    8a64:	06090463          	beqz	s2,8acc <__ssprint_r+0x184>
    8a68:	0049a903          	lw	s2,4(s3)
    8a6c:	0009ab83          	lw	s7,0(s3)
    8a70:	00048a13          	mv	s4,s1
    8a74:	00898993          	addi	s3,s3,8
    8a78:	fe0908e3          	beqz	s2,8a68 <__ssprint_r+0x120>
    8a7c:	f0997ee3          	bgeu	s2,s1,8998 <__ssprint_r+0x50>
    8a80:	00090493          	mv	s1,s2
    8a84:	00090a13          	mv	s4,s2
    8a88:	fadff06f          	j	8a34 <__ssprint_r+0xec>
    8a8c:	000b0513          	mv	a0,s6
    8a90:	724010ef          	jal	ra,a1b4 <_realloc_r>
    8a94:	00050c13          	mv	s8,a0
    8a98:	f6051ee3          	bnez	a0,8a14 <__ssprint_r+0xcc>
    8a9c:	01042583          	lw	a1,16(s0)
    8aa0:	000b0513          	mv	a0,s6
    8aa4:	884fb0ef          	jal	ra,3b28 <_free_r>
    8aa8:	00c00793          	li	a5,12
    8aac:	00fb2023          	sw	a5,0(s6)
    8ab0:	00c45783          	lhu	a5,12(s0)
    8ab4:	fff00513          	li	a0,-1
    8ab8:	0407e793          	ori	a5,a5,64
    8abc:	00f41623          	sh	a5,12(s0)
    8ac0:	000aa423          	sw	zero,8(s5)
    8ac4:	000aa223          	sw	zero,4(s5)
    8ac8:	00c0006f          	j	8ad4 <__ssprint_r+0x18c>
    8acc:	000aa223          	sw	zero,4(s5)
    8ad0:	00000513          	li	a0,0
    8ad4:	02c12083          	lw	ra,44(sp)
    8ad8:	02812403          	lw	s0,40(sp)
    8adc:	02412483          	lw	s1,36(sp)
    8ae0:	02012903          	lw	s2,32(sp)
    8ae4:	01c12983          	lw	s3,28(sp)
    8ae8:	01812a03          	lw	s4,24(sp)
    8aec:	01412a83          	lw	s5,20(sp)
    8af0:	01012b03          	lw	s6,16(sp)
    8af4:	00c12b83          	lw	s7,12(sp)
    8af8:	00812c03          	lw	s8,8(sp)
    8afc:	03010113          	addi	sp,sp,48
    8b00:	00008067          	ret

00008b04 <_svfiprintf_r>:
    8b04:	00c5d783          	lhu	a5,12(a1)
    8b08:	ed010113          	addi	sp,sp,-304
    8b0c:	11412c23          	sw	s4,280(sp)
    8b10:	11612823          	sw	s6,272(sp)
    8b14:	0fb12e23          	sw	s11,252(sp)
    8b18:	12112623          	sw	ra,300(sp)
    8b1c:	12812423          	sw	s0,296(sp)
    8b20:	12912223          	sw	s1,292(sp)
    8b24:	13212023          	sw	s2,288(sp)
    8b28:	11312e23          	sw	s3,284(sp)
    8b2c:	11512a23          	sw	s5,276(sp)
    8b30:	11712623          	sw	s7,268(sp)
    8b34:	11812423          	sw	s8,264(sp)
    8b38:	11912223          	sw	s9,260(sp)
    8b3c:	11a12023          	sw	s10,256(sp)
    8b40:	0807f793          	andi	a5,a5,128
    8b44:	00d12623          	sw	a3,12(sp)
    8b48:	00058a13          	mv	s4,a1
    8b4c:	00050b13          	mv	s6,a0
    8b50:	00060d93          	mv	s11,a2
    8b54:	00078663          	beqz	a5,8b60 <_svfiprintf_r+0x5c>
    8b58:	0105a783          	lw	a5,16(a1)
    8b5c:	5e0788e3          	beqz	a5,994c <_svfiprintf_r+0xe48>
    8b60:	000147b7          	lui	a5,0x14
    8b64:	04c10a93          	addi	s5,sp,76
    8b68:	84078793          	addi	a5,a5,-1984 # 13840 <__mprec_bigtens+0x28>
    8b6c:	00014c37          	lui	s8,0x14
    8b70:	000144b7          	lui	s1,0x14
    8b74:	000d8993          	mv	s3,s11
    8b78:	05512023          	sw	s5,64(sp)
    8b7c:	04012423          	sw	zero,72(sp)
    8b80:	04012223          	sw	zero,68(sp)
    8b84:	00012a23          	sw	zero,20(sp)
    8b88:	00012c23          	sw	zero,24(sp)
    8b8c:	02012023          	sw	zero,32(sp)
    8b90:	00012e23          	sw	zero,28(sp)
    8b94:	00012423          	sw	zero,8(sp)
    8b98:	00f12823          	sw	a5,16(sp)
    8b9c:	9acc0c13          	addi	s8,s8,-1620 # 139ac <blanks.1>
    8ba0:	9bc48493          	addi	s1,s1,-1604 # 139bc <zeroes.0>
    8ba4:	000a8d93          	mv	s11,s5
    8ba8:	0009c783          	lbu	a5,0(s3)
    8bac:	20078c63          	beqz	a5,8dc4 <_svfiprintf_r+0x2c0>
    8bb0:	00098413          	mv	s0,s3
    8bb4:	02500693          	li	a3,37
    8bb8:	2ad78863          	beq	a5,a3,8e68 <_svfiprintf_r+0x364>
    8bbc:	00144783          	lbu	a5,1(s0)
    8bc0:	00140413          	addi	s0,s0,1
    8bc4:	fe079ae3          	bnez	a5,8bb8 <_svfiprintf_r+0xb4>
    8bc8:	41340bb3          	sub	s7,s0,s3
    8bcc:	1f340c63          	beq	s0,s3,8dc4 <_svfiprintf_r+0x2c0>
    8bd0:	04812683          	lw	a3,72(sp)
    8bd4:	04412783          	lw	a5,68(sp)
    8bd8:	013da023          	sw	s3,0(s11)
    8bdc:	017686b3          	add	a3,a3,s7
    8be0:	00178793          	addi	a5,a5,1
    8be4:	017da223          	sw	s7,4(s11)
    8be8:	04d12423          	sw	a3,72(sp)
    8bec:	04f12223          	sw	a5,68(sp)
    8bf0:	00700693          	li	a3,7
    8bf4:	008d8d93          	addi	s11,s11,8
    8bf8:	28f6c063          	blt	a3,a5,8e78 <_svfiprintf_r+0x374>
    8bfc:	00812703          	lw	a4,8(sp)
    8c00:	00044783          	lbu	a5,0(s0)
    8c04:	01770733          	add	a4,a4,s7
    8c08:	00e12423          	sw	a4,8(sp)
    8c0c:	1a078c63          	beqz	a5,8dc4 <_svfiprintf_r+0x2c0>
    8c10:	fff00893          	li	a7,-1
    8c14:	00144683          	lbu	a3,1(s0)
    8c18:	00140993          	addi	s3,s0,1
    8c1c:	02010da3          	sb	zero,59(sp)
    8c20:	00012223          	sw	zero,4(sp)
    8c24:	00000913          	li	s2,0
    8c28:	05a00b93          	li	s7,90
    8c2c:	00900c93          	li	s9,9
    8c30:	02a00593          	li	a1,42
    8c34:	00088413          	mv	s0,a7
    8c38:	00198993          	addi	s3,s3,1
    8c3c:	fe068793          	addi	a5,a3,-32
    8c40:	04fbe863          	bltu	s7,a5,8c90 <_svfiprintf_r+0x18c>
    8c44:	01012703          	lw	a4,16(sp)
    8c48:	00279793          	slli	a5,a5,0x2
    8c4c:	00e787b3          	add	a5,a5,a4
    8c50:	0007a783          	lw	a5,0(a5)
    8c54:	00078067          	jr	a5
    8c58:	00012223          	sw	zero,4(sp)
    8c5c:	fd068793          	addi	a5,a3,-48
    8c60:	00412603          	lw	a2,4(sp)
    8c64:	0009c683          	lbu	a3,0(s3)
    8c68:	00198993          	addi	s3,s3,1
    8c6c:	00261713          	slli	a4,a2,0x2
    8c70:	00c70733          	add	a4,a4,a2
    8c74:	00171713          	slli	a4,a4,0x1
    8c78:	00e787b3          	add	a5,a5,a4
    8c7c:	00f12223          	sw	a5,4(sp)
    8c80:	fd068793          	addi	a5,a3,-48
    8c84:	fcfcfee3          	bgeu	s9,a5,8c60 <_svfiprintf_r+0x15c>
    8c88:	fe068793          	addi	a5,a3,-32
    8c8c:	fafbfce3          	bgeu	s7,a5,8c44 <_svfiprintf_r+0x140>
    8c90:	12068a63          	beqz	a3,8dc4 <_svfiprintf_r+0x2c0>
    8c94:	08d10623          	sb	a3,140(sp)
    8c98:	02010da3          	sb	zero,59(sp)
    8c9c:	00100b93          	li	s7,1
    8ca0:	00100c93          	li	s9,1
    8ca4:	08c10413          	addi	s0,sp,140
    8ca8:	00000893          	li	a7,0
    8cac:	00297f13          	andi	t5,s2,2
    8cb0:	000f0463          	beqz	t5,8cb8 <_svfiprintf_r+0x1b4>
    8cb4:	002b8b93          	addi	s7,s7,2
    8cb8:	08497e93          	andi	t4,s2,132
    8cbc:	04812783          	lw	a5,72(sp)
    8cc0:	04412603          	lw	a2,68(sp)
    8cc4:	000e9863          	bnez	t4,8cd4 <_svfiprintf_r+0x1d0>
    8cc8:	00412703          	lw	a4,4(sp)
    8ccc:	41770d33          	sub	s10,a4,s7
    8cd0:	7ba04a63          	bgtz	s10,9484 <_svfiprintf_r+0x980>
    8cd4:	03b14503          	lbu	a0,59(sp)
    8cd8:	00160593          	addi	a1,a2,1
    8cdc:	008d8693          	addi	a3,s11,8
    8ce0:	04050063          	beqz	a0,8d20 <_svfiprintf_r+0x21c>
    8ce4:	03b10513          	addi	a0,sp,59
    8ce8:	00178793          	addi	a5,a5,1
    8cec:	00ada023          	sw	a0,0(s11)
    8cf0:	00100513          	li	a0,1
    8cf4:	00ada223          	sw	a0,4(s11)
    8cf8:	04f12423          	sw	a5,72(sp)
    8cfc:	04b12223          	sw	a1,68(sp)
    8d00:	00700513          	li	a0,7
    8d04:	0ab544e3          	blt	a0,a1,95ac <_svfiprintf_r+0xaa8>
    8d08:	00260f93          	addi	t6,a2,2
    8d0c:	010d8513          	addi	a0,s11,16
    8d10:	00058613          	mv	a2,a1
    8d14:	00068d93          	mv	s11,a3
    8d18:	000f8593          	mv	a1,t6
    8d1c:	00050693          	mv	a3,a0
    8d20:	020f0c63          	beqz	t5,8d58 <_svfiprintf_r+0x254>
    8d24:	03c10613          	addi	a2,sp,60
    8d28:	00278793          	addi	a5,a5,2
    8d2c:	00cda023          	sw	a2,0(s11)
    8d30:	00200613          	li	a2,2
    8d34:	00cda223          	sw	a2,4(s11)
    8d38:	04f12423          	sw	a5,72(sp)
    8d3c:	04b12223          	sw	a1,68(sp)
    8d40:	00700713          	li	a4,7
    8d44:	0ab746e3          	blt	a4,a1,95f0 <_svfiprintf_r+0xaec>
    8d48:	00058613          	mv	a2,a1
    8d4c:	00068d93          	mv	s11,a3
    8d50:	00158593          	addi	a1,a1,1
    8d54:	00868693          	addi	a3,a3,8
    8d58:	08000513          	li	a0,128
    8d5c:	54ae8c63          	beq	t4,a0,92b4 <_svfiprintf_r+0x7b0>
    8d60:	41988d33          	sub	s10,a7,s9
    8d64:	63a04463          	bgtz	s10,938c <_svfiprintf_r+0x888>
    8d68:	00fc87b3          	add	a5,s9,a5
    8d6c:	008da023          	sw	s0,0(s11)
    8d70:	019da223          	sw	s9,4(s11)
    8d74:	04f12423          	sw	a5,72(sp)
    8d78:	04b12223          	sw	a1,68(sp)
    8d7c:	00700713          	li	a4,7
    8d80:	6cb74263          	blt	a4,a1,9444 <_svfiprintf_r+0x940>
    8d84:	00497313          	andi	t1,s2,4
    8d88:	00030863          	beqz	t1,8d98 <_svfiprintf_r+0x294>
    8d8c:	00412703          	lw	a4,4(sp)
    8d90:	41770cb3          	sub	s9,a4,s7
    8d94:	09904ce3          	bgtz	s9,962c <_svfiprintf_r+0xb28>
    8d98:	00412403          	lw	s0,4(sp)
    8d9c:	01745463          	bge	s0,s7,8da4 <_svfiprintf_r+0x2a0>
    8da0:	000b8413          	mv	s0,s7
    8da4:	00812703          	lw	a4,8(sp)
    8da8:	00870733          	add	a4,a4,s0
    8dac:	00e12423          	sw	a4,8(sp)
    8db0:	6a079a63          	bnez	a5,9464 <_svfiprintf_r+0x960>
    8db4:	0009c783          	lbu	a5,0(s3)
    8db8:	04012223          	sw	zero,68(sp)
    8dbc:	000a8d93          	mv	s11,s5
    8dc0:	de0798e3          	bnez	a5,8bb0 <_svfiprintf_r+0xac>
    8dc4:	04812783          	lw	a5,72(sp)
    8dc8:	580792e3          	bnez	a5,9b4c <_svfiprintf_r+0x1048>
    8dcc:	00ca5783          	lhu	a5,12(s4)
    8dd0:	0407f793          	andi	a5,a5,64
    8dd4:	5a0798e3          	bnez	a5,9b84 <_svfiprintf_r+0x1080>
    8dd8:	12c12083          	lw	ra,300(sp)
    8ddc:	12812403          	lw	s0,296(sp)
    8de0:	00812503          	lw	a0,8(sp)
    8de4:	12412483          	lw	s1,292(sp)
    8de8:	12012903          	lw	s2,288(sp)
    8dec:	11c12983          	lw	s3,284(sp)
    8df0:	11812a03          	lw	s4,280(sp)
    8df4:	11412a83          	lw	s5,276(sp)
    8df8:	11012b03          	lw	s6,272(sp)
    8dfc:	10c12b83          	lw	s7,268(sp)
    8e00:	10812c03          	lw	s8,264(sp)
    8e04:	10412c83          	lw	s9,260(sp)
    8e08:	10012d03          	lw	s10,256(sp)
    8e0c:	0fc12d83          	lw	s11,252(sp)
    8e10:	13010113          	addi	sp,sp,304
    8e14:	00008067          	ret
    8e18:	000b0513          	mv	a0,s6
    8e1c:	c49fd0ef          	jal	ra,6a64 <_localeconv_r>
    8e20:	00452783          	lw	a5,4(a0)
    8e24:	00078513          	mv	a0,a5
    8e28:	00f12e23          	sw	a5,28(sp)
    8e2c:	9e9ff0ef          	jal	ra,8814 <strlen>
    8e30:	00050793          	mv	a5,a0
    8e34:	000b0513          	mv	a0,s6
    8e38:	00078d13          	mv	s10,a5
    8e3c:	02f12023          	sw	a5,32(sp)
    8e40:	c25fd0ef          	jal	ra,6a64 <_localeconv_r>
    8e44:	00852783          	lw	a5,8(a0)
    8e48:	02a00593          	li	a1,42
    8e4c:	00f12c23          	sw	a5,24(sp)
    8e50:	1e0d1ce3          	bnez	s10,9848 <_svfiprintf_r+0xd44>
    8e54:	0009c683          	lbu	a3,0(s3)
    8e58:	de1ff06f          	j	8c38 <_svfiprintf_r+0x134>
    8e5c:	0009c683          	lbu	a3,0(s3)
    8e60:	02096913          	ori	s2,s2,32
    8e64:	dd5ff06f          	j	8c38 <_svfiprintf_r+0x134>
    8e68:	41340bb3          	sub	s7,s0,s3
    8e6c:	d73412e3          	bne	s0,s3,8bd0 <_svfiprintf_r+0xcc>
    8e70:	00044783          	lbu	a5,0(s0)
    8e74:	d99ff06f          	j	8c0c <_svfiprintf_r+0x108>
    8e78:	04010613          	addi	a2,sp,64
    8e7c:	000a0593          	mv	a1,s4
    8e80:	000b0513          	mv	a0,s6
    8e84:	ac5ff0ef          	jal	ra,8948 <__ssprint_r>
    8e88:	f40512e3          	bnez	a0,8dcc <_svfiprintf_r+0x2c8>
    8e8c:	000a8d93          	mv	s11,s5
    8e90:	d6dff06f          	j	8bfc <_svfiprintf_r+0xf8>
    8e94:	00c12783          	lw	a5,12(sp)
    8e98:	00040893          	mv	a7,s0
    8e9c:	02010da3          	sb	zero,59(sp)
    8ea0:	0007a403          	lw	s0,0(a5)
    8ea4:	00478d13          	addi	s10,a5,4
    8ea8:	380408e3          	beqz	s0,9a38 <_svfiprintf_r+0xf34>
    8eac:	fff00793          	li	a5,-1
    8eb0:	28f882e3          	beq	a7,a5,9934 <_svfiprintf_r+0xe30>
    8eb4:	00088613          	mv	a2,a7
    8eb8:	00000593          	li	a1,0
    8ebc:	00040513          	mv	a0,s0
    8ec0:	01112623          	sw	a7,12(sp)
    8ec4:	b48fe0ef          	jal	ra,720c <memchr>
    8ec8:	00c12883          	lw	a7,12(sp)
    8ecc:	48050ae3          	beqz	a0,9b60 <_svfiprintf_r+0x105c>
    8ed0:	40850cb3          	sub	s9,a0,s0
    8ed4:	01a12623          	sw	s10,12(sp)
    8ed8:	00000893          	li	a7,0
    8edc:	0940006f          	j	8f70 <_svfiprintf_r+0x46c>
    8ee0:	00c12703          	lw	a4,12(sp)
    8ee4:	02010da3          	sb	zero,59(sp)
    8ee8:	00100b93          	li	s7,1
    8eec:	00072783          	lw	a5,0(a4)
    8ef0:	00470713          	addi	a4,a4,4
    8ef4:	00e12623          	sw	a4,12(sp)
    8ef8:	08f10623          	sb	a5,140(sp)
    8efc:	00100c93          	li	s9,1
    8f00:	08c10413          	addi	s0,sp,140
    8f04:	da5ff06f          	j	8ca8 <_svfiprintf_r+0x1a4>
    8f08:	02097793          	andi	a5,s2,32
    8f0c:	00040893          	mv	a7,s0
    8f10:	0e078e63          	beqz	a5,900c <_svfiprintf_r+0x508>
    8f14:	00c12783          	lw	a5,12(sp)
    8f18:	00778793          	addi	a5,a5,7
    8f1c:	ff87f793          	andi	a5,a5,-8
    8f20:	0047a683          	lw	a3,4(a5)
    8f24:	0007ac83          	lw	s9,0(a5)
    8f28:	00878793          	addi	a5,a5,8
    8f2c:	00f12623          	sw	a5,12(sp)
    8f30:	00068b93          	mv	s7,a3
    8f34:	1006c463          	bltz	a3,903c <_svfiprintf_r+0x538>
    8f38:	fff00693          	li	a3,-1
    8f3c:	00090d13          	mv	s10,s2
    8f40:	00d88863          	beq	a7,a3,8f50 <_svfiprintf_r+0x44c>
    8f44:	017ce6b3          	or	a3,s9,s7
    8f48:	f7f97d13          	andi	s10,s2,-129
    8f4c:	78068263          	beqz	a3,96d0 <_svfiprintf_r+0xbcc>
    8f50:	020b90e3          	bnez	s7,9770 <_svfiprintf_r+0xc6c>
    8f54:	00900693          	li	a3,9
    8f58:	0196ece3          	bltu	a3,s9,9770 <_svfiprintf_r+0xc6c>
    8f5c:	030c8793          	addi	a5,s9,48
    8f60:	0ef107a3          	sb	a5,239(sp)
    8f64:	000d0913          	mv	s2,s10
    8f68:	00100c93          	li	s9,1
    8f6c:	0ef10413          	addi	s0,sp,239
    8f70:	00088b93          	mv	s7,a7
    8f74:	0198d463          	bge	a7,s9,8f7c <_svfiprintf_r+0x478>
    8f78:	000c8b93          	mv	s7,s9
    8f7c:	03b14783          	lbu	a5,59(sp)
    8f80:	00f037b3          	snez	a5,a5
    8f84:	00fb8bb3          	add	s7,s7,a5
    8f88:	d25ff06f          	j	8cac <_svfiprintf_r+0x1a8>
    8f8c:	00040893          	mv	a7,s0
    8f90:	01096913          	ori	s2,s2,16
    8f94:	02097793          	andi	a5,s2,32
    8f98:	74078863          	beqz	a5,96e8 <_svfiprintf_r+0xbe4>
    8f9c:	00c12783          	lw	a5,12(sp)
    8fa0:	00778793          	addi	a5,a5,7
    8fa4:	ff87f793          	andi	a5,a5,-8
    8fa8:	0007ac83          	lw	s9,0(a5)
    8fac:	0047ab83          	lw	s7,4(a5)
    8fb0:	00878793          	addi	a5,a5,8
    8fb4:	00f12623          	sw	a5,12(sp)
    8fb8:	bff97d13          	andi	s10,s2,-1025
    8fbc:	00000693          	li	a3,0
    8fc0:	02010da3          	sb	zero,59(sp)
    8fc4:	fff00613          	li	a2,-1
    8fc8:	08c88e63          	beq	a7,a2,9064 <_svfiprintf_r+0x560>
    8fcc:	017ce633          	or	a2,s9,s7
    8fd0:	f7fd7913          	andi	s2,s10,-129
    8fd4:	4a061463          	bnez	a2,947c <_svfiprintf_r+0x978>
    8fd8:	28089263          	bnez	a7,925c <_svfiprintf_r+0x758>
    8fdc:	6e069e63          	bnez	a3,96d8 <_svfiprintf_r+0xbd4>
    8fe0:	001d7c93          	andi	s9,s10,1
    8fe4:	0f010413          	addi	s0,sp,240
    8fe8:	f80c84e3          	beqz	s9,8f70 <_svfiprintf_r+0x46c>
    8fec:	03000793          	li	a5,48
    8ff0:	0ef107a3          	sb	a5,239(sp)
    8ff4:	0ef10413          	addi	s0,sp,239
    8ff8:	f79ff06f          	j	8f70 <_svfiprintf_r+0x46c>
    8ffc:	01096913          	ori	s2,s2,16
    9000:	02097793          	andi	a5,s2,32
    9004:	00040893          	mv	a7,s0
    9008:	f00796e3          	bnez	a5,8f14 <_svfiprintf_r+0x410>
    900c:	00c12703          	lw	a4,12(sp)
    9010:	01097793          	andi	a5,s2,16
    9014:	00470693          	addi	a3,a4,4
    9018:	040796e3          	bnez	a5,9864 <_svfiprintf_r+0xd60>
    901c:	04097793          	andi	a5,s2,64
    9020:	26078ae3          	beqz	a5,9a94 <_svfiprintf_r+0xf90>
    9024:	00c12783          	lw	a5,12(sp)
    9028:	00d12623          	sw	a3,12(sp)
    902c:	00079c83          	lh	s9,0(a5)
    9030:	41fcdb93          	srai	s7,s9,0x1f
    9034:	000b8693          	mv	a3,s7
    9038:	f006d0e3          	bgez	a3,8f38 <_svfiprintf_r+0x434>
    903c:	019036b3          	snez	a3,s9
    9040:	41700eb3          	neg	t4,s7
    9044:	40de8bb3          	sub	s7,t4,a3
    9048:	02d00693          	li	a3,45
    904c:	02d10da3          	sb	a3,59(sp)
    9050:	fff00613          	li	a2,-1
    9054:	41900cb3          	neg	s9,s9
    9058:	00090d13          	mv	s10,s2
    905c:	00100693          	li	a3,1
    9060:	f6c896e3          	bne	a7,a2,8fcc <_svfiprintf_r+0x4c8>
    9064:	00100613          	li	a2,1
    9068:	eec684e3          	beq	a3,a2,8f50 <_svfiprintf_r+0x44c>
    906c:	00200613          	li	a2,2
    9070:	20c68063          	beq	a3,a2,9270 <_svfiprintf_r+0x76c>
    9074:	0f010413          	addi	s0,sp,240
    9078:	01db9793          	slli	a5,s7,0x1d
    907c:	007cf693          	andi	a3,s9,7
    9080:	003cdc93          	srli	s9,s9,0x3
    9084:	03068693          	addi	a3,a3,48
    9088:	0197ecb3          	or	s9,a5,s9
    908c:	003bdb93          	srli	s7,s7,0x3
    9090:	fed40fa3          	sb	a3,-1(s0)
    9094:	017ce7b3          	or	a5,s9,s7
    9098:	00040593          	mv	a1,s0
    909c:	fff40413          	addi	s0,s0,-1
    90a0:	fc079ce3          	bnez	a5,9078 <_svfiprintf_r+0x574>
    90a4:	001d7793          	andi	a5,s10,1
    90a8:	1e078e63          	beqz	a5,92a4 <_svfiprintf_r+0x7a0>
    90ac:	03000793          	li	a5,48
    90b0:	1ef68a63          	beq	a3,a5,92a4 <_svfiprintf_r+0x7a0>
    90b4:	ffe58593          	addi	a1,a1,-2
    90b8:	fef40fa3          	sb	a5,-1(s0)
    90bc:	0f010793          	addi	a5,sp,240
    90c0:	40b78cb3          	sub	s9,a5,a1
    90c4:	000d0913          	mv	s2,s10
    90c8:	00058413          	mv	s0,a1
    90cc:	ea5ff06f          	j	8f70 <_svfiprintf_r+0x46c>
    90d0:	00040893          	mv	a7,s0
    90d4:	01096d13          	ori	s10,s2,16
    90d8:	020d7793          	andi	a5,s10,32
    90dc:	62078c63          	beqz	a5,9714 <_svfiprintf_r+0xc10>
    90e0:	00c12783          	lw	a5,12(sp)
    90e4:	00100693          	li	a3,1
    90e8:	00778913          	addi	s2,a5,7
    90ec:	ff897913          	andi	s2,s2,-8
    90f0:	00890793          	addi	a5,s2,8
    90f4:	00092c83          	lw	s9,0(s2)
    90f8:	00492b83          	lw	s7,4(s2)
    90fc:	00f12623          	sw	a5,12(sp)
    9100:	ec1ff06f          	j	8fc0 <_svfiprintf_r+0x4bc>
    9104:	00c12783          	lw	a5,12(sp)
    9108:	ffff86b7          	lui	a3,0xffff8
    910c:	8306c693          	xori	a3,a3,-2000
    9110:	0007ac83          	lw	s9,0(a5)
    9114:	00478793          	addi	a5,a5,4
    9118:	00f12623          	sw	a5,12(sp)
    911c:	000137b7          	lui	a5,0x13
    9120:	22478793          	addi	a5,a5,548 # 13224 <hex_symbols.0+0x20>
    9124:	02d11e23          	sh	a3,60(sp)
    9128:	00040893          	mv	a7,s0
    912c:	00000b93          	li	s7,0
    9130:	00296d13          	ori	s10,s2,2
    9134:	00f12a23          	sw	a5,20(sp)
    9138:	00200693          	li	a3,2
    913c:	e85ff06f          	j	8fc0 <_svfiprintf_r+0x4bc>
    9140:	0009c683          	lbu	a3,0(s3)
    9144:	08096913          	ori	s2,s2,128
    9148:	af1ff06f          	j	8c38 <_svfiprintf_r+0x134>
    914c:	0009c683          	lbu	a3,0(s3)
    9150:	00198713          	addi	a4,s3,1
    9154:	22b68ee3          	beq	a3,a1,9b90 <_svfiprintf_r+0x108c>
    9158:	fd068793          	addi	a5,a3,-48 # ffff7fd0 <__ctr0_io_space_begin+0xffff81d0>
    915c:	00070993          	mv	s3,a4
    9160:	00000413          	li	s0,0
    9164:	acfcece3          	bltu	s9,a5,8c3c <_svfiprintf_r+0x138>
    9168:	0009c683          	lbu	a3,0(s3)
    916c:	00241713          	slli	a4,s0,0x2
    9170:	008708b3          	add	a7,a4,s0
    9174:	00189893          	slli	a7,a7,0x1
    9178:	00f88433          	add	s0,a7,a5
    917c:	fd068793          	addi	a5,a3,-48
    9180:	00198993          	addi	s3,s3,1
    9184:	fefcf2e3          	bgeu	s9,a5,9168 <_svfiprintf_r+0x664>
    9188:	ab5ff06f          	j	8c3c <_svfiprintf_r+0x138>
    918c:	0009c683          	lbu	a3,0(s3)
    9190:	00496913          	ori	s2,s2,4
    9194:	aa5ff06f          	j	8c38 <_svfiprintf_r+0x134>
    9198:	02b00793          	li	a5,43
    919c:	0009c683          	lbu	a3,0(s3)
    91a0:	02f10da3          	sb	a5,59(sp)
    91a4:	a95ff06f          	j	8c38 <_svfiprintf_r+0x134>
    91a8:	00c12703          	lw	a4,12(sp)
    91ac:	0009c683          	lbu	a3,0(s3)
    91b0:	00072783          	lw	a5,0(a4)
    91b4:	00470713          	addi	a4,a4,4
    91b8:	00e12623          	sw	a4,12(sp)
    91bc:	00f12223          	sw	a5,4(sp)
    91c0:	a607dce3          	bgez	a5,8c38 <_svfiprintf_r+0x134>
    91c4:	40f007b3          	neg	a5,a5
    91c8:	00f12223          	sw	a5,4(sp)
    91cc:	00496913          	ori	s2,s2,4
    91d0:	a69ff06f          	j	8c38 <_svfiprintf_r+0x134>
    91d4:	0009c683          	lbu	a3,0(s3)
    91d8:	00196913          	ori	s2,s2,1
    91dc:	a5dff06f          	j	8c38 <_svfiprintf_r+0x134>
    91e0:	03b14783          	lbu	a5,59(sp)
    91e4:	0009c683          	lbu	a3,0(s3)
    91e8:	a40798e3          	bnez	a5,8c38 <_svfiprintf_r+0x134>
    91ec:	02000793          	li	a5,32
    91f0:	02f10da3          	sb	a5,59(sp)
    91f4:	a45ff06f          	j	8c38 <_svfiprintf_r+0x134>
    91f8:	0009c683          	lbu	a3,0(s3)
    91fc:	06800793          	li	a5,104
    9200:	00f682e3          	beq	a3,a5,9a04 <_svfiprintf_r+0xf00>
    9204:	04096913          	ori	s2,s2,64
    9208:	a31ff06f          	j	8c38 <_svfiprintf_r+0x134>
    920c:	00c12703          	lw	a4,12(sp)
    9210:	02097793          	andi	a5,s2,32
    9214:	00072683          	lw	a3,0(a4)
    9218:	00470713          	addi	a4,a4,4
    921c:	00e12623          	sw	a4,12(sp)
    9220:	60079063          	bnez	a5,9820 <_svfiprintf_r+0xd1c>
    9224:	01097793          	andi	a5,s2,16
    9228:	000792e3          	bnez	a5,9a2c <_svfiprintf_r+0xf28>
    922c:	04097793          	andi	a5,s2,64
    9230:	100798e3          	bnez	a5,9b40 <_svfiprintf_r+0x103c>
    9234:	20097313          	andi	t1,s2,512
    9238:	7e030a63          	beqz	t1,9a2c <_svfiprintf_r+0xf28>
    923c:	00812783          	lw	a5,8(sp)
    9240:	00f68023          	sb	a5,0(a3)
    9244:	965ff06f          	j	8ba8 <_svfiprintf_r+0xa4>
    9248:	0009c683          	lbu	a3,0(s3)
    924c:	06c00793          	li	a5,108
    9250:	7cf68263          	beq	a3,a5,9a14 <_svfiprintf_r+0xf10>
    9254:	01096913          	ori	s2,s2,16
    9258:	9e1ff06f          	j	8c38 <_svfiprintf_r+0x134>
    925c:	00100613          	li	a2,1
    9260:	10c688e3          	beq	a3,a2,9b70 <_svfiprintf_r+0x106c>
    9264:	00200613          	li	a2,2
    9268:	00090d13          	mv	s10,s2
    926c:	e0c694e3          	bne	a3,a2,9074 <_svfiprintf_r+0x570>
    9270:	01412683          	lw	a3,20(sp)
    9274:	0f010413          	addi	s0,sp,240
    9278:	00fcf793          	andi	a5,s9,15
    927c:	00f687b3          	add	a5,a3,a5
    9280:	0007c703          	lbu	a4,0(a5)
    9284:	004cdc93          	srli	s9,s9,0x4
    9288:	01cb9793          	slli	a5,s7,0x1c
    928c:	0197ecb3          	or	s9,a5,s9
    9290:	004bdb93          	srli	s7,s7,0x4
    9294:	fee40fa3          	sb	a4,-1(s0)
    9298:	017ce7b3          	or	a5,s9,s7
    929c:	fff40413          	addi	s0,s0,-1
    92a0:	fc079ce3          	bnez	a5,9278 <_svfiprintf_r+0x774>
    92a4:	0f010793          	addi	a5,sp,240
    92a8:	40878cb3          	sub	s9,a5,s0
    92ac:	000d0913          	mv	s2,s10
    92b0:	cc1ff06f          	j	8f70 <_svfiprintf_r+0x46c>
    92b4:	00412703          	lw	a4,4(sp)
    92b8:	41770d33          	sub	s10,a4,s7
    92bc:	aba052e3          	blez	s10,8d60 <_svfiprintf_r+0x25c>
    92c0:	01000513          	li	a0,16
    92c4:	0ba55ae3          	bge	a0,s10,9b78 <_svfiprintf_r+0x1074>
    92c8:	02812223          	sw	s0,36(sp)
    92cc:	01000693          	li	a3,16
    92d0:	000a0413          	mv	s0,s4
    92d4:	00700e93          	li	t4,7
    92d8:	000d0a13          	mv	s4,s10
    92dc:	00098d13          	mv	s10,s3
    92e0:	00088993          	mv	s3,a7
    92e4:	00c0006f          	j	92f0 <_svfiprintf_r+0x7ec>
    92e8:	ff0a0a13          	addi	s4,s4,-16
    92ec:	0546da63          	bge	a3,s4,9340 <_svfiprintf_r+0x83c>
    92f0:	01078793          	addi	a5,a5,16
    92f4:	00160613          	addi	a2,a2,1
    92f8:	009da023          	sw	s1,0(s11)
    92fc:	00dda223          	sw	a3,4(s11)
    9300:	04f12423          	sw	a5,72(sp)
    9304:	04c12223          	sw	a2,68(sp)
    9308:	008d8d93          	addi	s11,s11,8
    930c:	fccedee3          	bge	t4,a2,92e8 <_svfiprintf_r+0x7e4>
    9310:	04010613          	addi	a2,sp,64
    9314:	00040593          	mv	a1,s0
    9318:	000b0513          	mv	a0,s6
    931c:	e2cff0ef          	jal	ra,8948 <__ssprint_r>
    9320:	70051263          	bnez	a0,9a24 <_svfiprintf_r+0xf20>
    9324:	01000693          	li	a3,16
    9328:	ff0a0a13          	addi	s4,s4,-16
    932c:	04812783          	lw	a5,72(sp)
    9330:	04412603          	lw	a2,68(sp)
    9334:	000a8d93          	mv	s11,s5
    9338:	00700e93          	li	t4,7
    933c:	fb46cae3          	blt	a3,s4,92f0 <_svfiprintf_r+0x7ec>
    9340:	00098893          	mv	a7,s3
    9344:	000d0993          	mv	s3,s10
    9348:	000a0d13          	mv	s10,s4
    934c:	00040a13          	mv	s4,s0
    9350:	02412403          	lw	s0,36(sp)
    9354:	00160613          	addi	a2,a2,1
    9358:	008d8513          	addi	a0,s11,8
    935c:	01a787b3          	add	a5,a5,s10
    9360:	009da023          	sw	s1,0(s11)
    9364:	01ada223          	sw	s10,4(s11)
    9368:	04f12423          	sw	a5,72(sp)
    936c:	04c12223          	sw	a2,68(sp)
    9370:	00700713          	li	a4,7
    9374:	64c74e63          	blt	a4,a2,99d0 <_svfiprintf_r+0xecc>
    9378:	41988d33          	sub	s10,a7,s9
    937c:	00160593          	addi	a1,a2,1
    9380:	00850693          	addi	a3,a0,8
    9384:	00050d93          	mv	s11,a0
    9388:	9fa050e3          	blez	s10,8d68 <_svfiprintf_r+0x264>
    938c:	01000513          	li	a0,16
    9390:	75a55263          	bge	a0,s10,9ad4 <_svfiprintf_r+0xfd0>
    9394:	01000693          	li	a3,16
    9398:	00700893          	li	a7,7
    939c:	00c0006f          	j	93a8 <_svfiprintf_r+0x8a4>
    93a0:	ff0d0d13          	addi	s10,s10,-16
    93a4:	05a6da63          	bge	a3,s10,93f8 <_svfiprintf_r+0x8f4>
    93a8:	01078793          	addi	a5,a5,16
    93ac:	00160613          	addi	a2,a2,1
    93b0:	009da023          	sw	s1,0(s11)
    93b4:	00dda223          	sw	a3,4(s11)
    93b8:	04f12423          	sw	a5,72(sp)
    93bc:	04c12223          	sw	a2,68(sp)
    93c0:	008d8d93          	addi	s11,s11,8
    93c4:	fcc8dee3          	bge	a7,a2,93a0 <_svfiprintf_r+0x89c>
    93c8:	04010613          	addi	a2,sp,64
    93cc:	000a0593          	mv	a1,s4
    93d0:	000b0513          	mv	a0,s6
    93d4:	d74ff0ef          	jal	ra,8948 <__ssprint_r>
    93d8:	9e051ae3          	bnez	a0,8dcc <_svfiprintf_r+0x2c8>
    93dc:	01000693          	li	a3,16
    93e0:	ff0d0d13          	addi	s10,s10,-16
    93e4:	04812783          	lw	a5,72(sp)
    93e8:	04412603          	lw	a2,68(sp)
    93ec:	000a8d93          	mv	s11,s5
    93f0:	00700893          	li	a7,7
    93f4:	fba6cae3          	blt	a3,s10,93a8 <_svfiprintf_r+0x8a4>
    93f8:	00160593          	addi	a1,a2,1
    93fc:	008d8613          	addi	a2,s11,8
    9400:	01a787b3          	add	a5,a5,s10
    9404:	009da023          	sw	s1,0(s11)
    9408:	01ada223          	sw	s10,4(s11)
    940c:	04f12423          	sw	a5,72(sp)
    9410:	04b12223          	sw	a1,68(sp)
    9414:	00700713          	li	a4,7
    9418:	32b74663          	blt	a4,a1,9744 <_svfiprintf_r+0xc40>
    941c:	00060d93          	mv	s11,a2
    9420:	00158593          	addi	a1,a1,1
    9424:	00fc87b3          	add	a5,s9,a5
    9428:	008da023          	sw	s0,0(s11)
    942c:	019da223          	sw	s9,4(s11)
    9430:	04f12423          	sw	a5,72(sp)
    9434:	04b12223          	sw	a1,68(sp)
    9438:	00700713          	li	a4,7
    943c:	00860693          	addi	a3,a2,8
    9440:	94b752e3          	bge	a4,a1,8d84 <_svfiprintf_r+0x280>
    9444:	04010613          	addi	a2,sp,64
    9448:	000a0593          	mv	a1,s4
    944c:	000b0513          	mv	a0,s6
    9450:	cf8ff0ef          	jal	ra,8948 <__ssprint_r>
    9454:	96051ce3          	bnez	a0,8dcc <_svfiprintf_r+0x2c8>
    9458:	04812783          	lw	a5,72(sp)
    945c:	000a8693          	mv	a3,s5
    9460:	925ff06f          	j	8d84 <_svfiprintf_r+0x280>
    9464:	04010613          	addi	a2,sp,64
    9468:	000a0593          	mv	a1,s4
    946c:	000b0513          	mv	a0,s6
    9470:	cd8ff0ef          	jal	ra,8948 <__ssprint_r>
    9474:	940500e3          	beqz	a0,8db4 <_svfiprintf_r+0x2b0>
    9478:	955ff06f          	j	8dcc <_svfiprintf_r+0x2c8>
    947c:	00090d13          	mv	s10,s2
    9480:	be5ff06f          	j	9064 <_svfiprintf_r+0x560>
    9484:	01000693          	li	a3,16
    9488:	0da6d263          	bge	a3,s10,954c <_svfiprintf_r+0xa48>
    948c:	00098593          	mv	a1,s3
    9490:	000d8713          	mv	a4,s11
    9494:	00040993          	mv	s3,s0
    9498:	000c8d93          	mv	s11,s9
    949c:	000d0413          	mv	s0,s10
    94a0:	00700f93          	li	t6,7
    94a4:	000b8d13          	mv	s10,s7
    94a8:	03e12223          	sw	t5,36(sp)
    94ac:	00090b93          	mv	s7,s2
    94b0:	03d12423          	sw	t4,40(sp)
    94b4:	000a0913          	mv	s2,s4
    94b8:	00088c93          	mv	s9,a7
    94bc:	00058a13          	mv	s4,a1
    94c0:	00c0006f          	j	94cc <_svfiprintf_r+0x9c8>
    94c4:	ff040413          	addi	s0,s0,-16
    94c8:	0486da63          	bge	a3,s0,951c <_svfiprintf_r+0xa18>
    94cc:	01078793          	addi	a5,a5,16
    94d0:	00160613          	addi	a2,a2,1
    94d4:	01872023          	sw	s8,0(a4)
    94d8:	00d72223          	sw	a3,4(a4)
    94dc:	04f12423          	sw	a5,72(sp)
    94e0:	04c12223          	sw	a2,68(sp)
    94e4:	00870713          	addi	a4,a4,8
    94e8:	fccfdee3          	bge	t6,a2,94c4 <_svfiprintf_r+0x9c0>
    94ec:	04010613          	addi	a2,sp,64
    94f0:	00090593          	mv	a1,s2
    94f4:	000b0513          	mv	a0,s6
    94f8:	c50ff0ef          	jal	ra,8948 <__ssprint_r>
    94fc:	4a051863          	bnez	a0,99ac <_svfiprintf_r+0xea8>
    9500:	01000693          	li	a3,16
    9504:	ff040413          	addi	s0,s0,-16
    9508:	04812783          	lw	a5,72(sp)
    950c:	04412603          	lw	a2,68(sp)
    9510:	000a8713          	mv	a4,s5
    9514:	00700f93          	li	t6,7
    9518:	fa86cae3          	blt	a3,s0,94cc <_svfiprintf_r+0x9c8>
    951c:	02412f03          	lw	t5,36(sp)
    9520:	02812e83          	lw	t4,40(sp)
    9524:	000c8893          	mv	a7,s9
    9528:	000d8c93          	mv	s9,s11
    952c:	00070d93          	mv	s11,a4
    9530:	000a0713          	mv	a4,s4
    9534:	00090a13          	mv	s4,s2
    9538:	000b8913          	mv	s2,s7
    953c:	000d0b93          	mv	s7,s10
    9540:	00040d13          	mv	s10,s0
    9544:	00098413          	mv	s0,s3
    9548:	00070993          	mv	s3,a4
    954c:	01a787b3          	add	a5,a5,s10
    9550:	00160613          	addi	a2,a2,1
    9554:	018da023          	sw	s8,0(s11)
    9558:	01ada223          	sw	s10,4(s11)
    955c:	04f12423          	sw	a5,72(sp)
    9560:	04c12223          	sw	a2,68(sp)
    9564:	00700693          	li	a3,7
    9568:	008d8d93          	addi	s11,s11,8
    956c:	f6c6d463          	bge	a3,a2,8cd4 <_svfiprintf_r+0x1d0>
    9570:	04010613          	addi	a2,sp,64
    9574:	000a0593          	mv	a1,s4
    9578:	000b0513          	mv	a0,s6
    957c:	03112623          	sw	a7,44(sp)
    9580:	03d12423          	sw	t4,40(sp)
    9584:	03e12223          	sw	t5,36(sp)
    9588:	bc0ff0ef          	jal	ra,8948 <__ssprint_r>
    958c:	840510e3          	bnez	a0,8dcc <_svfiprintf_r+0x2c8>
    9590:	04812783          	lw	a5,72(sp)
    9594:	04412603          	lw	a2,68(sp)
    9598:	02c12883          	lw	a7,44(sp)
    959c:	02812e83          	lw	t4,40(sp)
    95a0:	02412f03          	lw	t5,36(sp)
    95a4:	000a8d93          	mv	s11,s5
    95a8:	f2cff06f          	j	8cd4 <_svfiprintf_r+0x1d0>
    95ac:	04010613          	addi	a2,sp,64
    95b0:	000a0593          	mv	a1,s4
    95b4:	000b0513          	mv	a0,s6
    95b8:	03112623          	sw	a7,44(sp)
    95bc:	03d12423          	sw	t4,40(sp)
    95c0:	03e12223          	sw	t5,36(sp)
    95c4:	b84ff0ef          	jal	ra,8948 <__ssprint_r>
    95c8:	800512e3          	bnez	a0,8dcc <_svfiprintf_r+0x2c8>
    95cc:	04412603          	lw	a2,68(sp)
    95d0:	04812783          	lw	a5,72(sp)
    95d4:	02c12883          	lw	a7,44(sp)
    95d8:	02812e83          	lw	t4,40(sp)
    95dc:	02412f03          	lw	t5,36(sp)
    95e0:	05410693          	addi	a3,sp,84
    95e4:	00160593          	addi	a1,a2,1
    95e8:	000a8d93          	mv	s11,s5
    95ec:	f34ff06f          	j	8d20 <_svfiprintf_r+0x21c>
    95f0:	04010613          	addi	a2,sp,64
    95f4:	000a0593          	mv	a1,s4
    95f8:	000b0513          	mv	a0,s6
    95fc:	03112423          	sw	a7,40(sp)
    9600:	03d12223          	sw	t4,36(sp)
    9604:	b44ff0ef          	jal	ra,8948 <__ssprint_r>
    9608:	fc051263          	bnez	a0,8dcc <_svfiprintf_r+0x2c8>
    960c:	04412603          	lw	a2,68(sp)
    9610:	04812783          	lw	a5,72(sp)
    9614:	02812883          	lw	a7,40(sp)
    9618:	02412e83          	lw	t4,36(sp)
    961c:	05410693          	addi	a3,sp,84
    9620:	00160593          	addi	a1,a2,1
    9624:	000a8d93          	mv	s11,s5
    9628:	f30ff06f          	j	8d58 <_svfiprintf_r+0x254>
    962c:	01000613          	li	a2,16
    9630:	04412703          	lw	a4,68(sp)
    9634:	07965063          	bge	a2,s9,9694 <_svfiprintf_r+0xb90>
    9638:	01000d13          	li	s10,16
    963c:	00700413          	li	s0,7
    9640:	00c0006f          	j	964c <_svfiprintf_r+0xb48>
    9644:	ff0c8c93          	addi	s9,s9,-16
    9648:	059d5663          	bge	s10,s9,9694 <_svfiprintf_r+0xb90>
    964c:	01078793          	addi	a5,a5,16
    9650:	00170713          	addi	a4,a4,1
    9654:	0186a023          	sw	s8,0(a3)
    9658:	01a6a223          	sw	s10,4(a3)
    965c:	04f12423          	sw	a5,72(sp)
    9660:	04e12223          	sw	a4,68(sp)
    9664:	00868693          	addi	a3,a3,8
    9668:	fce45ee3          	bge	s0,a4,9644 <_svfiprintf_r+0xb40>
    966c:	04010613          	addi	a2,sp,64
    9670:	000a0593          	mv	a1,s4
    9674:	000b0513          	mv	a0,s6
    9678:	ad0ff0ef          	jal	ra,8948 <__ssprint_r>
    967c:	f4051863          	bnez	a0,8dcc <_svfiprintf_r+0x2c8>
    9680:	ff0c8c93          	addi	s9,s9,-16
    9684:	04812783          	lw	a5,72(sp)
    9688:	04412703          	lw	a4,68(sp)
    968c:	000a8693          	mv	a3,s5
    9690:	fb9d4ee3          	blt	s10,s9,964c <_svfiprintf_r+0xb48>
    9694:	019787b3          	add	a5,a5,s9
    9698:	00170713          	addi	a4,a4,1
    969c:	0186a023          	sw	s8,0(a3)
    96a0:	0196a223          	sw	s9,4(a3)
    96a4:	04f12423          	sw	a5,72(sp)
    96a8:	04e12223          	sw	a4,68(sp)
    96ac:	00700693          	li	a3,7
    96b0:	eee6d463          	bge	a3,a4,8d98 <_svfiprintf_r+0x294>
    96b4:	04010613          	addi	a2,sp,64
    96b8:	000a0593          	mv	a1,s4
    96bc:	000b0513          	mv	a0,s6
    96c0:	a88ff0ef          	jal	ra,8948 <__ssprint_r>
    96c4:	f0051463          	bnez	a0,8dcc <_svfiprintf_r+0x2c8>
    96c8:	04812783          	lw	a5,72(sp)
    96cc:	eccff06f          	j	8d98 <_svfiprintf_r+0x294>
    96d0:	880896e3          	bnez	a7,8f5c <_svfiprintf_r+0x458>
    96d4:	000d0913          	mv	s2,s10
    96d8:	00000893          	li	a7,0
    96dc:	00000c93          	li	s9,0
    96e0:	0f010413          	addi	s0,sp,240
    96e4:	88dff06f          	j	8f70 <_svfiprintf_r+0x46c>
    96e8:	00c12703          	lw	a4,12(sp)
    96ec:	01097793          	andi	a5,s2,16
    96f0:	00470693          	addi	a3,a4,4
    96f4:	18079263          	bnez	a5,9878 <_svfiprintf_r+0xd74>
    96f8:	04097793          	andi	a5,s2,64
    96fc:	36078e63          	beqz	a5,9a78 <_svfiprintf_r+0xf74>
    9700:	00c12783          	lw	a5,12(sp)
    9704:	00000b93          	li	s7,0
    9708:	00d12623          	sw	a3,12(sp)
    970c:	0007dc83          	lhu	s9,0(a5)
    9710:	8a9ff06f          	j	8fb8 <_svfiprintf_r+0x4b4>
    9714:	00c12703          	lw	a4,12(sp)
    9718:	010d7793          	andi	a5,s10,16
    971c:	00470693          	addi	a3,a4,4
    9720:	10079a63          	bnez	a5,9834 <_svfiprintf_r+0xd30>
    9724:	040d7793          	andi	a5,s10,64
    9728:	38078663          	beqz	a5,9ab4 <_svfiprintf_r+0xfb0>
    972c:	00c12783          	lw	a5,12(sp)
    9730:	00000b93          	li	s7,0
    9734:	00d12623          	sw	a3,12(sp)
    9738:	0007dc83          	lhu	s9,0(a5)
    973c:	00100693          	li	a3,1
    9740:	881ff06f          	j	8fc0 <_svfiprintf_r+0x4bc>
    9744:	04010613          	addi	a2,sp,64
    9748:	000a0593          	mv	a1,s4
    974c:	000b0513          	mv	a0,s6
    9750:	9f8ff0ef          	jal	ra,8948 <__ssprint_r>
    9754:	e6051c63          	bnez	a0,8dcc <_svfiprintf_r+0x2c8>
    9758:	04412583          	lw	a1,68(sp)
    975c:	04812783          	lw	a5,72(sp)
    9760:	05410693          	addi	a3,sp,84
    9764:	00158593          	addi	a1,a1,1
    9768:	000a8d93          	mv	s11,s5
    976c:	dfcff06f          	j	8d68 <_svfiprintf_r+0x264>
    9770:	400d7793          	andi	a5,s10,1024
    9774:	03412423          	sw	s4,40(sp)
    9778:	03312623          	sw	s3,44(sp)
    977c:	000b8a13          	mv	s4,s7
    9780:	000c8993          	mv	s3,s9
    9784:	00000913          	li	s2,0
    9788:	01812c83          	lw	s9,24(sp)
    978c:	0f010413          	addi	s0,sp,240
    9790:	03112223          	sw	a7,36(sp)
    9794:	00078b93          	mv	s7,a5
    9798:	0240006f          	j	97bc <_svfiprintf_r+0xcb8>
    979c:	00a00613          	li	a2,10
    97a0:	00000693          	li	a3,0
    97a4:	00098513          	mv	a0,s3
    97a8:	000a0593          	mv	a1,s4
    97ac:	101040ef          	jal	ra,e0ac <__udivdi3>
    97b0:	320a0663          	beqz	s4,9adc <_svfiprintf_r+0xfd8>
    97b4:	00050993          	mv	s3,a0
    97b8:	00058a13          	mv	s4,a1
    97bc:	00a00613          	li	a2,10
    97c0:	00000693          	li	a3,0
    97c4:	00098513          	mv	a0,s3
    97c8:	000a0593          	mv	a1,s4
    97cc:	6b9040ef          	jal	ra,e684 <__umoddi3>
    97d0:	03050513          	addi	a0,a0,48
    97d4:	fea40fa3          	sb	a0,-1(s0)
    97d8:	00190913          	addi	s2,s2,1
    97dc:	fff40413          	addi	s0,s0,-1
    97e0:	fa0b8ee3          	beqz	s7,979c <_svfiprintf_r+0xc98>
    97e4:	000cc683          	lbu	a3,0(s9)
    97e8:	fb269ae3          	bne	a3,s2,979c <_svfiprintf_r+0xc98>
    97ec:	0ff00793          	li	a5,255
    97f0:	faf906e3          	beq	s2,a5,979c <_svfiprintf_r+0xc98>
    97f4:	160a1c63          	bnez	s4,996c <_svfiprintf_r+0xe68>
    97f8:	00900793          	li	a5,9
    97fc:	1737e863          	bltu	a5,s3,996c <_svfiprintf_r+0xe68>
    9800:	0f010793          	addi	a5,sp,240
    9804:	01912c23          	sw	s9,24(sp)
    9808:	02412883          	lw	a7,36(sp)
    980c:	02812a03          	lw	s4,40(sp)
    9810:	02c12983          	lw	s3,44(sp)
    9814:	40878cb3          	sub	s9,a5,s0
    9818:	000d0913          	mv	s2,s10
    981c:	f54ff06f          	j	8f70 <_svfiprintf_r+0x46c>
    9820:	00812703          	lw	a4,8(sp)
    9824:	41f75793          	srai	a5,a4,0x1f
    9828:	00e6a023          	sw	a4,0(a3)
    982c:	00f6a223          	sw	a5,4(a3)
    9830:	b78ff06f          	j	8ba8 <_svfiprintf_r+0xa4>
    9834:	00d12623          	sw	a3,12(sp)
    9838:	00072c83          	lw	s9,0(a4)
    983c:	00000b93          	li	s7,0
    9840:	00100693          	li	a3,1
    9844:	f7cff06f          	j	8fc0 <_svfiprintf_r+0x4bc>
    9848:	01812783          	lw	a5,24(sp)
    984c:	0009c683          	lbu	a3,0(s3)
    9850:	be078463          	beqz	a5,8c38 <_svfiprintf_r+0x134>
    9854:	0007c783          	lbu	a5,0(a5)
    9858:	be078063          	beqz	a5,8c38 <_svfiprintf_r+0x134>
    985c:	40096913          	ori	s2,s2,1024
    9860:	bd8ff06f          	j	8c38 <_svfiprintf_r+0x134>
    9864:	00072c83          	lw	s9,0(a4)
    9868:	00d12623          	sw	a3,12(sp)
    986c:	41fcdb93          	srai	s7,s9,0x1f
    9870:	000b8693          	mv	a3,s7
    9874:	ec0ff06f          	j	8f34 <_svfiprintf_r+0x430>
    9878:	00072c83          	lw	s9,0(a4)
    987c:	00000b93          	li	s7,0
    9880:	00d12623          	sw	a3,12(sp)
    9884:	f34ff06f          	j	8fb8 <_svfiprintf_r+0x4b4>
    9888:	000137b7          	lui	a5,0x13
    988c:	23878793          	addi	a5,a5,568 # 13238 <hex_symbols.0+0x34>
    9890:	00f12a23          	sw	a5,20(sp)
    9894:	02097793          	andi	a5,s2,32
    9898:	00040893          	mv	a7,s0
    989c:	06078c63          	beqz	a5,9914 <_svfiprintf_r+0xe10>
    98a0:	00c12783          	lw	a5,12(sp)
    98a4:	00778793          	addi	a5,a5,7
    98a8:	ff87f793          	andi	a5,a5,-8
    98ac:	0007ac83          	lw	s9,0(a5)
    98b0:	0047ab83          	lw	s7,4(a5)
    98b4:	00878793          	addi	a5,a5,8
    98b8:	00f12623          	sw	a5,12(sp)
    98bc:	00197613          	andi	a2,s2,1
    98c0:	00060e63          	beqz	a2,98dc <_svfiprintf_r+0xdd8>
    98c4:	017ce633          	or	a2,s9,s7
    98c8:	00060a63          	beqz	a2,98dc <_svfiprintf_r+0xdd8>
    98cc:	03000613          	li	a2,48
    98d0:	02c10e23          	sb	a2,60(sp)
    98d4:	02d10ea3          	sb	a3,61(sp)
    98d8:	00296913          	ori	s2,s2,2
    98dc:	bff97d13          	andi	s10,s2,-1025
    98e0:	00200693          	li	a3,2
    98e4:	edcff06f          	j	8fc0 <_svfiprintf_r+0x4bc>
    98e8:	00040893          	mv	a7,s0
    98ec:	00090d13          	mv	s10,s2
    98f0:	fe8ff06f          	j	90d8 <_svfiprintf_r+0x5d4>
    98f4:	00040893          	mv	a7,s0
    98f8:	e9cff06f          	j	8f94 <_svfiprintf_r+0x490>
    98fc:	000137b7          	lui	a5,0x13
    9900:	22478793          	addi	a5,a5,548 # 13224 <hex_symbols.0+0x20>
    9904:	00f12a23          	sw	a5,20(sp)
    9908:	02097793          	andi	a5,s2,32
    990c:	00040893          	mv	a7,s0
    9910:	f80798e3          	bnez	a5,98a0 <_svfiprintf_r+0xd9c>
    9914:	00c12703          	lw	a4,12(sp)
    9918:	01097793          	andi	a5,s2,16
    991c:	00470613          	addi	a2,a4,4
    9920:	08078a63          	beqz	a5,99b4 <_svfiprintf_r+0xeb0>
    9924:	00072c83          	lw	s9,0(a4)
    9928:	00000b93          	li	s7,0
    992c:	00c12623          	sw	a2,12(sp)
    9930:	f8dff06f          	j	98bc <_svfiprintf_r+0xdb8>
    9934:	00040513          	mv	a0,s0
    9938:	eddfe0ef          	jal	ra,8814 <strlen>
    993c:	00050c93          	mv	s9,a0
    9940:	01a12623          	sw	s10,12(sp)
    9944:	00000893          	li	a7,0
    9948:	e28ff06f          	j	8f70 <_svfiprintf_r+0x46c>
    994c:	04000593          	li	a1,64
    9950:	924fd0ef          	jal	ra,6a74 <_malloc_r>
    9954:	00aa2023          	sw	a0,0(s4)
    9958:	00aa2823          	sw	a0,16(s4)
    995c:	24050c63          	beqz	a0,9bb4 <_svfiprintf_r+0x10b0>
    9960:	04000793          	li	a5,64
    9964:	00fa2a23          	sw	a5,20(s4)
    9968:	9f8ff06f          	j	8b60 <_svfiprintf_r+0x5c>
    996c:	02012783          	lw	a5,32(sp)
    9970:	01c12583          	lw	a1,28(sp)
    9974:	00000913          	li	s2,0
    9978:	40f40433          	sub	s0,s0,a5
    997c:	00078613          	mv	a2,a5
    9980:	00040513          	mv	a0,s0
    9984:	f1dfe0ef          	jal	ra,88a0 <strncpy>
    9988:	001cc583          	lbu	a1,1(s9)
    998c:	00a00613          	li	a2,10
    9990:	00000693          	li	a3,0
    9994:	00b03833          	snez	a6,a1
    9998:	00098513          	mv	a0,s3
    999c:	000a0593          	mv	a1,s4
    99a0:	010c8cb3          	add	s9,s9,a6
    99a4:	708040ef          	jal	ra,e0ac <__udivdi3>
    99a8:	e0dff06f          	j	97b4 <_svfiprintf_r+0xcb0>
    99ac:	00090a13          	mv	s4,s2
    99b0:	c1cff06f          	j	8dcc <_svfiprintf_r+0x2c8>
    99b4:	04097793          	andi	a5,s2,64
    99b8:	0a078263          	beqz	a5,9a5c <_svfiprintf_r+0xf58>
    99bc:	00c12783          	lw	a5,12(sp)
    99c0:	00000b93          	li	s7,0
    99c4:	00c12623          	sw	a2,12(sp)
    99c8:	0007dc83          	lhu	s9,0(a5)
    99cc:	ef1ff06f          	j	98bc <_svfiprintf_r+0xdb8>
    99d0:	04010613          	addi	a2,sp,64
    99d4:	000a0593          	mv	a1,s4
    99d8:	000b0513          	mv	a0,s6
    99dc:	03112223          	sw	a7,36(sp)
    99e0:	f69fe0ef          	jal	ra,8948 <__ssprint_r>
    99e4:	be051463          	bnez	a0,8dcc <_svfiprintf_r+0x2c8>
    99e8:	04412603          	lw	a2,68(sp)
    99ec:	04812783          	lw	a5,72(sp)
    99f0:	02412883          	lw	a7,36(sp)
    99f4:	05410693          	addi	a3,sp,84
    99f8:	00160593          	addi	a1,a2,1
    99fc:	000a8d93          	mv	s11,s5
    9a00:	b60ff06f          	j	8d60 <_svfiprintf_r+0x25c>
    9a04:	0019c683          	lbu	a3,1(s3)
    9a08:	20096913          	ori	s2,s2,512
    9a0c:	00198993          	addi	s3,s3,1
    9a10:	a28ff06f          	j	8c38 <_svfiprintf_r+0x134>
    9a14:	0019c683          	lbu	a3,1(s3)
    9a18:	02096913          	ori	s2,s2,32
    9a1c:	00198993          	addi	s3,s3,1
    9a20:	a18ff06f          	j	8c38 <_svfiprintf_r+0x134>
    9a24:	00040a13          	mv	s4,s0
    9a28:	ba4ff06f          	j	8dcc <_svfiprintf_r+0x2c8>
    9a2c:	00812783          	lw	a5,8(sp)
    9a30:	00f6a023          	sw	a5,0(a3)
    9a34:	974ff06f          	j	8ba8 <_svfiprintf_r+0xa4>
    9a38:	00600793          	li	a5,6
    9a3c:	00088c93          	mv	s9,a7
    9a40:	0117f463          	bgeu	a5,a7,9a48 <_svfiprintf_r+0xf44>
    9a44:	00600c93          	li	s9,6
    9a48:	00013e37          	lui	t3,0x13
    9a4c:	000c8b93          	mv	s7,s9
    9a50:	01a12623          	sw	s10,12(sp)
    9a54:	24ce0413          	addi	s0,t3,588 # 1324c <hex_symbols.0+0x48>
    9a58:	a50ff06f          	j	8ca8 <_svfiprintf_r+0x1a4>
    9a5c:	20097793          	andi	a5,s2,512
    9a60:	0c078663          	beqz	a5,9b2c <_svfiprintf_r+0x1028>
    9a64:	00c12783          	lw	a5,12(sp)
    9a68:	00000b93          	li	s7,0
    9a6c:	00c12623          	sw	a2,12(sp)
    9a70:	0007cc83          	lbu	s9,0(a5)
    9a74:	e49ff06f          	j	98bc <_svfiprintf_r+0xdb8>
    9a78:	20097793          	andi	a5,s2,512
    9a7c:	08078e63          	beqz	a5,9b18 <_svfiprintf_r+0x1014>
    9a80:	00c12783          	lw	a5,12(sp)
    9a84:	00000b93          	li	s7,0
    9a88:	00d12623          	sw	a3,12(sp)
    9a8c:	0007cc83          	lbu	s9,0(a5)
    9a90:	d28ff06f          	j	8fb8 <_svfiprintf_r+0x4b4>
    9a94:	20097793          	andi	a5,s2,512
    9a98:	06078463          	beqz	a5,9b00 <_svfiprintf_r+0xffc>
    9a9c:	00c12783          	lw	a5,12(sp)
    9aa0:	00d12623          	sw	a3,12(sp)
    9aa4:	00078c83          	lb	s9,0(a5)
    9aa8:	41fcdb93          	srai	s7,s9,0x1f
    9aac:	000b8693          	mv	a3,s7
    9ab0:	c84ff06f          	j	8f34 <_svfiprintf_r+0x430>
    9ab4:	200d7793          	andi	a5,s10,512
    9ab8:	02078863          	beqz	a5,9ae8 <_svfiprintf_r+0xfe4>
    9abc:	00c12783          	lw	a5,12(sp)
    9ac0:	00000b93          	li	s7,0
    9ac4:	00d12623          	sw	a3,12(sp)
    9ac8:	0007cc83          	lbu	s9,0(a5)
    9acc:	00100693          	li	a3,1
    9ad0:	cf0ff06f          	j	8fc0 <_svfiprintf_r+0x4bc>
    9ad4:	00068613          	mv	a2,a3
    9ad8:	929ff06f          	j	9400 <_svfiprintf_r+0x8fc>
    9adc:	00900793          	li	a5,9
    9ae0:	cd37eae3          	bltu	a5,s3,97b4 <_svfiprintf_r+0xcb0>
    9ae4:	d1dff06f          	j	9800 <_svfiprintf_r+0xcfc>
    9ae8:	00c12783          	lw	a5,12(sp)
    9aec:	00000b93          	li	s7,0
    9af0:	00d12623          	sw	a3,12(sp)
    9af4:	0007ac83          	lw	s9,0(a5)
    9af8:	00100693          	li	a3,1
    9afc:	cc4ff06f          	j	8fc0 <_svfiprintf_r+0x4bc>
    9b00:	00c12783          	lw	a5,12(sp)
    9b04:	00d12623          	sw	a3,12(sp)
    9b08:	0007ac83          	lw	s9,0(a5)
    9b0c:	41fcdb93          	srai	s7,s9,0x1f
    9b10:	000b8693          	mv	a3,s7
    9b14:	c20ff06f          	j	8f34 <_svfiprintf_r+0x430>
    9b18:	00c12783          	lw	a5,12(sp)
    9b1c:	00000b93          	li	s7,0
    9b20:	00d12623          	sw	a3,12(sp)
    9b24:	0007ac83          	lw	s9,0(a5)
    9b28:	c90ff06f          	j	8fb8 <_svfiprintf_r+0x4b4>
    9b2c:	00c12783          	lw	a5,12(sp)
    9b30:	00000b93          	li	s7,0
    9b34:	00c12623          	sw	a2,12(sp)
    9b38:	0007ac83          	lw	s9,0(a5)
    9b3c:	d81ff06f          	j	98bc <_svfiprintf_r+0xdb8>
    9b40:	00812783          	lw	a5,8(sp)
    9b44:	00f69023          	sh	a5,0(a3)
    9b48:	860ff06f          	j	8ba8 <_svfiprintf_r+0xa4>
    9b4c:	04010613          	addi	a2,sp,64
    9b50:	000a0593          	mv	a1,s4
    9b54:	000b0513          	mv	a0,s6
    9b58:	df1fe0ef          	jal	ra,8948 <__ssprint_r>
    9b5c:	a70ff06f          	j	8dcc <_svfiprintf_r+0x2c8>
    9b60:	00088c93          	mv	s9,a7
    9b64:	01a12623          	sw	s10,12(sp)
    9b68:	00000893          	li	a7,0
    9b6c:	c04ff06f          	j	8f70 <_svfiprintf_r+0x46c>
    9b70:	00090d13          	mv	s10,s2
    9b74:	be8ff06f          	j	8f5c <_svfiprintf_r+0x458>
    9b78:	00068513          	mv	a0,a3
    9b7c:	00058613          	mv	a2,a1
    9b80:	fdcff06f          	j	935c <_svfiprintf_r+0x858>
    9b84:	fff00793          	li	a5,-1
    9b88:	00f12423          	sw	a5,8(sp)
    9b8c:	a4cff06f          	j	8dd8 <_svfiprintf_r+0x2d4>
    9b90:	00c12783          	lw	a5,12(sp)
    9b94:	0007a403          	lw	s0,0(a5)
    9b98:	00478793          	addi	a5,a5,4
    9b9c:	00045463          	bgez	s0,9ba4 <_svfiprintf_r+0x10a0>
    9ba0:	fff00413          	li	s0,-1
    9ba4:	0019c683          	lbu	a3,1(s3)
    9ba8:	00f12623          	sw	a5,12(sp)
    9bac:	00070993          	mv	s3,a4
    9bb0:	888ff06f          	j	8c38 <_svfiprintf_r+0x134>
    9bb4:	00c00793          	li	a5,12
    9bb8:	00fb2023          	sw	a5,0(s6)
    9bbc:	fff00793          	li	a5,-1
    9bc0:	00f12423          	sw	a5,8(sp)
    9bc4:	a14ff06f          	j	8dd8 <_svfiprintf_r+0x2d4>

00009bc8 <__assert_func>:
    9bc8:	1bc1a703          	lw	a4,444(gp) # 800009bc <_impure_ptr>
    9bcc:	ff010113          	addi	sp,sp,-16
    9bd0:	00068793          	mv	a5,a3
    9bd4:	00060813          	mv	a6,a2
    9bd8:	00112623          	sw	ra,12(sp)
    9bdc:	00c72883          	lw	a7,12(a4)
    9be0:	00050693          	mv	a3,a0
    9be4:	00058713          	mv	a4,a1
    9be8:	00078613          	mv	a2,a5
    9bec:	02080063          	beqz	a6,9c0c <__assert_func+0x44>
    9bf0:	000147b7          	lui	a5,0x14
    9bf4:	9cc78793          	addi	a5,a5,-1588 # 139cc <zeroes.0+0x10>
    9bf8:	000145b7          	lui	a1,0x14
    9bfc:	9dc58593          	addi	a1,a1,-1572 # 139dc <zeroes.0+0x20>
    9c00:	00088513          	mv	a0,a7
    9c04:	1f8000ef          	jal	ra,9dfc <fiprintf>
    9c08:	280020ef          	jal	ra,be88 <abort>
    9c0c:	00013837          	lui	a6,0x13
    9c10:	e4c80793          	addi	a5,a6,-436 # 12e4c <__etext+0x28>
    9c14:	e4c80813          	addi	a6,a6,-436
    9c18:	fe1ff06f          	j	9bf8 <__assert_func+0x30>

00009c1c <__assert>:
    9c1c:	ff010113          	addi	sp,sp,-16
    9c20:	00060693          	mv	a3,a2
    9c24:	00000613          	li	a2,0
    9c28:	00112623          	sw	ra,12(sp)
    9c2c:	f9dff0ef          	jal	ra,9bc8 <__assert_func>

00009c30 <_calloc_r>:
    9c30:	fe010113          	addi	sp,sp,-32
    9c34:	00812c23          	sw	s0,24(sp)
    9c38:	00112e23          	sw	ra,28(sp)
    9c3c:	00912a23          	sw	s1,20(sp)
    9c40:	01212823          	sw	s2,16(sp)
    9c44:	01312623          	sw	s3,12(sp)
    9c48:	0105d693          	srli	a3,a1,0x10
    9c4c:	00058793          	mv	a5,a1
    9c50:	00050413          	mv	s0,a0
    9c54:	01065713          	srli	a4,a2,0x10
    9c58:	0c069c63          	bnez	a3,9d30 <_calloc_r+0x100>
    9c5c:	12071863          	bnez	a4,9d8c <_calloc_r+0x15c>
    9c60:	01061593          	slli	a1,a2,0x10
    9c64:	01079513          	slli	a0,a5,0x10
    9c68:	0105d593          	srli	a1,a1,0x10
    9c6c:	01055513          	srli	a0,a0,0x10
    9c70:	fd1f60ef          	jal	ra,c40 <__mulsi3>
    9c74:	00050593          	mv	a1,a0
    9c78:	00040513          	mv	a0,s0
    9c7c:	df9fc0ef          	jal	ra,6a74 <_malloc_r>
    9c80:	00050413          	mv	s0,a0
    9c84:	04050863          	beqz	a0,9cd4 <_calloc_r+0xa4>
    9c88:	ffc52603          	lw	a2,-4(a0)
    9c8c:	02400713          	li	a4,36
    9c90:	ffc67613          	andi	a2,a2,-4
    9c94:	ffc60613          	addi	a2,a2,-4
    9c98:	04c76e63          	bltu	a4,a2,9cf4 <_calloc_r+0xc4>
    9c9c:	01300693          	li	a3,19
    9ca0:	00050793          	mv	a5,a0
    9ca4:	02c6f263          	bgeu	a3,a2,9cc8 <_calloc_r+0x98>
    9ca8:	00052023          	sw	zero,0(a0)
    9cac:	00052223          	sw	zero,4(a0)
    9cb0:	01b00793          	li	a5,27
    9cb4:	06c7f463          	bgeu	a5,a2,9d1c <_calloc_r+0xec>
    9cb8:	00052423          	sw	zero,8(a0)
    9cbc:	00052623          	sw	zero,12(a0)
    9cc0:	01050793          	addi	a5,a0,16
    9cc4:	0ce60a63          	beq	a2,a4,9d98 <_calloc_r+0x168>
    9cc8:	0007a023          	sw	zero,0(a5)
    9ccc:	0007a223          	sw	zero,4(a5)
    9cd0:	0007a423          	sw	zero,8(a5)
    9cd4:	01c12083          	lw	ra,28(sp)
    9cd8:	00040513          	mv	a0,s0
    9cdc:	01812403          	lw	s0,24(sp)
    9ce0:	01412483          	lw	s1,20(sp)
    9ce4:	01012903          	lw	s2,16(sp)
    9ce8:	00c12983          	lw	s3,12(sp)
    9cec:	02010113          	addi	sp,sp,32
    9cf0:	00008067          	ret
    9cf4:	00000593          	li	a1,0
    9cf8:	3e0000ef          	jal	ra,a0d8 <memset>
    9cfc:	01c12083          	lw	ra,28(sp)
    9d00:	00040513          	mv	a0,s0
    9d04:	01812403          	lw	s0,24(sp)
    9d08:	01412483          	lw	s1,20(sp)
    9d0c:	01012903          	lw	s2,16(sp)
    9d10:	00c12983          	lw	s3,12(sp)
    9d14:	02010113          	addi	sp,sp,32
    9d18:	00008067          	ret
    9d1c:	00850793          	addi	a5,a0,8
    9d20:	0007a023          	sw	zero,0(a5)
    9d24:	0007a223          	sw	zero,4(a5)
    9d28:	0007a423          	sw	zero,8(a5)
    9d2c:	fa9ff06f          	j	9cd4 <_calloc_r+0xa4>
    9d30:	06071c63          	bnez	a4,9da8 <_calloc_r+0x178>
    9d34:	00068913          	mv	s2,a3
    9d38:	00060993          	mv	s3,a2
    9d3c:	01079513          	slli	a0,a5,0x10
    9d40:	01061593          	slli	a1,a2,0x10
    9d44:	0105d593          	srli	a1,a1,0x10
    9d48:	01055513          	srli	a0,a0,0x10
    9d4c:	ef5f60ef          	jal	ra,c40 <__mulsi3>
    9d50:	00050493          	mv	s1,a0
    9d54:	01091593          	slli	a1,s2,0x10
    9d58:	01099513          	slli	a0,s3,0x10
    9d5c:	0105d593          	srli	a1,a1,0x10
    9d60:	01055513          	srli	a0,a0,0x10
    9d64:	eddf60ef          	jal	ra,c40 <__mulsi3>
    9d68:	0104d593          	srli	a1,s1,0x10
    9d6c:	00b505b3          	add	a1,a0,a1
    9d70:	0105d793          	srli	a5,a1,0x10
    9d74:	02079a63          	bnez	a5,9da8 <_calloc_r+0x178>
    9d78:	01049493          	slli	s1,s1,0x10
    9d7c:	01059593          	slli	a1,a1,0x10
    9d80:	0104d493          	srli	s1,s1,0x10
    9d84:	0095e5b3          	or	a1,a1,s1
    9d88:	ef1ff06f          	j	9c78 <_calloc_r+0x48>
    9d8c:	00070913          	mv	s2,a4
    9d90:	00058993          	mv	s3,a1
    9d94:	fa9ff06f          	j	9d3c <_calloc_r+0x10c>
    9d98:	00052823          	sw	zero,16(a0)
    9d9c:	01850793          	addi	a5,a0,24
    9da0:	00052a23          	sw	zero,20(a0)
    9da4:	f25ff06f          	j	9cc8 <_calloc_r+0x98>
    9da8:	014000ef          	jal	ra,9dbc <__errno>
    9dac:	00c00793          	li	a5,12
    9db0:	00f52023          	sw	a5,0(a0)
    9db4:	00000413          	li	s0,0
    9db8:	f1dff06f          	j	9cd4 <_calloc_r+0xa4>

00009dbc <__errno>:
    9dbc:	1bc1a503          	lw	a0,444(gp) # 800009bc <_impure_ptr>
    9dc0:	00008067          	ret

00009dc4 <_fiprintf_r>:
    9dc4:	fc010113          	addi	sp,sp,-64
    9dc8:	02c10313          	addi	t1,sp,44
    9dcc:	02d12623          	sw	a3,44(sp)
    9dd0:	00030693          	mv	a3,t1
    9dd4:	00112e23          	sw	ra,28(sp)
    9dd8:	02e12823          	sw	a4,48(sp)
    9ddc:	02f12a23          	sw	a5,52(sp)
    9de0:	03012c23          	sw	a6,56(sp)
    9de4:	03112e23          	sw	a7,60(sp)
    9de8:	00612623          	sw	t1,12(sp)
    9dec:	3c5000ef          	jal	ra,a9b0 <_vfiprintf_r>
    9df0:	01c12083          	lw	ra,28(sp)
    9df4:	04010113          	addi	sp,sp,64
    9df8:	00008067          	ret

00009dfc <fiprintf>:
    9dfc:	00050e13          	mv	t3,a0
    9e00:	fc010113          	addi	sp,sp,-64
    9e04:	1bc1a503          	lw	a0,444(gp) # 800009bc <_impure_ptr>
    9e08:	02810313          	addi	t1,sp,40
    9e0c:	02c12423          	sw	a2,40(sp)
    9e10:	02d12623          	sw	a3,44(sp)
    9e14:	00058613          	mv	a2,a1
    9e18:	00030693          	mv	a3,t1
    9e1c:	000e0593          	mv	a1,t3
    9e20:	00112e23          	sw	ra,28(sp)
    9e24:	02e12823          	sw	a4,48(sp)
    9e28:	02f12a23          	sw	a5,52(sp)
    9e2c:	03012c23          	sw	a6,56(sp)
    9e30:	03112e23          	sw	a7,60(sp)
    9e34:	00612623          	sw	t1,12(sp)
    9e38:	379000ef          	jal	ra,a9b0 <_vfiprintf_r>
    9e3c:	01c12083          	lw	ra,28(sp)
    9e40:	04010113          	addi	sp,sp,64
    9e44:	00008067          	ret

00009e48 <_setlocale_r>:
    9e48:	ff010113          	addi	sp,sp,-16
    9e4c:	00112623          	sw	ra,12(sp)
    9e50:	00812423          	sw	s0,8(sp)
    9e54:	00912223          	sw	s1,4(sp)
    9e58:	02060c63          	beqz	a2,9e90 <_setlocale_r+0x48>
    9e5c:	000145b7          	lui	a1,0x14
    9e60:	a1058593          	addi	a1,a1,-1520 # 13a10 <zeroes.0+0x54>
    9e64:	00060513          	mv	a0,a2
    9e68:	00060413          	mv	s0,a2
    9e6c:	0bd000ef          	jal	ra,a728 <strcmp>
    9e70:	000144b7          	lui	s1,0x14
    9e74:	02051263          	bnez	a0,9e98 <_setlocale_r+0x50>
    9e78:	a0c48513          	addi	a0,s1,-1524 # 13a0c <zeroes.0+0x50>
    9e7c:	00c12083          	lw	ra,12(sp)
    9e80:	00812403          	lw	s0,8(sp)
    9e84:	00412483          	lw	s1,4(sp)
    9e88:	01010113          	addi	sp,sp,16
    9e8c:	00008067          	ret
    9e90:	000144b7          	lui	s1,0x14
    9e94:	fe5ff06f          	j	9e78 <_setlocale_r+0x30>
    9e98:	a0c48593          	addi	a1,s1,-1524 # 13a0c <zeroes.0+0x50>
    9e9c:	00040513          	mv	a0,s0
    9ea0:	089000ef          	jal	ra,a728 <strcmp>
    9ea4:	fc050ae3          	beqz	a0,9e78 <_setlocale_r+0x30>
    9ea8:	000135b7          	lui	a1,0x13
    9eac:	e4c58593          	addi	a1,a1,-436 # 12e4c <__etext+0x28>
    9eb0:	00040513          	mv	a0,s0
    9eb4:	075000ef          	jal	ra,a728 <strcmp>
    9eb8:	fc0500e3          	beqz	a0,9e78 <_setlocale_r+0x30>
    9ebc:	00000513          	li	a0,0
    9ec0:	fbdff06f          	j	9e7c <_setlocale_r+0x34>

00009ec4 <__locale_mb_cur_max>:
    9ec4:	1581c503          	lbu	a0,344(gp) # 80000958 <__global_locale+0x128>
    9ec8:	00008067          	ret

00009ecc <setlocale>:
    9ecc:	ff010113          	addi	sp,sp,-16
    9ed0:	00112623          	sw	ra,12(sp)
    9ed4:	00812423          	sw	s0,8(sp)
    9ed8:	00912223          	sw	s1,4(sp)
    9edc:	02058c63          	beqz	a1,9f14 <setlocale+0x48>
    9ee0:	00058413          	mv	s0,a1
    9ee4:	000145b7          	lui	a1,0x14
    9ee8:	a1058593          	addi	a1,a1,-1520 # 13a10 <zeroes.0+0x54>
    9eec:	00040513          	mv	a0,s0
    9ef0:	039000ef          	jal	ra,a728 <strcmp>
    9ef4:	000144b7          	lui	s1,0x14
    9ef8:	02051263          	bnez	a0,9f1c <setlocale+0x50>
    9efc:	a0c48513          	addi	a0,s1,-1524 # 13a0c <zeroes.0+0x50>
    9f00:	00c12083          	lw	ra,12(sp)
    9f04:	00812403          	lw	s0,8(sp)
    9f08:	00412483          	lw	s1,4(sp)
    9f0c:	01010113          	addi	sp,sp,16
    9f10:	00008067          	ret
    9f14:	000144b7          	lui	s1,0x14
    9f18:	fe5ff06f          	j	9efc <setlocale+0x30>
    9f1c:	a0c48593          	addi	a1,s1,-1524 # 13a0c <zeroes.0+0x50>
    9f20:	00040513          	mv	a0,s0
    9f24:	005000ef          	jal	ra,a728 <strcmp>
    9f28:	fc050ae3          	beqz	a0,9efc <setlocale+0x30>
    9f2c:	000135b7          	lui	a1,0x13
    9f30:	e4c58593          	addi	a1,a1,-436 # 12e4c <__etext+0x28>
    9f34:	00040513          	mv	a0,s0
    9f38:	7f0000ef          	jal	ra,a728 <strcmp>
    9f3c:	fc0500e3          	beqz	a0,9efc <setlocale+0x30>
    9f40:	00000513          	li	a0,0
    9f44:	fbdff06f          	j	9f00 <setlocale+0x34>

00009f48 <_mbtowc_r>:
    9f48:	1141a783          	lw	a5,276(gp) # 80000914 <__global_locale+0xe4>
    9f4c:	00078067          	jr	a5

00009f50 <__ascii_mbtowc>:
    9f50:	02058063          	beqz	a1,9f70 <__ascii_mbtowc+0x20>
    9f54:	04060263          	beqz	a2,9f98 <__ascii_mbtowc+0x48>
    9f58:	04068863          	beqz	a3,9fa8 <__ascii_mbtowc+0x58>
    9f5c:	00064783          	lbu	a5,0(a2)
    9f60:	00f5a023          	sw	a5,0(a1)
    9f64:	00064503          	lbu	a0,0(a2)
    9f68:	00a03533          	snez	a0,a0
    9f6c:	00008067          	ret
    9f70:	ff010113          	addi	sp,sp,-16
    9f74:	00c10593          	addi	a1,sp,12
    9f78:	02060463          	beqz	a2,9fa0 <__ascii_mbtowc+0x50>
    9f7c:	02068a63          	beqz	a3,9fb0 <__ascii_mbtowc+0x60>
    9f80:	00064783          	lbu	a5,0(a2)
    9f84:	00f5a023          	sw	a5,0(a1)
    9f88:	00064503          	lbu	a0,0(a2)
    9f8c:	00a03533          	snez	a0,a0
    9f90:	01010113          	addi	sp,sp,16
    9f94:	00008067          	ret
    9f98:	00000513          	li	a0,0
    9f9c:	00008067          	ret
    9fa0:	00000513          	li	a0,0
    9fa4:	fedff06f          	j	9f90 <__ascii_mbtowc+0x40>
    9fa8:	ffe00513          	li	a0,-2
    9fac:	00008067          	ret
    9fb0:	ffe00513          	li	a0,-2
    9fb4:	fddff06f          	j	9f90 <__ascii_mbtowc+0x40>

00009fb8 <memmove>:
    9fb8:	02a5f663          	bgeu	a1,a0,9fe4 <memmove+0x2c>
    9fbc:	00c587b3          	add	a5,a1,a2
    9fc0:	02f57263          	bgeu	a0,a5,9fe4 <memmove+0x2c>
    9fc4:	00c50733          	add	a4,a0,a2
    9fc8:	0e060a63          	beqz	a2,a0bc <memmove+0x104>
    9fcc:	fff7c683          	lbu	a3,-1(a5)
    9fd0:	fff78793          	addi	a5,a5,-1
    9fd4:	fff70713          	addi	a4,a4,-1
    9fd8:	00d70023          	sb	a3,0(a4)
    9fdc:	fef598e3          	bne	a1,a5,9fcc <memmove+0x14>
    9fe0:	00008067          	ret
    9fe4:	00f00793          	li	a5,15
    9fe8:	02c7e863          	bltu	a5,a2,a018 <memmove+0x60>
    9fec:	00050793          	mv	a5,a0
    9ff0:	fff60693          	addi	a3,a2,-1
    9ff4:	0c060c63          	beqz	a2,a0cc <memmove+0x114>
    9ff8:	00168693          	addi	a3,a3,1
    9ffc:	00d786b3          	add	a3,a5,a3
    a000:	0005c703          	lbu	a4,0(a1)
    a004:	00178793          	addi	a5,a5,1
    a008:	00158593          	addi	a1,a1,1
    a00c:	fee78fa3          	sb	a4,-1(a5)
    a010:	fed798e3          	bne	a5,a3,a000 <memmove+0x48>
    a014:	00008067          	ret
    a018:	00a5e7b3          	or	a5,a1,a0
    a01c:	0037f793          	andi	a5,a5,3
    a020:	0a079063          	bnez	a5,a0c0 <memmove+0x108>
    a024:	ff060893          	addi	a7,a2,-16
    a028:	ff08f893          	andi	a7,a7,-16
    a02c:	01088893          	addi	a7,a7,16
    a030:	01150833          	add	a6,a0,a7
    a034:	00058713          	mv	a4,a1
    a038:	00050793          	mv	a5,a0
    a03c:	00072683          	lw	a3,0(a4)
    a040:	01070713          	addi	a4,a4,16
    a044:	01078793          	addi	a5,a5,16
    a048:	fed7a823          	sw	a3,-16(a5)
    a04c:	ff472683          	lw	a3,-12(a4)
    a050:	fed7aa23          	sw	a3,-12(a5)
    a054:	ff872683          	lw	a3,-8(a4)
    a058:	fed7ac23          	sw	a3,-8(a5)
    a05c:	ffc72683          	lw	a3,-4(a4)
    a060:	fed7ae23          	sw	a3,-4(a5)
    a064:	fcf81ce3          	bne	a6,a5,a03c <memmove+0x84>
    a068:	00c67713          	andi	a4,a2,12
    a06c:	011585b3          	add	a1,a1,a7
    a070:	00f67813          	andi	a6,a2,15
    a074:	04070e63          	beqz	a4,a0d0 <memmove+0x118>
    a078:	00058713          	mv	a4,a1
    a07c:	00078893          	mv	a7,a5
    a080:	00300e13          	li	t3,3
    a084:	00072303          	lw	t1,0(a4)
    a088:	00470713          	addi	a4,a4,4
    a08c:	40e806b3          	sub	a3,a6,a4
    a090:	0068a023          	sw	t1,0(a7)
    a094:	00d586b3          	add	a3,a1,a3
    a098:	00488893          	addi	a7,a7,4
    a09c:	fede64e3          	bltu	t3,a3,a084 <memmove+0xcc>
    a0a0:	ffc80713          	addi	a4,a6,-4
    a0a4:	ffc77713          	andi	a4,a4,-4
    a0a8:	00470713          	addi	a4,a4,4
    a0ac:	00367613          	andi	a2,a2,3
    a0b0:	00e787b3          	add	a5,a5,a4
    a0b4:	00e585b3          	add	a1,a1,a4
    a0b8:	f39ff06f          	j	9ff0 <memmove+0x38>
    a0bc:	00008067          	ret
    a0c0:	fff60693          	addi	a3,a2,-1
    a0c4:	00050793          	mv	a5,a0
    a0c8:	f31ff06f          	j	9ff8 <memmove+0x40>
    a0cc:	00008067          	ret
    a0d0:	00080613          	mv	a2,a6
    a0d4:	f1dff06f          	j	9ff0 <memmove+0x38>

0000a0d8 <memset>:
    a0d8:	00f00313          	li	t1,15
    a0dc:	00050713          	mv	a4,a0
    a0e0:	02c37e63          	bgeu	t1,a2,a11c <memset+0x44>
    a0e4:	00f77793          	andi	a5,a4,15
    a0e8:	0a079063          	bnez	a5,a188 <memset+0xb0>
    a0ec:	08059263          	bnez	a1,a170 <memset+0x98>
    a0f0:	ff067693          	andi	a3,a2,-16
    a0f4:	00f67613          	andi	a2,a2,15
    a0f8:	00e686b3          	add	a3,a3,a4
    a0fc:	00b72023          	sw	a1,0(a4)
    a100:	00b72223          	sw	a1,4(a4)
    a104:	00b72423          	sw	a1,8(a4)
    a108:	00b72623          	sw	a1,12(a4)
    a10c:	01070713          	addi	a4,a4,16
    a110:	fed766e3          	bltu	a4,a3,a0fc <memset+0x24>
    a114:	00061463          	bnez	a2,a11c <memset+0x44>
    a118:	00008067          	ret
    a11c:	40c306b3          	sub	a3,t1,a2
    a120:	00269693          	slli	a3,a3,0x2
    a124:	00000297          	auipc	t0,0x0
    a128:	005686b3          	add	a3,a3,t0
    a12c:	00c68067          	jr	12(a3)
    a130:	00b70723          	sb	a1,14(a4)
    a134:	00b706a3          	sb	a1,13(a4)
    a138:	00b70623          	sb	a1,12(a4)
    a13c:	00b705a3          	sb	a1,11(a4)
    a140:	00b70523          	sb	a1,10(a4)
    a144:	00b704a3          	sb	a1,9(a4)
    a148:	00b70423          	sb	a1,8(a4)
    a14c:	00b703a3          	sb	a1,7(a4)
    a150:	00b70323          	sb	a1,6(a4)
    a154:	00b702a3          	sb	a1,5(a4)
    a158:	00b70223          	sb	a1,4(a4)
    a15c:	00b701a3          	sb	a1,3(a4)
    a160:	00b70123          	sb	a1,2(a4)
    a164:	00b700a3          	sb	a1,1(a4)
    a168:	00b70023          	sb	a1,0(a4)
    a16c:	00008067          	ret
    a170:	0ff5f593          	andi	a1,a1,255
    a174:	00859693          	slli	a3,a1,0x8
    a178:	00d5e5b3          	or	a1,a1,a3
    a17c:	01059693          	slli	a3,a1,0x10
    a180:	00d5e5b3          	or	a1,a1,a3
    a184:	f6dff06f          	j	a0f0 <memset+0x18>
    a188:	00279693          	slli	a3,a5,0x2
    a18c:	00000297          	auipc	t0,0x0
    a190:	005686b3          	add	a3,a3,t0
    a194:	00008293          	mv	t0,ra
    a198:	fa0680e7          	jalr	-96(a3)
    a19c:	00028093          	mv	ra,t0
    a1a0:	ff078793          	addi	a5,a5,-16
    a1a4:	40f70733          	sub	a4,a4,a5
    a1a8:	00f60633          	add	a2,a2,a5
    a1ac:	f6c378e3          	bgeu	t1,a2,a11c <memset+0x44>
    a1b0:	f3dff06f          	j	a0ec <memset+0x14>

0000a1b4 <_realloc_r>:
    a1b4:	fd010113          	addi	sp,sp,-48
    a1b8:	03212023          	sw	s2,32(sp)
    a1bc:	02112623          	sw	ra,44(sp)
    a1c0:	02812423          	sw	s0,40(sp)
    a1c4:	02912223          	sw	s1,36(sp)
    a1c8:	01312e23          	sw	s3,28(sp)
    a1cc:	01412c23          	sw	s4,24(sp)
    a1d0:	01512a23          	sw	s5,20(sp)
    a1d4:	01612823          	sw	s6,16(sp)
    a1d8:	01712623          	sw	s7,12(sp)
    a1dc:	01812423          	sw	s8,8(sp)
    a1e0:	00060913          	mv	s2,a2
    a1e4:	1c058463          	beqz	a1,a3ac <_realloc_r+0x1f8>
    a1e8:	00058413          	mv	s0,a1
    a1ec:	00050993          	mv	s3,a0
    a1f0:	8e4fd0ef          	jal	ra,72d4 <__malloc_lock>
    a1f4:	00b90493          	addi	s1,s2,11
    a1f8:	01600793          	li	a5,22
    a1fc:	0e97fc63          	bgeu	a5,s1,a2f4 <_realloc_r+0x140>
    a200:	ff84f493          	andi	s1,s1,-8
    a204:	00048713          	mv	a4,s1
    a208:	0e04cc63          	bltz	s1,a300 <_realloc_r+0x14c>
    a20c:	0f24ea63          	bltu	s1,s2,a300 <_realloc_r+0x14c>
    a210:	ffc42783          	lw	a5,-4(s0)
    a214:	ff840a93          	addi	s5,s0,-8
    a218:	ffc7fa13          	andi	s4,a5,-4
    a21c:	014a8b33          	add	s6,s5,s4
    a220:	12ea5c63          	bge	s4,a4,a358 <_realloc_r+0x1a4>
    a224:	c2818b93          	addi	s7,gp,-984 # 80000428 <__malloc_av_>
    a228:	008ba603          	lw	a2,8(s7)
    a22c:	004b2683          	lw	a3,4(s6)
    a230:	1f660063          	beq	a2,s6,a410 <_realloc_r+0x25c>
    a234:	ffe6f613          	andi	a2,a3,-2
    a238:	00cb0633          	add	a2,s6,a2
    a23c:	00462603          	lw	a2,4(a2)
    a240:	00167613          	andi	a2,a2,1
    a244:	14061663          	bnez	a2,a390 <_realloc_r+0x1dc>
    a248:	ffc6f693          	andi	a3,a3,-4
    a24c:	00da0633          	add	a2,s4,a3
    a250:	0ee65863          	bge	a2,a4,a340 <_realloc_r+0x18c>
    a254:	0017f793          	andi	a5,a5,1
    a258:	02079463          	bnez	a5,a280 <_realloc_r+0xcc>
    a25c:	ff842c03          	lw	s8,-8(s0)
    a260:	418a8c33          	sub	s8,s5,s8
    a264:	004c2783          	lw	a5,4(s8)
    a268:	ffc7f793          	andi	a5,a5,-4
    a26c:	00d786b3          	add	a3,a5,a3
    a270:	01468bb3          	add	s7,a3,s4
    a274:	34ebda63          	bge	s7,a4,a5c8 <_realloc_r+0x414>
    a278:	00fa0bb3          	add	s7,s4,a5
    a27c:	2cebd463          	bge	s7,a4,a544 <_realloc_r+0x390>
    a280:	00090593          	mv	a1,s2
    a284:	00098513          	mv	a0,s3
    a288:	fecfc0ef          	jal	ra,6a74 <_malloc_r>
    a28c:	00050913          	mv	s2,a0
    a290:	04050c63          	beqz	a0,a2e8 <_realloc_r+0x134>
    a294:	ffc42783          	lw	a5,-4(s0)
    a298:	ff850713          	addi	a4,a0,-8
    a29c:	ffe7f793          	andi	a5,a5,-2
    a2a0:	00fa87b3          	add	a5,s5,a5
    a2a4:	28e78663          	beq	a5,a4,a530 <_realloc_r+0x37c>
    a2a8:	ffca0613          	addi	a2,s4,-4
    a2ac:	02400793          	li	a5,36
    a2b0:	30c7e663          	bltu	a5,a2,a5bc <_realloc_r+0x408>
    a2b4:	01300713          	li	a4,19
    a2b8:	00042683          	lw	a3,0(s0)
    a2bc:	20c76e63          	bltu	a4,a2,a4d8 <_realloc_r+0x324>
    a2c0:	00050793          	mv	a5,a0
    a2c4:	00040713          	mv	a4,s0
    a2c8:	00d7a023          	sw	a3,0(a5)
    a2cc:	00472683          	lw	a3,4(a4)
    a2d0:	00d7a223          	sw	a3,4(a5)
    a2d4:	00872703          	lw	a4,8(a4)
    a2d8:	00e7a423          	sw	a4,8(a5)
    a2dc:	00040593          	mv	a1,s0
    a2e0:	00098513          	mv	a0,s3
    a2e4:	845f90ef          	jal	ra,3b28 <_free_r>
    a2e8:	00098513          	mv	a0,s3
    a2ec:	fedfc0ef          	jal	ra,72d8 <__malloc_unlock>
    a2f0:	01c0006f          	j	a30c <_realloc_r+0x158>
    a2f4:	01000493          	li	s1,16
    a2f8:	01000713          	li	a4,16
    a2fc:	f124fae3          	bgeu	s1,s2,a210 <_realloc_r+0x5c>
    a300:	00c00793          	li	a5,12
    a304:	00f9a023          	sw	a5,0(s3)
    a308:	00000913          	li	s2,0
    a30c:	02c12083          	lw	ra,44(sp)
    a310:	02812403          	lw	s0,40(sp)
    a314:	02412483          	lw	s1,36(sp)
    a318:	01c12983          	lw	s3,28(sp)
    a31c:	01812a03          	lw	s4,24(sp)
    a320:	01412a83          	lw	s5,20(sp)
    a324:	01012b03          	lw	s6,16(sp)
    a328:	00c12b83          	lw	s7,12(sp)
    a32c:	00812c03          	lw	s8,8(sp)
    a330:	00090513          	mv	a0,s2
    a334:	02012903          	lw	s2,32(sp)
    a338:	03010113          	addi	sp,sp,48
    a33c:	00008067          	ret
    a340:	00cb2783          	lw	a5,12(s6)
    a344:	008b2703          	lw	a4,8(s6)
    a348:	00060a13          	mv	s4,a2
    a34c:	00ca8b33          	add	s6,s5,a2
    a350:	00f72623          	sw	a5,12(a4)
    a354:	00e7a423          	sw	a4,8(a5)
    a358:	004aa783          	lw	a5,4(s5)
    a35c:	409a0733          	sub	a4,s4,s1
    a360:	00f00693          	li	a3,15
    a364:	0017f793          	andi	a5,a5,1
    a368:	06e6ec63          	bltu	a3,a4,a3e0 <_realloc_r+0x22c>
    a36c:	00fa67b3          	or	a5,s4,a5
    a370:	00faa223          	sw	a5,4(s5)
    a374:	004b2783          	lw	a5,4(s6)
    a378:	0017e793          	ori	a5,a5,1
    a37c:	00fb2223          	sw	a5,4(s6)
    a380:	00098513          	mv	a0,s3
    a384:	f55fc0ef          	jal	ra,72d8 <__malloc_unlock>
    a388:	00040913          	mv	s2,s0
    a38c:	f81ff06f          	j	a30c <_realloc_r+0x158>
    a390:	0017f793          	andi	a5,a5,1
    a394:	ee0796e3          	bnez	a5,a280 <_realloc_r+0xcc>
    a398:	ff842c03          	lw	s8,-8(s0)
    a39c:	418a8c33          	sub	s8,s5,s8
    a3a0:	004c2783          	lw	a5,4(s8)
    a3a4:	ffc7f793          	andi	a5,a5,-4
    a3a8:	ed1ff06f          	j	a278 <_realloc_r+0xc4>
    a3ac:	02812403          	lw	s0,40(sp)
    a3b0:	02c12083          	lw	ra,44(sp)
    a3b4:	02412483          	lw	s1,36(sp)
    a3b8:	02012903          	lw	s2,32(sp)
    a3bc:	01c12983          	lw	s3,28(sp)
    a3c0:	01812a03          	lw	s4,24(sp)
    a3c4:	01412a83          	lw	s5,20(sp)
    a3c8:	01012b03          	lw	s6,16(sp)
    a3cc:	00c12b83          	lw	s7,12(sp)
    a3d0:	00812c03          	lw	s8,8(sp)
    a3d4:	00060593          	mv	a1,a2
    a3d8:	03010113          	addi	sp,sp,48
    a3dc:	e98fc06f          	j	6a74 <_malloc_r>
    a3e0:	0097e7b3          	or	a5,a5,s1
    a3e4:	00faa223          	sw	a5,4(s5)
    a3e8:	009a85b3          	add	a1,s5,s1
    a3ec:	00176713          	ori	a4,a4,1
    a3f0:	00e5a223          	sw	a4,4(a1)
    a3f4:	004b2783          	lw	a5,4(s6)
    a3f8:	00858593          	addi	a1,a1,8
    a3fc:	00098513          	mv	a0,s3
    a400:	0017e793          	ori	a5,a5,1
    a404:	00fb2223          	sw	a5,4(s6)
    a408:	f20f90ef          	jal	ra,3b28 <_free_r>
    a40c:	f75ff06f          	j	a380 <_realloc_r+0x1cc>
    a410:	ffc6f693          	andi	a3,a3,-4
    a414:	00da0633          	add	a2,s4,a3
    a418:	01048593          	addi	a1,s1,16
    a41c:	0eb65063          	bge	a2,a1,a4fc <_realloc_r+0x348>
    a420:	0017f793          	andi	a5,a5,1
    a424:	e4079ee3          	bnez	a5,a280 <_realloc_r+0xcc>
    a428:	ff842c03          	lw	s8,-8(s0)
    a42c:	418a8c33          	sub	s8,s5,s8
    a430:	004c2783          	lw	a5,4(s8)
    a434:	ffc7f793          	andi	a5,a5,-4
    a438:	00d786b3          	add	a3,a5,a3
    a43c:	01468b33          	add	s6,a3,s4
    a440:	e2bb4ce3          	blt	s6,a1,a278 <_realloc_r+0xc4>
    a444:	00cc2783          	lw	a5,12(s8)
    a448:	008c2703          	lw	a4,8(s8)
    a44c:	ffca0613          	addi	a2,s4,-4
    a450:	02400693          	li	a3,36
    a454:	00f72623          	sw	a5,12(a4)
    a458:	00e7a423          	sw	a4,8(a5)
    a45c:	008c0913          	addi	s2,s8,8
    a460:	26c6ec63          	bltu	a3,a2,a6d8 <_realloc_r+0x524>
    a464:	01300593          	li	a1,19
    a468:	00042703          	lw	a4,0(s0)
    a46c:	00090793          	mv	a5,s2
    a470:	02c5f263          	bgeu	a1,a2,a494 <_realloc_r+0x2e0>
    a474:	00ec2423          	sw	a4,8(s8)
    a478:	00442703          	lw	a4,4(s0)
    a47c:	01b00793          	li	a5,27
    a480:	00ec2623          	sw	a4,12(s8)
    a484:	26c7e263          	bltu	a5,a2,a6e8 <_realloc_r+0x534>
    a488:	00842703          	lw	a4,8(s0)
    a48c:	010c0793          	addi	a5,s8,16
    a490:	00840413          	addi	s0,s0,8
    a494:	00e7a023          	sw	a4,0(a5)
    a498:	00442703          	lw	a4,4(s0)
    a49c:	00e7a223          	sw	a4,4(a5)
    a4a0:	00842703          	lw	a4,8(s0)
    a4a4:	00e7a423          	sw	a4,8(a5)
    a4a8:	009c0733          	add	a4,s8,s1
    a4ac:	409b07b3          	sub	a5,s6,s1
    a4b0:	00eba423          	sw	a4,8(s7)
    a4b4:	0017e793          	ori	a5,a5,1
    a4b8:	00f72223          	sw	a5,4(a4)
    a4bc:	004c2783          	lw	a5,4(s8)
    a4c0:	00098513          	mv	a0,s3
    a4c4:	0017f793          	andi	a5,a5,1
    a4c8:	0097e4b3          	or	s1,a5,s1
    a4cc:	009c2223          	sw	s1,4(s8)
    a4d0:	e09fc0ef          	jal	ra,72d8 <__malloc_unlock>
    a4d4:	e39ff06f          	j	a30c <_realloc_r+0x158>
    a4d8:	00d52023          	sw	a3,0(a0)
    a4dc:	00442683          	lw	a3,4(s0)
    a4e0:	01b00713          	li	a4,27
    a4e4:	00d52223          	sw	a3,4(a0)
    a4e8:	16c76e63          	bltu	a4,a2,a664 <_realloc_r+0x4b0>
    a4ec:	00842683          	lw	a3,8(s0)
    a4f0:	00840713          	addi	a4,s0,8
    a4f4:	00850793          	addi	a5,a0,8
    a4f8:	dd1ff06f          	j	a2c8 <_realloc_r+0x114>
    a4fc:	009a8ab3          	add	s5,s5,s1
    a500:	409607b3          	sub	a5,a2,s1
    a504:	015ba423          	sw	s5,8(s7)
    a508:	0017e793          	ori	a5,a5,1
    a50c:	00faa223          	sw	a5,4(s5)
    a510:	ffc42783          	lw	a5,-4(s0)
    a514:	00098513          	mv	a0,s3
    a518:	00040913          	mv	s2,s0
    a51c:	0017f793          	andi	a5,a5,1
    a520:	0097e4b3          	or	s1,a5,s1
    a524:	fe942e23          	sw	s1,-4(s0)
    a528:	db1fc0ef          	jal	ra,72d8 <__malloc_unlock>
    a52c:	de1ff06f          	j	a30c <_realloc_r+0x158>
    a530:	ffc52783          	lw	a5,-4(a0)
    a534:	ffc7f793          	andi	a5,a5,-4
    a538:	00fa0a33          	add	s4,s4,a5
    a53c:	014a8b33          	add	s6,s5,s4
    a540:	e19ff06f          	j	a358 <_realloc_r+0x1a4>
    a544:	00cc2783          	lw	a5,12(s8)
    a548:	008c2703          	lw	a4,8(s8)
    a54c:	ffca0613          	addi	a2,s4,-4
    a550:	02400693          	li	a3,36
    a554:	00f72623          	sw	a5,12(a4)
    a558:	00e7a423          	sw	a4,8(a5)
    a55c:	008c0913          	addi	s2,s8,8
    a560:	017c0b33          	add	s6,s8,s7
    a564:	0ec6e263          	bltu	a3,a2,a648 <_realloc_r+0x494>
    a568:	01300593          	li	a1,19
    a56c:	00042703          	lw	a4,0(s0)
    a570:	00090793          	mv	a5,s2
    a574:	02c5f263          	bgeu	a1,a2,a598 <_realloc_r+0x3e4>
    a578:	00ec2423          	sw	a4,8(s8)
    a57c:	00442703          	lw	a4,4(s0)
    a580:	01b00793          	li	a5,27
    a584:	00ec2623          	sw	a4,12(s8)
    a588:	10c7e063          	bltu	a5,a2,a688 <_realloc_r+0x4d4>
    a58c:	00842703          	lw	a4,8(s0)
    a590:	010c0793          	addi	a5,s8,16
    a594:	00840413          	addi	s0,s0,8
    a598:	00e7a023          	sw	a4,0(a5)
    a59c:	00442703          	lw	a4,4(s0)
    a5a0:	000b8a13          	mv	s4,s7
    a5a4:	000c0a93          	mv	s5,s8
    a5a8:	00e7a223          	sw	a4,4(a5)
    a5ac:	00842703          	lw	a4,8(s0)
    a5b0:	00090413          	mv	s0,s2
    a5b4:	00e7a423          	sw	a4,8(a5)
    a5b8:	da1ff06f          	j	a358 <_realloc_r+0x1a4>
    a5bc:	00040593          	mv	a1,s0
    a5c0:	9f9ff0ef          	jal	ra,9fb8 <memmove>
    a5c4:	d19ff06f          	j	a2dc <_realloc_r+0x128>
    a5c8:	00cb2783          	lw	a5,12(s6)
    a5cc:	008b2703          	lw	a4,8(s6)
    a5d0:	ffca0613          	addi	a2,s4,-4
    a5d4:	02400693          	li	a3,36
    a5d8:	00f72623          	sw	a5,12(a4)
    a5dc:	00e7a423          	sw	a4,8(a5)
    a5e0:	008c2703          	lw	a4,8(s8)
    a5e4:	00cc2783          	lw	a5,12(s8)
    a5e8:	008c0913          	addi	s2,s8,8
    a5ec:	017c0b33          	add	s6,s8,s7
    a5f0:	00f72623          	sw	a5,12(a4)
    a5f4:	00e7a423          	sw	a4,8(a5)
    a5f8:	04c6e863          	bltu	a3,a2,a648 <_realloc_r+0x494>
    a5fc:	01300693          	li	a3,19
    a600:	00042703          	lw	a4,0(s0)
    a604:	00090793          	mv	a5,s2
    a608:	f8c6f8e3          	bgeu	a3,a2,a598 <_realloc_r+0x3e4>
    a60c:	00ec2423          	sw	a4,8(s8)
    a610:	00442703          	lw	a4,4(s0)
    a614:	01b00793          	li	a5,27
    a618:	00ec2623          	sw	a4,12(s8)
    a61c:	00842703          	lw	a4,8(s0)
    a620:	f6c7f8e3          	bgeu	a5,a2,a590 <_realloc_r+0x3dc>
    a624:	00ec2823          	sw	a4,16(s8)
    a628:	00c42703          	lw	a4,12(s0)
    a62c:	02400793          	li	a5,36
    a630:	00ec2a23          	sw	a4,20(s8)
    a634:	01042703          	lw	a4,16(s0)
    a638:	06f60463          	beq	a2,a5,a6a0 <_realloc_r+0x4ec>
    a63c:	018c0793          	addi	a5,s8,24
    a640:	01040413          	addi	s0,s0,16
    a644:	f55ff06f          	j	a598 <_realloc_r+0x3e4>
    a648:	00040593          	mv	a1,s0
    a64c:	00090513          	mv	a0,s2
    a650:	969ff0ef          	jal	ra,9fb8 <memmove>
    a654:	00090413          	mv	s0,s2
    a658:	000b8a13          	mv	s4,s7
    a65c:	000c0a93          	mv	s5,s8
    a660:	cf9ff06f          	j	a358 <_realloc_r+0x1a4>
    a664:	00842703          	lw	a4,8(s0)
    a668:	00e52423          	sw	a4,8(a0)
    a66c:	00c42703          	lw	a4,12(s0)
    a670:	00e52623          	sw	a4,12(a0)
    a674:	01042683          	lw	a3,16(s0)
    a678:	04f60263          	beq	a2,a5,a6bc <_realloc_r+0x508>
    a67c:	01040713          	addi	a4,s0,16
    a680:	01050793          	addi	a5,a0,16
    a684:	c45ff06f          	j	a2c8 <_realloc_r+0x114>
    a688:	00842783          	lw	a5,8(s0)
    a68c:	00fc2823          	sw	a5,16(s8)
    a690:	00c42783          	lw	a5,12(s0)
    a694:	00fc2a23          	sw	a5,20(s8)
    a698:	01042703          	lw	a4,16(s0)
    a69c:	fad610e3          	bne	a2,a3,a63c <_realloc_r+0x488>
    a6a0:	00ec2c23          	sw	a4,24(s8)
    a6a4:	01442703          	lw	a4,20(s0)
    a6a8:	020c0793          	addi	a5,s8,32
    a6ac:	01840413          	addi	s0,s0,24
    a6b0:	00ec2e23          	sw	a4,28(s8)
    a6b4:	00042703          	lw	a4,0(s0)
    a6b8:	ee1ff06f          	j	a598 <_realloc_r+0x3e4>
    a6bc:	00d52823          	sw	a3,16(a0)
    a6c0:	01442683          	lw	a3,20(s0)
    a6c4:	01840713          	addi	a4,s0,24
    a6c8:	01850793          	addi	a5,a0,24
    a6cc:	00d52a23          	sw	a3,20(a0)
    a6d0:	01842683          	lw	a3,24(s0)
    a6d4:	bf5ff06f          	j	a2c8 <_realloc_r+0x114>
    a6d8:	00040593          	mv	a1,s0
    a6dc:	00090513          	mv	a0,s2
    a6e0:	8d9ff0ef          	jal	ra,9fb8 <memmove>
    a6e4:	dc5ff06f          	j	a4a8 <_realloc_r+0x2f4>
    a6e8:	00842783          	lw	a5,8(s0)
    a6ec:	00fc2823          	sw	a5,16(s8)
    a6f0:	00c42783          	lw	a5,12(s0)
    a6f4:	00fc2a23          	sw	a5,20(s8)
    a6f8:	01042703          	lw	a4,16(s0)
    a6fc:	00d60863          	beq	a2,a3,a70c <_realloc_r+0x558>
    a700:	018c0793          	addi	a5,s8,24
    a704:	01040413          	addi	s0,s0,16
    a708:	d8dff06f          	j	a494 <_realloc_r+0x2e0>
    a70c:	00ec2c23          	sw	a4,24(s8)
    a710:	01442703          	lw	a4,20(s0)
    a714:	020c0793          	addi	a5,s8,32
    a718:	01840413          	addi	s0,s0,24
    a71c:	00ec2e23          	sw	a4,28(s8)
    a720:	00042703          	lw	a4,0(s0)
    a724:	d71ff06f          	j	a494 <_realloc_r+0x2e0>

0000a728 <strcmp>:
    a728:	00b56733          	or	a4,a0,a1
    a72c:	fff00393          	li	t2,-1
    a730:	00377713          	andi	a4,a4,3
    a734:	10071063          	bnez	a4,a834 <strcmp+0x10c>
    a738:	7f7f87b7          	lui	a5,0x7f7f8
    a73c:	f7f78793          	addi	a5,a5,-129 # 7f7f7f7f <__crt0_copy_data_src_begin+0x7f7e4123>
    a740:	00052603          	lw	a2,0(a0)
    a744:	0005a683          	lw	a3,0(a1)
    a748:	00f672b3          	and	t0,a2,a5
    a74c:	00f66333          	or	t1,a2,a5
    a750:	00f282b3          	add	t0,t0,a5
    a754:	0062e2b3          	or	t0,t0,t1
    a758:	10729263          	bne	t0,t2,a85c <strcmp+0x134>
    a75c:	08d61663          	bne	a2,a3,a7e8 <strcmp+0xc0>
    a760:	00452603          	lw	a2,4(a0)
    a764:	0045a683          	lw	a3,4(a1)
    a768:	00f672b3          	and	t0,a2,a5
    a76c:	00f66333          	or	t1,a2,a5
    a770:	00f282b3          	add	t0,t0,a5
    a774:	0062e2b3          	or	t0,t0,t1
    a778:	0c729e63          	bne	t0,t2,a854 <strcmp+0x12c>
    a77c:	06d61663          	bne	a2,a3,a7e8 <strcmp+0xc0>
    a780:	00852603          	lw	a2,8(a0)
    a784:	0085a683          	lw	a3,8(a1)
    a788:	00f672b3          	and	t0,a2,a5
    a78c:	00f66333          	or	t1,a2,a5
    a790:	00f282b3          	add	t0,t0,a5
    a794:	0062e2b3          	or	t0,t0,t1
    a798:	0c729863          	bne	t0,t2,a868 <strcmp+0x140>
    a79c:	04d61663          	bne	a2,a3,a7e8 <strcmp+0xc0>
    a7a0:	00c52603          	lw	a2,12(a0)
    a7a4:	00c5a683          	lw	a3,12(a1)
    a7a8:	00f672b3          	and	t0,a2,a5
    a7ac:	00f66333          	or	t1,a2,a5
    a7b0:	00f282b3          	add	t0,t0,a5
    a7b4:	0062e2b3          	or	t0,t0,t1
    a7b8:	0c729263          	bne	t0,t2,a87c <strcmp+0x154>
    a7bc:	02d61663          	bne	a2,a3,a7e8 <strcmp+0xc0>
    a7c0:	01052603          	lw	a2,16(a0)
    a7c4:	0105a683          	lw	a3,16(a1)
    a7c8:	00f672b3          	and	t0,a2,a5
    a7cc:	00f66333          	or	t1,a2,a5
    a7d0:	00f282b3          	add	t0,t0,a5
    a7d4:	0062e2b3          	or	t0,t0,t1
    a7d8:	0a729c63          	bne	t0,t2,a890 <strcmp+0x168>
    a7dc:	01450513          	addi	a0,a0,20
    a7e0:	01458593          	addi	a1,a1,20
    a7e4:	f4d60ee3          	beq	a2,a3,a740 <strcmp+0x18>
    a7e8:	01061713          	slli	a4,a2,0x10
    a7ec:	01069793          	slli	a5,a3,0x10
    a7f0:	00f71e63          	bne	a4,a5,a80c <strcmp+0xe4>
    a7f4:	01065713          	srli	a4,a2,0x10
    a7f8:	0106d793          	srli	a5,a3,0x10
    a7fc:	40f70533          	sub	a0,a4,a5
    a800:	0ff57593          	andi	a1,a0,255
    a804:	02059063          	bnez	a1,a824 <strcmp+0xfc>
    a808:	00008067          	ret
    a80c:	01075713          	srli	a4,a4,0x10
    a810:	0107d793          	srli	a5,a5,0x10
    a814:	40f70533          	sub	a0,a4,a5
    a818:	0ff57593          	andi	a1,a0,255
    a81c:	00059463          	bnez	a1,a824 <strcmp+0xfc>
    a820:	00008067          	ret
    a824:	0ff77713          	andi	a4,a4,255
    a828:	0ff7f793          	andi	a5,a5,255
    a82c:	40f70533          	sub	a0,a4,a5
    a830:	00008067          	ret
    a834:	00054603          	lbu	a2,0(a0)
    a838:	0005c683          	lbu	a3,0(a1)
    a83c:	00150513          	addi	a0,a0,1
    a840:	00158593          	addi	a1,a1,1
    a844:	00d61463          	bne	a2,a3,a84c <strcmp+0x124>
    a848:	fe0616e3          	bnez	a2,a834 <strcmp+0x10c>
    a84c:	40d60533          	sub	a0,a2,a3
    a850:	00008067          	ret
    a854:	00450513          	addi	a0,a0,4
    a858:	00458593          	addi	a1,a1,4
    a85c:	fcd61ce3          	bne	a2,a3,a834 <strcmp+0x10c>
    a860:	00000513          	li	a0,0
    a864:	00008067          	ret
    a868:	00850513          	addi	a0,a0,8
    a86c:	00858593          	addi	a1,a1,8
    a870:	fcd612e3          	bne	a2,a3,a834 <strcmp+0x10c>
    a874:	00000513          	li	a0,0
    a878:	00008067          	ret
    a87c:	00c50513          	addi	a0,a0,12
    a880:	00c58593          	addi	a1,a1,12
    a884:	fad618e3          	bne	a2,a3,a834 <strcmp+0x10c>
    a888:	00000513          	li	a0,0
    a88c:	00008067          	ret
    a890:	01050513          	addi	a0,a0,16
    a894:	01058593          	addi	a1,a1,16
    a898:	f8d61ee3          	bne	a2,a3,a834 <strcmp+0x10c>
    a89c:	00000513          	li	a0,0
    a8a0:	00008067          	ret

0000a8a4 <__sprint_r.part.0>:
    a8a4:	0645a703          	lw	a4,100(a1)
    a8a8:	fd010113          	addi	sp,sp,-48
    a8ac:	000027b7          	lui	a5,0x2
    a8b0:	01612823          	sw	s6,16(sp)
    a8b4:	02112623          	sw	ra,44(sp)
    a8b8:	02812423          	sw	s0,40(sp)
    a8bc:	02912223          	sw	s1,36(sp)
    a8c0:	03212023          	sw	s2,32(sp)
    a8c4:	01312e23          	sw	s3,28(sp)
    a8c8:	01412c23          	sw	s4,24(sp)
    a8cc:	01512a23          	sw	s5,20(sp)
    a8d0:	01712623          	sw	s7,12(sp)
    a8d4:	01812423          	sw	s8,8(sp)
    a8d8:	00e7f7b3          	and	a5,a5,a4
    a8dc:	00060b13          	mv	s6,a2
    a8e0:	0a078863          	beqz	a5,a990 <__sprint_r.part.0+0xec>
    a8e4:	00862783          	lw	a5,8(a2)
    a8e8:	00062b83          	lw	s7,0(a2)
    a8ec:	00058913          	mv	s2,a1
    a8f0:	00050993          	mv	s3,a0
    a8f4:	fff00a93          	li	s5,-1
    a8f8:	08078863          	beqz	a5,a988 <__sprint_r.part.0+0xe4>
    a8fc:	004bac03          	lw	s8,4(s7)
    a900:	000ba403          	lw	s0,0(s7)
    a904:	002c5a13          	srli	s4,s8,0x2
    a908:	060a0663          	beqz	s4,a974 <__sprint_r.part.0+0xd0>
    a90c:	00000493          	li	s1,0
    a910:	00c0006f          	j	a91c <__sprint_r.part.0+0x78>
    a914:	00440413          	addi	s0,s0,4
    a918:	049a0c63          	beq	s4,s1,a970 <__sprint_r.part.0+0xcc>
    a91c:	00042583          	lw	a1,0(s0)
    a920:	00090613          	mv	a2,s2
    a924:	00098513          	mv	a0,s3
    a928:	581010ef          	jal	ra,c6a8 <_fputwc_r>
    a92c:	00148493          	addi	s1,s1,1
    a930:	ff5512e3          	bne	a0,s5,a914 <__sprint_r.part.0+0x70>
    a934:	fff00513          	li	a0,-1
    a938:	02c12083          	lw	ra,44(sp)
    a93c:	02812403          	lw	s0,40(sp)
    a940:	000b2423          	sw	zero,8(s6)
    a944:	000b2223          	sw	zero,4(s6)
    a948:	02412483          	lw	s1,36(sp)
    a94c:	02012903          	lw	s2,32(sp)
    a950:	01c12983          	lw	s3,28(sp)
    a954:	01812a03          	lw	s4,24(sp)
    a958:	01412a83          	lw	s5,20(sp)
    a95c:	01012b03          	lw	s6,16(sp)
    a960:	00c12b83          	lw	s7,12(sp)
    a964:	00812c03          	lw	s8,8(sp)
    a968:	03010113          	addi	sp,sp,48
    a96c:	00008067          	ret
    a970:	008b2783          	lw	a5,8(s6)
    a974:	ffcc7c13          	andi	s8,s8,-4
    a978:	418787b3          	sub	a5,a5,s8
    a97c:	00fb2423          	sw	a5,8(s6)
    a980:	008b8b93          	addi	s7,s7,8
    a984:	f6079ce3          	bnez	a5,a8fc <__sprint_r.part.0+0x58>
    a988:	00000513          	li	a0,0
    a98c:	fadff06f          	j	a938 <__sprint_r.part.0+0x94>
    a990:	5c1010ef          	jal	ra,c750 <__sfvwrite_r>
    a994:	fa5ff06f          	j	a938 <__sprint_r.part.0+0x94>

0000a998 <__sprint_r>:
    a998:	00862703          	lw	a4,8(a2)
    a99c:	00070463          	beqz	a4,a9a4 <__sprint_r+0xc>
    a9a0:	f05ff06f          	j	a8a4 <__sprint_r.part.0>
    a9a4:	00062223          	sw	zero,4(a2)
    a9a8:	00000513          	li	a0,0
    a9ac:	00008067          	ret

0000a9b0 <_vfiprintf_r>:
    a9b0:	ed010113          	addi	sp,sp,-304
    a9b4:	11312e23          	sw	s3,284(sp)
    a9b8:	11412c23          	sw	s4,280(sp)
    a9bc:	11712623          	sw	s7,268(sp)
    a9c0:	12112623          	sw	ra,300(sp)
    a9c4:	12812423          	sw	s0,296(sp)
    a9c8:	12912223          	sw	s1,292(sp)
    a9cc:	13212023          	sw	s2,288(sp)
    a9d0:	11512a23          	sw	s5,276(sp)
    a9d4:	11612823          	sw	s6,272(sp)
    a9d8:	11812423          	sw	s8,264(sp)
    a9dc:	11912223          	sw	s9,260(sp)
    a9e0:	11a12023          	sw	s10,256(sp)
    a9e4:	0fb12e23          	sw	s11,252(sp)
    a9e8:	00d12823          	sw	a3,16(sp)
    a9ec:	00050a13          	mv	s4,a0
    a9f0:	00058993          	mv	s3,a1
    a9f4:	00060b93          	mv	s7,a2
    a9f8:	00050663          	beqz	a0,aa04 <_vfiprintf_r+0x54>
    a9fc:	03852783          	lw	a5,56(a0)
    aa00:	62078663          	beqz	a5,b02c <_vfiprintf_r+0x67c>
    aa04:	00c99703          	lh	a4,12(s3)
    aa08:	000026b7          	lui	a3,0x2
    aa0c:	01071793          	slli	a5,a4,0x10
    aa10:	0107d793          	srli	a5,a5,0x10
    aa14:	00d7f633          	and	a2,a5,a3
    aa18:	02061863          	bnez	a2,aa48 <_vfiprintf_r+0x98>
    aa1c:	0649a603          	lw	a2,100(s3)
    aa20:	00d767b3          	or	a5,a4,a3
    aa24:	01079793          	slli	a5,a5,0x10
    aa28:	ffffe737          	lui	a4,0xffffe
    aa2c:	4107d793          	srai	a5,a5,0x10
    aa30:	fff70713          	addi	a4,a4,-1 # ffffdfff <__ctr0_io_space_begin+0xffffe1ff>
    aa34:	00e67733          	and	a4,a2,a4
    aa38:	00f99623          	sh	a5,12(s3)
    aa3c:	01079793          	slli	a5,a5,0x10
    aa40:	06e9a223          	sw	a4,100(s3)
    aa44:	0107d793          	srli	a5,a5,0x10
    aa48:	0087f713          	andi	a4,a5,8
    aa4c:	40070063          	beqz	a4,ae4c <_vfiprintf_r+0x49c>
    aa50:	0109a703          	lw	a4,16(s3)
    aa54:	3e070c63          	beqz	a4,ae4c <_vfiprintf_r+0x49c>
    aa58:	01a7f793          	andi	a5,a5,26
    aa5c:	00a00713          	li	a4,10
    aa60:	40e78663          	beq	a5,a4,ae6c <_vfiprintf_r+0x4bc>
    aa64:	000147b7          	lui	a5,0x14
    aa68:	a1c78793          	addi	a5,a5,-1508 # 13a1c <zeroes.0+0x60>
    aa6c:	00014b37          	lui	s6,0x14
    aa70:	04c10493          	addi	s1,sp,76
    aa74:	00f12a23          	sw	a5,20(sp)
    aa78:	00014937          	lui	s2,0x14
    aa7c:	b88b0793          	addi	a5,s6,-1144 # 13b88 <blanks.1>
    aa80:	000b8c13          	mv	s8,s7
    aa84:	04912023          	sw	s1,64(sp)
    aa88:	04012423          	sw	zero,72(sp)
    aa8c:	04012223          	sw	zero,68(sp)
    aa90:	00012c23          	sw	zero,24(sp)
    aa94:	00012e23          	sw	zero,28(sp)
    aa98:	02012223          	sw	zero,36(sp)
    aa9c:	02012023          	sw	zero,32(sp)
    aaa0:	00012623          	sw	zero,12(sp)
    aaa4:	00f12423          	sw	a5,8(sp)
    aaa8:	b9890913          	addi	s2,s2,-1128 # 13b98 <zeroes.0>
    aaac:	00048b93          	mv	s7,s1
    aab0:	000c4783          	lbu	a5,0(s8)
    aab4:	26078863          	beqz	a5,ad24 <_vfiprintf_r+0x374>
    aab8:	000c0413          	mv	s0,s8
    aabc:	02500713          	li	a4,37
    aac0:	46e78663          	beq	a5,a4,af2c <_vfiprintf_r+0x57c>
    aac4:	00144783          	lbu	a5,1(s0)
    aac8:	00140413          	addi	s0,s0,1
    aacc:	fe079ae3          	bnez	a5,aac0 <_vfiprintf_r+0x110>
    aad0:	41840cb3          	sub	s9,s0,s8
    aad4:	25840863          	beq	s0,s8,ad24 <_vfiprintf_r+0x374>
    aad8:	04812703          	lw	a4,72(sp)
    aadc:	04412783          	lw	a5,68(sp)
    aae0:	018ba023          	sw	s8,0(s7)
    aae4:	00ec8733          	add	a4,s9,a4
    aae8:	00178793          	addi	a5,a5,1
    aaec:	019ba223          	sw	s9,4(s7)
    aaf0:	04e12423          	sw	a4,72(sp)
    aaf4:	04f12223          	sw	a5,68(sp)
    aaf8:	00700693          	li	a3,7
    aafc:	008b8b93          	addi	s7,s7,8
    ab00:	02f6d063          	bge	a3,a5,ab20 <_vfiprintf_r+0x170>
    ab04:	3e070ae3          	beqz	a4,b6f8 <_vfiprintf_r+0xd48>
    ab08:	04010613          	addi	a2,sp,64
    ab0c:	00098593          	mv	a1,s3
    ab10:	000a0513          	mv	a0,s4
    ab14:	d91ff0ef          	jal	ra,a8a4 <__sprint_r.part.0>
    ab18:	20051a63          	bnez	a0,ad2c <_vfiprintf_r+0x37c>
    ab1c:	00048b93          	mv	s7,s1
    ab20:	00c12703          	lw	a4,12(sp)
    ab24:	00044783          	lbu	a5,0(s0)
    ab28:	01970733          	add	a4,a4,s9
    ab2c:	00e12623          	sw	a4,12(sp)
    ab30:	1e078a63          	beqz	a5,ad24 <_vfiprintf_r+0x374>
    ab34:	00144703          	lbu	a4,1(s0)
    ab38:	00140c13          	addi	s8,s0,1
    ab3c:	02010da3          	sb	zero,59(sp)
    ab40:	fff00a93          	li	s5,-1
    ab44:	00012223          	sw	zero,4(sp)
    ab48:	00000b13          	li	s6,0
    ab4c:	05a00c93          	li	s9,90
    ab50:	00900d13          	li	s10,9
    ab54:	02a00613          	li	a2,42
    ab58:	001c0c13          	addi	s8,s8,1
    ab5c:	fe070793          	addi	a5,a4,-32
    ab60:	04fce863          	bltu	s9,a5,abb0 <_vfiprintf_r+0x200>
    ab64:	01412683          	lw	a3,20(sp)
    ab68:	00279793          	slli	a5,a5,0x2
    ab6c:	00d787b3          	add	a5,a5,a3
    ab70:	0007a783          	lw	a5,0(a5)
    ab74:	00078067          	jr	a5
    ab78:	00012223          	sw	zero,4(sp)
    ab7c:	fd070793          	addi	a5,a4,-48
    ab80:	00412583          	lw	a1,4(sp)
    ab84:	000c4703          	lbu	a4,0(s8)
    ab88:	001c0c13          	addi	s8,s8,1
    ab8c:	00259693          	slli	a3,a1,0x2
    ab90:	00b686b3          	add	a3,a3,a1
    ab94:	00169693          	slli	a3,a3,0x1
    ab98:	00d787b3          	add	a5,a5,a3
    ab9c:	00f12223          	sw	a5,4(sp)
    aba0:	fd070793          	addi	a5,a4,-48
    aba4:	fcfd7ee3          	bgeu	s10,a5,ab80 <_vfiprintf_r+0x1d0>
    aba8:	fe070793          	addi	a5,a4,-32
    abac:	fafcfce3          	bgeu	s9,a5,ab64 <_vfiprintf_r+0x1b4>
    abb0:	16070a63          	beqz	a4,ad24 <_vfiprintf_r+0x374>
    abb4:	08e10623          	sb	a4,140(sp)
    abb8:	02010da3          	sb	zero,59(sp)
    abbc:	00100c93          	li	s9,1
    abc0:	00100d13          	li	s10,1
    abc4:	08c10413          	addi	s0,sp,140
    abc8:	00000a93          	li	s5,0
    abcc:	002b7f93          	andi	t6,s6,2
    abd0:	000f8463          	beqz	t6,abd8 <_vfiprintf_r+0x228>
    abd4:	002c8c93          	addi	s9,s9,2
    abd8:	04412703          	lw	a4,68(sp)
    abdc:	084b7f13          	andi	t5,s6,132
    abe0:	04812783          	lw	a5,72(sp)
    abe4:	00170693          	addi	a3,a4,1
    abe8:	00068613          	mv	a2,a3
    abec:	000f1863          	bnez	t5,abfc <_vfiprintf_r+0x24c>
    abf0:	00412583          	lw	a1,4(sp)
    abf4:	41958db3          	sub	s11,a1,s9
    abf8:	0db042e3          	bgtz	s11,b4bc <_vfiprintf_r+0xb0c>
    abfc:	03b14583          	lbu	a1,59(sp)
    ac00:	008b8693          	addi	a3,s7,8
    ac04:	02058c63          	beqz	a1,ac3c <_vfiprintf_r+0x28c>
    ac08:	03b10713          	addi	a4,sp,59
    ac0c:	00178793          	addi	a5,a5,1
    ac10:	00eba023          	sw	a4,0(s7)
    ac14:	00100713          	li	a4,1
    ac18:	00eba223          	sw	a4,4(s7)
    ac1c:	04f12423          	sw	a5,72(sp)
    ac20:	04c12223          	sw	a2,68(sp)
    ac24:	00700713          	li	a4,7
    ac28:	00c748e3          	blt	a4,a2,b438 <_vfiprintf_r+0xa88>
    ac2c:	00060713          	mv	a4,a2
    ac30:	00068b93          	mv	s7,a3
    ac34:	00160613          	addi	a2,a2,1
    ac38:	00868693          	addi	a3,a3,8 # 2008 <_svfprintf_r+0xfb4>
    ac3c:	040f8e63          	beqz	t6,ac98 <_vfiprintf_r+0x2e8>
    ac40:	03c10713          	addi	a4,sp,60
    ac44:	00278793          	addi	a5,a5,2
    ac48:	00eba023          	sw	a4,0(s7)
    ac4c:	00200713          	li	a4,2
    ac50:	00eba223          	sw	a4,4(s7)
    ac54:	04f12423          	sw	a5,72(sp)
    ac58:	04c12223          	sw	a2,68(sp)
    ac5c:	00700713          	li	a4,7
    ac60:	04c750e3          	bge	a4,a2,b4a0 <_vfiprintf_r+0xaf0>
    ac64:	2e0784e3          	beqz	a5,b74c <_vfiprintf_r+0xd9c>
    ac68:	04010613          	addi	a2,sp,64
    ac6c:	00098593          	mv	a1,s3
    ac70:	000a0513          	mv	a0,s4
    ac74:	03e12423          	sw	t5,40(sp)
    ac78:	c2dff0ef          	jal	ra,a8a4 <__sprint_r.part.0>
    ac7c:	0a051863          	bnez	a0,ad2c <_vfiprintf_r+0x37c>
    ac80:	04412703          	lw	a4,68(sp)
    ac84:	04812783          	lw	a5,72(sp)
    ac88:	02812f03          	lw	t5,40(sp)
    ac8c:	05410693          	addi	a3,sp,84
    ac90:	00170613          	addi	a2,a4,1
    ac94:	00048b93          	mv	s7,s1
    ac98:	08000593          	li	a1,128
    ac9c:	5cbf0e63          	beq	t5,a1,b278 <_vfiprintf_r+0x8c8>
    aca0:	41aa8ab3          	sub	s5,s5,s10
    aca4:	6b504a63          	bgtz	s5,b358 <_vfiprintf_r+0x9a8>
    aca8:	00fd07b3          	add	a5,s10,a5
    acac:	008ba023          	sw	s0,0(s7)
    acb0:	01aba223          	sw	s10,4(s7)
    acb4:	04f12423          	sw	a5,72(sp)
    acb8:	04c12223          	sw	a2,68(sp)
    acbc:	00700713          	li	a4,7
    acc0:	02c75263          	bge	a4,a2,ace4 <_vfiprintf_r+0x334>
    acc4:	0e078ee3          	beqz	a5,b5c0 <_vfiprintf_r+0xc10>
    acc8:	04010613          	addi	a2,sp,64
    accc:	00098593          	mv	a1,s3
    acd0:	000a0513          	mv	a0,s4
    acd4:	bd1ff0ef          	jal	ra,a8a4 <__sprint_r.part.0>
    acd8:	04051a63          	bnez	a0,ad2c <_vfiprintf_r+0x37c>
    acdc:	04812783          	lw	a5,72(sp)
    ace0:	00048693          	mv	a3,s1
    ace4:	004b7313          	andi	t1,s6,4
    ace8:	00030863          	beqz	t1,acf8 <_vfiprintf_r+0x348>
    acec:	00412703          	lw	a4,4(sp)
    acf0:	41970bb3          	sub	s7,a4,s9
    acf4:	0f7044e3          	bgtz	s7,b5dc <_vfiprintf_r+0xc2c>
    acf8:	00412403          	lw	s0,4(sp)
    acfc:	01945463          	bge	s0,s9,ad04 <_vfiprintf_r+0x354>
    ad00:	000c8413          	mv	s0,s9
    ad04:	00c12703          	lw	a4,12(sp)
    ad08:	00870733          	add	a4,a4,s0
    ad0c:	00e12623          	sw	a4,12(sp)
    ad10:	70079063          	bnez	a5,b410 <_vfiprintf_r+0xa60>
    ad14:	000c4783          	lbu	a5,0(s8)
    ad18:	04012223          	sw	zero,68(sp)
    ad1c:	00048b93          	mv	s7,s1
    ad20:	d8079ce3          	bnez	a5,aab8 <_vfiprintf_r+0x108>
    ad24:	04812783          	lw	a5,72(sp)
    ad28:	660798e3          	bnez	a5,bb98 <_vfiprintf_r+0x11e8>
    ad2c:	00c9d783          	lhu	a5,12(s3)
    ad30:	0407f793          	andi	a5,a5,64
    ad34:	6a0790e3          	bnez	a5,bbd4 <_vfiprintf_r+0x1224>
    ad38:	12c12083          	lw	ra,300(sp)
    ad3c:	12812403          	lw	s0,296(sp)
    ad40:	00c12503          	lw	a0,12(sp)
    ad44:	12412483          	lw	s1,292(sp)
    ad48:	12012903          	lw	s2,288(sp)
    ad4c:	11c12983          	lw	s3,284(sp)
    ad50:	11812a03          	lw	s4,280(sp)
    ad54:	11412a83          	lw	s5,276(sp)
    ad58:	11012b03          	lw	s6,272(sp)
    ad5c:	10c12b83          	lw	s7,268(sp)
    ad60:	10812c03          	lw	s8,264(sp)
    ad64:	10412c83          	lw	s9,260(sp)
    ad68:	10012d03          	lw	s10,256(sp)
    ad6c:	0fc12d83          	lw	s11,252(sp)
    ad70:	13010113          	addi	sp,sp,304
    ad74:	00008067          	ret
    ad78:	000a0513          	mv	a0,s4
    ad7c:	ce9fb0ef          	jal	ra,6a64 <_localeconv_r>
    ad80:	00452783          	lw	a5,4(a0)
    ad84:	00078513          	mv	a0,a5
    ad88:	02f12023          	sw	a5,32(sp)
    ad8c:	a89fd0ef          	jal	ra,8814 <strlen>
    ad90:	00050793          	mv	a5,a0
    ad94:	000a0513          	mv	a0,s4
    ad98:	00078413          	mv	s0,a5
    ad9c:	02f12223          	sw	a5,36(sp)
    ada0:	cc5fb0ef          	jal	ra,6a64 <_localeconv_r>
    ada4:	00852783          	lw	a5,8(a0)
    ada8:	02a00613          	li	a2,42
    adac:	00f12e23          	sw	a5,28(sp)
    adb0:	2e0412e3          	bnez	s0,b894 <_vfiprintf_r+0xee4>
    adb4:	000c4703          	lbu	a4,0(s8)
    adb8:	da1ff06f          	j	ab58 <_vfiprintf_r+0x1a8>
    adbc:	000c4703          	lbu	a4,0(s8)
    adc0:	020b6b13          	ori	s6,s6,32
    adc4:	d95ff06f          	j	ab58 <_vfiprintf_r+0x1a8>
    adc8:	010b6b13          	ori	s6,s6,16
    adcc:	020b7793          	andi	a5,s6,32
    add0:	18078c63          	beqz	a5,af68 <_vfiprintf_r+0x5b8>
    add4:	01012783          	lw	a5,16(sp)
    add8:	00778793          	addi	a5,a5,7
    addc:	ff87f793          	andi	a5,a5,-8
    ade0:	0047a703          	lw	a4,4(a5)
    ade4:	0007ad03          	lw	s10,0(a5)
    ade8:	00878793          	addi	a5,a5,8
    adec:	00f12823          	sw	a5,16(sp)
    adf0:	00070c93          	mv	s9,a4
    adf4:	1a074263          	bltz	a4,af98 <_vfiprintf_r+0x5e8>
    adf8:	fff00713          	li	a4,-1
    adfc:	000b0d93          	mv	s11,s6
    ae00:	00ea8863          	beq	s5,a4,ae10 <_vfiprintf_r+0x460>
    ae04:	019d6733          	or	a4,s10,s9
    ae08:	f7fb7d93          	andi	s11,s6,-129
    ae0c:	0e070ce3          	beqz	a4,b704 <_vfiprintf_r+0xd54>
    ae10:	160c94e3          	bnez	s9,b778 <_vfiprintf_r+0xdc8>
    ae14:	00900713          	li	a4,9
    ae18:	17a760e3          	bltu	a4,s10,b778 <_vfiprintf_r+0xdc8>
    ae1c:	030d0793          	addi	a5,s10,48
    ae20:	0ef107a3          	sb	a5,239(sp)
    ae24:	000d8b13          	mv	s6,s11
    ae28:	00100d13          	li	s10,1
    ae2c:	0ef10413          	addi	s0,sp,239
    ae30:	000a8c93          	mv	s9,s5
    ae34:	01aad463          	bge	s5,s10,ae3c <_vfiprintf_r+0x48c>
    ae38:	000d0c93          	mv	s9,s10
    ae3c:	03b14783          	lbu	a5,59(sp)
    ae40:	00f037b3          	snez	a5,a5
    ae44:	00fc8cb3          	add	s9,s9,a5
    ae48:	d85ff06f          	j	abcc <_vfiprintf_r+0x21c>
    ae4c:	00098593          	mv	a1,s3
    ae50:	000a0513          	mv	a0,s4
    ae54:	6cd000ef          	jal	ra,bd20 <__swsetup_r>
    ae58:	56051ee3          	bnez	a0,bbd4 <_vfiprintf_r+0x1224>
    ae5c:	00c9d783          	lhu	a5,12(s3)
    ae60:	00a00713          	li	a4,10
    ae64:	01a7f793          	andi	a5,a5,26
    ae68:	bee79ee3          	bne	a5,a4,aa64 <_vfiprintf_r+0xb4>
    ae6c:	00e99783          	lh	a5,14(s3)
    ae70:	be07cae3          	bltz	a5,aa64 <_vfiprintf_r+0xb4>
    ae74:	12812403          	lw	s0,296(sp)
    ae78:	01012683          	lw	a3,16(sp)
    ae7c:	12c12083          	lw	ra,300(sp)
    ae80:	12412483          	lw	s1,292(sp)
    ae84:	12012903          	lw	s2,288(sp)
    ae88:	11412a83          	lw	s5,276(sp)
    ae8c:	11012b03          	lw	s6,272(sp)
    ae90:	10812c03          	lw	s8,264(sp)
    ae94:	10412c83          	lw	s9,260(sp)
    ae98:	10012d03          	lw	s10,256(sp)
    ae9c:	0fc12d83          	lw	s11,252(sp)
    aea0:	000b8613          	mv	a2,s7
    aea4:	00098593          	mv	a1,s3
    aea8:	10c12b83          	lw	s7,268(sp)
    aeac:	11c12983          	lw	s3,284(sp)
    aeb0:	000a0513          	mv	a0,s4
    aeb4:	11812a03          	lw	s4,280(sp)
    aeb8:	13010113          	addi	sp,sp,304
    aebc:	56d0006f          	j	bc28 <__sbprintf>
    aec0:	010b6b13          	ori	s6,s6,16
    aec4:	020b7793          	andi	a5,s6,32
    aec8:	06078a63          	beqz	a5,af3c <_vfiprintf_r+0x58c>
    aecc:	01012783          	lw	a5,16(sp)
    aed0:	00778793          	addi	a5,a5,7
    aed4:	ff87f793          	andi	a5,a5,-8
    aed8:	0007ad03          	lw	s10,0(a5)
    aedc:	0047ac83          	lw	s9,4(a5)
    aee0:	00878793          	addi	a5,a5,8
    aee4:	00f12823          	sw	a5,16(sp)
    aee8:	bffb7d93          	andi	s11,s6,-1025
    aeec:	00000713          	li	a4,0
    aef0:	02010da3          	sb	zero,59(sp)
    aef4:	fff00693          	li	a3,-1
    aef8:	0cda8463          	beq	s5,a3,afc0 <_vfiprintf_r+0x610>
    aefc:	019d66b3          	or	a3,s10,s9
    af00:	f7fdfb13          	andi	s6,s11,-129
    af04:	5a069863          	bnez	a3,b4b4 <_vfiprintf_r+0xb04>
    af08:	300a9c63          	bnez	s5,b220 <_vfiprintf_r+0x870>
    af0c:	000710e3          	bnez	a4,b70c <_vfiprintf_r+0xd5c>
    af10:	001dfd13          	andi	s10,s11,1
    af14:	0f010413          	addi	s0,sp,240
    af18:	f00d0ce3          	beqz	s10,ae30 <_vfiprintf_r+0x480>
    af1c:	03000793          	li	a5,48
    af20:	0ef107a3          	sb	a5,239(sp)
    af24:	0ef10413          	addi	s0,sp,239
    af28:	f09ff06f          	j	ae30 <_vfiprintf_r+0x480>
    af2c:	41840cb3          	sub	s9,s0,s8
    af30:	bb8414e3          	bne	s0,s8,aad8 <_vfiprintf_r+0x128>
    af34:	00044783          	lbu	a5,0(s0)
    af38:	bf9ff06f          	j	ab30 <_vfiprintf_r+0x180>
    af3c:	01012683          	lw	a3,16(sp)
    af40:	010b7793          	andi	a5,s6,16
    af44:	00468713          	addi	a4,a3,4
    af48:	16079ee3          	bnez	a5,b8c4 <_vfiprintf_r+0xf14>
    af4c:	040b7793          	andi	a5,s6,64
    af50:	36078ee3          	beqz	a5,bacc <_vfiprintf_r+0x111c>
    af54:	01012783          	lw	a5,16(sp)
    af58:	00000c93          	li	s9,0
    af5c:	00e12823          	sw	a4,16(sp)
    af60:	0007dd03          	lhu	s10,0(a5)
    af64:	f85ff06f          	j	aee8 <_vfiprintf_r+0x538>
    af68:	01012683          	lw	a3,16(sp)
    af6c:	010b7793          	andi	a5,s6,16
    af70:	00468713          	addi	a4,a3,4
    af74:	100796e3          	bnez	a5,b880 <_vfiprintf_r+0xed0>
    af78:	040b7793          	andi	a5,s6,64
    af7c:	300788e3          	beqz	a5,ba8c <_vfiprintf_r+0x10dc>
    af80:	01012783          	lw	a5,16(sp)
    af84:	00e12823          	sw	a4,16(sp)
    af88:	00079d03          	lh	s10,0(a5)
    af8c:	41fd5c93          	srai	s9,s10,0x1f
    af90:	000c8713          	mv	a4,s9
    af94:	e60752e3          	bgez	a4,adf8 <_vfiprintf_r+0x448>
    af98:	01a03733          	snez	a4,s10
    af9c:	41900eb3          	neg	t4,s9
    afa0:	40ee8cb3          	sub	s9,t4,a4
    afa4:	02d00713          	li	a4,45
    afa8:	02e10da3          	sb	a4,59(sp)
    afac:	fff00693          	li	a3,-1
    afb0:	41a00d33          	neg	s10,s10
    afb4:	000b0d93          	mv	s11,s6
    afb8:	00100713          	li	a4,1
    afbc:	f4da90e3          	bne	s5,a3,aefc <_vfiprintf_r+0x54c>
    afc0:	00100693          	li	a3,1
    afc4:	e4d706e3          	beq	a4,a3,ae10 <_vfiprintf_r+0x460>
    afc8:	00200693          	li	a3,2
    afcc:	26d70463          	beq	a4,a3,b234 <_vfiprintf_r+0x884>
    afd0:	0f010413          	addi	s0,sp,240
    afd4:	01dc9793          	slli	a5,s9,0x1d
    afd8:	007d7713          	andi	a4,s10,7
    afdc:	003d5d13          	srli	s10,s10,0x3
    afe0:	03070713          	addi	a4,a4,48
    afe4:	01a7ed33          	or	s10,a5,s10
    afe8:	003cdc93          	srli	s9,s9,0x3
    afec:	fee40fa3          	sb	a4,-1(s0)
    aff0:	019d67b3          	or	a5,s10,s9
    aff4:	00040613          	mv	a2,s0
    aff8:	fff40413          	addi	s0,s0,-1
    affc:	fc079ce3          	bnez	a5,afd4 <_vfiprintf_r+0x624>
    b000:	001df793          	andi	a5,s11,1
    b004:	26078263          	beqz	a5,b268 <_vfiprintf_r+0x8b8>
    b008:	03000793          	li	a5,48
    b00c:	24f70e63          	beq	a4,a5,b268 <_vfiprintf_r+0x8b8>
    b010:	ffe60613          	addi	a2,a2,-2
    b014:	fef40fa3          	sb	a5,-1(s0)
    b018:	0f010793          	addi	a5,sp,240
    b01c:	40c78d33          	sub	s10,a5,a2
    b020:	000d8b13          	mv	s6,s11
    b024:	00060413          	mv	s0,a2
    b028:	e09ff06f          	j	ae30 <_vfiprintf_r+0x480>
    b02c:	510010ef          	jal	ra,c53c <__sinit>
    b030:	9d5ff06f          	j	aa04 <_vfiprintf_r+0x54>
    b034:	01012783          	lw	a5,16(sp)
    b038:	02010da3          	sb	zero,59(sp)
    b03c:	0007a403          	lw	s0,0(a5)
    b040:	00478d93          	addi	s11,a5,4
    b044:	200406e3          	beqz	s0,ba50 <_vfiprintf_r+0x10a0>
    b048:	fff00793          	li	a5,-1
    b04c:	12fa8ee3          	beq	s5,a5,b988 <_vfiprintf_r+0xfd8>
    b050:	000a8613          	mv	a2,s5
    b054:	00000593          	li	a1,0
    b058:	00040513          	mv	a0,s0
    b05c:	9b0fc0ef          	jal	ra,720c <memchr>
    b060:	340506e3          	beqz	a0,bbac <_vfiprintf_r+0x11fc>
    b064:	40850d33          	sub	s10,a0,s0
    b068:	01b12823          	sw	s11,16(sp)
    b06c:	00000a93          	li	s5,0
    b070:	dc1ff06f          	j	ae30 <_vfiprintf_r+0x480>
    b074:	01012703          	lw	a4,16(sp)
    b078:	02010da3          	sb	zero,59(sp)
    b07c:	00100c93          	li	s9,1
    b080:	00072783          	lw	a5,0(a4)
    b084:	00470713          	addi	a4,a4,4
    b088:	00e12823          	sw	a4,16(sp)
    b08c:	08f10623          	sb	a5,140(sp)
    b090:	00100d13          	li	s10,1
    b094:	08c10413          	addi	s0,sp,140
    b098:	b31ff06f          	j	abc8 <_vfiprintf_r+0x218>
    b09c:	01012783          	lw	a5,16(sp)
    b0a0:	ffff8737          	lui	a4,0xffff8
    b0a4:	83074713          	xori	a4,a4,-2000
    b0a8:	0007ad03          	lw	s10,0(a5)
    b0ac:	00478793          	addi	a5,a5,4
    b0b0:	00f12823          	sw	a5,16(sp)
    b0b4:	000137b7          	lui	a5,0x13
    b0b8:	22478793          	addi	a5,a5,548 # 13224 <hex_symbols.0+0x20>
    b0bc:	02e11e23          	sh	a4,60(sp)
    b0c0:	00000c93          	li	s9,0
    b0c4:	002b6d93          	ori	s11,s6,2
    b0c8:	00f12c23          	sw	a5,24(sp)
    b0cc:	00200713          	li	a4,2
    b0d0:	e21ff06f          	j	aef0 <_vfiprintf_r+0x540>
    b0d4:	000c4703          	lbu	a4,0(s8)
    b0d8:	06c00793          	li	a5,108
    b0dc:	14f70ce3          	beq	a4,a5,ba34 <_vfiprintf_r+0x1084>
    b0e0:	010b6b13          	ori	s6,s6,16
    b0e4:	a75ff06f          	j	ab58 <_vfiprintf_r+0x1a8>
    b0e8:	000c4703          	lbu	a4,0(s8)
    b0ec:	06800793          	li	a5,104
    b0f0:	12f70ae3          	beq	a4,a5,ba24 <_vfiprintf_r+0x1074>
    b0f4:	040b6b13          	ori	s6,s6,64
    b0f8:	a61ff06f          	j	ab58 <_vfiprintf_r+0x1a8>
    b0fc:	010b6d93          	ori	s11,s6,16
    b100:	020df793          	andi	a5,s11,32
    b104:	60078c63          	beqz	a5,b71c <_vfiprintf_r+0xd6c>
    b108:	01012783          	lw	a5,16(sp)
    b10c:	00100713          	li	a4,1
    b110:	00778793          	addi	a5,a5,7
    b114:	ff87f793          	andi	a5,a5,-8
    b118:	0007ad03          	lw	s10,0(a5)
    b11c:	0047ac83          	lw	s9,4(a5)
    b120:	00878793          	addi	a5,a5,8
    b124:	00f12823          	sw	a5,16(sp)
    b128:	dc9ff06f          	j	aef0 <_vfiprintf_r+0x540>
    b12c:	000c4703          	lbu	a4,0(s8)
    b130:	080b6b13          	ori	s6,s6,128
    b134:	a25ff06f          	j	ab58 <_vfiprintf_r+0x1a8>
    b138:	01012683          	lw	a3,16(sp)
    b13c:	000c4703          	lbu	a4,0(s8)
    b140:	0006a783          	lw	a5,0(a3)
    b144:	00468693          	addi	a3,a3,4
    b148:	00d12823          	sw	a3,16(sp)
    b14c:	00f12223          	sw	a5,4(sp)
    b150:	a007d4e3          	bgez	a5,ab58 <_vfiprintf_r+0x1a8>
    b154:	40f007b3          	neg	a5,a5
    b158:	00f12223          	sw	a5,4(sp)
    b15c:	004b6b13          	ori	s6,s6,4
    b160:	9f9ff06f          	j	ab58 <_vfiprintf_r+0x1a8>
    b164:	000c4703          	lbu	a4,0(s8)
    b168:	001b6b13          	ori	s6,s6,1
    b16c:	9edff06f          	j	ab58 <_vfiprintf_r+0x1a8>
    b170:	03b14783          	lbu	a5,59(sp)
    b174:	000c4703          	lbu	a4,0(s8)
    b178:	9e0790e3          	bnez	a5,ab58 <_vfiprintf_r+0x1a8>
    b17c:	02000793          	li	a5,32
    b180:	02f10da3          	sb	a5,59(sp)
    b184:	9d5ff06f          	j	ab58 <_vfiprintf_r+0x1a8>
    b188:	000c4703          	lbu	a4,0(s8)
    b18c:	004b6b13          	ori	s6,s6,4
    b190:	9c9ff06f          	j	ab58 <_vfiprintf_r+0x1a8>
    b194:	02b00793          	li	a5,43
    b198:	000c4703          	lbu	a4,0(s8)
    b19c:	02f10da3          	sb	a5,59(sp)
    b1a0:	9b9ff06f          	j	ab58 <_vfiprintf_r+0x1a8>
    b1a4:	000c4703          	lbu	a4,0(s8)
    b1a8:	001c0693          	addi	a3,s8,1
    b1ac:	24c700e3          	beq	a4,a2,bbec <_vfiprintf_r+0x123c>
    b1b0:	fd070793          	addi	a5,a4,-48 # ffff7fd0 <__ctr0_io_space_begin+0xffff81d0>
    b1b4:	00068c13          	mv	s8,a3
    b1b8:	00000a93          	li	s5,0
    b1bc:	9afd60e3          	bltu	s10,a5,ab5c <_vfiprintf_r+0x1ac>
    b1c0:	000c4703          	lbu	a4,0(s8)
    b1c4:	002a9693          	slli	a3,s5,0x2
    b1c8:	01568ab3          	add	s5,a3,s5
    b1cc:	001a9a93          	slli	s5,s5,0x1
    b1d0:	00fa8ab3          	add	s5,s5,a5
    b1d4:	fd070793          	addi	a5,a4,-48
    b1d8:	001c0c13          	addi	s8,s8,1
    b1dc:	fefd72e3          	bgeu	s10,a5,b1c0 <_vfiprintf_r+0x810>
    b1e0:	97dff06f          	j	ab5c <_vfiprintf_r+0x1ac>
    b1e4:	01012683          	lw	a3,16(sp)
    b1e8:	020b7793          	andi	a5,s6,32
    b1ec:	0006a703          	lw	a4,0(a3)
    b1f0:	00468693          	addi	a3,a3,4
    b1f4:	00d12823          	sw	a3,16(sp)
    b1f8:	6a079c63          	bnez	a5,b8b0 <_vfiprintf_r+0xf00>
    b1fc:	010b7793          	andi	a5,s6,16
    b200:	040792e3          	bnez	a5,ba44 <_vfiprintf_r+0x1094>
    b204:	040b7793          	andi	a5,s6,64
    b208:	120796e3          	bnez	a5,bb34 <_vfiprintf_r+0x1184>
    b20c:	200b7313          	andi	t1,s6,512
    b210:	02030ae3          	beqz	t1,ba44 <_vfiprintf_r+0x1094>
    b214:	00c12783          	lw	a5,12(sp)
    b218:	00f70023          	sb	a5,0(a4)
    b21c:	895ff06f          	j	aab0 <_vfiprintf_r+0x100>
    b220:	00100693          	li	a3,1
    b224:	1ad704e3          	beq	a4,a3,bbcc <_vfiprintf_r+0x121c>
    b228:	00200693          	li	a3,2
    b22c:	000b0d93          	mv	s11,s6
    b230:	dad710e3          	bne	a4,a3,afd0 <_vfiprintf_r+0x620>
    b234:	01812683          	lw	a3,24(sp)
    b238:	0f010413          	addi	s0,sp,240
    b23c:	00fd7793          	andi	a5,s10,15
    b240:	00f687b3          	add	a5,a3,a5
    b244:	0007c703          	lbu	a4,0(a5)
    b248:	004d5d13          	srli	s10,s10,0x4
    b24c:	01cc9793          	slli	a5,s9,0x1c
    b250:	01a7ed33          	or	s10,a5,s10
    b254:	004cdc93          	srli	s9,s9,0x4
    b258:	fee40fa3          	sb	a4,-1(s0)
    b25c:	019d67b3          	or	a5,s10,s9
    b260:	fff40413          	addi	s0,s0,-1
    b264:	fc079ce3          	bnez	a5,b23c <_vfiprintf_r+0x88c>
    b268:	0f010793          	addi	a5,sp,240
    b26c:	40878d33          	sub	s10,a5,s0
    b270:	000d8b13          	mv	s6,s11
    b274:	bbdff06f          	j	ae30 <_vfiprintf_r+0x480>
    b278:	00412583          	lw	a1,4(sp)
    b27c:	41958db3          	sub	s11,a1,s9
    b280:	a3b050e3          	blez	s11,aca0 <_vfiprintf_r+0x2f0>
    b284:	01000593          	li	a1,16
    b288:	15b5dce3          	bge	a1,s11,bbe0 <_vfiprintf_r+0x1230>
    b28c:	01000e93          	li	t4,16
    b290:	00700f13          	li	t5,7
    b294:	0180006f          	j	b2ac <_vfiprintf_r+0x8fc>
    b298:	00270613          	addi	a2,a4,2
    b29c:	008b8b93          	addi	s7,s7,8
    b2a0:	00068713          	mv	a4,a3
    b2a4:	ff0d8d93          	addi	s11,s11,-16
    b2a8:	05bedc63          	bge	t4,s11,b300 <_vfiprintf_r+0x950>
    b2ac:	01078793          	addi	a5,a5,16
    b2b0:	00170693          	addi	a3,a4,1
    b2b4:	012ba023          	sw	s2,0(s7)
    b2b8:	01dba223          	sw	t4,4(s7)
    b2bc:	04f12423          	sw	a5,72(sp)
    b2c0:	04d12223          	sw	a3,68(sp)
    b2c4:	fcdf5ae3          	bge	t5,a3,b298 <_vfiprintf_r+0x8e8>
    b2c8:	16078063          	beqz	a5,b428 <_vfiprintf_r+0xa78>
    b2cc:	04010613          	addi	a2,sp,64
    b2d0:	00098593          	mv	a1,s3
    b2d4:	000a0513          	mv	a0,s4
    b2d8:	dccff0ef          	jal	ra,a8a4 <__sprint_r.part.0>
    b2dc:	a40518e3          	bnez	a0,ad2c <_vfiprintf_r+0x37c>
    b2e0:	04412703          	lw	a4,68(sp)
    b2e4:	01000e93          	li	t4,16
    b2e8:	ff0d8d93          	addi	s11,s11,-16
    b2ec:	04812783          	lw	a5,72(sp)
    b2f0:	00048b93          	mv	s7,s1
    b2f4:	00170613          	addi	a2,a4,1
    b2f8:	00700f13          	li	t5,7
    b2fc:	fbbec8e3          	blt	t4,s11,b2ac <_vfiprintf_r+0x8fc>
    b300:	00060593          	mv	a1,a2
    b304:	008b8513          	addi	a0,s7,8
    b308:	01b787b3          	add	a5,a5,s11
    b30c:	012ba023          	sw	s2,0(s7)
    b310:	01bba223          	sw	s11,4(s7)
    b314:	04f12423          	sw	a5,72(sp)
    b318:	04b12223          	sw	a1,68(sp)
    b31c:	00700713          	li	a4,7
    b320:	52b75c63          	bge	a4,a1,b858 <_vfiprintf_r+0xea8>
    b324:	7c078c63          	beqz	a5,bafc <_vfiprintf_r+0x114c>
    b328:	04010613          	addi	a2,sp,64
    b32c:	00098593          	mv	a1,s3
    b330:	000a0513          	mv	a0,s4
    b334:	d70ff0ef          	jal	ra,a8a4 <__sprint_r.part.0>
    b338:	9e051ae3          	bnez	a0,ad2c <_vfiprintf_r+0x37c>
    b33c:	04412703          	lw	a4,68(sp)
    b340:	41aa8ab3          	sub	s5,s5,s10
    b344:	04812783          	lw	a5,72(sp)
    b348:	05410693          	addi	a3,sp,84
    b34c:	00170613          	addi	a2,a4,1
    b350:	00048b93          	mv	s7,s1
    b354:	95505ae3          	blez	s5,aca8 <_vfiprintf_r+0x2f8>
    b358:	01000593          	li	a1,16
    b35c:	7955d663          	bge	a1,s5,bae8 <_vfiprintf_r+0x1138>
    b360:	01000893          	li	a7,16
    b364:	00700d93          	li	s11,7
    b368:	0180006f          	j	b380 <_vfiprintf_r+0x9d0>
    b36c:	00270613          	addi	a2,a4,2
    b370:	008b8b93          	addi	s7,s7,8
    b374:	00068713          	mv	a4,a3
    b378:	ff0a8a93          	addi	s5,s5,-16
    b37c:	0558da63          	bge	a7,s5,b3d0 <_vfiprintf_r+0xa20>
    b380:	01078793          	addi	a5,a5,16
    b384:	00170693          	addi	a3,a4,1
    b388:	012ba023          	sw	s2,0(s7)
    b38c:	011ba223          	sw	a7,4(s7)
    b390:	04f12423          	sw	a5,72(sp)
    b394:	04d12223          	sw	a3,68(sp)
    b398:	fcdddae3          	bge	s11,a3,b36c <_vfiprintf_r+0x9bc>
    b39c:	06078263          	beqz	a5,b400 <_vfiprintf_r+0xa50>
    b3a0:	04010613          	addi	a2,sp,64
    b3a4:	00098593          	mv	a1,s3
    b3a8:	000a0513          	mv	a0,s4
    b3ac:	cf8ff0ef          	jal	ra,a8a4 <__sprint_r.part.0>
    b3b0:	96051ee3          	bnez	a0,ad2c <_vfiprintf_r+0x37c>
    b3b4:	04412703          	lw	a4,68(sp)
    b3b8:	01000893          	li	a7,16
    b3bc:	ff0a8a93          	addi	s5,s5,-16
    b3c0:	04812783          	lw	a5,72(sp)
    b3c4:	00048b93          	mv	s7,s1
    b3c8:	00170613          	addi	a2,a4,1
    b3cc:	fb58cae3          	blt	a7,s5,b380 <_vfiprintf_r+0x9d0>
    b3d0:	008b8593          	addi	a1,s7,8
    b3d4:	015787b3          	add	a5,a5,s5
    b3d8:	012ba023          	sw	s2,0(s7)
    b3dc:	015ba223          	sw	s5,4(s7)
    b3e0:	04f12423          	sw	a5,72(sp)
    b3e4:	04c12223          	sw	a2,68(sp)
    b3e8:	00700713          	li	a4,7
    b3ec:	2cc74e63          	blt	a4,a2,b6c8 <_vfiprintf_r+0xd18>
    b3f0:	00160613          	addi	a2,a2,1
    b3f4:	00858693          	addi	a3,a1,8
    b3f8:	00058b93          	mv	s7,a1
    b3fc:	8adff06f          	j	aca8 <_vfiprintf_r+0x2f8>
    b400:	00100613          	li	a2,1
    b404:	00000713          	li	a4,0
    b408:	00048b93          	mv	s7,s1
    b40c:	f6dff06f          	j	b378 <_vfiprintf_r+0x9c8>
    b410:	04010613          	addi	a2,sp,64
    b414:	00098593          	mv	a1,s3
    b418:	000a0513          	mv	a0,s4
    b41c:	c88ff0ef          	jal	ra,a8a4 <__sprint_r.part.0>
    b420:	8e050ae3          	beqz	a0,ad14 <_vfiprintf_r+0x364>
    b424:	909ff06f          	j	ad2c <_vfiprintf_r+0x37c>
    b428:	00100613          	li	a2,1
    b42c:	00000713          	li	a4,0
    b430:	00048b93          	mv	s7,s1
    b434:	e71ff06f          	j	b2a4 <_vfiprintf_r+0x8f4>
    b438:	32078463          	beqz	a5,b760 <_vfiprintf_r+0xdb0>
    b43c:	04010613          	addi	a2,sp,64
    b440:	00098593          	mv	a1,s3
    b444:	000a0513          	mv	a0,s4
    b448:	03e12623          	sw	t5,44(sp)
    b44c:	03f12423          	sw	t6,40(sp)
    b450:	c54ff0ef          	jal	ra,a8a4 <__sprint_r.part.0>
    b454:	8c051ce3          	bnez	a0,ad2c <_vfiprintf_r+0x37c>
    b458:	04412703          	lw	a4,68(sp)
    b45c:	04812783          	lw	a5,72(sp)
    b460:	02c12f03          	lw	t5,44(sp)
    b464:	02812f83          	lw	t6,40(sp)
    b468:	05410693          	addi	a3,sp,84
    b46c:	00170613          	addi	a2,a4,1
    b470:	00048b93          	mv	s7,s1
    b474:	fc8ff06f          	j	ac3c <_vfiprintf_r+0x28c>
    b478:	3a079463          	bnez	a5,b820 <_vfiprintf_r+0xe70>
    b47c:	03b14703          	lbu	a4,59(sp)
    b480:	68071c63          	bnez	a4,bb18 <_vfiprintf_r+0x1168>
    b484:	2e0f8063          	beqz	t6,b764 <_vfiprintf_r+0xdb4>
    b488:	03c10793          	addi	a5,sp,60
    b48c:	04f12623          	sw	a5,76(sp)
    b490:	00200793          	li	a5,2
    b494:	04f12823          	sw	a5,80(sp)
    b498:	05410693          	addi	a3,sp,84
    b49c:	00100613          	li	a2,1
    b4a0:	00068b93          	mv	s7,a3
    b4a4:	00060713          	mv	a4,a2
    b4a8:	00170613          	addi	a2,a4,1
    b4ac:	008b8693          	addi	a3,s7,8
    b4b0:	fe8ff06f          	j	ac98 <_vfiprintf_r+0x2e8>
    b4b4:	000b0d93          	mv	s11,s6
    b4b8:	b09ff06f          	j	afc0 <_vfiprintf_r+0x610>
    b4bc:	01000613          	li	a2,16
    b4c0:	6fb65e63          	bge	a2,s11,bbbc <_vfiprintf_r+0x120c>
    b4c4:	000b8613          	mv	a2,s7
    b4c8:	01000e93          	li	t4,16
    b4cc:	00040b93          	mv	s7,s0
    b4d0:	00700293          	li	t0,7
    b4d4:	00098413          	mv	s0,s3
    b4d8:	03f12423          	sw	t6,40(sp)
    b4dc:	000d8993          	mv	s3,s11
    b4e0:	000c0d93          	mv	s11,s8
    b4e4:	000a8c13          	mv	s8,s5
    b4e8:	000f0a93          	mv	s5,t5
    b4ec:	01c0006f          	j	b508 <_vfiprintf_r+0xb58>
    b4f0:	00270513          	addi	a0,a4,2
    b4f4:	00860613          	addi	a2,a2,8
    b4f8:	00068713          	mv	a4,a3
    b4fc:	ff098993          	addi	s3,s3,-16
    b500:	053ede63          	bge	t4,s3,b55c <_vfiprintf_r+0xbac>
    b504:	00170693          	addi	a3,a4,1
    b508:	00812583          	lw	a1,8(sp)
    b50c:	01078793          	addi	a5,a5,16
    b510:	01d62223          	sw	t4,4(a2)
    b514:	00b62023          	sw	a1,0(a2)
    b518:	04f12423          	sw	a5,72(sp)
    b51c:	04d12223          	sw	a3,68(sp)
    b520:	fcd2d8e3          	bge	t0,a3,b4f0 <_vfiprintf_r+0xb40>
    b524:	08078663          	beqz	a5,b5b0 <_vfiprintf_r+0xc00>
    b528:	04010613          	addi	a2,sp,64
    b52c:	00040593          	mv	a1,s0
    b530:	000a0513          	mv	a0,s4
    b534:	b70ff0ef          	jal	ra,a8a4 <__sprint_r.part.0>
    b538:	4a051463          	bnez	a0,b9e0 <_vfiprintf_r+0x1030>
    b53c:	04412703          	lw	a4,68(sp)
    b540:	01000e93          	li	t4,16
    b544:	ff098993          	addi	s3,s3,-16
    b548:	04812783          	lw	a5,72(sp)
    b54c:	00048613          	mv	a2,s1
    b550:	00170513          	addi	a0,a4,1
    b554:	00700293          	li	t0,7
    b558:	fb3ec6e3          	blt	t4,s3,b504 <_vfiprintf_r+0xb54>
    b55c:	02812f83          	lw	t6,40(sp)
    b560:	000a8f13          	mv	t5,s5
    b564:	00050593          	mv	a1,a0
    b568:	000c0a93          	mv	s5,s8
    b56c:	000d8c13          	mv	s8,s11
    b570:	00098d93          	mv	s11,s3
    b574:	00040993          	mv	s3,s0
    b578:	000b8413          	mv	s0,s7
    b57c:	00060b93          	mv	s7,a2
    b580:	00812703          	lw	a4,8(sp)
    b584:	01b787b3          	add	a5,a5,s11
    b588:	01bba223          	sw	s11,4(s7)
    b58c:	00eba023          	sw	a4,0(s7)
    b590:	04f12423          	sw	a5,72(sp)
    b594:	04b12223          	sw	a1,68(sp)
    b598:	00700713          	li	a4,7
    b59c:	ecb74ee3          	blt	a4,a1,b478 <_vfiprintf_r+0xac8>
    b5a0:	008b8b93          	addi	s7,s7,8
    b5a4:	00158613          	addi	a2,a1,1
    b5a8:	00058713          	mv	a4,a1
    b5ac:	e50ff06f          	j	abfc <_vfiprintf_r+0x24c>
    b5b0:	00000713          	li	a4,0
    b5b4:	00100513          	li	a0,1
    b5b8:	00048613          	mv	a2,s1
    b5bc:	f41ff06f          	j	b4fc <_vfiprintf_r+0xb4c>
    b5c0:	04012223          	sw	zero,68(sp)
    b5c4:	004b7313          	andi	t1,s6,4
    b5c8:	0e030263          	beqz	t1,b6ac <_vfiprintf_r+0xcfc>
    b5cc:	00412703          	lw	a4,4(sp)
    b5d0:	41970bb3          	sub	s7,a4,s9
    b5d4:	0d705c63          	blez	s7,b6ac <_vfiprintf_r+0xcfc>
    b5d8:	00048693          	mv	a3,s1
    b5dc:	01000713          	li	a4,16
    b5e0:	04412603          	lw	a2,68(sp)
    b5e4:	5f775063          	bge	a4,s7,bbc4 <_vfiprintf_r+0x1214>
    b5e8:	01000d13          	li	s10,16
    b5ec:	00700d93          	li	s11,7
    b5f0:	0180006f          	j	b608 <_vfiprintf_r+0xc58>
    b5f4:	00260513          	addi	a0,a2,2
    b5f8:	00868693          	addi	a3,a3,8
    b5fc:	00070613          	mv	a2,a4
    b600:	ff0b8b93          	addi	s7,s7,-16
    b604:	057d5a63          	bge	s10,s7,b658 <_vfiprintf_r+0xca8>
    b608:	00812583          	lw	a1,8(sp)
    b60c:	01078793          	addi	a5,a5,16
    b610:	00160713          	addi	a4,a2,1
    b614:	00b6a023          	sw	a1,0(a3)
    b618:	01a6a223          	sw	s10,4(a3)
    b61c:	04f12423          	sw	a5,72(sp)
    b620:	04e12223          	sw	a4,68(sp)
    b624:	fcedd8e3          	bge	s11,a4,b5f4 <_vfiprintf_r+0xc44>
    b628:	06078a63          	beqz	a5,b69c <_vfiprintf_r+0xcec>
    b62c:	04010613          	addi	a2,sp,64
    b630:	00098593          	mv	a1,s3
    b634:	000a0513          	mv	a0,s4
    b638:	a6cff0ef          	jal	ra,a8a4 <__sprint_r.part.0>
    b63c:	ee051863          	bnez	a0,ad2c <_vfiprintf_r+0x37c>
    b640:	04412603          	lw	a2,68(sp)
    b644:	ff0b8b93          	addi	s7,s7,-16
    b648:	04812783          	lw	a5,72(sp)
    b64c:	00048693          	mv	a3,s1
    b650:	00160513          	addi	a0,a2,1
    b654:	fb7d4ae3          	blt	s10,s7,b608 <_vfiprintf_r+0xc58>
    b658:	00050593          	mv	a1,a0
    b65c:	00812703          	lw	a4,8(sp)
    b660:	017787b3          	add	a5,a5,s7
    b664:	0176a223          	sw	s7,4(a3)
    b668:	00e6a023          	sw	a4,0(a3)
    b66c:	04f12423          	sw	a5,72(sp)
    b670:	04b12223          	sw	a1,68(sp)
    b674:	00700713          	li	a4,7
    b678:	e8b75063          	bge	a4,a1,acf8 <_vfiprintf_r+0x348>
    b67c:	02078863          	beqz	a5,b6ac <_vfiprintf_r+0xcfc>
    b680:	04010613          	addi	a2,sp,64
    b684:	00098593          	mv	a1,s3
    b688:	000a0513          	mv	a0,s4
    b68c:	a18ff0ef          	jal	ra,a8a4 <__sprint_r.part.0>
    b690:	e8051e63          	bnez	a0,ad2c <_vfiprintf_r+0x37c>
    b694:	04812783          	lw	a5,72(sp)
    b698:	e60ff06f          	j	acf8 <_vfiprintf_r+0x348>
    b69c:	00100513          	li	a0,1
    b6a0:	00000613          	li	a2,0
    b6a4:	00048693          	mv	a3,s1
    b6a8:	f59ff06f          	j	b600 <_vfiprintf_r+0xc50>
    b6ac:	00412403          	lw	s0,4(sp)
    b6b0:	01945463          	bge	s0,s9,b6b8 <_vfiprintf_r+0xd08>
    b6b4:	000c8413          	mv	s0,s9
    b6b8:	00c12783          	lw	a5,12(sp)
    b6bc:	008787b3          	add	a5,a5,s0
    b6c0:	00f12623          	sw	a5,12(sp)
    b6c4:	e50ff06f          	j	ad14 <_vfiprintf_r+0x364>
    b6c8:	32078063          	beqz	a5,b9e8 <_vfiprintf_r+0x1038>
    b6cc:	04010613          	addi	a2,sp,64
    b6d0:	00098593          	mv	a1,s3
    b6d4:	000a0513          	mv	a0,s4
    b6d8:	9ccff0ef          	jal	ra,a8a4 <__sprint_r.part.0>
    b6dc:	e4051863          	bnez	a0,ad2c <_vfiprintf_r+0x37c>
    b6e0:	04412603          	lw	a2,68(sp)
    b6e4:	04812783          	lw	a5,72(sp)
    b6e8:	05410693          	addi	a3,sp,84
    b6ec:	00160613          	addi	a2,a2,1
    b6f0:	00048b93          	mv	s7,s1
    b6f4:	db4ff06f          	j	aca8 <_vfiprintf_r+0x2f8>
    b6f8:	04012223          	sw	zero,68(sp)
    b6fc:	00048b93          	mv	s7,s1
    b700:	c20ff06f          	j	ab20 <_vfiprintf_r+0x170>
    b704:	f00a9c63          	bnez	s5,ae1c <_vfiprintf_r+0x46c>
    b708:	000d8b13          	mv	s6,s11
    b70c:	00000a93          	li	s5,0
    b710:	00000d13          	li	s10,0
    b714:	0f010413          	addi	s0,sp,240
    b718:	f18ff06f          	j	ae30 <_vfiprintf_r+0x480>
    b71c:	01012683          	lw	a3,16(sp)
    b720:	010df793          	andi	a5,s11,16
    b724:	00468713          	addi	a4,a3,4
    b728:	14079263          	bnez	a5,b86c <_vfiprintf_r+0xebc>
    b72c:	040df793          	andi	a5,s11,64
    b730:	36078e63          	beqz	a5,baac <_vfiprintf_r+0x10fc>
    b734:	01012783          	lw	a5,16(sp)
    b738:	00000c93          	li	s9,0
    b73c:	00e12823          	sw	a4,16(sp)
    b740:	0007dd03          	lhu	s10,0(a5)
    b744:	00100713          	li	a4,1
    b748:	fa8ff06f          	j	aef0 <_vfiprintf_r+0x540>
    b74c:	05410693          	addi	a3,sp,84
    b750:	00100613          	li	a2,1
    b754:	00000713          	li	a4,0
    b758:	00048b93          	mv	s7,s1
    b75c:	d3cff06f          	j	ac98 <_vfiprintf_r+0x2e8>
    b760:	160f9a63          	bnez	t6,b8d4 <_vfiprintf_r+0xf24>
    b764:	00000713          	li	a4,0
    b768:	05410693          	addi	a3,sp,84
    b76c:	00100613          	li	a2,1
    b770:	00048b93          	mv	s7,s1
    b774:	d24ff06f          	j	ac98 <_vfiprintf_r+0x2e8>
    b778:	400df793          	andi	a5,s11,1024
    b77c:	03412423          	sw	s4,40(sp)
    b780:	03312623          	sw	s3,44(sp)
    b784:	000c8a13          	mv	s4,s9
    b788:	000d0993          	mv	s3,s10
    b78c:	00000b13          	li	s6,0
    b790:	01c12d03          	lw	s10,28(sp)
    b794:	0f010413          	addi	s0,sp,240
    b798:	00078c93          	mv	s9,a5
    b79c:	0240006f          	j	b7c0 <_vfiprintf_r+0xe10>
    b7a0:	00a00613          	li	a2,10
    b7a4:	00000693          	li	a3,0
    b7a8:	00098513          	mv	a0,s3
    b7ac:	000a0593          	mv	a1,s4
    b7b0:	0fd020ef          	jal	ra,e0ac <__udivdi3>
    b7b4:	320a0e63          	beqz	s4,baf0 <_vfiprintf_r+0x1140>
    b7b8:	00050993          	mv	s3,a0
    b7bc:	00058a13          	mv	s4,a1
    b7c0:	00a00613          	li	a2,10
    b7c4:	00000693          	li	a3,0
    b7c8:	00098513          	mv	a0,s3
    b7cc:	000a0593          	mv	a1,s4
    b7d0:	6b5020ef          	jal	ra,e684 <__umoddi3>
    b7d4:	03050513          	addi	a0,a0,48
    b7d8:	fea40fa3          	sb	a0,-1(s0)
    b7dc:	001b0b13          	addi	s6,s6,1
    b7e0:	fff40413          	addi	s0,s0,-1
    b7e4:	fa0c8ee3          	beqz	s9,b7a0 <_vfiprintf_r+0xdf0>
    b7e8:	000d4683          	lbu	a3,0(s10)
    b7ec:	fb669ae3          	bne	a3,s6,b7a0 <_vfiprintf_r+0xdf0>
    b7f0:	0ff00793          	li	a5,255
    b7f4:	fafb06e3          	beq	s6,a5,b7a0 <_vfiprintf_r+0xdf0>
    b7f8:	1a0a1463          	bnez	s4,b9a0 <_vfiprintf_r+0xff0>
    b7fc:	00900793          	li	a5,9
    b800:	1b37e063          	bltu	a5,s3,b9a0 <_vfiprintf_r+0xff0>
    b804:	0f010793          	addi	a5,sp,240
    b808:	01a12e23          	sw	s10,28(sp)
    b80c:	02812a03          	lw	s4,40(sp)
    b810:	02c12983          	lw	s3,44(sp)
    b814:	40878d33          	sub	s10,a5,s0
    b818:	000d8b13          	mv	s6,s11
    b81c:	e14ff06f          	j	ae30 <_vfiprintf_r+0x480>
    b820:	04010613          	addi	a2,sp,64
    b824:	00098593          	mv	a1,s3
    b828:	000a0513          	mv	a0,s4
    b82c:	03e12623          	sw	t5,44(sp)
    b830:	03f12423          	sw	t6,40(sp)
    b834:	870ff0ef          	jal	ra,a8a4 <__sprint_r.part.0>
    b838:	ce051a63          	bnez	a0,ad2c <_vfiprintf_r+0x37c>
    b83c:	04412703          	lw	a4,68(sp)
    b840:	04812783          	lw	a5,72(sp)
    b844:	02c12f03          	lw	t5,44(sp)
    b848:	02812f83          	lw	t6,40(sp)
    b84c:	00048b93          	mv	s7,s1
    b850:	00170613          	addi	a2,a4,1
    b854:	ba8ff06f          	j	abfc <_vfiprintf_r+0x24c>
    b858:	00158613          	addi	a2,a1,1
    b85c:	00850693          	addi	a3,a0,8
    b860:	00058713          	mv	a4,a1
    b864:	00050b93          	mv	s7,a0
    b868:	c38ff06f          	j	aca0 <_vfiprintf_r+0x2f0>
    b86c:	00e12823          	sw	a4,16(sp)
    b870:	0006ad03          	lw	s10,0(a3)
    b874:	00000c93          	li	s9,0
    b878:	00100713          	li	a4,1
    b87c:	e74ff06f          	j	aef0 <_vfiprintf_r+0x540>
    b880:	0006ad03          	lw	s10,0(a3)
    b884:	00e12823          	sw	a4,16(sp)
    b888:	41fd5c93          	srai	s9,s10,0x1f
    b88c:	000c8713          	mv	a4,s9
    b890:	d64ff06f          	j	adf4 <_vfiprintf_r+0x444>
    b894:	01c12783          	lw	a5,28(sp)
    b898:	000c4703          	lbu	a4,0(s8)
    b89c:	aa078e63          	beqz	a5,ab58 <_vfiprintf_r+0x1a8>
    b8a0:	0007c783          	lbu	a5,0(a5)
    b8a4:	aa078a63          	beqz	a5,ab58 <_vfiprintf_r+0x1a8>
    b8a8:	400b6b13          	ori	s6,s6,1024
    b8ac:	aacff06f          	j	ab58 <_vfiprintf_r+0x1a8>
    b8b0:	00c12683          	lw	a3,12(sp)
    b8b4:	41f6d793          	srai	a5,a3,0x1f
    b8b8:	00d72023          	sw	a3,0(a4)
    b8bc:	00f72223          	sw	a5,4(a4)
    b8c0:	9f0ff06f          	j	aab0 <_vfiprintf_r+0x100>
    b8c4:	0006ad03          	lw	s10,0(a3)
    b8c8:	00000c93          	li	s9,0
    b8cc:	00e12823          	sw	a4,16(sp)
    b8d0:	e18ff06f          	j	aee8 <_vfiprintf_r+0x538>
    b8d4:	03c10793          	addi	a5,sp,60
    b8d8:	04f12623          	sw	a5,76(sp)
    b8dc:	00200793          	li	a5,2
    b8e0:	04f12823          	sw	a5,80(sp)
    b8e4:	05410b93          	addi	s7,sp,84
    b8e8:	00100713          	li	a4,1
    b8ec:	bbdff06f          	j	b4a8 <_vfiprintf_r+0xaf8>
    b8f0:	000b0d93          	mv	s11,s6
    b8f4:	80dff06f          	j	b100 <_vfiprintf_r+0x750>
    b8f8:	000137b7          	lui	a5,0x13
    b8fc:	23878793          	addi	a5,a5,568 # 13238 <hex_symbols.0+0x34>
    b900:	00f12c23          	sw	a5,24(sp)
    b904:	020b7793          	andi	a5,s6,32
    b908:	06078063          	beqz	a5,b968 <_vfiprintf_r+0xfb8>
    b90c:	01012783          	lw	a5,16(sp)
    b910:	00778793          	addi	a5,a5,7
    b914:	ff87f793          	andi	a5,a5,-8
    b918:	0007ad03          	lw	s10,0(a5)
    b91c:	0047ac83          	lw	s9,4(a5)
    b920:	00878793          	addi	a5,a5,8
    b924:	00f12823          	sw	a5,16(sp)
    b928:	001b7693          	andi	a3,s6,1
    b92c:	00068e63          	beqz	a3,b948 <_vfiprintf_r+0xf98>
    b930:	019d66b3          	or	a3,s10,s9
    b934:	00068a63          	beqz	a3,b948 <_vfiprintf_r+0xf98>
    b938:	03000693          	li	a3,48
    b93c:	02d10e23          	sb	a3,60(sp)
    b940:	02e10ea3          	sb	a4,61(sp)
    b944:	002b6b13          	ori	s6,s6,2
    b948:	bffb7d93          	andi	s11,s6,-1025
    b94c:	00200713          	li	a4,2
    b950:	da0ff06f          	j	aef0 <_vfiprintf_r+0x540>
    b954:	000137b7          	lui	a5,0x13
    b958:	22478793          	addi	a5,a5,548 # 13224 <hex_symbols.0+0x20>
    b95c:	00f12c23          	sw	a5,24(sp)
    b960:	020b7793          	andi	a5,s6,32
    b964:	fa0794e3          	bnez	a5,b90c <_vfiprintf_r+0xf5c>
    b968:	01012603          	lw	a2,16(sp)
    b96c:	010b7793          	andi	a5,s6,16
    b970:	00460693          	addi	a3,a2,4
    b974:	08078a63          	beqz	a5,ba08 <_vfiprintf_r+0x1058>
    b978:	00062d03          	lw	s10,0(a2)
    b97c:	00000c93          	li	s9,0
    b980:	00d12823          	sw	a3,16(sp)
    b984:	fa5ff06f          	j	b928 <_vfiprintf_r+0xf78>
    b988:	00040513          	mv	a0,s0
    b98c:	e89fc0ef          	jal	ra,8814 <strlen>
    b990:	00050d13          	mv	s10,a0
    b994:	01b12823          	sw	s11,16(sp)
    b998:	00000a93          	li	s5,0
    b99c:	c94ff06f          	j	ae30 <_vfiprintf_r+0x480>
    b9a0:	02412783          	lw	a5,36(sp)
    b9a4:	02012583          	lw	a1,32(sp)
    b9a8:	00000b13          	li	s6,0
    b9ac:	40f40433          	sub	s0,s0,a5
    b9b0:	00078613          	mv	a2,a5
    b9b4:	00040513          	mv	a0,s0
    b9b8:	ee9fc0ef          	jal	ra,88a0 <strncpy>
    b9bc:	001d4583          	lbu	a1,1(s10)
    b9c0:	00a00613          	li	a2,10
    b9c4:	00000693          	li	a3,0
    b9c8:	00b03733          	snez	a4,a1
    b9cc:	00098513          	mv	a0,s3
    b9d0:	000a0593          	mv	a1,s4
    b9d4:	00ed0d33          	add	s10,s10,a4
    b9d8:	6d4020ef          	jal	ra,e0ac <__udivdi3>
    b9dc:	dddff06f          	j	b7b8 <_vfiprintf_r+0xe08>
    b9e0:	00040993          	mv	s3,s0
    b9e4:	b48ff06f          	j	ad2c <_vfiprintf_r+0x37c>
    b9e8:	00100713          	li	a4,1
    b9ec:	000d0793          	mv	a5,s10
    b9f0:	04812623          	sw	s0,76(sp)
    b9f4:	05a12823          	sw	s10,80(sp)
    b9f8:	05a12423          	sw	s10,72(sp)
    b9fc:	04e12223          	sw	a4,68(sp)
    ba00:	05410693          	addi	a3,sp,84
    ba04:	ae0ff06f          	j	ace4 <_vfiprintf_r+0x334>
    ba08:	040b7793          	andi	a5,s6,64
    ba0c:	06078263          	beqz	a5,ba70 <_vfiprintf_r+0x10c0>
    ba10:	01012783          	lw	a5,16(sp)
    ba14:	00000c93          	li	s9,0
    ba18:	00d12823          	sw	a3,16(sp)
    ba1c:	0007dd03          	lhu	s10,0(a5)
    ba20:	f09ff06f          	j	b928 <_vfiprintf_r+0xf78>
    ba24:	001c4703          	lbu	a4,1(s8)
    ba28:	200b6b13          	ori	s6,s6,512
    ba2c:	001c0c13          	addi	s8,s8,1
    ba30:	928ff06f          	j	ab58 <_vfiprintf_r+0x1a8>
    ba34:	001c4703          	lbu	a4,1(s8)
    ba38:	020b6b13          	ori	s6,s6,32
    ba3c:	001c0c13          	addi	s8,s8,1
    ba40:	918ff06f          	j	ab58 <_vfiprintf_r+0x1a8>
    ba44:	00c12783          	lw	a5,12(sp)
    ba48:	00f72023          	sw	a5,0(a4)
    ba4c:	864ff06f          	j	aab0 <_vfiprintf_r+0x100>
    ba50:	00600793          	li	a5,6
    ba54:	000a8d13          	mv	s10,s5
    ba58:	0b57ec63          	bltu	a5,s5,bb10 <_vfiprintf_r+0x1160>
    ba5c:	00013e37          	lui	t3,0x13
    ba60:	000d0c93          	mv	s9,s10
    ba64:	01b12823          	sw	s11,16(sp)
    ba68:	24ce0413          	addi	s0,t3,588 # 1324c <hex_symbols.0+0x48>
    ba6c:	95cff06f          	j	abc8 <_vfiprintf_r+0x218>
    ba70:	200b7793          	andi	a5,s6,512
    ba74:	10078863          	beqz	a5,bb84 <_vfiprintf_r+0x11d4>
    ba78:	01012783          	lw	a5,16(sp)
    ba7c:	00000c93          	li	s9,0
    ba80:	00d12823          	sw	a3,16(sp)
    ba84:	0007cd03          	lbu	s10,0(a5)
    ba88:	ea1ff06f          	j	b928 <_vfiprintf_r+0xf78>
    ba8c:	200b7793          	andi	a5,s6,512
    ba90:	0c078e63          	beqz	a5,bb6c <_vfiprintf_r+0x11bc>
    ba94:	01012783          	lw	a5,16(sp)
    ba98:	00e12823          	sw	a4,16(sp)
    ba9c:	00078d03          	lb	s10,0(a5)
    baa0:	41fd5c93          	srai	s9,s10,0x1f
    baa4:	000c8713          	mv	a4,s9
    baa8:	b4cff06f          	j	adf4 <_vfiprintf_r+0x444>
    baac:	200df793          	andi	a5,s11,512
    bab0:	0a078263          	beqz	a5,bb54 <_vfiprintf_r+0x11a4>
    bab4:	01012783          	lw	a5,16(sp)
    bab8:	00000c93          	li	s9,0
    babc:	00e12823          	sw	a4,16(sp)
    bac0:	0007cd03          	lbu	s10,0(a5)
    bac4:	00100713          	li	a4,1
    bac8:	c28ff06f          	j	aef0 <_vfiprintf_r+0x540>
    bacc:	200b7793          	andi	a5,s6,512
    bad0:	06078863          	beqz	a5,bb40 <_vfiprintf_r+0x1190>
    bad4:	01012783          	lw	a5,16(sp)
    bad8:	00000c93          	li	s9,0
    badc:	00e12823          	sw	a4,16(sp)
    bae0:	0007cd03          	lbu	s10,0(a5)
    bae4:	c04ff06f          	j	aee8 <_vfiprintf_r+0x538>
    bae8:	00068593          	mv	a1,a3
    baec:	8e9ff06f          	j	b3d4 <_vfiprintf_r+0xa24>
    baf0:	00900793          	li	a5,9
    baf4:	cd37e2e3          	bltu	a5,s3,b7b8 <_vfiprintf_r+0xe08>
    baf8:	d0dff06f          	j	b804 <_vfiprintf_r+0xe54>
    bafc:	05410693          	addi	a3,sp,84
    bb00:	00100613          	li	a2,1
    bb04:	00000713          	li	a4,0
    bb08:	00048b93          	mv	s7,s1
    bb0c:	994ff06f          	j	aca0 <_vfiprintf_r+0x2f0>
    bb10:	00600d13          	li	s10,6
    bb14:	f49ff06f          	j	ba5c <_vfiprintf_r+0x10ac>
    bb18:	03b10793          	addi	a5,sp,59
    bb1c:	04f12623          	sw	a5,76(sp)
    bb20:	00100793          	li	a5,1
    bb24:	04f12823          	sw	a5,80(sp)
    bb28:	05410693          	addi	a3,sp,84
    bb2c:	00100613          	li	a2,1
    bb30:	8fcff06f          	j	ac2c <_vfiprintf_r+0x27c>
    bb34:	00c12783          	lw	a5,12(sp)
    bb38:	00f71023          	sh	a5,0(a4)
    bb3c:	f75fe06f          	j	aab0 <_vfiprintf_r+0x100>
    bb40:	01012783          	lw	a5,16(sp)
    bb44:	00000c93          	li	s9,0
    bb48:	00e12823          	sw	a4,16(sp)
    bb4c:	0007ad03          	lw	s10,0(a5)
    bb50:	b98ff06f          	j	aee8 <_vfiprintf_r+0x538>
    bb54:	01012783          	lw	a5,16(sp)
    bb58:	00000c93          	li	s9,0
    bb5c:	00e12823          	sw	a4,16(sp)
    bb60:	0007ad03          	lw	s10,0(a5)
    bb64:	00100713          	li	a4,1
    bb68:	b88ff06f          	j	aef0 <_vfiprintf_r+0x540>
    bb6c:	01012783          	lw	a5,16(sp)
    bb70:	00e12823          	sw	a4,16(sp)
    bb74:	0007ad03          	lw	s10,0(a5)
    bb78:	41fd5c93          	srai	s9,s10,0x1f
    bb7c:	000c8713          	mv	a4,s9
    bb80:	a74ff06f          	j	adf4 <_vfiprintf_r+0x444>
    bb84:	01012783          	lw	a5,16(sp)
    bb88:	00000c93          	li	s9,0
    bb8c:	00d12823          	sw	a3,16(sp)
    bb90:	0007ad03          	lw	s10,0(a5)
    bb94:	d95ff06f          	j	b928 <_vfiprintf_r+0xf78>
    bb98:	04010613          	addi	a2,sp,64
    bb9c:	00098593          	mv	a1,s3
    bba0:	000a0513          	mv	a0,s4
    bba4:	d01fe0ef          	jal	ra,a8a4 <__sprint_r.part.0>
    bba8:	984ff06f          	j	ad2c <_vfiprintf_r+0x37c>
    bbac:	000a8d13          	mv	s10,s5
    bbb0:	01b12823          	sw	s11,16(sp)
    bbb4:	00000a93          	li	s5,0
    bbb8:	a78ff06f          	j	ae30 <_vfiprintf_r+0x480>
    bbbc:	00068593          	mv	a1,a3
    bbc0:	9c1ff06f          	j	b580 <_vfiprintf_r+0xbd0>
    bbc4:	00160593          	addi	a1,a2,1
    bbc8:	a95ff06f          	j	b65c <_vfiprintf_r+0xcac>
    bbcc:	000b0d93          	mv	s11,s6
    bbd0:	a4cff06f          	j	ae1c <_vfiprintf_r+0x46c>
    bbd4:	fff00793          	li	a5,-1
    bbd8:	00f12623          	sw	a5,12(sp)
    bbdc:	95cff06f          	j	ad38 <_vfiprintf_r+0x388>
    bbe0:	00068513          	mv	a0,a3
    bbe4:	00060593          	mv	a1,a2
    bbe8:	f20ff06f          	j	b308 <_vfiprintf_r+0x958>
    bbec:	01012783          	lw	a5,16(sp)
    bbf0:	0007aa83          	lw	s5,0(a5)
    bbf4:	00478793          	addi	a5,a5,4
    bbf8:	000ad463          	bgez	s5,bc00 <_vfiprintf_r+0x1250>
    bbfc:	fff00a93          	li	s5,-1
    bc00:	001c4703          	lbu	a4,1(s8)
    bc04:	00f12823          	sw	a5,16(sp)
    bc08:	00068c13          	mv	s8,a3
    bc0c:	f4dfe06f          	j	ab58 <_vfiprintf_r+0x1a8>

0000bc10 <vfiprintf>:
    bc10:	00050793          	mv	a5,a0
    bc14:	1bc1a503          	lw	a0,444(gp) # 800009bc <_impure_ptr>
    bc18:	00060693          	mv	a3,a2
    bc1c:	00058613          	mv	a2,a1
    bc20:	00078593          	mv	a1,a5
    bc24:	d8dfe06f          	j	a9b0 <_vfiprintf_r>

0000bc28 <__sbprintf>:
    bc28:	00c5d783          	lhu	a5,12(a1)
    bc2c:	0645ae03          	lw	t3,100(a1)
    bc30:	00e5d303          	lhu	t1,14(a1)
    bc34:	01c5a883          	lw	a7,28(a1)
    bc38:	0245a803          	lw	a6,36(a1)
    bc3c:	b8010113          	addi	sp,sp,-1152
    bc40:	ffd7f793          	andi	a5,a5,-3
    bc44:	40000713          	li	a4,1024
    bc48:	46812c23          	sw	s0,1144(sp)
    bc4c:	00f11a23          	sh	a5,20(sp)
    bc50:	00058413          	mv	s0,a1
    bc54:	07010793          	addi	a5,sp,112
    bc58:	00810593          	addi	a1,sp,8
    bc5c:	46912a23          	sw	s1,1140(sp)
    bc60:	47212823          	sw	s2,1136(sp)
    bc64:	46112e23          	sw	ra,1148(sp)
    bc68:	00050913          	mv	s2,a0
    bc6c:	07c12623          	sw	t3,108(sp)
    bc70:	00611b23          	sh	t1,22(sp)
    bc74:	03112223          	sw	a7,36(sp)
    bc78:	03012623          	sw	a6,44(sp)
    bc7c:	00f12423          	sw	a5,8(sp)
    bc80:	00f12c23          	sw	a5,24(sp)
    bc84:	00e12823          	sw	a4,16(sp)
    bc88:	00e12e23          	sw	a4,28(sp)
    bc8c:	02012023          	sw	zero,32(sp)
    bc90:	d21fe0ef          	jal	ra,a9b0 <_vfiprintf_r>
    bc94:	00050493          	mv	s1,a0
    bc98:	02055c63          	bgez	a0,bcd0 <__sbprintf+0xa8>
    bc9c:	01415783          	lhu	a5,20(sp)
    bca0:	0407f793          	andi	a5,a5,64
    bca4:	00078863          	beqz	a5,bcb4 <__sbprintf+0x8c>
    bca8:	00c45783          	lhu	a5,12(s0)
    bcac:	0407e793          	ori	a5,a5,64
    bcb0:	00f41623          	sh	a5,12(s0)
    bcb4:	47c12083          	lw	ra,1148(sp)
    bcb8:	47812403          	lw	s0,1144(sp)
    bcbc:	47012903          	lw	s2,1136(sp)
    bcc0:	00048513          	mv	a0,s1
    bcc4:	47412483          	lw	s1,1140(sp)
    bcc8:	48010113          	addi	sp,sp,1152
    bccc:	00008067          	ret
    bcd0:	00810593          	addi	a1,sp,8
    bcd4:	00090513          	mv	a0,s2
    bcd8:	42c000ef          	jal	ra,c104 <_fflush_r>
    bcdc:	fc0500e3          	beqz	a0,bc9c <__sbprintf+0x74>
    bce0:	fff00493          	li	s1,-1
    bce4:	fb9ff06f          	j	bc9c <__sbprintf+0x74>

0000bce8 <_wctomb_r>:
    bce8:	1101a783          	lw	a5,272(gp) # 80000910 <__global_locale+0xe0>
    bcec:	00078067          	jr	a5

0000bcf0 <__ascii_wctomb>:
    bcf0:	02058463          	beqz	a1,bd18 <__ascii_wctomb+0x28>
    bcf4:	0ff00793          	li	a5,255
    bcf8:	00c7e863          	bltu	a5,a2,bd08 <__ascii_wctomb+0x18>
    bcfc:	00c58023          	sb	a2,0(a1)
    bd00:	00100513          	li	a0,1
    bd04:	00008067          	ret
    bd08:	08a00793          	li	a5,138
    bd0c:	00f52023          	sw	a5,0(a0)
    bd10:	fff00513          	li	a0,-1
    bd14:	00008067          	ret
    bd18:	00000513          	li	a0,0
    bd1c:	00008067          	ret

0000bd20 <__swsetup_r>:
    bd20:	1bc1a783          	lw	a5,444(gp) # 800009bc <_impure_ptr>
    bd24:	ff010113          	addi	sp,sp,-16
    bd28:	00812423          	sw	s0,8(sp)
    bd2c:	00912223          	sw	s1,4(sp)
    bd30:	00112623          	sw	ra,12(sp)
    bd34:	00050493          	mv	s1,a0
    bd38:	00058413          	mv	s0,a1
    bd3c:	00078663          	beqz	a5,bd48 <__swsetup_r+0x28>
    bd40:	0387a703          	lw	a4,56(a5)
    bd44:	08070463          	beqz	a4,bdcc <__swsetup_r+0xac>
    bd48:	00c41703          	lh	a4,12(s0)
    bd4c:	01071793          	slli	a5,a4,0x10
    bd50:	00877693          	andi	a3,a4,8
    bd54:	0107d793          	srli	a5,a5,0x10
    bd58:	08068863          	beqz	a3,bde8 <__swsetup_r+0xc8>
    bd5c:	01042683          	lw	a3,16(s0)
    bd60:	0a068863          	beqz	a3,be10 <__swsetup_r+0xf0>
    bd64:	0017f613          	andi	a2,a5,1
    bd68:	02060863          	beqz	a2,bd98 <__swsetup_r+0x78>
    bd6c:	01442603          	lw	a2,20(s0)
    bd70:	00042423          	sw	zero,8(s0)
    bd74:	00000513          	li	a0,0
    bd78:	40c00633          	neg	a2,a2
    bd7c:	00c42c23          	sw	a2,24(s0)
    bd80:	02068a63          	beqz	a3,bdb4 <__swsetup_r+0x94>
    bd84:	00c12083          	lw	ra,12(sp)
    bd88:	00812403          	lw	s0,8(sp)
    bd8c:	00412483          	lw	s1,4(sp)
    bd90:	01010113          	addi	sp,sp,16
    bd94:	00008067          	ret
    bd98:	0027f613          	andi	a2,a5,2
    bd9c:	00000593          	li	a1,0
    bda0:	00061463          	bnez	a2,bda8 <__swsetup_r+0x88>
    bda4:	01442583          	lw	a1,20(s0)
    bda8:	00b42423          	sw	a1,8(s0)
    bdac:	00000513          	li	a0,0
    bdb0:	fc069ae3          	bnez	a3,bd84 <__swsetup_r+0x64>
    bdb4:	0807f793          	andi	a5,a5,128
    bdb8:	fc0786e3          	beqz	a5,bd84 <__swsetup_r+0x64>
    bdbc:	04076713          	ori	a4,a4,64
    bdc0:	00e41623          	sh	a4,12(s0)
    bdc4:	fff00513          	li	a0,-1
    bdc8:	fbdff06f          	j	bd84 <__swsetup_r+0x64>
    bdcc:	00078513          	mv	a0,a5
    bdd0:	76c000ef          	jal	ra,c53c <__sinit>
    bdd4:	00c41703          	lh	a4,12(s0)
    bdd8:	01071793          	slli	a5,a4,0x10
    bddc:	00877693          	andi	a3,a4,8
    bde0:	0107d793          	srli	a5,a5,0x10
    bde4:	f6069ce3          	bnez	a3,bd5c <__swsetup_r+0x3c>
    bde8:	0107f693          	andi	a3,a5,16
    bdec:	08068263          	beqz	a3,be70 <__swsetup_r+0x150>
    bdf0:	0047f793          	andi	a5,a5,4
    bdf4:	04079463          	bnez	a5,be3c <__swsetup_r+0x11c>
    bdf8:	01042683          	lw	a3,16(s0)
    bdfc:	00876713          	ori	a4,a4,8
    be00:	01071793          	slli	a5,a4,0x10
    be04:	00e41623          	sh	a4,12(s0)
    be08:	0107d793          	srli	a5,a5,0x10
    be0c:	f4069ce3          	bnez	a3,bd64 <__swsetup_r+0x44>
    be10:	2807f613          	andi	a2,a5,640
    be14:	20000593          	li	a1,512
    be18:	f4b606e3          	beq	a2,a1,bd64 <__swsetup_r+0x44>
    be1c:	00040593          	mv	a1,s0
    be20:	00048513          	mv	a0,s1
    be24:	729000ef          	jal	ra,cd4c <__smakebuf_r>
    be28:	00c41703          	lh	a4,12(s0)
    be2c:	01042683          	lw	a3,16(s0)
    be30:	01071793          	slli	a5,a4,0x10
    be34:	0107d793          	srli	a5,a5,0x10
    be38:	f2dff06f          	j	bd64 <__swsetup_r+0x44>
    be3c:	03042583          	lw	a1,48(s0)
    be40:	00058e63          	beqz	a1,be5c <__swsetup_r+0x13c>
    be44:	04040793          	addi	a5,s0,64
    be48:	00f58863          	beq	a1,a5,be58 <__swsetup_r+0x138>
    be4c:	00048513          	mv	a0,s1
    be50:	cd9f70ef          	jal	ra,3b28 <_free_r>
    be54:	00c41703          	lh	a4,12(s0)
    be58:	02042823          	sw	zero,48(s0)
    be5c:	01042683          	lw	a3,16(s0)
    be60:	fdb77713          	andi	a4,a4,-37
    be64:	00042223          	sw	zero,4(s0)
    be68:	00d42023          	sw	a3,0(s0)
    be6c:	f91ff06f          	j	bdfc <__swsetup_r+0xdc>
    be70:	00900793          	li	a5,9
    be74:	00f4a023          	sw	a5,0(s1)
    be78:	04076713          	ori	a4,a4,64
    be7c:	00e41623          	sh	a4,12(s0)
    be80:	fff00513          	li	a0,-1
    be84:	f01ff06f          	j	bd84 <__swsetup_r+0x64>

0000be88 <abort>:
    be88:	ff010113          	addi	sp,sp,-16
    be8c:	00600513          	li	a0,6
    be90:	00112623          	sw	ra,12(sp)
    be94:	3d8010ef          	jal	ra,d26c <raise>
    be98:	00100513          	li	a0,1
    be9c:	72d010ef          	jal	ra,ddc8 <_exit>

0000bea0 <__sflush_r>:
    bea0:	00c59783          	lh	a5,12(a1)
    bea4:	fe010113          	addi	sp,sp,-32
    bea8:	00812c23          	sw	s0,24(sp)
    beac:	01312623          	sw	s3,12(sp)
    beb0:	00112e23          	sw	ra,28(sp)
    beb4:	00912a23          	sw	s1,20(sp)
    beb8:	01212823          	sw	s2,16(sp)
    bebc:	0087f693          	andi	a3,a5,8
    bec0:	00058413          	mv	s0,a1
    bec4:	00050993          	mv	s3,a0
    bec8:	10069c63          	bnez	a3,bfe0 <__sflush_r+0x140>
    becc:	00001737          	lui	a4,0x1
    bed0:	80070713          	addi	a4,a4,-2048 # 800 <__neorv32_rte_core+0xc0>
    bed4:	0045a683          	lw	a3,4(a1)
    bed8:	00e7e7b3          	or	a5,a5,a4
    bedc:	00f59623          	sh	a5,12(a1)
    bee0:	18d05663          	blez	a3,c06c <__sflush_r+0x1cc>
    bee4:	02842703          	lw	a4,40(s0)
    bee8:	0c070c63          	beqz	a4,bfc0 <__sflush_r+0x120>
    beec:	01079793          	slli	a5,a5,0x10
    bef0:	0107d793          	srli	a5,a5,0x10
    bef4:	000016b7          	lui	a3,0x1
    bef8:	0009a483          	lw	s1,0(s3)
    befc:	00d7f6b3          	and	a3,a5,a3
    bf00:	0009a023          	sw	zero,0(s3)
    bf04:	01c42583          	lw	a1,28(s0)
    bf08:	16069863          	bnez	a3,c078 <__sflush_r+0x1d8>
    bf0c:	00100693          	li	a3,1
    bf10:	00000613          	li	a2,0
    bf14:	00098513          	mv	a0,s3
    bf18:	000700e7          	jalr	a4
    bf1c:	fff00793          	li	a5,-1
    bf20:	18f50e63          	beq	a0,a5,c0bc <__sflush_r+0x21c>
    bf24:	00c45783          	lhu	a5,12(s0)
    bf28:	02842703          	lw	a4,40(s0)
    bf2c:	01c42583          	lw	a1,28(s0)
    bf30:	0047f793          	andi	a5,a5,4
    bf34:	00078e63          	beqz	a5,bf50 <__sflush_r+0xb0>
    bf38:	00442683          	lw	a3,4(s0)
    bf3c:	03042783          	lw	a5,48(s0)
    bf40:	40d50533          	sub	a0,a0,a3
    bf44:	00078663          	beqz	a5,bf50 <__sflush_r+0xb0>
    bf48:	03c42783          	lw	a5,60(s0)
    bf4c:	40f50533          	sub	a0,a0,a5
    bf50:	00050613          	mv	a2,a0
    bf54:	00000693          	li	a3,0
    bf58:	00098513          	mv	a0,s3
    bf5c:	000700e7          	jalr	a4
    bf60:	fff00793          	li	a5,-1
    bf64:	10f51e63          	bne	a0,a5,c080 <__sflush_r+0x1e0>
    bf68:	0009a703          	lw	a4,0(s3)
    bf6c:	00c41783          	lh	a5,12(s0)
    bf70:	16070a63          	beqz	a4,c0e4 <__sflush_r+0x244>
    bf74:	01d00693          	li	a3,29
    bf78:	00d70663          	beq	a4,a3,bf84 <__sflush_r+0xe4>
    bf7c:	01600693          	li	a3,22
    bf80:	0cd71463          	bne	a4,a3,c048 <__sflush_r+0x1a8>
    bf84:	01042683          	lw	a3,16(s0)
    bf88:	fffff737          	lui	a4,0xfffff
    bf8c:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__ctr0_io_space_begin+0xfffff9ff>
    bf90:	00e7f7b3          	and	a5,a5,a4
    bf94:	00f41623          	sh	a5,12(s0)
    bf98:	00042223          	sw	zero,4(s0)
    bf9c:	00d42023          	sw	a3,0(s0)
    bfa0:	03042583          	lw	a1,48(s0)
    bfa4:	0099a023          	sw	s1,0(s3)
    bfa8:	00058c63          	beqz	a1,bfc0 <__sflush_r+0x120>
    bfac:	04040793          	addi	a5,s0,64
    bfb0:	00f58663          	beq	a1,a5,bfbc <__sflush_r+0x11c>
    bfb4:	00098513          	mv	a0,s3
    bfb8:	b71f70ef          	jal	ra,3b28 <_free_r>
    bfbc:	02042823          	sw	zero,48(s0)
    bfc0:	00000513          	li	a0,0
    bfc4:	01c12083          	lw	ra,28(sp)
    bfc8:	01812403          	lw	s0,24(sp)
    bfcc:	01412483          	lw	s1,20(sp)
    bfd0:	01012903          	lw	s2,16(sp)
    bfd4:	00c12983          	lw	s3,12(sp)
    bfd8:	02010113          	addi	sp,sp,32
    bfdc:	00008067          	ret
    bfe0:	0105a903          	lw	s2,16(a1)
    bfe4:	fc090ee3          	beqz	s2,bfc0 <__sflush_r+0x120>
    bfe8:	0005a483          	lw	s1,0(a1)
    bfec:	01079713          	slli	a4,a5,0x10
    bff0:	01075713          	srli	a4,a4,0x10
    bff4:	00377713          	andi	a4,a4,3
    bff8:	0125a023          	sw	s2,0(a1)
    bffc:	412484b3          	sub	s1,s1,s2
    c000:	00000793          	li	a5,0
    c004:	00071463          	bnez	a4,c00c <__sflush_r+0x16c>
    c008:	0145a783          	lw	a5,20(a1)
    c00c:	00f42423          	sw	a5,8(s0)
    c010:	00904863          	bgtz	s1,c020 <__sflush_r+0x180>
    c014:	fadff06f          	j	bfc0 <__sflush_r+0x120>
    c018:	00a90933          	add	s2,s2,a0
    c01c:	fa9052e3          	blez	s1,bfc0 <__sflush_r+0x120>
    c020:	02442783          	lw	a5,36(s0)
    c024:	01c42583          	lw	a1,28(s0)
    c028:	00048693          	mv	a3,s1
    c02c:	00090613          	mv	a2,s2
    c030:	00098513          	mv	a0,s3
    c034:	000780e7          	jalr	a5
    c038:	40a484b3          	sub	s1,s1,a0
    c03c:	fca04ee3          	bgtz	a0,c018 <__sflush_r+0x178>
    c040:	00c45783          	lhu	a5,12(s0)
    c044:	fff00513          	li	a0,-1
    c048:	0407e793          	ori	a5,a5,64
    c04c:	01c12083          	lw	ra,28(sp)
    c050:	00f41623          	sh	a5,12(s0)
    c054:	01812403          	lw	s0,24(sp)
    c058:	01412483          	lw	s1,20(sp)
    c05c:	01012903          	lw	s2,16(sp)
    c060:	00c12983          	lw	s3,12(sp)
    c064:	02010113          	addi	sp,sp,32
    c068:	00008067          	ret
    c06c:	03c5a703          	lw	a4,60(a1)
    c070:	e6e04ae3          	bgtz	a4,bee4 <__sflush_r+0x44>
    c074:	f4dff06f          	j	bfc0 <__sflush_r+0x120>
    c078:	05042503          	lw	a0,80(s0)
    c07c:	eb5ff06f          	j	bf30 <__sflush_r+0x90>
    c080:	00c45783          	lhu	a5,12(s0)
    c084:	fffff737          	lui	a4,0xfffff
    c088:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__ctr0_io_space_begin+0xfffff9ff>
    c08c:	00e7f7b3          	and	a5,a5,a4
    c090:	01042683          	lw	a3,16(s0)
    c094:	01079793          	slli	a5,a5,0x10
    c098:	4107d793          	srai	a5,a5,0x10
    c09c:	00c7d713          	srli	a4,a5,0xc
    c0a0:	00f41623          	sh	a5,12(s0)
    c0a4:	00042223          	sw	zero,4(s0)
    c0a8:	00d42023          	sw	a3,0(s0)
    c0ac:	00177793          	andi	a5,a4,1
    c0b0:	ee0788e3          	beqz	a5,bfa0 <__sflush_r+0x100>
    c0b4:	04a42823          	sw	a0,80(s0)
    c0b8:	ee9ff06f          	j	bfa0 <__sflush_r+0x100>
    c0bc:	0009a783          	lw	a5,0(s3)
    c0c0:	e60782e3          	beqz	a5,bf24 <__sflush_r+0x84>
    c0c4:	01d00713          	li	a4,29
    c0c8:	02e78863          	beq	a5,a4,c0f8 <__sflush_r+0x258>
    c0cc:	01600713          	li	a4,22
    c0d0:	02e78463          	beq	a5,a4,c0f8 <__sflush_r+0x258>
    c0d4:	00c45783          	lhu	a5,12(s0)
    c0d8:	0407e793          	ori	a5,a5,64
    c0dc:	00f41623          	sh	a5,12(s0)
    c0e0:	ee5ff06f          	j	bfc4 <__sflush_r+0x124>
    c0e4:	fffff737          	lui	a4,0xfffff
    c0e8:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__ctr0_io_space_begin+0xfffff9ff>
    c0ec:	01042683          	lw	a3,16(s0)
    c0f0:	00e7f7b3          	and	a5,a5,a4
    c0f4:	fa9ff06f          	j	c09c <__sflush_r+0x1fc>
    c0f8:	0099a023          	sw	s1,0(s3)
    c0fc:	00000513          	li	a0,0
    c100:	ec5ff06f          	j	bfc4 <__sflush_r+0x124>

0000c104 <_fflush_r>:
    c104:	fe010113          	addi	sp,sp,-32
    c108:	00812c23          	sw	s0,24(sp)
    c10c:	00112e23          	sw	ra,28(sp)
    c110:	00050413          	mv	s0,a0
    c114:	00050663          	beqz	a0,c120 <_fflush_r+0x1c>
    c118:	03852783          	lw	a5,56(a0)
    c11c:	02078063          	beqz	a5,c13c <_fflush_r+0x38>
    c120:	00c59783          	lh	a5,12(a1)
    c124:	02079663          	bnez	a5,c150 <_fflush_r+0x4c>
    c128:	01c12083          	lw	ra,28(sp)
    c12c:	01812403          	lw	s0,24(sp)
    c130:	00000513          	li	a0,0
    c134:	02010113          	addi	sp,sp,32
    c138:	00008067          	ret
    c13c:	00b12623          	sw	a1,12(sp)
    c140:	3fc000ef          	jal	ra,c53c <__sinit>
    c144:	00c12583          	lw	a1,12(sp)
    c148:	00c59783          	lh	a5,12(a1)
    c14c:	fc078ee3          	beqz	a5,c128 <_fflush_r+0x24>
    c150:	00040513          	mv	a0,s0
    c154:	01812403          	lw	s0,24(sp)
    c158:	01c12083          	lw	ra,28(sp)
    c15c:	02010113          	addi	sp,sp,32
    c160:	d41ff06f          	j	bea0 <__sflush_r>

0000c164 <fflush>:
    c164:	06050663          	beqz	a0,c1d0 <fflush+0x6c>
    c168:	fe010113          	addi	sp,sp,-32
    c16c:	00812c23          	sw	s0,24(sp)
    c170:	00050413          	mv	s0,a0
    c174:	1bc1a503          	lw	a0,444(gp) # 800009bc <_impure_ptr>
    c178:	00112e23          	sw	ra,28(sp)
    c17c:	00050663          	beqz	a0,c188 <fflush+0x24>
    c180:	03852783          	lw	a5,56(a0)
    c184:	02078a63          	beqz	a5,c1b8 <fflush+0x54>
    c188:	00c41783          	lh	a5,12(s0)
    c18c:	00079c63          	bnez	a5,c1a4 <fflush+0x40>
    c190:	01c12083          	lw	ra,28(sp)
    c194:	01812403          	lw	s0,24(sp)
    c198:	00000513          	li	a0,0
    c19c:	02010113          	addi	sp,sp,32
    c1a0:	00008067          	ret
    c1a4:	00040593          	mv	a1,s0
    c1a8:	01812403          	lw	s0,24(sp)
    c1ac:	01c12083          	lw	ra,28(sp)
    c1b0:	02010113          	addi	sp,sp,32
    c1b4:	cedff06f          	j	bea0 <__sflush_r>
    c1b8:	00a12623          	sw	a0,12(sp)
    c1bc:	380000ef          	jal	ra,c53c <__sinit>
    c1c0:	00c41783          	lh	a5,12(s0)
    c1c4:	00c12503          	lw	a0,12(sp)
    c1c8:	fc0784e3          	beqz	a5,c190 <fflush+0x2c>
    c1cc:	fd9ff06f          	j	c1a4 <fflush+0x40>
    c1d0:	1b81a503          	lw	a0,440(gp) # 800009b8 <_global_impure_ptr>
    c1d4:	0000c5b7          	lui	a1,0xc
    c1d8:	10458593          	addi	a1,a1,260 # c104 <_fflush_r>
    c1dc:	2bd0006f          	j	cc98 <_fwalk_reent>

0000c1e0 <__fp_lock>:
    c1e0:	00000513          	li	a0,0
    c1e4:	00008067          	ret

0000c1e8 <_cleanup_r>:
    c1e8:	0000e5b7          	lui	a1,0xe
    c1ec:	b1058593          	addi	a1,a1,-1264 # db10 <_fclose_r>
    c1f0:	2a90006f          	j	cc98 <_fwalk_reent>

0000c1f4 <__fp_unlock>:
    c1f4:	00000513          	li	a0,0
    c1f8:	00008067          	ret

0000c1fc <__sinit.part.0>:
    c1fc:	fe010113          	addi	sp,sp,-32
    c200:	0000c7b7          	lui	a5,0xc
    c204:	00112e23          	sw	ra,28(sp)
    c208:	00812c23          	sw	s0,24(sp)
    c20c:	00912a23          	sw	s1,20(sp)
    c210:	01212823          	sw	s2,16(sp)
    c214:	01312623          	sw	s3,12(sp)
    c218:	01412423          	sw	s4,8(sp)
    c21c:	01512223          	sw	s5,4(sp)
    c220:	01612023          	sw	s6,0(sp)
    c224:	00452403          	lw	s0,4(a0)
    c228:	1e878793          	addi	a5,a5,488 # c1e8 <_cleanup_r>
    c22c:	02f52e23          	sw	a5,60(a0)
    c230:	2ec50713          	addi	a4,a0,748
    c234:	00300793          	li	a5,3
    c238:	2ee52423          	sw	a4,744(a0)
    c23c:	2ef52223          	sw	a5,740(a0)
    c240:	2e052023          	sw	zero,736(a0)
    c244:	00400793          	li	a5,4
    c248:	00050913          	mv	s2,a0
    c24c:	00f42623          	sw	a5,12(s0)
    c250:	00800613          	li	a2,8
    c254:	00000593          	li	a1,0
    c258:	06042223          	sw	zero,100(s0)
    c25c:	00042023          	sw	zero,0(s0)
    c260:	00042223          	sw	zero,4(s0)
    c264:	00042423          	sw	zero,8(s0)
    c268:	00042823          	sw	zero,16(s0)
    c26c:	00042a23          	sw	zero,20(s0)
    c270:	00042c23          	sw	zero,24(s0)
    c274:	05c40513          	addi	a0,s0,92
    c278:	e61fd0ef          	jal	ra,a0d8 <memset>
    c27c:	0000db37          	lui	s6,0xd
    c280:	00892483          	lw	s1,8(s2)
    c284:	0000dab7          	lui	s5,0xd
    c288:	0000da37          	lui	s4,0xd
    c28c:	0000d9b7          	lui	s3,0xd
    c290:	594b0b13          	addi	s6,s6,1428 # d594 <__sread>
    c294:	5f8a8a93          	addi	s5,s5,1528 # d5f8 <__swrite>
    c298:	680a0a13          	addi	s4,s4,1664 # d680 <__sseek>
    c29c:	6e898993          	addi	s3,s3,1768 # d6e8 <__sclose>
    c2a0:	000107b7          	lui	a5,0x10
    c2a4:	03642023          	sw	s6,32(s0)
    c2a8:	03542223          	sw	s5,36(s0)
    c2ac:	03442423          	sw	s4,40(s0)
    c2b0:	03342623          	sw	s3,44(s0)
    c2b4:	00842e23          	sw	s0,28(s0)
    c2b8:	00978793          	addi	a5,a5,9 # 10009 <__multf3+0x2d9>
    c2bc:	00f4a623          	sw	a5,12(s1)
    c2c0:	00800613          	li	a2,8
    c2c4:	00000593          	li	a1,0
    c2c8:	0604a223          	sw	zero,100(s1)
    c2cc:	0004a023          	sw	zero,0(s1)
    c2d0:	0004a223          	sw	zero,4(s1)
    c2d4:	0004a423          	sw	zero,8(s1)
    c2d8:	0004a823          	sw	zero,16(s1)
    c2dc:	0004aa23          	sw	zero,20(s1)
    c2e0:	0004ac23          	sw	zero,24(s1)
    c2e4:	05c48513          	addi	a0,s1,92
    c2e8:	df1fd0ef          	jal	ra,a0d8 <memset>
    c2ec:	00c92403          	lw	s0,12(s2)
    c2f0:	000207b7          	lui	a5,0x20
    c2f4:	0364a023          	sw	s6,32(s1)
    c2f8:	0354a223          	sw	s5,36(s1)
    c2fc:	0344a423          	sw	s4,40(s1)
    c300:	0334a623          	sw	s3,44(s1)
    c304:	0094ae23          	sw	s1,28(s1)
    c308:	01278793          	addi	a5,a5,18 # 20012 <__crt0_copy_data_src_begin+0xc1b6>
    c30c:	00f42623          	sw	a5,12(s0)
    c310:	06042223          	sw	zero,100(s0)
    c314:	00042023          	sw	zero,0(s0)
    c318:	00042223          	sw	zero,4(s0)
    c31c:	00042423          	sw	zero,8(s0)
    c320:	00042823          	sw	zero,16(s0)
    c324:	00042a23          	sw	zero,20(s0)
    c328:	00042c23          	sw	zero,24(s0)
    c32c:	05c40513          	addi	a0,s0,92
    c330:	00800613          	li	a2,8
    c334:	00000593          	li	a1,0
    c338:	da1fd0ef          	jal	ra,a0d8 <memset>
    c33c:	01c12083          	lw	ra,28(sp)
    c340:	03642023          	sw	s6,32(s0)
    c344:	03542223          	sw	s5,36(s0)
    c348:	03442423          	sw	s4,40(s0)
    c34c:	03342623          	sw	s3,44(s0)
    c350:	00842e23          	sw	s0,28(s0)
    c354:	01812403          	lw	s0,24(sp)
    c358:	00100793          	li	a5,1
    c35c:	02f92c23          	sw	a5,56(s2)
    c360:	01412483          	lw	s1,20(sp)
    c364:	01012903          	lw	s2,16(sp)
    c368:	00c12983          	lw	s3,12(sp)
    c36c:	00812a03          	lw	s4,8(sp)
    c370:	00412a83          	lw	s5,4(sp)
    c374:	00012b03          	lw	s6,0(sp)
    c378:	02010113          	addi	sp,sp,32
    c37c:	00008067          	ret

0000c380 <__sfmoreglue>:
    c380:	ff010113          	addi	sp,sp,-16
    c384:	fff58613          	addi	a2,a1,-1
    c388:	00812423          	sw	s0,8(sp)
    c38c:	00161413          	slli	s0,a2,0x1
    c390:	00c40433          	add	s0,s0,a2
    c394:	00241413          	slli	s0,s0,0x2
    c398:	00c40433          	add	s0,s0,a2
    c39c:	00341413          	slli	s0,s0,0x3
    c3a0:	01212023          	sw	s2,0(sp)
    c3a4:	00058913          	mv	s2,a1
    c3a8:	07440593          	addi	a1,s0,116
    c3ac:	00912223          	sw	s1,4(sp)
    c3b0:	00112623          	sw	ra,12(sp)
    c3b4:	ec0fa0ef          	jal	ra,6a74 <_malloc_r>
    c3b8:	00050493          	mv	s1,a0
    c3bc:	02050063          	beqz	a0,c3dc <__sfmoreglue+0x5c>
    c3c0:	00c50513          	addi	a0,a0,12
    c3c4:	0004a023          	sw	zero,0(s1)
    c3c8:	0124a223          	sw	s2,4(s1)
    c3cc:	00a4a423          	sw	a0,8(s1)
    c3d0:	06840613          	addi	a2,s0,104
    c3d4:	00000593          	li	a1,0
    c3d8:	d01fd0ef          	jal	ra,a0d8 <memset>
    c3dc:	00c12083          	lw	ra,12(sp)
    c3e0:	00812403          	lw	s0,8(sp)
    c3e4:	00012903          	lw	s2,0(sp)
    c3e8:	00048513          	mv	a0,s1
    c3ec:	00412483          	lw	s1,4(sp)
    c3f0:	01010113          	addi	sp,sp,16
    c3f4:	00008067          	ret

0000c3f8 <__sfp>:
    c3f8:	fe010113          	addi	sp,sp,-32
    c3fc:	01212823          	sw	s2,16(sp)
    c400:	1b81a903          	lw	s2,440(gp) # 800009b8 <_global_impure_ptr>
    c404:	01312623          	sw	s3,12(sp)
    c408:	00112e23          	sw	ra,28(sp)
    c40c:	03892783          	lw	a5,56(s2)
    c410:	00812c23          	sw	s0,24(sp)
    c414:	00912a23          	sw	s1,20(sp)
    c418:	01412423          	sw	s4,8(sp)
    c41c:	00050993          	mv	s3,a0
    c420:	0a078a63          	beqz	a5,c4d4 <__sfp+0xdc>
    c424:	2e090913          	addi	s2,s2,736
    c428:	fff00493          	li	s1,-1
    c42c:	00400a13          	li	s4,4
    c430:	00492783          	lw	a5,4(s2)
    c434:	00892403          	lw	s0,8(s2)
    c438:	fff78793          	addi	a5,a5,-1
    c43c:	0007d863          	bgez	a5,c44c <__sfp+0x54>
    c440:	0840006f          	j	c4c4 <__sfp+0xcc>
    c444:	06840413          	addi	s0,s0,104
    c448:	06978e63          	beq	a5,s1,c4c4 <__sfp+0xcc>
    c44c:	00c41703          	lh	a4,12(s0)
    c450:	fff78793          	addi	a5,a5,-1
    c454:	fe0718e3          	bnez	a4,c444 <__sfp+0x4c>
    c458:	ffff07b7          	lui	a5,0xffff0
    c45c:	00178793          	addi	a5,a5,1 # ffff0001 <__ctr0_io_space_begin+0xffff0201>
    c460:	06042223          	sw	zero,100(s0)
    c464:	00042023          	sw	zero,0(s0)
    c468:	00042223          	sw	zero,4(s0)
    c46c:	00042423          	sw	zero,8(s0)
    c470:	00f42623          	sw	a5,12(s0)
    c474:	00042823          	sw	zero,16(s0)
    c478:	00042a23          	sw	zero,20(s0)
    c47c:	00042c23          	sw	zero,24(s0)
    c480:	00800613          	li	a2,8
    c484:	00000593          	li	a1,0
    c488:	05c40513          	addi	a0,s0,92
    c48c:	c4dfd0ef          	jal	ra,a0d8 <memset>
    c490:	02042823          	sw	zero,48(s0)
    c494:	02042a23          	sw	zero,52(s0)
    c498:	04042223          	sw	zero,68(s0)
    c49c:	04042423          	sw	zero,72(s0)
    c4a0:	01c12083          	lw	ra,28(sp)
    c4a4:	00040513          	mv	a0,s0
    c4a8:	01812403          	lw	s0,24(sp)
    c4ac:	01412483          	lw	s1,20(sp)
    c4b0:	01012903          	lw	s2,16(sp)
    c4b4:	00c12983          	lw	s3,12(sp)
    c4b8:	00812a03          	lw	s4,8(sp)
    c4bc:	02010113          	addi	sp,sp,32
    c4c0:	00008067          	ret
    c4c4:	00092403          	lw	s0,0(s2)
    c4c8:	00040c63          	beqz	s0,c4e0 <__sfp+0xe8>
    c4cc:	00040913          	mv	s2,s0
    c4d0:	f61ff06f          	j	c430 <__sfp+0x38>
    c4d4:	00090513          	mv	a0,s2
    c4d8:	d25ff0ef          	jal	ra,c1fc <__sinit.part.0>
    c4dc:	f49ff06f          	j	c424 <__sfp+0x2c>
    c4e0:	1ac00593          	li	a1,428
    c4e4:	00098513          	mv	a0,s3
    c4e8:	d8cfa0ef          	jal	ra,6a74 <_malloc_r>
    c4ec:	00050413          	mv	s0,a0
    c4f0:	02050663          	beqz	a0,c51c <__sfp+0x124>
    c4f4:	00c50513          	addi	a0,a0,12
    c4f8:	00042023          	sw	zero,0(s0)
    c4fc:	01442223          	sw	s4,4(s0)
    c500:	00a42423          	sw	a0,8(s0)
    c504:	1a000613          	li	a2,416
    c508:	00000593          	li	a1,0
    c50c:	bcdfd0ef          	jal	ra,a0d8 <memset>
    c510:	00892023          	sw	s0,0(s2)
    c514:	00040913          	mv	s2,s0
    c518:	f19ff06f          	j	c430 <__sfp+0x38>
    c51c:	00092023          	sw	zero,0(s2)
    c520:	00c00793          	li	a5,12
    c524:	00f9a023          	sw	a5,0(s3)
    c528:	f79ff06f          	j	c4a0 <__sfp+0xa8>

0000c52c <_cleanup>:
    c52c:	1b81a503          	lw	a0,440(gp) # 800009b8 <_global_impure_ptr>
    c530:	0000e5b7          	lui	a1,0xe
    c534:	b1058593          	addi	a1,a1,-1264 # db10 <_fclose_r>
    c538:	7600006f          	j	cc98 <_fwalk_reent>

0000c53c <__sinit>:
    c53c:	03852783          	lw	a5,56(a0)
    c540:	00078463          	beqz	a5,c548 <__sinit+0xc>
    c544:	00008067          	ret
    c548:	cb5ff06f          	j	c1fc <__sinit.part.0>

0000c54c <__sfp_lock_acquire>:
    c54c:	00008067          	ret

0000c550 <__sfp_lock_release>:
    c550:	00008067          	ret

0000c554 <__sinit_lock_acquire>:
    c554:	00008067          	ret

0000c558 <__sinit_lock_release>:
    c558:	00008067          	ret

0000c55c <__fp_lock_all>:
    c55c:	1bc1a503          	lw	a0,444(gp) # 800009bc <_impure_ptr>
    c560:	0000c5b7          	lui	a1,0xc
    c564:	1e058593          	addi	a1,a1,480 # c1e0 <__fp_lock>
    c568:	68c0006f          	j	cbf4 <_fwalk>

0000c56c <__fp_unlock_all>:
    c56c:	1bc1a503          	lw	a0,444(gp) # 800009bc <_impure_ptr>
    c570:	0000c5b7          	lui	a1,0xc
    c574:	1f458593          	addi	a1,a1,500 # c1f4 <__fp_unlock>
    c578:	67c0006f          	j	cbf4 <_fwalk>

0000c57c <__fputwc>:
    c57c:	fd010113          	addi	sp,sp,-48
    c580:	02812423          	sw	s0,40(sp)
    c584:	01312e23          	sw	s3,28(sp)
    c588:	01612823          	sw	s6,16(sp)
    c58c:	02112623          	sw	ra,44(sp)
    c590:	02912223          	sw	s1,36(sp)
    c594:	03212023          	sw	s2,32(sp)
    c598:	01412c23          	sw	s4,24(sp)
    c59c:	01512a23          	sw	s5,20(sp)
    c5a0:	00050b13          	mv	s6,a0
    c5a4:	00058993          	mv	s3,a1
    c5a8:	00060413          	mv	s0,a2
    c5ac:	919fd0ef          	jal	ra,9ec4 <__locale_mb_cur_max>
    c5b0:	00100793          	li	a5,1
    c5b4:	02f51063          	bne	a0,a5,c5d4 <__fputwc+0x58>
    c5b8:	fff98793          	addi	a5,s3,-1
    c5bc:	0fe00713          	li	a4,254
    c5c0:	00f76a63          	bltu	a4,a5,c5d4 <__fputwc+0x58>
    c5c4:	0ff9f713          	andi	a4,s3,255
    c5c8:	00e10623          	sb	a4,12(sp)
    c5cc:	00100913          	li	s2,1
    c5d0:	02c0006f          	j	c5fc <__fputwc+0x80>
    c5d4:	05c40693          	addi	a3,s0,92
    c5d8:	00098613          	mv	a2,s3
    c5dc:	00c10593          	addi	a1,sp,12
    c5e0:	000b0513          	mv	a0,s6
    c5e4:	2a8010ef          	jal	ra,d88c <_wcrtomb_r>
    c5e8:	fff00793          	li	a5,-1
    c5ec:	00050913          	mv	s2,a0
    c5f0:	0af50463          	beq	a0,a5,c698 <__fputwc+0x11c>
    c5f4:	08050e63          	beqz	a0,c690 <__fputwc+0x114>
    c5f8:	00c14703          	lbu	a4,12(sp)
    c5fc:	00000493          	li	s1,0
    c600:	fff00a13          	li	s4,-1
    c604:	00a00a93          	li	s5,10
    c608:	0280006f          	j	c630 <__fputwc+0xb4>
    c60c:	00042783          	lw	a5,0(s0)
    c610:	00178693          	addi	a3,a5,1
    c614:	00d42023          	sw	a3,0(s0)
    c618:	00e78023          	sb	a4,0(a5)
    c61c:	00148493          	addi	s1,s1,1
    c620:	00c10793          	addi	a5,sp,12
    c624:	009787b3          	add	a5,a5,s1
    c628:	0724f463          	bgeu	s1,s2,c690 <__fputwc+0x114>
    c62c:	0007c703          	lbu	a4,0(a5)
    c630:	00842783          	lw	a5,8(s0)
    c634:	fff78793          	addi	a5,a5,-1
    c638:	00f42423          	sw	a5,8(s0)
    c63c:	fc07d8e3          	bgez	a5,c60c <__fputwc+0x90>
    c640:	01842683          	lw	a3,24(s0)
    c644:	00070593          	mv	a1,a4
    c648:	00040613          	mv	a2,s0
    c64c:	000b0513          	mv	a0,s6
    c650:	00d7c463          	blt	a5,a3,c658 <__fputwc+0xdc>
    c654:	fb571ce3          	bne	a4,s5,c60c <__fputwc+0x90>
    c658:	098010ef          	jal	ra,d6f0 <__swbuf_r>
    c65c:	fd4510e3          	bne	a0,s4,c61c <__fputwc+0xa0>
    c660:	fff00913          	li	s2,-1
    c664:	02c12083          	lw	ra,44(sp)
    c668:	02812403          	lw	s0,40(sp)
    c66c:	02412483          	lw	s1,36(sp)
    c670:	01c12983          	lw	s3,28(sp)
    c674:	01812a03          	lw	s4,24(sp)
    c678:	01412a83          	lw	s5,20(sp)
    c67c:	01012b03          	lw	s6,16(sp)
    c680:	00090513          	mv	a0,s2
    c684:	02012903          	lw	s2,32(sp)
    c688:	03010113          	addi	sp,sp,48
    c68c:	00008067          	ret
    c690:	00098913          	mv	s2,s3
    c694:	fd1ff06f          	j	c664 <__fputwc+0xe8>
    c698:	00c45783          	lhu	a5,12(s0)
    c69c:	0407e793          	ori	a5,a5,64
    c6a0:	00f41623          	sh	a5,12(s0)
    c6a4:	fc1ff06f          	j	c664 <__fputwc+0xe8>

0000c6a8 <_fputwc_r>:
    c6a8:	00c61783          	lh	a5,12(a2)
    c6ac:	01279713          	slli	a4,a5,0x12
    c6b0:	02074063          	bltz	a4,c6d0 <_fputwc_r+0x28>
    c6b4:	06462703          	lw	a4,100(a2)
    c6b8:	000026b7          	lui	a3,0x2
    c6bc:	00d7e7b3          	or	a5,a5,a3
    c6c0:	000026b7          	lui	a3,0x2
    c6c4:	00d76733          	or	a4,a4,a3
    c6c8:	00f61623          	sh	a5,12(a2)
    c6cc:	06e62223          	sw	a4,100(a2)
    c6d0:	eadff06f          	j	c57c <__fputwc>

0000c6d4 <fputwc>:
    c6d4:	fe010113          	addi	sp,sp,-32
    c6d8:	00812c23          	sw	s0,24(sp)
    c6dc:	1bc1a403          	lw	s0,444(gp) # 800009bc <_impure_ptr>
    c6e0:	00112e23          	sw	ra,28(sp)
    c6e4:	00058613          	mv	a2,a1
    c6e8:	00050593          	mv	a1,a0
    c6ec:	00040663          	beqz	s0,c6f8 <fputwc+0x24>
    c6f0:	03842783          	lw	a5,56(s0)
    c6f4:	04078063          	beqz	a5,c734 <fputwc+0x60>
    c6f8:	00c61783          	lh	a5,12(a2)
    c6fc:	01279713          	slli	a4,a5,0x12
    c700:	02074063          	bltz	a4,c720 <fputwc+0x4c>
    c704:	06462703          	lw	a4,100(a2)
    c708:	000026b7          	lui	a3,0x2
    c70c:	00d7e7b3          	or	a5,a5,a3
    c710:	000026b7          	lui	a3,0x2
    c714:	00d76733          	or	a4,a4,a3
    c718:	00f61623          	sh	a5,12(a2)
    c71c:	06e62223          	sw	a4,100(a2)
    c720:	00040513          	mv	a0,s0
    c724:	01812403          	lw	s0,24(sp)
    c728:	01c12083          	lw	ra,28(sp)
    c72c:	02010113          	addi	sp,sp,32
    c730:	e4dff06f          	j	c57c <__fputwc>
    c734:	00a12423          	sw	a0,8(sp)
    c738:	00040513          	mv	a0,s0
    c73c:	00c12623          	sw	a2,12(sp)
    c740:	dfdff0ef          	jal	ra,c53c <__sinit>
    c744:	00c12603          	lw	a2,12(sp)
    c748:	00812583          	lw	a1,8(sp)
    c74c:	fadff06f          	j	c6f8 <fputwc+0x24>

0000c750 <__sfvwrite_r>:
    c750:	00862783          	lw	a5,8(a2)
    c754:	30078863          	beqz	a5,ca64 <__sfvwrite_r+0x314>
    c758:	00c5d783          	lhu	a5,12(a1)
    c75c:	fd010113          	addi	sp,sp,-48
    c760:	02812423          	sw	s0,40(sp)
    c764:	01412c23          	sw	s4,24(sp)
    c768:	01512a23          	sw	s5,20(sp)
    c76c:	02112623          	sw	ra,44(sp)
    c770:	02912223          	sw	s1,36(sp)
    c774:	03212023          	sw	s2,32(sp)
    c778:	01312e23          	sw	s3,28(sp)
    c77c:	01612823          	sw	s6,16(sp)
    c780:	01712623          	sw	s7,12(sp)
    c784:	01812423          	sw	s8,8(sp)
    c788:	01912223          	sw	s9,4(sp)
    c78c:	01a12023          	sw	s10,0(sp)
    c790:	0087f713          	andi	a4,a5,8
    c794:	00060a13          	mv	s4,a2
    c798:	00050a93          	mv	s5,a0
    c79c:	00058413          	mv	s0,a1
    c7a0:	08070663          	beqz	a4,c82c <__sfvwrite_r+0xdc>
    c7a4:	0105a703          	lw	a4,16(a1)
    c7a8:	08070263          	beqz	a4,c82c <__sfvwrite_r+0xdc>
    c7ac:	0027f713          	andi	a4,a5,2
    c7b0:	000a2483          	lw	s1,0(s4)
    c7b4:	08070c63          	beqz	a4,c84c <__sfvwrite_r+0xfc>
    c7b8:	02442783          	lw	a5,36(s0)
    c7bc:	01c42583          	lw	a1,28(s0)
    c7c0:	80000b37          	lui	s6,0x80000
    c7c4:	00000993          	li	s3,0
    c7c8:	00000913          	li	s2,0
    c7cc:	c00b4b13          	xori	s6,s6,-1024
    c7d0:	00098613          	mv	a2,s3
    c7d4:	000a8513          	mv	a0,s5
    c7d8:	04090263          	beqz	s2,c81c <__sfvwrite_r+0xcc>
    c7dc:	00090693          	mv	a3,s2
    c7e0:	012b7463          	bgeu	s6,s2,c7e8 <__sfvwrite_r+0x98>
    c7e4:	000b0693          	mv	a3,s6
    c7e8:	000780e7          	jalr	a5
    c7ec:	26a05263          	blez	a0,ca50 <__sfvwrite_r+0x300>
    c7f0:	008a2783          	lw	a5,8(s4)
    c7f4:	00a989b3          	add	s3,s3,a0
    c7f8:	40a90933          	sub	s2,s2,a0
    c7fc:	40a78533          	sub	a0,a5,a0
    c800:	00aa2423          	sw	a0,8(s4)
    c804:	20050063          	beqz	a0,ca04 <__sfvwrite_r+0x2b4>
    c808:	02442783          	lw	a5,36(s0)
    c80c:	01c42583          	lw	a1,28(s0)
    c810:	00098613          	mv	a2,s3
    c814:	000a8513          	mv	a0,s5
    c818:	fc0912e3          	bnez	s2,c7dc <__sfvwrite_r+0x8c>
    c81c:	0004a983          	lw	s3,0(s1)
    c820:	0044a903          	lw	s2,4(s1)
    c824:	00848493          	addi	s1,s1,8
    c828:	fa9ff06f          	j	c7d0 <__sfvwrite_r+0x80>
    c82c:	00040593          	mv	a1,s0
    c830:	000a8513          	mv	a0,s5
    c834:	cecff0ef          	jal	ra,bd20 <__swsetup_r>
    c838:	3a051a63          	bnez	a0,cbec <__sfvwrite_r+0x49c>
    c83c:	00c45783          	lhu	a5,12(s0)
    c840:	000a2483          	lw	s1,0(s4)
    c844:	0027f713          	andi	a4,a5,2
    c848:	f60718e3          	bnez	a4,c7b8 <__sfvwrite_r+0x68>
    c84c:	0017f713          	andi	a4,a5,1
    c850:	12071663          	bnez	a4,c97c <__sfvwrite_r+0x22c>
    c854:	00842c83          	lw	s9,8(s0)
    c858:	00042503          	lw	a0,0(s0)
    c85c:	80000b37          	lui	s6,0x80000
    c860:	ffeb4b93          	xori	s7,s6,-2
    c864:	00000c13          	li	s8,0
    c868:	00000913          	li	s2,0
    c86c:	fffb4b13          	not	s6,s6
    c870:	0e090e63          	beqz	s2,c96c <__sfvwrite_r+0x21c>
    c874:	2007f713          	andi	a4,a5,512
    c878:	24070863          	beqz	a4,cac8 <__sfvwrite_r+0x378>
    c87c:	000c8d13          	mv	s10,s9
    c880:	2f996463          	bltu	s2,s9,cb68 <__sfvwrite_r+0x418>
    c884:	4807f713          	andi	a4,a5,1152
    c888:	08070a63          	beqz	a4,c91c <__sfvwrite_r+0x1cc>
    c88c:	01442983          	lw	s3,20(s0)
    c890:	01042583          	lw	a1,16(s0)
    c894:	00190713          	addi	a4,s2,1
    c898:	00199693          	slli	a3,s3,0x1
    c89c:	013686b3          	add	a3,a3,s3
    c8a0:	01f6d993          	srli	s3,a3,0x1f
    c8a4:	40b50d33          	sub	s10,a0,a1
    c8a8:	00d989b3          	add	s3,s3,a3
    c8ac:	4019d993          	srai	s3,s3,0x1
    c8b0:	01a70733          	add	a4,a4,s10
    c8b4:	00098613          	mv	a2,s3
    c8b8:	00e9f663          	bgeu	s3,a4,c8c4 <__sfvwrite_r+0x174>
    c8bc:	00070993          	mv	s3,a4
    c8c0:	00070613          	mv	a2,a4
    c8c4:	4007f793          	andi	a5,a5,1024
    c8c8:	2c078c63          	beqz	a5,cba0 <__sfvwrite_r+0x450>
    c8cc:	00060593          	mv	a1,a2
    c8d0:	000a8513          	mv	a0,s5
    c8d4:	9a0fa0ef          	jal	ra,6a74 <_malloc_r>
    c8d8:	00050c93          	mv	s9,a0
    c8dc:	30050063          	beqz	a0,cbdc <__sfvwrite_r+0x48c>
    c8e0:	01042583          	lw	a1,16(s0)
    c8e4:	000d0613          	mv	a2,s10
    c8e8:	cc0f40ef          	jal	ra,da8 <memcpy>
    c8ec:	00c45783          	lhu	a5,12(s0)
    c8f0:	b7f7f793          	andi	a5,a5,-1153
    c8f4:	0807e793          	ori	a5,a5,128
    c8f8:	00f41623          	sh	a5,12(s0)
    c8fc:	01ac8533          	add	a0,s9,s10
    c900:	41a987b3          	sub	a5,s3,s10
    c904:	01942823          	sw	s9,16(s0)
    c908:	00a42023          	sw	a0,0(s0)
    c90c:	01342a23          	sw	s3,20(s0)
    c910:	00090c93          	mv	s9,s2
    c914:	00f42423          	sw	a5,8(s0)
    c918:	00090d13          	mv	s10,s2
    c91c:	000d0613          	mv	a2,s10
    c920:	000c0593          	mv	a1,s8
    c924:	e94fd0ef          	jal	ra,9fb8 <memmove>
    c928:	00842703          	lw	a4,8(s0)
    c92c:	00042783          	lw	a5,0(s0)
    c930:	00090993          	mv	s3,s2
    c934:	41970cb3          	sub	s9,a4,s9
    c938:	01a787b3          	add	a5,a5,s10
    c93c:	01942423          	sw	s9,8(s0)
    c940:	00f42023          	sw	a5,0(s0)
    c944:	00000913          	li	s2,0
    c948:	008a2603          	lw	a2,8(s4)
    c94c:	013c0c33          	add	s8,s8,s3
    c950:	413609b3          	sub	s3,a2,s3
    c954:	013a2423          	sw	s3,8(s4)
    c958:	0a098663          	beqz	s3,ca04 <__sfvwrite_r+0x2b4>
    c95c:	00842c83          	lw	s9,8(s0)
    c960:	00042503          	lw	a0,0(s0)
    c964:	00c45783          	lhu	a5,12(s0)
    c968:	f00916e3          	bnez	s2,c874 <__sfvwrite_r+0x124>
    c96c:	0004ac03          	lw	s8,0(s1)
    c970:	0044a903          	lw	s2,4(s1)
    c974:	00848493          	addi	s1,s1,8
    c978:	ef9ff06f          	j	c870 <__sfvwrite_r+0x120>
    c97c:	00000b13          	li	s6,0
    c980:	00000513          	li	a0,0
    c984:	00000c13          	li	s8,0
    c988:	00000993          	li	s3,0
    c98c:	0e098063          	beqz	s3,ca6c <__sfvwrite_r+0x31c>
    c990:	0e050663          	beqz	a0,ca7c <__sfvwrite_r+0x32c>
    c994:	000b0793          	mv	a5,s6
    c998:	00098b93          	mv	s7,s3
    c99c:	0137f463          	bgeu	a5,s3,c9a4 <__sfvwrite_r+0x254>
    c9a0:	00078b93          	mv	s7,a5
    c9a4:	00042503          	lw	a0,0(s0)
    c9a8:	01042783          	lw	a5,16(s0)
    c9ac:	01442683          	lw	a3,20(s0)
    c9b0:	00a7f863          	bgeu	a5,a0,c9c0 <__sfvwrite_r+0x270>
    c9b4:	00842903          	lw	s2,8(s0)
    c9b8:	01268933          	add	s2,a3,s2
    c9bc:	0f794063          	blt	s2,s7,ca9c <__sfvwrite_r+0x34c>
    c9c0:	1adbca63          	blt	s7,a3,cb74 <__sfvwrite_r+0x424>
    c9c4:	02442783          	lw	a5,36(s0)
    c9c8:	01c42583          	lw	a1,28(s0)
    c9cc:	000c0613          	mv	a2,s8
    c9d0:	000a8513          	mv	a0,s5
    c9d4:	000780e7          	jalr	a5
    c9d8:	00050913          	mv	s2,a0
    c9dc:	06a05a63          	blez	a0,ca50 <__sfvwrite_r+0x300>
    c9e0:	412b0b33          	sub	s6,s6,s2
    c9e4:	00100513          	li	a0,1
    c9e8:	040b0c63          	beqz	s6,ca40 <__sfvwrite_r+0x2f0>
    c9ec:	008a2603          	lw	a2,8(s4)
    c9f0:	012c0c33          	add	s8,s8,s2
    c9f4:	412989b3          	sub	s3,s3,s2
    c9f8:	41260933          	sub	s2,a2,s2
    c9fc:	012a2423          	sw	s2,8(s4)
    ca00:	f80916e3          	bnez	s2,c98c <__sfvwrite_r+0x23c>
    ca04:	00000513          	li	a0,0
    ca08:	02c12083          	lw	ra,44(sp)
    ca0c:	02812403          	lw	s0,40(sp)
    ca10:	02412483          	lw	s1,36(sp)
    ca14:	02012903          	lw	s2,32(sp)
    ca18:	01c12983          	lw	s3,28(sp)
    ca1c:	01812a03          	lw	s4,24(sp)
    ca20:	01412a83          	lw	s5,20(sp)
    ca24:	01012b03          	lw	s6,16(sp)
    ca28:	00c12b83          	lw	s7,12(sp)
    ca2c:	00812c03          	lw	s8,8(sp)
    ca30:	00412c83          	lw	s9,4(sp)
    ca34:	00012d03          	lw	s10,0(sp)
    ca38:	03010113          	addi	sp,sp,48
    ca3c:	00008067          	ret
    ca40:	00040593          	mv	a1,s0
    ca44:	000a8513          	mv	a0,s5
    ca48:	ebcff0ef          	jal	ra,c104 <_fflush_r>
    ca4c:	fa0500e3          	beqz	a0,c9ec <__sfvwrite_r+0x29c>
    ca50:	00c41783          	lh	a5,12(s0)
    ca54:	0407e793          	ori	a5,a5,64
    ca58:	00f41623          	sh	a5,12(s0)
    ca5c:	fff00513          	li	a0,-1
    ca60:	fa9ff06f          	j	ca08 <__sfvwrite_r+0x2b8>
    ca64:	00000513          	li	a0,0
    ca68:	00008067          	ret
    ca6c:	0044a983          	lw	s3,4(s1)
    ca70:	0004ac03          	lw	s8,0(s1)
    ca74:	00848493          	addi	s1,s1,8
    ca78:	fe098ae3          	beqz	s3,ca6c <__sfvwrite_r+0x31c>
    ca7c:	00098613          	mv	a2,s3
    ca80:	00a00593          	li	a1,10
    ca84:	000c0513          	mv	a0,s8
    ca88:	f84fa0ef          	jal	ra,720c <memchr>
    ca8c:	14050263          	beqz	a0,cbd0 <__sfvwrite_r+0x480>
    ca90:	00150513          	addi	a0,a0,1
    ca94:	41850b33          	sub	s6,a0,s8
    ca98:	efdff06f          	j	c994 <__sfvwrite_r+0x244>
    ca9c:	000c0593          	mv	a1,s8
    caa0:	00090613          	mv	a2,s2
    caa4:	d14fd0ef          	jal	ra,9fb8 <memmove>
    caa8:	00042783          	lw	a5,0(s0)
    caac:	00040593          	mv	a1,s0
    cab0:	000a8513          	mv	a0,s5
    cab4:	012787b3          	add	a5,a5,s2
    cab8:	00f42023          	sw	a5,0(s0)
    cabc:	e48ff0ef          	jal	ra,c104 <_fflush_r>
    cac0:	f20500e3          	beqz	a0,c9e0 <__sfvwrite_r+0x290>
    cac4:	f8dff06f          	j	ca50 <__sfvwrite_r+0x300>
    cac8:	01042783          	lw	a5,16(s0)
    cacc:	04a7e863          	bltu	a5,a0,cb1c <__sfvwrite_r+0x3cc>
    cad0:	01442983          	lw	s3,20(s0)
    cad4:	05396463          	bltu	s2,s3,cb1c <__sfvwrite_r+0x3cc>
    cad8:	00090513          	mv	a0,s2
    cadc:	012bf463          	bgeu	s7,s2,cae4 <__sfvwrite_r+0x394>
    cae0:	000b0513          	mv	a0,s6
    cae4:	00098593          	mv	a1,s3
    cae8:	a0cf40ef          	jal	ra,cf4 <__divsi3>
    caec:	00098593          	mv	a1,s3
    caf0:	950f40ef          	jal	ra,c40 <__mulsi3>
    caf4:	02442783          	lw	a5,36(s0)
    caf8:	01c42583          	lw	a1,28(s0)
    cafc:	00050693          	mv	a3,a0
    cb00:	000c0613          	mv	a2,s8
    cb04:	000a8513          	mv	a0,s5
    cb08:	000780e7          	jalr	a5
    cb0c:	00050993          	mv	s3,a0
    cb10:	f4a050e3          	blez	a0,ca50 <__sfvwrite_r+0x300>
    cb14:	41390933          	sub	s2,s2,s3
    cb18:	e31ff06f          	j	c948 <__sfvwrite_r+0x1f8>
    cb1c:	000c8993          	mv	s3,s9
    cb20:	01997463          	bgeu	s2,s9,cb28 <__sfvwrite_r+0x3d8>
    cb24:	00090993          	mv	s3,s2
    cb28:	00098613          	mv	a2,s3
    cb2c:	000c0593          	mv	a1,s8
    cb30:	c88fd0ef          	jal	ra,9fb8 <memmove>
    cb34:	00842783          	lw	a5,8(s0)
    cb38:	00042703          	lw	a4,0(s0)
    cb3c:	413787b3          	sub	a5,a5,s3
    cb40:	01370733          	add	a4,a4,s3
    cb44:	00f42423          	sw	a5,8(s0)
    cb48:	00e42023          	sw	a4,0(s0)
    cb4c:	fc0794e3          	bnez	a5,cb14 <__sfvwrite_r+0x3c4>
    cb50:	00040593          	mv	a1,s0
    cb54:	000a8513          	mv	a0,s5
    cb58:	dacff0ef          	jal	ra,c104 <_fflush_r>
    cb5c:	ee051ae3          	bnez	a0,ca50 <__sfvwrite_r+0x300>
    cb60:	41390933          	sub	s2,s2,s3
    cb64:	de5ff06f          	j	c948 <__sfvwrite_r+0x1f8>
    cb68:	00090c93          	mv	s9,s2
    cb6c:	00090d13          	mv	s10,s2
    cb70:	dadff06f          	j	c91c <__sfvwrite_r+0x1cc>
    cb74:	000b8613          	mv	a2,s7
    cb78:	000c0593          	mv	a1,s8
    cb7c:	c3cfd0ef          	jal	ra,9fb8 <memmove>
    cb80:	00842703          	lw	a4,8(s0)
    cb84:	00042783          	lw	a5,0(s0)
    cb88:	000b8913          	mv	s2,s7
    cb8c:	41770733          	sub	a4,a4,s7
    cb90:	017787b3          	add	a5,a5,s7
    cb94:	00e42423          	sw	a4,8(s0)
    cb98:	00f42023          	sw	a5,0(s0)
    cb9c:	e45ff06f          	j	c9e0 <__sfvwrite_r+0x290>
    cba0:	000a8513          	mv	a0,s5
    cba4:	e10fd0ef          	jal	ra,a1b4 <_realloc_r>
    cba8:	00050c93          	mv	s9,a0
    cbac:	d40518e3          	bnez	a0,c8fc <__sfvwrite_r+0x1ac>
    cbb0:	01042583          	lw	a1,16(s0)
    cbb4:	000a8513          	mv	a0,s5
    cbb8:	f71f60ef          	jal	ra,3b28 <_free_r>
    cbbc:	00c41783          	lh	a5,12(s0)
    cbc0:	00c00713          	li	a4,12
    cbc4:	00eaa023          	sw	a4,0(s5)
    cbc8:	f7f7f793          	andi	a5,a5,-129
    cbcc:	e89ff06f          	j	ca54 <__sfvwrite_r+0x304>
    cbd0:	00198793          	addi	a5,s3,1
    cbd4:	00078b13          	mv	s6,a5
    cbd8:	dc1ff06f          	j	c998 <__sfvwrite_r+0x248>
    cbdc:	00c00713          	li	a4,12
    cbe0:	00c41783          	lh	a5,12(s0)
    cbe4:	00eaa023          	sw	a4,0(s5)
    cbe8:	e6dff06f          	j	ca54 <__sfvwrite_r+0x304>
    cbec:	fff00513          	li	a0,-1
    cbf0:	e19ff06f          	j	ca08 <__sfvwrite_r+0x2b8>

0000cbf4 <_fwalk>:
    cbf4:	fe010113          	addi	sp,sp,-32
    cbf8:	01212823          	sw	s2,16(sp)
    cbfc:	01312623          	sw	s3,12(sp)
    cc00:	01412423          	sw	s4,8(sp)
    cc04:	01512223          	sw	s5,4(sp)
    cc08:	01612023          	sw	s6,0(sp)
    cc0c:	00112e23          	sw	ra,28(sp)
    cc10:	00812c23          	sw	s0,24(sp)
    cc14:	00912a23          	sw	s1,20(sp)
    cc18:	00058b13          	mv	s6,a1
    cc1c:	2e050a93          	addi	s5,a0,736
    cc20:	00000a13          	li	s4,0
    cc24:	00100993          	li	s3,1
    cc28:	fff00913          	li	s2,-1
    cc2c:	004aa483          	lw	s1,4(s5)
    cc30:	008aa403          	lw	s0,8(s5)
    cc34:	fff48493          	addi	s1,s1,-1
    cc38:	0204c663          	bltz	s1,cc64 <_fwalk+0x70>
    cc3c:	00c45783          	lhu	a5,12(s0)
    cc40:	fff48493          	addi	s1,s1,-1
    cc44:	00f9fc63          	bgeu	s3,a5,cc5c <_fwalk+0x68>
    cc48:	00e41783          	lh	a5,14(s0)
    cc4c:	00040513          	mv	a0,s0
    cc50:	01278663          	beq	a5,s2,cc5c <_fwalk+0x68>
    cc54:	000b00e7          	jalr	s6 # 80000000 <__ctr0_io_space_begin+0x80000200>
    cc58:	00aa6a33          	or	s4,s4,a0
    cc5c:	06840413          	addi	s0,s0,104
    cc60:	fd249ee3          	bne	s1,s2,cc3c <_fwalk+0x48>
    cc64:	000aaa83          	lw	s5,0(s5)
    cc68:	fc0a92e3          	bnez	s5,cc2c <_fwalk+0x38>
    cc6c:	01c12083          	lw	ra,28(sp)
    cc70:	01812403          	lw	s0,24(sp)
    cc74:	01412483          	lw	s1,20(sp)
    cc78:	01012903          	lw	s2,16(sp)
    cc7c:	00c12983          	lw	s3,12(sp)
    cc80:	00412a83          	lw	s5,4(sp)
    cc84:	00012b03          	lw	s6,0(sp)
    cc88:	000a0513          	mv	a0,s4
    cc8c:	00812a03          	lw	s4,8(sp)
    cc90:	02010113          	addi	sp,sp,32
    cc94:	00008067          	ret

0000cc98 <_fwalk_reent>:
    cc98:	fd010113          	addi	sp,sp,-48
    cc9c:	03212023          	sw	s2,32(sp)
    cca0:	01312e23          	sw	s3,28(sp)
    cca4:	01412c23          	sw	s4,24(sp)
    cca8:	01512a23          	sw	s5,20(sp)
    ccac:	01612823          	sw	s6,16(sp)
    ccb0:	01712623          	sw	s7,12(sp)
    ccb4:	02112623          	sw	ra,44(sp)
    ccb8:	02812423          	sw	s0,40(sp)
    ccbc:	02912223          	sw	s1,36(sp)
    ccc0:	00050a93          	mv	s5,a0
    ccc4:	00058b93          	mv	s7,a1
    ccc8:	2e050b13          	addi	s6,a0,736
    cccc:	00000a13          	li	s4,0
    ccd0:	00100993          	li	s3,1
    ccd4:	fff00913          	li	s2,-1
    ccd8:	004b2483          	lw	s1,4(s6)
    ccdc:	008b2403          	lw	s0,8(s6)
    cce0:	fff48493          	addi	s1,s1,-1
    cce4:	0204c863          	bltz	s1,cd14 <_fwalk_reent+0x7c>
    cce8:	00c45783          	lhu	a5,12(s0)
    ccec:	fff48493          	addi	s1,s1,-1
    ccf0:	00f9fe63          	bgeu	s3,a5,cd0c <_fwalk_reent+0x74>
    ccf4:	00e41783          	lh	a5,14(s0)
    ccf8:	00040593          	mv	a1,s0
    ccfc:	000a8513          	mv	a0,s5
    cd00:	01278663          	beq	a5,s2,cd0c <_fwalk_reent+0x74>
    cd04:	000b80e7          	jalr	s7
    cd08:	00aa6a33          	or	s4,s4,a0
    cd0c:	06840413          	addi	s0,s0,104
    cd10:	fd249ce3          	bne	s1,s2,cce8 <_fwalk_reent+0x50>
    cd14:	000b2b03          	lw	s6,0(s6)
    cd18:	fc0b10e3          	bnez	s6,ccd8 <_fwalk_reent+0x40>
    cd1c:	02c12083          	lw	ra,44(sp)
    cd20:	02812403          	lw	s0,40(sp)
    cd24:	02412483          	lw	s1,36(sp)
    cd28:	02012903          	lw	s2,32(sp)
    cd2c:	01c12983          	lw	s3,28(sp)
    cd30:	01412a83          	lw	s5,20(sp)
    cd34:	01012b03          	lw	s6,16(sp)
    cd38:	00c12b83          	lw	s7,12(sp)
    cd3c:	000a0513          	mv	a0,s4
    cd40:	01812a03          	lw	s4,24(sp)
    cd44:	03010113          	addi	sp,sp,48
    cd48:	00008067          	ret

0000cd4c <__smakebuf_r>:
    cd4c:	00c5d783          	lhu	a5,12(a1)
    cd50:	f8010113          	addi	sp,sp,-128
    cd54:	06812c23          	sw	s0,120(sp)
    cd58:	06112e23          	sw	ra,124(sp)
    cd5c:	06912a23          	sw	s1,116(sp)
    cd60:	07212823          	sw	s2,112(sp)
    cd64:	07312623          	sw	s3,108(sp)
    cd68:	07412423          	sw	s4,104(sp)
    cd6c:	0027f713          	andi	a4,a5,2
    cd70:	00058413          	mv	s0,a1
    cd74:	02070c63          	beqz	a4,cdac <__smakebuf_r+0x60>
    cd78:	04358793          	addi	a5,a1,67
    cd7c:	00f5a023          	sw	a5,0(a1)
    cd80:	00f5a823          	sw	a5,16(a1)
    cd84:	00100793          	li	a5,1
    cd88:	00f5aa23          	sw	a5,20(a1)
    cd8c:	07c12083          	lw	ra,124(sp)
    cd90:	07812403          	lw	s0,120(sp)
    cd94:	07412483          	lw	s1,116(sp)
    cd98:	07012903          	lw	s2,112(sp)
    cd9c:	06c12983          	lw	s3,108(sp)
    cda0:	06812a03          	lw	s4,104(sp)
    cda4:	08010113          	addi	sp,sp,128
    cda8:	00008067          	ret
    cdac:	00e59583          	lh	a1,14(a1)
    cdb0:	00050493          	mv	s1,a0
    cdb4:	0805cc63          	bltz	a1,ce4c <__smakebuf_r+0x100>
    cdb8:	00810613          	addi	a2,sp,8
    cdbc:	639000ef          	jal	ra,dbf4 <_fstat_r>
    cdc0:	08054463          	bltz	a0,ce48 <__smakebuf_r+0xfc>
    cdc4:	00c12783          	lw	a5,12(sp)
    cdc8:	0000f937          	lui	s2,0xf
    cdcc:	40000a13          	li	s4,1024
    cdd0:	00f97933          	and	s2,s2,a5
    cdd4:	ffffe7b7          	lui	a5,0xffffe
    cdd8:	00f90933          	add	s2,s2,a5
    cddc:	000017b7          	lui	a5,0x1
    cde0:	00193913          	seqz	s2,s2
    cde4:	80078993          	addi	s3,a5,-2048 # 800 <__neorv32_rte_core+0xc0>
    cde8:	000a0593          	mv	a1,s4
    cdec:	00048513          	mv	a0,s1
    cdf0:	c85f90ef          	jal	ra,6a74 <_malloc_r>
    cdf4:	00c41783          	lh	a5,12(s0)
    cdf8:	06050e63          	beqz	a0,ce74 <__smakebuf_r+0x128>
    cdfc:	0000c737          	lui	a4,0xc
    ce00:	1e870713          	addi	a4,a4,488 # c1e8 <_cleanup_r>
    ce04:	02e4ae23          	sw	a4,60(s1)
    ce08:	0807e793          	ori	a5,a5,128
    ce0c:	00f41623          	sh	a5,12(s0)
    ce10:	00a42023          	sw	a0,0(s0)
    ce14:	00a42823          	sw	a0,16(s0)
    ce18:	01442a23          	sw	s4,20(s0)
    ce1c:	08091863          	bnez	s2,ceac <__smakebuf_r+0x160>
    ce20:	0137e7b3          	or	a5,a5,s3
    ce24:	07c12083          	lw	ra,124(sp)
    ce28:	00f41623          	sh	a5,12(s0)
    ce2c:	07812403          	lw	s0,120(sp)
    ce30:	07412483          	lw	s1,116(sp)
    ce34:	07012903          	lw	s2,112(sp)
    ce38:	06c12983          	lw	s3,108(sp)
    ce3c:	06812a03          	lw	s4,104(sp)
    ce40:	08010113          	addi	sp,sp,128
    ce44:	00008067          	ret
    ce48:	00c45783          	lhu	a5,12(s0)
    ce4c:	0807f793          	andi	a5,a5,128
    ce50:	00000913          	li	s2,0
    ce54:	04078663          	beqz	a5,cea0 <__smakebuf_r+0x154>
    ce58:	04000a13          	li	s4,64
    ce5c:	000a0593          	mv	a1,s4
    ce60:	00048513          	mv	a0,s1
    ce64:	c11f90ef          	jal	ra,6a74 <_malloc_r>
    ce68:	00c41783          	lh	a5,12(s0)
    ce6c:	00000993          	li	s3,0
    ce70:	f80516e3          	bnez	a0,cdfc <__smakebuf_r+0xb0>
    ce74:	2007f713          	andi	a4,a5,512
    ce78:	f0071ae3          	bnez	a4,cd8c <__smakebuf_r+0x40>
    ce7c:	ffc7f793          	andi	a5,a5,-4
    ce80:	0027e793          	ori	a5,a5,2
    ce84:	04340713          	addi	a4,s0,67
    ce88:	00f41623          	sh	a5,12(s0)
    ce8c:	00100793          	li	a5,1
    ce90:	00e42023          	sw	a4,0(s0)
    ce94:	00e42823          	sw	a4,16(s0)
    ce98:	00f42a23          	sw	a5,20(s0)
    ce9c:	ef1ff06f          	j	cd8c <__smakebuf_r+0x40>
    cea0:	40000a13          	li	s4,1024
    cea4:	00000993          	li	s3,0
    cea8:	f41ff06f          	j	cde8 <__smakebuf_r+0x9c>
    ceac:	00e41583          	lh	a1,14(s0)
    ceb0:	00048513          	mv	a0,s1
    ceb4:	5a5000ef          	jal	ra,dc58 <_isatty_r>
    ceb8:	00051663          	bnez	a0,cec4 <__smakebuf_r+0x178>
    cebc:	00c41783          	lh	a5,12(s0)
    cec0:	f61ff06f          	j	ce20 <__smakebuf_r+0xd4>
    cec4:	00c45783          	lhu	a5,12(s0)
    cec8:	ffc7f793          	andi	a5,a5,-4
    cecc:	0017e793          	ori	a5,a5,1
    ced0:	01079793          	slli	a5,a5,0x10
    ced4:	4107d793          	srai	a5,a5,0x10
    ced8:	f49ff06f          	j	ce20 <__smakebuf_r+0xd4>

0000cedc <__swhatbuf_r>:
    cedc:	f9010113          	addi	sp,sp,-112
    cee0:	06812423          	sw	s0,104(sp)
    cee4:	00058413          	mv	s0,a1
    cee8:	00e59583          	lh	a1,14(a1)
    ceec:	06912223          	sw	s1,100(sp)
    cef0:	07212023          	sw	s2,96(sp)
    cef4:	06112623          	sw	ra,108(sp)
    cef8:	00060493          	mv	s1,a2
    cefc:	00068913          	mv	s2,a3
    cf00:	0405ca63          	bltz	a1,cf54 <__swhatbuf_r+0x78>
    cf04:	00810613          	addi	a2,sp,8
    cf08:	4ed000ef          	jal	ra,dbf4 <_fstat_r>
    cf0c:	04054463          	bltz	a0,cf54 <__swhatbuf_r+0x78>
    cf10:	00c12703          	lw	a4,12(sp)
    cf14:	0000f7b7          	lui	a5,0xf
    cf18:	06c12083          	lw	ra,108(sp)
    cf1c:	00e7f7b3          	and	a5,a5,a4
    cf20:	ffffe737          	lui	a4,0xffffe
    cf24:	00e787b3          	add	a5,a5,a4
    cf28:	06812403          	lw	s0,104(sp)
    cf2c:	0017b793          	seqz	a5,a5
    cf30:	00f92023          	sw	a5,0(s2) # f000 <__divdf3+0x48c>
    cf34:	40000793          	li	a5,1024
    cf38:	00f4a023          	sw	a5,0(s1)
    cf3c:	00001537          	lui	a0,0x1
    cf40:	06412483          	lw	s1,100(sp)
    cf44:	06012903          	lw	s2,96(sp)
    cf48:	80050513          	addi	a0,a0,-2048 # 800 <__neorv32_rte_core+0xc0>
    cf4c:	07010113          	addi	sp,sp,112
    cf50:	00008067          	ret
    cf54:	00c41783          	lh	a5,12(s0)
    cf58:	00092023          	sw	zero,0(s2)
    cf5c:	0807f793          	andi	a5,a5,128
    cf60:	02078463          	beqz	a5,cf88 <__swhatbuf_r+0xac>
    cf64:	06c12083          	lw	ra,108(sp)
    cf68:	06812403          	lw	s0,104(sp)
    cf6c:	04000793          	li	a5,64
    cf70:	00f4a023          	sw	a5,0(s1)
    cf74:	06012903          	lw	s2,96(sp)
    cf78:	06412483          	lw	s1,100(sp)
    cf7c:	00000513          	li	a0,0
    cf80:	07010113          	addi	sp,sp,112
    cf84:	00008067          	ret
    cf88:	06c12083          	lw	ra,108(sp)
    cf8c:	06812403          	lw	s0,104(sp)
    cf90:	40000793          	li	a5,1024
    cf94:	00f4a023          	sw	a5,0(s1)
    cf98:	06012903          	lw	s2,96(sp)
    cf9c:	06412483          	lw	s1,100(sp)
    cfa0:	00000513          	li	a0,0
    cfa4:	07010113          	addi	sp,sp,112
    cfa8:	00008067          	ret

0000cfac <_init_signal_r>:
    cfac:	2dc52783          	lw	a5,732(a0)
    cfb0:	00078663          	beqz	a5,cfbc <_init_signal_r+0x10>
    cfb4:	00000513          	li	a0,0
    cfb8:	00008067          	ret
    cfbc:	ff010113          	addi	sp,sp,-16
    cfc0:	08000593          	li	a1,128
    cfc4:	00812423          	sw	s0,8(sp)
    cfc8:	00112623          	sw	ra,12(sp)
    cfcc:	00050413          	mv	s0,a0
    cfd0:	aa5f90ef          	jal	ra,6a74 <_malloc_r>
    cfd4:	2ca42e23          	sw	a0,732(s0)
    cfd8:	02050463          	beqz	a0,d000 <_init_signal_r+0x54>
    cfdc:	08050793          	addi	a5,a0,128
    cfe0:	00052023          	sw	zero,0(a0)
    cfe4:	00450513          	addi	a0,a0,4
    cfe8:	fef51ce3          	bne	a0,a5,cfe0 <_init_signal_r+0x34>
    cfec:	00000513          	li	a0,0
    cff0:	00c12083          	lw	ra,12(sp)
    cff4:	00812403          	lw	s0,8(sp)
    cff8:	01010113          	addi	sp,sp,16
    cffc:	00008067          	ret
    d000:	fff00513          	li	a0,-1
    d004:	fedff06f          	j	cff0 <_init_signal_r+0x44>

0000d008 <_signal_r>:
    d008:	fe010113          	addi	sp,sp,-32
    d00c:	00912a23          	sw	s1,20(sp)
    d010:	00112e23          	sw	ra,28(sp)
    d014:	00812c23          	sw	s0,24(sp)
    d018:	01f00793          	li	a5,31
    d01c:	00050493          	mv	s1,a0
    d020:	02b7ea63          	bltu	a5,a1,d054 <_signal_r+0x4c>
    d024:	2dc52703          	lw	a4,732(a0)
    d028:	00058413          	mv	s0,a1
    d02c:	04070463          	beqz	a4,d074 <_signal_r+0x6c>
    d030:	00241413          	slli	s0,s0,0x2
    d034:	00870433          	add	s0,a4,s0
    d038:	00042503          	lw	a0,0(s0)
    d03c:	00c42023          	sw	a2,0(s0)
    d040:	01c12083          	lw	ra,28(sp)
    d044:	01812403          	lw	s0,24(sp)
    d048:	01412483          	lw	s1,20(sp)
    d04c:	02010113          	addi	sp,sp,32
    d050:	00008067          	ret
    d054:	01c12083          	lw	ra,28(sp)
    d058:	01812403          	lw	s0,24(sp)
    d05c:	01600793          	li	a5,22
    d060:	00f52023          	sw	a5,0(a0)
    d064:	01412483          	lw	s1,20(sp)
    d068:	fff00513          	li	a0,-1
    d06c:	02010113          	addi	sp,sp,32
    d070:	00008067          	ret
    d074:	08000593          	li	a1,128
    d078:	00c12623          	sw	a2,12(sp)
    d07c:	9f9f90ef          	jal	ra,6a74 <_malloc_r>
    d080:	2ca4ae23          	sw	a0,732(s1)
    d084:	00050713          	mv	a4,a0
    d088:	02050063          	beqz	a0,d0a8 <_signal_r+0xa0>
    d08c:	00c12603          	lw	a2,12(sp)
    d090:	00050793          	mv	a5,a0
    d094:	08050693          	addi	a3,a0,128
    d098:	0007a023          	sw	zero,0(a5) # f000 <__divdf3+0x48c>
    d09c:	00478793          	addi	a5,a5,4
    d0a0:	fed79ce3          	bne	a5,a3,d098 <_signal_r+0x90>
    d0a4:	f8dff06f          	j	d030 <_signal_r+0x28>
    d0a8:	fff00513          	li	a0,-1
    d0ac:	f95ff06f          	j	d040 <_signal_r+0x38>

0000d0b0 <_raise_r>:
    d0b0:	ff010113          	addi	sp,sp,-16
    d0b4:	00912223          	sw	s1,4(sp)
    d0b8:	00112623          	sw	ra,12(sp)
    d0bc:	00812423          	sw	s0,8(sp)
    d0c0:	01f00793          	li	a5,31
    d0c4:	00050493          	mv	s1,a0
    d0c8:	0ab7ea63          	bltu	a5,a1,d17c <_raise_r+0xcc>
    d0cc:	2dc52783          	lw	a5,732(a0)
    d0d0:	00058413          	mv	s0,a1
    d0d4:	04078463          	beqz	a5,d11c <_raise_r+0x6c>
    d0d8:	00259713          	slli	a4,a1,0x2
    d0dc:	00e787b3          	add	a5,a5,a4
    d0e0:	0007a703          	lw	a4,0(a5)
    d0e4:	02070c63          	beqz	a4,d11c <_raise_r+0x6c>
    d0e8:	00100693          	li	a3,1
    d0ec:	06d70c63          	beq	a4,a3,d164 <_raise_r+0xb4>
    d0f0:	fff00693          	li	a3,-1
    d0f4:	04d70863          	beq	a4,a3,d144 <_raise_r+0x94>
    d0f8:	00058513          	mv	a0,a1
    d0fc:	0007a023          	sw	zero,0(a5)
    d100:	000700e7          	jalr	a4 # ffffe000 <__ctr0_io_space_begin+0xffffe200>
    d104:	00000513          	li	a0,0
    d108:	00c12083          	lw	ra,12(sp)
    d10c:	00812403          	lw	s0,8(sp)
    d110:	00412483          	lw	s1,4(sp)
    d114:	01010113          	addi	sp,sp,16
    d118:	00008067          	ret
    d11c:	00048513          	mv	a0,s1
    d120:	470000ef          	jal	ra,d590 <_getpid_r>
    d124:	00040613          	mv	a2,s0
    d128:	00812403          	lw	s0,8(sp)
    d12c:	00c12083          	lw	ra,12(sp)
    d130:	00050593          	mv	a1,a0
    d134:	00048513          	mv	a0,s1
    d138:	00412483          	lw	s1,4(sp)
    d13c:	01010113          	addi	sp,sp,16
    d140:	3ec0006f          	j	d52c <_kill_r>
    d144:	00c12083          	lw	ra,12(sp)
    d148:	00812403          	lw	s0,8(sp)
    d14c:	01600793          	li	a5,22
    d150:	00f52023          	sw	a5,0(a0)
    d154:	00412483          	lw	s1,4(sp)
    d158:	00100513          	li	a0,1
    d15c:	01010113          	addi	sp,sp,16
    d160:	00008067          	ret
    d164:	00c12083          	lw	ra,12(sp)
    d168:	00812403          	lw	s0,8(sp)
    d16c:	00412483          	lw	s1,4(sp)
    d170:	00000513          	li	a0,0
    d174:	01010113          	addi	sp,sp,16
    d178:	00008067          	ret
    d17c:	01600793          	li	a5,22
    d180:	00f52023          	sw	a5,0(a0)
    d184:	fff00513          	li	a0,-1
    d188:	f81ff06f          	j	d108 <_raise_r+0x58>

0000d18c <__sigtramp_r>:
    d18c:	01f00793          	li	a5,31
    d190:	0cb7ea63          	bltu	a5,a1,d264 <__sigtramp_r+0xd8>
    d194:	2dc52703          	lw	a4,732(a0)
    d198:	ff010113          	addi	sp,sp,-16
    d19c:	00812423          	sw	s0,8(sp)
    d1a0:	00912223          	sw	s1,4(sp)
    d1a4:	00112623          	sw	ra,12(sp)
    d1a8:	00058413          	mv	s0,a1
    d1ac:	00050493          	mv	s1,a0
    d1b0:	06070063          	beqz	a4,d210 <__sigtramp_r+0x84>
    d1b4:	00241513          	slli	a0,s0,0x2
    d1b8:	00a70733          	add	a4,a4,a0
    d1bc:	00072783          	lw	a5,0(a4)
    d1c0:	02078c63          	beqz	a5,d1f8 <__sigtramp_r+0x6c>
    d1c4:	fff00693          	li	a3,-1
    d1c8:	08d78663          	beq	a5,a3,d254 <__sigtramp_r+0xc8>
    d1cc:	00100693          	li	a3,1
    d1d0:	06d78663          	beq	a5,a3,d23c <__sigtramp_r+0xb0>
    d1d4:	00040513          	mv	a0,s0
    d1d8:	00072023          	sw	zero,0(a4)
    d1dc:	000780e7          	jalr	a5
    d1e0:	00000513          	li	a0,0
    d1e4:	00c12083          	lw	ra,12(sp)
    d1e8:	00812403          	lw	s0,8(sp)
    d1ec:	00412483          	lw	s1,4(sp)
    d1f0:	01010113          	addi	sp,sp,16
    d1f4:	00008067          	ret
    d1f8:	00c12083          	lw	ra,12(sp)
    d1fc:	00812403          	lw	s0,8(sp)
    d200:	00412483          	lw	s1,4(sp)
    d204:	00100513          	li	a0,1
    d208:	01010113          	addi	sp,sp,16
    d20c:	00008067          	ret
    d210:	08000593          	li	a1,128
    d214:	861f90ef          	jal	ra,6a74 <_malloc_r>
    d218:	2ca4ae23          	sw	a0,732(s1)
    d21c:	00050713          	mv	a4,a0
    d220:	02050e63          	beqz	a0,d25c <__sigtramp_r+0xd0>
    d224:	00050793          	mv	a5,a0
    d228:	08050693          	addi	a3,a0,128
    d22c:	0007a023          	sw	zero,0(a5)
    d230:	00478793          	addi	a5,a5,4
    d234:	fed79ce3          	bne	a5,a3,d22c <__sigtramp_r+0xa0>
    d238:	f7dff06f          	j	d1b4 <__sigtramp_r+0x28>
    d23c:	00c12083          	lw	ra,12(sp)
    d240:	00812403          	lw	s0,8(sp)
    d244:	00412483          	lw	s1,4(sp)
    d248:	00300513          	li	a0,3
    d24c:	01010113          	addi	sp,sp,16
    d250:	00008067          	ret
    d254:	00200513          	li	a0,2
    d258:	f8dff06f          	j	d1e4 <__sigtramp_r+0x58>
    d25c:	fff00513          	li	a0,-1
    d260:	f85ff06f          	j	d1e4 <__sigtramp_r+0x58>
    d264:	fff00513          	li	a0,-1
    d268:	00008067          	ret

0000d26c <raise>:
    d26c:	ff010113          	addi	sp,sp,-16
    d270:	00912223          	sw	s1,4(sp)
    d274:	00112623          	sw	ra,12(sp)
    d278:	00812423          	sw	s0,8(sp)
    d27c:	01f00793          	li	a5,31
    d280:	1bc1a483          	lw	s1,444(gp) # 800009bc <_impure_ptr>
    d284:	0aa7e863          	bltu	a5,a0,d334 <raise+0xc8>
    d288:	2dc4a783          	lw	a5,732(s1)
    d28c:	00050413          	mv	s0,a0
    d290:	04078263          	beqz	a5,d2d4 <raise+0x68>
    d294:	00251713          	slli	a4,a0,0x2
    d298:	00e787b3          	add	a5,a5,a4
    d29c:	0007a703          	lw	a4,0(a5)
    d2a0:	02070a63          	beqz	a4,d2d4 <raise+0x68>
    d2a4:	00100693          	li	a3,1
    d2a8:	06d70a63          	beq	a4,a3,d31c <raise+0xb0>
    d2ac:	fff00693          	li	a3,-1
    d2b0:	04d70663          	beq	a4,a3,d2fc <raise+0x90>
    d2b4:	0007a023          	sw	zero,0(a5)
    d2b8:	000700e7          	jalr	a4
    d2bc:	00000513          	li	a0,0
    d2c0:	00c12083          	lw	ra,12(sp)
    d2c4:	00812403          	lw	s0,8(sp)
    d2c8:	00412483          	lw	s1,4(sp)
    d2cc:	01010113          	addi	sp,sp,16
    d2d0:	00008067          	ret
    d2d4:	00048513          	mv	a0,s1
    d2d8:	2b8000ef          	jal	ra,d590 <_getpid_r>
    d2dc:	00040613          	mv	a2,s0
    d2e0:	00812403          	lw	s0,8(sp)
    d2e4:	00c12083          	lw	ra,12(sp)
    d2e8:	00050593          	mv	a1,a0
    d2ec:	00048513          	mv	a0,s1
    d2f0:	00412483          	lw	s1,4(sp)
    d2f4:	01010113          	addi	sp,sp,16
    d2f8:	2340006f          	j	d52c <_kill_r>
    d2fc:	00c12083          	lw	ra,12(sp)
    d300:	00812403          	lw	s0,8(sp)
    d304:	01600793          	li	a5,22
    d308:	00f4a023          	sw	a5,0(s1)
    d30c:	00100513          	li	a0,1
    d310:	00412483          	lw	s1,4(sp)
    d314:	01010113          	addi	sp,sp,16
    d318:	00008067          	ret
    d31c:	00c12083          	lw	ra,12(sp)
    d320:	00812403          	lw	s0,8(sp)
    d324:	00412483          	lw	s1,4(sp)
    d328:	00000513          	li	a0,0
    d32c:	01010113          	addi	sp,sp,16
    d330:	00008067          	ret
    d334:	01600793          	li	a5,22
    d338:	00f4a023          	sw	a5,0(s1)
    d33c:	fff00513          	li	a0,-1
    d340:	f81ff06f          	j	d2c0 <raise+0x54>

0000d344 <signal>:
    d344:	ff010113          	addi	sp,sp,-16
    d348:	01212023          	sw	s2,0(sp)
    d34c:	00112623          	sw	ra,12(sp)
    d350:	00812423          	sw	s0,8(sp)
    d354:	00912223          	sw	s1,4(sp)
    d358:	01f00793          	li	a5,31
    d35c:	1bc1a903          	lw	s2,444(gp) # 800009bc <_impure_ptr>
    d360:	02a7ee63          	bltu	a5,a0,d39c <signal+0x58>
    d364:	00050413          	mv	s0,a0
    d368:	2dc92503          	lw	a0,732(s2)
    d36c:	00058493          	mv	s1,a1
    d370:	04050863          	beqz	a0,d3c0 <signal+0x7c>
    d374:	00241413          	slli	s0,s0,0x2
    d378:	00850433          	add	s0,a0,s0
    d37c:	00042503          	lw	a0,0(s0)
    d380:	00942023          	sw	s1,0(s0)
    d384:	00c12083          	lw	ra,12(sp)
    d388:	00812403          	lw	s0,8(sp)
    d38c:	00412483          	lw	s1,4(sp)
    d390:	00012903          	lw	s2,0(sp)
    d394:	01010113          	addi	sp,sp,16
    d398:	00008067          	ret
    d39c:	00c12083          	lw	ra,12(sp)
    d3a0:	00812403          	lw	s0,8(sp)
    d3a4:	01600793          	li	a5,22
    d3a8:	00f92023          	sw	a5,0(s2)
    d3ac:	00412483          	lw	s1,4(sp)
    d3b0:	00012903          	lw	s2,0(sp)
    d3b4:	fff00513          	li	a0,-1
    d3b8:	01010113          	addi	sp,sp,16
    d3bc:	00008067          	ret
    d3c0:	08000593          	li	a1,128
    d3c4:	00090513          	mv	a0,s2
    d3c8:	eacf90ef          	jal	ra,6a74 <_malloc_r>
    d3cc:	2ca92e23          	sw	a0,732(s2)
    d3d0:	00050e63          	beqz	a0,d3ec <signal+0xa8>
    d3d4:	00050793          	mv	a5,a0
    d3d8:	08050713          	addi	a4,a0,128
    d3dc:	0007a023          	sw	zero,0(a5)
    d3e0:	00478793          	addi	a5,a5,4
    d3e4:	fef71ce3          	bne	a4,a5,d3dc <signal+0x98>
    d3e8:	f8dff06f          	j	d374 <signal+0x30>
    d3ec:	fff00513          	li	a0,-1
    d3f0:	f95ff06f          	j	d384 <signal+0x40>

0000d3f4 <_init_signal>:
    d3f4:	ff010113          	addi	sp,sp,-16
    d3f8:	00812423          	sw	s0,8(sp)
    d3fc:	1bc1a403          	lw	s0,444(gp) # 800009bc <_impure_ptr>
    d400:	00112623          	sw	ra,12(sp)
    d404:	2dc42783          	lw	a5,732(s0)
    d408:	00078c63          	beqz	a5,d420 <_init_signal+0x2c>
    d40c:	00000513          	li	a0,0
    d410:	00c12083          	lw	ra,12(sp)
    d414:	00812403          	lw	s0,8(sp)
    d418:	01010113          	addi	sp,sp,16
    d41c:	00008067          	ret
    d420:	08000593          	li	a1,128
    d424:	00040513          	mv	a0,s0
    d428:	e4cf90ef          	jal	ra,6a74 <_malloc_r>
    d42c:	2ca42e23          	sw	a0,732(s0)
    d430:	00050c63          	beqz	a0,d448 <_init_signal+0x54>
    d434:	08050793          	addi	a5,a0,128
    d438:	00052023          	sw	zero,0(a0)
    d43c:	00450513          	addi	a0,a0,4
    d440:	fef51ce3          	bne	a0,a5,d438 <_init_signal+0x44>
    d444:	fc9ff06f          	j	d40c <_init_signal+0x18>
    d448:	fff00513          	li	a0,-1
    d44c:	fc5ff06f          	j	d410 <_init_signal+0x1c>

0000d450 <__sigtramp>:
    d450:	ff010113          	addi	sp,sp,-16
    d454:	00912223          	sw	s1,4(sp)
    d458:	00112623          	sw	ra,12(sp)
    d45c:	00812423          	sw	s0,8(sp)
    d460:	01f00793          	li	a5,31
    d464:	1bc1a483          	lw	s1,444(gp) # 800009bc <_impure_ptr>
    d468:	0aa7ee63          	bltu	a5,a0,d524 <__sigtramp+0xd4>
    d46c:	2dc4a703          	lw	a4,732(s1)
    d470:	00050413          	mv	s0,a0
    d474:	06070063          	beqz	a4,d4d4 <__sigtramp+0x84>
    d478:	00241513          	slli	a0,s0,0x2
    d47c:	00a70733          	add	a4,a4,a0
    d480:	00072783          	lw	a5,0(a4)
    d484:	02078c63          	beqz	a5,d4bc <__sigtramp+0x6c>
    d488:	fff00693          	li	a3,-1
    d48c:	08d78863          	beq	a5,a3,d51c <__sigtramp+0xcc>
    d490:	00100693          	li	a3,1
    d494:	06d78863          	beq	a5,a3,d504 <__sigtramp+0xb4>
    d498:	00040513          	mv	a0,s0
    d49c:	00072023          	sw	zero,0(a4)
    d4a0:	000780e7          	jalr	a5
    d4a4:	00000513          	li	a0,0
    d4a8:	00c12083          	lw	ra,12(sp)
    d4ac:	00812403          	lw	s0,8(sp)
    d4b0:	00412483          	lw	s1,4(sp)
    d4b4:	01010113          	addi	sp,sp,16
    d4b8:	00008067          	ret
    d4bc:	00c12083          	lw	ra,12(sp)
    d4c0:	00812403          	lw	s0,8(sp)
    d4c4:	00412483          	lw	s1,4(sp)
    d4c8:	00100513          	li	a0,1
    d4cc:	01010113          	addi	sp,sp,16
    d4d0:	00008067          	ret
    d4d4:	08000593          	li	a1,128
    d4d8:	00048513          	mv	a0,s1
    d4dc:	d98f90ef          	jal	ra,6a74 <_malloc_r>
    d4e0:	2ca4ae23          	sw	a0,732(s1)
    d4e4:	00050713          	mv	a4,a0
    d4e8:	02050e63          	beqz	a0,d524 <__sigtramp+0xd4>
    d4ec:	00050793          	mv	a5,a0
    d4f0:	08050693          	addi	a3,a0,128
    d4f4:	0007a023          	sw	zero,0(a5)
    d4f8:	00478793          	addi	a5,a5,4
    d4fc:	fed79ce3          	bne	a5,a3,d4f4 <__sigtramp+0xa4>
    d500:	f79ff06f          	j	d478 <__sigtramp+0x28>
    d504:	00c12083          	lw	ra,12(sp)
    d508:	00812403          	lw	s0,8(sp)
    d50c:	00412483          	lw	s1,4(sp)
    d510:	00300513          	li	a0,3
    d514:	01010113          	addi	sp,sp,16
    d518:	00008067          	ret
    d51c:	00200513          	li	a0,2
    d520:	f89ff06f          	j	d4a8 <__sigtramp+0x58>
    d524:	fff00513          	li	a0,-1
    d528:	f81ff06f          	j	d4a8 <__sigtramp+0x58>

0000d52c <_kill_r>:
    d52c:	ff010113          	addi	sp,sp,-16
    d530:	00058713          	mv	a4,a1
    d534:	00812423          	sw	s0,8(sp)
    d538:	00912223          	sw	s1,4(sp)
    d53c:	00050413          	mv	s0,a0
    d540:	00060593          	mv	a1,a2
    d544:	00070513          	mv	a0,a4
    d548:	00112623          	sw	ra,12(sp)
    d54c:	1c01aa23          	sw	zero,468(gp) # 800009d4 <errno>
    d550:	151000ef          	jal	ra,dea0 <_kill>
    d554:	fff00793          	li	a5,-1
    d558:	00f50c63          	beq	a0,a5,d570 <_kill_r+0x44>
    d55c:	00c12083          	lw	ra,12(sp)
    d560:	00812403          	lw	s0,8(sp)
    d564:	00412483          	lw	s1,4(sp)
    d568:	01010113          	addi	sp,sp,16
    d56c:	00008067          	ret
    d570:	1d41a783          	lw	a5,468(gp) # 800009d4 <errno>
    d574:	fe0784e3          	beqz	a5,d55c <_kill_r+0x30>
    d578:	00c12083          	lw	ra,12(sp)
    d57c:	00f42023          	sw	a5,0(s0)
    d580:	00812403          	lw	s0,8(sp)
    d584:	00412483          	lw	s1,4(sp)
    d588:	01010113          	addi	sp,sp,16
    d58c:	00008067          	ret

0000d590 <_getpid_r>:
    d590:	0c90006f          	j	de58 <_getpid>

0000d594 <__sread>:
    d594:	ff010113          	addi	sp,sp,-16
    d598:	00812423          	sw	s0,8(sp)
    d59c:	00058413          	mv	s0,a1
    d5a0:	00e59583          	lh	a1,14(a1)
    d5a4:	00112623          	sw	ra,12(sp)
    d5a8:	774000ef          	jal	ra,dd1c <_read_r>
    d5ac:	02054063          	bltz	a0,d5cc <__sread+0x38>
    d5b0:	05042783          	lw	a5,80(s0)
    d5b4:	00c12083          	lw	ra,12(sp)
    d5b8:	00a787b3          	add	a5,a5,a0
    d5bc:	04f42823          	sw	a5,80(s0)
    d5c0:	00812403          	lw	s0,8(sp)
    d5c4:	01010113          	addi	sp,sp,16
    d5c8:	00008067          	ret
    d5cc:	00c45783          	lhu	a5,12(s0)
    d5d0:	fffff737          	lui	a4,0xfffff
    d5d4:	fff70713          	addi	a4,a4,-1 # ffffefff <__ctr0_io_space_begin+0xfffff1ff>
    d5d8:	00e7f7b3          	and	a5,a5,a4
    d5dc:	00c12083          	lw	ra,12(sp)
    d5e0:	00f41623          	sh	a5,12(s0)
    d5e4:	00812403          	lw	s0,8(sp)
    d5e8:	01010113          	addi	sp,sp,16
    d5ec:	00008067          	ret

0000d5f0 <__seofread>:
    d5f0:	00000513          	li	a0,0
    d5f4:	00008067          	ret

0000d5f8 <__swrite>:
    d5f8:	00c59783          	lh	a5,12(a1)
    d5fc:	fe010113          	addi	sp,sp,-32
    d600:	00812c23          	sw	s0,24(sp)
    d604:	00912a23          	sw	s1,20(sp)
    d608:	01212823          	sw	s2,16(sp)
    d60c:	01312623          	sw	s3,12(sp)
    d610:	00112e23          	sw	ra,28(sp)
    d614:	1007f713          	andi	a4,a5,256
    d618:	00058413          	mv	s0,a1
    d61c:	00050493          	mv	s1,a0
    d620:	00e59583          	lh	a1,14(a1)
    d624:	00060913          	mv	s2,a2
    d628:	00068993          	mv	s3,a3
    d62c:	02071e63          	bnez	a4,d668 <__swrite+0x70>
    d630:	fffff737          	lui	a4,0xfffff
    d634:	fff70713          	addi	a4,a4,-1 # ffffefff <__ctr0_io_space_begin+0xfffff1ff>
    d638:	00e7f7b3          	and	a5,a5,a4
    d63c:	00f41623          	sh	a5,12(s0)
    d640:	01812403          	lw	s0,24(sp)
    d644:	01c12083          	lw	ra,28(sp)
    d648:	00098693          	mv	a3,s3
    d64c:	00090613          	mv	a2,s2
    d650:	00c12983          	lw	s3,12(sp)
    d654:	01012903          	lw	s2,16(sp)
    d658:	00048513          	mv	a0,s1
    d65c:	01412483          	lw	s1,20(sp)
    d660:	02010113          	addi	sp,sp,32
    d664:	3280006f          	j	d98c <_write_r>
    d668:	00200693          	li	a3,2
    d66c:	00000613          	li	a2,0
    d670:	644000ef          	jal	ra,dcb4 <_lseek_r>
    d674:	00c41783          	lh	a5,12(s0)
    d678:	00e41583          	lh	a1,14(s0)
    d67c:	fb5ff06f          	j	d630 <__swrite+0x38>

0000d680 <__sseek>:
    d680:	ff010113          	addi	sp,sp,-16
    d684:	00812423          	sw	s0,8(sp)
    d688:	00058413          	mv	s0,a1
    d68c:	00e59583          	lh	a1,14(a1)
    d690:	00112623          	sw	ra,12(sp)
    d694:	620000ef          	jal	ra,dcb4 <_lseek_r>
    d698:	fff00793          	li	a5,-1
    d69c:	02f50463          	beq	a0,a5,d6c4 <__sseek+0x44>
    d6a0:	00c45783          	lhu	a5,12(s0)
    d6a4:	00001737          	lui	a4,0x1
    d6a8:	00c12083          	lw	ra,12(sp)
    d6ac:	00e7e7b3          	or	a5,a5,a4
    d6b0:	04a42823          	sw	a0,80(s0)
    d6b4:	00f41623          	sh	a5,12(s0)
    d6b8:	00812403          	lw	s0,8(sp)
    d6bc:	01010113          	addi	sp,sp,16
    d6c0:	00008067          	ret
    d6c4:	00c45783          	lhu	a5,12(s0)
    d6c8:	fffff737          	lui	a4,0xfffff
    d6cc:	fff70713          	addi	a4,a4,-1 # ffffefff <__ctr0_io_space_begin+0xfffff1ff>
    d6d0:	00e7f7b3          	and	a5,a5,a4
    d6d4:	00c12083          	lw	ra,12(sp)
    d6d8:	00f41623          	sh	a5,12(s0)
    d6dc:	00812403          	lw	s0,8(sp)
    d6e0:	01010113          	addi	sp,sp,16
    d6e4:	00008067          	ret

0000d6e8 <__sclose>:
    d6e8:	00e59583          	lh	a1,14(a1)
    d6ec:	3080006f          	j	d9f4 <_close_r>

0000d6f0 <__swbuf_r>:
    d6f0:	fe010113          	addi	sp,sp,-32
    d6f4:	00812c23          	sw	s0,24(sp)
    d6f8:	00912a23          	sw	s1,20(sp)
    d6fc:	01212823          	sw	s2,16(sp)
    d700:	00112e23          	sw	ra,28(sp)
    d704:	01312623          	sw	s3,12(sp)
    d708:	00050913          	mv	s2,a0
    d70c:	00058493          	mv	s1,a1
    d710:	00060413          	mv	s0,a2
    d714:	00050663          	beqz	a0,d720 <__swbuf_r+0x30>
    d718:	03852783          	lw	a5,56(a0)
    d71c:	14078a63          	beqz	a5,d870 <__swbuf_r+0x180>
    d720:	00c41703          	lh	a4,12(s0)
    d724:	01842683          	lw	a3,24(s0)
    d728:	00877793          	andi	a5,a4,8
    d72c:	00d42423          	sw	a3,8(s0)
    d730:	01071693          	slli	a3,a4,0x10
    d734:	0106d693          	srli	a3,a3,0x10
    d738:	08078463          	beqz	a5,d7c0 <__swbuf_r+0xd0>
    d73c:	01042783          	lw	a5,16(s0)
    d740:	08078063          	beqz	a5,d7c0 <__swbuf_r+0xd0>
    d744:	00002637          	lui	a2,0x2
    d748:	00c6f6b3          	and	a3,a3,a2
    d74c:	0ff4f993          	andi	s3,s1,255
    d750:	0ff4f493          	andi	s1,s1,255
    d754:	0a068063          	beqz	a3,d7f4 <__swbuf_r+0x104>
    d758:	00042703          	lw	a4,0(s0)
    d75c:	01442683          	lw	a3,20(s0)
    d760:	40f707b3          	sub	a5,a4,a5
    d764:	0ad7de63          	bge	a5,a3,d820 <__swbuf_r+0x130>
    d768:	00842683          	lw	a3,8(s0)
    d76c:	00170613          	addi	a2,a4,1
    d770:	00c42023          	sw	a2,0(s0)
    d774:	fff68693          	addi	a3,a3,-1 # 1fff <_svfprintf_r+0xfab>
    d778:	00d42423          	sw	a3,8(s0)
    d77c:	01370023          	sb	s3,0(a4)
    d780:	01442703          	lw	a4,20(s0)
    d784:	00178793          	addi	a5,a5,1
    d788:	0cf70863          	beq	a4,a5,d858 <__swbuf_r+0x168>
    d78c:	00c45783          	lhu	a5,12(s0)
    d790:	0017f793          	andi	a5,a5,1
    d794:	00078663          	beqz	a5,d7a0 <__swbuf_r+0xb0>
    d798:	00a00793          	li	a5,10
    d79c:	0af48e63          	beq	s1,a5,d858 <__swbuf_r+0x168>
    d7a0:	01c12083          	lw	ra,28(sp)
    d7a4:	01812403          	lw	s0,24(sp)
    d7a8:	01012903          	lw	s2,16(sp)
    d7ac:	00c12983          	lw	s3,12(sp)
    d7b0:	00048513          	mv	a0,s1
    d7b4:	01412483          	lw	s1,20(sp)
    d7b8:	02010113          	addi	sp,sp,32
    d7bc:	00008067          	ret
    d7c0:	00040593          	mv	a1,s0
    d7c4:	00090513          	mv	a0,s2
    d7c8:	d58fe0ef          	jal	ra,bd20 <__swsetup_r>
    d7cc:	08051e63          	bnez	a0,d868 <__swbuf_r+0x178>
    d7d0:	00c41703          	lh	a4,12(s0)
    d7d4:	00002637          	lui	a2,0x2
    d7d8:	0ff4f993          	andi	s3,s1,255
    d7dc:	01071693          	slli	a3,a4,0x10
    d7e0:	0106d693          	srli	a3,a3,0x10
    d7e4:	00c6f6b3          	and	a3,a3,a2
    d7e8:	01042783          	lw	a5,16(s0)
    d7ec:	0ff4f493          	andi	s1,s1,255
    d7f0:	f60694e3          	bnez	a3,d758 <__swbuf_r+0x68>
    d7f4:	06442683          	lw	a3,100(s0)
    d7f8:	00c76733          	or	a4,a4,a2
    d7fc:	ffffe637          	lui	a2,0xffffe
    d800:	fff60613          	addi	a2,a2,-1 # ffffdfff <__ctr0_io_space_begin+0xffffe1ff>
    d804:	00c6f6b3          	and	a3,a3,a2
    d808:	00e41623          	sh	a4,12(s0)
    d80c:	00042703          	lw	a4,0(s0)
    d810:	06d42223          	sw	a3,100(s0)
    d814:	01442683          	lw	a3,20(s0)
    d818:	40f707b3          	sub	a5,a4,a5
    d81c:	f4d7c6e3          	blt	a5,a3,d768 <__swbuf_r+0x78>
    d820:	00040593          	mv	a1,s0
    d824:	00090513          	mv	a0,s2
    d828:	8ddfe0ef          	jal	ra,c104 <_fflush_r>
    d82c:	02051e63          	bnez	a0,d868 <__swbuf_r+0x178>
    d830:	00042703          	lw	a4,0(s0)
    d834:	00842683          	lw	a3,8(s0)
    d838:	00100793          	li	a5,1
    d83c:	00170613          	addi	a2,a4,1
    d840:	fff68693          	addi	a3,a3,-1
    d844:	00c42023          	sw	a2,0(s0)
    d848:	00d42423          	sw	a3,8(s0)
    d84c:	01370023          	sb	s3,0(a4)
    d850:	01442703          	lw	a4,20(s0)
    d854:	f2f71ce3          	bne	a4,a5,d78c <__swbuf_r+0x9c>
    d858:	00040593          	mv	a1,s0
    d85c:	00090513          	mv	a0,s2
    d860:	8a5fe0ef          	jal	ra,c104 <_fflush_r>
    d864:	f2050ee3          	beqz	a0,d7a0 <__swbuf_r+0xb0>
    d868:	fff00493          	li	s1,-1
    d86c:	f35ff06f          	j	d7a0 <__swbuf_r+0xb0>
    d870:	ccdfe0ef          	jal	ra,c53c <__sinit>
    d874:	eadff06f          	j	d720 <__swbuf_r+0x30>

0000d878 <__swbuf>:
    d878:	00050793          	mv	a5,a0
    d87c:	1bc1a503          	lw	a0,444(gp) # 800009bc <_impure_ptr>
    d880:	00058613          	mv	a2,a1
    d884:	00078593          	mv	a1,a5
    d888:	e69ff06f          	j	d6f0 <__swbuf_r>

0000d88c <_wcrtomb_r>:
    d88c:	fe010113          	addi	sp,sp,-32
    d890:	00812c23          	sw	s0,24(sp)
    d894:	00912a23          	sw	s1,20(sp)
    d898:	00112e23          	sw	ra,28(sp)
    d89c:	1101a783          	lw	a5,272(gp) # 80000910 <__global_locale+0xe0>
    d8a0:	00050413          	mv	s0,a0
    d8a4:	00068493          	mv	s1,a3
    d8a8:	02058263          	beqz	a1,d8cc <_wcrtomb_r+0x40>
    d8ac:	000780e7          	jalr	a5
    d8b0:	fff00793          	li	a5,-1
    d8b4:	02f50663          	beq	a0,a5,d8e0 <_wcrtomb_r+0x54>
    d8b8:	01c12083          	lw	ra,28(sp)
    d8bc:	01812403          	lw	s0,24(sp)
    d8c0:	01412483          	lw	s1,20(sp)
    d8c4:	02010113          	addi	sp,sp,32
    d8c8:	00008067          	ret
    d8cc:	00000613          	li	a2,0
    d8d0:	00410593          	addi	a1,sp,4
    d8d4:	000780e7          	jalr	a5
    d8d8:	fff00793          	li	a5,-1
    d8dc:	fcf51ee3          	bne	a0,a5,d8b8 <_wcrtomb_r+0x2c>
    d8e0:	0004a023          	sw	zero,0(s1)
    d8e4:	08a00793          	li	a5,138
    d8e8:	01c12083          	lw	ra,28(sp)
    d8ec:	00f42023          	sw	a5,0(s0)
    d8f0:	01812403          	lw	s0,24(sp)
    d8f4:	01412483          	lw	s1,20(sp)
    d8f8:	02010113          	addi	sp,sp,32
    d8fc:	00008067          	ret

0000d900 <wcrtomb>:
    d900:	fe010113          	addi	sp,sp,-32
    d904:	00812c23          	sw	s0,24(sp)
    d908:	00912a23          	sw	s1,20(sp)
    d90c:	00112e23          	sw	ra,28(sp)
    d910:	1bc1a483          	lw	s1,444(gp) # 800009bc <_impure_ptr>
    d914:	1101a783          	lw	a5,272(gp) # 80000910 <__global_locale+0xe0>
    d918:	00060413          	mv	s0,a2
    d91c:	02050a63          	beqz	a0,d950 <wcrtomb+0x50>
    d920:	00058613          	mv	a2,a1
    d924:	00040693          	mv	a3,s0
    d928:	00050593          	mv	a1,a0
    d92c:	00048513          	mv	a0,s1
    d930:	000780e7          	jalr	a5
    d934:	fff00793          	li	a5,-1
    d938:	02f50a63          	beq	a0,a5,d96c <wcrtomb+0x6c>
    d93c:	01c12083          	lw	ra,28(sp)
    d940:	01812403          	lw	s0,24(sp)
    d944:	01412483          	lw	s1,20(sp)
    d948:	02010113          	addi	sp,sp,32
    d94c:	00008067          	ret
    d950:	00060693          	mv	a3,a2
    d954:	00410593          	addi	a1,sp,4
    d958:	00000613          	li	a2,0
    d95c:	00048513          	mv	a0,s1
    d960:	000780e7          	jalr	a5
    d964:	fff00793          	li	a5,-1
    d968:	fcf51ae3          	bne	a0,a5,d93c <wcrtomb+0x3c>
    d96c:	00042023          	sw	zero,0(s0)
    d970:	01c12083          	lw	ra,28(sp)
    d974:	01812403          	lw	s0,24(sp)
    d978:	08a00793          	li	a5,138
    d97c:	00f4a023          	sw	a5,0(s1)
    d980:	01412483          	lw	s1,20(sp)
    d984:	02010113          	addi	sp,sp,32
    d988:	00008067          	ret

0000d98c <_write_r>:
    d98c:	ff010113          	addi	sp,sp,-16
    d990:	00058713          	mv	a4,a1
    d994:	00812423          	sw	s0,8(sp)
    d998:	00912223          	sw	s1,4(sp)
    d99c:	00060593          	mv	a1,a2
    d9a0:	00050413          	mv	s0,a0
    d9a4:	00068613          	mv	a2,a3
    d9a8:	00070513          	mv	a0,a4
    d9ac:	00112623          	sw	ra,12(sp)
    d9b0:	1c01aa23          	sw	zero,468(gp) # 800009d4 <errno>
    d9b4:	610000ef          	jal	ra,dfc4 <_write>
    d9b8:	fff00793          	li	a5,-1
    d9bc:	00f50c63          	beq	a0,a5,d9d4 <_write_r+0x48>
    d9c0:	00c12083          	lw	ra,12(sp)
    d9c4:	00812403          	lw	s0,8(sp)
    d9c8:	00412483          	lw	s1,4(sp)
    d9cc:	01010113          	addi	sp,sp,16
    d9d0:	00008067          	ret
    d9d4:	1d41a783          	lw	a5,468(gp) # 800009d4 <errno>
    d9d8:	fe0784e3          	beqz	a5,d9c0 <_write_r+0x34>
    d9dc:	00c12083          	lw	ra,12(sp)
    d9e0:	00f42023          	sw	a5,0(s0)
    d9e4:	00812403          	lw	s0,8(sp)
    d9e8:	00412483          	lw	s1,4(sp)
    d9ec:	01010113          	addi	sp,sp,16
    d9f0:	00008067          	ret

0000d9f4 <_close_r>:
    d9f4:	ff010113          	addi	sp,sp,-16
    d9f8:	00812423          	sw	s0,8(sp)
    d9fc:	00912223          	sw	s1,4(sp)
    da00:	00050413          	mv	s0,a0
    da04:	00058513          	mv	a0,a1
    da08:	00112623          	sw	ra,12(sp)
    da0c:	1c01aa23          	sw	zero,468(gp) # 800009d4 <errno>
    da10:	374000ef          	jal	ra,dd84 <_close>
    da14:	fff00793          	li	a5,-1
    da18:	00f50c63          	beq	a0,a5,da30 <_close_r+0x3c>
    da1c:	00c12083          	lw	ra,12(sp)
    da20:	00812403          	lw	s0,8(sp)
    da24:	00412483          	lw	s1,4(sp)
    da28:	01010113          	addi	sp,sp,16
    da2c:	00008067          	ret
    da30:	1d41a783          	lw	a5,468(gp) # 800009d4 <errno>
    da34:	fe0784e3          	beqz	a5,da1c <_close_r+0x28>
    da38:	00c12083          	lw	ra,12(sp)
    da3c:	00f42023          	sw	a5,0(s0)
    da40:	00812403          	lw	s0,8(sp)
    da44:	00412483          	lw	s1,4(sp)
    da48:	01010113          	addi	sp,sp,16
    da4c:	00008067          	ret

0000da50 <_fclose_r.part.0>:
    da50:	ff010113          	addi	sp,sp,-16
    da54:	00812423          	sw	s0,8(sp)
    da58:	00912223          	sw	s1,4(sp)
    da5c:	01212023          	sw	s2,0(sp)
    da60:	00058413          	mv	s0,a1
    da64:	00112623          	sw	ra,12(sp)
    da68:	00050493          	mv	s1,a0
    da6c:	c34fe0ef          	jal	ra,bea0 <__sflush_r>
    da70:	02c42783          	lw	a5,44(s0)
    da74:	00050913          	mv	s2,a0
    da78:	00078a63          	beqz	a5,da8c <_fclose_r.part.0+0x3c>
    da7c:	01c42583          	lw	a1,28(s0)
    da80:	00048513          	mv	a0,s1
    da84:	000780e7          	jalr	a5
    da88:	06054463          	bltz	a0,daf0 <_fclose_r.part.0+0xa0>
    da8c:	00c45783          	lhu	a5,12(s0)
    da90:	0807f793          	andi	a5,a5,128
    da94:	06079663          	bnez	a5,db00 <_fclose_r.part.0+0xb0>
    da98:	03042583          	lw	a1,48(s0)
    da9c:	00058c63          	beqz	a1,dab4 <_fclose_r.part.0+0x64>
    daa0:	04040793          	addi	a5,s0,64
    daa4:	00f58663          	beq	a1,a5,dab0 <_fclose_r.part.0+0x60>
    daa8:	00048513          	mv	a0,s1
    daac:	87cf60ef          	jal	ra,3b28 <_free_r>
    dab0:	02042823          	sw	zero,48(s0)
    dab4:	04442583          	lw	a1,68(s0)
    dab8:	00058863          	beqz	a1,dac8 <_fclose_r.part.0+0x78>
    dabc:	00048513          	mv	a0,s1
    dac0:	868f60ef          	jal	ra,3b28 <_free_r>
    dac4:	04042223          	sw	zero,68(s0)
    dac8:	a85fe0ef          	jal	ra,c54c <__sfp_lock_acquire>
    dacc:	00041623          	sh	zero,12(s0)
    dad0:	a81fe0ef          	jal	ra,c550 <__sfp_lock_release>
    dad4:	00c12083          	lw	ra,12(sp)
    dad8:	00812403          	lw	s0,8(sp)
    dadc:	00412483          	lw	s1,4(sp)
    dae0:	00090513          	mv	a0,s2
    dae4:	00012903          	lw	s2,0(sp)
    dae8:	01010113          	addi	sp,sp,16
    daec:	00008067          	ret
    daf0:	00c45783          	lhu	a5,12(s0)
    daf4:	fff00913          	li	s2,-1
    daf8:	0807f793          	andi	a5,a5,128
    dafc:	f8078ee3          	beqz	a5,da98 <_fclose_r.part.0+0x48>
    db00:	01042583          	lw	a1,16(s0)
    db04:	00048513          	mv	a0,s1
    db08:	820f60ef          	jal	ra,3b28 <_free_r>
    db0c:	f8dff06f          	j	da98 <_fclose_r.part.0+0x48>

0000db10 <_fclose_r>:
    db10:	06058463          	beqz	a1,db78 <_fclose_r+0x68>
    db14:	fe010113          	addi	sp,sp,-32
    db18:	00812c23          	sw	s0,24(sp)
    db1c:	00112e23          	sw	ra,28(sp)
    db20:	00050413          	mv	s0,a0
    db24:	00050663          	beqz	a0,db30 <_fclose_r+0x20>
    db28:	03852783          	lw	a5,56(a0)
    db2c:	02078a63          	beqz	a5,db60 <_fclose_r+0x50>
    db30:	00c59783          	lh	a5,12(a1)
    db34:	00079c63          	bnez	a5,db4c <_fclose_r+0x3c>
    db38:	01c12083          	lw	ra,28(sp)
    db3c:	01812403          	lw	s0,24(sp)
    db40:	00000513          	li	a0,0
    db44:	02010113          	addi	sp,sp,32
    db48:	00008067          	ret
    db4c:	00040513          	mv	a0,s0
    db50:	01812403          	lw	s0,24(sp)
    db54:	01c12083          	lw	ra,28(sp)
    db58:	02010113          	addi	sp,sp,32
    db5c:	ef5ff06f          	j	da50 <_fclose_r.part.0>
    db60:	00b12623          	sw	a1,12(sp)
    db64:	9d9fe0ef          	jal	ra,c53c <__sinit>
    db68:	00c12583          	lw	a1,12(sp)
    db6c:	00c59783          	lh	a5,12(a1)
    db70:	fc0784e3          	beqz	a5,db38 <_fclose_r+0x28>
    db74:	fd9ff06f          	j	db4c <_fclose_r+0x3c>
    db78:	00000513          	li	a0,0
    db7c:	00008067          	ret

0000db80 <fclose>:
    db80:	06050663          	beqz	a0,dbec <fclose+0x6c>
    db84:	fe010113          	addi	sp,sp,-32
    db88:	00812c23          	sw	s0,24(sp)
    db8c:	00050413          	mv	s0,a0
    db90:	1bc1a503          	lw	a0,444(gp) # 800009bc <_impure_ptr>
    db94:	00112e23          	sw	ra,28(sp)
    db98:	00050663          	beqz	a0,dba4 <fclose+0x24>
    db9c:	03852783          	lw	a5,56(a0)
    dba0:	02078a63          	beqz	a5,dbd4 <fclose+0x54>
    dba4:	00c41783          	lh	a5,12(s0)
    dba8:	00079c63          	bnez	a5,dbc0 <fclose+0x40>
    dbac:	01c12083          	lw	ra,28(sp)
    dbb0:	01812403          	lw	s0,24(sp)
    dbb4:	00000513          	li	a0,0
    dbb8:	02010113          	addi	sp,sp,32
    dbbc:	00008067          	ret
    dbc0:	00040593          	mv	a1,s0
    dbc4:	01812403          	lw	s0,24(sp)
    dbc8:	01c12083          	lw	ra,28(sp)
    dbcc:	02010113          	addi	sp,sp,32
    dbd0:	e81ff06f          	j	da50 <_fclose_r.part.0>
    dbd4:	00a12623          	sw	a0,12(sp)
    dbd8:	965fe0ef          	jal	ra,c53c <__sinit>
    dbdc:	00c41783          	lh	a5,12(s0)
    dbe0:	00c12503          	lw	a0,12(sp)
    dbe4:	fc0784e3          	beqz	a5,dbac <fclose+0x2c>
    dbe8:	fd9ff06f          	j	dbc0 <fclose+0x40>
    dbec:	00000513          	li	a0,0
    dbf0:	00008067          	ret

0000dbf4 <_fstat_r>:
    dbf4:	ff010113          	addi	sp,sp,-16
    dbf8:	00058713          	mv	a4,a1
    dbfc:	00812423          	sw	s0,8(sp)
    dc00:	00912223          	sw	s1,4(sp)
    dc04:	00050413          	mv	s0,a0
    dc08:	00060593          	mv	a1,a2
    dc0c:	00070513          	mv	a0,a4
    dc10:	00112623          	sw	ra,12(sp)
    dc14:	1c01aa23          	sw	zero,468(gp) # 800009d4 <errno>
    dc18:	1e0000ef          	jal	ra,ddf8 <_fstat>
    dc1c:	fff00793          	li	a5,-1
    dc20:	00f50c63          	beq	a0,a5,dc38 <_fstat_r+0x44>
    dc24:	00c12083          	lw	ra,12(sp)
    dc28:	00812403          	lw	s0,8(sp)
    dc2c:	00412483          	lw	s1,4(sp)
    dc30:	01010113          	addi	sp,sp,16
    dc34:	00008067          	ret
    dc38:	1d41a783          	lw	a5,468(gp) # 800009d4 <errno>
    dc3c:	fe0784e3          	beqz	a5,dc24 <_fstat_r+0x30>
    dc40:	00c12083          	lw	ra,12(sp)
    dc44:	00f42023          	sw	a5,0(s0)
    dc48:	00812403          	lw	s0,8(sp)
    dc4c:	00412483          	lw	s1,4(sp)
    dc50:	01010113          	addi	sp,sp,16
    dc54:	00008067          	ret

0000dc58 <_isatty_r>:
    dc58:	ff010113          	addi	sp,sp,-16
    dc5c:	00812423          	sw	s0,8(sp)
    dc60:	00912223          	sw	s1,4(sp)
    dc64:	00050413          	mv	s0,a0
    dc68:	00058513          	mv	a0,a1
    dc6c:	00112623          	sw	ra,12(sp)
    dc70:	1c01aa23          	sw	zero,468(gp) # 800009d4 <errno>
    dc74:	1ec000ef          	jal	ra,de60 <_isatty>
    dc78:	fff00793          	li	a5,-1
    dc7c:	00f50c63          	beq	a0,a5,dc94 <_isatty_r+0x3c>
    dc80:	00c12083          	lw	ra,12(sp)
    dc84:	00812403          	lw	s0,8(sp)
    dc88:	00412483          	lw	s1,4(sp)
    dc8c:	01010113          	addi	sp,sp,16
    dc90:	00008067          	ret
    dc94:	1d41a783          	lw	a5,468(gp) # 800009d4 <errno>
    dc98:	fe0784e3          	beqz	a5,dc80 <_isatty_r+0x28>
    dc9c:	00c12083          	lw	ra,12(sp)
    dca0:	00f42023          	sw	a5,0(s0)
    dca4:	00812403          	lw	s0,8(sp)
    dca8:	00412483          	lw	s1,4(sp)
    dcac:	01010113          	addi	sp,sp,16
    dcb0:	00008067          	ret

0000dcb4 <_lseek_r>:
    dcb4:	ff010113          	addi	sp,sp,-16
    dcb8:	00058713          	mv	a4,a1
    dcbc:	00812423          	sw	s0,8(sp)
    dcc0:	00912223          	sw	s1,4(sp)
    dcc4:	00060593          	mv	a1,a2
    dcc8:	00050413          	mv	s0,a0
    dccc:	00068613          	mv	a2,a3
    dcd0:	00070513          	mv	a0,a4
    dcd4:	00112623          	sw	ra,12(sp)
    dcd8:	1c01aa23          	sw	zero,468(gp) # 800009d4 <errno>
    dcdc:	1e8000ef          	jal	ra,dec4 <_lseek>
    dce0:	fff00793          	li	a5,-1
    dce4:	00f50c63          	beq	a0,a5,dcfc <_lseek_r+0x48>
    dce8:	00c12083          	lw	ra,12(sp)
    dcec:	00812403          	lw	s0,8(sp)
    dcf0:	00412483          	lw	s1,4(sp)
    dcf4:	01010113          	addi	sp,sp,16
    dcf8:	00008067          	ret
    dcfc:	1d41a783          	lw	a5,468(gp) # 800009d4 <errno>
    dd00:	fe0784e3          	beqz	a5,dce8 <_lseek_r+0x34>
    dd04:	00c12083          	lw	ra,12(sp)
    dd08:	00f42023          	sw	a5,0(s0)
    dd0c:	00812403          	lw	s0,8(sp)
    dd10:	00412483          	lw	s1,4(sp)
    dd14:	01010113          	addi	sp,sp,16
    dd18:	00008067          	ret

0000dd1c <_read_r>:
    dd1c:	ff010113          	addi	sp,sp,-16
    dd20:	00058713          	mv	a4,a1
    dd24:	00812423          	sw	s0,8(sp)
    dd28:	00912223          	sw	s1,4(sp)
    dd2c:	00060593          	mv	a1,a2
    dd30:	00050413          	mv	s0,a0
    dd34:	00068613          	mv	a2,a3
    dd38:	00070513          	mv	a0,a4
    dd3c:	00112623          	sw	ra,12(sp)
    dd40:	1c01aa23          	sw	zero,468(gp) # 800009d4 <errno>
    dd44:	1c4000ef          	jal	ra,df08 <_read>
    dd48:	fff00793          	li	a5,-1
    dd4c:	00f50c63          	beq	a0,a5,dd64 <_read_r+0x48>
    dd50:	00c12083          	lw	ra,12(sp)
    dd54:	00812403          	lw	s0,8(sp)
    dd58:	00412483          	lw	s1,4(sp)
    dd5c:	01010113          	addi	sp,sp,16
    dd60:	00008067          	ret
    dd64:	1d41a783          	lw	a5,468(gp) # 800009d4 <errno>
    dd68:	fe0784e3          	beqz	a5,dd50 <_read_r+0x34>
    dd6c:	00c12083          	lw	ra,12(sp)
    dd70:	00f42023          	sw	a5,0(s0)
    dd74:	00812403          	lw	s0,8(sp)
    dd78:	00412483          	lw	s1,4(sp)
    dd7c:	01010113          	addi	sp,sp,16
    dd80:	00008067          	ret

0000dd84 <_close>:
    dd84:	ff010113          	addi	sp,sp,-16
    dd88:	00112623          	sw	ra,12(sp)
    dd8c:	00812423          	sw	s0,8(sp)
    dd90:	03900893          	li	a7,57
    dd94:	00000073          	ecall
    dd98:	00050413          	mv	s0,a0
    dd9c:	00054c63          	bltz	a0,ddb4 <_close+0x30>
    dda0:	00c12083          	lw	ra,12(sp)
    dda4:	00040513          	mv	a0,s0
    dda8:	00812403          	lw	s0,8(sp)
    ddac:	01010113          	addi	sp,sp,16
    ddb0:	00008067          	ret
    ddb4:	40800433          	neg	s0,s0
    ddb8:	804fc0ef          	jal	ra,9dbc <__errno>
    ddbc:	00852023          	sw	s0,0(a0)
    ddc0:	fff00413          	li	s0,-1
    ddc4:	fddff06f          	j	dda0 <_close+0x1c>

0000ddc8 <_exit>:
    ddc8:	05d00893          	li	a7,93
    ddcc:	00000073          	ecall
    ddd0:	00054463          	bltz	a0,ddd8 <_exit+0x10>
    ddd4:	0000006f          	j	ddd4 <_exit+0xc>
    ddd8:	ff010113          	addi	sp,sp,-16
    dddc:	00812423          	sw	s0,8(sp)
    dde0:	00050413          	mv	s0,a0
    dde4:	00112623          	sw	ra,12(sp)
    dde8:	40800433          	neg	s0,s0
    ddec:	fd1fb0ef          	jal	ra,9dbc <__errno>
    ddf0:	00852023          	sw	s0,0(a0)
    ddf4:	0000006f          	j	ddf4 <_exit+0x2c>

0000ddf8 <_fstat>:
    ddf8:	f7010113          	addi	sp,sp,-144
    ddfc:	08912223          	sw	s1,132(sp)
    de00:	08112623          	sw	ra,140(sp)
    de04:	00058493          	mv	s1,a1
    de08:	08812423          	sw	s0,136(sp)
    de0c:	05000893          	li	a7,80
    de10:	00010593          	mv	a1,sp
    de14:	00000073          	ecall
    de18:	00050413          	mv	s0,a0
    de1c:	02054463          	bltz	a0,de44 <_fstat+0x4c>
    de20:	00048513          	mv	a0,s1
    de24:	00010593          	mv	a1,sp
    de28:	1e0000ef          	jal	ra,e008 <_conv_stat>
    de2c:	08c12083          	lw	ra,140(sp)
    de30:	00040513          	mv	a0,s0
    de34:	08812403          	lw	s0,136(sp)
    de38:	08412483          	lw	s1,132(sp)
    de3c:	09010113          	addi	sp,sp,144
    de40:	00008067          	ret
    de44:	40800433          	neg	s0,s0
    de48:	f75fb0ef          	jal	ra,9dbc <__errno>
    de4c:	00852023          	sw	s0,0(a0)
    de50:	fff00413          	li	s0,-1
    de54:	fcdff06f          	j	de20 <_fstat+0x28>

0000de58 <_getpid>:
    de58:	00100513          	li	a0,1
    de5c:	00008067          	ret

0000de60 <_isatty>:
    de60:	f9010113          	addi	sp,sp,-112
    de64:	00810593          	addi	a1,sp,8
    de68:	06112623          	sw	ra,108(sp)
    de6c:	f8dff0ef          	jal	ra,ddf8 <_fstat>
    de70:	fff00793          	li	a5,-1
    de74:	00f50e63          	beq	a0,a5,de90 <_isatty+0x30>
    de78:	00c12503          	lw	a0,12(sp)
    de7c:	06c12083          	lw	ra,108(sp)
    de80:	00d55513          	srli	a0,a0,0xd
    de84:	00157513          	andi	a0,a0,1
    de88:	07010113          	addi	sp,sp,112
    de8c:	00008067          	ret
    de90:	06c12083          	lw	ra,108(sp)
    de94:	00000513          	li	a0,0
    de98:	07010113          	addi	sp,sp,112
    de9c:	00008067          	ret

0000dea0 <_kill>:
    dea0:	ff010113          	addi	sp,sp,-16
    dea4:	00112623          	sw	ra,12(sp)
    dea8:	f15fb0ef          	jal	ra,9dbc <__errno>
    deac:	00c12083          	lw	ra,12(sp)
    deb0:	01600793          	li	a5,22
    deb4:	00f52023          	sw	a5,0(a0)
    deb8:	fff00513          	li	a0,-1
    debc:	01010113          	addi	sp,sp,16
    dec0:	00008067          	ret

0000dec4 <_lseek>:
    dec4:	ff010113          	addi	sp,sp,-16
    dec8:	00112623          	sw	ra,12(sp)
    decc:	00812423          	sw	s0,8(sp)
    ded0:	03e00893          	li	a7,62
    ded4:	00000073          	ecall
    ded8:	00050413          	mv	s0,a0
    dedc:	00054c63          	bltz	a0,def4 <_lseek+0x30>
    dee0:	00c12083          	lw	ra,12(sp)
    dee4:	00040513          	mv	a0,s0
    dee8:	00812403          	lw	s0,8(sp)
    deec:	01010113          	addi	sp,sp,16
    def0:	00008067          	ret
    def4:	40800433          	neg	s0,s0
    def8:	ec5fb0ef          	jal	ra,9dbc <__errno>
    defc:	00852023          	sw	s0,0(a0)
    df00:	fff00413          	li	s0,-1
    df04:	fddff06f          	j	dee0 <_lseek+0x1c>

0000df08 <_read>:
    df08:	ff010113          	addi	sp,sp,-16
    df0c:	00112623          	sw	ra,12(sp)
    df10:	00812423          	sw	s0,8(sp)
    df14:	03f00893          	li	a7,63
    df18:	00000073          	ecall
    df1c:	00050413          	mv	s0,a0
    df20:	00054c63          	bltz	a0,df38 <_read+0x30>
    df24:	00c12083          	lw	ra,12(sp)
    df28:	00040513          	mv	a0,s0
    df2c:	00812403          	lw	s0,8(sp)
    df30:	01010113          	addi	sp,sp,16
    df34:	00008067          	ret
    df38:	40800433          	neg	s0,s0
    df3c:	e81fb0ef          	jal	ra,9dbc <__errno>
    df40:	00852023          	sw	s0,0(a0)
    df44:	fff00413          	li	s0,-1
    df48:	fddff06f          	j	df24 <_read+0x1c>

0000df4c <_sbrk>:
    df4c:	1d81a703          	lw	a4,472(gp) # 800009d8 <heap_end.0>
    df50:	ff010113          	addi	sp,sp,-16
    df54:	00112623          	sw	ra,12(sp)
    df58:	00050793          	mv	a5,a0
    df5c:	02071063          	bnez	a4,df7c <_sbrk+0x30>
    df60:	0d600893          	li	a7,214
    df64:	00000513          	li	a0,0
    df68:	00000073          	ecall
    df6c:	fff00613          	li	a2,-1
    df70:	00050713          	mv	a4,a0
    df74:	02c50a63          	beq	a0,a2,dfa8 <_sbrk+0x5c>
    df78:	1ca1ac23          	sw	a0,472(gp) # 800009d8 <heap_end.0>
    df7c:	0d600893          	li	a7,214
    df80:	00e78533          	add	a0,a5,a4
    df84:	00000073          	ecall
    df88:	1d81a703          	lw	a4,472(gp) # 800009d8 <heap_end.0>
    df8c:	00e787b3          	add	a5,a5,a4
    df90:	00f51c63          	bne	a0,a5,dfa8 <_sbrk+0x5c>
    df94:	00c12083          	lw	ra,12(sp)
    df98:	1ca1ac23          	sw	a0,472(gp) # 800009d8 <heap_end.0>
    df9c:	00070513          	mv	a0,a4
    dfa0:	01010113          	addi	sp,sp,16
    dfa4:	00008067          	ret
    dfa8:	e15fb0ef          	jal	ra,9dbc <__errno>
    dfac:	00c12083          	lw	ra,12(sp)
    dfb0:	00c00793          	li	a5,12
    dfb4:	00f52023          	sw	a5,0(a0)
    dfb8:	fff00513          	li	a0,-1
    dfbc:	01010113          	addi	sp,sp,16
    dfc0:	00008067          	ret

0000dfc4 <_write>:
    dfc4:	ff010113          	addi	sp,sp,-16
    dfc8:	00112623          	sw	ra,12(sp)
    dfcc:	00812423          	sw	s0,8(sp)
    dfd0:	04000893          	li	a7,64
    dfd4:	00000073          	ecall
    dfd8:	00050413          	mv	s0,a0
    dfdc:	00054c63          	bltz	a0,dff4 <_write+0x30>
    dfe0:	00c12083          	lw	ra,12(sp)
    dfe4:	00040513          	mv	a0,s0
    dfe8:	00812403          	lw	s0,8(sp)
    dfec:	01010113          	addi	sp,sp,16
    dff0:	00008067          	ret
    dff4:	40800433          	neg	s0,s0
    dff8:	dc5fb0ef          	jal	ra,9dbc <__errno>
    dffc:	00852023          	sw	s0,0(a0)
    e000:	fff00413          	li	s0,-1
    e004:	fddff06f          	j	dfe0 <_write+0x1c>

0000e008 <_conv_stat>:
    e008:	ff010113          	addi	sp,sp,-16
    e00c:	0145a383          	lw	t2,20(a1)
    e010:	0185a283          	lw	t0,24(a1)
    e014:	01c5af83          	lw	t6,28(a1)
    e018:	0205af03          	lw	t5,32(a1)
    e01c:	0305ae83          	lw	t4,48(a1)
    e020:	0405ae03          	lw	t3,64(a1)
    e024:	0385a303          	lw	t1,56(a1)
    e028:	0485a803          	lw	a6,72(a1)
    e02c:	04c5a883          	lw	a7,76(a1)
    e030:	0585a603          	lw	a2,88(a1)
    e034:	00812623          	sw	s0,12(sp)
    e038:	00912423          	sw	s1,8(sp)
    e03c:	0105a403          	lw	s0,16(a1)
    e040:	0085a483          	lw	s1,8(a1)
    e044:	01212223          	sw	s2,4(sp)
    e048:	0005a903          	lw	s2,0(a1)
    e04c:	05c5a683          	lw	a3,92(a1)
    e050:	0685a703          	lw	a4,104(a1)
    e054:	06c5a783          	lw	a5,108(a1)
    e058:	01251023          	sh	s2,0(a0)
    e05c:	00951123          	sh	s1,2(a0)
    e060:	00852223          	sw	s0,4(a0)
    e064:	00751423          	sh	t2,8(a0)
    e068:	00551523          	sh	t0,10(a0)
    e06c:	01f51623          	sh	t6,12(a0)
    e070:	01e51723          	sh	t5,14(a0)
    e074:	01d52823          	sw	t4,16(a0)
    e078:	05c52623          	sw	t3,76(a0)
    e07c:	04652423          	sw	t1,72(a0)
    e080:	01052c23          	sw	a6,24(a0)
    e084:	01152e23          	sw	a7,28(a0)
    e088:	02c52423          	sw	a2,40(a0)
    e08c:	02d52623          	sw	a3,44(a0)
    e090:	00c12403          	lw	s0,12(sp)
    e094:	02e52c23          	sw	a4,56(a0)
    e098:	02f52e23          	sw	a5,60(a0)
    e09c:	00812483          	lw	s1,8(sp)
    e0a0:	00412903          	lw	s2,4(sp)
    e0a4:	01010113          	addi	sp,sp,16
    e0a8:	00008067          	ret

0000e0ac <__udivdi3>:
    e0ac:	fd010113          	addi	sp,sp,-48
    e0b0:	02812423          	sw	s0,40(sp)
    e0b4:	01712623          	sw	s7,12(sp)
    e0b8:	02112623          	sw	ra,44(sp)
    e0bc:	02912223          	sw	s1,36(sp)
    e0c0:	03212023          	sw	s2,32(sp)
    e0c4:	01312e23          	sw	s3,28(sp)
    e0c8:	01412c23          	sw	s4,24(sp)
    e0cc:	01512a23          	sw	s5,20(sp)
    e0d0:	01612823          	sw	s6,16(sp)
    e0d4:	01812423          	sw	s8,8(sp)
    e0d8:	01912223          	sw	s9,4(sp)
    e0dc:	00050b93          	mv	s7,a0
    e0e0:	00058413          	mv	s0,a1
    e0e4:	38069c63          	bnez	a3,e47c <__udivdi3+0x3d0>
    e0e8:	000144b7          	lui	s1,0x14
    e0ec:	00060913          	mv	s2,a2
    e0f0:	00050a13          	mv	s4,a0
    e0f4:	d6048493          	addi	s1,s1,-672 # 13d60 <__clz_tab>
    e0f8:	12c5f863          	bgeu	a1,a2,e228 <__udivdi3+0x17c>
    e0fc:	000107b7          	lui	a5,0x10
    e100:	00058c13          	mv	s8,a1
    e104:	10f67863          	bgeu	a2,a5,e214 <__udivdi3+0x168>
    e108:	0ff00713          	li	a4,255
    e10c:	00c73733          	sltu	a4,a4,a2
    e110:	00371713          	slli	a4,a4,0x3
    e114:	00e657b3          	srl	a5,a2,a4
    e118:	00f484b3          	add	s1,s1,a5
    e11c:	0004c683          	lbu	a3,0(s1)
    e120:	00e68733          	add	a4,a3,a4
    e124:	02000693          	li	a3,32
    e128:	40e687b3          	sub	a5,a3,a4
    e12c:	00e68c63          	beq	a3,a4,e144 <__udivdi3+0x98>
    e130:	00f41433          	sll	s0,s0,a5
    e134:	00ebd733          	srl	a4,s7,a4
    e138:	00f61933          	sll	s2,a2,a5
    e13c:	00876c33          	or	s8,a4,s0
    e140:	00fb9a33          	sll	s4,s7,a5
    e144:	01095b13          	srli	s6,s2,0x10
    e148:	000b0593          	mv	a1,s6
    e14c:	000c0513          	mv	a0,s8
    e150:	bf5f20ef          	jal	ra,d44 <__umodsi3>
    e154:	00050493          	mv	s1,a0
    e158:	000b0593          	mv	a1,s6
    e15c:	01091a93          	slli	s5,s2,0x10
    e160:	000c0513          	mv	a0,s8
    e164:	b99f20ef          	jal	ra,cfc <__udivsi3>
    e168:	010ada93          	srli	s5,s5,0x10
    e16c:	00050413          	mv	s0,a0
    e170:	00050593          	mv	a1,a0
    e174:	000a8513          	mv	a0,s5
    e178:	ac9f20ef          	jal	ra,c40 <__mulsi3>
    e17c:	01049493          	slli	s1,s1,0x10
    e180:	010a5713          	srli	a4,s4,0x10
    e184:	00e4e733          	or	a4,s1,a4
    e188:	00040993          	mv	s3,s0
    e18c:	00a77e63          	bgeu	a4,a0,e1a8 <__udivdi3+0xfc>
    e190:	01270733          	add	a4,a4,s2
    e194:	fff40993          	addi	s3,s0,-1
    e198:	01276863          	bltu	a4,s2,e1a8 <__udivdi3+0xfc>
    e19c:	00a77663          	bgeu	a4,a0,e1a8 <__udivdi3+0xfc>
    e1a0:	ffe40993          	addi	s3,s0,-2
    e1a4:	01270733          	add	a4,a4,s2
    e1a8:	40a70433          	sub	s0,a4,a0
    e1ac:	000b0593          	mv	a1,s6
    e1b0:	00040513          	mv	a0,s0
    e1b4:	b91f20ef          	jal	ra,d44 <__umodsi3>
    e1b8:	00050493          	mv	s1,a0
    e1bc:	000b0593          	mv	a1,s6
    e1c0:	00040513          	mv	a0,s0
    e1c4:	b39f20ef          	jal	ra,cfc <__udivsi3>
    e1c8:	010a1a13          	slli	s4,s4,0x10
    e1cc:	00050413          	mv	s0,a0
    e1d0:	00050593          	mv	a1,a0
    e1d4:	01049493          	slli	s1,s1,0x10
    e1d8:	000a8513          	mv	a0,s5
    e1dc:	010a5a13          	srli	s4,s4,0x10
    e1e0:	a61f20ef          	jal	ra,c40 <__mulsi3>
    e1e4:	0144ea33          	or	s4,s1,s4
    e1e8:	00040613          	mv	a2,s0
    e1ec:	00aa7c63          	bgeu	s4,a0,e204 <__udivdi3+0x158>
    e1f0:	01490a33          	add	s4,s2,s4
    e1f4:	fff40613          	addi	a2,s0,-1
    e1f8:	012a6663          	bltu	s4,s2,e204 <__udivdi3+0x158>
    e1fc:	00aa7463          	bgeu	s4,a0,e204 <__udivdi3+0x158>
    e200:	ffe40613          	addi	a2,s0,-2
    e204:	01099793          	slli	a5,s3,0x10
    e208:	00c7e7b3          	or	a5,a5,a2
    e20c:	00000493          	li	s1,0
    e210:	1300006f          	j	e340 <__udivdi3+0x294>
    e214:	010007b7          	lui	a5,0x1000
    e218:	01000713          	li	a4,16
    e21c:	eef66ce3          	bltu	a2,a5,e114 <__udivdi3+0x68>
    e220:	01800713          	li	a4,24
    e224:	ef1ff06f          	j	e114 <__udivdi3+0x68>
    e228:	00068993          	mv	s3,a3
    e22c:	00061a63          	bnez	a2,e240 <__udivdi3+0x194>
    e230:	00000593          	li	a1,0
    e234:	00100513          	li	a0,1
    e238:	ac5f20ef          	jal	ra,cfc <__udivsi3>
    e23c:	00050913          	mv	s2,a0
    e240:	000107b7          	lui	a5,0x10
    e244:	12f97c63          	bgeu	s2,a5,e37c <__udivdi3+0x2d0>
    e248:	0ff00793          	li	a5,255
    e24c:	0127f463          	bgeu	a5,s2,e254 <__udivdi3+0x1a8>
    e250:	00800993          	li	s3,8
    e254:	013957b3          	srl	a5,s2,s3
    e258:	00f484b3          	add	s1,s1,a5
    e25c:	0004c783          	lbu	a5,0(s1)
    e260:	02000693          	li	a3,32
    e264:	013787b3          	add	a5,a5,s3
    e268:	40f68733          	sub	a4,a3,a5
    e26c:	12f69263          	bne	a3,a5,e390 <__udivdi3+0x2e4>
    e270:	41240433          	sub	s0,s0,s2
    e274:	00100493          	li	s1,1
    e278:	01095a93          	srli	s5,s2,0x10
    e27c:	000a8593          	mv	a1,s5
    e280:	00040513          	mv	a0,s0
    e284:	ac1f20ef          	jal	ra,d44 <__umodsi3>
    e288:	00050993          	mv	s3,a0
    e28c:	000a8593          	mv	a1,s5
    e290:	00040513          	mv	a0,s0
    e294:	01091b13          	slli	s6,s2,0x10
    e298:	a65f20ef          	jal	ra,cfc <__udivsi3>
    e29c:	010b5b13          	srli	s6,s6,0x10
    e2a0:	00050413          	mv	s0,a0
    e2a4:	00050593          	mv	a1,a0
    e2a8:	000b0513          	mv	a0,s6
    e2ac:	995f20ef          	jal	ra,c40 <__mulsi3>
    e2b0:	01099993          	slli	s3,s3,0x10
    e2b4:	010a5713          	srli	a4,s4,0x10
    e2b8:	00e9e733          	or	a4,s3,a4
    e2bc:	00040b93          	mv	s7,s0
    e2c0:	00a77e63          	bgeu	a4,a0,e2dc <__udivdi3+0x230>
    e2c4:	01270733          	add	a4,a4,s2
    e2c8:	fff40b93          	addi	s7,s0,-1
    e2cc:	01276863          	bltu	a4,s2,e2dc <__udivdi3+0x230>
    e2d0:	00a77663          	bgeu	a4,a0,e2dc <__udivdi3+0x230>
    e2d4:	ffe40b93          	addi	s7,s0,-2
    e2d8:	01270733          	add	a4,a4,s2
    e2dc:	40a70433          	sub	s0,a4,a0
    e2e0:	000a8593          	mv	a1,s5
    e2e4:	00040513          	mv	a0,s0
    e2e8:	a5df20ef          	jal	ra,d44 <__umodsi3>
    e2ec:	00050993          	mv	s3,a0
    e2f0:	000a8593          	mv	a1,s5
    e2f4:	00040513          	mv	a0,s0
    e2f8:	a05f20ef          	jal	ra,cfc <__udivsi3>
    e2fc:	010a1a13          	slli	s4,s4,0x10
    e300:	00050413          	mv	s0,a0
    e304:	00050593          	mv	a1,a0
    e308:	01099993          	slli	s3,s3,0x10
    e30c:	000b0513          	mv	a0,s6
    e310:	010a5a13          	srli	s4,s4,0x10
    e314:	92df20ef          	jal	ra,c40 <__mulsi3>
    e318:	0149ea33          	or	s4,s3,s4
    e31c:	00040613          	mv	a2,s0
    e320:	00aa7c63          	bgeu	s4,a0,e338 <__udivdi3+0x28c>
    e324:	01490a33          	add	s4,s2,s4
    e328:	fff40613          	addi	a2,s0,-1
    e32c:	012a6663          	bltu	s4,s2,e338 <__udivdi3+0x28c>
    e330:	00aa7463          	bgeu	s4,a0,e338 <__udivdi3+0x28c>
    e334:	ffe40613          	addi	a2,s0,-2
    e338:	010b9793          	slli	a5,s7,0x10
    e33c:	00c7e7b3          	or	a5,a5,a2
    e340:	00078513          	mv	a0,a5
    e344:	00048593          	mv	a1,s1
    e348:	02c12083          	lw	ra,44(sp)
    e34c:	02812403          	lw	s0,40(sp)
    e350:	02412483          	lw	s1,36(sp)
    e354:	02012903          	lw	s2,32(sp)
    e358:	01c12983          	lw	s3,28(sp)
    e35c:	01812a03          	lw	s4,24(sp)
    e360:	01412a83          	lw	s5,20(sp)
    e364:	01012b03          	lw	s6,16(sp)
    e368:	00c12b83          	lw	s7,12(sp)
    e36c:	00812c03          	lw	s8,8(sp)
    e370:	00412c83          	lw	s9,4(sp)
    e374:	03010113          	addi	sp,sp,48
    e378:	00008067          	ret
    e37c:	010007b7          	lui	a5,0x1000
    e380:	01000993          	li	s3,16
    e384:	ecf968e3          	bltu	s2,a5,e254 <__udivdi3+0x1a8>
    e388:	01800993          	li	s3,24
    e38c:	ec9ff06f          	j	e254 <__udivdi3+0x1a8>
    e390:	00e91933          	sll	s2,s2,a4
    e394:	00f459b3          	srl	s3,s0,a5
    e398:	00fbd7b3          	srl	a5,s7,a5
    e39c:	00e41433          	sll	s0,s0,a4
    e3a0:	0087eab3          	or	s5,a5,s0
    e3a4:	01095413          	srli	s0,s2,0x10
    e3a8:	00040593          	mv	a1,s0
    e3ac:	00098513          	mv	a0,s3
    e3b0:	00eb9a33          	sll	s4,s7,a4
    e3b4:	991f20ef          	jal	ra,d44 <__umodsi3>
    e3b8:	00050493          	mv	s1,a0
    e3bc:	00040593          	mv	a1,s0
    e3c0:	00098513          	mv	a0,s3
    e3c4:	01091b13          	slli	s6,s2,0x10
    e3c8:	935f20ef          	jal	ra,cfc <__udivsi3>
    e3cc:	010b5b13          	srli	s6,s6,0x10
    e3d0:	00050993          	mv	s3,a0
    e3d4:	00050593          	mv	a1,a0
    e3d8:	000b0513          	mv	a0,s6
    e3dc:	865f20ef          	jal	ra,c40 <__mulsi3>
    e3e0:	01049493          	slli	s1,s1,0x10
    e3e4:	010ad793          	srli	a5,s5,0x10
    e3e8:	00f4e7b3          	or	a5,s1,a5
    e3ec:	00098b93          	mv	s7,s3
    e3f0:	00a7fe63          	bgeu	a5,a0,e40c <__udivdi3+0x360>
    e3f4:	012787b3          	add	a5,a5,s2
    e3f8:	fff98b93          	addi	s7,s3,-1
    e3fc:	0127e863          	bltu	a5,s2,e40c <__udivdi3+0x360>
    e400:	00a7f663          	bgeu	a5,a0,e40c <__udivdi3+0x360>
    e404:	ffe98b93          	addi	s7,s3,-2
    e408:	012787b3          	add	a5,a5,s2
    e40c:	40a789b3          	sub	s3,a5,a0
    e410:	00040593          	mv	a1,s0
    e414:	00098513          	mv	a0,s3
    e418:	92df20ef          	jal	ra,d44 <__umodsi3>
    e41c:	00040593          	mv	a1,s0
    e420:	00050493          	mv	s1,a0
    e424:	00098513          	mv	a0,s3
    e428:	8d5f20ef          	jal	ra,cfc <__udivsi3>
    e42c:	010a9413          	slli	s0,s5,0x10
    e430:	00050993          	mv	s3,a0
    e434:	00050593          	mv	a1,a0
    e438:	01049493          	slli	s1,s1,0x10
    e43c:	000b0513          	mv	a0,s6
    e440:	01045413          	srli	s0,s0,0x10
    e444:	ffcf20ef          	jal	ra,c40 <__mulsi3>
    e448:	0084e433          	or	s0,s1,s0
    e44c:	00098793          	mv	a5,s3
    e450:	00a47e63          	bgeu	s0,a0,e46c <__udivdi3+0x3c0>
    e454:	01240433          	add	s0,s0,s2
    e458:	fff98793          	addi	a5,s3,-1
    e45c:	01246863          	bltu	s0,s2,e46c <__udivdi3+0x3c0>
    e460:	00a47663          	bgeu	s0,a0,e46c <__udivdi3+0x3c0>
    e464:	ffe98793          	addi	a5,s3,-2
    e468:	01240433          	add	s0,s0,s2
    e46c:	010b9493          	slli	s1,s7,0x10
    e470:	40a40433          	sub	s0,s0,a0
    e474:	00f4e4b3          	or	s1,s1,a5
    e478:	e01ff06f          	j	e278 <__udivdi3+0x1cc>
    e47c:	1ed5ee63          	bltu	a1,a3,e678 <__udivdi3+0x5cc>
    e480:	000107b7          	lui	a5,0x10
    e484:	04f6f463          	bgeu	a3,a5,e4cc <__udivdi3+0x420>
    e488:	0ff00a93          	li	s5,255
    e48c:	00dab733          	sltu	a4,s5,a3
    e490:	00371713          	slli	a4,a4,0x3
    e494:	000147b7          	lui	a5,0x14
    e498:	00e6d5b3          	srl	a1,a3,a4
    e49c:	d6078793          	addi	a5,a5,-672 # 13d60 <__clz_tab>
    e4a0:	00b787b3          	add	a5,a5,a1
    e4a4:	0007ca83          	lbu	s5,0(a5)
    e4a8:	02000793          	li	a5,32
    e4ac:	00ea8ab3          	add	s5,s5,a4
    e4b0:	415784b3          	sub	s1,a5,s5
    e4b4:	03579663          	bne	a5,s5,e4e0 <__udivdi3+0x434>
    e4b8:	00100793          	li	a5,1
    e4bc:	e886e2e3          	bltu	a3,s0,e340 <__udivdi3+0x294>
    e4c0:	00cbb633          	sltu	a2,s7,a2
    e4c4:	00164793          	xori	a5,a2,1
    e4c8:	e79ff06f          	j	e340 <__udivdi3+0x294>
    e4cc:	010007b7          	lui	a5,0x1000
    e4d0:	01000713          	li	a4,16
    e4d4:	fcf6e0e3          	bltu	a3,a5,e494 <__udivdi3+0x3e8>
    e4d8:	01800713          	li	a4,24
    e4dc:	fb9ff06f          	j	e494 <__udivdi3+0x3e8>
    e4e0:	01565cb3          	srl	s9,a2,s5
    e4e4:	009696b3          	sll	a3,a3,s1
    e4e8:	00dcecb3          	or	s9,s9,a3
    e4ec:	015459b3          	srl	s3,s0,s5
    e4f0:	00941433          	sll	s0,s0,s1
    e4f4:	015bdab3          	srl	s5,s7,s5
    e4f8:	008aeab3          	or	s5,s5,s0
    e4fc:	010cd413          	srli	s0,s9,0x10
    e500:	00040593          	mv	a1,s0
    e504:	00098513          	mv	a0,s3
    e508:	00961933          	sll	s2,a2,s1
    e50c:	839f20ef          	jal	ra,d44 <__umodsi3>
    e510:	00050a13          	mv	s4,a0
    e514:	00040593          	mv	a1,s0
    e518:	00098513          	mv	a0,s3
    e51c:	010c9b13          	slli	s6,s9,0x10
    e520:	fdcf20ef          	jal	ra,cfc <__udivsi3>
    e524:	010b5b13          	srli	s6,s6,0x10
    e528:	00050993          	mv	s3,a0
    e52c:	00050593          	mv	a1,a0
    e530:	000b0513          	mv	a0,s6
    e534:	f0cf20ef          	jal	ra,c40 <__mulsi3>
    e538:	010a1a13          	slli	s4,s4,0x10
    e53c:	010ad713          	srli	a4,s5,0x10
    e540:	00ea6733          	or	a4,s4,a4
    e544:	00098c13          	mv	s8,s3
    e548:	00a77e63          	bgeu	a4,a0,e564 <__udivdi3+0x4b8>
    e54c:	01970733          	add	a4,a4,s9
    e550:	fff98c13          	addi	s8,s3,-1
    e554:	01976863          	bltu	a4,s9,e564 <__udivdi3+0x4b8>
    e558:	00a77663          	bgeu	a4,a0,e564 <__udivdi3+0x4b8>
    e55c:	ffe98c13          	addi	s8,s3,-2
    e560:	01970733          	add	a4,a4,s9
    e564:	40a709b3          	sub	s3,a4,a0
    e568:	00040593          	mv	a1,s0
    e56c:	00098513          	mv	a0,s3
    e570:	fd4f20ef          	jal	ra,d44 <__umodsi3>
    e574:	00040593          	mv	a1,s0
    e578:	00050a13          	mv	s4,a0
    e57c:	00098513          	mv	a0,s3
    e580:	f7cf20ef          	jal	ra,cfc <__udivsi3>
    e584:	010a9413          	slli	s0,s5,0x10
    e588:	00050993          	mv	s3,a0
    e58c:	00050593          	mv	a1,a0
    e590:	010a1a13          	slli	s4,s4,0x10
    e594:	000b0513          	mv	a0,s6
    e598:	01045413          	srli	s0,s0,0x10
    e59c:	ea4f20ef          	jal	ra,c40 <__mulsi3>
    e5a0:	008a6433          	or	s0,s4,s0
    e5a4:	00098613          	mv	a2,s3
    e5a8:	00a47e63          	bgeu	s0,a0,e5c4 <__udivdi3+0x518>
    e5ac:	01940433          	add	s0,s0,s9
    e5b0:	fff98613          	addi	a2,s3,-1
    e5b4:	01946863          	bltu	s0,s9,e5c4 <__udivdi3+0x518>
    e5b8:	00a47663          	bgeu	s0,a0,e5c4 <__udivdi3+0x518>
    e5bc:	ffe98613          	addi	a2,s3,-2
    e5c0:	01940433          	add	s0,s0,s9
    e5c4:	010c1793          	slli	a5,s8,0x10
    e5c8:	00010e37          	lui	t3,0x10
    e5cc:	00c7e7b3          	or	a5,a5,a2
    e5d0:	fffe0313          	addi	t1,t3,-1 # ffff <__multf3+0x2cf>
    e5d4:	0067f8b3          	and	a7,a5,t1
    e5d8:	00697333          	and	t1,s2,t1
    e5dc:	40a40433          	sub	s0,s0,a0
    e5e0:	0107de93          	srli	t4,a5,0x10
    e5e4:	01095913          	srli	s2,s2,0x10
    e5e8:	00088513          	mv	a0,a7
    e5ec:	00030593          	mv	a1,t1
    e5f0:	e50f20ef          	jal	ra,c40 <__mulsi3>
    e5f4:	00050813          	mv	a6,a0
    e5f8:	00090593          	mv	a1,s2
    e5fc:	00088513          	mv	a0,a7
    e600:	e40f20ef          	jal	ra,c40 <__mulsi3>
    e604:	00050893          	mv	a7,a0
    e608:	00030593          	mv	a1,t1
    e60c:	000e8513          	mv	a0,t4
    e610:	e30f20ef          	jal	ra,c40 <__mulsi3>
    e614:	00050313          	mv	t1,a0
    e618:	00090593          	mv	a1,s2
    e61c:	000e8513          	mv	a0,t4
    e620:	e20f20ef          	jal	ra,c40 <__mulsi3>
    e624:	01085713          	srli	a4,a6,0x10
    e628:	006888b3          	add	a7,a7,t1
    e62c:	01170733          	add	a4,a4,a7
    e630:	00050693          	mv	a3,a0
    e634:	00677463          	bgeu	a4,t1,e63c <__udivdi3+0x590>
    e638:	01c506b3          	add	a3,a0,t3
    e63c:	01075513          	srli	a0,a4,0x10
    e640:	00d506b3          	add	a3,a0,a3
    e644:	02d46663          	bltu	s0,a3,e670 <__udivdi3+0x5c4>
    e648:	bcd412e3          	bne	s0,a3,e20c <__udivdi3+0x160>
    e64c:	00010537          	lui	a0,0x10
    e650:	fff50513          	addi	a0,a0,-1 # ffff <__multf3+0x2cf>
    e654:	00a77733          	and	a4,a4,a0
    e658:	01071713          	slli	a4,a4,0x10
    e65c:	00a87833          	and	a6,a6,a0
    e660:	009b9bb3          	sll	s7,s7,s1
    e664:	01070733          	add	a4,a4,a6
    e668:	00000493          	li	s1,0
    e66c:	ccebfae3          	bgeu	s7,a4,e340 <__udivdi3+0x294>
    e670:	fff78793          	addi	a5,a5,-1 # ffffff <__crt0_copy_data_src_begin+0xfec1a3>
    e674:	b99ff06f          	j	e20c <__udivdi3+0x160>
    e678:	00000493          	li	s1,0
    e67c:	00000793          	li	a5,0
    e680:	cc1ff06f          	j	e340 <__udivdi3+0x294>

0000e684 <__umoddi3>:
    e684:	fd010113          	addi	sp,sp,-48
    e688:	02812423          	sw	s0,40(sp)
    e68c:	02912223          	sw	s1,36(sp)
    e690:	03212023          	sw	s2,32(sp)
    e694:	01612823          	sw	s6,16(sp)
    e698:	02112623          	sw	ra,44(sp)
    e69c:	01312e23          	sw	s3,28(sp)
    e6a0:	01412c23          	sw	s4,24(sp)
    e6a4:	01512a23          	sw	s5,20(sp)
    e6a8:	01712623          	sw	s7,12(sp)
    e6ac:	01812423          	sw	s8,8(sp)
    e6b0:	01912223          	sw	s9,4(sp)
    e6b4:	01a12023          	sw	s10,0(sp)
    e6b8:	00050913          	mv	s2,a0
    e6bc:	00058b13          	mv	s6,a1
    e6c0:	00050413          	mv	s0,a0
    e6c4:	00058493          	mv	s1,a1
    e6c8:	26069c63          	bnez	a3,e940 <__umoddi3+0x2bc>
    e6cc:	00014ab7          	lui	s5,0x14
    e6d0:	00060a13          	mv	s4,a2
    e6d4:	00068993          	mv	s3,a3
    e6d8:	d60a8a93          	addi	s5,s5,-672 # 13d60 <__clz_tab>
    e6dc:	14c5f263          	bgeu	a1,a2,e820 <__umoddi3+0x19c>
    e6e0:	000107b7          	lui	a5,0x10
    e6e4:	12f67463          	bgeu	a2,a5,e80c <__umoddi3+0x188>
    e6e8:	0ff00793          	li	a5,255
    e6ec:	00c7f463          	bgeu	a5,a2,e6f4 <__umoddi3+0x70>
    e6f0:	00800993          	li	s3,8
    e6f4:	013657b3          	srl	a5,a2,s3
    e6f8:	00fa8ab3          	add	s5,s5,a5
    e6fc:	000ac783          	lbu	a5,0(s5)
    e700:	02000713          	li	a4,32
    e704:	013787b3          	add	a5,a5,s3
    e708:	40f709b3          	sub	s3,a4,a5
    e70c:	00f70c63          	beq	a4,a5,e724 <__umoddi3+0xa0>
    e710:	013b15b3          	sll	a1,s6,s3
    e714:	00f957b3          	srl	a5,s2,a5
    e718:	01361a33          	sll	s4,a2,s3
    e71c:	00b7e4b3          	or	s1,a5,a1
    e720:	01391433          	sll	s0,s2,s3
    e724:	010a5a93          	srli	s5,s4,0x10
    e728:	000a8593          	mv	a1,s5
    e72c:	00048513          	mv	a0,s1
    e730:	e14f20ef          	jal	ra,d44 <__umodsi3>
    e734:	00050913          	mv	s2,a0
    e738:	000a8593          	mv	a1,s5
    e73c:	010a1b13          	slli	s6,s4,0x10
    e740:	00048513          	mv	a0,s1
    e744:	db8f20ef          	jal	ra,cfc <__udivsi3>
    e748:	010b5b13          	srli	s6,s6,0x10
    e74c:	00050593          	mv	a1,a0
    e750:	000b0513          	mv	a0,s6
    e754:	cecf20ef          	jal	ra,c40 <__mulsi3>
    e758:	01091913          	slli	s2,s2,0x10
    e75c:	01045793          	srli	a5,s0,0x10
    e760:	00f967b3          	or	a5,s2,a5
    e764:	00a7fa63          	bgeu	a5,a0,e778 <__umoddi3+0xf4>
    e768:	014787b3          	add	a5,a5,s4
    e76c:	0147e663          	bltu	a5,s4,e778 <__umoddi3+0xf4>
    e770:	00a7f463          	bgeu	a5,a0,e778 <__umoddi3+0xf4>
    e774:	014787b3          	add	a5,a5,s4
    e778:	40a784b3          	sub	s1,a5,a0
    e77c:	000a8593          	mv	a1,s5
    e780:	00048513          	mv	a0,s1
    e784:	dc0f20ef          	jal	ra,d44 <__umodsi3>
    e788:	00050913          	mv	s2,a0
    e78c:	000a8593          	mv	a1,s5
    e790:	00048513          	mv	a0,s1
    e794:	d68f20ef          	jal	ra,cfc <__udivsi3>
    e798:	01041413          	slli	s0,s0,0x10
    e79c:	00050593          	mv	a1,a0
    e7a0:	01091913          	slli	s2,s2,0x10
    e7a4:	000b0513          	mv	a0,s6
    e7a8:	01045413          	srli	s0,s0,0x10
    e7ac:	c94f20ef          	jal	ra,c40 <__mulsi3>
    e7b0:	00896433          	or	s0,s2,s0
    e7b4:	00a47a63          	bgeu	s0,a0,e7c8 <__umoddi3+0x144>
    e7b8:	01440433          	add	s0,s0,s4
    e7bc:	01446663          	bltu	s0,s4,e7c8 <__umoddi3+0x144>
    e7c0:	00a47463          	bgeu	s0,a0,e7c8 <__umoddi3+0x144>
    e7c4:	01440433          	add	s0,s0,s4
    e7c8:	40a40433          	sub	s0,s0,a0
    e7cc:	01345533          	srl	a0,s0,s3
    e7d0:	00000593          	li	a1,0
    e7d4:	02c12083          	lw	ra,44(sp)
    e7d8:	02812403          	lw	s0,40(sp)
    e7dc:	02412483          	lw	s1,36(sp)
    e7e0:	02012903          	lw	s2,32(sp)
    e7e4:	01c12983          	lw	s3,28(sp)
    e7e8:	01812a03          	lw	s4,24(sp)
    e7ec:	01412a83          	lw	s5,20(sp)
    e7f0:	01012b03          	lw	s6,16(sp)
    e7f4:	00c12b83          	lw	s7,12(sp)
    e7f8:	00812c03          	lw	s8,8(sp)
    e7fc:	00412c83          	lw	s9,4(sp)
    e800:	00012d03          	lw	s10,0(sp)
    e804:	03010113          	addi	sp,sp,48
    e808:	00008067          	ret
    e80c:	010007b7          	lui	a5,0x1000
    e810:	01000993          	li	s3,16
    e814:	eef660e3          	bltu	a2,a5,e6f4 <__umoddi3+0x70>
    e818:	01800993          	li	s3,24
    e81c:	ed9ff06f          	j	e6f4 <__umoddi3+0x70>
    e820:	00061a63          	bnez	a2,e834 <__umoddi3+0x1b0>
    e824:	00000593          	li	a1,0
    e828:	00100513          	li	a0,1
    e82c:	cd0f20ef          	jal	ra,cfc <__udivsi3>
    e830:	00050a13          	mv	s4,a0
    e834:	000107b7          	lui	a5,0x10
    e838:	0efa7a63          	bgeu	s4,a5,e92c <__umoddi3+0x2a8>
    e83c:	0ff00793          	li	a5,255
    e840:	0147f463          	bgeu	a5,s4,e848 <__umoddi3+0x1c4>
    e844:	00800993          	li	s3,8
    e848:	013a57b3          	srl	a5,s4,s3
    e84c:	00fa8ab3          	add	s5,s5,a5
    e850:	000ac783          	lbu	a5,0(s5)
    e854:	02000713          	li	a4,32
    e858:	414b04b3          	sub	s1,s6,s4
    e85c:	013787b3          	add	a5,a5,s3
    e860:	40f709b3          	sub	s3,a4,a5
    e864:	ecf700e3          	beq	a4,a5,e724 <__umoddi3+0xa0>
    e868:	013a1a33          	sll	s4,s4,s3
    e86c:	00fb5ab3          	srl	s5,s6,a5
    e870:	013b15b3          	sll	a1,s6,s3
    e874:	00f957b3          	srl	a5,s2,a5
    e878:	010a5493          	srli	s1,s4,0x10
    e87c:	00b7eb33          	or	s6,a5,a1
    e880:	000a8513          	mv	a0,s5
    e884:	00048593          	mv	a1,s1
    e888:	cbcf20ef          	jal	ra,d44 <__umodsi3>
    e88c:	00048593          	mv	a1,s1
    e890:	01391433          	sll	s0,s2,s3
    e894:	010a1b93          	slli	s7,s4,0x10
    e898:	00050913          	mv	s2,a0
    e89c:	000a8513          	mv	a0,s5
    e8a0:	c5cf20ef          	jal	ra,cfc <__udivsi3>
    e8a4:	010bdb93          	srli	s7,s7,0x10
    e8a8:	00050593          	mv	a1,a0
    e8ac:	000b8513          	mv	a0,s7
    e8b0:	b90f20ef          	jal	ra,c40 <__mulsi3>
    e8b4:	01091913          	slli	s2,s2,0x10
    e8b8:	010b5793          	srli	a5,s6,0x10
    e8bc:	00f967b3          	or	a5,s2,a5
    e8c0:	00a7fa63          	bgeu	a5,a0,e8d4 <__umoddi3+0x250>
    e8c4:	014787b3          	add	a5,a5,s4
    e8c8:	0147e663          	bltu	a5,s4,e8d4 <__umoddi3+0x250>
    e8cc:	00a7f463          	bgeu	a5,a0,e8d4 <__umoddi3+0x250>
    e8d0:	014787b3          	add	a5,a5,s4
    e8d4:	40a78ab3          	sub	s5,a5,a0
    e8d8:	00048593          	mv	a1,s1
    e8dc:	000a8513          	mv	a0,s5
    e8e0:	c64f20ef          	jal	ra,d44 <__umodsi3>
    e8e4:	00050913          	mv	s2,a0
    e8e8:	00048593          	mv	a1,s1
    e8ec:	000a8513          	mv	a0,s5
    e8f0:	c0cf20ef          	jal	ra,cfc <__udivsi3>
    e8f4:	00050593          	mv	a1,a0
    e8f8:	000b8513          	mv	a0,s7
    e8fc:	b44f20ef          	jal	ra,c40 <__mulsi3>
    e900:	010b1593          	slli	a1,s6,0x10
    e904:	01091913          	slli	s2,s2,0x10
    e908:	0105d593          	srli	a1,a1,0x10
    e90c:	00b965b3          	or	a1,s2,a1
    e910:	00a5fa63          	bgeu	a1,a0,e924 <__umoddi3+0x2a0>
    e914:	014585b3          	add	a1,a1,s4
    e918:	0145e663          	bltu	a1,s4,e924 <__umoddi3+0x2a0>
    e91c:	00a5f463          	bgeu	a1,a0,e924 <__umoddi3+0x2a0>
    e920:	014585b3          	add	a1,a1,s4
    e924:	40a584b3          	sub	s1,a1,a0
    e928:	dfdff06f          	j	e724 <__umoddi3+0xa0>
    e92c:	010007b7          	lui	a5,0x1000
    e930:	01000993          	li	s3,16
    e934:	f0fa6ae3          	bltu	s4,a5,e848 <__umoddi3+0x1c4>
    e938:	01800993          	li	s3,24
    e93c:	f0dff06f          	j	e848 <__umoddi3+0x1c4>
    e940:	e8d5eae3          	bltu	a1,a3,e7d4 <__umoddi3+0x150>
    e944:	000107b7          	lui	a5,0x10
    e948:	04f6fc63          	bgeu	a3,a5,e9a0 <__umoddi3+0x31c>
    e94c:	0ff00a93          	li	s5,255
    e950:	00dab533          	sltu	a0,s5,a3
    e954:	00351513          	slli	a0,a0,0x3
    e958:	000147b7          	lui	a5,0x14
    e95c:	00a6d733          	srl	a4,a3,a0
    e960:	d6078793          	addi	a5,a5,-672 # 13d60 <__clz_tab>
    e964:	00e787b3          	add	a5,a5,a4
    e968:	0007ca83          	lbu	s5,0(a5)
    e96c:	02000793          	li	a5,32
    e970:	00aa8ab3          	add	s5,s5,a0
    e974:	41578a33          	sub	s4,a5,s5
    e978:	03579e63          	bne	a5,s5,e9b4 <__umoddi3+0x330>
    e97c:	0166e463          	bltu	a3,s6,e984 <__umoddi3+0x300>
    e980:	00c96a63          	bltu	s2,a2,e994 <__umoddi3+0x310>
    e984:	40c90433          	sub	s0,s2,a2
    e988:	40db05b3          	sub	a1,s6,a3
    e98c:	00893533          	sltu	a0,s2,s0
    e990:	40a584b3          	sub	s1,a1,a0
    e994:	00040513          	mv	a0,s0
    e998:	00048593          	mv	a1,s1
    e99c:	e39ff06f          	j	e7d4 <__umoddi3+0x150>
    e9a0:	010007b7          	lui	a5,0x1000
    e9a4:	01000513          	li	a0,16
    e9a8:	faf6e8e3          	bltu	a3,a5,e958 <__umoddi3+0x2d4>
    e9ac:	01800513          	li	a0,24
    e9b0:	fa9ff06f          	j	e958 <__umoddi3+0x2d4>
    e9b4:	014696b3          	sll	a3,a3,s4
    e9b8:	015657b3          	srl	a5,a2,s5
    e9bc:	00d7ec33          	or	s8,a5,a3
    e9c0:	015b5d33          	srl	s10,s6,s5
    e9c4:	014b15b3          	sll	a1,s6,s4
    e9c8:	015954b3          	srl	s1,s2,s5
    e9cc:	010c5b13          	srli	s6,s8,0x10
    e9d0:	00b4e4b3          	or	s1,s1,a1
    e9d4:	000d0513          	mv	a0,s10
    e9d8:	000b0593          	mv	a1,s6
    e9dc:	01461cb3          	sll	s9,a2,s4
    e9e0:	b64f20ef          	jal	ra,d44 <__umodsi3>
    e9e4:	00050993          	mv	s3,a0
    e9e8:	000b0593          	mv	a1,s6
    e9ec:	000d0513          	mv	a0,s10
    e9f0:	010c1b93          	slli	s7,s8,0x10
    e9f4:	b08f20ef          	jal	ra,cfc <__udivsi3>
    e9f8:	010bdb93          	srli	s7,s7,0x10
    e9fc:	00050593          	mv	a1,a0
    ea00:	01491433          	sll	s0,s2,s4
    ea04:	00050913          	mv	s2,a0
    ea08:	000b8513          	mv	a0,s7
    ea0c:	a34f20ef          	jal	ra,c40 <__mulsi3>
    ea10:	01099993          	slli	s3,s3,0x10
    ea14:	0104d713          	srli	a4,s1,0x10
    ea18:	00e9e733          	or	a4,s3,a4
    ea1c:	00090d13          	mv	s10,s2
    ea20:	00a77e63          	bgeu	a4,a0,ea3c <__umoddi3+0x3b8>
    ea24:	01870733          	add	a4,a4,s8
    ea28:	fff90d13          	addi	s10,s2,-1
    ea2c:	01876863          	bltu	a4,s8,ea3c <__umoddi3+0x3b8>
    ea30:	00a77663          	bgeu	a4,a0,ea3c <__umoddi3+0x3b8>
    ea34:	ffe90d13          	addi	s10,s2,-2
    ea38:	01870733          	add	a4,a4,s8
    ea3c:	40a70933          	sub	s2,a4,a0
    ea40:	000b0593          	mv	a1,s6
    ea44:	00090513          	mv	a0,s2
    ea48:	afcf20ef          	jal	ra,d44 <__umodsi3>
    ea4c:	00050993          	mv	s3,a0
    ea50:	000b0593          	mv	a1,s6
    ea54:	00090513          	mv	a0,s2
    ea58:	aa4f20ef          	jal	ra,cfc <__udivsi3>
    ea5c:	00050913          	mv	s2,a0
    ea60:	00050593          	mv	a1,a0
    ea64:	000b8513          	mv	a0,s7
    ea68:	9d8f20ef          	jal	ra,c40 <__mulsi3>
    ea6c:	01049713          	slli	a4,s1,0x10
    ea70:	01099993          	slli	s3,s3,0x10
    ea74:	01075713          	srli	a4,a4,0x10
    ea78:	00e9e733          	or	a4,s3,a4
    ea7c:	00090793          	mv	a5,s2
    ea80:	00a77e63          	bgeu	a4,a0,ea9c <__umoddi3+0x418>
    ea84:	01870733          	add	a4,a4,s8
    ea88:	fff90793          	addi	a5,s2,-1
    ea8c:	01876863          	bltu	a4,s8,ea9c <__umoddi3+0x418>
    ea90:	00a77663          	bgeu	a4,a0,ea9c <__umoddi3+0x418>
    ea94:	ffe90793          	addi	a5,s2,-2
    ea98:	01870733          	add	a4,a4,s8
    ea9c:	00010eb7          	lui	t4,0x10
    eaa0:	010d1d13          	slli	s10,s10,0x10
    eaa4:	00fd6d33          	or	s10,s10,a5
    eaa8:	fffe8793          	addi	a5,t4,-1 # ffff <__multf3+0x2cf>
    eaac:	00fd78b3          	and	a7,s10,a5
    eab0:	00fcf7b3          	and	a5,s9,a5
    eab4:	40a70733          	sub	a4,a4,a0
    eab8:	010d5d13          	srli	s10,s10,0x10
    eabc:	010cde13          	srli	t3,s9,0x10
    eac0:	00088513          	mv	a0,a7
    eac4:	00078593          	mv	a1,a5
    eac8:	978f20ef          	jal	ra,c40 <__mulsi3>
    eacc:	00050813          	mv	a6,a0
    ead0:	000e0593          	mv	a1,t3
    ead4:	00088513          	mv	a0,a7
    ead8:	968f20ef          	jal	ra,c40 <__mulsi3>
    eadc:	00050893          	mv	a7,a0
    eae0:	00078593          	mv	a1,a5
    eae4:	000d0513          	mv	a0,s10
    eae8:	958f20ef          	jal	ra,c40 <__mulsi3>
    eaec:	00050313          	mv	t1,a0
    eaf0:	000e0593          	mv	a1,t3
    eaf4:	000d0513          	mv	a0,s10
    eaf8:	948f20ef          	jal	ra,c40 <__mulsi3>
    eafc:	01085793          	srli	a5,a6,0x10
    eb00:	006888b3          	add	a7,a7,t1
    eb04:	011787b3          	add	a5,a5,a7
    eb08:	0067f463          	bgeu	a5,t1,eb10 <__umoddi3+0x48c>
    eb0c:	01d50533          	add	a0,a0,t4
    eb10:	0107d593          	srli	a1,a5,0x10
    eb14:	00a585b3          	add	a1,a1,a0
    eb18:	00010537          	lui	a0,0x10
    eb1c:	fff50513          	addi	a0,a0,-1 # ffff <__multf3+0x2cf>
    eb20:	00a7f7b3          	and	a5,a5,a0
    eb24:	01079793          	slli	a5,a5,0x10
    eb28:	00a87533          	and	a0,a6,a0
    eb2c:	00a78533          	add	a0,a5,a0
    eb30:	00b76663          	bltu	a4,a1,eb3c <__umoddi3+0x4b8>
    eb34:	00b71e63          	bne	a4,a1,eb50 <__umoddi3+0x4cc>
    eb38:	00a47c63          	bgeu	s0,a0,eb50 <__umoddi3+0x4cc>
    eb3c:	41950633          	sub	a2,a0,s9
    eb40:	00c537b3          	sltu	a5,a0,a2
    eb44:	018787b3          	add	a5,a5,s8
    eb48:	40f585b3          	sub	a1,a1,a5
    eb4c:	00060513          	mv	a0,a2
    eb50:	40a40533          	sub	a0,s0,a0
    eb54:	00a43433          	sltu	s0,s0,a0
    eb58:	40b705b3          	sub	a1,a4,a1
    eb5c:	408585b3          	sub	a1,a1,s0
    eb60:	01559433          	sll	s0,a1,s5
    eb64:	01455533          	srl	a0,a0,s4
    eb68:	00a46533          	or	a0,s0,a0
    eb6c:	0145d5b3          	srl	a1,a1,s4
    eb70:	c65ff06f          	j	e7d4 <__umoddi3+0x150>

0000eb74 <__divdf3>:
    eb74:	fb010113          	addi	sp,sp,-80
    eb78:	05212023          	sw	s2,64(sp)
    eb7c:	0145d913          	srli	s2,a1,0x14
    eb80:	04912223          	sw	s1,68(sp)
    eb84:	03312e23          	sw	s3,60(sp)
    eb88:	03512a23          	sw	s5,52(sp)
    eb8c:	03612823          	sw	s6,48(sp)
    eb90:	03712623          	sw	s7,44(sp)
    eb94:	00c59493          	slli	s1,a1,0xc
    eb98:	04112623          	sw	ra,76(sp)
    eb9c:	04812423          	sw	s0,72(sp)
    eba0:	03412c23          	sw	s4,56(sp)
    eba4:	03812423          	sw	s8,40(sp)
    eba8:	03912223          	sw	s9,36(sp)
    ebac:	03a12023          	sw	s10,32(sp)
    ebb0:	01b12e23          	sw	s11,28(sp)
    ebb4:	7ff97913          	andi	s2,s2,2047
    ebb8:	00050993          	mv	s3,a0
    ebbc:	00060b93          	mv	s7,a2
    ebc0:	00068b13          	mv	s6,a3
    ebc4:	00c4d493          	srli	s1,s1,0xc
    ebc8:	01f5da93          	srli	s5,a1,0x1f
    ebcc:	0a090063          	beqz	s2,ec6c <__divdf3+0xf8>
    ebd0:	7ff00793          	li	a5,2047
    ebd4:	0ef90e63          	beq	s2,a5,ecd0 <__divdf3+0x15c>
    ebd8:	01d55c93          	srli	s9,a0,0x1d
    ebdc:	00349493          	slli	s1,s1,0x3
    ebe0:	009ce4b3          	or	s1,s9,s1
    ebe4:	00800cb7          	lui	s9,0x800
    ebe8:	0194ecb3          	or	s9,s1,s9
    ebec:	00351413          	slli	s0,a0,0x3
    ebf0:	c0190913          	addi	s2,s2,-1023
    ebf4:	00000c13          	li	s8,0
    ebf8:	014b5513          	srli	a0,s6,0x14
    ebfc:	00cb1593          	slli	a1,s6,0xc
    ec00:	7ff57513          	andi	a0,a0,2047
    ec04:	00c5d993          	srli	s3,a1,0xc
    ec08:	01fb5b13          	srli	s6,s6,0x1f
    ec0c:	10050063          	beqz	a0,ed0c <__divdf3+0x198>
    ec10:	7ff00793          	li	a5,2047
    ec14:	16f50063          	beq	a0,a5,ed74 <__divdf3+0x200>
    ec18:	00399593          	slli	a1,s3,0x3
    ec1c:	01dbd793          	srli	a5,s7,0x1d
    ec20:	00b7e5b3          	or	a1,a5,a1
    ec24:	008009b7          	lui	s3,0x800
    ec28:	0135e9b3          	or	s3,a1,s3
    ec2c:	003b9693          	slli	a3,s7,0x3
    ec30:	c0150513          	addi	a0,a0,-1023
    ec34:	00000793          	li	a5,0
    ec38:	002c1713          	slli	a4,s8,0x2
    ec3c:	00f76733          	or	a4,a4,a5
    ec40:	fff70713          	addi	a4,a4,-1
    ec44:	00e00613          	li	a2,14
    ec48:	016ac4b3          	xor	s1,s5,s6
    ec4c:	40a90933          	sub	s2,s2,a0
    ec50:	14e66e63          	bltu	a2,a4,edac <__divdf3+0x238>
    ec54:	00014637          	lui	a2,0x14
    ec58:	00271713          	slli	a4,a4,0x2
    ec5c:	cac60613          	addi	a2,a2,-852 # 13cac <_ctype_+0x104>
    ec60:	00c70733          	add	a4,a4,a2
    ec64:	00072703          	lw	a4,0(a4)
    ec68:	00070067          	jr	a4
    ec6c:	00a4ecb3          	or	s9,s1,a0
    ec70:	060c8e63          	beqz	s9,ecec <__divdf3+0x178>
    ec74:	04048063          	beqz	s1,ecb4 <__divdf3+0x140>
    ec78:	00048513          	mv	a0,s1
    ec7c:	15c040ef          	jal	ra,12dd8 <__clzsi2>
    ec80:	ff550793          	addi	a5,a0,-11
    ec84:	01c00713          	li	a4,28
    ec88:	02f74c63          	blt	a4,a5,ecc0 <__divdf3+0x14c>
    ec8c:	01d00c93          	li	s9,29
    ec90:	ff850413          	addi	s0,a0,-8
    ec94:	40fc8cb3          	sub	s9,s9,a5
    ec98:	008494b3          	sll	s1,s1,s0
    ec9c:	0199dcb3          	srl	s9,s3,s9
    eca0:	009cecb3          	or	s9,s9,s1
    eca4:	00899433          	sll	s0,s3,s0
    eca8:	c0d00913          	li	s2,-1011
    ecac:	40a90933          	sub	s2,s2,a0
    ecb0:	f45ff06f          	j	ebf4 <__divdf3+0x80>
    ecb4:	124040ef          	jal	ra,12dd8 <__clzsi2>
    ecb8:	02050513          	addi	a0,a0,32
    ecbc:	fc5ff06f          	j	ec80 <__divdf3+0x10c>
    ecc0:	fd850493          	addi	s1,a0,-40
    ecc4:	00999cb3          	sll	s9,s3,s1
    ecc8:	00000413          	li	s0,0
    eccc:	fddff06f          	j	eca8 <__divdf3+0x134>
    ecd0:	00a4ecb3          	or	s9,s1,a0
    ecd4:	020c8463          	beqz	s9,ecfc <__divdf3+0x188>
    ecd8:	00050413          	mv	s0,a0
    ecdc:	00048c93          	mv	s9,s1
    ece0:	7ff00913          	li	s2,2047
    ece4:	00300c13          	li	s8,3
    ece8:	f11ff06f          	j	ebf8 <__divdf3+0x84>
    ecec:	00000413          	li	s0,0
    ecf0:	00000913          	li	s2,0
    ecf4:	00100c13          	li	s8,1
    ecf8:	f01ff06f          	j	ebf8 <__divdf3+0x84>
    ecfc:	00000413          	li	s0,0
    ed00:	7ff00913          	li	s2,2047
    ed04:	00200c13          	li	s8,2
    ed08:	ef1ff06f          	j	ebf8 <__divdf3+0x84>
    ed0c:	0179e6b3          	or	a3,s3,s7
    ed10:	06068e63          	beqz	a3,ed8c <__divdf3+0x218>
    ed14:	04098063          	beqz	s3,ed54 <__divdf3+0x1e0>
    ed18:	00098513          	mv	a0,s3
    ed1c:	0bc040ef          	jal	ra,12dd8 <__clzsi2>
    ed20:	ff550793          	addi	a5,a0,-11
    ed24:	01c00713          	li	a4,28
    ed28:	02f74e63          	blt	a4,a5,ed64 <__divdf3+0x1f0>
    ed2c:	01d00613          	li	a2,29
    ed30:	ff850693          	addi	a3,a0,-8
    ed34:	40f60633          	sub	a2,a2,a5
    ed38:	00d995b3          	sll	a1,s3,a3
    ed3c:	00cbd633          	srl	a2,s7,a2
    ed40:	00b669b3          	or	s3,a2,a1
    ed44:	00db96b3          	sll	a3,s7,a3
    ed48:	c0d00713          	li	a4,-1011
    ed4c:	40a70533          	sub	a0,a4,a0
    ed50:	ee5ff06f          	j	ec34 <__divdf3+0xc0>
    ed54:	000b8513          	mv	a0,s7
    ed58:	080040ef          	jal	ra,12dd8 <__clzsi2>
    ed5c:	02050513          	addi	a0,a0,32
    ed60:	fc1ff06f          	j	ed20 <__divdf3+0x1ac>
    ed64:	fd850593          	addi	a1,a0,-40
    ed68:	00bb99b3          	sll	s3,s7,a1
    ed6c:	00000693          	li	a3,0
    ed70:	fd9ff06f          	j	ed48 <__divdf3+0x1d4>
    ed74:	0179e6b3          	or	a3,s3,s7
    ed78:	02068263          	beqz	a3,ed9c <__divdf3+0x228>
    ed7c:	000b8693          	mv	a3,s7
    ed80:	7ff00513          	li	a0,2047
    ed84:	00300793          	li	a5,3
    ed88:	eb1ff06f          	j	ec38 <__divdf3+0xc4>
    ed8c:	00000993          	li	s3,0
    ed90:	00000513          	li	a0,0
    ed94:	00100793          	li	a5,1
    ed98:	ea1ff06f          	j	ec38 <__divdf3+0xc4>
    ed9c:	00000993          	li	s3,0
    eda0:	7ff00513          	li	a0,2047
    eda4:	00200793          	li	a5,2
    eda8:	e91ff06f          	j	ec38 <__divdf3+0xc4>
    edac:	0199e663          	bltu	s3,s9,edb8 <__divdf3+0x244>
    edb0:	453c9a63          	bne	s9,s3,f204 <__divdf3+0x690>
    edb4:	44d46863          	bltu	s0,a3,f204 <__divdf3+0x690>
    edb8:	01fc9713          	slli	a4,s9,0x1f
    edbc:	00145793          	srli	a5,s0,0x1
    edc0:	01f41d93          	slli	s11,s0,0x1f
    edc4:	001cdc93          	srli	s9,s9,0x1
    edc8:	00f76433          	or	s0,a4,a5
    edcc:	00899593          	slli	a1,s3,0x8
    edd0:	0186da93          	srli	s5,a3,0x18
    edd4:	00baeab3          	or	s5,s5,a1
    edd8:	0105db93          	srli	s7,a1,0x10
    eddc:	000b8593          	mv	a1,s7
    ede0:	010a9c13          	slli	s8,s5,0x10
    ede4:	000c8513          	mv	a0,s9
    ede8:	00869b13          	slli	s6,a3,0x8
    edec:	010c5c13          	srli	s8,s8,0x10
    edf0:	f0df10ef          	jal	ra,cfc <__udivsi3>
    edf4:	00050593          	mv	a1,a0
    edf8:	00050d13          	mv	s10,a0
    edfc:	000c0513          	mv	a0,s8
    ee00:	e41f10ef          	jal	ra,c40 <__mulsi3>
    ee04:	00050993          	mv	s3,a0
    ee08:	000b8593          	mv	a1,s7
    ee0c:	000c8513          	mv	a0,s9
    ee10:	f35f10ef          	jal	ra,d44 <__umodsi3>
    ee14:	01051513          	slli	a0,a0,0x10
    ee18:	01045713          	srli	a4,s0,0x10
    ee1c:	00a76733          	or	a4,a4,a0
    ee20:	000d0a13          	mv	s4,s10
    ee24:	01377e63          	bgeu	a4,s3,ee40 <__divdf3+0x2cc>
    ee28:	01570733          	add	a4,a4,s5
    ee2c:	fffd0a13          	addi	s4,s10,-1
    ee30:	01576863          	bltu	a4,s5,ee40 <__divdf3+0x2cc>
    ee34:	01377663          	bgeu	a4,s3,ee40 <__divdf3+0x2cc>
    ee38:	ffed0a13          	addi	s4,s10,-2
    ee3c:	01570733          	add	a4,a4,s5
    ee40:	413709b3          	sub	s3,a4,s3
    ee44:	000b8593          	mv	a1,s7
    ee48:	00098513          	mv	a0,s3
    ee4c:	eb1f10ef          	jal	ra,cfc <__udivsi3>
    ee50:	00050593          	mv	a1,a0
    ee54:	00050d13          	mv	s10,a0
    ee58:	000c0513          	mv	a0,s8
    ee5c:	de5f10ef          	jal	ra,c40 <__mulsi3>
    ee60:	00050c93          	mv	s9,a0
    ee64:	000b8593          	mv	a1,s7
    ee68:	00098513          	mv	a0,s3
    ee6c:	ed9f10ef          	jal	ra,d44 <__umodsi3>
    ee70:	01041413          	slli	s0,s0,0x10
    ee74:	01051513          	slli	a0,a0,0x10
    ee78:	01045413          	srli	s0,s0,0x10
    ee7c:	00a46433          	or	s0,s0,a0
    ee80:	000d0793          	mv	a5,s10
    ee84:	01947e63          	bgeu	s0,s9,eea0 <__divdf3+0x32c>
    ee88:	01540433          	add	s0,s0,s5
    ee8c:	fffd0793          	addi	a5,s10,-1
    ee90:	01546863          	bltu	s0,s5,eea0 <__divdf3+0x32c>
    ee94:	01947663          	bgeu	s0,s9,eea0 <__divdf3+0x32c>
    ee98:	ffed0793          	addi	a5,s10,-2
    ee9c:	01540433          	add	s0,s0,s5
    eea0:	010a1813          	slli	a6,s4,0x10
    eea4:	00010e37          	lui	t3,0x10
    eea8:	00f86833          	or	a6,a6,a5
    eeac:	41940433          	sub	s0,s0,s9
    eeb0:	fffe0c93          	addi	s9,t3,-1 # ffff <__multf3+0x2cf>
    eeb4:	019878b3          	and	a7,a6,s9
    eeb8:	019b7cb3          	and	s9,s6,s9
    eebc:	01085713          	srli	a4,a6,0x10
    eec0:	010b5d13          	srli	s10,s6,0x10
    eec4:	00088513          	mv	a0,a7
    eec8:	000c8593          	mv	a1,s9
    eecc:	d75f10ef          	jal	ra,c40 <__mulsi3>
    eed0:	00050793          	mv	a5,a0
    eed4:	000d0593          	mv	a1,s10
    eed8:	00088513          	mv	a0,a7
    eedc:	d65f10ef          	jal	ra,c40 <__mulsi3>
    eee0:	00050893          	mv	a7,a0
    eee4:	000c8593          	mv	a1,s9
    eee8:	00070513          	mv	a0,a4
    eeec:	d55f10ef          	jal	ra,c40 <__mulsi3>
    eef0:	00050313          	mv	t1,a0
    eef4:	000d0593          	mv	a1,s10
    eef8:	00070513          	mv	a0,a4
    eefc:	d45f10ef          	jal	ra,c40 <__mulsi3>
    ef00:	0107d713          	srli	a4,a5,0x10
    ef04:	006888b3          	add	a7,a7,t1
    ef08:	01170733          	add	a4,a4,a7
    ef0c:	00050613          	mv	a2,a0
    ef10:	00677463          	bgeu	a4,t1,ef18 <__divdf3+0x3a4>
    ef14:	01c50633          	add	a2,a0,t3
    ef18:	00010537          	lui	a0,0x10
    ef1c:	fff50513          	addi	a0,a0,-1 # ffff <__multf3+0x2cf>
    ef20:	01075693          	srli	a3,a4,0x10
    ef24:	00a77a33          	and	s4,a4,a0
    ef28:	010a1a13          	slli	s4,s4,0x10
    ef2c:	00a7f7b3          	and	a5,a5,a0
    ef30:	00c686b3          	add	a3,a3,a2
    ef34:	00fa0a33          	add	s4,s4,a5
    ef38:	00d46863          	bltu	s0,a3,ef48 <__divdf3+0x3d4>
    ef3c:	00080993          	mv	s3,a6
    ef40:	04d41463          	bne	s0,a3,ef88 <__divdf3+0x414>
    ef44:	054df263          	bgeu	s11,s4,ef88 <__divdf3+0x414>
    ef48:	016d8db3          	add	s11,s11,s6
    ef4c:	016db7b3          	sltu	a5,s11,s6
    ef50:	015787b3          	add	a5,a5,s5
    ef54:	00f40433          	add	s0,s0,a5
    ef58:	fff80993          	addi	s3,a6,-1
    ef5c:	008ae663          	bltu	s5,s0,ef68 <__divdf3+0x3f4>
    ef60:	028a9463          	bne	s5,s0,ef88 <__divdf3+0x414>
    ef64:	036de263          	bltu	s11,s6,ef88 <__divdf3+0x414>
    ef68:	00d46663          	bltu	s0,a3,ef74 <__divdf3+0x400>
    ef6c:	00869e63          	bne	a3,s0,ef88 <__divdf3+0x414>
    ef70:	014dfc63          	bgeu	s11,s4,ef88 <__divdf3+0x414>
    ef74:	016d8db3          	add	s11,s11,s6
    ef78:	016db7b3          	sltu	a5,s11,s6
    ef7c:	015787b3          	add	a5,a5,s5
    ef80:	ffe80993          	addi	s3,a6,-2
    ef84:	00f40433          	add	s0,s0,a5
    ef88:	414d8a33          	sub	s4,s11,s4
    ef8c:	40d40433          	sub	s0,s0,a3
    ef90:	014db7b3          	sltu	a5,s11,s4
    ef94:	40f40433          	sub	s0,s0,a5
    ef98:	fff00693          	li	a3,-1
    ef9c:	1a8a8263          	beq	s5,s0,f140 <__divdf3+0x5cc>
    efa0:	000b8593          	mv	a1,s7
    efa4:	00040513          	mv	a0,s0
    efa8:	d55f10ef          	jal	ra,cfc <__udivsi3>
    efac:	00050593          	mv	a1,a0
    efb0:	00a12623          	sw	a0,12(sp)
    efb4:	000c0513          	mv	a0,s8
    efb8:	c89f10ef          	jal	ra,c40 <__mulsi3>
    efbc:	00a12423          	sw	a0,8(sp)
    efc0:	000b8593          	mv	a1,s7
    efc4:	00040513          	mv	a0,s0
    efc8:	d7df10ef          	jal	ra,d44 <__umodsi3>
    efcc:	00c12683          	lw	a3,12(sp)
    efd0:	00812703          	lw	a4,8(sp)
    efd4:	01051513          	slli	a0,a0,0x10
    efd8:	010a5793          	srli	a5,s4,0x10
    efdc:	00a7e7b3          	or	a5,a5,a0
    efe0:	00068d93          	mv	s11,a3
    efe4:	00e7fe63          	bgeu	a5,a4,f000 <__divdf3+0x48c>
    efe8:	015787b3          	add	a5,a5,s5
    efec:	fff68d93          	addi	s11,a3,-1
    eff0:	0157e863          	bltu	a5,s5,f000 <__divdf3+0x48c>
    eff4:	00e7f663          	bgeu	a5,a4,f000 <__divdf3+0x48c>
    eff8:	ffe68d93          	addi	s11,a3,-2
    effc:	015787b3          	add	a5,a5,s5
    f000:	40e78433          	sub	s0,a5,a4
    f004:	000b8593          	mv	a1,s7
    f008:	00040513          	mv	a0,s0
    f00c:	cf1f10ef          	jal	ra,cfc <__udivsi3>
    f010:	00050593          	mv	a1,a0
    f014:	00a12423          	sw	a0,8(sp)
    f018:	000c0513          	mv	a0,s8
    f01c:	c25f10ef          	jal	ra,c40 <__mulsi3>
    f020:	00050c13          	mv	s8,a0
    f024:	000b8593          	mv	a1,s7
    f028:	00040513          	mv	a0,s0
    f02c:	d19f10ef          	jal	ra,d44 <__umodsi3>
    f030:	00812703          	lw	a4,8(sp)
    f034:	010a1a13          	slli	s4,s4,0x10
    f038:	01051793          	slli	a5,a0,0x10
    f03c:	010a5a13          	srli	s4,s4,0x10
    f040:	00fa67b3          	or	a5,s4,a5
    f044:	00070693          	mv	a3,a4
    f048:	0187fe63          	bgeu	a5,s8,f064 <__divdf3+0x4f0>
    f04c:	015787b3          	add	a5,a5,s5
    f050:	fff70693          	addi	a3,a4,-1
    f054:	0157e863          	bltu	a5,s5,f064 <__divdf3+0x4f0>
    f058:	0187f663          	bgeu	a5,s8,f064 <__divdf3+0x4f0>
    f05c:	ffe70693          	addi	a3,a4,-2
    f060:	015787b3          	add	a5,a5,s5
    f064:	010d9813          	slli	a6,s11,0x10
    f068:	00d86833          	or	a6,a6,a3
    f06c:	01081893          	slli	a7,a6,0x10
    f070:	0108d893          	srli	a7,a7,0x10
    f074:	418787b3          	sub	a5,a5,s8
    f078:	01085713          	srli	a4,a6,0x10
    f07c:	00088513          	mv	a0,a7
    f080:	000c8593          	mv	a1,s9
    f084:	bbdf10ef          	jal	ra,c40 <__mulsi3>
    f088:	00050313          	mv	t1,a0
    f08c:	000d0593          	mv	a1,s10
    f090:	00088513          	mv	a0,a7
    f094:	badf10ef          	jal	ra,c40 <__mulsi3>
    f098:	00050893          	mv	a7,a0
    f09c:	000c8593          	mv	a1,s9
    f0a0:	00070513          	mv	a0,a4
    f0a4:	b9df10ef          	jal	ra,c40 <__mulsi3>
    f0a8:	00050e13          	mv	t3,a0
    f0ac:	000d0593          	mv	a1,s10
    f0b0:	00070513          	mv	a0,a4
    f0b4:	b8df10ef          	jal	ra,c40 <__mulsi3>
    f0b8:	01035713          	srli	a4,t1,0x10
    f0bc:	01c888b3          	add	a7,a7,t3
    f0c0:	01170733          	add	a4,a4,a7
    f0c4:	00050693          	mv	a3,a0
    f0c8:	01c77663          	bgeu	a4,t3,f0d4 <__divdf3+0x560>
    f0cc:	00010637          	lui	a2,0x10
    f0d0:	00c506b3          	add	a3,a0,a2
    f0d4:	00010537          	lui	a0,0x10
    f0d8:	fff50513          	addi	a0,a0,-1 # ffff <__multf3+0x2cf>
    f0dc:	01075613          	srli	a2,a4,0x10
    f0e0:	00a77733          	and	a4,a4,a0
    f0e4:	01071713          	slli	a4,a4,0x10
    f0e8:	00a37533          	and	a0,t1,a0
    f0ec:	00d60633          	add	a2,a2,a3
    f0f0:	00a70533          	add	a0,a4,a0
    f0f4:	00c7e863          	bltu	a5,a2,f104 <__divdf3+0x590>
    f0f8:	24c79a63          	bne	a5,a2,f34c <__divdf3+0x7d8>
    f0fc:	00080693          	mv	a3,a6
    f100:	04050063          	beqz	a0,f140 <__divdf3+0x5cc>
    f104:	00fa87b3          	add	a5,s5,a5
    f108:	fff80693          	addi	a3,a6,-1
    f10c:	0357e463          	bltu	a5,s5,f134 <__divdf3+0x5c0>
    f110:	00c7e663          	bltu	a5,a2,f11c <__divdf3+0x5a8>
    f114:	22c79a63          	bne	a5,a2,f348 <__divdf3+0x7d4>
    f118:	02ab7063          	bgeu	s6,a0,f138 <__divdf3+0x5c4>
    f11c:	001b1713          	slli	a4,s6,0x1
    f120:	01673b33          	sltu	s6,a4,s6
    f124:	015b0ab3          	add	s5,s6,s5
    f128:	ffe80693          	addi	a3,a6,-2
    f12c:	015787b3          	add	a5,a5,s5
    f130:	00070b13          	mv	s6,a4
    f134:	00c79463          	bne	a5,a2,f13c <__divdf3+0x5c8>
    f138:	00ab0463          	beq	s6,a0,f140 <__divdf3+0x5cc>
    f13c:	0016e693          	ori	a3,a3,1
    f140:	3ff90793          	addi	a5,s2,1023
    f144:	12f05063          	blez	a5,f264 <__divdf3+0x6f0>
    f148:	0076f713          	andi	a4,a3,7
    f14c:	02070063          	beqz	a4,f16c <__divdf3+0x5f8>
    f150:	00f6f713          	andi	a4,a3,15
    f154:	00400613          	li	a2,4
    f158:	00c70a63          	beq	a4,a2,f16c <__divdf3+0x5f8>
    f15c:	00468613          	addi	a2,a3,4
    f160:	00d636b3          	sltu	a3,a2,a3
    f164:	00d989b3          	add	s3,s3,a3
    f168:	00060693          	mv	a3,a2
    f16c:	01000737          	lui	a4,0x1000
    f170:	00e9f733          	and	a4,s3,a4
    f174:	00070a63          	beqz	a4,f188 <__divdf3+0x614>
    f178:	ff0007b7          	lui	a5,0xff000
    f17c:	fff78793          	addi	a5,a5,-1 # feffffff <__ctr0_io_space_begin+0xff0001ff>
    f180:	00f9f9b3          	and	s3,s3,a5
    f184:	40090793          	addi	a5,s2,1024
    f188:	7fe00713          	li	a4,2046
    f18c:	0af74663          	blt	a4,a5,f238 <__divdf3+0x6c4>
    f190:	0036d693          	srli	a3,a3,0x3
    f194:	01d99713          	slli	a4,s3,0x1d
    f198:	00d76733          	or	a4,a4,a3
    f19c:	0039d593          	srli	a1,s3,0x3
    f1a0:	01479793          	slli	a5,a5,0x14
    f1a4:	7ff006b7          	lui	a3,0x7ff00
    f1a8:	00c59593          	slli	a1,a1,0xc
    f1ac:	04c12083          	lw	ra,76(sp)
    f1b0:	04812403          	lw	s0,72(sp)
    f1b4:	00d7f7b3          	and	a5,a5,a3
    f1b8:	00c5d593          	srli	a1,a1,0xc
    f1bc:	00b7e5b3          	or	a1,a5,a1
    f1c0:	01f49493          	slli	s1,s1,0x1f
    f1c4:	0095e7b3          	or	a5,a1,s1
    f1c8:	04012903          	lw	s2,64(sp)
    f1cc:	04412483          	lw	s1,68(sp)
    f1d0:	03c12983          	lw	s3,60(sp)
    f1d4:	03812a03          	lw	s4,56(sp)
    f1d8:	03412a83          	lw	s5,52(sp)
    f1dc:	03012b03          	lw	s6,48(sp)
    f1e0:	02c12b83          	lw	s7,44(sp)
    f1e4:	02812c03          	lw	s8,40(sp)
    f1e8:	02412c83          	lw	s9,36(sp)
    f1ec:	02012d03          	lw	s10,32(sp)
    f1f0:	01c12d83          	lw	s11,28(sp)
    f1f4:	00070513          	mv	a0,a4
    f1f8:	00078593          	mv	a1,a5
    f1fc:	05010113          	addi	sp,sp,80
    f200:	00008067          	ret
    f204:	fff90913          	addi	s2,s2,-1
    f208:	00000d93          	li	s11,0
    f20c:	bc1ff06f          	j	edcc <__divdf3+0x258>
    f210:	000a8493          	mv	s1,s5
    f214:	000c8993          	mv	s3,s9
    f218:	00040693          	mv	a3,s0
    f21c:	000c0793          	mv	a5,s8
    f220:	00300713          	li	a4,3
    f224:	0ee78a63          	beq	a5,a4,f318 <__divdf3+0x7a4>
    f228:	00100713          	li	a4,1
    f22c:	10e78063          	beq	a5,a4,f32c <__divdf3+0x7b8>
    f230:	00200713          	li	a4,2
    f234:	f0e796e3          	bne	a5,a4,f140 <__divdf3+0x5cc>
    f238:	00000593          	li	a1,0
    f23c:	00000713          	li	a4,0
    f240:	7ff00793          	li	a5,2047
    f244:	f5dff06f          	j	f1a0 <__divdf3+0x62c>
    f248:	000b0493          	mv	s1,s6
    f24c:	fd5ff06f          	j	f220 <__divdf3+0x6ac>
    f250:	000809b7          	lui	s3,0x80
    f254:	00000693          	li	a3,0
    f258:	00000493          	li	s1,0
    f25c:	00300793          	li	a5,3
    f260:	fc1ff06f          	j	f220 <__divdf3+0x6ac>
    f264:	00100593          	li	a1,1
    f268:	40f585b3          	sub	a1,a1,a5
    f26c:	03800713          	li	a4,56
    f270:	0ab74e63          	blt	a4,a1,f32c <__divdf3+0x7b8>
    f274:	01f00713          	li	a4,31
    f278:	06b74663          	blt	a4,a1,f2e4 <__divdf3+0x770>
    f27c:	41e90913          	addi	s2,s2,1054
    f280:	012997b3          	sll	a5,s3,s2
    f284:	00b6d733          	srl	a4,a3,a1
    f288:	01269933          	sll	s2,a3,s2
    f28c:	00e7e7b3          	or	a5,a5,a4
    f290:	01203933          	snez	s2,s2
    f294:	0127e7b3          	or	a5,a5,s2
    f298:	00b9d5b3          	srl	a1,s3,a1
    f29c:	0077f713          	andi	a4,a5,7
    f2a0:	02070063          	beqz	a4,f2c0 <__divdf3+0x74c>
    f2a4:	00f7f713          	andi	a4,a5,15
    f2a8:	00400693          	li	a3,4
    f2ac:	00d70a63          	beq	a4,a3,f2c0 <__divdf3+0x74c>
    f2b0:	00478713          	addi	a4,a5,4
    f2b4:	00f737b3          	sltu	a5,a4,a5
    f2b8:	00f585b3          	add	a1,a1,a5
    f2bc:	00070793          	mv	a5,a4
    f2c0:	00800737          	lui	a4,0x800
    f2c4:	00e5f733          	and	a4,a1,a4
    f2c8:	06071863          	bnez	a4,f338 <__divdf3+0x7c4>
    f2cc:	01d59713          	slli	a4,a1,0x1d
    f2d0:	0037d793          	srli	a5,a5,0x3
    f2d4:	00f76733          	or	a4,a4,a5
    f2d8:	0035d593          	srli	a1,a1,0x3
    f2dc:	00000793          	li	a5,0
    f2e0:	ec1ff06f          	j	f1a0 <__divdf3+0x62c>
    f2e4:	fe100713          	li	a4,-31
    f2e8:	40f707b3          	sub	a5,a4,a5
    f2ec:	02000613          	li	a2,32
    f2f0:	00f9d7b3          	srl	a5,s3,a5
    f2f4:	00000713          	li	a4,0
    f2f8:	00c58663          	beq	a1,a2,f304 <__divdf3+0x790>
    f2fc:	43e90713          	addi	a4,s2,1086
    f300:	00e99733          	sll	a4,s3,a4
    f304:	00d76733          	or	a4,a4,a3
    f308:	00e03733          	snez	a4,a4
    f30c:	00e7e7b3          	or	a5,a5,a4
    f310:	00000593          	li	a1,0
    f314:	f89ff06f          	j	f29c <__divdf3+0x728>
    f318:	000805b7          	lui	a1,0x80
    f31c:	00000713          	li	a4,0
    f320:	7ff00793          	li	a5,2047
    f324:	00000493          	li	s1,0
    f328:	e79ff06f          	j	f1a0 <__divdf3+0x62c>
    f32c:	00000593          	li	a1,0
    f330:	00000713          	li	a4,0
    f334:	fa9ff06f          	j	f2dc <__divdf3+0x768>
    f338:	00000593          	li	a1,0
    f33c:	00000713          	li	a4,0
    f340:	00100793          	li	a5,1
    f344:	e5dff06f          	j	f1a0 <__divdf3+0x62c>
    f348:	00068813          	mv	a6,a3
    f34c:	00080693          	mv	a3,a6
    f350:	dedff06f          	j	f13c <__divdf3+0x5c8>

0000f354 <__muldf3>:
    f354:	fd010113          	addi	sp,sp,-48
    f358:	01312e23          	sw	s3,28(sp)
    f35c:	0145d993          	srli	s3,a1,0x14
    f360:	02812423          	sw	s0,40(sp)
    f364:	02912223          	sw	s1,36(sp)
    f368:	01412c23          	sw	s4,24(sp)
    f36c:	01512a23          	sw	s5,20(sp)
    f370:	01712623          	sw	s7,12(sp)
    f374:	00c59493          	slli	s1,a1,0xc
    f378:	02112623          	sw	ra,44(sp)
    f37c:	03212023          	sw	s2,32(sp)
    f380:	01612823          	sw	s6,16(sp)
    f384:	7ff9f993          	andi	s3,s3,2047
    f388:	00050413          	mv	s0,a0
    f38c:	00060b93          	mv	s7,a2
    f390:	00068a93          	mv	s5,a3
    f394:	00c4d493          	srli	s1,s1,0xc
    f398:	01f5da13          	srli	s4,a1,0x1f
    f39c:	0a098263          	beqz	s3,f440 <__muldf3+0xec>
    f3a0:	7ff00793          	li	a5,2047
    f3a4:	10f98063          	beq	s3,a5,f4a4 <__muldf3+0x150>
    f3a8:	01d55793          	srli	a5,a0,0x1d
    f3ac:	00349493          	slli	s1,s1,0x3
    f3b0:	0097e4b3          	or	s1,a5,s1
    f3b4:	008007b7          	lui	a5,0x800
    f3b8:	00f4e4b3          	or	s1,s1,a5
    f3bc:	00351913          	slli	s2,a0,0x3
    f3c0:	c0198993          	addi	s3,s3,-1023 # 7fc01 <__crt0_copy_data_src_begin+0x6bda5>
    f3c4:	00000b13          	li	s6,0
    f3c8:	014ad513          	srli	a0,s5,0x14
    f3cc:	00ca9413          	slli	s0,s5,0xc
    f3d0:	7ff57513          	andi	a0,a0,2047
    f3d4:	00c45413          	srli	s0,s0,0xc
    f3d8:	01fada93          	srli	s5,s5,0x1f
    f3dc:	10050063          	beqz	a0,f4dc <__muldf3+0x188>
    f3e0:	7ff00793          	li	a5,2047
    f3e4:	16f50063          	beq	a0,a5,f544 <__muldf3+0x1f0>
    f3e8:	01dbd793          	srli	a5,s7,0x1d
    f3ec:	00341413          	slli	s0,s0,0x3
    f3f0:	0087e433          	or	s0,a5,s0
    f3f4:	008007b7          	lui	a5,0x800
    f3f8:	00f46433          	or	s0,s0,a5
    f3fc:	c0150513          	addi	a0,a0,-1023
    f400:	003b9793          	slli	a5,s7,0x3
    f404:	00000713          	li	a4,0
    f408:	002b1693          	slli	a3,s6,0x2
    f40c:	00e6e6b3          	or	a3,a3,a4
    f410:	00a989b3          	add	s3,s3,a0
    f414:	fff68693          	addi	a3,a3,-1 # 7fefffff <__crt0_copy_data_src_begin+0x7feec1a3>
    f418:	00e00613          	li	a2,14
    f41c:	015a4833          	xor	a6,s4,s5
    f420:	00198893          	addi	a7,s3,1
    f424:	14d66c63          	bltu	a2,a3,f57c <__muldf3+0x228>
    f428:	00014637          	lui	a2,0x14
    f42c:	00269693          	slli	a3,a3,0x2
    f430:	ce860613          	addi	a2,a2,-792 # 13ce8 <_ctype_+0x140>
    f434:	00c686b3          	add	a3,a3,a2
    f438:	0006a683          	lw	a3,0(a3)
    f43c:	00068067          	jr	a3
    f440:	00a4e933          	or	s2,s1,a0
    f444:	06090c63          	beqz	s2,f4bc <__muldf3+0x168>
    f448:	04048063          	beqz	s1,f488 <__muldf3+0x134>
    f44c:	00048513          	mv	a0,s1
    f450:	189030ef          	jal	ra,12dd8 <__clzsi2>
    f454:	ff550713          	addi	a4,a0,-11
    f458:	01c00793          	li	a5,28
    f45c:	02e7cc63          	blt	a5,a4,f494 <__muldf3+0x140>
    f460:	01d00793          	li	a5,29
    f464:	ff850913          	addi	s2,a0,-8
    f468:	40e787b3          	sub	a5,a5,a4
    f46c:	012494b3          	sll	s1,s1,s2
    f470:	00f457b3          	srl	a5,s0,a5
    f474:	0097e4b3          	or	s1,a5,s1
    f478:	01241933          	sll	s2,s0,s2
    f47c:	c0d00993          	li	s3,-1011
    f480:	40a989b3          	sub	s3,s3,a0
    f484:	f41ff06f          	j	f3c4 <__muldf3+0x70>
    f488:	151030ef          	jal	ra,12dd8 <__clzsi2>
    f48c:	02050513          	addi	a0,a0,32
    f490:	fc5ff06f          	j	f454 <__muldf3+0x100>
    f494:	fd850493          	addi	s1,a0,-40
    f498:	009414b3          	sll	s1,s0,s1
    f49c:	00000913          	li	s2,0
    f4a0:	fddff06f          	j	f47c <__muldf3+0x128>
    f4a4:	00a4e933          	or	s2,s1,a0
    f4a8:	02090263          	beqz	s2,f4cc <__muldf3+0x178>
    f4ac:	00050913          	mv	s2,a0
    f4b0:	7ff00993          	li	s3,2047
    f4b4:	00300b13          	li	s6,3
    f4b8:	f11ff06f          	j	f3c8 <__muldf3+0x74>
    f4bc:	00000493          	li	s1,0
    f4c0:	00000993          	li	s3,0
    f4c4:	00100b13          	li	s6,1
    f4c8:	f01ff06f          	j	f3c8 <__muldf3+0x74>
    f4cc:	00000493          	li	s1,0
    f4d0:	7ff00993          	li	s3,2047
    f4d4:	00200b13          	li	s6,2
    f4d8:	ef1ff06f          	j	f3c8 <__muldf3+0x74>
    f4dc:	017467b3          	or	a5,s0,s7
    f4e0:	06078e63          	beqz	a5,f55c <__muldf3+0x208>
    f4e4:	04040063          	beqz	s0,f524 <__muldf3+0x1d0>
    f4e8:	00040513          	mv	a0,s0
    f4ec:	0ed030ef          	jal	ra,12dd8 <__clzsi2>
    f4f0:	ff550693          	addi	a3,a0,-11
    f4f4:	01c00793          	li	a5,28
    f4f8:	02d7ce63          	blt	a5,a3,f534 <__muldf3+0x1e0>
    f4fc:	01d00713          	li	a4,29
    f500:	ff850793          	addi	a5,a0,-8
    f504:	40d70733          	sub	a4,a4,a3
    f508:	00f41433          	sll	s0,s0,a5
    f50c:	00ebd733          	srl	a4,s7,a4
    f510:	00876433          	or	s0,a4,s0
    f514:	00fb97b3          	sll	a5,s7,a5
    f518:	c0d00713          	li	a4,-1011
    f51c:	40a70533          	sub	a0,a4,a0
    f520:	ee5ff06f          	j	f404 <__muldf3+0xb0>
    f524:	000b8513          	mv	a0,s7
    f528:	0b1030ef          	jal	ra,12dd8 <__clzsi2>
    f52c:	02050513          	addi	a0,a0,32
    f530:	fc1ff06f          	j	f4f0 <__muldf3+0x19c>
    f534:	fd850413          	addi	s0,a0,-40
    f538:	008b9433          	sll	s0,s7,s0
    f53c:	00000793          	li	a5,0
    f540:	fd9ff06f          	j	f518 <__muldf3+0x1c4>
    f544:	017467b3          	or	a5,s0,s7
    f548:	02078263          	beqz	a5,f56c <__muldf3+0x218>
    f54c:	000b8793          	mv	a5,s7
    f550:	7ff00513          	li	a0,2047
    f554:	00300713          	li	a4,3
    f558:	eb1ff06f          	j	f408 <__muldf3+0xb4>
    f55c:	00000413          	li	s0,0
    f560:	00000513          	li	a0,0
    f564:	00100713          	li	a4,1
    f568:	ea1ff06f          	j	f408 <__muldf3+0xb4>
    f56c:	00000413          	li	s0,0
    f570:	7ff00513          	li	a0,2047
    f574:	00200713          	li	a4,2
    f578:	e91ff06f          	j	f408 <__muldf3+0xb4>
    f57c:	00010ab7          	lui	s5,0x10
    f580:	fffa8e93          	addi	t4,s5,-1 # ffff <__multf3+0x2cf>
    f584:	01095f93          	srli	t6,s2,0x10
    f588:	01d7fa33          	and	s4,a5,t4
    f58c:	01d97933          	and	s2,s2,t4
    f590:	0107d293          	srli	t0,a5,0x10
    f594:	00090513          	mv	a0,s2
    f598:	000a0593          	mv	a1,s4
    f59c:	ea4f10ef          	jal	ra,c40 <__mulsi3>
    f5a0:	00050393          	mv	t2,a0
    f5a4:	00028593          	mv	a1,t0
    f5a8:	00090513          	mv	a0,s2
    f5ac:	e94f10ef          	jal	ra,c40 <__mulsi3>
    f5b0:	00050313          	mv	t1,a0
    f5b4:	000a0593          	mv	a1,s4
    f5b8:	000f8513          	mv	a0,t6
    f5bc:	e84f10ef          	jal	ra,c40 <__mulsi3>
    f5c0:	00050e13          	mv	t3,a0
    f5c4:	00028593          	mv	a1,t0
    f5c8:	000f8513          	mv	a0,t6
    f5cc:	e74f10ef          	jal	ra,c40 <__mulsi3>
    f5d0:	0103d713          	srli	a4,t2,0x10
    f5d4:	01c30333          	add	t1,t1,t3
    f5d8:	00670733          	add	a4,a4,t1
    f5dc:	00050f13          	mv	t5,a0
    f5e0:	01c77463          	bgeu	a4,t3,f5e8 <__muldf3+0x294>
    f5e4:	01550f33          	add	t5,a0,s5
    f5e8:	01d77e33          	and	t3,a4,t4
    f5ec:	01d3f3b3          	and	t2,t2,t4
    f5f0:	010e1e13          	slli	t3,t3,0x10
    f5f4:	007e0e33          	add	t3,t3,t2
    f5f8:	01045393          	srli	t2,s0,0x10
    f5fc:	01d47433          	and	s0,s0,t4
    f600:	01075a93          	srli	s5,a4,0x10
    f604:	00090513          	mv	a0,s2
    f608:	00040593          	mv	a1,s0
    f60c:	e34f10ef          	jal	ra,c40 <__mulsi3>
    f610:	00050e93          	mv	t4,a0
    f614:	00038593          	mv	a1,t2
    f618:	00090513          	mv	a0,s2
    f61c:	e24f10ef          	jal	ra,c40 <__mulsi3>
    f620:	00050793          	mv	a5,a0
    f624:	00040593          	mv	a1,s0
    f628:	000f8513          	mv	a0,t6
    f62c:	e14f10ef          	jal	ra,c40 <__mulsi3>
    f630:	00050313          	mv	t1,a0
    f634:	00038593          	mv	a1,t2
    f638:	000f8513          	mv	a0,t6
    f63c:	e04f10ef          	jal	ra,c40 <__mulsi3>
    f640:	010ed693          	srli	a3,t4,0x10
    f644:	006787b3          	add	a5,a5,t1
    f648:	00f686b3          	add	a3,a3,a5
    f64c:	00050713          	mv	a4,a0
    f650:	0066f663          	bgeu	a3,t1,f65c <__muldf3+0x308>
    f654:	000107b7          	lui	a5,0x10
    f658:	00f50733          	add	a4,a0,a5
    f65c:	00010937          	lui	s2,0x10
    f660:	fff90793          	addi	a5,s2,-1 # ffff <__multf3+0x2cf>
    f664:	0106df93          	srli	t6,a3,0x10
    f668:	00f6f6b3          	and	a3,a3,a5
    f66c:	01069693          	slli	a3,a3,0x10
    f670:	00fefeb3          	and	t4,t4,a5
    f674:	01d68eb3          	add	t4,a3,t4
    f678:	0104db13          	srli	s6,s1,0x10
    f67c:	00f4f4b3          	and	s1,s1,a5
    f680:	00ef8fb3          	add	t6,t6,a4
    f684:	01da8ab3          	add	s5,s5,t4
    f688:	00048513          	mv	a0,s1
    f68c:	000a0593          	mv	a1,s4
    f690:	db0f10ef          	jal	ra,c40 <__mulsi3>
    f694:	00050713          	mv	a4,a0
    f698:	00028593          	mv	a1,t0
    f69c:	00048513          	mv	a0,s1
    f6a0:	da0f10ef          	jal	ra,c40 <__mulsi3>
    f6a4:	00050313          	mv	t1,a0
    f6a8:	000a0593          	mv	a1,s4
    f6ac:	000b0513          	mv	a0,s6
    f6b0:	d90f10ef          	jal	ra,c40 <__mulsi3>
    f6b4:	00050a13          	mv	s4,a0
    f6b8:	00028593          	mv	a1,t0
    f6bc:	000b0513          	mv	a0,s6
    f6c0:	d80f10ef          	jal	ra,c40 <__mulsi3>
    f6c4:	01075793          	srli	a5,a4,0x10
    f6c8:	01430333          	add	t1,t1,s4
    f6cc:	006787b3          	add	a5,a5,t1
    f6d0:	00050613          	mv	a2,a0
    f6d4:	0147f463          	bgeu	a5,s4,f6dc <__muldf3+0x388>
    f6d8:	01250633          	add	a2,a0,s2
    f6dc:	00010a37          	lui	s4,0x10
    f6e0:	fffa0513          	addi	a0,s4,-1 # ffff <__multf3+0x2cf>
    f6e4:	00a7f333          	and	t1,a5,a0
    f6e8:	00a77733          	and	a4,a4,a0
    f6ec:	0107d293          	srli	t0,a5,0x10
    f6f0:	01031313          	slli	t1,t1,0x10
    f6f4:	00c282b3          	add	t0,t0,a2
    f6f8:	00e30333          	add	t1,t1,a4
    f6fc:	00048513          	mv	a0,s1
    f700:	00040593          	mv	a1,s0
    f704:	d3cf10ef          	jal	ra,c40 <__mulsi3>
    f708:	00050913          	mv	s2,a0
    f70c:	00038593          	mv	a1,t2
    f710:	00048513          	mv	a0,s1
    f714:	d2cf10ef          	jal	ra,c40 <__mulsi3>
    f718:	00050793          	mv	a5,a0
    f71c:	00040593          	mv	a1,s0
    f720:	000b0513          	mv	a0,s6
    f724:	d1cf10ef          	jal	ra,c40 <__mulsi3>
    f728:	00050493          	mv	s1,a0
    f72c:	00038593          	mv	a1,t2
    f730:	000b0513          	mv	a0,s6
    f734:	d0cf10ef          	jal	ra,c40 <__mulsi3>
    f738:	01095413          	srli	s0,s2,0x10
    f73c:	009787b3          	add	a5,a5,s1
    f740:	00f407b3          	add	a5,s0,a5
    f744:	00050393          	mv	t2,a0
    f748:	0097f463          	bgeu	a5,s1,f750 <__muldf3+0x3fc>
    f74c:	014503b3          	add	t2,a0,s4
    f750:	00010737          	lui	a4,0x10
    f754:	fff70713          	addi	a4,a4,-1 # ffff <__multf3+0x2cf>
    f758:	00e7f6b3          	and	a3,a5,a4
    f75c:	01069693          	slli	a3,a3,0x10
    f760:	00e97733          	and	a4,s2,a4
    f764:	015f0f33          	add	t5,t5,s5
    f768:	00e686b3          	add	a3,a3,a4
    f76c:	01df3eb3          	sltu	t4,t5,t4
    f770:	01f68733          	add	a4,a3,t6
    f774:	01d70433          	add	s0,a4,t4
    f778:	006f0f33          	add	t5,t5,t1
    f77c:	006f3333          	sltu	t1,t5,t1
    f780:	00540633          	add	a2,s0,t0
    f784:	006605b3          	add	a1,a2,t1
    f788:	01d43eb3          	sltu	t4,s0,t4
    f78c:	01f73733          	sltu	a4,a4,t6
    f790:	0107d413          	srli	s0,a5,0x10
    f794:	01d76733          	or	a4,a4,t4
    f798:	00563633          	sltu	a2,a2,t0
    f79c:	0065b333          	sltu	t1,a1,t1
    f7a0:	00870733          	add	a4,a4,s0
    f7a4:	00666333          	or	t1,a2,t1
    f7a8:	00670433          	add	s0,a4,t1
    f7ac:	00740433          	add	s0,s0,t2
    f7b0:	0175d793          	srli	a5,a1,0x17
    f7b4:	00941413          	slli	s0,s0,0x9
    f7b8:	00f46433          	or	s0,s0,a5
    f7bc:	009f1793          	slli	a5,t5,0x9
    f7c0:	01c7e7b3          	or	a5,a5,t3
    f7c4:	00f037b3          	snez	a5,a5
    f7c8:	017f5f13          	srli	t5,t5,0x17
    f7cc:	00959713          	slli	a4,a1,0x9
    f7d0:	01e7e7b3          	or	a5,a5,t5
    f7d4:	00e7e7b3          	or	a5,a5,a4
    f7d8:	01000737          	lui	a4,0x1000
    f7dc:	00e47733          	and	a4,s0,a4
    f7e0:	10070663          	beqz	a4,f8ec <__muldf3+0x598>
    f7e4:	0017d713          	srli	a4,a5,0x1
    f7e8:	0017f793          	andi	a5,a5,1
    f7ec:	00f767b3          	or	a5,a4,a5
    f7f0:	01f41713          	slli	a4,s0,0x1f
    f7f4:	00e7e7b3          	or	a5,a5,a4
    f7f8:	00145413          	srli	s0,s0,0x1
    f7fc:	3ff88693          	addi	a3,a7,1023
    f800:	0ed05a63          	blez	a3,f8f4 <__muldf3+0x5a0>
    f804:	0077f713          	andi	a4,a5,7
    f808:	02070063          	beqz	a4,f828 <__muldf3+0x4d4>
    f80c:	00f7f713          	andi	a4,a5,15
    f810:	00400613          	li	a2,4
    f814:	00c70a63          	beq	a4,a2,f828 <__muldf3+0x4d4>
    f818:	00478713          	addi	a4,a5,4 # 10004 <__multf3+0x2d4>
    f81c:	00f737b3          	sltu	a5,a4,a5
    f820:	00f40433          	add	s0,s0,a5
    f824:	00070793          	mv	a5,a4
    f828:	01000737          	lui	a4,0x1000
    f82c:	00e47733          	and	a4,s0,a4
    f830:	00070a63          	beqz	a4,f844 <__muldf3+0x4f0>
    f834:	ff000737          	lui	a4,0xff000
    f838:	fff70713          	addi	a4,a4,-1 # feffffff <__ctr0_io_space_begin+0xff0001ff>
    f83c:	00e47433          	and	s0,s0,a4
    f840:	40088693          	addi	a3,a7,1024
    f844:	7fe00713          	li	a4,2046
    f848:	16d74a63          	blt	a4,a3,f9bc <__muldf3+0x668>
    f84c:	0037d713          	srli	a4,a5,0x3
    f850:	01d41793          	slli	a5,s0,0x1d
    f854:	00e7e7b3          	or	a5,a5,a4
    f858:	00345413          	srli	s0,s0,0x3
    f85c:	01469713          	slli	a4,a3,0x14
    f860:	00c41413          	slli	s0,s0,0xc
    f864:	7ff006b7          	lui	a3,0x7ff00
    f868:	00d77733          	and	a4,a4,a3
    f86c:	00c45413          	srli	s0,s0,0xc
    f870:	00876433          	or	s0,a4,s0
    f874:	01f81813          	slli	a6,a6,0x1f
    f878:	02c12083          	lw	ra,44(sp)
    f87c:	01046733          	or	a4,s0,a6
    f880:	02812403          	lw	s0,40(sp)
    f884:	02412483          	lw	s1,36(sp)
    f888:	02012903          	lw	s2,32(sp)
    f88c:	01c12983          	lw	s3,28(sp)
    f890:	01812a03          	lw	s4,24(sp)
    f894:	01412a83          	lw	s5,20(sp)
    f898:	01012b03          	lw	s6,16(sp)
    f89c:	00c12b83          	lw	s7,12(sp)
    f8a0:	00078513          	mv	a0,a5
    f8a4:	00070593          	mv	a1,a4
    f8a8:	03010113          	addi	sp,sp,48
    f8ac:	00008067          	ret
    f8b0:	000a0813          	mv	a6,s4
    f8b4:	00048413          	mv	s0,s1
    f8b8:	00090793          	mv	a5,s2
    f8bc:	000b0713          	mv	a4,s6
    f8c0:	00200693          	li	a3,2
    f8c4:	0ed70c63          	beq	a4,a3,f9bc <__muldf3+0x668>
    f8c8:	00300693          	li	a3,3
    f8cc:	0cd70e63          	beq	a4,a3,f9a8 <__muldf3+0x654>
    f8d0:	00100693          	li	a3,1
    f8d4:	f2d714e3          	bne	a4,a3,f7fc <__muldf3+0x4a8>
    f8d8:	00000413          	li	s0,0
    f8dc:	00000793          	li	a5,0
    f8e0:	08c0006f          	j	f96c <__muldf3+0x618>
    f8e4:	000a8813          	mv	a6,s5
    f8e8:	fd9ff06f          	j	f8c0 <__muldf3+0x56c>
    f8ec:	00098893          	mv	a7,s3
    f8f0:	f0dff06f          	j	f7fc <__muldf3+0x4a8>
    f8f4:	00100613          	li	a2,1
    f8f8:	40d60633          	sub	a2,a2,a3
    f8fc:	03800713          	li	a4,56
    f900:	fcc74ce3          	blt	a4,a2,f8d8 <__muldf3+0x584>
    f904:	01f00713          	li	a4,31
    f908:	06c74663          	blt	a4,a2,f974 <__muldf3+0x620>
    f90c:	41e88893          	addi	a7,a7,1054
    f910:	01141733          	sll	a4,s0,a7
    f914:	00c7d6b3          	srl	a3,a5,a2
    f918:	011797b3          	sll	a5,a5,a7
    f91c:	00d76733          	or	a4,a4,a3
    f920:	00f037b3          	snez	a5,a5
    f924:	00f767b3          	or	a5,a4,a5
    f928:	00c45433          	srl	s0,s0,a2
    f92c:	0077f713          	andi	a4,a5,7
    f930:	02070063          	beqz	a4,f950 <__muldf3+0x5fc>
    f934:	00f7f713          	andi	a4,a5,15
    f938:	00400693          	li	a3,4
    f93c:	00d70a63          	beq	a4,a3,f950 <__muldf3+0x5fc>
    f940:	00478713          	addi	a4,a5,4
    f944:	00f737b3          	sltu	a5,a4,a5
    f948:	00f40433          	add	s0,s0,a5
    f94c:	00070793          	mv	a5,a4
    f950:	00800737          	lui	a4,0x800
    f954:	00e47733          	and	a4,s0,a4
    f958:	06071a63          	bnez	a4,f9cc <__muldf3+0x678>
    f95c:	01d41713          	slli	a4,s0,0x1d
    f960:	0037d793          	srli	a5,a5,0x3
    f964:	00f767b3          	or	a5,a4,a5
    f968:	00345413          	srli	s0,s0,0x3
    f96c:	00000693          	li	a3,0
    f970:	eedff06f          	j	f85c <__muldf3+0x508>
    f974:	fe100713          	li	a4,-31
    f978:	40d70733          	sub	a4,a4,a3
    f97c:	02000593          	li	a1,32
    f980:	00e45733          	srl	a4,s0,a4
    f984:	00000693          	li	a3,0
    f988:	00b60663          	beq	a2,a1,f994 <__muldf3+0x640>
    f98c:	43e88893          	addi	a7,a7,1086
    f990:	011416b3          	sll	a3,s0,a7
    f994:	00f6e7b3          	or	a5,a3,a5
    f998:	00f037b3          	snez	a5,a5
    f99c:	00f767b3          	or	a5,a4,a5
    f9a0:	00000413          	li	s0,0
    f9a4:	f89ff06f          	j	f92c <__muldf3+0x5d8>
    f9a8:	00080437          	lui	s0,0x80
    f9ac:	00000793          	li	a5,0
    f9b0:	7ff00693          	li	a3,2047
    f9b4:	00000813          	li	a6,0
    f9b8:	ea5ff06f          	j	f85c <__muldf3+0x508>
    f9bc:	00000413          	li	s0,0
    f9c0:	00000793          	li	a5,0
    f9c4:	7ff00693          	li	a3,2047
    f9c8:	e95ff06f          	j	f85c <__muldf3+0x508>
    f9cc:	00000413          	li	s0,0
    f9d0:	00000793          	li	a5,0
    f9d4:	00100693          	li	a3,1
    f9d8:	e85ff06f          	j	f85c <__muldf3+0x508>

0000f9dc <__eqtf2>:
    f9dc:	00c52783          	lw	a5,12(a0)
    f9e0:	0005af03          	lw	t5,0(a1) # 80000 <__crt0_copy_data_src_begin+0x6c1a4>
    f9e4:	0045af83          	lw	t6,4(a1)
    f9e8:	0085a283          	lw	t0,8(a1)
    f9ec:	00c5a583          	lw	a1,12(a1)
    f9f0:	00008737          	lui	a4,0x8
    f9f4:	0107d693          	srli	a3,a5,0x10
    f9f8:	fff70713          	addi	a4,a4,-1 # 7fff <__mdiff+0x1b3>
    f9fc:	01079813          	slli	a6,a5,0x10
    fa00:	01059e93          	slli	t4,a1,0x10
    fa04:	01f7d613          	srli	a2,a5,0x1f
    fa08:	00e6f6b3          	and	a3,a3,a4
    fa0c:	0105d793          	srli	a5,a1,0x10
    fa10:	00052883          	lw	a7,0(a0)
    fa14:	00452303          	lw	t1,4(a0)
    fa18:	00852e03          	lw	t3,8(a0)
    fa1c:	ff010113          	addi	sp,sp,-16
    fa20:	01085813          	srli	a6,a6,0x10
    fa24:	010ede93          	srli	t4,t4,0x10
    fa28:	00e7f7b3          	and	a5,a5,a4
    fa2c:	01f5d593          	srli	a1,a1,0x1f
    fa30:	02e69063          	bne	a3,a4,fa50 <__eqtf2+0x74>
    fa34:	0068e733          	or	a4,a7,t1
    fa38:	01c76733          	or	a4,a4,t3
    fa3c:	01076733          	or	a4,a4,a6
    fa40:	00100513          	li	a0,1
    fa44:	04071a63          	bnez	a4,fa98 <__eqtf2+0xbc>
    fa48:	04d79863          	bne	a5,a3,fa98 <__eqtf2+0xbc>
    fa4c:	0080006f          	j	fa54 <__eqtf2+0x78>
    fa50:	00e79c63          	bne	a5,a4,fa68 <__eqtf2+0x8c>
    fa54:	01ff6733          	or	a4,t5,t6
    fa58:	00576733          	or	a4,a4,t0
    fa5c:	01d76733          	or	a4,a4,t4
    fa60:	00100513          	li	a0,1
    fa64:	02071a63          	bnez	a4,fa98 <__eqtf2+0xbc>
    fa68:	00100513          	li	a0,1
    fa6c:	02d79663          	bne	a5,a3,fa98 <__eqtf2+0xbc>
    fa70:	03e89463          	bne	a7,t5,fa98 <__eqtf2+0xbc>
    fa74:	03f31263          	bne	t1,t6,fa98 <__eqtf2+0xbc>
    fa78:	025e1063          	bne	t3,t0,fa98 <__eqtf2+0xbc>
    fa7c:	01d81e63          	bne	a6,t4,fa98 <__eqtf2+0xbc>
    fa80:	02b60063          	beq	a2,a1,faa0 <__eqtf2+0xc4>
    fa84:	00079a63          	bnez	a5,fa98 <__eqtf2+0xbc>
    fa88:	0068e533          	or	a0,a7,t1
    fa8c:	01c56533          	or	a0,a0,t3
    fa90:	01056533          	or	a0,a0,a6
    fa94:	00a03533          	snez	a0,a0
    fa98:	01010113          	addi	sp,sp,16
    fa9c:	00008067          	ret
    faa0:	00000513          	li	a0,0
    faa4:	ff5ff06f          	j	fa98 <__eqtf2+0xbc>

0000faa8 <__getf2>:
    faa8:	00052f83          	lw	t6,0(a0)
    faac:	00452803          	lw	a6,4(a0)
    fab0:	00852e03          	lw	t3,8(a0)
    fab4:	00c52503          	lw	a0,12(a0)
    fab8:	00c5a683          	lw	a3,12(a1)
    fabc:	000087b7          	lui	a5,0x8
    fac0:	01055613          	srli	a2,a0,0x10
    fac4:	fff78793          	addi	a5,a5,-1 # 7fff <__mdiff+0x1b3>
    fac8:	01069313          	slli	t1,a3,0x10
    facc:	0106d713          	srli	a4,a3,0x10
    fad0:	0005a283          	lw	t0,0(a1)
    fad4:	0045a883          	lw	a7,4(a1)
    fad8:	0085ae83          	lw	t4,8(a1)
    fadc:	00f67633          	and	a2,a2,a5
    fae0:	01051593          	slli	a1,a0,0x10
    fae4:	ff010113          	addi	sp,sp,-16
    fae8:	0105d593          	srli	a1,a1,0x10
    faec:	01f55513          	srli	a0,a0,0x1f
    faf0:	01035313          	srli	t1,t1,0x10
    faf4:	00f77733          	and	a4,a4,a5
    faf8:	01f6d693          	srli	a3,a3,0x1f
    fafc:	00f61e63          	bne	a2,a5,fb18 <__getf2+0x70>
    fb00:	01f867b3          	or	a5,a6,t6
    fb04:	01c7e7b3          	or	a5,a5,t3
    fb08:	00b7e7b3          	or	a5,a5,a1
    fb0c:	0c078863          	beqz	a5,fbdc <__getf2+0x134>
    fb10:	ffe00513          	li	a0,-2
    fb14:	0640006f          	j	fb78 <__getf2+0xd0>
    fb18:	00f71a63          	bne	a4,a5,fb2c <__getf2+0x84>
    fb1c:	0112e7b3          	or	a5,t0,a7
    fb20:	01d7e7b3          	or	a5,a5,t4
    fb24:	0067e7b3          	or	a5,a5,t1
    fb28:	fe0794e3          	bnez	a5,fb10 <__getf2+0x68>
    fb2c:	0a061a63          	bnez	a2,fbe0 <__getf2+0x138>
    fb30:	01f867b3          	or	a5,a6,t6
    fb34:	01c7e7b3          	or	a5,a5,t3
    fb38:	00b7e7b3          	or	a5,a5,a1
    fb3c:	0017b793          	seqz	a5,a5
    fb40:	00071a63          	bnez	a4,fb54 <__getf2+0xac>
    fb44:	0112ef33          	or	t5,t0,a7
    fb48:	01df6f33          	or	t5,t5,t4
    fb4c:	006f6f33          	or	t5,t5,t1
    fb50:	060f0a63          	beqz	t5,fbc4 <__getf2+0x11c>
    fb54:	00079c63          	bnez	a5,fb6c <__getf2+0xc4>
    fb58:	00a69463          	bne	a3,a0,fb60 <__getf2+0xb8>
    fb5c:	02c75263          	bge	a4,a2,fb80 <__getf2+0xd8>
    fb60:	04050e63          	beqz	a0,fbbc <__getf2+0x114>
    fb64:	fff00513          	li	a0,-1
    fb68:	0100006f          	j	fb78 <__getf2+0xd0>
    fb6c:	fff00513          	li	a0,-1
    fb70:	00068463          	beqz	a3,fb78 <__getf2+0xd0>
    fb74:	00068513          	mv	a0,a3
    fb78:	01010113          	addi	sp,sp,16
    fb7c:	00008067          	ret
    fb80:	00e65663          	bge	a2,a4,fb8c <__getf2+0xe4>
    fb84:	fe051ae3          	bnez	a0,fb78 <__getf2+0xd0>
    fb88:	fddff06f          	j	fb64 <__getf2+0xbc>
    fb8c:	fcb36ae3          	bltu	t1,a1,fb60 <__getf2+0xb8>
    fb90:	02659e63          	bne	a1,t1,fbcc <__getf2+0x124>
    fb94:	fdcee6e3          	bltu	t4,t3,fb60 <__getf2+0xb8>
    fb98:	03de1e63          	bne	t3,t4,fbd4 <__getf2+0x12c>
    fb9c:	fd08e2e3          	bltu	a7,a6,fb60 <__getf2+0xb8>
    fba0:	01181463          	bne	a6,a7,fba8 <__getf2+0x100>
    fba4:	fbf2eee3          	bltu	t0,t6,fb60 <__getf2+0xb8>
    fba8:	fd186ee3          	bltu	a6,a7,fb84 <__getf2+0xdc>
    fbac:	01181463          	bne	a6,a7,fbb4 <__getf2+0x10c>
    fbb0:	fc5feae3          	bltu	t6,t0,fb84 <__getf2+0xdc>
    fbb4:	00000513          	li	a0,0
    fbb8:	fc1ff06f          	j	fb78 <__getf2+0xd0>
    fbbc:	00100513          	li	a0,1
    fbc0:	fb9ff06f          	j	fb78 <__getf2+0xd0>
    fbc4:	fe0798e3          	bnez	a5,fbb4 <__getf2+0x10c>
    fbc8:	f99ff06f          	j	fb60 <__getf2+0xb8>
    fbcc:	fa65ece3          	bltu	a1,t1,fb84 <__getf2+0xdc>
    fbd0:	fe5ff06f          	j	fbb4 <__getf2+0x10c>
    fbd4:	fbde68e3          	bltu	t3,t4,fb84 <__getf2+0xdc>
    fbd8:	fddff06f          	j	fbb4 <__getf2+0x10c>
    fbdc:	f4c700e3          	beq	a4,a2,fb1c <__getf2+0x74>
    fbe0:	f6071ce3          	bnez	a4,fb58 <__getf2+0xb0>
    fbe4:	00000793          	li	a5,0
    fbe8:	f5dff06f          	j	fb44 <__getf2+0x9c>

0000fbec <__letf2>:
    fbec:	00052f83          	lw	t6,0(a0)
    fbf0:	00452803          	lw	a6,4(a0)
    fbf4:	00852e03          	lw	t3,8(a0)
    fbf8:	00c52503          	lw	a0,12(a0)
    fbfc:	00c5a683          	lw	a3,12(a1)
    fc00:	000087b7          	lui	a5,0x8
    fc04:	01055613          	srli	a2,a0,0x10
    fc08:	fff78793          	addi	a5,a5,-1 # 7fff <__mdiff+0x1b3>
    fc0c:	01069313          	slli	t1,a3,0x10
    fc10:	0106d713          	srli	a4,a3,0x10
    fc14:	0005a283          	lw	t0,0(a1)
    fc18:	0045a883          	lw	a7,4(a1)
    fc1c:	0085ae83          	lw	t4,8(a1)
    fc20:	00f67633          	and	a2,a2,a5
    fc24:	01051593          	slli	a1,a0,0x10
    fc28:	ff010113          	addi	sp,sp,-16
    fc2c:	0105d593          	srli	a1,a1,0x10
    fc30:	01f55513          	srli	a0,a0,0x1f
    fc34:	01035313          	srli	t1,t1,0x10
    fc38:	00f77733          	and	a4,a4,a5
    fc3c:	01f6d693          	srli	a3,a3,0x1f
    fc40:	00f61e63          	bne	a2,a5,fc5c <__letf2+0x70>
    fc44:	01f867b3          	or	a5,a6,t6
    fc48:	01c7e7b3          	or	a5,a5,t3
    fc4c:	00b7e7b3          	or	a5,a5,a1
    fc50:	0c078863          	beqz	a5,fd20 <__letf2+0x134>
    fc54:	00200513          	li	a0,2
    fc58:	0640006f          	j	fcbc <__letf2+0xd0>
    fc5c:	00f71a63          	bne	a4,a5,fc70 <__letf2+0x84>
    fc60:	0112e7b3          	or	a5,t0,a7
    fc64:	01d7e7b3          	or	a5,a5,t4
    fc68:	0067e7b3          	or	a5,a5,t1
    fc6c:	fe0794e3          	bnez	a5,fc54 <__letf2+0x68>
    fc70:	0a061a63          	bnez	a2,fd24 <__letf2+0x138>
    fc74:	01f867b3          	or	a5,a6,t6
    fc78:	01c7e7b3          	or	a5,a5,t3
    fc7c:	00b7e7b3          	or	a5,a5,a1
    fc80:	0017b793          	seqz	a5,a5
    fc84:	00071a63          	bnez	a4,fc98 <__letf2+0xac>
    fc88:	0112ef33          	or	t5,t0,a7
    fc8c:	01df6f33          	or	t5,t5,t4
    fc90:	006f6f33          	or	t5,t5,t1
    fc94:	060f0a63          	beqz	t5,fd08 <__letf2+0x11c>
    fc98:	00079c63          	bnez	a5,fcb0 <__letf2+0xc4>
    fc9c:	00a69463          	bne	a3,a0,fca4 <__letf2+0xb8>
    fca0:	02c75263          	bge	a4,a2,fcc4 <__letf2+0xd8>
    fca4:	04050e63          	beqz	a0,fd00 <__letf2+0x114>
    fca8:	fff00513          	li	a0,-1
    fcac:	0100006f          	j	fcbc <__letf2+0xd0>
    fcb0:	fff00513          	li	a0,-1
    fcb4:	00068463          	beqz	a3,fcbc <__letf2+0xd0>
    fcb8:	00068513          	mv	a0,a3
    fcbc:	01010113          	addi	sp,sp,16
    fcc0:	00008067          	ret
    fcc4:	00e65663          	bge	a2,a4,fcd0 <__letf2+0xe4>
    fcc8:	fe051ae3          	bnez	a0,fcbc <__letf2+0xd0>
    fccc:	fddff06f          	j	fca8 <__letf2+0xbc>
    fcd0:	fcb36ae3          	bltu	t1,a1,fca4 <__letf2+0xb8>
    fcd4:	02659e63          	bne	a1,t1,fd10 <__letf2+0x124>
    fcd8:	fdcee6e3          	bltu	t4,t3,fca4 <__letf2+0xb8>
    fcdc:	03de1e63          	bne	t3,t4,fd18 <__letf2+0x12c>
    fce0:	fd08e2e3          	bltu	a7,a6,fca4 <__letf2+0xb8>
    fce4:	01181463          	bne	a6,a7,fcec <__letf2+0x100>
    fce8:	fbf2eee3          	bltu	t0,t6,fca4 <__letf2+0xb8>
    fcec:	fd186ee3          	bltu	a6,a7,fcc8 <__letf2+0xdc>
    fcf0:	01181463          	bne	a6,a7,fcf8 <__letf2+0x10c>
    fcf4:	fc5feae3          	bltu	t6,t0,fcc8 <__letf2+0xdc>
    fcf8:	00000513          	li	a0,0
    fcfc:	fc1ff06f          	j	fcbc <__letf2+0xd0>
    fd00:	00100513          	li	a0,1
    fd04:	fb9ff06f          	j	fcbc <__letf2+0xd0>
    fd08:	fe0798e3          	bnez	a5,fcf8 <__letf2+0x10c>
    fd0c:	f99ff06f          	j	fca4 <__letf2+0xb8>
    fd10:	fa65ece3          	bltu	a1,t1,fcc8 <__letf2+0xdc>
    fd14:	fe5ff06f          	j	fcf8 <__letf2+0x10c>
    fd18:	fbde68e3          	bltu	t3,t4,fcc8 <__letf2+0xdc>
    fd1c:	fddff06f          	j	fcf8 <__letf2+0x10c>
    fd20:	f4c700e3          	beq	a4,a2,fc60 <__letf2+0x74>
    fd24:	f6071ce3          	bnez	a4,fc9c <__letf2+0xb0>
    fd28:	00000793          	li	a5,0
    fd2c:	f5dff06f          	j	fc88 <__letf2+0x9c>

0000fd30 <__multf3>:
    fd30:	f6010113          	addi	sp,sp,-160
    fd34:	09412423          	sw	s4,136(sp)
    fd38:	00c5aa03          	lw	s4,12(a1)
    fd3c:	0005a783          	lw	a5,0(a1)
    fd40:	0045a683          	lw	a3,4(a1)
    fd44:	08912a23          	sw	s1,148(sp)
    fd48:	00050493          	mv	s1,a0
    fd4c:	0085a503          	lw	a0,8(a1)
    fd50:	010a1713          	slli	a4,s4,0x10
    fd54:	08812c23          	sw	s0,152(sp)
    fd58:	09312623          	sw	s3,140(sp)
    fd5c:	00062403          	lw	s0,0(a2)
    fd60:	00c62983          	lw	s3,12(a2)
    fd64:	09512223          	sw	s5,132(sp)
    fd68:	09612023          	sw	s6,128(sp)
    fd6c:	00862a83          	lw	s5,8(a2)
    fd70:	00462b03          	lw	s6,4(a2)
    fd74:	00008637          	lui	a2,0x8
    fd78:	09212823          	sw	s2,144(sp)
    fd7c:	01075713          	srli	a4,a4,0x10
    fd80:	010a5913          	srli	s2,s4,0x10
    fd84:	fff60613          	addi	a2,a2,-1 # 7fff <__mdiff+0x1b3>
    fd88:	05412623          	sw	s4,76(sp)
    fd8c:	08112e23          	sw	ra,156(sp)
    fd90:	07712e23          	sw	s7,124(sp)
    fd94:	07812c23          	sw	s8,120(sp)
    fd98:	07912a23          	sw	s9,116(sp)
    fd9c:	07a12823          	sw	s10,112(sp)
    fda0:	07b12623          	sw	s11,108(sp)
    fda4:	04f12023          	sw	a5,64(sp)
    fda8:	04d12223          	sw	a3,68(sp)
    fdac:	04a12423          	sw	a0,72(sp)
    fdb0:	00f12823          	sw	a5,16(sp)
    fdb4:	00d12a23          	sw	a3,20(sp)
    fdb8:	00a12c23          	sw	a0,24(sp)
    fdbc:	00e12e23          	sw	a4,28(sp)
    fdc0:	00c97933          	and	s2,s2,a2
    fdc4:	01fa5a13          	srli	s4,s4,0x1f
    fdc8:	12090463          	beqz	s2,fef0 <__multf3+0x1c0>
    fdcc:	22c90c63          	beq	s2,a2,10004 <__multf3+0x2d4>
    fdd0:	000107b7          	lui	a5,0x10
    fdd4:	00f767b3          	or	a5,a4,a5
    fdd8:	00f12e23          	sw	a5,28(sp)
    fddc:	01010613          	addi	a2,sp,16
    fde0:	01c10793          	addi	a5,sp,28
    fde4:	0007a703          	lw	a4,0(a5) # 10000 <__multf3+0x2d0>
    fde8:	ffc7a683          	lw	a3,-4(a5)
    fdec:	ffc78793          	addi	a5,a5,-4
    fdf0:	00371713          	slli	a4,a4,0x3
    fdf4:	01d6d693          	srli	a3,a3,0x1d
    fdf8:	00d76733          	or	a4,a4,a3
    fdfc:	00e7a223          	sw	a4,4(a5)
    fe00:	fef612e3          	bne	a2,a5,fde4 <__multf3+0xb4>
    fe04:	01012783          	lw	a5,16(sp)
    fe08:	ffffc537          	lui	a0,0xffffc
    fe0c:	00150513          	addi	a0,a0,1 # ffffc001 <__ctr0_io_space_begin+0xffffc201>
    fe10:	00379793          	slli	a5,a5,0x3
    fe14:	00f12823          	sw	a5,16(sp)
    fe18:	00a90933          	add	s2,s2,a0
    fe1c:	00000b93          	li	s7,0
    fe20:	01099513          	slli	a0,s3,0x10
    fe24:	00008737          	lui	a4,0x8
    fe28:	0109d793          	srli	a5,s3,0x10
    fe2c:	01055513          	srli	a0,a0,0x10
    fe30:	fff70713          	addi	a4,a4,-1 # 7fff <__mdiff+0x1b3>
    fe34:	05312623          	sw	s3,76(sp)
    fe38:	04812023          	sw	s0,64(sp)
    fe3c:	05612223          	sw	s6,68(sp)
    fe40:	05512423          	sw	s5,72(sp)
    fe44:	02812023          	sw	s0,32(sp)
    fe48:	03612223          	sw	s6,36(sp)
    fe4c:	03512423          	sw	s5,40(sp)
    fe50:	02a12623          	sw	a0,44(sp)
    fe54:	00e7f7b3          	and	a5,a5,a4
    fe58:	01f9d993          	srli	s3,s3,0x1f
    fe5c:	1c078863          	beqz	a5,1002c <__multf3+0x2fc>
    fe60:	2ee78063          	beq	a5,a4,10140 <__multf3+0x410>
    fe64:	00010ab7          	lui	s5,0x10
    fe68:	01556ab3          	or	s5,a0,s5
    fe6c:	03512623          	sw	s5,44(sp)
    fe70:	02010593          	addi	a1,sp,32
    fe74:	02c10713          	addi	a4,sp,44
    fe78:	00072683          	lw	a3,0(a4)
    fe7c:	ffc72603          	lw	a2,-4(a4)
    fe80:	ffc70713          	addi	a4,a4,-4
    fe84:	00369693          	slli	a3,a3,0x3
    fe88:	01d65613          	srli	a2,a2,0x1d
    fe8c:	00c6e6b3          	or	a3,a3,a2
    fe90:	00d72223          	sw	a3,4(a4)
    fe94:	fee592e3          	bne	a1,a4,fe78 <__multf3+0x148>
    fe98:	02012703          	lw	a4,32(sp)
    fe9c:	ffffc537          	lui	a0,0xffffc
    fea0:	00150513          	addi	a0,a0,1 # ffffc001 <__ctr0_io_space_begin+0xffffc201>
    fea4:	00371713          	slli	a4,a4,0x3
    fea8:	02e12023          	sw	a4,32(sp)
    feac:	00a787b3          	add	a5,a5,a0
    feb0:	00000713          	li	a4,0
    feb4:	012787b3          	add	a5,a5,s2
    feb8:	00f12423          	sw	a5,8(sp)
    febc:	00178c93          	addi	s9,a5,1
    fec0:	002b9793          	slli	a5,s7,0x2
    fec4:	00e7e7b3          	or	a5,a5,a4
    fec8:	fff78793          	addi	a5,a5,-1
    fecc:	00e00693          	li	a3,14
    fed0:	013a4433          	xor	s0,s4,s3
    fed4:	28f6ea63          	bltu	a3,a5,10168 <__multf3+0x438>
    fed8:	000146b7          	lui	a3,0x14
    fedc:	00279793          	slli	a5,a5,0x2
    fee0:	d2468693          	addi	a3,a3,-732 # 13d24 <_ctype_+0x17c>
    fee4:	00d787b3          	add	a5,a5,a3
    fee8:	0007a783          	lw	a5,0(a5)
    feec:	00078067          	jr	a5
    fef0:	00d7e633          	or	a2,a5,a3
    fef4:	00a66633          	or	a2,a2,a0
    fef8:	00e66633          	or	a2,a2,a4
    fefc:	12060263          	beqz	a2,10020 <__multf3+0x2f0>
    ff00:	08070063          	beqz	a4,ff80 <__multf3+0x250>
    ff04:	00070513          	mv	a0,a4
    ff08:	6d1020ef          	jal	ra,12dd8 <__clzsi2>
    ff0c:	00050b93          	mv	s7,a0
    ff10:	ff4b8713          	addi	a4,s7,-12
    ff14:	40575613          	srai	a2,a4,0x5
    ff18:	01f77713          	andi	a4,a4,31
    ff1c:	40c007b3          	neg	a5,a2
    ff20:	08070a63          	beqz	a4,ffb4 <__multf3+0x284>
    ff24:	00279793          	slli	a5,a5,0x2
    ff28:	02000513          	li	a0,32
    ff2c:	01010893          	addi	a7,sp,16
    ff30:	00c78793          	addi	a5,a5,12
    ff34:	40e50533          	sub	a0,a0,a4
    ff38:	00f887b3          	add	a5,a7,a5
    ff3c:	00261593          	slli	a1,a2,0x2
    ff40:	0af89063          	bne	a7,a5,ffe0 <__multf3+0x2b0>
    ff44:	06010793          	addi	a5,sp,96
    ff48:	00b785b3          	add	a1,a5,a1
    ff4c:	01012783          	lw	a5,16(sp)
    ff50:	fff60613          	addi	a2,a2,-1
    ff54:	00e79733          	sll	a4,a5,a4
    ff58:	fae5a823          	sw	a4,-80(a1)
    ff5c:	00160613          	addi	a2,a2,1
    ff60:	ffffc937          	lui	s2,0xffffc
    ff64:	00261613          	slli	a2,a2,0x2
    ff68:	00000593          	li	a1,0
    ff6c:	01010513          	addi	a0,sp,16
    ff70:	01190913          	addi	s2,s2,17 # ffffc011 <__ctr0_io_space_begin+0xffffc211>
    ff74:	964fa0ef          	jal	ra,a0d8 <memset>
    ff78:	41790933          	sub	s2,s2,s7
    ff7c:	ea1ff06f          	j	fe1c <__multf3+0xec>
    ff80:	00050863          	beqz	a0,ff90 <__multf3+0x260>
    ff84:	655020ef          	jal	ra,12dd8 <__clzsi2>
    ff88:	02050b93          	addi	s7,a0,32
    ff8c:	f85ff06f          	j	ff10 <__multf3+0x1e0>
    ff90:	00068a63          	beqz	a3,ffa4 <__multf3+0x274>
    ff94:	00068513          	mv	a0,a3
    ff98:	641020ef          	jal	ra,12dd8 <__clzsi2>
    ff9c:	04050b93          	addi	s7,a0,64
    ffa0:	f71ff06f          	j	ff10 <__multf3+0x1e0>
    ffa4:	00078513          	mv	a0,a5
    ffa8:	631020ef          	jal	ra,12dd8 <__clzsi2>
    ffac:	06050b93          	addi	s7,a0,96
    ffb0:	f61ff06f          	j	ff10 <__multf3+0x1e0>
    ffb4:	01c10713          	addi	a4,sp,28
    ffb8:	00279793          	slli	a5,a5,0x2
    ffbc:	00300693          	li	a3,3
    ffc0:	00f705b3          	add	a1,a4,a5
    ffc4:	0005a583          	lw	a1,0(a1)
    ffc8:	fff68693          	addi	a3,a3,-1
    ffcc:	ffc70713          	addi	a4,a4,-4
    ffd0:	00b72223          	sw	a1,4(a4)
    ffd4:	fec6d6e3          	bge	a3,a2,ffc0 <__multf3+0x290>
    ffd8:	fff60613          	addi	a2,a2,-1
    ffdc:	f81ff06f          	j	ff5c <__multf3+0x22c>
    ffe0:	0007a683          	lw	a3,0(a5)
    ffe4:	ffc7a803          	lw	a6,-4(a5)
    ffe8:	00b78333          	add	t1,a5,a1
    ffec:	00e696b3          	sll	a3,a3,a4
    fff0:	00a85833          	srl	a6,a6,a0
    fff4:	0106e6b3          	or	a3,a3,a6
    fff8:	00d32023          	sw	a3,0(t1)
    fffc:	ffc78793          	addi	a5,a5,-4
   10000:	f41ff06f          	j	ff40 <__multf3+0x210>
   10004:	00d7e7b3          	or	a5,a5,a3
   10008:	00a7e7b3          	or	a5,a5,a0
   1000c:	00e7e7b3          	or	a5,a5,a4
   10010:	00300b93          	li	s7,3
   10014:	e00796e3          	bnez	a5,fe20 <__multf3+0xf0>
   10018:	00200b93          	li	s7,2
   1001c:	e05ff06f          	j	fe20 <__multf3+0xf0>
   10020:	00000913          	li	s2,0
   10024:	00100b93          	li	s7,1
   10028:	df9ff06f          	j	fe20 <__multf3+0xf0>
   1002c:	016467b3          	or	a5,s0,s6
   10030:	0157e7b3          	or	a5,a5,s5
   10034:	00a7e7b3          	or	a5,a5,a0
   10038:	12078263          	beqz	a5,1015c <__multf3+0x42c>
   1003c:	06050e63          	beqz	a0,100b8 <__multf3+0x388>
   10040:	599020ef          	jal	ra,12dd8 <__clzsi2>
   10044:	00050413          	mv	s0,a0
   10048:	ff440793          	addi	a5,s0,-12 # 7fff4 <__crt0_copy_data_src_begin+0x6c198>
   1004c:	4057d613          	srai	a2,a5,0x5
   10050:	01f7f793          	andi	a5,a5,31
   10054:	40c00733          	neg	a4,a2
   10058:	08078c63          	beqz	a5,100f0 <__multf3+0x3c0>
   1005c:	00271713          	slli	a4,a4,0x2
   10060:	02000513          	li	a0,32
   10064:	02010893          	addi	a7,sp,32
   10068:	00c70713          	addi	a4,a4,12
   1006c:	40f50533          	sub	a0,a0,a5
   10070:	00e88733          	add	a4,a7,a4
   10074:	00261593          	slli	a1,a2,0x2
   10078:	0ae89263          	bne	a7,a4,1011c <__multf3+0x3ec>
   1007c:	06010713          	addi	a4,sp,96
   10080:	00b705b3          	add	a1,a4,a1
   10084:	02012703          	lw	a4,32(sp)
   10088:	fff60613          	addi	a2,a2,-1
   1008c:	00f717b3          	sll	a5,a4,a5
   10090:	fcf5a023          	sw	a5,-64(a1)
   10094:	00160613          	addi	a2,a2,1
   10098:	00261613          	slli	a2,a2,0x2
   1009c:	00000593          	li	a1,0
   100a0:	02010513          	addi	a0,sp,32
   100a4:	834fa0ef          	jal	ra,a0d8 <memset>
   100a8:	ffffc7b7          	lui	a5,0xffffc
   100ac:	01178793          	addi	a5,a5,17 # ffffc011 <__ctr0_io_space_begin+0xffffc211>
   100b0:	408787b3          	sub	a5,a5,s0
   100b4:	dfdff06f          	j	feb0 <__multf3+0x180>
   100b8:	000a8a63          	beqz	s5,100cc <__multf3+0x39c>
   100bc:	000a8513          	mv	a0,s5
   100c0:	519020ef          	jal	ra,12dd8 <__clzsi2>
   100c4:	02050413          	addi	s0,a0,32
   100c8:	f81ff06f          	j	10048 <__multf3+0x318>
   100cc:	000b0a63          	beqz	s6,100e0 <__multf3+0x3b0>
   100d0:	000b0513          	mv	a0,s6
   100d4:	505020ef          	jal	ra,12dd8 <__clzsi2>
   100d8:	04050413          	addi	s0,a0,64
   100dc:	f6dff06f          	j	10048 <__multf3+0x318>
   100e0:	00040513          	mv	a0,s0
   100e4:	4f5020ef          	jal	ra,12dd8 <__clzsi2>
   100e8:	06050413          	addi	s0,a0,96
   100ec:	f5dff06f          	j	10048 <__multf3+0x318>
   100f0:	02c10793          	addi	a5,sp,44
   100f4:	00271713          	slli	a4,a4,0x2
   100f8:	00300693          	li	a3,3
   100fc:	00e785b3          	add	a1,a5,a4
   10100:	0005a583          	lw	a1,0(a1)
   10104:	fff68693          	addi	a3,a3,-1
   10108:	ffc78793          	addi	a5,a5,-4
   1010c:	00b7a223          	sw	a1,4(a5)
   10110:	fec6d6e3          	bge	a3,a2,100fc <__multf3+0x3cc>
   10114:	fff60613          	addi	a2,a2,-1
   10118:	f7dff06f          	j	10094 <__multf3+0x364>
   1011c:	00072683          	lw	a3,0(a4)
   10120:	ffc72803          	lw	a6,-4(a4)
   10124:	00b70333          	add	t1,a4,a1
   10128:	00f696b3          	sll	a3,a3,a5
   1012c:	00a85833          	srl	a6,a6,a0
   10130:	0106e6b3          	or	a3,a3,a6
   10134:	00d32023          	sw	a3,0(t1)
   10138:	ffc70713          	addi	a4,a4,-4
   1013c:	f3dff06f          	j	10078 <__multf3+0x348>
   10140:	01646433          	or	s0,s0,s6
   10144:	01546ab3          	or	s5,s0,s5
   10148:	00aaeab3          	or	s5,s5,a0
   1014c:	00300713          	li	a4,3
   10150:	d60a92e3          	bnez	s5,feb4 <__multf3+0x184>
   10154:	00200713          	li	a4,2
   10158:	d5dff06f          	j	feb4 <__multf3+0x184>
   1015c:	00000793          	li	a5,0
   10160:	00100713          	li	a4,1
   10164:	d51ff06f          	j	feb4 <__multf3+0x184>
   10168:	01012283          	lw	t0,16(sp)
   1016c:	02012f83          	lw	t6,32(sp)
   10170:	00010e37          	lui	t3,0x10
   10174:	fffe0793          	addi	a5,t3,-1 # ffff <__multf3+0x2cf>
   10178:	00f2f833          	and	a6,t0,a5
   1017c:	00fff7b3          	and	a5,t6,a5
   10180:	0102df13          	srli	t5,t0,0x10
   10184:	010fde93          	srli	t4,t6,0x10
   10188:	00080513          	mv	a0,a6
   1018c:	00078593          	mv	a1,a5
   10190:	ab1f00ef          	jal	ra,c40 <__mulsi3>
   10194:	00050893          	mv	a7,a0
   10198:	000e8593          	mv	a1,t4
   1019c:	00080513          	mv	a0,a6
   101a0:	aa1f00ef          	jal	ra,c40 <__mulsi3>
   101a4:	00050813          	mv	a6,a0
   101a8:	00078593          	mv	a1,a5
   101ac:	000f0513          	mv	a0,t5
   101b0:	a91f00ef          	jal	ra,c40 <__mulsi3>
   101b4:	00050313          	mv	t1,a0
   101b8:	000e8593          	mv	a1,t4
   101bc:	000f0513          	mv	a0,t5
   101c0:	a81f00ef          	jal	ra,c40 <__mulsi3>
   101c4:	0108d713          	srli	a4,a7,0x10
   101c8:	00680833          	add	a6,a6,t1
   101cc:	01070733          	add	a4,a4,a6
   101d0:	00050793          	mv	a5,a0
   101d4:	00677463          	bgeu	a4,t1,101dc <__multf3+0x4ac>
   101d8:	01c507b3          	add	a5,a0,t3
   101dc:	01075513          	srli	a0,a4,0x10
   101e0:	00f507b3          	add	a5,a0,a5
   101e4:	00010e37          	lui	t3,0x10
   101e8:	02412e83          	lw	t4,36(sp)
   101ec:	04f12223          	sw	a5,68(sp)
   101f0:	fffe0793          	addi	a5,t3,-1 # ffff <__multf3+0x2cf>
   101f4:	00f77733          	and	a4,a4,a5
   101f8:	00f8f8b3          	and	a7,a7,a5
   101fc:	01071713          	slli	a4,a4,0x10
   10200:	01170733          	add	a4,a4,a7
   10204:	00f2f833          	and	a6,t0,a5
   10208:	00fef3b3          	and	t2,t4,a5
   1020c:	04e12023          	sw	a4,64(sp)
   10210:	010edf13          	srli	t5,t4,0x10
   10214:	0102d713          	srli	a4,t0,0x10
   10218:	00080513          	mv	a0,a6
   1021c:	00038593          	mv	a1,t2
   10220:	a21f00ef          	jal	ra,c40 <__mulsi3>
   10224:	00050313          	mv	t1,a0
   10228:	000f0593          	mv	a1,t5
   1022c:	00080513          	mv	a0,a6
   10230:	a11f00ef          	jal	ra,c40 <__mulsi3>
   10234:	00050813          	mv	a6,a0
   10238:	00038593          	mv	a1,t2
   1023c:	00070513          	mv	a0,a4
   10240:	a01f00ef          	jal	ra,c40 <__mulsi3>
   10244:	00050893          	mv	a7,a0
   10248:	000f0593          	mv	a1,t5
   1024c:	00070513          	mv	a0,a4
   10250:	9f1f00ef          	jal	ra,c40 <__mulsi3>
   10254:	01035713          	srli	a4,t1,0x10
   10258:	01180833          	add	a6,a6,a7
   1025c:	01070733          	add	a4,a4,a6
   10260:	00050a13          	mv	s4,a0
   10264:	01177463          	bgeu	a4,a7,1026c <__multf3+0x53c>
   10268:	01c50a33          	add	s4,a0,t3
   1026c:	01412f03          	lw	t5,20(sp)
   10270:	00f778b3          	and	a7,a4,a5
   10274:	01075693          	srli	a3,a4,0x10
   10278:	00f37333          	and	t1,t1,a5
   1027c:	00ff7733          	and	a4,t5,a5
   10280:	01089893          	slli	a7,a7,0x10
   10284:	00fff7b3          	and	a5,t6,a5
   10288:	00d12623          	sw	a3,12(sp)
   1028c:	006888b3          	add	a7,a7,t1
   10290:	010f5393          	srli	t2,t5,0x10
   10294:	010fde13          	srli	t3,t6,0x10
   10298:	00070513          	mv	a0,a4
   1029c:	00078593          	mv	a1,a5
   102a0:	9a1f00ef          	jal	ra,c40 <__mulsi3>
   102a4:	00050813          	mv	a6,a0
   102a8:	000e0593          	mv	a1,t3
   102ac:	00070513          	mv	a0,a4
   102b0:	991f00ef          	jal	ra,c40 <__mulsi3>
   102b4:	00050713          	mv	a4,a0
   102b8:	00078593          	mv	a1,a5
   102bc:	00038513          	mv	a0,t2
   102c0:	981f00ef          	jal	ra,c40 <__mulsi3>
   102c4:	00050313          	mv	t1,a0
   102c8:	000e0593          	mv	a1,t3
   102cc:	00038513          	mv	a0,t2
   102d0:	971f00ef          	jal	ra,c40 <__mulsi3>
   102d4:	01085793          	srli	a5,a6,0x10
   102d8:	00670733          	add	a4,a4,t1
   102dc:	00e787b3          	add	a5,a5,a4
   102e0:	00050b93          	mv	s7,a0
   102e4:	0067f663          	bgeu	a5,t1,102f0 <__multf3+0x5c0>
   102e8:	00010737          	lui	a4,0x10
   102ec:	00e50bb3          	add	s7,a0,a4
   102f0:	00010e37          	lui	t3,0x10
   102f4:	fffe0593          	addi	a1,t3,-1 # ffff <__multf3+0x2cf>
   102f8:	00b7f333          	and	t1,a5,a1
   102fc:	0107d513          	srli	a0,a5,0x10
   10300:	00b87833          	and	a6,a6,a1
   10304:	00bf77b3          	and	a5,t5,a1
   10308:	00bef9b3          	and	s3,t4,a1
   1030c:	01031313          	slli	t1,t1,0x10
   10310:	01750bb3          	add	s7,a0,s7
   10314:	01030333          	add	t1,t1,a6
   10318:	010f5913          	srli	s2,t5,0x10
   1031c:	010ed393          	srli	t2,t4,0x10
   10320:	00078513          	mv	a0,a5
   10324:	00098593          	mv	a1,s3
   10328:	919f00ef          	jal	ra,c40 <__mulsi3>
   1032c:	00050713          	mv	a4,a0
   10330:	00038593          	mv	a1,t2
   10334:	00078513          	mv	a0,a5
   10338:	909f00ef          	jal	ra,c40 <__mulsi3>
   1033c:	00050813          	mv	a6,a0
   10340:	00098593          	mv	a1,s3
   10344:	00090513          	mv	a0,s2
   10348:	8f9f00ef          	jal	ra,c40 <__mulsi3>
   1034c:	00050993          	mv	s3,a0
   10350:	00038593          	mv	a1,t2
   10354:	00090513          	mv	a0,s2
   10358:	8e9f00ef          	jal	ra,c40 <__mulsi3>
   1035c:	01075793          	srli	a5,a4,0x10
   10360:	01380833          	add	a6,a6,s3
   10364:	010787b3          	add	a5,a5,a6
   10368:	00050b13          	mv	s6,a0
   1036c:	0137f463          	bgeu	a5,s3,10374 <__multf3+0x644>
   10370:	01c50b33          	add	s6,a0,t3
   10374:	02812383          	lw	t2,40(sp)
   10378:	00010937          	lui	s2,0x10
   1037c:	fff90593          	addi	a1,s2,-1 # ffff <__multf3+0x2cf>
   10380:	00b7f833          	and	a6,a5,a1
   10384:	0107d513          	srli	a0,a5,0x10
   10388:	00b77733          	and	a4,a4,a1
   1038c:	00b2fc33          	and	s8,t0,a1
   10390:	00b3f9b3          	and	s3,t2,a1
   10394:	01081813          	slli	a6,a6,0x10
   10398:	01650b33          	add	s6,a0,s6
   1039c:	00e80833          	add	a6,a6,a4
   103a0:	0102d793          	srli	a5,t0,0x10
   103a4:	0103da93          	srli	s5,t2,0x10
   103a8:	000c0513          	mv	a0,s8
   103ac:	00098593          	mv	a1,s3
   103b0:	891f00ef          	jal	ra,c40 <__mulsi3>
   103b4:	00050e13          	mv	t3,a0
   103b8:	000a8593          	mv	a1,s5
   103bc:	000c0513          	mv	a0,s8
   103c0:	881f00ef          	jal	ra,c40 <__mulsi3>
   103c4:	00050713          	mv	a4,a0
   103c8:	00098593          	mv	a1,s3
   103cc:	00078513          	mv	a0,a5
   103d0:	871f00ef          	jal	ra,c40 <__mulsi3>
   103d4:	00050993          	mv	s3,a0
   103d8:	000a8593          	mv	a1,s5
   103dc:	00078513          	mv	a0,a5
   103e0:	861f00ef          	jal	ra,c40 <__mulsi3>
   103e4:	010e5793          	srli	a5,t3,0x10
   103e8:	01370733          	add	a4,a4,s3
   103ec:	00e787b3          	add	a5,a5,a4
   103f0:	00050a93          	mv	s5,a0
   103f4:	0137f463          	bgeu	a5,s3,103fc <__multf3+0x6cc>
   103f8:	01250ab3          	add	s5,a0,s2
   103fc:	00010d37          	lui	s10,0x10
   10400:	fffd0913          	addi	s2,s10,-1 # ffff <__multf3+0x2cf>
   10404:	0127f733          	and	a4,a5,s2
   10408:	012e7e33          	and	t3,t3,s2
   1040c:	01071713          	slli	a4,a4,0x10
   10410:	01c70733          	add	a4,a4,t3
   10414:	01812e03          	lw	t3,24(sp)
   10418:	0107d513          	srli	a0,a5,0x10
   1041c:	01550ab3          	add	s5,a0,s5
   10420:	012e77b3          	and	a5,t3,s2
   10424:	012ff933          	and	s2,t6,s2
   10428:	010e5d93          	srli	s11,t3,0x10
   1042c:	010fdc13          	srli	s8,t6,0x10
   10430:	00078513          	mv	a0,a5
   10434:	00090593          	mv	a1,s2
   10438:	809f00ef          	jal	ra,c40 <__mulsi3>
   1043c:	00050993          	mv	s3,a0
   10440:	000c0593          	mv	a1,s8
   10444:	00078513          	mv	a0,a5
   10448:	ff8f00ef          	jal	ra,c40 <__mulsi3>
   1044c:	00050793          	mv	a5,a0
   10450:	00090593          	mv	a1,s2
   10454:	000d8513          	mv	a0,s11
   10458:	fe8f00ef          	jal	ra,c40 <__mulsi3>
   1045c:	00050913          	mv	s2,a0
   10460:	000c0593          	mv	a1,s8
   10464:	000d8513          	mv	a0,s11
   10468:	fd8f00ef          	jal	ra,c40 <__mulsi3>
   1046c:	012787b3          	add	a5,a5,s2
   10470:	0109d693          	srli	a3,s3,0x10
   10474:	00d787b3          	add	a5,a5,a3
   10478:	0127f463          	bgeu	a5,s2,10480 <__multf3+0x750>
   1047c:	01a50533          	add	a0,a0,s10
   10480:	04412603          	lw	a2,68(sp)
   10484:	0107d693          	srli	a3,a5,0x10
   10488:	00a686b3          	add	a3,a3,a0
   1048c:	00c12503          	lw	a0,12(sp)
   10490:	00c88633          	add	a2,a7,a2
   10494:	011630b3          	sltu	ra,a2,a7
   10498:	001508b3          	add	a7,a0,ra
   1049c:	01488a33          	add	s4,a7,s4
   104a0:	00660633          	add	a2,a2,t1
   104a4:	00663333          	sltu	t1,a2,t1
   104a8:	00010937          	lui	s2,0x10
   104ac:	04c12223          	sw	a2,68(sp)
   104b0:	017a0633          	add	a2,s4,s7
   104b4:	fff90593          	addi	a1,s2,-1 # ffff <__multf3+0x2cf>
   104b8:	00660533          	add	a0,a2,t1
   104bc:	017638b3          	sltu	a7,a2,s7
   104c0:	00653333          	sltu	t1,a0,t1
   104c4:	00b7f7b3          	and	a5,a5,a1
   104c8:	00b9f9b3          	and	s3,s3,a1
   104cc:	001a3a33          	sltu	s4,s4,ra
   104d0:	0068e8b3          	or	a7,a7,t1
   104d4:	01079793          	slli	a5,a5,0x10
   104d8:	013787b3          	add	a5,a5,s3
   104dc:	014888b3          	add	a7,a7,s4
   104e0:	010509b3          	add	s3,a0,a6
   104e4:	0109b833          	sltu	a6,s3,a6
   104e8:	016888b3          	add	a7,a7,s6
   104ec:	010880b3          	add	ra,a7,a6
   104f0:	00e989b3          	add	s3,s3,a4
   104f4:	00e9b733          	sltu	a4,s3,a4
   104f8:	01508633          	add	a2,ra,s5
   104fc:	00e60333          	add	t1,a2,a4
   10500:	00f989b3          	add	s3,s3,a5
   10504:	05312423          	sw	s3,72(sp)
   10508:	00f9b9b3          	sltu	s3,s3,a5
   1050c:	00d307b3          	add	a5,t1,a3
   10510:	01378a33          	add	s4,a5,s3
   10514:	0168b8b3          	sltu	a7,a7,s6
   10518:	0100b833          	sltu	a6,ra,a6
   1051c:	01563633          	sltu	a2,a2,s5
   10520:	00e33733          	sltu	a4,t1,a4
   10524:	00e66733          	or	a4,a2,a4
   10528:	00d7b6b3          	sltu	a3,a5,a3
   1052c:	0108e8b3          	or	a7,a7,a6
   10530:	013a39b3          	sltu	s3,s4,s3
   10534:	00e888b3          	add	a7,a7,a4
   10538:	0136e9b3          	or	s3,a3,s3
   1053c:	013889b3          	add	s3,a7,s3
   10540:	02c12883          	lw	a7,44(sp)
   10544:	05312823          	sw	s3,80(sp)
   10548:	0102d993          	srli	s3,t0,0x10
   1054c:	00b8f733          	and	a4,a7,a1
   10550:	00b2f2b3          	and	t0,t0,a1
   10554:	05412623          	sw	s4,76(sp)
   10558:	0108d793          	srli	a5,a7,0x10
   1055c:	00028513          	mv	a0,t0
   10560:	00070593          	mv	a1,a4
   10564:	edcf00ef          	jal	ra,c40 <__mulsi3>
   10568:	00050813          	mv	a6,a0
   1056c:	00078593          	mv	a1,a5
   10570:	00028513          	mv	a0,t0
   10574:	eccf00ef          	jal	ra,c40 <__mulsi3>
   10578:	00050313          	mv	t1,a0
   1057c:	00070593          	mv	a1,a4
   10580:	00098513          	mv	a0,s3
   10584:	ebcf00ef          	jal	ra,c40 <__mulsi3>
   10588:	00050713          	mv	a4,a0
   1058c:	00078593          	mv	a1,a5
   10590:	00098513          	mv	a0,s3
   10594:	eacf00ef          	jal	ra,c40 <__mulsi3>
   10598:	01085793          	srli	a5,a6,0x10
   1059c:	00e30333          	add	t1,t1,a4
   105a0:	006787b3          	add	a5,a5,t1
   105a4:	00050993          	mv	s3,a0
   105a8:	00e7f463          	bgeu	a5,a4,105b0 <__multf3+0x880>
   105ac:	012509b3          	add	s3,a0,s2
   105b0:	01c12303          	lw	t1,28(sp)
   105b4:	00010737          	lui	a4,0x10
   105b8:	fff70693          	addi	a3,a4,-1 # ffff <__multf3+0x2cf>
   105bc:	00d7f633          	and	a2,a5,a3
   105c0:	0107d513          	srli	a0,a5,0x10
   105c4:	01061613          	slli	a2,a2,0x10
   105c8:	00d87833          	and	a6,a6,a3
   105cc:	010fd793          	srli	a5,t6,0x10
   105d0:	00d372b3          	and	t0,t1,a3
   105d4:	00dfffb3          	and	t6,t6,a3
   105d8:	013509b3          	add	s3,a0,s3
   105dc:	01060833          	add	a6,a2,a6
   105e0:	01035913          	srli	s2,t1,0x10
   105e4:	00028513          	mv	a0,t0
   105e8:	000f8593          	mv	a1,t6
   105ec:	e54f00ef          	jal	ra,c40 <__mulsi3>
   105f0:	00050a93          	mv	s5,a0
   105f4:	00078593          	mv	a1,a5
   105f8:	00028513          	mv	a0,t0
   105fc:	e44f00ef          	jal	ra,c40 <__mulsi3>
   10600:	00050293          	mv	t0,a0
   10604:	000f8593          	mv	a1,t6
   10608:	00090513          	mv	a0,s2
   1060c:	e34f00ef          	jal	ra,c40 <__mulsi3>
   10610:	00050f93          	mv	t6,a0
   10614:	00078593          	mv	a1,a5
   10618:	00090513          	mv	a0,s2
   1061c:	e24f00ef          	jal	ra,c40 <__mulsi3>
   10620:	010ad793          	srli	a5,s5,0x10
   10624:	01f282b3          	add	t0,t0,t6
   10628:	005787b3          	add	a5,a5,t0
   1062c:	00050913          	mv	s2,a0
   10630:	01f7f463          	bgeu	a5,t6,10638 <__multf3+0x908>
   10634:	00e50933          	add	s2,a0,a4
   10638:	00010fb7          	lui	t6,0x10
   1063c:	ffff8713          	addi	a4,t6,-1 # ffff <__multf3+0x2cf>
   10640:	00e7f6b3          	and	a3,a5,a4
   10644:	0107d513          	srli	a0,a5,0x10
   10648:	01069693          	slli	a3,a3,0x10
   1064c:	00eafab3          	and	s5,s5,a4
   10650:	00ef77b3          	and	a5,t5,a4
   10654:	00e3fb33          	and	s6,t2,a4
   10658:	01250933          	add	s2,a0,s2
   1065c:	01568ab3          	add	s5,a3,s5
   10660:	010f5293          	srli	t0,t5,0x10
   10664:	0103db93          	srli	s7,t2,0x10
   10668:	00078513          	mv	a0,a5
   1066c:	000b0593          	mv	a1,s6
   10670:	dd0f00ef          	jal	ra,c40 <__mulsi3>
   10674:	00050a13          	mv	s4,a0
   10678:	000b8593          	mv	a1,s7
   1067c:	00078513          	mv	a0,a5
   10680:	dc0f00ef          	jal	ra,c40 <__mulsi3>
   10684:	00050713          	mv	a4,a0
   10688:	000b0593          	mv	a1,s6
   1068c:	00028513          	mv	a0,t0
   10690:	db0f00ef          	jal	ra,c40 <__mulsi3>
   10694:	00050b13          	mv	s6,a0
   10698:	000b8593          	mv	a1,s7
   1069c:	00028513          	mv	a0,t0
   106a0:	da0f00ef          	jal	ra,c40 <__mulsi3>
   106a4:	010a5793          	srli	a5,s4,0x10
   106a8:	01670733          	add	a4,a4,s6
   106ac:	00e787b3          	add	a5,a5,a4
   106b0:	00050293          	mv	t0,a0
   106b4:	0167f463          	bgeu	a5,s6,106bc <__multf3+0x98c>
   106b8:	01f502b3          	add	t0,a0,t6
   106bc:	00010fb7          	lui	t6,0x10
   106c0:	ffff8693          	addi	a3,t6,-1 # ffff <__multf3+0x2cf>
   106c4:	00d7f733          	and	a4,a5,a3
   106c8:	00da7a33          	and	s4,s4,a3
   106cc:	01071713          	slli	a4,a4,0x10
   106d0:	0107d513          	srli	a0,a5,0x10
   106d4:	01470733          	add	a4,a4,s4
   106d8:	00defb33          	and	s6,t4,a3
   106dc:	00de7a33          	and	s4,t3,a3
   106e0:	005502b3          	add	t0,a0,t0
   106e4:	010e5d13          	srli	s10,t3,0x10
   106e8:	010edc13          	srli	s8,t4,0x10
   106ec:	000a0513          	mv	a0,s4
   106f0:	000b0593          	mv	a1,s6
   106f4:	d4cf00ef          	jal	ra,c40 <__mulsi3>
   106f8:	00050b93          	mv	s7,a0
   106fc:	000c0593          	mv	a1,s8
   10700:	000a0513          	mv	a0,s4
   10704:	d3cf00ef          	jal	ra,c40 <__mulsi3>
   10708:	00050a13          	mv	s4,a0
   1070c:	000b0593          	mv	a1,s6
   10710:	000d0513          	mv	a0,s10
   10714:	d2cf00ef          	jal	ra,c40 <__mulsi3>
   10718:	00050793          	mv	a5,a0
   1071c:	000c0593          	mv	a1,s8
   10720:	000d0513          	mv	a0,s10
   10724:	d1cf00ef          	jal	ra,c40 <__mulsi3>
   10728:	010bd693          	srli	a3,s7,0x10
   1072c:	00fa0a33          	add	s4,s4,a5
   10730:	014686b3          	add	a3,a3,s4
   10734:	00050b13          	mv	s6,a0
   10738:	00f6f463          	bgeu	a3,a5,10740 <__multf3+0xa10>
   1073c:	01f50b33          	add	s6,a0,t6
   10740:	00010a37          	lui	s4,0x10
   10744:	fffa0f93          	addi	t6,s4,-1 # ffff <__multf3+0x2cf>
   10748:	0106d513          	srli	a0,a3,0x10
   1074c:	01f6f6b3          	and	a3,a3,t6
   10750:	01650b33          	add	s6,a0,s6
   10754:	01069793          	slli	a5,a3,0x10
   10758:	01fbf533          	and	a0,s7,t6
   1075c:	00a78533          	add	a0,a5,a0
   10760:	04c12783          	lw	a5,76(sp)
   10764:	00f807b3          	add	a5,a6,a5
   10768:	0107b633          	sltu	a2,a5,a6
   1076c:	05012803          	lw	a6,80(sp)
   10770:	015787b3          	add	a5,a5,s5
   10774:	0157b6b3          	sltu	a3,a5,s5
   10778:	01098833          	add	a6,s3,a6
   1077c:	00c80d33          	add	s10,a6,a2
   10780:	012d0ab3          	add	s5,s10,s2
   10784:	00da8c33          	add	s8,s5,a3
   10788:	00e787b3          	add	a5,a5,a4
   1078c:	00e7b733          	sltu	a4,a5,a4
   10790:	005c05b3          	add	a1,s8,t0
   10794:	00e58bb3          	add	s7,a1,a4
   10798:	00a787b3          	add	a5,a5,a0
   1079c:	016b8db3          	add	s11,s7,s6
   107a0:	04f12623          	sw	a5,76(sp)
   107a4:	01383833          	sltu	a6,a6,s3
   107a8:	00a7b7b3          	sltu	a5,a5,a0
   107ac:	00cd3633          	sltu	a2,s10,a2
   107b0:	012ab933          	sltu	s2,s5,s2
   107b4:	00dc36b3          	sltu	a3,s8,a3
   107b8:	00fd80b3          	add	ra,s11,a5
   107bc:	00c86833          	or	a6,a6,a2
   107c0:	0055b5b3          	sltu	a1,a1,t0
   107c4:	00d966b3          	or	a3,s2,a3
   107c8:	00ebb733          	sltu	a4,s7,a4
   107cc:	00d806b3          	add	a3,a6,a3
   107d0:	00e5e733          	or	a4,a1,a4
   107d4:	016dbb33          	sltu	s6,s11,s6
   107d8:	00f0b7b3          	sltu	a5,ra,a5
   107dc:	00e68733          	add	a4,a3,a4
   107e0:	00fb67b3          	or	a5,s6,a5
   107e4:	00f707b3          	add	a5,a4,a5
   107e8:	01fe7833          	and	a6,t3,t6
   107ec:	01f3ffb3          	and	t6,t2,t6
   107f0:	04f12a23          	sw	a5,84(sp)
   107f4:	04112823          	sw	ra,80(sp)
   107f8:	010e5713          	srli	a4,t3,0x10
   107fc:	0103d793          	srli	a5,t2,0x10
   10800:	00080513          	mv	a0,a6
   10804:	000f8593          	mv	a1,t6
   10808:	c38f00ef          	jal	ra,c40 <__mulsi3>
   1080c:	00050a93          	mv	s5,a0
   10810:	00078593          	mv	a1,a5
   10814:	00080513          	mv	a0,a6
   10818:	c28f00ef          	jal	ra,c40 <__mulsi3>
   1081c:	00050813          	mv	a6,a0
   10820:	000f8593          	mv	a1,t6
   10824:	00070513          	mv	a0,a4
   10828:	c18f00ef          	jal	ra,c40 <__mulsi3>
   1082c:	00050f93          	mv	t6,a0
   10830:	00078593          	mv	a1,a5
   10834:	00070513          	mv	a0,a4
   10838:	c08f00ef          	jal	ra,c40 <__mulsi3>
   1083c:	010ad793          	srli	a5,s5,0x10
   10840:	01f80833          	add	a6,a6,t6
   10844:	010787b3          	add	a5,a5,a6
   10848:	00050713          	mv	a4,a0
   1084c:	01f7f463          	bgeu	a5,t6,10854 <__multf3+0xb24>
   10850:	01450733          	add	a4,a0,s4
   10854:	00010837          	lui	a6,0x10
   10858:	fff80693          	addi	a3,a6,-1 # ffff <__multf3+0x2cf>
   1085c:	00d7f633          	and	a2,a5,a3
   10860:	0107d993          	srli	s3,a5,0x10
   10864:	00e989b3          	add	s3,s3,a4
   10868:	01061613          	slli	a2,a2,0x10
   1086c:	00dafab3          	and	s5,s5,a3
   10870:	010f5f93          	srli	t6,t5,0x10
   10874:	00d8f733          	and	a4,a7,a3
   10878:	00df7f33          	and	t5,t5,a3
   1087c:	01560ab3          	add	s5,a2,s5
   10880:	0108d793          	srli	a5,a7,0x10
   10884:	000f0513          	mv	a0,t5
   10888:	00070593          	mv	a1,a4
   1088c:	bb4f00ef          	jal	ra,c40 <__mulsi3>
   10890:	00050a13          	mv	s4,a0
   10894:	00078593          	mv	a1,a5
   10898:	000f0513          	mv	a0,t5
   1089c:	ba4f00ef          	jal	ra,c40 <__mulsi3>
   108a0:	00050f13          	mv	t5,a0
   108a4:	00070593          	mv	a1,a4
   108a8:	000f8513          	mv	a0,t6
   108ac:	b94f00ef          	jal	ra,c40 <__mulsi3>
   108b0:	00050713          	mv	a4,a0
   108b4:	00078593          	mv	a1,a5
   108b8:	000f8513          	mv	a0,t6
   108bc:	b84f00ef          	jal	ra,c40 <__mulsi3>
   108c0:	010a5793          	srli	a5,s4,0x10
   108c4:	00ef0f33          	add	t5,t5,a4
   108c8:	01e787b3          	add	a5,a5,t5
   108cc:	00050913          	mv	s2,a0
   108d0:	00e7f463          	bgeu	a5,a4,108d8 <__multf3+0xba8>
   108d4:	01050933          	add	s2,a0,a6
   108d8:	00010837          	lui	a6,0x10
   108dc:	fff80613          	addi	a2,a6,-1 # ffff <__multf3+0x2cf>
   108e0:	00c7f6b3          	and	a3,a5,a2
   108e4:	0107d713          	srli	a4,a5,0x10
   108e8:	01069693          	slli	a3,a3,0x10
   108ec:	00ca7a33          	and	s4,s4,a2
   108f0:	010ed293          	srli	t0,t4,0x10
   108f4:	00c377b3          	and	a5,t1,a2
   108f8:	00cefeb3          	and	t4,t4,a2
   108fc:	01270933          	add	s2,a4,s2
   10900:	01468a33          	add	s4,a3,s4
   10904:	01035713          	srli	a4,t1,0x10
   10908:	00078513          	mv	a0,a5
   1090c:	000e8593          	mv	a1,t4
   10910:	b30f00ef          	jal	ra,c40 <__mulsi3>
   10914:	00050f13          	mv	t5,a0
   10918:	00028593          	mv	a1,t0
   1091c:	00078513          	mv	a0,a5
   10920:	b20f00ef          	jal	ra,c40 <__mulsi3>
   10924:	00050f93          	mv	t6,a0
   10928:	000e8593          	mv	a1,t4
   1092c:	00070513          	mv	a0,a4
   10930:	b10f00ef          	jal	ra,c40 <__mulsi3>
   10934:	00050793          	mv	a5,a0
   10938:	00028593          	mv	a1,t0
   1093c:	00070513          	mv	a0,a4
   10940:	b00f00ef          	jal	ra,c40 <__mulsi3>
   10944:	010f5693          	srli	a3,t5,0x10
   10948:	00ff8fb3          	add	t6,t6,a5
   1094c:	01f686b3          	add	a3,a3,t6
   10950:	00050293          	mv	t0,a0
   10954:	00f6f463          	bgeu	a3,a5,1095c <__multf3+0xc2c>
   10958:	010502b3          	add	t0,a0,a6
   1095c:	00010eb7          	lui	t4,0x10
   10960:	fffe8793          	addi	a5,t4,-1 # ffff <__multf3+0x2cf>
   10964:	0106d713          	srli	a4,a3,0x10
   10968:	00f6f6b3          	and	a3,a3,a5
   1096c:	01069593          	slli	a1,a3,0x10
   10970:	00ff7f33          	and	t5,t5,a5
   10974:	010e5f93          	srli	t6,t3,0x10
   10978:	00fe7e33          	and	t3,t3,a5
   1097c:	00f8f7b3          	and	a5,a7,a5
   10980:	01e58f33          	add	t5,a1,t5
   10984:	005702b3          	add	t0,a4,t0
   10988:	0108d813          	srli	a6,a7,0x10
   1098c:	000e0513          	mv	a0,t3
   10990:	00078593          	mv	a1,a5
   10994:	aacf00ef          	jal	ra,c40 <__mulsi3>
   10998:	00050b13          	mv	s6,a0
   1099c:	00080593          	mv	a1,a6
   109a0:	000e0513          	mv	a0,t3
   109a4:	a9cf00ef          	jal	ra,c40 <__mulsi3>
   109a8:	00050713          	mv	a4,a0
   109ac:	00078593          	mv	a1,a5
   109b0:	000f8513          	mv	a0,t6
   109b4:	a8cf00ef          	jal	ra,c40 <__mulsi3>
   109b8:	00050793          	mv	a5,a0
   109bc:	00080593          	mv	a1,a6
   109c0:	000f8513          	mv	a0,t6
   109c4:	a7cf00ef          	jal	ra,c40 <__mulsi3>
   109c8:	00f70733          	add	a4,a4,a5
   109cc:	010b5693          	srli	a3,s6,0x10
   109d0:	00d706b3          	add	a3,a4,a3
   109d4:	00f6f463          	bgeu	a3,a5,109dc <__multf3+0xcac>
   109d8:	01d50533          	add	a0,a0,t4
   109dc:	00010e37          	lui	t3,0x10
   109e0:	fffe0593          	addi	a1,t3,-1 # ffff <__multf3+0x2cf>
   109e4:	00b6f833          	and	a6,a3,a1
   109e8:	0106d793          	srli	a5,a3,0x10
   109ec:	00bb7b33          	and	s6,s6,a1
   109f0:	00b37733          	and	a4,t1,a1
   109f4:	0103dc13          	srli	s8,t2,0x10
   109f8:	01081813          	slli	a6,a6,0x10
   109fc:	00b3f3b3          	and	t2,t2,a1
   10a00:	00a78fb3          	add	t6,a5,a0
   10a04:	01680833          	add	a6,a6,s6
   10a08:	01035793          	srli	a5,t1,0x10
   10a0c:	00070513          	mv	a0,a4
   10a10:	00038593          	mv	a1,t2
   10a14:	a2cf00ef          	jal	ra,c40 <__mulsi3>
   10a18:	00050b13          	mv	s6,a0
   10a1c:	000c0593          	mv	a1,s8
   10a20:	00070513          	mv	a0,a4
   10a24:	a1cf00ef          	jal	ra,c40 <__mulsi3>
   10a28:	00050e93          	mv	t4,a0
   10a2c:	00038593          	mv	a1,t2
   10a30:	00078513          	mv	a0,a5
   10a34:	a0cf00ef          	jal	ra,c40 <__mulsi3>
   10a38:	00050b93          	mv	s7,a0
   10a3c:	000c0593          	mv	a1,s8
   10a40:	00078513          	mv	a0,a5
   10a44:	9fcf00ef          	jal	ra,c40 <__mulsi3>
   10a48:	010b5713          	srli	a4,s6,0x10
   10a4c:	017e8eb3          	add	t4,t4,s7
   10a50:	01d70733          	add	a4,a4,t4
   10a54:	00050393          	mv	t2,a0
   10a58:	01777463          	bgeu	a4,s7,10a60 <__multf3+0xd30>
   10a5c:	01c503b3          	add	t2,a0,t3
   10a60:	00010eb7          	lui	t4,0x10
   10a64:	fffe8e13          	addi	t3,t4,-1 # ffff <__multf3+0x2cf>
   10a68:	01075793          	srli	a5,a4,0x10
   10a6c:	01c77733          	and	a4,a4,t3
   10a70:	05012583          	lw	a1,80(sp)
   10a74:	01cb7533          	and	a0,s6,t3
   10a78:	01071713          	slli	a4,a4,0x10
   10a7c:	00a70533          	add	a0,a4,a0
   10a80:	05412703          	lw	a4,84(sp)
   10a84:	00ba85b3          	add	a1,s5,a1
   10a88:	0155b633          	sltu	a2,a1,s5
   10a8c:	00e98733          	add	a4,s3,a4
   10a90:	00c70c33          	add	s8,a4,a2
   10a94:	014585b3          	add	a1,a1,s4
   10a98:	0145b6b3          	sltu	a3,a1,s4
   10a9c:	012c0ab3          	add	s5,s8,s2
   10aa0:	00da8bb3          	add	s7,s5,a3
   10aa4:	01e585b3          	add	a1,a1,t5
   10aa8:	005b8a33          	add	s4,s7,t0
   10aac:	00dbb6b3          	sltu	a3,s7,a3
   10ab0:	04b12823          	sw	a1,80(sp)
   10ab4:	01373733          	sltu	a4,a4,s3
   10ab8:	01e5b5b3          	sltu	a1,a1,t5
   10abc:	00cc3633          	sltu	a2,s8,a2
   10ac0:	012ab933          	sltu	s2,s5,s2
   10ac4:	007783b3          	add	t2,a5,t2
   10ac8:	00ba0b33          	add	s6,s4,a1
   10acc:	00d967b3          	or	a5,s2,a3
   10ad0:	00c76733          	or	a4,a4,a2
   10ad4:	00bb35b3          	sltu	a1,s6,a1
   10ad8:	00f70733          	add	a4,a4,a5
   10adc:	005a37b3          	sltu	a5,s4,t0
   10ae0:	00b7e7b3          	or	a5,a5,a1
   10ae4:	010b0f33          	add	t5,s6,a6
   10ae8:	00f70733          	add	a4,a4,a5
   10aec:	01f707b3          	add	a5,a4,t6
   10af0:	010f3833          	sltu	a6,t5,a6
   10af4:	010786b3          	add	a3,a5,a6
   10af8:	00af0f33          	add	t5,t5,a0
   10afc:	00768733          	add	a4,a3,t2
   10b00:	00af3533          	sltu	a0,t5,a0
   10b04:	05e12a23          	sw	t5,84(sp)
   10b08:	00a70f33          	add	t5,a4,a0
   10b0c:	01f7b7b3          	sltu	a5,a5,t6
   10b10:	0106b833          	sltu	a6,a3,a6
   10b14:	007733b3          	sltu	t2,a4,t2
   10b18:	00af3533          	sltu	a0,t5,a0
   10b1c:	00a3e533          	or	a0,t2,a0
   10b20:	0107e7b3          	or	a5,a5,a6
   10b24:	00a787b3          	add	a5,a5,a0
   10b28:	05e12c23          	sw	t5,88(sp)
   10b2c:	04f12e23          	sw	a5,92(sp)
   10b30:	01035f13          	srli	t5,t1,0x10
   10b34:	0108d793          	srli	a5,a7,0x10
   10b38:	01c37333          	and	t1,t1,t3
   10b3c:	01c8f8b3          	and	a7,a7,t3
   10b40:	00030513          	mv	a0,t1
   10b44:	00088593          	mv	a1,a7
   10b48:	8f8f00ef          	jal	ra,c40 <__mulsi3>
   10b4c:	00050813          	mv	a6,a0
   10b50:	00078593          	mv	a1,a5
   10b54:	00030513          	mv	a0,t1
   10b58:	8e8f00ef          	jal	ra,c40 <__mulsi3>
   10b5c:	00050713          	mv	a4,a0
   10b60:	00088593          	mv	a1,a7
   10b64:	000f0513          	mv	a0,t5
   10b68:	8d8f00ef          	jal	ra,c40 <__mulsi3>
   10b6c:	00050893          	mv	a7,a0
   10b70:	00078593          	mv	a1,a5
   10b74:	000f0513          	mv	a0,t5
   10b78:	8c8f00ef          	jal	ra,c40 <__mulsi3>
   10b7c:	01085793          	srli	a5,a6,0x10
   10b80:	01170733          	add	a4,a4,a7
   10b84:	00e787b3          	add	a5,a5,a4
   10b88:	0117f463          	bgeu	a5,a7,10b90 <__multf3+0xe60>
   10b8c:	01d50533          	add	a0,a0,t4
   10b90:	01c7f733          	and	a4,a5,t3
   10b94:	01071713          	slli	a4,a4,0x10
   10b98:	01c87e33          	and	t3,a6,t3
   10b9c:	01c70e33          	add	t3,a4,t3
   10ba0:	05812703          	lw	a4,88(sp)
   10ba4:	05c12683          	lw	a3,92(sp)
   10ba8:	0107d793          	srli	a5,a5,0x10
   10bac:	00ee0733          	add	a4,t3,a4
   10bb0:	01c73e33          	sltu	t3,a4,t3
   10bb4:	00d787b3          	add	a5,a5,a3
   10bb8:	01c787b3          	add	a5,a5,t3
   10bbc:	00a78533          	add	a0,a5,a0
   10bc0:	04e12c23          	sw	a4,88(sp)
   10bc4:	04412783          	lw	a5,68(sp)
   10bc8:	04012703          	lw	a4,64(sp)
   10bcc:	04a12e23          	sw	a0,92(sp)
   10bd0:	05010593          	addi	a1,sp,80
   10bd4:	00e7e7b3          	or	a5,a5,a4
   10bd8:	04812703          	lw	a4,72(sp)
   10bdc:	00e7e733          	or	a4,a5,a4
   10be0:	04c12783          	lw	a5,76(sp)
   10be4:	00d79793          	slli	a5,a5,0xd
   10be8:	00e7e7b3          	or	a5,a5,a4
   10bec:	04010713          	addi	a4,sp,64
   10bf0:	00c72683          	lw	a3,12(a4)
   10bf4:	01072603          	lw	a2,16(a4)
   10bf8:	00470713          	addi	a4,a4,4
   10bfc:	0136d693          	srli	a3,a3,0x13
   10c00:	00d61613          	slli	a2,a2,0xd
   10c04:	00c6e6b3          	or	a3,a3,a2
   10c08:	fed72e23          	sw	a3,-4(a4)
   10c0c:	fee592e3          	bne	a1,a4,10bf0 <__multf3+0xec0>
   10c10:	04812683          	lw	a3,72(sp)
   10c14:	04012703          	lw	a4,64(sp)
   10c18:	00f037b3          	snez	a5,a5
   10c1c:	02d12c23          	sw	a3,56(sp)
   10c20:	04412683          	lw	a3,68(sp)
   10c24:	00e7e7b3          	or	a5,a5,a4
   10c28:	04c12703          	lw	a4,76(sp)
   10c2c:	02d12a23          	sw	a3,52(sp)
   10c30:	001006b7          	lui	a3,0x100
   10c34:	02e12e23          	sw	a4,60(sp)
   10c38:	02f12823          	sw	a5,48(sp)
   10c3c:	00d77733          	and	a4,a4,a3
   10c40:	20070663          	beqz	a4,10e4c <__multf3+0x111c>
   10c44:	01f79793          	slli	a5,a5,0x1f
   10c48:	03010713          	addi	a4,sp,48
   10c4c:	03c10593          	addi	a1,sp,60
   10c50:	00072683          	lw	a3,0(a4)
   10c54:	00472603          	lw	a2,4(a4)
   10c58:	00470713          	addi	a4,a4,4
   10c5c:	0016d693          	srli	a3,a3,0x1
   10c60:	01f61613          	slli	a2,a2,0x1f
   10c64:	00c6e6b3          	or	a3,a3,a2
   10c68:	fed72e23          	sw	a3,-4(a4)
   10c6c:	fee592e3          	bne	a1,a4,10c50 <__multf3+0xf20>
   10c70:	03c12703          	lw	a4,60(sp)
   10c74:	00f037b3          	snez	a5,a5
   10c78:	00175713          	srli	a4,a4,0x1
   10c7c:	02e12e23          	sw	a4,60(sp)
   10c80:	03012703          	lw	a4,48(sp)
   10c84:	00f767b3          	or	a5,a4,a5
   10c88:	02f12823          	sw	a5,48(sp)
   10c8c:	000047b7          	lui	a5,0x4
   10c90:	fff78793          	addi	a5,a5,-1 # 3fff <emovo.constprop.0+0x23>
   10c94:	00fc87b3          	add	a5,s9,a5
   10c98:	1cf05a63          	blez	a5,10e6c <__multf3+0x113c>
   10c9c:	03012703          	lw	a4,48(sp)
   10ca0:	00777693          	andi	a3,a4,7
   10ca4:	04068463          	beqz	a3,10cec <__multf3+0xfbc>
   10ca8:	00f77693          	andi	a3,a4,15
   10cac:	00400613          	li	a2,4
   10cb0:	02c68e63          	beq	a3,a2,10cec <__multf3+0xfbc>
   10cb4:	03412683          	lw	a3,52(sp)
   10cb8:	00470713          	addi	a4,a4,4
   10cbc:	02e12823          	sw	a4,48(sp)
   10cc0:	00473713          	sltiu	a4,a4,4
   10cc4:	00d706b3          	add	a3,a4,a3
   10cc8:	00e6b733          	sltu	a4,a3,a4
   10ccc:	02d12a23          	sw	a3,52(sp)
   10cd0:	03812683          	lw	a3,56(sp)
   10cd4:	00d706b3          	add	a3,a4,a3
   10cd8:	02d12c23          	sw	a3,56(sp)
   10cdc:	00e6b6b3          	sltu	a3,a3,a4
   10ce0:	03c12703          	lw	a4,60(sp)
   10ce4:	00e686b3          	add	a3,a3,a4
   10ce8:	02d12e23          	sw	a3,60(sp)
   10cec:	03c12703          	lw	a4,60(sp)
   10cf0:	001006b7          	lui	a3,0x100
   10cf4:	00d776b3          	and	a3,a4,a3
   10cf8:	00068e63          	beqz	a3,10d14 <__multf3+0xfe4>
   10cfc:	fff007b7          	lui	a5,0xfff00
   10d00:	fff78793          	addi	a5,a5,-1 # ffefffff <__ctr0_io_space_begin+0xfff001ff>
   10d04:	00f77733          	and	a4,a4,a5
   10d08:	000047b7          	lui	a5,0x4
   10d0c:	02e12e23          	sw	a4,60(sp)
   10d10:	00fc87b3          	add	a5,s9,a5
   10d14:	03010713          	addi	a4,sp,48
   10d18:	03c10593          	addi	a1,sp,60
   10d1c:	00072683          	lw	a3,0(a4)
   10d20:	00472603          	lw	a2,4(a4)
   10d24:	00470713          	addi	a4,a4,4
   10d28:	0036d693          	srli	a3,a3,0x3
   10d2c:	01d61613          	slli	a2,a2,0x1d
   10d30:	00c6e6b3          	or	a3,a3,a2
   10d34:	fed72e23          	sw	a3,-4(a4)
   10d38:	feb712e3          	bne	a4,a1,10d1c <__multf3+0xfec>
   10d3c:	00008737          	lui	a4,0x8
   10d40:	ffe70693          	addi	a3,a4,-2 # 7ffe <__mdiff+0x1b2>
   10d44:	10f6c863          	blt	a3,a5,10e54 <__multf3+0x1124>
   10d48:	03c12703          	lw	a4,60(sp)
   10d4c:	00375713          	srli	a4,a4,0x3
   10d50:	02e12e23          	sw	a4,60(sp)
   10d54:	01179793          	slli	a5,a5,0x11
   10d58:	00f41413          	slli	s0,s0,0xf
   10d5c:	0117d793          	srli	a5,a5,0x11
   10d60:	00f467b3          	or	a5,s0,a5
   10d64:	04f11723          	sh	a5,78(sp)
   10d68:	03012783          	lw	a5,48(sp)
   10d6c:	03c12703          	lw	a4,60(sp)
   10d70:	09c12083          	lw	ra,156(sp)
   10d74:	00f4a023          	sw	a5,0(s1)
   10d78:	03412783          	lw	a5,52(sp)
   10d7c:	04e11623          	sh	a4,76(sp)
   10d80:	09812403          	lw	s0,152(sp)
   10d84:	00f4a223          	sw	a5,4(s1)
   10d88:	03812783          	lw	a5,56(sp)
   10d8c:	09012903          	lw	s2,144(sp)
   10d90:	08c12983          	lw	s3,140(sp)
   10d94:	00f4a423          	sw	a5,8(s1)
   10d98:	04c12783          	lw	a5,76(sp)
   10d9c:	08812a03          	lw	s4,136(sp)
   10da0:	08412a83          	lw	s5,132(sp)
   10da4:	00f4a623          	sw	a5,12(s1)
   10da8:	08012b03          	lw	s6,128(sp)
   10dac:	07c12b83          	lw	s7,124(sp)
   10db0:	07812c03          	lw	s8,120(sp)
   10db4:	07412c83          	lw	s9,116(sp)
   10db8:	07012d03          	lw	s10,112(sp)
   10dbc:	06c12d83          	lw	s11,108(sp)
   10dc0:	00048513          	mv	a0,s1
   10dc4:	09412483          	lw	s1,148(sp)
   10dc8:	0a010113          	addi	sp,sp,160
   10dcc:	00008067          	ret
   10dd0:	000a0413          	mv	s0,s4
   10dd4:	01012783          	lw	a5,16(sp)
   10dd8:	02f12823          	sw	a5,48(sp)
   10ddc:	01412783          	lw	a5,20(sp)
   10de0:	02f12a23          	sw	a5,52(sp)
   10de4:	01812783          	lw	a5,24(sp)
   10de8:	02f12c23          	sw	a5,56(sp)
   10dec:	01c12783          	lw	a5,28(sp)
   10df0:	02f12e23          	sw	a5,60(sp)
   10df4:	00200793          	li	a5,2
   10df8:	26fb8c63          	beq	s7,a5,11070 <__multf3+0x1340>
   10dfc:	00300793          	li	a5,3
   10e00:	28fb8663          	beq	s7,a5,1108c <__multf3+0x135c>
   10e04:	00100793          	li	a5,1
   10e08:	e8fb92e3          	bne	s7,a5,10c8c <__multf3+0xf5c>
   10e0c:	02012e23          	sw	zero,60(sp)
   10e10:	02012c23          	sw	zero,56(sp)
   10e14:	02012a23          	sw	zero,52(sp)
   10e18:	02012823          	sw	zero,48(sp)
   10e1c:	2140006f          	j	11030 <__multf3+0x1300>
   10e20:	00098413          	mv	s0,s3
   10e24:	02012783          	lw	a5,32(sp)
   10e28:	00070b93          	mv	s7,a4
   10e2c:	02f12823          	sw	a5,48(sp)
   10e30:	02412783          	lw	a5,36(sp)
   10e34:	02f12a23          	sw	a5,52(sp)
   10e38:	02812783          	lw	a5,40(sp)
   10e3c:	02f12c23          	sw	a5,56(sp)
   10e40:	02c12783          	lw	a5,44(sp)
   10e44:	02f12e23          	sw	a5,60(sp)
   10e48:	fadff06f          	j	10df4 <__multf3+0x10c4>
   10e4c:	00812c83          	lw	s9,8(sp)
   10e50:	e3dff06f          	j	10c8c <__multf3+0xf5c>
   10e54:	02012e23          	sw	zero,60(sp)
   10e58:	02012c23          	sw	zero,56(sp)
   10e5c:	02012a23          	sw	zero,52(sp)
   10e60:	02012823          	sw	zero,48(sp)
   10e64:	fff70793          	addi	a5,a4,-1
   10e68:	eedff06f          	j	10d54 <__multf3+0x1024>
   10e6c:	00100713          	li	a4,1
   10e70:	40f707b3          	sub	a5,a4,a5
   10e74:	07400713          	li	a4,116
   10e78:	1cf74063          	blt	a4,a5,11038 <__multf3+0x1308>
   10e7c:	03010993          	addi	s3,sp,48
   10e80:	4057d513          	srai	a0,a5,0x5
   10e84:	00098693          	mv	a3,s3
   10e88:	00000913          	li	s2,0
   10e8c:	00000713          	li	a4,0
   10e90:	04a71263          	bne	a4,a0,10ed4 <__multf3+0x11a4>
   10e94:	01f7f793          	andi	a5,a5,31
   10e98:	00251693          	slli	a3,a0,0x2
   10e9c:	04079663          	bnez	a5,10ee8 <__multf3+0x11b8>
   10ea0:	00300613          	li	a2,3
   10ea4:	00098793          	mv	a5,s3
   10ea8:	00000713          	li	a4,0
   10eac:	40a60633          	sub	a2,a2,a0
   10eb0:	00d785b3          	add	a1,a5,a3
   10eb4:	0005a583          	lw	a1,0(a1)
   10eb8:	00170713          	addi	a4,a4,1
   10ebc:	00478793          	addi	a5,a5,4 # 4004 <emovo.constprop.0+0x28>
   10ec0:	feb7ae23          	sw	a1,-4(a5)
   10ec4:	fee656e3          	bge	a2,a4,10eb0 <__multf3+0x1180>
   10ec8:	00400793          	li	a5,4
   10ecc:	40a78533          	sub	a0,a5,a0
   10ed0:	0700006f          	j	10f40 <__multf3+0x1210>
   10ed4:	0006a603          	lw	a2,0(a3) # 100000 <__crt0_copy_data_src_begin+0xec1a4>
   10ed8:	00170713          	addi	a4,a4,1
   10edc:	00468693          	addi	a3,a3,4
   10ee0:	00c96933          	or	s2,s2,a2
   10ee4:	fadff06f          	j	10e90 <__multf3+0x1160>
   10ee8:	06010713          	addi	a4,sp,96
   10eec:	00d70733          	add	a4,a4,a3
   10ef0:	fd072703          	lw	a4,-48(a4)
   10ef4:	02000593          	li	a1,32
   10ef8:	40f585b3          	sub	a1,a1,a5
   10efc:	00b71733          	sll	a4,a4,a1
   10f00:	00e96933          	or	s2,s2,a4
   10f04:	00300713          	li	a4,3
   10f08:	00d986b3          	add	a3,s3,a3
   10f0c:	00098893          	mv	a7,s3
   10f10:	00000813          	li	a6,0
   10f14:	40a70733          	sub	a4,a4,a0
   10f18:	00468693          	addi	a3,a3,4
   10f1c:	0ce84063          	blt	a6,a4,10fdc <__multf3+0x12ac>
   10f20:	00400693          	li	a3,4
   10f24:	40a68533          	sub	a0,a3,a0
   10f28:	00271713          	slli	a4,a4,0x2
   10f2c:	06010693          	addi	a3,sp,96
   10f30:	00e68733          	add	a4,a3,a4
   10f34:	03c12683          	lw	a3,60(sp)
   10f38:	00f6d7b3          	srl	a5,a3,a5
   10f3c:	fcf72823          	sw	a5,-48(a4)
   10f40:	00400a13          	li	s4,4
   10f44:	40aa0633          	sub	a2,s4,a0
   10f48:	00251513          	slli	a0,a0,0x2
   10f4c:	00261613          	slli	a2,a2,0x2
   10f50:	00000593          	li	a1,0
   10f54:	00a98533          	add	a0,s3,a0
   10f58:	980f90ef          	jal	ra,a0d8 <memset>
   10f5c:	03012703          	lw	a4,48(sp)
   10f60:	012037b3          	snez	a5,s2
   10f64:	00e7e7b3          	or	a5,a5,a4
   10f68:	02f12823          	sw	a5,48(sp)
   10f6c:	0077f713          	andi	a4,a5,7
   10f70:	04070263          	beqz	a4,10fb4 <__multf3+0x1284>
   10f74:	00f7f713          	andi	a4,a5,15
   10f78:	03470e63          	beq	a4,s4,10fb4 <__multf3+0x1284>
   10f7c:	03412703          	lw	a4,52(sp)
   10f80:	00478793          	addi	a5,a5,4
   10f84:	02f12823          	sw	a5,48(sp)
   10f88:	0047b793          	sltiu	a5,a5,4
   10f8c:	00e78733          	add	a4,a5,a4
   10f90:	00f737b3          	sltu	a5,a4,a5
   10f94:	02e12a23          	sw	a4,52(sp)
   10f98:	03812703          	lw	a4,56(sp)
   10f9c:	00e78733          	add	a4,a5,a4
   10fa0:	02e12c23          	sw	a4,56(sp)
   10fa4:	00f73733          	sltu	a4,a4,a5
   10fa8:	03c12783          	lw	a5,60(sp)
   10fac:	00f70733          	add	a4,a4,a5
   10fb0:	02e12e23          	sw	a4,60(sp)
   10fb4:	03c12703          	lw	a4,60(sp)
   10fb8:	000807b7          	lui	a5,0x80
   10fbc:	00e7f7b3          	and	a5,a5,a4
   10fc0:	04078063          	beqz	a5,11000 <__multf3+0x12d0>
   10fc4:	02012e23          	sw	zero,60(sp)
   10fc8:	02012c23          	sw	zero,56(sp)
   10fcc:	02012a23          	sw	zero,52(sp)
   10fd0:	02012823          	sw	zero,48(sp)
   10fd4:	00100793          	li	a5,1
   10fd8:	d7dff06f          	j	10d54 <__multf3+0x1024>
   10fdc:	ffc6a603          	lw	a2,-4(a3)
   10fe0:	0006a303          	lw	t1,0(a3)
   10fe4:	00180813          	addi	a6,a6,1
   10fe8:	00f65633          	srl	a2,a2,a5
   10fec:	00b31333          	sll	t1,t1,a1
   10ff0:	00666633          	or	a2,a2,t1
   10ff4:	00c8a023          	sw	a2,0(a7)
   10ff8:	00488893          	addi	a7,a7,4
   10ffc:	f1dff06f          	j	10f18 <__multf3+0x11e8>
   11000:	00c98693          	addi	a3,s3,12
   11004:	0009a783          	lw	a5,0(s3)
   11008:	0049a703          	lw	a4,4(s3)
   1100c:	00498993          	addi	s3,s3,4
   11010:	0037d793          	srli	a5,a5,0x3
   11014:	01d71713          	slli	a4,a4,0x1d
   11018:	00e7e7b3          	or	a5,a5,a4
   1101c:	fef9ae23          	sw	a5,-4(s3)
   11020:	fed992e3          	bne	s3,a3,11004 <__multf3+0x12d4>
   11024:	03c12783          	lw	a5,60(sp)
   11028:	0037d793          	srli	a5,a5,0x3
   1102c:	02f12e23          	sw	a5,60(sp)
   11030:	00000793          	li	a5,0
   11034:	d21ff06f          	j	10d54 <__multf3+0x1024>
   11038:	03412783          	lw	a5,52(sp)
   1103c:	03012703          	lw	a4,48(sp)
   11040:	00f76733          	or	a4,a4,a5
   11044:	03812783          	lw	a5,56(sp)
   11048:	00f76733          	or	a4,a4,a5
   1104c:	03c12783          	lw	a5,60(sp)
   11050:	00f76733          	or	a4,a4,a5
   11054:	00000793          	li	a5,0
   11058:	ce070ee3          	beqz	a4,10d54 <__multf3+0x1024>
   1105c:	02012e23          	sw	zero,60(sp)
   11060:	02012c23          	sw	zero,56(sp)
   11064:	02012a23          	sw	zero,52(sp)
   11068:	02012823          	sw	zero,48(sp)
   1106c:	ce9ff06f          	j	10d54 <__multf3+0x1024>
   11070:	000087b7          	lui	a5,0x8
   11074:	02012e23          	sw	zero,60(sp)
   11078:	02012c23          	sw	zero,56(sp)
   1107c:	02012a23          	sw	zero,52(sp)
   11080:	02012823          	sw	zero,48(sp)
   11084:	fff78793          	addi	a5,a5,-1 # 7fff <__mdiff+0x1b3>
   11088:	ccdff06f          	j	10d54 <__multf3+0x1024>
   1108c:	000087b7          	lui	a5,0x8
   11090:	02f12e23          	sw	a5,60(sp)
   11094:	02012c23          	sw	zero,56(sp)
   11098:	02012a23          	sw	zero,52(sp)
   1109c:	02012823          	sw	zero,48(sp)
   110a0:	fff78793          	addi	a5,a5,-1 # 7fff <__mdiff+0x1b3>
   110a4:	00000413          	li	s0,0
   110a8:	cadff06f          	j	10d54 <__multf3+0x1024>

000110ac <__subtf3>:
   110ac:	f9010113          	addi	sp,sp,-112
   110b0:	0085a783          	lw	a5,8(a1)
   110b4:	05312e23          	sw	s3,92(sp)
   110b8:	00c5a983          	lw	s3,12(a1)
   110bc:	0045a703          	lw	a4,4(a1)
   110c0:	0005a683          	lw	a3,0(a1)
   110c4:	05412c23          	sw	s4,88(sp)
   110c8:	05712623          	sw	s7,76(sp)
   110cc:	00050a13          	mv	s4,a0
   110d0:	02f12c23          	sw	a5,56(sp)
   110d4:	00f12c23          	sw	a5,24(sp)
   110d8:	00062883          	lw	a7,0(a2)
   110dc:	01099793          	slli	a5,s3,0x10
   110e0:	00462503          	lw	a0,4(a2)
   110e4:	00862583          	lw	a1,8(a2)
   110e8:	00c62b83          	lw	s7,12(a2)
   110ec:	06912223          	sw	s1,100(sp)
   110f0:	0107d793          	srli	a5,a5,0x10
   110f4:	00199493          	slli	s1,s3,0x1
   110f8:	02e12a23          	sw	a4,52(sp)
   110fc:	03312e23          	sw	s3,60(sp)
   11100:	00e12a23          	sw	a4,20(sp)
   11104:	06112623          	sw	ra,108(sp)
   11108:	06812423          	sw	s0,104(sp)
   1110c:	07212023          	sw	s2,96(sp)
   11110:	05512a23          	sw	s5,84(sp)
   11114:	05612823          	sw	s6,80(sp)
   11118:	05812423          	sw	s8,72(sp)
   1111c:	05912223          	sw	s9,68(sp)
   11120:	02d12823          	sw	a3,48(sp)
   11124:	00d12823          	sw	a3,16(sp)
   11128:	00f12e23          	sw	a5,28(sp)
   1112c:	0114d493          	srli	s1,s1,0x11
   11130:	01f9d993          	srli	s3,s3,0x1f
   11134:	01010813          	addi	a6,sp,16
   11138:	01c10713          	addi	a4,sp,28
   1113c:	00072783          	lw	a5,0(a4)
   11140:	ffc72683          	lw	a3,-4(a4)
   11144:	ffc70713          	addi	a4,a4,-4
   11148:	00379793          	slli	a5,a5,0x3
   1114c:	01d6d693          	srli	a3,a3,0x1d
   11150:	00d7e7b3          	or	a5,a5,a3
   11154:	00f72223          	sw	a5,4(a4)
   11158:	fee812e3          	bne	a6,a4,1113c <__subtf3+0x90>
   1115c:	01012903          	lw	s2,16(sp)
   11160:	010b9793          	slli	a5,s7,0x10
   11164:	001b9c13          	slli	s8,s7,0x1
   11168:	00391913          	slli	s2,s2,0x3
   1116c:	0107d793          	srli	a5,a5,0x10
   11170:	02a12a23          	sw	a0,52(sp)
   11174:	03712e23          	sw	s7,60(sp)
   11178:	02a12223          	sw	a0,36(sp)
   1117c:	01212823          	sw	s2,16(sp)
   11180:	03112823          	sw	a7,48(sp)
   11184:	02b12c23          	sw	a1,56(sp)
   11188:	03112023          	sw	a7,32(sp)
   1118c:	02b12423          	sw	a1,40(sp)
   11190:	02f12623          	sw	a5,44(sp)
   11194:	011c5c13          	srli	s8,s8,0x11
   11198:	01fbdb93          	srli	s7,s7,0x1f
   1119c:	02010513          	addi	a0,sp,32
   111a0:	02c10693          	addi	a3,sp,44
   111a4:	0006a783          	lw	a5,0(a3)
   111a8:	ffc6a603          	lw	a2,-4(a3)
   111ac:	ffc68693          	addi	a3,a3,-4
   111b0:	00379793          	slli	a5,a5,0x3
   111b4:	01d65613          	srli	a2,a2,0x1d
   111b8:	00c7e7b3          	or	a5,a5,a2
   111bc:	00f6a223          	sw	a5,4(a3)
   111c0:	fed512e3          	bne	a0,a3,111a4 <__subtf3+0xf8>
   111c4:	02012403          	lw	s0,32(sp)
   111c8:	000087b7          	lui	a5,0x8
   111cc:	fff78793          	addi	a5,a5,-1 # 7fff <__mdiff+0x1b3>
   111d0:	00341413          	slli	s0,s0,0x3
   111d4:	02812023          	sw	s0,32(sp)
   111d8:	02fc1063          	bne	s8,a5,111f8 <__subtf3+0x14c>
   111dc:	02812603          	lw	a2,40(sp)
   111e0:	02412783          	lw	a5,36(sp)
   111e4:	00c7e7b3          	or	a5,a5,a2
   111e8:	02c12603          	lw	a2,44(sp)
   111ec:	00c7e7b3          	or	a5,a5,a2
   111f0:	0087e7b3          	or	a5,a5,s0
   111f4:	00079463          	bnez	a5,111fc <__subtf3+0x150>
   111f8:	001bcb93          	xori	s7,s7,1
   111fc:	418487b3          	sub	a5,s1,s8
   11200:	113b9ce3          	bne	s7,s3,11b18 <__subtf3+0xa6c>
   11204:	44f05a63          	blez	a5,11658 <__subtf3+0x5ac>
   11208:	01412b83          	lw	s7,20(sp)
   1120c:	01812b03          	lw	s6,24(sp)
   11210:	01c12a83          	lw	s5,28(sp)
   11214:	0a0c1c63          	bnez	s8,112cc <__subtf3+0x220>
   11218:	02412583          	lw	a1,36(sp)
   1121c:	02812703          	lw	a4,40(sp)
   11220:	02c12803          	lw	a6,44(sp)
   11224:	00e5e633          	or	a2,a1,a4
   11228:	01066633          	or	a2,a2,a6
   1122c:	00866633          	or	a2,a2,s0
   11230:	00061e63          	bnez	a2,1124c <__subtf3+0x1a0>
   11234:	03212823          	sw	s2,48(sp)
   11238:	03712a23          	sw	s7,52(sp)
   1123c:	03612c23          	sw	s6,56(sp)
   11240:	03512e23          	sw	s5,60(sp)
   11244:	00078493          	mv	s1,a5
   11248:	0a00006f          	j	112e8 <__subtf3+0x23c>
   1124c:	fff78613          	addi	a2,a5,-1
   11250:	04061a63          	bnez	a2,112a4 <__subtf3+0x1f8>
   11254:	00890433          	add	s0,s2,s0
   11258:	01243933          	sltu	s2,s0,s2
   1125c:	017585b3          	add	a1,a1,s7
   11260:	02812823          	sw	s0,48(sp)
   11264:	01258433          	add	s0,a1,s2
   11268:	01243933          	sltu	s2,s0,s2
   1126c:	0175b5b3          	sltu	a1,a1,s7
   11270:	0125e5b3          	or	a1,a1,s2
   11274:	01670733          	add	a4,a4,s6
   11278:	00b707b3          	add	a5,a4,a1
   1127c:	00b7b5b3          	sltu	a1,a5,a1
   11280:	01673733          	sltu	a4,a4,s6
   11284:	00b76733          	or	a4,a4,a1
   11288:	01580833          	add	a6,a6,s5
   1128c:	01070733          	add	a4,a4,a6
   11290:	02812a23          	sw	s0,52(sp)
   11294:	02f12c23          	sw	a5,56(sp)
   11298:	02e12e23          	sw	a4,60(sp)
   1129c:	00100493          	li	s1,1
   112a0:	3040006f          	j	115a4 <__subtf3+0x4f8>
   112a4:	00008737          	lui	a4,0x8
   112a8:	fff70713          	addi	a4,a4,-1 # 7fff <__mdiff+0x1b3>
   112ac:	f8e784e3          	beq	a5,a4,11234 <__subtf3+0x188>
   112b0:	07400793          	li	a5,116
   112b4:	1ac7dc63          	bge	a5,a2,1146c <__subtf3+0x3c0>
   112b8:	02012623          	sw	zero,44(sp)
   112bc:	02012423          	sw	zero,40(sp)
   112c0:	02012223          	sw	zero,36(sp)
   112c4:	00100793          	li	a5,1
   112c8:	2800006f          	j	11548 <__subtf3+0x49c>
   112cc:	00008737          	lui	a4,0x8
   112d0:	fff70713          	addi	a4,a4,-1 # 7fff <__mdiff+0x1b3>
   112d4:	16e49e63          	bne	s1,a4,11450 <__subtf3+0x3a4>
   112d8:	03212823          	sw	s2,48(sp)
   112dc:	03712a23          	sw	s7,52(sp)
   112e0:	03612c23          	sw	s6,56(sp)
   112e4:	03512e23          	sw	s5,60(sp)
   112e8:	03012783          	lw	a5,48(sp)
   112ec:	0077f713          	andi	a4,a5,7
   112f0:	04070463          	beqz	a4,11338 <__subtf3+0x28c>
   112f4:	00f7f713          	andi	a4,a5,15
   112f8:	00400693          	li	a3,4
   112fc:	02d70e63          	beq	a4,a3,11338 <__subtf3+0x28c>
   11300:	03412703          	lw	a4,52(sp)
   11304:	00478793          	addi	a5,a5,4
   11308:	02f12823          	sw	a5,48(sp)
   1130c:	0047b793          	sltiu	a5,a5,4
   11310:	00e78733          	add	a4,a5,a4
   11314:	00f737b3          	sltu	a5,a4,a5
   11318:	02e12a23          	sw	a4,52(sp)
   1131c:	03812703          	lw	a4,56(sp)
   11320:	00e78733          	add	a4,a5,a4
   11324:	02e12c23          	sw	a4,56(sp)
   11328:	00f73733          	sltu	a4,a4,a5
   1132c:	03c12783          	lw	a5,60(sp)
   11330:	00f70733          	add	a4,a4,a5
   11334:	02e12e23          	sw	a4,60(sp)
   11338:	03c12783          	lw	a5,60(sp)
   1133c:	00080737          	lui	a4,0x80
   11340:	00e7f733          	and	a4,a5,a4
   11344:	02070463          	beqz	a4,1136c <__subtf3+0x2c0>
   11348:	00008737          	lui	a4,0x8
   1134c:	00148493          	addi	s1,s1,1
   11350:	fff70713          	addi	a4,a4,-1 # 7fff <__mdiff+0x1b3>
   11354:	00e49463          	bne	s1,a4,1135c <__subtf3+0x2b0>
   11358:	2b40106f          	j	1260c <__subtf3+0x1560>
   1135c:	fff80737          	lui	a4,0xfff80
   11360:	fff70713          	addi	a4,a4,-1 # fff7ffff <__ctr0_io_space_begin+0xfff801ff>
   11364:	00e7f7b3          	and	a5,a5,a4
   11368:	02f12e23          	sw	a5,60(sp)
   1136c:	03010793          	addi	a5,sp,48
   11370:	03c10613          	addi	a2,sp,60
   11374:	0007a703          	lw	a4,0(a5)
   11378:	0047a683          	lw	a3,4(a5)
   1137c:	00478793          	addi	a5,a5,4
   11380:	00375713          	srli	a4,a4,0x3
   11384:	01d69693          	slli	a3,a3,0x1d
   11388:	00d76733          	or	a4,a4,a3
   1138c:	fee7ae23          	sw	a4,-4(a5)
   11390:	fef612e3          	bne	a2,a5,11374 <__subtf3+0x2c8>
   11394:	03c12783          	lw	a5,60(sp)
   11398:	000086b7          	lui	a3,0x8
   1139c:	0037d713          	srli	a4,a5,0x3
   113a0:	02e12e23          	sw	a4,60(sp)
   113a4:	fff68793          	addi	a5,a3,-1 # 7fff <__mdiff+0x1b3>
   113a8:	02f49a63          	bne	s1,a5,113dc <__subtf3+0x330>
   113ac:	03412603          	lw	a2,52(sp)
   113b0:	03012783          	lw	a5,48(sp)
   113b4:	00c7e7b3          	or	a5,a5,a2
   113b8:	03812603          	lw	a2,56(sp)
   113bc:	00c7e7b3          	or	a5,a5,a2
   113c0:	00e7e7b3          	or	a5,a5,a4
   113c4:	00078c63          	beqz	a5,113dc <__subtf3+0x330>
   113c8:	02d12e23          	sw	a3,60(sp)
   113cc:	02012c23          	sw	zero,56(sp)
   113d0:	02012a23          	sw	zero,52(sp)
   113d4:	02012823          	sw	zero,48(sp)
   113d8:	00000993          	li	s3,0
   113dc:	03c12783          	lw	a5,60(sp)
   113e0:	01149493          	slli	s1,s1,0x11
   113e4:	0114d493          	srli	s1,s1,0x11
   113e8:	00f11623          	sh	a5,12(sp)
   113ec:	03012783          	lw	a5,48(sp)
   113f0:	00f99993          	slli	s3,s3,0xf
   113f4:	0099e9b3          	or	s3,s3,s1
   113f8:	00fa2023          	sw	a5,0(s4)
   113fc:	03412783          	lw	a5,52(sp)
   11400:	01311723          	sh	s3,14(sp)
   11404:	06c12083          	lw	ra,108(sp)
   11408:	00fa2223          	sw	a5,4(s4)
   1140c:	03812783          	lw	a5,56(sp)
   11410:	06812403          	lw	s0,104(sp)
   11414:	06412483          	lw	s1,100(sp)
   11418:	00fa2423          	sw	a5,8(s4)
   1141c:	00c12783          	lw	a5,12(sp)
   11420:	06012903          	lw	s2,96(sp)
   11424:	05c12983          	lw	s3,92(sp)
   11428:	00fa2623          	sw	a5,12(s4)
   1142c:	05412a83          	lw	s5,84(sp)
   11430:	05012b03          	lw	s6,80(sp)
   11434:	04c12b83          	lw	s7,76(sp)
   11438:	04812c03          	lw	s8,72(sp)
   1143c:	04412c83          	lw	s9,68(sp)
   11440:	000a0513          	mv	a0,s4
   11444:	05812a03          	lw	s4,88(sp)
   11448:	07010113          	addi	sp,sp,112
   1144c:	00008067          	ret
   11450:	02c12703          	lw	a4,44(sp)
   11454:	00080637          	lui	a2,0x80
   11458:	00c76733          	or	a4,a4,a2
   1145c:	02e12623          	sw	a4,44(sp)
   11460:	07400713          	li	a4,116
   11464:	e4f74ae3          	blt	a4,a5,112b8 <__subtf3+0x20c>
   11468:	00078613          	mv	a2,a5
   1146c:	40565793          	srai	a5,a2,0x5
   11470:	00068593          	mv	a1,a3
   11474:	00000413          	li	s0,0
   11478:	00000713          	li	a4,0
   1147c:	02f71e63          	bne	a4,a5,114b8 <__subtf3+0x40c>
   11480:	01f67613          	andi	a2,a2,31
   11484:	00279713          	slli	a4,a5,0x2
   11488:	04061263          	bnez	a2,114cc <__subtf3+0x420>
   1148c:	00300593          	li	a1,3
   11490:	40f585b3          	sub	a1,a1,a5
   11494:	00e68833          	add	a6,a3,a4
   11498:	00082803          	lw	a6,0(a6)
   1149c:	00160613          	addi	a2,a2,1 # 80001 <__crt0_copy_data_src_begin+0x6c1a5>
   114a0:	00468693          	addi	a3,a3,4
   114a4:	ff06ae23          	sw	a6,-4(a3)
   114a8:	fec5d6e3          	bge	a1,a2,11494 <__subtf3+0x3e8>
   114ac:	00400713          	li	a4,4
   114b0:	40f707b3          	sub	a5,a4,a5
   114b4:	06c0006f          	j	11520 <__subtf3+0x474>
   114b8:	0005a803          	lw	a6,0(a1)
   114bc:	00170713          	addi	a4,a4,1
   114c0:	00458593          	addi	a1,a1,4
   114c4:	01046433          	or	s0,s0,a6
   114c8:	fb5ff06f          	j	1147c <__subtf3+0x3d0>
   114cc:	04010593          	addi	a1,sp,64
   114d0:	00e585b3          	add	a1,a1,a4
   114d4:	fe05a583          	lw	a1,-32(a1)
   114d8:	02000893          	li	a7,32
   114dc:	40c888b3          	sub	a7,a7,a2
   114e0:	011595b3          	sll	a1,a1,a7
   114e4:	00b46433          	or	s0,s0,a1
   114e8:	00300593          	li	a1,3
   114ec:	00e50733          	add	a4,a0,a4
   114f0:	00000313          	li	t1,0
   114f4:	40f585b3          	sub	a1,a1,a5
   114f8:	00470713          	addi	a4,a4,4
   114fc:	12b34c63          	blt	t1,a1,11634 <__subtf3+0x588>
   11500:	00400713          	li	a4,4
   11504:	40f707b3          	sub	a5,a4,a5
   11508:	00259593          	slli	a1,a1,0x2
   1150c:	04010713          	addi	a4,sp,64
   11510:	00b705b3          	add	a1,a4,a1
   11514:	02c12703          	lw	a4,44(sp)
   11518:	00c75633          	srl	a2,a4,a2
   1151c:	fec5a023          	sw	a2,-32(a1)
   11520:	00400613          	li	a2,4
   11524:	40f60633          	sub	a2,a2,a5
   11528:	00279793          	slli	a5,a5,0x2
   1152c:	00f50533          	add	a0,a0,a5
   11530:	00261613          	slli	a2,a2,0x2
   11534:	00000593          	li	a1,0
   11538:	ba1f80ef          	jal	ra,a0d8 <memset>
   1153c:	02012703          	lw	a4,32(sp)
   11540:	008037b3          	snez	a5,s0
   11544:	00f767b3          	or	a5,a4,a5
   11548:	02f12023          	sw	a5,32(sp)
   1154c:	02012583          	lw	a1,32(sp)
   11550:	02812683          	lw	a3,40(sp)
   11554:	00b905b3          	add	a1,s2,a1
   11558:	0125b933          	sltu	s2,a1,s2
   1155c:	02b12823          	sw	a1,48(sp)
   11560:	02412583          	lw	a1,36(sp)
   11564:	00bb85b3          	add	a1,s7,a1
   11568:	012587b3          	add	a5,a1,s2
   1156c:	0127b933          	sltu	s2,a5,s2
   11570:	0175b5b3          	sltu	a1,a1,s7
   11574:	0125e5b3          	or	a1,a1,s2
   11578:	02f12a23          	sw	a5,52(sp)
   1157c:	00db07b3          	add	a5,s6,a3
   11580:	00b78733          	add	a4,a5,a1
   11584:	02e12c23          	sw	a4,56(sp)
   11588:	0167b7b3          	sltu	a5,a5,s6
   1158c:	00b73733          	sltu	a4,a4,a1
   11590:	00e7e7b3          	or	a5,a5,a4
   11594:	02c12703          	lw	a4,44(sp)
   11598:	00ea8ab3          	add	s5,s5,a4
   1159c:	015787b3          	add	a5,a5,s5
   115a0:	02f12e23          	sw	a5,60(sp)
   115a4:	03c12783          	lw	a5,60(sp)
   115a8:	00080737          	lui	a4,0x80
   115ac:	00e7f733          	and	a4,a5,a4
   115b0:	d2070ce3          	beqz	a4,112e8 <__subtf3+0x23c>
   115b4:	fff80737          	lui	a4,0xfff80
   115b8:	fff70713          	addi	a4,a4,-1 # fff7ffff <__ctr0_io_space_begin+0xfff801ff>
   115bc:	00e7f7b3          	and	a5,a5,a4
   115c0:	02f12e23          	sw	a5,60(sp)
   115c4:	03012783          	lw	a5,48(sp)
   115c8:	00148493          	addi	s1,s1,1
   115cc:	03c10593          	addi	a1,sp,60
   115d0:	01f79713          	slli	a4,a5,0x1f
   115d4:	03010793          	addi	a5,sp,48
   115d8:	0007a683          	lw	a3,0(a5)
   115dc:	0047a603          	lw	a2,4(a5)
   115e0:	00478793          	addi	a5,a5,4
   115e4:	0016d693          	srli	a3,a3,0x1
   115e8:	01f61613          	slli	a2,a2,0x1f
   115ec:	00c6e6b3          	or	a3,a3,a2
   115f0:	fed7ae23          	sw	a3,-4(a5)
   115f4:	fef592e3          	bne	a1,a5,115d8 <__subtf3+0x52c>
   115f8:	03c12783          	lw	a5,60(sp)
   115fc:	0017d793          	srli	a5,a5,0x1
   11600:	02f12e23          	sw	a5,60(sp)
   11604:	00e037b3          	snez	a5,a4
   11608:	03012703          	lw	a4,48(sp)
   1160c:	00f767b3          	or	a5,a4,a5
   11610:	02f12823          	sw	a5,48(sp)
   11614:	000087b7          	lui	a5,0x8
   11618:	fff78793          	addi	a5,a5,-1 # 7fff <__mdiff+0x1b3>
   1161c:	ccf496e3          	bne	s1,a5,112e8 <__subtf3+0x23c>
   11620:	02012e23          	sw	zero,60(sp)
   11624:	02012c23          	sw	zero,56(sp)
   11628:	02012a23          	sw	zero,52(sp)
   1162c:	02012823          	sw	zero,48(sp)
   11630:	cb9ff06f          	j	112e8 <__subtf3+0x23c>
   11634:	ffc72803          	lw	a6,-4(a4)
   11638:	00072e03          	lw	t3,0(a4)
   1163c:	00130313          	addi	t1,t1,1
   11640:	00c85833          	srl	a6,a6,a2
   11644:	011e1e33          	sll	t3,t3,a7
   11648:	01c86833          	or	a6,a6,t3
   1164c:	0106a023          	sw	a6,0(a3)
   11650:	00468693          	addi	a3,a3,4
   11654:	ea5ff06f          	j	114f8 <__subtf3+0x44c>
   11658:	02412a83          	lw	s5,36(sp)
   1165c:	02812b03          	lw	s6,40(sp)
   11660:	02c12b83          	lw	s7,44(sp)
   11664:	2a078263          	beqz	a5,11908 <__subtf3+0x85c>
   11668:	409c05b3          	sub	a1,s8,s1
   1166c:	0a049a63          	bnez	s1,11720 <__subtf3+0x674>
   11670:	01412683          	lw	a3,20(sp)
   11674:	01812783          	lw	a5,24(sp)
   11678:	01c12503          	lw	a0,28(sp)
   1167c:	00f6e633          	or	a2,a3,a5
   11680:	00a66633          	or	a2,a2,a0
   11684:	01266633          	or	a2,a2,s2
   11688:	00061e63          	bnez	a2,116a4 <__subtf3+0x5f8>
   1168c:	02812823          	sw	s0,48(sp)
   11690:	03512a23          	sw	s5,52(sp)
   11694:	03612c23          	sw	s6,56(sp)
   11698:	03712e23          	sw	s7,60(sp)
   1169c:	00058493          	mv	s1,a1
   116a0:	c49ff06f          	j	112e8 <__subtf3+0x23c>
   116a4:	fff58613          	addi	a2,a1,-1
   116a8:	04061863          	bnez	a2,116f8 <__subtf3+0x64c>
   116ac:	00890933          	add	s2,s2,s0
   116b0:	015686b3          	add	a3,a3,s5
   116b4:	00893433          	sltu	s0,s2,s0
   116b8:	03212823          	sw	s2,48(sp)
   116bc:	00868933          	add	s2,a3,s0
   116c0:	00893433          	sltu	s0,s2,s0
   116c4:	0156b6b3          	sltu	a3,a3,s5
   116c8:	0086eab3          	or	s5,a3,s0
   116cc:	016787b3          	add	a5,a5,s6
   116d0:	01578733          	add	a4,a5,s5
   116d4:	01573ab3          	sltu	s5,a4,s5
   116d8:	0167b7b3          	sltu	a5,a5,s6
   116dc:	0157e7b3          	or	a5,a5,s5
   116e0:	01750bb3          	add	s7,a0,s7
   116e4:	01778bb3          	add	s7,a5,s7
   116e8:	03212a23          	sw	s2,52(sp)
   116ec:	02e12c23          	sw	a4,56(sp)
   116f0:	03712e23          	sw	s7,60(sp)
   116f4:	ba9ff06f          	j	1129c <__subtf3+0x1f0>
   116f8:	000087b7          	lui	a5,0x8
   116fc:	fff78793          	addi	a5,a5,-1 # 7fff <__mdiff+0x1b3>
   11700:	f8f586e3          	beq	a1,a5,1168c <__subtf3+0x5e0>
   11704:	07400793          	li	a5,116
   11708:	04c7dc63          	bge	a5,a2,11760 <__subtf3+0x6b4>
   1170c:	00012e23          	sw	zero,28(sp)
   11710:	00012c23          	sw	zero,24(sp)
   11714:	00012a23          	sw	zero,20(sp)
   11718:	00100793          	li	a5,1
   1171c:	1640006f          	j	11880 <__subtf3+0x7d4>
   11720:	000087b7          	lui	a5,0x8
   11724:	fff78793          	addi	a5,a5,-1 # 7fff <__mdiff+0x1b3>
   11728:	00fc1e63          	bne	s8,a5,11744 <__subtf3+0x698>
   1172c:	02812823          	sw	s0,48(sp)
   11730:	03512a23          	sw	s5,52(sp)
   11734:	03612c23          	sw	s6,56(sp)
   11738:	03712e23          	sw	s7,60(sp)
   1173c:	000c0493          	mv	s1,s8
   11740:	ba9ff06f          	j	112e8 <__subtf3+0x23c>
   11744:	01c12783          	lw	a5,28(sp)
   11748:	000806b7          	lui	a3,0x80
   1174c:	00d7e7b3          	or	a5,a5,a3
   11750:	00f12e23          	sw	a5,28(sp)
   11754:	07400793          	li	a5,116
   11758:	fab7cae3          	blt	a5,a1,1170c <__subtf3+0x660>
   1175c:	00058613          	mv	a2,a1
   11760:	41f65793          	srai	a5,a2,0x1f
   11764:	01f7f793          	andi	a5,a5,31
   11768:	00c787b3          	add	a5,a5,a2
   1176c:	4057d793          	srai	a5,a5,0x5
   11770:	00070593          	mv	a1,a4
   11774:	00000493          	li	s1,0
   11778:	00000693          	li	a3,0
   1177c:	04f6c663          	blt	a3,a5,117c8 <__subtf3+0x71c>
   11780:	00078693          	mv	a3,a5
   11784:	0007d463          	bgez	a5,1178c <__subtf3+0x6e0>
   11788:	00000693          	li	a3,0
   1178c:	01f67513          	andi	a0,a2,31
   11790:	00279593          	slli	a1,a5,0x2
   11794:	04051463          	bnez	a0,117dc <__subtf3+0x730>
   11798:	00300613          	li	a2,3
   1179c:	00000693          	li	a3,0
   117a0:	40f60633          	sub	a2,a2,a5
   117a4:	00b70533          	add	a0,a4,a1
   117a8:	00052503          	lw	a0,0(a0)
   117ac:	00168693          	addi	a3,a3,1 # 80001 <__crt0_copy_data_src_begin+0x6c1a5>
   117b0:	00470713          	addi	a4,a4,4
   117b4:	fea72e23          	sw	a0,-4(a4)
   117b8:	fed656e3          	bge	a2,a3,117a4 <__subtf3+0x6f8>
   117bc:	00400513          	li	a0,4
   117c0:	40f507b3          	sub	a5,a0,a5
   117c4:	08c0006f          	j	11850 <__subtf3+0x7a4>
   117c8:	0005a503          	lw	a0,0(a1)
   117cc:	00168693          	addi	a3,a3,1
   117d0:	00458593          	addi	a1,a1,4
   117d4:	00a4e4b3          	or	s1,s1,a0
   117d8:	fa5ff06f          	j	1177c <__subtf3+0x6d0>
   117dc:	80000537          	lui	a0,0x80000
   117e0:	01f50513          	addi	a0,a0,31 # 8000001f <__ctr0_io_space_begin+0x8000021f>
   117e4:	00a67633          	and	a2,a2,a0
   117e8:	00065863          	bgez	a2,117f8 <__subtf3+0x74c>
   117ec:	fff60613          	addi	a2,a2,-1
   117f0:	fe066613          	ori	a2,a2,-32
   117f4:	00160613          	addi	a2,a2,1
   117f8:	00269693          	slli	a3,a3,0x2
   117fc:	04010513          	addi	a0,sp,64
   11800:	00d506b3          	add	a3,a0,a3
   11804:	fd06a683          	lw	a3,-48(a3)
   11808:	02000893          	li	a7,32
   1180c:	40c888b3          	sub	a7,a7,a2
   11810:	011696b3          	sll	a3,a3,a7
   11814:	00d4e4b3          	or	s1,s1,a3
   11818:	00300693          	li	a3,3
   1181c:	00b805b3          	add	a1,a6,a1
   11820:	00000313          	li	t1,0
   11824:	40f686b3          	sub	a3,a3,a5
   11828:	00458593          	addi	a1,a1,4
   1182c:	0ad34c63          	blt	t1,a3,118e4 <__subtf3+0x838>
   11830:	04010713          	addi	a4,sp,64
   11834:	00269693          	slli	a3,a3,0x2
   11838:	00d706b3          	add	a3,a4,a3
   1183c:	01c12703          	lw	a4,28(sp)
   11840:	00400513          	li	a0,4
   11844:	40f507b3          	sub	a5,a0,a5
   11848:	00c75633          	srl	a2,a4,a2
   1184c:	fcc6a823          	sw	a2,-48(a3)
   11850:	00400713          	li	a4,4
   11854:	00000613          	li	a2,0
   11858:	00f74663          	blt	a4,a5,11864 <__subtf3+0x7b8>
   1185c:	40f70733          	sub	a4,a4,a5
   11860:	00271613          	slli	a2,a4,0x2
   11864:	00279793          	slli	a5,a5,0x2
   11868:	00f80533          	add	a0,a6,a5
   1186c:	00000593          	li	a1,0
   11870:	869f80ef          	jal	ra,a0d8 <memset>
   11874:	01012703          	lw	a4,16(sp)
   11878:	009037b3          	snez	a5,s1
   1187c:	00f767b3          	or	a5,a4,a5
   11880:	00f12823          	sw	a5,16(sp)
   11884:	01012783          	lw	a5,16(sp)
   11888:	01412703          	lw	a4,20(sp)
   1188c:	000c0493          	mv	s1,s8
   11890:	00f407b3          	add	a5,s0,a5
   11894:	00ea8733          	add	a4,s5,a4
   11898:	0087b433          	sltu	s0,a5,s0
   1189c:	02f12823          	sw	a5,48(sp)
   118a0:	008707b3          	add	a5,a4,s0
   118a4:	0087b433          	sltu	s0,a5,s0
   118a8:	02f12a23          	sw	a5,52(sp)
   118ac:	01812783          	lw	a5,24(sp)
   118b0:	01573ab3          	sltu	s5,a4,s5
   118b4:	008aeab3          	or	s5,s5,s0
   118b8:	00fb07b3          	add	a5,s6,a5
   118bc:	01578733          	add	a4,a5,s5
   118c0:	0167b7b3          	sltu	a5,a5,s6
   118c4:	01c12b03          	lw	s6,28(sp)
   118c8:	01573ab3          	sltu	s5,a4,s5
   118cc:	0157e7b3          	or	a5,a5,s5
   118d0:	016b8bb3          	add	s7,s7,s6
   118d4:	01778bb3          	add	s7,a5,s7
   118d8:	02e12c23          	sw	a4,56(sp)
   118dc:	03712e23          	sw	s7,60(sp)
   118e0:	cc5ff06f          	j	115a4 <__subtf3+0x4f8>
   118e4:	ffc5a503          	lw	a0,-4(a1)
   118e8:	0005ae03          	lw	t3,0(a1)
   118ec:	00130313          	addi	t1,t1,1
   118f0:	00c55533          	srl	a0,a0,a2
   118f4:	011e1e33          	sll	t3,t3,a7
   118f8:	01c56533          	or	a0,a0,t3
   118fc:	00a72023          	sw	a0,0(a4)
   11900:	00470713          	addi	a4,a4,4
   11904:	f25ff06f          	j	11828 <__subtf3+0x77c>
   11908:	00008837          	lui	a6,0x8
   1190c:	00148693          	addi	a3,s1,1
   11910:	ffe80893          	addi	a7,a6,-2 # 7ffe <__mdiff+0x1b2>
   11914:	0116f8b3          	and	a7,a3,a7
   11918:	01412703          	lw	a4,20(sp)
   1191c:	01812503          	lw	a0,24(sp)
   11920:	01c12583          	lw	a1,28(sp)
   11924:	03010793          	addi	a5,sp,48
   11928:	03c10613          	addi	a2,sp,60
   1192c:	14089863          	bnez	a7,11a7c <__subtf3+0x9d0>
   11930:	00a766b3          	or	a3,a4,a0
   11934:	00b6e6b3          	or	a3,a3,a1
   11938:	0126e6b3          	or	a3,a3,s2
   1193c:	0a049863          	bnez	s1,119ec <__subtf3+0x940>
   11940:	00069c63          	bnez	a3,11958 <__subtf3+0x8ac>
   11944:	02812823          	sw	s0,48(sp)
   11948:	03512a23          	sw	s5,52(sp)
   1194c:	03612c23          	sw	s6,56(sp)
   11950:	03712e23          	sw	s7,60(sp)
   11954:	995ff06f          	j	112e8 <__subtf3+0x23c>
   11958:	016ae7b3          	or	a5,s5,s6
   1195c:	0177e7b3          	or	a5,a5,s7
   11960:	0087e7b3          	or	a5,a5,s0
   11964:	00079c63          	bnez	a5,1197c <__subtf3+0x8d0>
   11968:	03212823          	sw	s2,48(sp)
   1196c:	02e12a23          	sw	a4,52(sp)
   11970:	02a12c23          	sw	a0,56(sp)
   11974:	02b12e23          	sw	a1,60(sp)
   11978:	971ff06f          	j	112e8 <__subtf3+0x23c>
   1197c:	00890433          	add	s0,s2,s0
   11980:	01243933          	sltu	s2,s0,s2
   11984:	01570ab3          	add	s5,a4,s5
   11988:	02812823          	sw	s0,48(sp)
   1198c:	012a8433          	add	s0,s5,s2
   11990:	01243933          	sltu	s2,s0,s2
   11994:	00eabab3          	sltu	s5,s5,a4
   11998:	012aeab3          	or	s5,s5,s2
   1199c:	01650b33          	add	s6,a0,s6
   119a0:	015b07b3          	add	a5,s6,s5
   119a4:	0157bab3          	sltu	s5,a5,s5
   119a8:	00ab3b33          	sltu	s6,s6,a0
   119ac:	015b6b33          	or	s6,s6,s5
   119b0:	01758bb3          	add	s7,a1,s7
   119b4:	02f12c23          	sw	a5,56(sp)
   119b8:	017b0b33          	add	s6,s6,s7
   119bc:	000807b7          	lui	a5,0x80
   119c0:	02812a23          	sw	s0,52(sp)
   119c4:	00fb77b3          	and	a5,s6,a5
   119c8:	00079663          	bnez	a5,119d4 <__subtf3+0x928>
   119cc:	03612e23          	sw	s6,60(sp)
   119d0:	919ff06f          	j	112e8 <__subtf3+0x23c>
   119d4:	fff807b7          	lui	a5,0xfff80
   119d8:	fff78793          	addi	a5,a5,-1 # fff7ffff <__ctr0_io_space_begin+0xfff801ff>
   119dc:	00fb7b33          	and	s6,s6,a5
   119e0:	03612e23          	sw	s6,60(sp)
   119e4:	00100493          	li	s1,1
   119e8:	901ff06f          	j	112e8 <__subtf3+0x23c>
   119ec:	00069e63          	bnez	a3,11a08 <__subtf3+0x95c>
   119f0:	02812823          	sw	s0,48(sp)
   119f4:	03512a23          	sw	s5,52(sp)
   119f8:	03612c23          	sw	s6,56(sp)
   119fc:	03712e23          	sw	s7,60(sp)
   11a00:	fff80493          	addi	s1,a6,-1
   11a04:	8e5ff06f          	j	112e8 <__subtf3+0x23c>
   11a08:	016aeb33          	or	s6,s5,s6
   11a0c:	017b6bb3          	or	s7,s6,s7
   11a10:	008be433          	or	s0,s7,s0
   11a14:	00041c63          	bnez	s0,11a2c <__subtf3+0x980>
   11a18:	03212823          	sw	s2,48(sp)
   11a1c:	02e12a23          	sw	a4,52(sp)
   11a20:	02a12c23          	sw	a0,56(sp)
   11a24:	02b12e23          	sw	a1,60(sp)
   11a28:	fd9ff06f          	j	11a00 <__subtf3+0x954>
   11a2c:	03012e23          	sw	a6,60(sp)
   11a30:	02012c23          	sw	zero,56(sp)
   11a34:	02012a23          	sw	zero,52(sp)
   11a38:	02012823          	sw	zero,48(sp)
   11a3c:	00060713          	mv	a4,a2
   11a40:	00072683          	lw	a3,0(a4)
   11a44:	ffc72603          	lw	a2,-4(a4)
   11a48:	ffc70713          	addi	a4,a4,-4
   11a4c:	00369693          	slli	a3,a3,0x3
   11a50:	01d65613          	srli	a2,a2,0x1d
   11a54:	00c6e6b3          	or	a3,a3,a2
   11a58:	00d72223          	sw	a3,4(a4)
   11a5c:	fee792e3          	bne	a5,a4,11a40 <__subtf3+0x994>
   11a60:	03012783          	lw	a5,48(sp)
   11a64:	000084b7          	lui	s1,0x8
   11a68:	00000993          	li	s3,0
   11a6c:	00379793          	slli	a5,a5,0x3
   11a70:	02f12823          	sw	a5,48(sp)
   11a74:	fff48493          	addi	s1,s1,-1 # 7fff <__mdiff+0x1b3>
   11a78:	871ff06f          	j	112e8 <__subtf3+0x23c>
   11a7c:	00890433          	add	s0,s2,s0
   11a80:	01570ab3          	add	s5,a4,s5
   11a84:	01243933          	sltu	s2,s0,s2
   11a88:	02812823          	sw	s0,48(sp)
   11a8c:	012a8433          	add	s0,s5,s2
   11a90:	01243933          	sltu	s2,s0,s2
   11a94:	00eabab3          	sltu	s5,s5,a4
   11a98:	012ae933          	or	s2,s5,s2
   11a9c:	01650733          	add	a4,a0,s6
   11aa0:	01270833          	add	a6,a4,s2
   11aa4:	00a73b33          	sltu	s6,a4,a0
   11aa8:	01283733          	sltu	a4,a6,s2
   11aac:	00eb6733          	or	a4,s6,a4
   11ab0:	01758bb3          	add	s7,a1,s7
   11ab4:	01770bb3          	add	s7,a4,s7
   11ab8:	02812a23          	sw	s0,52(sp)
   11abc:	03012c23          	sw	a6,56(sp)
   11ac0:	03712e23          	sw	s7,60(sp)
   11ac4:	0007a703          	lw	a4,0(a5)
   11ac8:	0047a583          	lw	a1,4(a5)
   11acc:	00478793          	addi	a5,a5,4
   11ad0:	00175713          	srli	a4,a4,0x1
   11ad4:	01f59593          	slli	a1,a1,0x1f
   11ad8:	00b76733          	or	a4,a4,a1
   11adc:	fee7ae23          	sw	a4,-4(a5)
   11ae0:	fef612e3          	bne	a2,a5,11ac4 <__subtf3+0xa18>
   11ae4:	000087b7          	lui	a5,0x8
   11ae8:	fff78793          	addi	a5,a5,-1 # 7fff <__mdiff+0x1b3>
   11aec:	00f68c63          	beq	a3,a5,11b04 <__subtf3+0xa58>
   11af0:	03c12783          	lw	a5,60(sp)
   11af4:	0017d793          	srli	a5,a5,0x1
   11af8:	02f12e23          	sw	a5,60(sp)
   11afc:	00068493          	mv	s1,a3
   11b00:	fe8ff06f          	j	112e8 <__subtf3+0x23c>
   11b04:	02012e23          	sw	zero,60(sp)
   11b08:	02012c23          	sw	zero,56(sp)
   11b0c:	02012a23          	sw	zero,52(sp)
   11b10:	02012823          	sw	zero,48(sp)
   11b14:	fe9ff06f          	j	11afc <__subtf3+0xa50>
   11b18:	2af05063          	blez	a5,11db8 <__subtf3+0xd0c>
   11b1c:	01412a83          	lw	s5,20(sp)
   11b20:	01812b03          	lw	s6,24(sp)
   11b24:	01c12b83          	lw	s7,28(sp)
   11b28:	0c0c1463          	bnez	s8,11bf0 <__subtf3+0xb44>
   11b2c:	02412603          	lw	a2,36(sp)
   11b30:	02812703          	lw	a4,40(sp)
   11b34:	02c12803          	lw	a6,44(sp)
   11b38:	00e665b3          	or	a1,a2,a4
   11b3c:	0105e5b3          	or	a1,a1,a6
   11b40:	0085e5b3          	or	a1,a1,s0
   11b44:	00059c63          	bnez	a1,11b5c <__subtf3+0xab0>
   11b48:	03212823          	sw	s2,48(sp)
   11b4c:	03512a23          	sw	s5,52(sp)
   11b50:	03612c23          	sw	s6,56(sp)
   11b54:	03712e23          	sw	s7,60(sp)
   11b58:	eecff06f          	j	11244 <__subtf3+0x198>
   11b5c:	fff78593          	addi	a1,a5,-1
   11b60:	06059463          	bnez	a1,11bc8 <__subtf3+0xb1c>
   11b64:	40890433          	sub	s0,s2,s0
   11b68:	40ca87b3          	sub	a5,s5,a2
   11b6c:	00893533          	sltu	a0,s2,s0
   11b70:	00fab8b3          	sltu	a7,s5,a5
   11b74:	40a78533          	sub	a0,a5,a0
   11b78:	00000693          	li	a3,0
   11b7c:	00897663          	bgeu	s2,s0,11b88 <__subtf3+0xadc>
   11b80:	415606b3          	sub	a3,a2,s5
   11b84:	0016b693          	seqz	a3,a3
   11b88:	0116e6b3          	or	a3,a3,a7
   11b8c:	40eb0633          	sub	a2,s6,a4
   11b90:	00cb38b3          	sltu	a7,s6,a2
   11b94:	40d60633          	sub	a2,a2,a3
   11b98:	00068663          	beqz	a3,11ba4 <__subtf3+0xaf8>
   11b9c:	41670733          	sub	a4,a4,s6
   11ba0:	00173593          	seqz	a1,a4
   11ba4:	410b87b3          	sub	a5,s7,a6
   11ba8:	0115e733          	or	a4,a1,a7
   11bac:	40e787b3          	sub	a5,a5,a4
   11bb0:	02f12e23          	sw	a5,60(sp)
   11bb4:	02c12c23          	sw	a2,56(sp)
   11bb8:	02a12a23          	sw	a0,52(sp)
   11bbc:	02812823          	sw	s0,48(sp)
   11bc0:	00100493          	li	s1,1
   11bc4:	1b00006f          	j	11d74 <__subtf3+0xcc8>
   11bc8:	00008737          	lui	a4,0x8
   11bcc:	fff70713          	addi	a4,a4,-1 # 7fff <__mdiff+0x1b3>
   11bd0:	f6e78ce3          	beq	a5,a4,11b48 <__subtf3+0xa9c>
   11bd4:	07400793          	li	a5,116
   11bd8:	04b7d463          	bge	a5,a1,11c20 <__subtf3+0xb74>
   11bdc:	02012623          	sw	zero,44(sp)
   11be0:	02012423          	sw	zero,40(sp)
   11be4:	02012223          	sw	zero,36(sp)
   11be8:	00100793          	li	a5,1
   11bec:	1140006f          	j	11d00 <__subtf3+0xc54>
   11bf0:	00008737          	lui	a4,0x8
   11bf4:	fff70713          	addi	a4,a4,-1 # 7fff <__mdiff+0x1b3>
   11bf8:	00e49663          	bne	s1,a4,11c04 <__subtf3+0xb58>
   11bfc:	03212823          	sw	s2,48(sp)
   11c00:	d49ff06f          	j	11948 <__subtf3+0x89c>
   11c04:	02c12703          	lw	a4,44(sp)
   11c08:	00080637          	lui	a2,0x80
   11c0c:	00c76733          	or	a4,a4,a2
   11c10:	02e12623          	sw	a4,44(sp)
   11c14:	07400713          	li	a4,116
   11c18:	fcf742e3          	blt	a4,a5,11bdc <__subtf3+0xb30>
   11c1c:	00078593          	mv	a1,a5
   11c20:	4055d793          	srai	a5,a1,0x5
   11c24:	00068613          	mv	a2,a3
   11c28:	00000413          	li	s0,0
   11c2c:	00000713          	li	a4,0
   11c30:	04f71063          	bne	a4,a5,11c70 <__subtf3+0xbc4>
   11c34:	01f5f813          	andi	a6,a1,31
   11c38:	00279613          	slli	a2,a5,0x2
   11c3c:	04081463          	bnez	a6,11c84 <__subtf3+0xbd8>
   11c40:	00300593          	li	a1,3
   11c44:	00000713          	li	a4,0
   11c48:	40f585b3          	sub	a1,a1,a5
   11c4c:	00c68833          	add	a6,a3,a2
   11c50:	00082803          	lw	a6,0(a6)
   11c54:	00170713          	addi	a4,a4,1
   11c58:	00468693          	addi	a3,a3,4
   11c5c:	ff06ae23          	sw	a6,-4(a3)
   11c60:	fee5d6e3          	bge	a1,a4,11c4c <__subtf3+0xba0>
   11c64:	00400713          	li	a4,4
   11c68:	40f707b3          	sub	a5,a4,a5
   11c6c:	06c0006f          	j	11cd8 <__subtf3+0xc2c>
   11c70:	00062803          	lw	a6,0(a2) # 80000 <__crt0_copy_data_src_begin+0x6c1a4>
   11c74:	00170713          	addi	a4,a4,1
   11c78:	00460613          	addi	a2,a2,4
   11c7c:	01046433          	or	s0,s0,a6
   11c80:	fb1ff06f          	j	11c30 <__subtf3+0xb84>
   11c84:	04010713          	addi	a4,sp,64
   11c88:	00c70733          	add	a4,a4,a2
   11c8c:	fe072703          	lw	a4,-32(a4)
   11c90:	02000893          	li	a7,32
   11c94:	410888b3          	sub	a7,a7,a6
   11c98:	01171733          	sll	a4,a4,a7
   11c9c:	00e46433          	or	s0,s0,a4
   11ca0:	00300713          	li	a4,3
   11ca4:	00c50633          	add	a2,a0,a2
   11ca8:	00000313          	li	t1,0
   11cac:	40f70733          	sub	a4,a4,a5
   11cb0:	00460613          	addi	a2,a2,4
   11cb4:	0ee34063          	blt	t1,a4,11d94 <__subtf3+0xce8>
   11cb8:	02c12583          	lw	a1,44(sp)
   11cbc:	00400693          	li	a3,4
   11cc0:	40f687b3          	sub	a5,a3,a5
   11cc4:	00271713          	slli	a4,a4,0x2
   11cc8:	04010693          	addi	a3,sp,64
   11ccc:	00e68733          	add	a4,a3,a4
   11cd0:	0105d5b3          	srl	a1,a1,a6
   11cd4:	feb72023          	sw	a1,-32(a4)
   11cd8:	00400613          	li	a2,4
   11cdc:	40f60633          	sub	a2,a2,a5
   11ce0:	00279793          	slli	a5,a5,0x2
   11ce4:	00f50533          	add	a0,a0,a5
   11ce8:	00261613          	slli	a2,a2,0x2
   11cec:	00000593          	li	a1,0
   11cf0:	be8f80ef          	jal	ra,a0d8 <memset>
   11cf4:	02012703          	lw	a4,32(sp)
   11cf8:	008037b3          	snez	a5,s0
   11cfc:	00f767b3          	or	a5,a4,a5
   11d00:	02f12023          	sw	a5,32(sp)
   11d04:	02012703          	lw	a4,32(sp)
   11d08:	02412583          	lw	a1,36(sp)
   11d0c:	00000693          	li	a3,0
   11d10:	40e90733          	sub	a4,s2,a4
   11d14:	40ba87b3          	sub	a5,s5,a1
   11d18:	00e93633          	sltu	a2,s2,a4
   11d1c:	00fab533          	sltu	a0,s5,a5
   11d20:	40c78633          	sub	a2,a5,a2
   11d24:	00e97663          	bgeu	s2,a4,11d30 <__subtf3+0xc84>
   11d28:	415586b3          	sub	a3,a1,s5
   11d2c:	0016b693          	seqz	a3,a3
   11d30:	02812803          	lw	a6,40(sp)
   11d34:	00a6e6b3          	or	a3,a3,a0
   11d38:	00000513          	li	a0,0
   11d3c:	410b05b3          	sub	a1,s6,a6
   11d40:	00bb38b3          	sltu	a7,s6,a1
   11d44:	40d585b3          	sub	a1,a1,a3
   11d48:	00068663          	beqz	a3,11d54 <__subtf3+0xca8>
   11d4c:	41680833          	sub	a6,a6,s6
   11d50:	00183513          	seqz	a0,a6
   11d54:	02c12783          	lw	a5,44(sp)
   11d58:	01156533          	or	a0,a0,a7
   11d5c:	02b12c23          	sw	a1,56(sp)
   11d60:	40fb87b3          	sub	a5,s7,a5
   11d64:	40a787b3          	sub	a5,a5,a0
   11d68:	02f12e23          	sw	a5,60(sp)
   11d6c:	02c12a23          	sw	a2,52(sp)
   11d70:	02e12823          	sw	a4,48(sp)
   11d74:	03c12783          	lw	a5,60(sp)
   11d78:	00080737          	lui	a4,0x80
   11d7c:	00e7f6b3          	and	a3,a5,a4
   11d80:	d6068463          	beqz	a3,112e8 <__subtf3+0x23c>
   11d84:	fff70713          	addi	a4,a4,-1 # 7ffff <__crt0_copy_data_src_begin+0x6c1a3>
   11d88:	00e7f7b3          	and	a5,a5,a4
   11d8c:	02f12e23          	sw	a5,60(sp)
   11d90:	5cc0006f          	j	1235c <__subtf3+0x12b0>
   11d94:	ffc62583          	lw	a1,-4(a2)
   11d98:	00062e03          	lw	t3,0(a2)
   11d9c:	00130313          	addi	t1,t1,1
   11da0:	0105d5b3          	srl	a1,a1,a6
   11da4:	011e1e33          	sll	t3,t3,a7
   11da8:	01c5e5b3          	or	a1,a1,t3
   11dac:	00b6a023          	sw	a1,0(a3)
   11db0:	00468693          	addi	a3,a3,4
   11db4:	efdff06f          	j	11cb0 <__subtf3+0xc04>
   11db8:	02412a83          	lw	s5,36(sp)
   11dbc:	02812b03          	lw	s6,40(sp)
   11dc0:	02c12c83          	lw	s9,44(sp)
   11dc4:	2e078063          	beqz	a5,120a4 <__subtf3+0xff8>
   11dc8:	409c08b3          	sub	a7,s8,s1
   11dcc:	0c049263          	bnez	s1,11e90 <__subtf3+0xde4>
   11dd0:	01412503          	lw	a0,20(sp)
   11dd4:	01812583          	lw	a1,24(sp)
   11dd8:	01c12603          	lw	a2,28(sp)
   11ddc:	00b566b3          	or	a3,a0,a1
   11de0:	00c6e6b3          	or	a3,a3,a2
   11de4:	0126e6b3          	or	a3,a3,s2
   11de8:	02069063          	bnez	a3,11e08 <__subtf3+0xd5c>
   11dec:	02812823          	sw	s0,48(sp)
   11df0:	03512a23          	sw	s5,52(sp)
   11df4:	03612c23          	sw	s6,56(sp)
   11df8:	03912e23          	sw	s9,60(sp)
   11dfc:	00088493          	mv	s1,a7
   11e00:	000b8993          	mv	s3,s7
   11e04:	ce4ff06f          	j	112e8 <__subtf3+0x23c>
   11e08:	fff88693          	addi	a3,a7,-1
   11e0c:	06069463          	bnez	a3,11e74 <__subtf3+0xdc8>
   11e10:	41240933          	sub	s2,s0,s2
   11e14:	40aa87b3          	sub	a5,s5,a0
   11e18:	01243733          	sltu	a4,s0,s2
   11e1c:	00fab833          	sltu	a6,s5,a5
   11e20:	40e787b3          	sub	a5,a5,a4
   11e24:	00000713          	li	a4,0
   11e28:	01247663          	bgeu	s0,s2,11e34 <__subtf3+0xd88>
   11e2c:	41550733          	sub	a4,a0,s5
   11e30:	00173713          	seqz	a4,a4
   11e34:	01076733          	or	a4,a4,a6
   11e38:	40bb0533          	sub	a0,s6,a1
   11e3c:	00ab3833          	sltu	a6,s6,a0
   11e40:	40e50533          	sub	a0,a0,a4
   11e44:	00070663          	beqz	a4,11e50 <__subtf3+0xda4>
   11e48:	416586b3          	sub	a3,a1,s6
   11e4c:	0016b693          	seqz	a3,a3
   11e50:	40cc8cb3          	sub	s9,s9,a2
   11e54:	0106e6b3          	or	a3,a3,a6
   11e58:	40dc8cb3          	sub	s9,s9,a3
   11e5c:	03912e23          	sw	s9,60(sp)
   11e60:	02a12c23          	sw	a0,56(sp)
   11e64:	02f12a23          	sw	a5,52(sp)
   11e68:	03212823          	sw	s2,48(sp)
   11e6c:	000b8993          	mv	s3,s7
   11e70:	d51ff06f          	j	11bc0 <__subtf3+0xb14>
   11e74:	000087b7          	lui	a5,0x8
   11e78:	fff78793          	addi	a5,a5,-1 # 7fff <__mdiff+0x1b3>
   11e7c:	f6f888e3          	beq	a7,a5,11dec <__subtf3+0xd40>
   11e80:	07400793          	li	a5,116
   11e84:	20d7c663          	blt	a5,a3,12090 <__subtf3+0xfe4>
   11e88:	00068893          	mv	a7,a3
   11e8c:	0400006f          	j	11ecc <__subtf3+0xe20>
   11e90:	000087b7          	lui	a5,0x8
   11e94:	fff78793          	addi	a5,a5,-1 # 7fff <__mdiff+0x1b3>
   11e98:	00fc1e63          	bne	s8,a5,11eb4 <__subtf3+0xe08>
   11e9c:	02812823          	sw	s0,48(sp)
   11ea0:	03512a23          	sw	s5,52(sp)
   11ea4:	03612c23          	sw	s6,56(sp)
   11ea8:	03912e23          	sw	s9,60(sp)
   11eac:	000c0493          	mv	s1,s8
   11eb0:	f51ff06f          	j	11e00 <__subtf3+0xd54>
   11eb4:	01c12783          	lw	a5,28(sp)
   11eb8:	000806b7          	lui	a3,0x80
   11ebc:	00d7e7b3          	or	a5,a5,a3
   11ec0:	00f12e23          	sw	a5,28(sp)
   11ec4:	07400793          	li	a5,116
   11ec8:	1d17c463          	blt	a5,a7,12090 <__subtf3+0xfe4>
   11ecc:	41f8d793          	srai	a5,a7,0x1f
   11ed0:	01f7f793          	andi	a5,a5,31
   11ed4:	011787b3          	add	a5,a5,a7
   11ed8:	4057d793          	srai	a5,a5,0x5
   11edc:	00070613          	mv	a2,a4
   11ee0:	00000493          	li	s1,0
   11ee4:	00000693          	li	a3,0
   11ee8:	04f6c663          	blt	a3,a5,11f34 <__subtf3+0xe88>
   11eec:	00078693          	mv	a3,a5
   11ef0:	0007d463          	bgez	a5,11ef8 <__subtf3+0xe4c>
   11ef4:	00000693          	li	a3,0
   11ef8:	01f8f593          	andi	a1,a7,31
   11efc:	00279613          	slli	a2,a5,0x2
   11f00:	04059463          	bnez	a1,11f48 <__subtf3+0xe9c>
   11f04:	00300593          	li	a1,3
   11f08:	00000693          	li	a3,0
   11f0c:	40f585b3          	sub	a1,a1,a5
   11f10:	00c70533          	add	a0,a4,a2
   11f14:	00052503          	lw	a0,0(a0)
   11f18:	00168693          	addi	a3,a3,1 # 80001 <__crt0_copy_data_src_begin+0x6c1a5>
   11f1c:	00470713          	addi	a4,a4,4
   11f20:	fea72e23          	sw	a0,-4(a4)
   11f24:	fed5d6e3          	bge	a1,a3,11f10 <__subtf3+0xe64>
   11f28:	00400513          	li	a0,4
   11f2c:	40f507b3          	sub	a5,a0,a5
   11f30:	08c0006f          	j	11fbc <__subtf3+0xf10>
   11f34:	00062583          	lw	a1,0(a2)
   11f38:	00168693          	addi	a3,a3,1
   11f3c:	00460613          	addi	a2,a2,4
   11f40:	00b4e4b3          	or	s1,s1,a1
   11f44:	fa5ff06f          	j	11ee8 <__subtf3+0xe3c>
   11f48:	800005b7          	lui	a1,0x80000
   11f4c:	01f58593          	addi	a1,a1,31 # 8000001f <__ctr0_io_space_begin+0x8000021f>
   11f50:	00b8f8b3          	and	a7,a7,a1
   11f54:	0008d863          	bgez	a7,11f64 <__subtf3+0xeb8>
   11f58:	fff88893          	addi	a7,a7,-1
   11f5c:	fe08e893          	ori	a7,a7,-32
   11f60:	00188893          	addi	a7,a7,1
   11f64:	00269693          	slli	a3,a3,0x2
   11f68:	04010593          	addi	a1,sp,64
   11f6c:	00d586b3          	add	a3,a1,a3
   11f70:	fd06a683          	lw	a3,-48(a3)
   11f74:	02000513          	li	a0,32
   11f78:	41150533          	sub	a0,a0,a7
   11f7c:	00a696b3          	sll	a3,a3,a0
   11f80:	00d4e4b3          	or	s1,s1,a3
   11f84:	00300693          	li	a3,3
   11f88:	00c80633          	add	a2,a6,a2
   11f8c:	00000313          	li	t1,0
   11f90:	40f686b3          	sub	a3,a3,a5
   11f94:	00460613          	addi	a2,a2,4
   11f98:	0cd34a63          	blt	t1,a3,1206c <__subtf3+0xfc0>
   11f9c:	04010713          	addi	a4,sp,64
   11fa0:	00269693          	slli	a3,a3,0x2
   11fa4:	00d706b3          	add	a3,a4,a3
   11fa8:	01c12703          	lw	a4,28(sp)
   11fac:	00400513          	li	a0,4
   11fb0:	40f507b3          	sub	a5,a0,a5
   11fb4:	011758b3          	srl	a7,a4,a7
   11fb8:	fd16a823          	sw	a7,-48(a3)
   11fbc:	00400713          	li	a4,4
   11fc0:	00000613          	li	a2,0
   11fc4:	00f74663          	blt	a4,a5,11fd0 <__subtf3+0xf24>
   11fc8:	40f70733          	sub	a4,a4,a5
   11fcc:	00271613          	slli	a2,a4,0x2
   11fd0:	00279793          	slli	a5,a5,0x2
   11fd4:	00f80533          	add	a0,a6,a5
   11fd8:	00000593          	li	a1,0
   11fdc:	8fcf80ef          	jal	ra,a0d8 <memset>
   11fe0:	01012703          	lw	a4,16(sp)
   11fe4:	009037b3          	snez	a5,s1
   11fe8:	00f767b3          	or	a5,a4,a5
   11fec:	00f12823          	sw	a5,16(sp)
   11ff0:	01012703          	lw	a4,16(sp)
   11ff4:	01412603          	lw	a2,20(sp)
   11ff8:	40e40733          	sub	a4,s0,a4
   11ffc:	40ca87b3          	sub	a5,s5,a2
   12000:	00e436b3          	sltu	a3,s0,a4
   12004:	00fab5b3          	sltu	a1,s5,a5
   12008:	40d787b3          	sub	a5,a5,a3
   1200c:	00000693          	li	a3,0
   12010:	00e47663          	bgeu	s0,a4,1201c <__subtf3+0xf70>
   12014:	415606b3          	sub	a3,a2,s5
   12018:	0016b693          	seqz	a3,a3
   1201c:	01812803          	lw	a6,24(sp)
   12020:	00b6e6b3          	or	a3,a3,a1
   12024:	00000513          	li	a0,0
   12028:	410b0633          	sub	a2,s6,a6
   1202c:	00cb38b3          	sltu	a7,s6,a2
   12030:	40d605b3          	sub	a1,a2,a3
   12034:	00068663          	beqz	a3,12040 <__subtf3+0xf94>
   12038:	41680833          	sub	a6,a6,s6
   1203c:	00183513          	seqz	a0,a6
   12040:	01c12603          	lw	a2,28(sp)
   12044:	01156533          	or	a0,a0,a7
   12048:	02b12c23          	sw	a1,56(sp)
   1204c:	40cc8cb3          	sub	s9,s9,a2
   12050:	40ac8cb3          	sub	s9,s9,a0
   12054:	03912e23          	sw	s9,60(sp)
   12058:	02f12a23          	sw	a5,52(sp)
   1205c:	02e12823          	sw	a4,48(sp)
   12060:	000c0493          	mv	s1,s8
   12064:	000b8993          	mv	s3,s7
   12068:	d0dff06f          	j	11d74 <__subtf3+0xcc8>
   1206c:	ffc62583          	lw	a1,-4(a2)
   12070:	00062e03          	lw	t3,0(a2)
   12074:	00130313          	addi	t1,t1,1
   12078:	0115d5b3          	srl	a1,a1,a7
   1207c:	00ae1e33          	sll	t3,t3,a0
   12080:	01c5e5b3          	or	a1,a1,t3
   12084:	00b72023          	sw	a1,0(a4)
   12088:	00470713          	addi	a4,a4,4
   1208c:	f09ff06f          	j	11f94 <__subtf3+0xee8>
   12090:	00012e23          	sw	zero,28(sp)
   12094:	00012c23          	sw	zero,24(sp)
   12098:	00012a23          	sw	zero,20(sp)
   1209c:	00100793          	li	a5,1
   120a0:	f4dff06f          	j	11fec <__subtf3+0xf40>
   120a4:	00008537          	lui	a0,0x8
   120a8:	ffe50713          	addi	a4,a0,-2 # 7ffe <__mdiff+0x1b2>
   120ac:	00148593          	addi	a1,s1,1
   120b0:	00e5f5b3          	and	a1,a1,a4
   120b4:	01812683          	lw	a3,24(sp)
   120b8:	01412703          	lw	a4,20(sp)
   120bc:	01c12603          	lw	a2,28(sp)
   120c0:	1e059063          	bnez	a1,122a0 <__subtf3+0x11f4>
   120c4:	016ae5b3          	or	a1,s5,s6
   120c8:	00d767b3          	or	a5,a4,a3
   120cc:	0195e5b3          	or	a1,a1,s9
   120d0:	00c7e7b3          	or	a5,a5,a2
   120d4:	0085e5b3          	or	a1,a1,s0
   120d8:	0127e7b3          	or	a5,a5,s2
   120dc:	10049a63          	bnez	s1,121f0 <__subtf3+0x1144>
   120e0:	02079463          	bnez	a5,12108 <__subtf3+0x105c>
   120e4:	02812823          	sw	s0,48(sp)
   120e8:	03512a23          	sw	s5,52(sp)
   120ec:	03612c23          	sw	s6,56(sp)
   120f0:	03912e23          	sw	s9,60(sp)
   120f4:	000b8993          	mv	s3,s7
   120f8:	9e059863          	bnez	a1,112e8 <__subtf3+0x23c>
   120fc:	00000493          	li	s1,0
   12100:	00000993          	li	s3,0
   12104:	9e4ff06f          	j	112e8 <__subtf3+0x23c>
   12108:	00059c63          	bnez	a1,12120 <__subtf3+0x1074>
   1210c:	03212823          	sw	s2,48(sp)
   12110:	02e12a23          	sw	a4,52(sp)
   12114:	02d12c23          	sw	a3,56(sp)
   12118:	02c12e23          	sw	a2,60(sp)
   1211c:	9ccff06f          	j	112e8 <__subtf3+0x23c>
   12120:	408905b3          	sub	a1,s2,s0
   12124:	41570333          	sub	t1,a4,s5
   12128:	00b93833          	sltu	a6,s2,a1
   1212c:	006737b3          	sltu	a5,a4,t1
   12130:	41030833          	sub	a6,t1,a6
   12134:	00000513          	li	a0,0
   12138:	00b97463          	bgeu	s2,a1,12140 <__subtf3+0x1094>
   1213c:	00133513          	seqz	a0,t1
   12140:	416688b3          	sub	a7,a3,s6
   12144:	00f56533          	or	a0,a0,a5
   12148:	0116bf33          	sltu	t5,a3,a7
   1214c:	40a88eb3          	sub	t4,a7,a0
   12150:	00000e13          	li	t3,0
   12154:	00050463          	beqz	a0,1215c <__subtf3+0x10b0>
   12158:	0018be13          	seqz	t3,a7
   1215c:	419607b3          	sub	a5,a2,s9
   12160:	01ee6e33          	or	t3,t3,t5
   12164:	41c787b3          	sub	a5,a5,t3
   12168:	00080537          	lui	a0,0x80
   1216c:	02f12e23          	sw	a5,60(sp)
   12170:	03d12c23          	sw	t4,56(sp)
   12174:	03012a23          	sw	a6,52(sp)
   12178:	02b12823          	sw	a1,48(sp)
   1217c:	00a7f533          	and	a0,a5,a0
   12180:	06050063          	beqz	a0,121e0 <__subtf3+0x1134>
   12184:	41240933          	sub	s2,s0,s2
   12188:	40ea8733          	sub	a4,s5,a4
   1218c:	012437b3          	sltu	a5,s0,s2
   12190:	00eabab3          	sltu	s5,s5,a4
   12194:	40f70733          	sub	a4,a4,a5
   12198:	00000793          	li	a5,0
   1219c:	01247463          	bgeu	s0,s2,121a4 <__subtf3+0x10f8>
   121a0:	00133793          	seqz	a5,t1
   121a4:	40db06b3          	sub	a3,s6,a3
   121a8:	0157eab3          	or	s5,a5,s5
   121ac:	00db3b33          	sltu	s6,s6,a3
   121b0:	00000593          	li	a1,0
   121b4:	415686b3          	sub	a3,a3,s5
   121b8:	000a8463          	beqz	s5,121c0 <__subtf3+0x1114>
   121bc:	0018b593          	seqz	a1,a7
   121c0:	40cc8633          	sub	a2,s9,a2
   121c4:	0165e5b3          	or	a1,a1,s6
   121c8:	40b605b3          	sub	a1,a2,a1
   121cc:	02b12e23          	sw	a1,60(sp)
   121d0:	02d12c23          	sw	a3,56(sp)
   121d4:	02e12a23          	sw	a4,52(sp)
   121d8:	03212823          	sw	s2,48(sp)
   121dc:	c25ff06f          	j	11e00 <__subtf3+0xd54>
   121e0:	0105e5b3          	or	a1,a1,a6
   121e4:	01d5e5b3          	or	a1,a1,t4
   121e8:	00f5e5b3          	or	a1,a1,a5
   121ec:	f0dff06f          	j	120f8 <__subtf3+0x104c>
   121f0:	03010813          	addi	a6,sp,48
   121f4:	04079e63          	bnez	a5,12250 <__subtf3+0x11a4>
   121f8:	02059e63          	bnez	a1,12234 <__subtf3+0x1188>
   121fc:	02a12e23          	sw	a0,60(sp)
   12200:	02012c23          	sw	zero,56(sp)
   12204:	02012a23          	sw	zero,52(sp)
   12208:	02012823          	sw	zero,48(sp)
   1220c:	03c10793          	addi	a5,sp,60
   12210:	0007a703          	lw	a4,0(a5)
   12214:	ffc7a683          	lw	a3,-4(a5)
   12218:	ffc78793          	addi	a5,a5,-4
   1221c:	00371713          	slli	a4,a4,0x3
   12220:	01d6d693          	srli	a3,a3,0x1d
   12224:	00d76733          	or	a4,a4,a3
   12228:	00e7a223          	sw	a4,4(a5)
   1222c:	fef812e3          	bne	a6,a5,12210 <__subtf3+0x1164>
   12230:	831ff06f          	j	11a60 <__subtf3+0x9b4>
   12234:	02812823          	sw	s0,48(sp)
   12238:	03512a23          	sw	s5,52(sp)
   1223c:	03612c23          	sw	s6,56(sp)
   12240:	03912e23          	sw	s9,60(sp)
   12244:	000b8993          	mv	s3,s7
   12248:	fff50493          	addi	s1,a0,-1 # 7ffff <__crt0_copy_data_src_begin+0x6c1a3>
   1224c:	89cff06f          	j	112e8 <__subtf3+0x23c>
   12250:	00059c63          	bnez	a1,12268 <__subtf3+0x11bc>
   12254:	03212823          	sw	s2,48(sp)
   12258:	02e12a23          	sw	a4,52(sp)
   1225c:	02d12c23          	sw	a3,56(sp)
   12260:	02c12e23          	sw	a2,60(sp)
   12264:	fe5ff06f          	j	12248 <__subtf3+0x119c>
   12268:	02a12e23          	sw	a0,60(sp)
   1226c:	02012c23          	sw	zero,56(sp)
   12270:	02012a23          	sw	zero,52(sp)
   12274:	02012823          	sw	zero,48(sp)
   12278:	03c10793          	addi	a5,sp,60
   1227c:	0007a703          	lw	a4,0(a5)
   12280:	ffc7a683          	lw	a3,-4(a5)
   12284:	ffc78793          	addi	a5,a5,-4
   12288:	00371713          	slli	a4,a4,0x3
   1228c:	01d6d693          	srli	a3,a3,0x1d
   12290:	00d76733          	or	a4,a4,a3
   12294:	00e7a223          	sw	a4,4(a5)
   12298:	fef812e3          	bne	a6,a5,1227c <__subtf3+0x11d0>
   1229c:	fc4ff06f          	j	11a60 <__subtf3+0x9b4>
   122a0:	408905b3          	sub	a1,s2,s0
   122a4:	41570e33          	sub	t3,a4,s5
   122a8:	00b938b3          	sltu	a7,s2,a1
   122ac:	01c73533          	sltu	a0,a4,t3
   122b0:	411e08b3          	sub	a7,t3,a7
   122b4:	00000813          	li	a6,0
   122b8:	00b97463          	bgeu	s2,a1,122c0 <__subtf3+0x1214>
   122bc:	001e3813          	seqz	a6,t3
   122c0:	41668333          	sub	t1,a3,s6
   122c4:	00a86833          	or	a6,a6,a0
   122c8:	0066bfb3          	sltu	t6,a3,t1
   122cc:	41030f33          	sub	t5,t1,a6
   122d0:	00000e93          	li	t4,0
   122d4:	00080463          	beqz	a6,122dc <__subtf3+0x1230>
   122d8:	00133e93          	seqz	t4,t1
   122dc:	41960533          	sub	a0,a2,s9
   122e0:	01feeeb3          	or	t4,t4,t6
   122e4:	41d50533          	sub	a0,a0,t4
   122e8:	00080837          	lui	a6,0x80
   122ec:	02a12e23          	sw	a0,60(sp)
   122f0:	03e12c23          	sw	t5,56(sp)
   122f4:	03112a23          	sw	a7,52(sp)
   122f8:	02b12823          	sw	a1,48(sp)
   122fc:	01057833          	and	a6,a0,a6
   12300:	16080263          	beqz	a6,12464 <__subtf3+0x13b8>
   12304:	41240933          	sub	s2,s0,s2
   12308:	40ea8733          	sub	a4,s5,a4
   1230c:	012435b3          	sltu	a1,s0,s2
   12310:	00eabab3          	sltu	s5,s5,a4
   12314:	40b70733          	sub	a4,a4,a1
   12318:	00000593          	li	a1,0
   1231c:	01247463          	bgeu	s0,s2,12324 <__subtf3+0x1278>
   12320:	001e3593          	seqz	a1,t3
   12324:	40db06b3          	sub	a3,s6,a3
   12328:	0155eab3          	or	s5,a1,s5
   1232c:	00db3b33          	sltu	s6,s6,a3
   12330:	415686b3          	sub	a3,a3,s5
   12334:	000a8463          	beqz	s5,1233c <__subtf3+0x1290>
   12338:	00133793          	seqz	a5,t1
   1233c:	40cc8633          	sub	a2,s9,a2
   12340:	0167e7b3          	or	a5,a5,s6
   12344:	40f607b3          	sub	a5,a2,a5
   12348:	02f12e23          	sw	a5,60(sp)
   1234c:	02d12c23          	sw	a3,56(sp)
   12350:	02e12a23          	sw	a4,52(sp)
   12354:	03212823          	sw	s2,48(sp)
   12358:	000b8993          	mv	s3,s7
   1235c:	03c12503          	lw	a0,60(sp)
   12360:	10050c63          	beqz	a0,12478 <__subtf3+0x13cc>
   12364:	275000ef          	jal	ra,12dd8 <__clzsi2>
   12368:	ff450413          	addi	s0,a0,-12
   1236c:	41f45613          	srai	a2,s0,0x1f
   12370:	01f67613          	andi	a2,a2,31
   12374:	00860633          	add	a2,a2,s0
   12378:	40565613          	srai	a2,a2,0x5
   1237c:	01f47713          	andi	a4,s0,31
   12380:	40c007b3          	neg	a5,a2
   12384:	12070663          	beqz	a4,124b0 <__subtf3+0x1404>
   12388:	80000737          	lui	a4,0x80000
   1238c:	01f70713          	addi	a4,a4,31 # 8000001f <__ctr0_io_space_begin+0x8000021f>
   12390:	00e47733          	and	a4,s0,a4
   12394:	00075863          	bgez	a4,123a4 <__subtf3+0x12f8>
   12398:	fff70713          	addi	a4,a4,-1
   1239c:	fe076713          	ori	a4,a4,-32
   123a0:	00170713          	addi	a4,a4,1
   123a4:	00279793          	slli	a5,a5,0x2
   123a8:	02000513          	li	a0,32
   123ac:	03010893          	addi	a7,sp,48
   123b0:	00c78793          	addi	a5,a5,12
   123b4:	40e50533          	sub	a0,a0,a4
   123b8:	00f887b3          	add	a5,a7,a5
   123bc:	00261593          	slli	a1,a2,0x2
   123c0:	10f89e63          	bne	a7,a5,124dc <__subtf3+0x1430>
   123c4:	04010793          	addi	a5,sp,64
   123c8:	00b785b3          	add	a1,a5,a1
   123cc:	03012783          	lw	a5,48(sp)
   123d0:	fff60613          	addi	a2,a2,-1
   123d4:	00e79733          	sll	a4,a5,a4
   123d8:	fee5a823          	sw	a4,-16(a1)
   123dc:	00160613          	addi	a2,a2,1
   123e0:	00261613          	slli	a2,a2,0x2
   123e4:	00000593          	li	a1,0
   123e8:	03010513          	addi	a0,sp,48
   123ec:	cedf70ef          	jal	ra,a0d8 <memset>
   123f0:	20944063          	blt	s0,s1,125f0 <__subtf3+0x1544>
   123f4:	409404b3          	sub	s1,s0,s1
   123f8:	00148493          	addi	s1,s1,1
   123fc:	41f4d513          	srai	a0,s1,0x1f
   12400:	01f57513          	andi	a0,a0,31
   12404:	00950533          	add	a0,a0,s1
   12408:	03010613          	addi	a2,sp,48
   1240c:	40555513          	srai	a0,a0,0x5
   12410:	00060713          	mv	a4,a2
   12414:	00000413          	li	s0,0
   12418:	00000793          	li	a5,0
   1241c:	0ea7c263          	blt	a5,a0,12500 <__subtf3+0x1454>
   12420:	00050693          	mv	a3,a0
   12424:	00055463          	bgez	a0,1242c <__subtf3+0x1380>
   12428:	00000693          	li	a3,0
   1242c:	01f4f793          	andi	a5,s1,31
   12430:	00251713          	slli	a4,a0,0x2
   12434:	0e079063          	bnez	a5,12514 <__subtf3+0x1468>
   12438:	00300693          	li	a3,3
   1243c:	40a686b3          	sub	a3,a3,a0
   12440:	00e605b3          	add	a1,a2,a4
   12444:	0005a583          	lw	a1,0(a1)
   12448:	00178793          	addi	a5,a5,1
   1244c:	00460613          	addi	a2,a2,4
   12450:	feb62e23          	sw	a1,-4(a2)
   12454:	fef6d6e3          	bge	a3,a5,12440 <__subtf3+0x1394>
   12458:	00400793          	li	a5,4
   1245c:	40a78533          	sub	a0,a5,a0
   12460:	12c0006f          	j	1258c <__subtf3+0x14e0>
   12464:	0115e5b3          	or	a1,a1,a7
   12468:	01e5e5b3          	or	a1,a1,t5
   1246c:	00a5e5b3          	or	a1,a1,a0
   12470:	c80586e3          	beqz	a1,120fc <__subtf3+0x1050>
   12474:	ee9ff06f          	j	1235c <__subtf3+0x12b0>
   12478:	03812503          	lw	a0,56(sp)
   1247c:	00050863          	beqz	a0,1248c <__subtf3+0x13e0>
   12480:	159000ef          	jal	ra,12dd8 <__clzsi2>
   12484:	02050513          	addi	a0,a0,32
   12488:	ee1ff06f          	j	12368 <__subtf3+0x12bc>
   1248c:	03412503          	lw	a0,52(sp)
   12490:	00050863          	beqz	a0,124a0 <__subtf3+0x13f4>
   12494:	145000ef          	jal	ra,12dd8 <__clzsi2>
   12498:	04050513          	addi	a0,a0,64
   1249c:	ecdff06f          	j	12368 <__subtf3+0x12bc>
   124a0:	03012503          	lw	a0,48(sp)
   124a4:	135000ef          	jal	ra,12dd8 <__clzsi2>
   124a8:	06050513          	addi	a0,a0,96
   124ac:	ebdff06f          	j	12368 <__subtf3+0x12bc>
   124b0:	03c10713          	addi	a4,sp,60
   124b4:	00279793          	slli	a5,a5,0x2
   124b8:	00300693          	li	a3,3
   124bc:	00f705b3          	add	a1,a4,a5
   124c0:	0005a583          	lw	a1,0(a1)
   124c4:	fff68693          	addi	a3,a3,-1
   124c8:	ffc70713          	addi	a4,a4,-4
   124cc:	00b72223          	sw	a1,4(a4)
   124d0:	fec6d6e3          	bge	a3,a2,124bc <__subtf3+0x1410>
   124d4:	fff60613          	addi	a2,a2,-1
   124d8:	f05ff06f          	j	123dc <__subtf3+0x1330>
   124dc:	0007a683          	lw	a3,0(a5)
   124e0:	ffc7a803          	lw	a6,-4(a5)
   124e4:	00b78333          	add	t1,a5,a1
   124e8:	00e696b3          	sll	a3,a3,a4
   124ec:	00a85833          	srl	a6,a6,a0
   124f0:	0106e6b3          	or	a3,a3,a6
   124f4:	00d32023          	sw	a3,0(t1)
   124f8:	ffc78793          	addi	a5,a5,-4
   124fc:	ec5ff06f          	j	123c0 <__subtf3+0x1314>
   12500:	00072683          	lw	a3,0(a4)
   12504:	00178793          	addi	a5,a5,1
   12508:	00470713          	addi	a4,a4,4
   1250c:	00d46433          	or	s0,s0,a3
   12510:	f0dff06f          	j	1241c <__subtf3+0x1370>
   12514:	800007b7          	lui	a5,0x80000
   12518:	01f78793          	addi	a5,a5,31 # 8000001f <__ctr0_io_space_begin+0x8000021f>
   1251c:	00f4f4b3          	and	s1,s1,a5
   12520:	0004d863          	bgez	s1,12530 <__subtf3+0x1484>
   12524:	fff48493          	addi	s1,s1,-1
   12528:	fe04e493          	ori	s1,s1,-32
   1252c:	00148493          	addi	s1,s1,1
   12530:	04010793          	addi	a5,sp,64
   12534:	00269693          	slli	a3,a3,0x2
   12538:	00d786b3          	add	a3,a5,a3
   1253c:	ff06a783          	lw	a5,-16(a3)
   12540:	02000593          	li	a1,32
   12544:	409585b3          	sub	a1,a1,s1
   12548:	00b797b3          	sll	a5,a5,a1
   1254c:	00f46433          	or	s0,s0,a5
   12550:	03010793          	addi	a5,sp,48
   12554:	00e78733          	add	a4,a5,a4
   12558:	00300793          	li	a5,3
   1255c:	00000813          	li	a6,0
   12560:	40a787b3          	sub	a5,a5,a0
   12564:	00470713          	addi	a4,a4,4
   12568:	06f84263          	blt	a6,a5,125cc <__subtf3+0x1520>
   1256c:	00400713          	li	a4,4
   12570:	40a70533          	sub	a0,a4,a0
   12574:	00279793          	slli	a5,a5,0x2
   12578:	04010713          	addi	a4,sp,64
   1257c:	00f707b3          	add	a5,a4,a5
   12580:	03c12703          	lw	a4,60(sp)
   12584:	009754b3          	srl	s1,a4,s1
   12588:	fe97a823          	sw	s1,-16(a5)
   1258c:	00400793          	li	a5,4
   12590:	00000613          	li	a2,0
   12594:	00a7c663          	blt	a5,a0,125a0 <__subtf3+0x14f4>
   12598:	40a787b3          	sub	a5,a5,a0
   1259c:	00279613          	slli	a2,a5,0x2
   125a0:	03010793          	addi	a5,sp,48
   125a4:	00251513          	slli	a0,a0,0x2
   125a8:	00a78533          	add	a0,a5,a0
   125ac:	00000593          	li	a1,0
   125b0:	b29f70ef          	jal	ra,a0d8 <memset>
   125b4:	03012703          	lw	a4,48(sp)
   125b8:	008037b3          	snez	a5,s0
   125bc:	00000493          	li	s1,0
   125c0:	00f767b3          	or	a5,a4,a5
   125c4:	02f12823          	sw	a5,48(sp)
   125c8:	d21fe06f          	j	112e8 <__subtf3+0x23c>
   125cc:	ffc72683          	lw	a3,-4(a4)
   125d0:	00072883          	lw	a7,0(a4)
   125d4:	00180813          	addi	a6,a6,1 # 80001 <__crt0_copy_data_src_begin+0x6c1a5>
   125d8:	0096d6b3          	srl	a3,a3,s1
   125dc:	00b898b3          	sll	a7,a7,a1
   125e0:	0116e6b3          	or	a3,a3,a7
   125e4:	00d62023          	sw	a3,0(a2)
   125e8:	00460613          	addi	a2,a2,4
   125ec:	f79ff06f          	j	12564 <__subtf3+0x14b8>
   125f0:	03c12783          	lw	a5,60(sp)
   125f4:	fff80737          	lui	a4,0xfff80
   125f8:	fff70713          	addi	a4,a4,-1 # fff7ffff <__ctr0_io_space_begin+0xfff801ff>
   125fc:	00e7f7b3          	and	a5,a5,a4
   12600:	408484b3          	sub	s1,s1,s0
   12604:	02f12e23          	sw	a5,60(sp)
   12608:	ce1fe06f          	j	112e8 <__subtf3+0x23c>
   1260c:	02012e23          	sw	zero,60(sp)
   12610:	02012c23          	sw	zero,56(sp)
   12614:	02012a23          	sw	zero,52(sp)
   12618:	02012823          	sw	zero,48(sp)
   1261c:	d51fe06f          	j	1136c <__subtf3+0x2c0>

00012620 <__fixtfsi>:
   12620:	00852783          	lw	a5,8(a0)
   12624:	00452703          	lw	a4,4(a0)
   12628:	00c52683          	lw	a3,12(a0)
   1262c:	00052603          	lw	a2,0(a0)
   12630:	fe010113          	addi	sp,sp,-32
   12634:	00e12223          	sw	a4,4(sp)
   12638:	00f12423          	sw	a5,8(sp)
   1263c:	00f12c23          	sw	a5,24(sp)
   12640:	00004737          	lui	a4,0x4
   12644:	00169793          	slli	a5,a3,0x1
   12648:	0117d593          	srli	a1,a5,0x11
   1264c:	00c12023          	sw	a2,0(sp)
   12650:	00d12623          	sw	a3,12(sp)
   12654:	00c12823          	sw	a2,16(sp)
   12658:	ffe70793          	addi	a5,a4,-2 # 3ffe <emovo.constprop.0+0x22>
   1265c:	00000513          	li	a0,0
   12660:	00b7de63          	bge	a5,a1,1267c <__fixtfsi+0x5c>
   12664:	01d70793          	addi	a5,a4,29
   12668:	01f6d813          	srli	a6,a3,0x1f
   1266c:	00b7dc63          	bge	a5,a1,12684 <__fixtfsi+0x64>
   12670:	80000537          	lui	a0,0x80000
   12674:	fff54513          	not	a0,a0
   12678:	00a80533          	add	a0,a6,a0
   1267c:	02010113          	addi	sp,sp,32
   12680:	00008067          	ret
   12684:	01069693          	slli	a3,a3,0x10
   12688:	000107b7          	lui	a5,0x10
   1268c:	0106d693          	srli	a3,a3,0x10
   12690:	00f6e6b3          	or	a3,a3,a5
   12694:	06f70793          	addi	a5,a4,111
   12698:	40b787b3          	sub	a5,a5,a1
   1269c:	4057d713          	srai	a4,a5,0x5
   126a0:	00d12e23          	sw	a3,28(sp)
   126a4:	01f7f793          	andi	a5,a5,31
   126a8:	04078863          	beqz	a5,126f8 <__fixtfsi+0xd8>
   126ac:	02000513          	li	a0,32
   126b0:	ffe70893          	addi	a7,a4,-2
   126b4:	40f50533          	sub	a0,a0,a5
   126b8:	00271713          	slli	a4,a4,0x2
   126bc:	02010e13          	addi	t3,sp,32
   126c0:	00a69533          	sll	a0,a3,a0
   126c4:	00000313          	li	t1,0
   126c8:	00000593          	li	a1,0
   126cc:	0018b893          	seqz	a7,a7
   126d0:	00ee0733          	add	a4,t3,a4
   126d4:	0515c463          	blt	a1,a7,1271c <__fixtfsi+0xfc>
   126d8:	00030463          	beqz	t1,126e0 <__fixtfsi+0xc0>
   126dc:	00c12823          	sw	a2,16(sp)
   126e0:	00259593          	slli	a1,a1,0x2
   126e4:	02010713          	addi	a4,sp,32
   126e8:	00b705b3          	add	a1,a4,a1
   126ec:	00f6d6b3          	srl	a3,a3,a5
   126f0:	fed5a823          	sw	a3,-16(a1)
   126f4:	0180006f          	j	1270c <__fixtfsi+0xec>
   126f8:	02010793          	addi	a5,sp,32
   126fc:	00271713          	slli	a4,a4,0x2
   12700:	00e78733          	add	a4,a5,a4
   12704:	ff072783          	lw	a5,-16(a4)
   12708:	00f12823          	sw	a5,16(sp)
   1270c:	01012503          	lw	a0,16(sp)
   12710:	f60806e3          	beqz	a6,1267c <__fixtfsi+0x5c>
   12714:	40a00533          	neg	a0,a0
   12718:	f65ff06f          	j	1267c <__fixtfsi+0x5c>
   1271c:	ff072603          	lw	a2,-16(a4)
   12720:	00100313          	li	t1,1
   12724:	00100593          	li	a1,1
   12728:	00f65633          	srl	a2,a2,a5
   1272c:	00a66633          	or	a2,a2,a0
   12730:	fa5ff06f          	j	126d4 <__fixtfsi+0xb4>

00012734 <__floatsitf>:
   12734:	fc010113          	addi	sp,sp,-64
   12738:	02912a23          	sw	s1,52(sp)
   1273c:	02112e23          	sw	ra,60(sp)
   12740:	02812c23          	sw	s0,56(sp)
   12744:	03212823          	sw	s2,48(sp)
   12748:	03312623          	sw	s3,44(sp)
   1274c:	00050493          	mv	s1,a0
   12750:	12058063          	beqz	a1,12870 <__floatsitf+0x13c>
   12754:	41f5d793          	srai	a5,a1,0x1f
   12758:	00b7c433          	xor	s0,a5,a1
   1275c:	40f40433          	sub	s0,s0,a5
   12760:	00040513          	mv	a0,s0
   12764:	01f5d913          	srli	s2,a1,0x1f
   12768:	670000ef          	jal	ra,12dd8 <__clzsi2>
   1276c:	05150593          	addi	a1,a0,81 # 80000051 <__ctr0_io_space_begin+0x80000251>
   12770:	000049b7          	lui	s3,0x4
   12774:	01e98993          	addi	s3,s3,30 # 401e <emovo.constprop.0+0x42>
   12778:	4055d793          	srai	a5,a1,0x5
   1277c:	00812823          	sw	s0,16(sp)
   12780:	00012a23          	sw	zero,20(sp)
   12784:	00012c23          	sw	zero,24(sp)
   12788:	00012e23          	sw	zero,28(sp)
   1278c:	01f5f593          	andi	a1,a1,31
   12790:	40a989b3          	sub	s3,s3,a0
   12794:	02058c63          	beqz	a1,127cc <__floatsitf+0x98>
   12798:	00200713          	li	a4,2
   1279c:	0ce79663          	bne	a5,a4,12868 <__floatsitf+0x134>
   127a0:	02000713          	li	a4,32
   127a4:	40b70733          	sub	a4,a4,a1
   127a8:	00e45733          	srl	a4,s0,a4
   127ac:	00e12e23          	sw	a4,28(sp)
   127b0:	fff78613          	addi	a2,a5,-1 # ffff <__multf3+0x2cf>
   127b4:	02010713          	addi	a4,sp,32
   127b8:	00279793          	slli	a5,a5,0x2
   127bc:	00f707b3          	add	a5,a4,a5
   127c0:	00b41433          	sll	s0,s0,a1
   127c4:	fe87a823          	sw	s0,-16(a5)
   127c8:	0340006f          	j	127fc <__floatsitf+0xc8>
   127cc:	00300713          	li	a4,3
   127d0:	40f70733          	sub	a4,a4,a5
   127d4:	00271713          	slli	a4,a4,0x2
   127d8:	02010693          	addi	a3,sp,32
   127dc:	00e68733          	add	a4,a3,a4
   127e0:	ff072703          	lw	a4,-16(a4)
   127e4:	00200613          	li	a2,2
   127e8:	00e12e23          	sw	a4,28(sp)
   127ec:	00200713          	li	a4,2
   127f0:	00e79663          	bne	a5,a4,127fc <__floatsitf+0xc8>
   127f4:	00812c23          	sw	s0,24(sp)
   127f8:	00100613          	li	a2,1
   127fc:	00160613          	addi	a2,a2,1
   12800:	00000593          	li	a1,0
   12804:	00261613          	slli	a2,a2,0x2
   12808:	01010513          	addi	a0,sp,16
   1280c:	8cdf70ef          	jal	ra,a0d8 <memset>
   12810:	00090593          	mv	a1,s2
   12814:	01c12783          	lw	a5,28(sp)
   12818:	00f59413          	slli	s0,a1,0xf
   1281c:	01346433          	or	s0,s0,s3
   12820:	00f11623          	sh	a5,12(sp)
   12824:	01012783          	lw	a5,16(sp)
   12828:	00811723          	sh	s0,14(sp)
   1282c:	03c12083          	lw	ra,60(sp)
   12830:	00f4a023          	sw	a5,0(s1)
   12834:	01412783          	lw	a5,20(sp)
   12838:	03812403          	lw	s0,56(sp)
   1283c:	03012903          	lw	s2,48(sp)
   12840:	00f4a223          	sw	a5,4(s1)
   12844:	01812783          	lw	a5,24(sp)
   12848:	02c12983          	lw	s3,44(sp)
   1284c:	00048513          	mv	a0,s1
   12850:	00f4a423          	sw	a5,8(s1)
   12854:	00c12783          	lw	a5,12(sp)
   12858:	00f4a623          	sw	a5,12(s1)
   1285c:	03412483          	lw	s1,52(sp)
   12860:	04010113          	addi	sp,sp,64
   12864:	00008067          	ret
   12868:	00300793          	li	a5,3
   1286c:	f45ff06f          	j	127b0 <__floatsitf+0x7c>
   12870:	00012e23          	sw	zero,28(sp)
   12874:	00012c23          	sw	zero,24(sp)
   12878:	00012a23          	sw	zero,20(sp)
   1287c:	00012823          	sw	zero,16(sp)
   12880:	00000993          	li	s3,0
   12884:	f91ff06f          	j	12814 <__floatsitf+0xe0>

00012888 <__extenddftf2>:
   12888:	01465793          	srli	a5,a2,0x14
   1288c:	00c61713          	slli	a4,a2,0xc
   12890:	7ff7f793          	andi	a5,a5,2047
   12894:	fc010113          	addi	sp,sp,-64
   12898:	00c75713          	srli	a4,a4,0xc
   1289c:	00178693          	addi	a3,a5,1
   128a0:	02812c23          	sw	s0,56(sp)
   128a4:	02912a23          	sw	s1,52(sp)
   128a8:	03212823          	sw	s2,48(sp)
   128ac:	02112e23          	sw	ra,60(sp)
   128b0:	03312623          	sw	s3,44(sp)
   128b4:	00b12823          	sw	a1,16(sp)
   128b8:	00e12a23          	sw	a4,20(sp)
   128bc:	00012e23          	sw	zero,28(sp)
   128c0:	00012c23          	sw	zero,24(sp)
   128c4:	7fe6f693          	andi	a3,a3,2046
   128c8:	00050913          	mv	s2,a0
   128cc:	00058493          	mv	s1,a1
   128d0:	01f65413          	srli	s0,a2,0x1f
   128d4:	08068463          	beqz	a3,1295c <__extenddftf2+0xd4>
   128d8:	000046b7          	lui	a3,0x4
   128dc:	c0068693          	addi	a3,a3,-1024 # 3c00 <_free_r+0xd8>
   128e0:	00d787b3          	add	a5,a5,a3
   128e4:	0045d513          	srli	a0,a1,0x4
   128e8:	00475693          	srli	a3,a4,0x4
   128ec:	01c71713          	slli	a4,a4,0x1c
   128f0:	00a76733          	or	a4,a4,a0
   128f4:	01c59493          	slli	s1,a1,0x1c
   128f8:	00d12e23          	sw	a3,28(sp)
   128fc:	00e12c23          	sw	a4,24(sp)
   12900:	00912a23          	sw	s1,20(sp)
   12904:	00012823          	sw	zero,16(sp)
   12908:	00f41413          	slli	s0,s0,0xf
   1290c:	00f467b3          	or	a5,s0,a5
   12910:	00f11723          	sh	a5,14(sp)
   12914:	01012783          	lw	a5,16(sp)
   12918:	01c12703          	lw	a4,28(sp)
   1291c:	03c12083          	lw	ra,60(sp)
   12920:	00f92023          	sw	a5,0(s2)
   12924:	01412783          	lw	a5,20(sp)
   12928:	00e11623          	sh	a4,12(sp)
   1292c:	03812403          	lw	s0,56(sp)
   12930:	00f92223          	sw	a5,4(s2)
   12934:	01812783          	lw	a5,24(sp)
   12938:	03412483          	lw	s1,52(sp)
   1293c:	02c12983          	lw	s3,44(sp)
   12940:	00f92423          	sw	a5,8(s2)
   12944:	00c12783          	lw	a5,12(sp)
   12948:	00090513          	mv	a0,s2
   1294c:	00f92623          	sw	a5,12(s2)
   12950:	03012903          	lw	s2,48(sp)
   12954:	04010113          	addi	sp,sp,64
   12958:	00008067          	ret
   1295c:	00b76533          	or	a0,a4,a1
   12960:	0e079063          	bnez	a5,12a40 <__extenddftf2+0x1b8>
   12964:	fa0502e3          	beqz	a0,12908 <__extenddftf2+0x80>
   12968:	04070e63          	beqz	a4,129c4 <__extenddftf2+0x13c>
   1296c:	00070513          	mv	a0,a4
   12970:	468000ef          	jal	ra,12dd8 <__clzsi2>
   12974:	00050993          	mv	s3,a0
   12978:	03198593          	addi	a1,s3,49
   1297c:	4055d613          	srai	a2,a1,0x5
   12980:	01f5f593          	andi	a1,a1,31
   12984:	40c00733          	neg	a4,a2
   12988:	04058463          	beqz	a1,129d0 <__extenddftf2+0x148>
   1298c:	00271713          	slli	a4,a4,0x2
   12990:	02000513          	li	a0,32
   12994:	01010893          	addi	a7,sp,16
   12998:	00c70713          	addi	a4,a4,12
   1299c:	40b50533          	sub	a0,a0,a1
   129a0:	00e88733          	add	a4,a7,a4
   129a4:	00261693          	slli	a3,a2,0x2
   129a8:	06e89a63          	bne	a7,a4,12a1c <__extenddftf2+0x194>
   129ac:	02010793          	addi	a5,sp,32
   129b0:	00d786b3          	add	a3,a5,a3
   129b4:	00b495b3          	sll	a1,s1,a1
   129b8:	fff60613          	addi	a2,a2,-1
   129bc:	feb6a823          	sw	a1,-16(a3)
   129c0:	0380006f          	j	129f8 <__extenddftf2+0x170>
   129c4:	414000ef          	jal	ra,12dd8 <__clzsi2>
   129c8:	02050993          	addi	s3,a0,32
   129cc:	fadff06f          	j	12978 <__extenddftf2+0xf0>
   129d0:	01c10793          	addi	a5,sp,28
   129d4:	00271713          	slli	a4,a4,0x2
   129d8:	00300693          	li	a3,3
   129dc:	00e785b3          	add	a1,a5,a4
   129e0:	0005a583          	lw	a1,0(a1)
   129e4:	fff68693          	addi	a3,a3,-1
   129e8:	ffc78793          	addi	a5,a5,-4
   129ec:	00b7a223          	sw	a1,4(a5)
   129f0:	fec6d6e3          	bge	a3,a2,129dc <__extenddftf2+0x154>
   129f4:	fff60613          	addi	a2,a2,-1
   129f8:	00160613          	addi	a2,a2,1
   129fc:	00261613          	slli	a2,a2,0x2
   12a00:	00000593          	li	a1,0
   12a04:	01010513          	addi	a0,sp,16
   12a08:	ed0f70ef          	jal	ra,a0d8 <memset>
   12a0c:	000047b7          	lui	a5,0x4
   12a10:	c0c78793          	addi	a5,a5,-1012 # 3c0c <_free_r+0xe4>
   12a14:	413787b3          	sub	a5,a5,s3
   12a18:	ef1ff06f          	j	12908 <__extenddftf2+0x80>
   12a1c:	00072783          	lw	a5,0(a4)
   12a20:	ffc72803          	lw	a6,-4(a4)
   12a24:	00d70333          	add	t1,a4,a3
   12a28:	00b797b3          	sll	a5,a5,a1
   12a2c:	00a85833          	srl	a6,a6,a0
   12a30:	0107e7b3          	or	a5,a5,a6
   12a34:	00f32023          	sw	a5,0(t1)
   12a38:	ffc70713          	addi	a4,a4,-4
   12a3c:	f6dff06f          	j	129a8 <__extenddftf2+0x120>
   12a40:	000087b7          	lui	a5,0x8
   12a44:	02050863          	beqz	a0,12a74 <__extenddftf2+0x1ec>
   12a48:	01c71793          	slli	a5,a4,0x1c
   12a4c:	0045d693          	srli	a3,a1,0x4
   12a50:	00d7e7b3          	or	a5,a5,a3
   12a54:	00f12c23          	sw	a5,24(sp)
   12a58:	00475713          	srli	a4,a4,0x4
   12a5c:	000087b7          	lui	a5,0x8
   12a60:	01c59493          	slli	s1,a1,0x1c
   12a64:	00f76733          	or	a4,a4,a5
   12a68:	00912a23          	sw	s1,20(sp)
   12a6c:	00012823          	sw	zero,16(sp)
   12a70:	00e12e23          	sw	a4,28(sp)
   12a74:	fff78793          	addi	a5,a5,-1 # 7fff <__mdiff+0x1b3>
   12a78:	e91ff06f          	j	12908 <__extenddftf2+0x80>

00012a7c <__trunctfdf2>:
   12a7c:	fd010113          	addi	sp,sp,-48
   12a80:	00852783          	lw	a5,8(a0)
   12a84:	02812423          	sw	s0,40(sp)
   12a88:	00c52403          	lw	s0,12(a0)
   12a8c:	00452703          	lw	a4,4(a0)
   12a90:	00052683          	lw	a3,0(a0)
   12a94:	00f12423          	sw	a5,8(sp)
   12a98:	00f12c23          	sw	a5,24(sp)
   12a9c:	01041793          	slli	a5,s0,0x10
   12aa0:	0107d793          	srli	a5,a5,0x10
   12aa4:	00e12223          	sw	a4,4(sp)
   12aa8:	00e12a23          	sw	a4,20(sp)
   12aac:	00141713          	slli	a4,s0,0x1
   12ab0:	00812623          	sw	s0,12(sp)
   12ab4:	00f12e23          	sw	a5,28(sp)
   12ab8:	02112623          	sw	ra,44(sp)
   12abc:	02912223          	sw	s1,36(sp)
   12ac0:	00d12023          	sw	a3,0(sp)
   12ac4:	00d12823          	sw	a3,16(sp)
   12ac8:	01175713          	srli	a4,a4,0x11
   12acc:	01f45413          	srli	s0,s0,0x1f
   12ad0:	01010513          	addi	a0,sp,16
   12ad4:	01c10793          	addi	a5,sp,28
   12ad8:	0007a683          	lw	a3,0(a5)
   12adc:	ffc7a603          	lw	a2,-4(a5)
   12ae0:	ffc78793          	addi	a5,a5,-4
   12ae4:	00369693          	slli	a3,a3,0x3
   12ae8:	01d65613          	srli	a2,a2,0x1d
   12aec:	00c6e6b3          	or	a3,a3,a2
   12af0:	00d7a223          	sw	a3,4(a5)
   12af4:	fef512e3          	bne	a0,a5,12ad8 <__trunctfdf2+0x5c>
   12af8:	01012683          	lw	a3,16(sp)
   12afc:	00008637          	lui	a2,0x8
   12b00:	ffe60613          	addi	a2,a2,-2 # 7ffe <__mdiff+0x1b2>
   12b04:	00369593          	slli	a1,a3,0x3
   12b08:	00170693          	addi	a3,a4,1
   12b0c:	00b12823          	sw	a1,16(sp)
   12b10:	00c6f6b3          	and	a3,a3,a2
   12b14:	1a068e63          	beqz	a3,12cd0 <__trunctfdf2+0x254>
   12b18:	ffffc6b7          	lui	a3,0xffffc
   12b1c:	40068693          	addi	a3,a3,1024 # ffffc400 <__ctr0_io_space_begin+0xffffc600>
   12b20:	00d70733          	add	a4,a4,a3
   12b24:	7fe00693          	li	a3,2046
   12b28:	20e6c063          	blt	a3,a4,12d28 <__trunctfdf2+0x2ac>
   12b2c:	06e05863          	blez	a4,12b9c <__trunctfdf2+0x120>
   12b30:	01812503          	lw	a0,24(sp)
   12b34:	01c12603          	lw	a2,28(sp)
   12b38:	01412783          	lw	a5,20(sp)
   12b3c:	01c55693          	srli	a3,a0,0x1c
   12b40:	00461613          	slli	a2,a2,0x4
   12b44:	00d66633          	or	a2,a2,a3
   12b48:	00479693          	slli	a3,a5,0x4
   12b4c:	00b6e6b3          	or	a3,a3,a1
   12b50:	01c7d793          	srli	a5,a5,0x1c
   12b54:	00451513          	slli	a0,a0,0x4
   12b58:	00d036b3          	snez	a3,a3
   12b5c:	00a7e7b3          	or	a5,a5,a0
   12b60:	00f6e6b3          	or	a3,a3,a5
   12b64:	00c12a23          	sw	a2,20(sp)
   12b68:	00d12823          	sw	a3,16(sp)
   12b6c:	01012683          	lw	a3,16(sp)
   12b70:	01412783          	lw	a5,20(sp)
   12b74:	0076f613          	andi	a2,a3,7
   12b78:	1a060e63          	beqz	a2,12d34 <__trunctfdf2+0x2b8>
   12b7c:	00f6f613          	andi	a2,a3,15
   12b80:	00400593          	li	a1,4
   12b84:	1ab60863          	beq	a2,a1,12d34 <__trunctfdf2+0x2b8>
   12b88:	00468613          	addi	a2,a3,4
   12b8c:	00d636b3          	sltu	a3,a2,a3
   12b90:	00d787b3          	add	a5,a5,a3
   12b94:	00060693          	mv	a3,a2
   12b98:	19c0006f          	j	12d34 <__trunctfdf2+0x2b8>
   12b9c:	fcc00693          	li	a3,-52
   12ba0:	00d75c63          	bge	a4,a3,12bb8 <__trunctfdf2+0x13c>
   12ba4:	00100793          	li	a5,1
   12ba8:	00012a23          	sw	zero,20(sp)
   12bac:	00f12823          	sw	a5,16(sp)
   12bb0:	00000713          	li	a4,0
   12bb4:	fb9ff06f          	j	12b6c <__trunctfdf2+0xf0>
   12bb8:	01c12683          	lw	a3,28(sp)
   12bbc:	00080837          	lui	a6,0x80
   12bc0:	00050593          	mv	a1,a0
   12bc4:	00d86833          	or	a6,a6,a3
   12bc8:	03d00693          	li	a3,61
   12bcc:	40e68733          	sub	a4,a3,a4
   12bd0:	01012e23          	sw	a6,28(sp)
   12bd4:	40575693          	srai	a3,a4,0x5
   12bd8:	00000613          	li	a2,0
   12bdc:	00000493          	li	s1,0
   12be0:	0005a883          	lw	a7,0(a1)
   12be4:	00160613          	addi	a2,a2,1
   12be8:	00458593          	addi	a1,a1,4
   12bec:	0114e4b3          	or	s1,s1,a7
   12bf0:	fec698e3          	bne	a3,a2,12be0 <__trunctfdf2+0x164>
   12bf4:	01f77713          	andi	a4,a4,31
   12bf8:	00269593          	slli	a1,a3,0x2
   12bfc:	02071863          	bnez	a4,12c2c <__trunctfdf2+0x1b0>
   12c00:	00300613          	li	a2,3
   12c04:	40d60633          	sub	a2,a2,a3
   12c08:	00b78833          	add	a6,a5,a1
   12c0c:	00082803          	lw	a6,0(a6) # 80000 <__crt0_copy_data_src_begin+0x6c1a4>
   12c10:	00170713          	addi	a4,a4,1
   12c14:	00478793          	addi	a5,a5,4
   12c18:	ff07ae23          	sw	a6,-4(a5)
   12c1c:	fee656e3          	bge	a2,a4,12c08 <__trunctfdf2+0x18c>
   12c20:	00400793          	li	a5,4
   12c24:	40d786b3          	sub	a3,a5,a3
   12c28:	0540006f          	j	12c7c <__trunctfdf2+0x200>
   12c2c:	02010613          	addi	a2,sp,32
   12c30:	00b60633          	add	a2,a2,a1
   12c34:	ff062603          	lw	a2,-16(a2)
   12c38:	02000313          	li	t1,32
   12c3c:	40e30333          	sub	t1,t1,a4
   12c40:	00661633          	sll	a2,a2,t1
   12c44:	00c4e4b3          	or	s1,s1,a2
   12c48:	00300613          	li	a2,3
   12c4c:	00b505b3          	add	a1,a0,a1
   12c50:	00000e13          	li	t3,0
   12c54:	40d60633          	sub	a2,a2,a3
   12c58:	00458593          	addi	a1,a1,4
   12c5c:	04ce4863          	blt	t3,a2,12cac <__trunctfdf2+0x230>
   12c60:	00400793          	li	a5,4
   12c64:	40d786b3          	sub	a3,a5,a3
   12c68:	00261613          	slli	a2,a2,0x2
   12c6c:	02010793          	addi	a5,sp,32
   12c70:	00c78633          	add	a2,a5,a2
   12c74:	00e85733          	srl	a4,a6,a4
   12c78:	fee62823          	sw	a4,-16(a2)
   12c7c:	00400613          	li	a2,4
   12c80:	40d60633          	sub	a2,a2,a3
   12c84:	00269693          	slli	a3,a3,0x2
   12c88:	00261613          	slli	a2,a2,0x2
   12c8c:	00000593          	li	a1,0
   12c90:	00d50533          	add	a0,a0,a3
   12c94:	c44f70ef          	jal	ra,a0d8 <memset>
   12c98:	01012783          	lw	a5,16(sp)
   12c9c:	009034b3          	snez	s1,s1
   12ca0:	0097e4b3          	or	s1,a5,s1
   12ca4:	00912823          	sw	s1,16(sp)
   12ca8:	f09ff06f          	j	12bb0 <__trunctfdf2+0x134>
   12cac:	ffc5a883          	lw	a7,-4(a1)
   12cb0:	0005ae83          	lw	t4,0(a1)
   12cb4:	001e0e13          	addi	t3,t3,1
   12cb8:	00e8d8b3          	srl	a7,a7,a4
   12cbc:	006e9eb3          	sll	t4,t4,t1
   12cc0:	01d8e8b3          	or	a7,a7,t4
   12cc4:	0117a023          	sw	a7,0(a5)
   12cc8:	00478793          	addi	a5,a5,4
   12ccc:	f8dff06f          	j	12c58 <__trunctfdf2+0x1dc>
   12cd0:	01412603          	lw	a2,20(sp)
   12cd4:	01812783          	lw	a5,24(sp)
   12cd8:	01c12503          	lw	a0,28(sp)
   12cdc:	00f666b3          	or	a3,a2,a5
   12ce0:	00a6e6b3          	or	a3,a3,a0
   12ce4:	00b6e6b3          	or	a3,a3,a1
   12ce8:	00071863          	bnez	a4,12cf8 <__trunctfdf2+0x27c>
   12cec:	00d036b3          	snez	a3,a3
   12cf0:	00000793          	li	a5,0
   12cf4:	e81ff06f          	j	12b74 <__trunctfdf2+0xf8>
   12cf8:	0c068663          	beqz	a3,12dc4 <__trunctfdf2+0x348>
   12cfc:	01c65693          	srli	a3,a2,0x1c
   12d00:	00451513          	slli	a0,a0,0x4
   12d04:	00479613          	slli	a2,a5,0x4
   12d08:	01c7d793          	srli	a5,a5,0x1c
   12d0c:	00400737          	lui	a4,0x400
   12d10:	00c6e6b3          	or	a3,a3,a2
   12d14:	00a7e7b3          	or	a5,a5,a0
   12d18:	00e7e7b3          	or	a5,a5,a4
   12d1c:	ff86f693          	andi	a3,a3,-8
   12d20:	7ff00713          	li	a4,2047
   12d24:	e51ff06f          	j	12b74 <__trunctfdf2+0xf8>
   12d28:	00000793          	li	a5,0
   12d2c:	00000693          	li	a3,0
   12d30:	7ff00713          	li	a4,2047
   12d34:	00800637          	lui	a2,0x800
   12d38:	00c7f633          	and	a2,a5,a2
   12d3c:	00060e63          	beqz	a2,12d58 <__trunctfdf2+0x2dc>
   12d40:	00170713          	addi	a4,a4,1 # 400001 <__crt0_copy_data_src_begin+0x3ec1a5>
   12d44:	7ff00613          	li	a2,2047
   12d48:	08c70263          	beq	a4,a2,12dcc <__trunctfdf2+0x350>
   12d4c:	ff800637          	lui	a2,0xff800
   12d50:	fff60613          	addi	a2,a2,-1 # ff7fffff <__ctr0_io_space_begin+0xff8001ff>
   12d54:	00c7f7b3          	and	a5,a5,a2
   12d58:	01d79613          	slli	a2,a5,0x1d
   12d5c:	0036d693          	srli	a3,a3,0x3
   12d60:	00d666b3          	or	a3,a2,a3
   12d64:	7ff00613          	li	a2,2047
   12d68:	0037d793          	srli	a5,a5,0x3
   12d6c:	00c71e63          	bne	a4,a2,12d88 <__trunctfdf2+0x30c>
   12d70:	00f6e6b3          	or	a3,a3,a5
   12d74:	00000793          	li	a5,0
   12d78:	00068863          	beqz	a3,12d88 <__trunctfdf2+0x30c>
   12d7c:	000807b7          	lui	a5,0x80
   12d80:	00000693          	li	a3,0
   12d84:	00000413          	li	s0,0
   12d88:	01471713          	slli	a4,a4,0x14
   12d8c:	7ff00637          	lui	a2,0x7ff00
   12d90:	00c79793          	slli	a5,a5,0xc
   12d94:	00c77733          	and	a4,a4,a2
   12d98:	00c7d793          	srli	a5,a5,0xc
   12d9c:	01f41413          	slli	s0,s0,0x1f
   12da0:	00f767b3          	or	a5,a4,a5
   12da4:	02c12083          	lw	ra,44(sp)
   12da8:	0087e733          	or	a4,a5,s0
   12dac:	02812403          	lw	s0,40(sp)
   12db0:	02412483          	lw	s1,36(sp)
   12db4:	00068513          	mv	a0,a3
   12db8:	00070593          	mv	a1,a4
   12dbc:	03010113          	addi	sp,sp,48
   12dc0:	00008067          	ret
   12dc4:	00000793          	li	a5,0
   12dc8:	f69ff06f          	j	12d30 <__trunctfdf2+0x2b4>
   12dcc:	00000793          	li	a5,0
   12dd0:	00000693          	li	a3,0
   12dd4:	f85ff06f          	j	12d58 <__trunctfdf2+0x2dc>

00012dd8 <__clzsi2>:
   12dd8:	000107b7          	lui	a5,0x10
   12ddc:	02f57a63          	bgeu	a0,a5,12e10 <__clzsi2+0x38>
   12de0:	0ff00793          	li	a5,255
   12de4:	00a7b7b3          	sltu	a5,a5,a0
   12de8:	00379793          	slli	a5,a5,0x3
   12dec:	00014737          	lui	a4,0x14
   12df0:	02000693          	li	a3,32
   12df4:	40f686b3          	sub	a3,a3,a5
   12df8:	00f55533          	srl	a0,a0,a5
   12dfc:	d6070793          	addi	a5,a4,-672 # 13d60 <__clz_tab>
   12e00:	00a78533          	add	a0,a5,a0
   12e04:	00054503          	lbu	a0,0(a0)
   12e08:	40a68533          	sub	a0,a3,a0
   12e0c:	00008067          	ret
   12e10:	01000737          	lui	a4,0x1000
   12e14:	01000793          	li	a5,16
   12e18:	fce56ae3          	bltu	a0,a4,12dec <__clzsi2+0x14>
   12e1c:	01800793          	li	a5,24
   12e20:	fcdff06f          	j	12dec <__clzsi2+0x14>
