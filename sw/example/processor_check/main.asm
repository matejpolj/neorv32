
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
      18:	12450513          	addi	a0,a0,292 # 138 <__crt0_dummy_trap_handler>
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
      c4:	f4858593          	addi	a1,a1,-184 # 80000008 <__ctr0_io_space_begin+0x80000208>
      c8:	91018613          	addi	a2,gp,-1776 # 80000110 <__BSS_END__>

000000cc <__crt0_clear_bss_loop>:
      cc:	00c5d863          	bge	a1,a2,dc <__crt0_clear_bss_loop_end>
      d0:	00058023          	sb	zero,0(a1)
      d4:	00158593          	addi	a1,a1,1
      d8:	ff5ff06f          	j	cc <__crt0_clear_bss_loop>

000000dc <__crt0_clear_bss_loop_end>:
      dc:	00005597          	auipc	a1,0x5
      e0:	b3858593          	addi	a1,a1,-1224 # 4c14 <__crt0_copy_data_src_begin>
      e4:	80000617          	auipc	a2,0x80000
      e8:	f1c60613          	addi	a2,a2,-228 # 80000000 <__ctr0_io_space_begin+0x80000200>
      ec:	80000697          	auipc	a3,0x80000
      f0:	f1c68693          	addi	a3,a3,-228 # 80000008 <__ctr0_io_space_begin+0x80000208>

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
     114:	07c000ef          	jal	ra,190 <main>

00000118 <__crt0_main_aftermath>:
     118:	34051073          	csrw	mscratch,a0
     11c:	00001097          	auipc	ra,0x1
     120:	7a408093          	addi	ra,ra,1956 # 18c0 <__neorv32_crt0_after_main>
     124:	00008463          	beqz	ra,12c <__crt0_main_aftermath_end>
     128:	000080e7          	jalr	ra

0000012c <__crt0_main_aftermath_end>:
     12c:	30047073          	csrci	mstatus,8

00000130 <__crt0_main_aftermath_end_loop>:
     130:	10500073          	wfi
     134:	ffdff06f          	j	130 <__crt0_main_aftermath_end_loop>

00000138 <__crt0_dummy_trap_handler>:
     138:	ff810113          	addi	sp,sp,-8
     13c:	00812023          	sw	s0,0(sp)
     140:	00912223          	sw	s1,4(sp)
     144:	34202473          	csrr	s0,mcause
     148:	02044663          	bltz	s0,174 <__crt0_dummy_trap_handler_irq>
     14c:	34102473          	csrr	s0,mepc

00000150 <__crt0_dummy_trap_handler_exc_c_check>:
     150:	00041483          	lh	s1,0(s0)
     154:	0034f493          	andi	s1,s1,3
     158:	00240413          	addi	s0,s0,2
     15c:	34141073          	csrw	mepc,s0
     160:	00300413          	li	s0,3
     164:	00941863          	bne	s0,s1,174 <__crt0_dummy_trap_handler_irq>

00000168 <__crt0_dummy_trap_handler_exc_uncrompressed>:
     168:	34102473          	csrr	s0,mepc
     16c:	00240413          	addi	s0,s0,2
     170:	34141073          	csrw	mepc,s0

00000174 <__crt0_dummy_trap_handler_irq>:
     174:	00012403          	lw	s0,0(sp)
     178:	00412483          	lw	s1,4(sp)
     17c:	00810113          	addi	sp,sp,8
     180:	30200073          	mret
     184:	0000                	unimp
     186:	0000                	unimp
     188:	0000                	unimp
     18a:	0000                	unimp
     18c:	0000                	unimp
     18e:	0000                	unimp

00000190 <main>:
     190:	fd010113          	addi	sp,sp,-48
     194:	02112623          	sw	ra,44(sp)
     198:	02812423          	sw	s0,40(sp)
     19c:	02912223          	sw	s1,36(sp)
     1a0:	03212023          	sw	s2,32(sp)
     1a4:	01312e23          	sw	s3,28(sp)
     1a8:	01412c23          	sw	s4,24(sp)
     1ac:	30047073          	csrci	mstatus,8
     1b0:	00000013          	nop
     1b4:	00000013          	nop
     1b8:	00005537          	lui	a0,0x5
     1bc:	00000613          	li	a2,0
     1c0:	00000593          	li	a1,0
     1c4:	b0050513          	addi	a0,a0,-1280 # 4b00 <symbols.0+0x904>
     1c8:	3a5010ef          	jal	ra,1d6c <neorv32_uart0_setup>
     1cc:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     1d0:	fcf02823          	sw	a5,-48(zero) # ffffffd0 <__ctr0_io_space_begin+0x1d0>
     1d4:	3c5020ef          	jal	ra,2d98 <neorv32_rte_setup>
     1d8:	00000513          	li	a0,0
     1dc:	3c8030ef          	jal	ra,35a4 <neorv32_rte_check_isa>
     1e0:	00004537          	lui	a0,0x4
     1e4:	8bc50513          	addi	a0,a0,-1860 # 38bc <__etext+0x24>
     1e8:	4bd010ef          	jal	ra,1ea4 <neorv32_uart0_printf>
     1ec:	00004537          	lui	a0,0x4
     1f0:	8d450513          	addi	a0,a0,-1836 # 38d4 <__etext+0x3c>
     1f4:	4b1010ef          	jal	ra,1ea4 <neorv32_uart0_printf>
     1f8:	00000793          	li	a5,0
     1fc:	32079073          	csrw	mcountinhibit,a5
     200:	00700793          	li	a5,7
     204:	30679073          	csrw	mcounteren,a5
     208:	fff00513          	li	a0,-1
     20c:	fff00593          	li	a1,-1
     210:	1f1010ef          	jal	ra,1c00 <neorv32_mtime_set_timecmp>
     214:	00000513          	li	a0,0
     218:	00000593          	li	a1,0
     21c:	1a5010ef          	jal	ra,1bc0 <neorv32_mtime_set_time>
     220:	288030ef          	jal	ra,34a8 <neorv32_rte_print_logo>
     224:	254030ef          	jal	ra,3478 <neorv32_rte_print_credits>
     228:	469020ef          	jal	ra,2e90 <neorv32_rte_print_hw_config>
     22c:	00004537          	lui	a0,0x4
     230:	8f450513          	addi	a0,a0,-1804 # 38f4 <__etext+0x5c>
     234:	471010ef          	jal	ra,1ea4 <neorv32_uart0_printf>
     238:	00000493          	li	s1,0
     23c:	00000413          	li	s0,0
     240:	000019b7          	lui	s3,0x1
     244:	01d00913          	li	s2,29
     248:	00040513          	mv	a0,s0
     24c:	7fc98593          	addi	a1,s3,2044 # 17fc <global_trap_handler>
     250:	00140413          	addi	s0,s0,1
     254:	2ed020ef          	jal	ra,2d40 <neorv32_rte_exception_install>
     258:	0ff47413          	andi	s0,s0,255
     25c:	00a484b3          	add	s1,s1,a0
     260:	ff2414e3          	bne	s0,s2,248 <main+0xb8>
     264:	02048a63          	beqz	s1,298 <main+0x108>
     268:	00004537          	lui	a0,0x4
     26c:	90450513          	addi	a0,a0,-1788 # 3904 <__etext+0x6c>
     270:	435010ef          	jal	ra,1ea4 <neorv32_uart0_printf>
     274:	00100513          	li	a0,1
     278:	02c12083          	lw	ra,44(sp)
     27c:	02812403          	lw	s0,40(sp)
     280:	02412483          	lw	s1,36(sp)
     284:	02012903          	lw	s2,32(sp)
     288:	01c12983          	lw	s3,28(sp)
     28c:	01812a03          	lw	s4,24(sp)
     290:	03010113          	addi	sp,sp,48
     294:	00008067          	ret
     298:	00000513          	li	a0,0
     29c:	598010ef          	jal	ra,1834 <sim_irq_trigger>
     2a0:	30449073          	csrw	mie,s1
     2a4:	00004537          	lui	a0,0x4
     2a8:	90c50513          	addi	a0,a0,-1780 # 390c <__etext+0x74>
     2ac:	3f9010ef          	jal	ra,1ea4 <neorv32_uart0_printf>
     2b0:	0000100f          	fence.i
     2b4:	30046073          	csrsi	mstatus,8
     2b8:	00000013          	nop
     2bc:	00000013          	nop
     2c0:	34249073          	csrw	mcause,s1
     2c4:	8101a583          	lw	a1,-2032(gp) # 80000010 <cnt_test>
     2c8:	00004537          	lui	a0,0x4
     2cc:	92050513          	addi	a0,a0,-1760 # 3920 <__etext+0x88>
     2d0:	3d5010ef          	jal	ra,1ea4 <neorv32_uart0_printf>
     2d4:	3a4020ef          	jal	ra,2678 <neorv32_cpu_hpm_get_counters>
     2d8:	80a1aa23          	sw	a0,-2028(gp) # 80000014 <num_hpm_cnts_global>
     2dc:	81018413          	addi	s0,gp,-2032 # 80000010 <cnt_test>
     2e0:	00051463          	bnez	a0,2e8 <main+0x158>
     2e4:	3340106f          	j	1618 <main+0x1488>
     2e8:	00042783          	lw	a5,0(s0)
     2ec:	00178793          	addi	a5,a5,1
     2f0:	00f42023          	sw	a5,0(s0)
     2f4:	b0349073          	csrw	mhpmcounter3,s1
     2f8:	00800793          	li	a5,8
     2fc:	32379073          	csrw	mhpmevent3,a5
     300:	b0449073          	csrw	mhpmcounter4,s1
     304:	01000793          	li	a5,16
     308:	32479073          	csrw	mhpmevent4,a5
     30c:	b0549073          	csrw	mhpmcounter5,s1
     310:	02000793          	li	a5,32
     314:	32579073          	csrw	mhpmevent5,a5
     318:	b0649073          	csrw	mhpmcounter6,s1
     31c:	04000793          	li	a5,64
     320:	32679073          	csrw	mhpmevent6,a5
     324:	b0749073          	csrw	mhpmcounter7,s1
     328:	08000793          	li	a5,128
     32c:	32779073          	csrw	mhpmevent7,a5
     330:	b0849073          	csrw	mhpmcounter8,s1
     334:	10000793          	li	a5,256
     338:	32879073          	csrw	mhpmevent8,a5
     33c:	b0949073          	csrw	mhpmcounter9,s1
     340:	20000793          	li	a5,512
     344:	32979073          	csrw	mhpmevent9,a5
     348:	b0a49073          	csrw	mhpmcounter10,s1
     34c:	40000793          	li	a5,1024
     350:	32a79073          	csrw	mhpmevent10,a5
     354:	b0b49073          	csrw	mhpmcounter11,s1
     358:	000017b7          	lui	a5,0x1
     35c:	80078713          	addi	a4,a5,-2048 # 800 <main+0x670>
     360:	32b71073          	csrw	mhpmevent11,a4
     364:	b0c49073          	csrw	mhpmcounter12,s1
     368:	32c79073          	csrw	mhpmevent12,a5
     36c:	b0d49073          	csrw	mhpmcounter13,s1
     370:	000027b7          	lui	a5,0x2
     374:	32d79073          	csrw	mhpmevent13,a5
     378:	b0e49073          	csrw	mhpmcounter14,s1
     37c:	000047b7          	lui	a5,0x4
     380:	32e79073          	csrw	mhpmevent14,a5
     384:	32049073          	csrw	mcountinhibit,s1
     388:	342027f3          	csrr	a5,mcause
     38c:	00078463          	beqz	a5,394 <main+0x204>
     390:	2800106f          	j	1610 <main+0x1480>
     394:	4b4010ef          	jal	ra,1848 <test_ok>
     398:	00000793          	li	a5,0
     39c:	34279073          	csrw	mcause,a5
     3a0:	00042583          	lw	a1,0(s0)
     3a4:	00004537          	lui	a0,0x4
     3a8:	94850513          	addi	a0,a0,-1720 # 3948 <__etext+0xb0>
     3ac:	2f9010ef          	jal	ra,1ea4 <neorv32_uart0_printf>
     3b0:	00042783          	lw	a5,0(s0)
     3b4:	00178793          	addi	a5,a5,1 # 4001 <__etext+0x769>
     3b8:	00f42023          	sw	a5,0(s0)
     3bc:	3200f073          	csrci	mcountinhibit,1
     3c0:	fff00513          	li	a0,-1
     3c4:	00000593          	li	a1,0
     3c8:	681010ef          	jal	ra,2248 <neorv32_cpu_set_mcycle>
     3cc:	b8002773          	csrr	a4,mcycleh
     3d0:	00100793          	li	a5,1
     3d4:	00f70463          	beq	a4,a5,3dc <main+0x24c>
     3d8:	2500106f          	j	1628 <main+0x1498>
     3dc:	342027f3          	csrr	a5,mcause
     3e0:	00078463          	beqz	a5,3e8 <main+0x258>
     3e4:	2440106f          	j	1628 <main+0x1498>
     3e8:	460010ef          	jal	ra,1848 <test_ok>
     3ec:	00000793          	li	a5,0
     3f0:	34279073          	csrw	mcause,a5
     3f4:	00042583          	lw	a1,0(s0)
     3f8:	00004537          	lui	a0,0x4
     3fc:	96050513          	addi	a0,a0,-1696 # 3960 <__etext+0xc8>
     400:	2a5010ef          	jal	ra,1ea4 <neorv32_uart0_printf>
     404:	00042783          	lw	a5,0(s0)
     408:	00178793          	addi	a5,a5,1
     40c:	00f42023          	sw	a5,0(s0)
     410:	32027073          	csrci	mcountinhibit,4
     414:	fff00513          	li	a0,-1
     418:	00000593          	li	a1,0
     41c:	641010ef          	jal	ra,225c <neorv32_cpu_set_minstret>
     420:	c8202773          	rdinstreth	a4
     424:	00100793          	li	a5,1
     428:	00f70463          	beq	a4,a5,430 <main+0x2a0>
     42c:	2040106f          	j	1630 <main+0x14a0>
     430:	342027f3          	csrr	a5,mcause
     434:	00078463          	beqz	a5,43c <main+0x2ac>
     438:	1f80106f          	j	1630 <main+0x14a0>
     43c:	40c010ef          	jal	ra,1848 <test_ok>
     440:	00000793          	li	a5,0
     444:	34279073          	csrw	mcause,a5
     448:	00042583          	lw	a1,0(s0)
     44c:	00004537          	lui	a0,0x4
     450:	97850513          	addi	a0,a0,-1672 # 3978 <__etext+0xe0>
     454:	251010ef          	jal	ra,1ea4 <neorv32_uart0_printf>
     458:	00042783          	lw	a5,0(s0)
     45c:	00178793          	addi	a5,a5,1
     460:	00f42023          	sw	a5,0(s0)
     464:	320027f3          	csrr	a5,mcountinhibit
     468:	0017e793          	ori	a5,a5,1
     46c:	32079073          	csrw	mcountinhibit,a5
     470:	c0002773          	rdcycle	a4
     474:	00000013          	nop
     478:	00000013          	nop
     47c:	c00027f3          	rdcycle	a5
     480:	00e78463          	beq	a5,a4,488 <main+0x2f8>
     484:	1b40106f          	j	1638 <main+0x14a8>
     488:	00079463          	bnez	a5,490 <main+0x300>
     48c:	1ac0106f          	j	1638 <main+0x14a8>
     490:	342027f3          	csrr	a5,mcause
     494:	00078463          	beqz	a5,49c <main+0x30c>
     498:	1a00106f          	j	1638 <main+0x14a8>
     49c:	3ac010ef          	jal	ra,1848 <test_ok>
     4a0:	320027f3          	csrr	a5,mcountinhibit
     4a4:	ffe7f793          	andi	a5,a5,-2
     4a8:	32079073          	csrw	mcountinhibit,a5
     4ac:	00000793          	li	a5,0
     4b0:	34279073          	csrw	mcause,a5
     4b4:	00042583          	lw	a1,0(s0)
     4b8:	00004537          	lui	a0,0x4
     4bc:	99450513          	addi	a0,a0,-1644 # 3994 <__etext+0xfc>
     4c0:	1e5010ef          	jal	ra,1ea4 <neorv32_uart0_printf>
     4c4:	00042783          	lw	a5,0(s0)
     4c8:	00178793          	addi	a5,a5,1
     4cc:	00f42023          	sw	a5,0(s0)
     4d0:	306027f3          	csrr	a5,mcounteren
     4d4:	ffe7f793          	andi	a5,a5,-2
     4d8:	30679073          	csrw	mcounteren,a5
     4dc:	00100793          	li	a5,1
     4e0:	c0079073          	csrw	cycle,a5
     4e4:	58d010ef          	jal	ra,2270 <neorv32_cpu_goto_user_mode>
     4e8:	00000493          	li	s1,0
     4ec:	c00024f3          	rdcycle	s1
     4f0:	00048c63          	beqz	s1,508 <main+0x378>
     4f4:	00004537          	lui	a0,0x4
     4f8:	01b00613          	li	a2,27
     4fc:	01b00593          	li	a1,27
     500:	9b050513          	addi	a0,a0,-1616 # 39b0 <__etext+0x118>
     504:	1a1010ef          	jal	ra,1ea4 <neorv32_uart0_printf>
     508:	34202773          	csrr	a4,mcause
     50c:	00200793          	li	a5,2
     510:	00f70463          	beq	a4,a5,518 <main+0x388>
     514:	12c0106f          	j	1640 <main+0x14b0>
     518:	00048463          	beqz	s1,520 <main+0x390>
     51c:	1240106f          	j	1640 <main+0x14b0>
     520:	328010ef          	jal	ra,1848 <test_ok>
     524:	306027f3          	csrr	a5,mcounteren
     528:	0017e793          	ori	a5,a5,1
     52c:	30679073          	csrw	mcounteren,a5
     530:	00000793          	li	a5,0
     534:	34279073          	csrw	mcause,a5
     538:	00042583          	lw	a1,0(s0)
     53c:	00004537          	lui	a0,0x4
     540:	9d050513          	addi	a0,a0,-1584 # 39d0 <__etext+0x138>
     544:	161010ef          	jal	ra,1ea4 <neorv32_uart0_printf>
     548:	00042783          	lw	a5,0(s0)
     54c:	00178793          	addi	a5,a5,1
     550:	00f42023          	sw	a5,0(s0)
     554:	51d010ef          	jal	ra,2270 <neorv32_cpu_goto_user_mode>
     558:	30200073          	mret
     55c:	34202773          	csrr	a4,mcause
     560:	00200793          	li	a5,2
     564:	00f70463          	beq	a4,a5,56c <main+0x3dc>
     568:	0e00106f          	j	1648 <main+0x14b8>
     56c:	2dc010ef          	jal	ra,1848 <test_ok>
     570:	00000793          	li	a5,0
     574:	34279073          	csrw	mcause,a5
     578:	00042583          	lw	a1,0(s0)
     57c:	00004537          	lui	a0,0x4
     580:	f0000637          	lui	a2,0xf0000
     584:	9e850513          	addi	a0,a0,-1560 # 39e8 <__etext+0x150>
     588:	11d010ef          	jal	ra,1ea4 <neorv32_uart0_printf>
     58c:	fe802783          	lw	a5,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     590:	0027f793          	andi	a5,a5,2
     594:	00079463          	bnez	a5,59c <main+0x40c>
     598:	0c00106f          	j	1658 <main+0x14c8>
     59c:	00042783          	lw	a5,0(s0)
     5a0:	f0000737          	lui	a4,0xf0000
     5a4:	00178793          	addi	a5,a5,1
     5a8:	00f42023          	sw	a5,0(s0)
     5ac:	800007b7          	lui	a5,0x80000
     5b0:	00078793          	mv	a5,a5
     5b4:	0007a683          	lw	a3,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
     5b8:	0047a783          	lw	a5,4(a5)
     5bc:	00d72023          	sw	a3,0(a4) # f0000000 <__ctr0_io_space_begin+0xf0000200>
     5c0:	00f72223          	sw	a5,4(a4)
     5c4:	000700e7          	jalr	a4
     5c8:	342027f3          	csrr	a5,mcause
     5cc:	00078463          	beqz	a5,5d4 <main+0x444>
     5d0:	0800106f          	j	1650 <main+0x14c0>
     5d4:	34002773          	csrr	a4,mscratch
     5d8:	00f00793          	li	a5,15
     5dc:	00f70463          	beq	a4,a5,5e4 <main+0x454>
     5e0:	0700106f          	j	1650 <main+0x14c0>
     5e4:	264010ef          	jal	ra,1848 <test_ok>
     5e8:	00000793          	li	a5,0
     5ec:	34279073          	csrw	mcause,a5
     5f0:	00042583          	lw	a1,0(s0)
     5f4:	00004537          	lui	a0,0x4
     5f8:	a1050513          	addi	a0,a0,-1520 # 3a10 <__etext+0x178>
     5fc:	0a9010ef          	jal	ra,1ea4 <neorv32_uart0_printf>
     600:	00042783          	lw	a5,0(s0)
     604:	00178793          	addi	a5,a5,1
     608:	00f42023          	sw	a5,0(s0)
     60c:	fff027f3          	csrr	a5,0xfff
     610:	34202773          	csrr	a4,mcause
     614:	00200793          	li	a5,2
     618:	00f70463          	beq	a4,a5,620 <main+0x490>
     61c:	04c0106f          	j	1668 <main+0x14d8>
     620:	228010ef          	jal	ra,1848 <test_ok>
     624:	00000493          	li	s1,0
     628:	34249073          	csrw	mcause,s1
     62c:	00042583          	lw	a1,0(s0)
     630:	00004537          	lui	a0,0x4
     634:	a3050513          	addi	a0,a0,-1488 # 3a30 <__etext+0x198>
     638:	06d010ef          	jal	ra,1ea4 <neorv32_uart0_printf>
     63c:	00042783          	lw	a5,0(s0)
     640:	00178793          	addi	a5,a5,1
     644:	00f42023          	sw	a5,0(s0)
     648:	c0149073          	csrw	time,s1
     64c:	34202773          	csrr	a4,mcause
     650:	00200793          	li	a5,2
     654:	00f70463          	beq	a4,a5,65c <main+0x4cc>
     658:	0180106f          	j	1670 <main+0x14e0>
     65c:	1ec010ef          	jal	ra,1848 <test_ok>
     660:	00000793          	li	a5,0
     664:	34279073          	csrw	mcause,a5
     668:	00042583          	lw	a1,0(s0)
     66c:	00004537          	lui	a0,0x4
     670:	a5450513          	addi	a0,a0,-1452 # 3a54 <__etext+0x1bc>
     674:	031010ef          	jal	ra,1ea4 <neorv32_uart0_printf>
     678:	00042783          	lw	a5,0(s0)
     67c:	00178793          	addi	a5,a5,1
     680:	00f42023          	sw	a5,0(s0)
     684:	c0102073          	rdtime	zero
     688:	342027f3          	csrr	a5,mcause
     68c:	00078463          	beqz	a5,694 <main+0x504>
     690:	7e90006f          	j	1678 <main+0x14e8>
     694:	1b4010ef          	jal	ra,1848 <test_ok>
     698:	00000793          	li	a5,0
     69c:	34279073          	csrw	mcause,a5
     6a0:	00042583          	lw	a1,0(s0)
     6a4:	00004537          	lui	a0,0x4
     6a8:	a8450513          	addi	a0,a0,-1404 # 3a84 <__etext+0x1ec>
     6ac:	7f8010ef          	jal	ra,1ea4 <neorv32_uart0_printf>
     6b0:	301027f3          	csrr	a5,misa
     6b4:	0047f793          	andi	a5,a5,4
     6b8:	00078463          	beqz	a5,6c0 <main+0x530>
     6bc:	7cd0006f          	j	1688 <main+0x14f8>
     6c0:	00042783          	lw	a5,0(s0)
     6c4:	00178793          	addi	a5,a5,1
     6c8:	00f42023          	sw	a5,0(s0)
     6cc:	00200793          	li	a5,2
     6d0:	000780e7          	jalr	a5
     6d4:	00000013          	nop
     6d8:	342027f3          	csrr	a5,mcause
     6dc:	00078463          	beqz	a5,6e4 <main+0x554>
     6e0:	7a10006f          	j	1680 <main+0x14f0>
     6e4:	164010ef          	jal	ra,1848 <test_ok>
     6e8:	00000793          	li	a5,0
     6ec:	34279073          	csrw	mcause,a5
     6f0:	00042583          	lw	a1,0(s0)
     6f4:	00004537          	lui	a0,0x4
     6f8:	ac850513          	addi	a0,a0,-1336 # 3ac8 <__etext+0x230>
     6fc:	7a8010ef          	jal	ra,1ea4 <neorv32_uart0_printf>
     700:	00042783          	lw	a5,0(s0)
     704:	00178793          	addi	a5,a5,1
     708:	00f42023          	sw	a5,0(s0)
     70c:	dfc00793          	li	a5,-516
     710:	000780e7          	jalr	a5
     714:	34202773          	csrr	a4,mcause
     718:	00100793          	li	a5,1
     71c:	00f70463          	beq	a4,a5,724 <main+0x594>
     720:	7790006f          	j	1698 <main+0x1508>
     724:	124010ef          	jal	ra,1848 <test_ok>
     728:	00000793          	li	a5,0
     72c:	34279073          	csrw	mcause,a5
     730:	00042583          	lw	a1,0(s0)
     734:	00004537          	lui	a0,0x4
     738:	af050513          	addi	a0,a0,-1296 # 3af0 <__etext+0x258>
     73c:	768010ef          	jal	ra,1ea4 <neorv32_uart0_printf>
     740:	00042783          	lw	a5,0(s0)
     744:	00178793          	addi	a5,a5,1
     748:	00f42023          	sw	a5,0(s0)
     74c:	00000013          	nop
     750:	80000033          	0x80000033
     754:	34202773          	csrr	a4,mcause
     758:	00200793          	li	a5,2
     75c:	00f70463          	beq	a4,a5,764 <main+0x5d4>
     760:	7410006f          	j	16a0 <main+0x1510>
     764:	34302773          	csrr	a4,mtval
     768:	800007b7          	lui	a5,0x80000
     76c:	03378793          	addi	a5,a5,51 # 80000033 <__ctr0_io_space_begin+0x80000233>
     770:	00f70463          	beq	a4,a5,778 <main+0x5e8>
     774:	72d0006f          	j	16a0 <main+0x1510>
     778:	0d0010ef          	jal	ra,1848 <test_ok>
     77c:	00000793          	li	a5,0
     780:	34279073          	csrw	mcause,a5
     784:	00042583          	lw	a1,0(s0)
     788:	00004537          	lui	a0,0x4
     78c:	b1450513          	addi	a0,a0,-1260 # 3b14 <__etext+0x27c>
     790:	714010ef          	jal	ra,1ea4 <neorv32_uart0_printf>
     794:	301027f3          	csrr	a5,misa
     798:	0047f793          	andi	a5,a5,4
     79c:	00079463          	bnez	a5,7a4 <main+0x614>
     7a0:	7110006f          	j	16b0 <main+0x1520>
     7a4:	00042783          	lw	a5,0(s0)
     7a8:	00178793          	addi	a5,a5,1
     7ac:	00f42023          	sw	a5,0(s0)
     7b0:	0001                	nop
     7b2:	0000                	unimp
     7b4:	34202773          	csrr	a4,mcause
     7b8:	00200793          	li	a5,2
     7bc:	00f70463          	beq	a4,a5,7c4 <main+0x634>
     7c0:	6e90006f          	j	16a8 <main+0x1518>
     7c4:	084010ef          	jal	ra,1848 <test_ok>
     7c8:	00000793          	li	a5,0
     7cc:	34279073          	csrw	mcause,a5
     7d0:	00042583          	lw	a1,0(s0)
     7d4:	00004537          	lui	a0,0x4
     7d8:	b4050513          	addi	a0,a0,-1216 # 3b40 <__etext+0x2a8>
     7dc:	6c8010ef          	jal	ra,1ea4 <neorv32_uart0_printf>
     7e0:	00042783          	lw	a5,0(s0)
     7e4:	00178793          	addi	a5,a5,1
     7e8:	00f42023          	sw	a5,0(s0)
     7ec:	00100073          	ebreak
     7f0:	34202773          	csrr	a4,mcause
     7f4:	00300793          	li	a5,3
     7f8:	00f70463          	beq	a4,a5,800 <main+0x670>
     7fc:	6c50006f          	j	16c0 <main+0x1530>
     800:	048010ef          	jal	ra,1848 <test_ok>
     804:	00000793          	li	a5,0
     808:	34279073          	csrw	mcause,a5
     80c:	00042583          	lw	a1,0(s0)
     810:	00004537          	lui	a0,0x4
     814:	b6050513          	addi	a0,a0,-1184 # 3b60 <__etext+0x2c8>
     818:	68c010ef          	jal	ra,1ea4 <neorv32_uart0_printf>
     81c:	00042783          	lw	a5,0(s0)
     820:	00178793          	addi	a5,a5,1
     824:	00f42023          	sw	a5,0(s0)
     828:	00100793          	li	a5,1
     82c:	0007a703          	lw	a4,0(a5)
     830:	342026f3          	csrr	a3,mcause
     834:	00400713          	li	a4,4
     838:	00e68463          	beq	a3,a4,840 <main+0x6b0>
     83c:	68d0006f          	j	16c8 <main+0x1538>
     840:	34302773          	csrr	a4,mtval
     844:	00f70463          	beq	a4,a5,84c <main+0x6bc>
     848:	6810006f          	j	16c8 <main+0x1538>
     84c:	7fd000ef          	jal	ra,1848 <test_ok>
     850:	00000793          	li	a5,0
     854:	34279073          	csrw	mcause,a5
     858:	00042583          	lw	a1,0(s0)
     85c:	00004537          	lui	a0,0x4
     860:	b8c50513          	addi	a0,a0,-1140 # 3b8c <__etext+0x2f4>
     864:	640010ef          	jal	ra,1ea4 <neorv32_uart0_printf>
     868:	00042783          	lw	a5,0(s0)
     86c:	00178793          	addi	a5,a5,1
     870:	00f42023          	sw	a5,0(s0)
     874:	dfc00793          	li	a5,-516
     878:	0007a783          	lw	a5,0(a5)
     87c:	34202773          	csrr	a4,mcause
     880:	00500793          	li	a5,5
     884:	00f70463          	beq	a4,a5,88c <main+0x6fc>
     888:	6490006f          	j	16d0 <main+0x1540>
     88c:	7bd000ef          	jal	ra,1848 <test_ok>
     890:	00000493          	li	s1,0
     894:	34249073          	csrw	mcause,s1
     898:	00042583          	lw	a1,0(s0)
     89c:	00004537          	lui	a0,0x4
     8a0:	bb050513          	addi	a0,a0,-1104 # 3bb0 <__etext+0x318>
     8a4:	600010ef          	jal	ra,1ea4 <neorv32_uart0_printf>
     8a8:	00042783          	lw	a5,0(s0)
     8ac:	00178793          	addi	a5,a5,1
     8b0:	00f42023          	sw	a5,0(s0)
     8b4:	00200793          	li	a5,2
     8b8:	0097a023          	sw	s1,0(a5)
     8bc:	34202773          	csrr	a4,mcause
     8c0:	00600793          	li	a5,6
     8c4:	00f70463          	beq	a4,a5,8cc <main+0x73c>
     8c8:	6110006f          	j	16d8 <main+0x1548>
     8cc:	77d000ef          	jal	ra,1848 <test_ok>
     8d0:	00000493          	li	s1,0
     8d4:	34249073          	csrw	mcause,s1
     8d8:	00042583          	lw	a1,0(s0)
     8dc:	00004537          	lui	a0,0x4
     8e0:	bdc50513          	addi	a0,a0,-1060 # 3bdc <__etext+0x344>
     8e4:	5c0010ef          	jal	ra,1ea4 <neorv32_uart0_printf>
     8e8:	00042783          	lw	a5,0(s0)
     8ec:	00178793          	addi	a5,a5,1
     8f0:	00f42023          	sw	a5,0(s0)
     8f4:	dfc00793          	li	a5,-516
     8f8:	0097a023          	sw	s1,0(a5)
     8fc:	34202773          	csrr	a4,mcause
     900:	00700793          	li	a5,7
     904:	00f70463          	beq	a4,a5,90c <main+0x77c>
     908:	5d90006f          	j	16e0 <main+0x1550>
     90c:	73d000ef          	jal	ra,1848 <test_ok>
     910:	00000793          	li	a5,0
     914:	34279073          	csrw	mcause,a5
     918:	00042583          	lw	a1,0(s0)
     91c:	00004537          	lui	a0,0x4
     920:	c0050513          	addi	a0,a0,-1024 # 3c00 <__etext+0x368>
     924:	580010ef          	jal	ra,1ea4 <neorv32_uart0_printf>
     928:	00042783          	lw	a5,0(s0)
     92c:	00178793          	addi	a5,a5,1
     930:	00f42023          	sw	a5,0(s0)
     934:	00000073          	ecall
     938:	34202773          	csrr	a4,mcause
     93c:	00b00793          	li	a5,11
     940:	00f70463          	beq	a4,a5,948 <main+0x7b8>
     944:	5a50006f          	j	16e8 <main+0x1558>
     948:	701000ef          	jal	ra,1848 <test_ok>
     94c:	00000793          	li	a5,0
     950:	34279073          	csrw	mcause,a5
     954:	00042583          	lw	a1,0(s0)
     958:	00004537          	lui	a0,0x4
     95c:	c3050513          	addi	a0,a0,-976 # 3c30 <__etext+0x398>
     960:	544010ef          	jal	ra,1ea4 <neorv32_uart0_printf>
     964:	00042783          	lw	a5,0(s0)
     968:	00178793          	addi	a5,a5,1
     96c:	00f42023          	sw	a5,0(s0)
     970:	101010ef          	jal	ra,2270 <neorv32_cpu_goto_user_mode>
     974:	00000073          	ecall
     978:	34202773          	csrr	a4,mcause
     97c:	00800793          	li	a5,8
     980:	00f70463          	beq	a4,a5,988 <main+0x7f8>
     984:	56d0006f          	j	16f0 <main+0x1560>
     988:	6c1000ef          	jal	ra,1848 <test_ok>
     98c:	00000793          	li	a5,0
     990:	34279073          	csrw	mcause,a5
     994:	00042583          	lw	a1,0(s0)
     998:	00004537          	lui	a0,0x4
     99c:	c6050513          	addi	a0,a0,-928 # 3c60 <__etext+0x3c8>
     9a0:	504010ef          	jal	ra,1ea4 <neorv32_uart0_printf>
     9a4:	00042783          	lw	a5,0(s0)
     9a8:	fff00513          	li	a0,-1
     9ac:	fff00593          	li	a1,-1
     9b0:	00178793          	addi	a5,a5,1
     9b4:	00f42023          	sw	a5,0(s0)
     9b8:	248010ef          	jal	ra,1c00 <neorv32_mtime_set_timecmp>
     9bc:	00000513          	li	a0,0
     9c0:	00000593          	li	a1,0
     9c4:	1fc010ef          	jal	ra,1bc0 <neorv32_mtime_set_time>
     9c8:	00000513          	li	a0,0
     9cc:	00100593          	li	a1,1
     9d0:	230010ef          	jal	ra,1c00 <neorv32_mtime_set_timecmp>
     9d4:	00000593          	li	a1,0
     9d8:	ffe00513          	li	a0,-2
     9dc:	1e4010ef          	jal	ra,1bc0 <neorv32_mtime_set_time>
     9e0:	00700513          	li	a0,7
     9e4:	7ec010ef          	jal	ra,21d0 <neorv32_cpu_irq_enable>
     9e8:	00000013          	nop
     9ec:	00000013          	nop
     9f0:	00700513          	li	a0,7
     9f4:	019010ef          	jal	ra,220c <neorv32_cpu_irq_disable>
     9f8:	34202773          	csrr	a4,mcause
     9fc:	800007b7          	lui	a5,0x80000
     a00:	00778793          	addi	a5,a5,7 # 80000007 <__ctr0_io_space_begin+0x80000207>
     a04:	00f70463          	beq	a4,a5,a0c <main+0x87c>
     a08:	4f10006f          	j	16f8 <main+0x1568>
     a0c:	63d000ef          	jal	ra,1848 <test_ok>
     a10:	fff00513          	li	a0,-1
     a14:	fff00593          	li	a1,-1
     a18:	1e8010ef          	jal	ra,1c00 <neorv32_mtime_set_timecmp>
     a1c:	00000793          	li	a5,0
     a20:	34279073          	csrw	mcause,a5
     a24:	00042583          	lw	a1,0(s0)
     a28:	00004537          	lui	a0,0x4
     a2c:	c7450513          	addi	a0,a0,-908 # 3c74 <__etext+0x3dc>
     a30:	474010ef          	jal	ra,1ea4 <neorv32_uart0_printf>
     a34:	00042783          	lw	a5,0(s0)
     a38:	00300513          	li	a0,3
     a3c:	00178793          	addi	a5,a5,1
     a40:	00f42023          	sw	a5,0(s0)
     a44:	78c010ef          	jal	ra,21d0 <neorv32_cpu_irq_enable>
     a48:	00800513          	li	a0,8
     a4c:	5e9000ef          	jal	ra,1834 <sim_irq_trigger>
     a50:	00000013          	nop
     a54:	00000013          	nop
     a58:	00300513          	li	a0,3
     a5c:	7b0010ef          	jal	ra,220c <neorv32_cpu_irq_disable>
     a60:	34202773          	csrr	a4,mcause
     a64:	800007b7          	lui	a5,0x80000
     a68:	00378793          	addi	a5,a5,3 # 80000003 <__ctr0_io_space_begin+0x80000203>
     a6c:	48f71ae3          	bne	a4,a5,1700 <main+0x1570>
     a70:	5d9000ef          	jal	ra,1848 <test_ok>
     a74:	00000793          	li	a5,0
     a78:	34279073          	csrw	mcause,a5
     a7c:	00042583          	lw	a1,0(s0)
     a80:	00004537          	lui	a0,0x4
     a84:	c8c50513          	addi	a0,a0,-884 # 3c8c <__etext+0x3f4>
     a88:	41c010ef          	jal	ra,1ea4 <neorv32_uart0_printf>
     a8c:	00042783          	lw	a5,0(s0)
     a90:	00b00513          	li	a0,11
     a94:	00178793          	addi	a5,a5,1
     a98:	00f42023          	sw	a5,0(s0)
     a9c:	734010ef          	jal	ra,21d0 <neorv32_cpu_irq_enable>
     aa0:	00001537          	lui	a0,0x1
     aa4:	80050513          	addi	a0,a0,-2048 # 800 <main+0x670>
     aa8:	58d000ef          	jal	ra,1834 <sim_irq_trigger>
     aac:	00000013          	nop
     ab0:	00000013          	nop
     ab4:	00b00513          	li	a0,11
     ab8:	754010ef          	jal	ra,220c <neorv32_cpu_irq_disable>
     abc:	34202773          	csrr	a4,mcause
     ac0:	800007b7          	lui	a5,0x80000
     ac4:	00b78793          	addi	a5,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
     ac8:	44f710e3          	bne	a4,a5,1708 <main+0x1578>
     acc:	57d000ef          	jal	ra,1848 <test_ok>
     ad0:	00000493          	li	s1,0
     ad4:	34249073          	csrw	mcause,s1
     ad8:	00042583          	lw	a1,0(s0)
     adc:	00004537          	lui	a0,0x4
     ae0:	ca450513          	addi	a0,a0,-860 # 3ca4 <__etext+0x40c>
     ae4:	3c0010ef          	jal	ra,1ea4 <neorv32_uart0_printf>
     ae8:	00042783          	lw	a5,0(s0)
     aec:	00700513          	li	a0,7
     af0:	00178793          	addi	a5,a5,1
     af4:	00f42023          	sw	a5,0(s0)
     af8:	6d8010ef          	jal	ra,21d0 <neorv32_cpu_irq_enable>
     afc:	00100513          	li	a0,1
     b00:	00000593          	li	a1,0
     b04:	0bc010ef          	jal	ra,1bc0 <neorv32_mtime_set_time>
     b08:	00000593          	li	a1,0
     b0c:	00000513          	li	a0,0
     b10:	0f0010ef          	jal	ra,1c00 <neorv32_mtime_set_timecmp>
     b14:	00700513          	li	a0,7
     b18:	6f4010ef          	jal	ra,220c <neorv32_cpu_irq_disable>
     b1c:	fff00513          	li	a0,-1
     b20:	fff00593          	li	a1,-1
     b24:	0dc010ef          	jal	ra,1c00 <neorv32_mtime_set_timecmp>
     b28:	521000ef          	jal	ra,1848 <test_ok>
     b2c:	34249073          	csrw	mcause,s1
     b30:	00042583          	lw	a1,0(s0)
     b34:	00004537          	lui	a0,0x4
     b38:	cc450513          	addi	a0,a0,-828 # 3cc4 <__etext+0x42c>
     b3c:	368010ef          	jal	ra,1ea4 <neorv32_uart0_printf>
     b40:	00042783          	lw	a5,0(s0)
     b44:	00700513          	li	a0,7
     b48:	00178793          	addi	a5,a5,1
     b4c:	00f42023          	sw	a5,0(s0)
     b50:	680010ef          	jal	ra,21d0 <neorv32_cpu_irq_enable>
     b54:	30047073          	csrci	mstatus,8
     b58:	00000013          	nop
     b5c:	00000013          	nop
     b60:	00100513          	li	a0,1
     b64:	00000593          	li	a1,0
     b68:	058010ef          	jal	ra,1bc0 <neorv32_mtime_set_time>
     b6c:	00000513          	li	a0,0
     b70:	00000593          	li	a1,0
     b74:	08c010ef          	jal	ra,1c00 <neorv32_mtime_set_timecmp>
     b78:	00000013          	nop
     b7c:	00000013          	nop
     b80:	34402973          	csrr	s2,mip
     b84:	fff00513          	li	a0,-1
     b88:	fff00593          	li	a1,-1
     b8c:	074010ef          	jal	ra,1c00 <neorv32_mtime_set_timecmp>
     b90:	344024f3          	csrr	s1,mip
     b94:	00700513          	li	a0,7
     b98:	08097913          	andi	s2,s2,128
     b9c:	670010ef          	jal	ra,220c <neorv32_cpu_irq_disable>
     ba0:	360908e3          	beqz	s2,1710 <main+0x1580>
     ba4:	0804f493          	andi	s1,s1,128
     ba8:	360494e3          	bnez	s1,1710 <main+0x1580>
     bac:	49d000ef          	jal	ra,1848 <test_ok>
     bb0:	30046073          	csrsi	mstatus,8
     bb4:	00000013          	nop
     bb8:	00000013          	nop
     bbc:	561000ef          	jal	ra,191c <neorv32_wdt_available>
     bc0:	06050663          	beqz	a0,c2c <main+0xa9c>
     bc4:	00000793          	li	a5,0
     bc8:	34279073          	csrw	mcause,a5
     bcc:	00042583          	lw	a1,0(s0)
     bd0:	00004537          	lui	a0,0x4
     bd4:	ce050513          	addi	a0,a0,-800 # 3ce0 <__etext+0x448>
     bd8:	2cc010ef          	jal	ra,1ea4 <neorv32_uart0_printf>
     bdc:	00042783          	lw	a5,0(s0)
     be0:	01000513          	li	a0,16
     be4:	00178793          	addi	a5,a5,1
     be8:	00f42023          	sw	a5,0(s0)
     bec:	5e4010ef          	jal	ra,21d0 <neorv32_cpu_irq_enable>
     bf0:	00100613          	li	a2,1
     bf4:	00000593          	li	a1,0
     bf8:	00700513          	li	a0,7
     bfc:	531000ef          	jal	ra,192c <neorv32_wdt_setup>
     c00:	fa002e23          	sw	zero,-68(zero) # ffffffbc <__ctr0_io_space_begin+0x1bc>
     c04:	579000ef          	jal	ra,197c <neorv32_wdt_force>
     c08:	00000013          	nop
     c0c:	01000513          	li	a0,16
     c10:	5fc010ef          	jal	ra,220c <neorv32_cpu_irq_disable>
     c14:	34202773          	csrr	a4,mcause
     c18:	800007b7          	lui	a5,0x80000
     c1c:	01078793          	addi	a5,a5,16 # 80000010 <__ctr0_io_space_begin+0x80000210>
     c20:	2ef71ce3          	bne	a4,a5,1718 <main+0x1588>
     c24:	425000ef          	jal	ra,1848 <test_ok>
     c28:	53d000ef          	jal	ra,1964 <neorv32_wdt_disable>
     c2c:	00042583          	lw	a1,0(s0)
     c30:	00004537          	lui	a0,0x4
     c34:	cf450513          	addi	a0,a0,-780 # 3cf4 <__etext+0x45c>
     c38:	26c010ef          	jal	ra,1ea4 <neorv32_uart0_printf>
     c3c:	00004537          	lui	a0,0x4
     c40:	d0850513          	addi	a0,a0,-760 # 3d08 <__etext+0x470>
     c44:	260010ef          	jal	ra,1ea4 <neorv32_uart0_printf>
     c48:	3f4010ef          	jal	ra,203c <neorv32_uart1_available>
     c4c:	08050863          	beqz	a0,cdc <main+0xb4c>
     c50:	00000793          	li	a5,0
     c54:	34279073          	csrw	mcause,a5
     c58:	00042583          	lw	a1,0(s0)
     c5c:	00004537          	lui	a0,0x4
     c60:	d1450513          	addi	a0,a0,-748 # 3d14 <__etext+0x47c>
     c64:	240010ef          	jal	ra,1ea4 <neorv32_uart0_printf>
     c68:	00042783          	lw	a5,0(s0)
     c6c:	00178793          	addi	a5,a5,1
     c70:	00f42023          	sw	a5,0(s0)
     c74:	1bc010ef          	jal	ra,1e30 <neorv32_uart0_tx_busy>
     c78:	fe051ee3          	bnez	a0,c74 <main+0xae4>
     c7c:	fa002483          	lw	s1,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     c80:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     c84:	10000737          	lui	a4,0x10000
     c88:	00e7e7b3          	or	a5,a5,a4
     c8c:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     c90:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     c94:	fffff737          	lui	a4,0xfffff
     c98:	fff70713          	addi	a4,a4,-1 # ffffefff <__ctr0_io_space_begin+0xfffff1ff>
     c9c:	00e7f7b3          	and	a5,a5,a4
     ca0:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     ca4:	174010ef          	jal	ra,1e18 <neorv32_uart0_putc>
     ca8:	188010ef          	jal	ra,1e30 <neorv32_uart0_tx_busy>
     cac:	fe051ee3          	bnez	a0,ca8 <main+0xb18>
     cb0:	01200513          	li	a0,18
     cb4:	51c010ef          	jal	ra,21d0 <neorv32_cpu_irq_enable>
     cb8:	00000013          	nop
     cbc:	01200513          	li	a0,18
     cc0:	54c010ef          	jal	ra,220c <neorv32_cpu_irq_disable>
     cc4:	fa902023          	sw	s1,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     cc8:	34202773          	csrr	a4,mcause
     ccc:	800007b7          	lui	a5,0x80000
     cd0:	01278793          	addi	a5,a5,18 # 80000012 <__ctr0_io_space_begin+0x80000212>
     cd4:	24f716e3          	bne	a4,a5,1720 <main+0x1590>
     cd8:	371000ef          	jal	ra,1848 <test_ok>
     cdc:	080010ef          	jal	ra,1d5c <neorv32_uart0_available>
     ce0:	08050863          	beqz	a0,d70 <main+0xbe0>
     ce4:	00000793          	li	a5,0
     ce8:	34279073          	csrw	mcause,a5
     cec:	00042583          	lw	a1,0(s0)
     cf0:	00004537          	lui	a0,0x4
     cf4:	d2c50513          	addi	a0,a0,-724 # 3d2c <__etext+0x494>
     cf8:	1ac010ef          	jal	ra,1ea4 <neorv32_uart0_printf>
     cfc:	00042783          	lw	a5,0(s0)
     d00:	00178793          	addi	a5,a5,1
     d04:	00f42023          	sw	a5,0(s0)
     d08:	128010ef          	jal	ra,1e30 <neorv32_uart0_tx_busy>
     d0c:	fe051ee3          	bnez	a0,d08 <main+0xb78>
     d10:	fa002483          	lw	s1,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     d14:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     d18:	10000737          	lui	a4,0x10000
     d1c:	00e7e7b3          	or	a5,a5,a4
     d20:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     d24:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     d28:	fffff737          	lui	a4,0xfffff
     d2c:	fff70713          	addi	a4,a4,-1 # ffffefff <__ctr0_io_space_begin+0xfffff1ff>
     d30:	00e7f7b3          	and	a5,a5,a4
     d34:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     d38:	0e0010ef          	jal	ra,1e18 <neorv32_uart0_putc>
     d3c:	01300513          	li	a0,19
     d40:	490010ef          	jal	ra,21d0 <neorv32_cpu_irq_enable>
     d44:	0ec010ef          	jal	ra,1e30 <neorv32_uart0_tx_busy>
     d48:	fe051ee3          	bnez	a0,d44 <main+0xbb4>
     d4c:	00000013          	nop
     d50:	01300513          	li	a0,19
     d54:	4b8010ef          	jal	ra,220c <neorv32_cpu_irq_disable>
     d58:	fa902023          	sw	s1,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     d5c:	34202773          	csrr	a4,mcause
     d60:	800007b7          	lui	a5,0x80000
     d64:	01378793          	addi	a5,a5,19 # 80000013 <__ctr0_io_space_begin+0x80000213>
     d68:	1cf710e3          	bne	a4,a5,1728 <main+0x1598>
     d6c:	2dd000ef          	jal	ra,1848 <test_ok>
     d70:	2cc010ef          	jal	ra,203c <neorv32_uart1_available>
     d74:	08050663          	beqz	a0,e00 <main+0xc70>
     d78:	00000793          	li	a5,0
     d7c:	34279073          	csrw	mcause,a5
     d80:	00042583          	lw	a1,0(s0)
     d84:	00004537          	lui	a0,0x4
     d88:	d4450513          	addi	a0,a0,-700 # 3d44 <__etext+0x4ac>
     d8c:	118010ef          	jal	ra,1ea4 <neorv32_uart0_printf>
     d90:	00042783          	lw	a5,0(s0)
     d94:	10000737          	lui	a4,0x10000
     d98:	00000513          	li	a0,0
     d9c:	00178793          	addi	a5,a5,1
     da0:	00f42023          	sw	a5,0(s0)
     da4:	fd002403          	lw	s0,-48(zero) # ffffffd0 <__ctr0_io_space_begin+0x1d0>
     da8:	fd002783          	lw	a5,-48(zero) # ffffffd0 <__ctr0_io_space_begin+0x1d0>
     dac:	00e7e7b3          	or	a5,a5,a4
     db0:	fcf02823          	sw	a5,-48(zero) # ffffffd0 <__ctr0_io_space_begin+0x1d0>
     db4:	fd002783          	lw	a5,-48(zero) # ffffffd0 <__ctr0_io_space_begin+0x1d0>
     db8:	fffff737          	lui	a4,0xfffff
     dbc:	fff70713          	addi	a4,a4,-1 # ffffefff <__ctr0_io_space_begin+0xfffff1ff>
     dc0:	00e7f7b3          	and	a5,a5,a4
     dc4:	fcf02823          	sw	a5,-48(zero) # ffffffd0 <__ctr0_io_space_begin+0x1d0>
     dc8:	284010ef          	jal	ra,204c <neorv32_uart1_putc>
     dcc:	298010ef          	jal	ra,2064 <neorv32_uart1_tx_busy>
     dd0:	fe051ee3          	bnez	a0,dcc <main+0xc3c>
     dd4:	01400513          	li	a0,20
     dd8:	3f8010ef          	jal	ra,21d0 <neorv32_cpu_irq_enable>
     ddc:	00000013          	nop
     de0:	01400513          	li	a0,20
     de4:	428010ef          	jal	ra,220c <neorv32_cpu_irq_disable>
     de8:	fc802823          	sw	s0,-48(zero) # ffffffd0 <__ctr0_io_space_begin+0x1d0>
     dec:	34202773          	csrr	a4,mcause
     df0:	800007b7          	lui	a5,0x80000
     df4:	01478793          	addi	a5,a5,20 # 80000014 <__ctr0_io_space_begin+0x80000214>
     df8:	12f71ce3          	bne	a4,a5,1730 <main+0x15a0>
     dfc:	24d000ef          	jal	ra,1848 <test_ok>
     e00:	23c010ef          	jal	ra,203c <neorv32_uart1_available>
     e04:	81018413          	addi	s0,gp,-2032 # 80000010 <cnt_test>
     e08:	08050663          	beqz	a0,e94 <main+0xd04>
     e0c:	00000793          	li	a5,0
     e10:	34279073          	csrw	mcause,a5
     e14:	00042583          	lw	a1,0(s0)
     e18:	00004537          	lui	a0,0x4
     e1c:	d5c50513          	addi	a0,a0,-676 # 3d5c <__etext+0x4c4>
     e20:	084010ef          	jal	ra,1ea4 <neorv32_uart0_printf>
     e24:	00042783          	lw	a5,0(s0)
     e28:	fd002483          	lw	s1,-48(zero) # ffffffd0 <__ctr0_io_space_begin+0x1d0>
     e2c:	10000737          	lui	a4,0x10000
     e30:	00178793          	addi	a5,a5,1
     e34:	00f42023          	sw	a5,0(s0)
     e38:	fd002783          	lw	a5,-48(zero) # ffffffd0 <__ctr0_io_space_begin+0x1d0>
     e3c:	00000513          	li	a0,0
     e40:	00e7e7b3          	or	a5,a5,a4
     e44:	fcf02823          	sw	a5,-48(zero) # ffffffd0 <__ctr0_io_space_begin+0x1d0>
     e48:	fd002783          	lw	a5,-48(zero) # ffffffd0 <__ctr0_io_space_begin+0x1d0>
     e4c:	fffff737          	lui	a4,0xfffff
     e50:	fff70713          	addi	a4,a4,-1 # ffffefff <__ctr0_io_space_begin+0xfffff1ff>
     e54:	00e7f7b3          	and	a5,a5,a4
     e58:	fcf02823          	sw	a5,-48(zero) # ffffffd0 <__ctr0_io_space_begin+0x1d0>
     e5c:	1f0010ef          	jal	ra,204c <neorv32_uart1_putc>
     e60:	01500513          	li	a0,21
     e64:	36c010ef          	jal	ra,21d0 <neorv32_cpu_irq_enable>
     e68:	1fc010ef          	jal	ra,2064 <neorv32_uart1_tx_busy>
     e6c:	fe051ee3          	bnez	a0,e68 <main+0xcd8>
     e70:	00000013          	nop
     e74:	01500513          	li	a0,21
     e78:	394010ef          	jal	ra,220c <neorv32_cpu_irq_disable>
     e7c:	fc902823          	sw	s1,-48(zero) # ffffffd0 <__ctr0_io_space_begin+0x1d0>
     e80:	34202773          	csrr	a4,mcause
     e84:	800007b7          	lui	a5,0x80000
     e88:	01578793          	addi	a5,a5,21 # 80000015 <__ctr0_io_space_begin+0x80000215>
     e8c:	0af716e3          	bne	a4,a5,1738 <main+0x15a8>
     e90:	1b9000ef          	jal	ra,1848 <test_ok>
     e94:	770020ef          	jal	ra,3604 <neorv32_spi_available>
     e98:	06050c63          	beqz	a0,f10 <main+0xd80>
     e9c:	00000793          	li	a5,0
     ea0:	34279073          	csrw	mcause,a5
     ea4:	00042583          	lw	a1,0(s0)
     ea8:	00004537          	lui	a0,0x4
     eac:	d7450513          	addi	a0,a0,-652 # 3d74 <__etext+0x4dc>
     eb0:	7f5000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
     eb4:	00042783          	lw	a5,0(s0)
     eb8:	00000693          	li	a3,0
     ebc:	00000613          	li	a2,0
     ec0:	00178793          	addi	a5,a5,1
     ec4:	00000593          	li	a1,0
     ec8:	00000513          	li	a0,0
     ecc:	00f42023          	sw	a5,0(s0)
     ed0:	744020ef          	jal	ra,3614 <neorv32_spi_setup>
     ed4:	00000513          	li	a0,0
     ed8:	790020ef          	jal	ra,3668 <neorv32_spi_trans>
     edc:	01600513          	li	a0,22
     ee0:	2f0010ef          	jal	ra,21d0 <neorv32_cpu_irq_enable>
     ee4:	798020ef          	jal	ra,367c <neorv32_spi_busy>
     ee8:	fe051ee3          	bnez	a0,ee4 <main+0xd54>
     eec:	00000013          	nop
     ef0:	01600513          	li	a0,22
     ef4:	318010ef          	jal	ra,220c <neorv32_cpu_irq_disable>
     ef8:	34202773          	csrr	a4,mcause
     efc:	800007b7          	lui	a5,0x80000
     f00:	01678793          	addi	a5,a5,22 # 80000016 <__ctr0_io_space_begin+0x80000216>
     f04:	02f71ee3          	bne	a4,a5,1740 <main+0x15b0>
     f08:	141000ef          	jal	ra,1848 <test_ok>
     f0c:	748020ef          	jal	ra,3654 <neorv32_spi_disable>
     f10:	0c9010ef          	jal	ra,27d8 <neorv32_twi_available>
     f14:	06050863          	beqz	a0,f84 <main+0xdf4>
     f18:	00000793          	li	a5,0
     f1c:	34279073          	csrw	mcause,a5
     f20:	00042583          	lw	a1,0(s0)
     f24:	00004537          	lui	a0,0x4
     f28:	d8850513          	addi	a0,a0,-632 # 3d88 <__etext+0x4f0>
     f2c:	779000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
     f30:	00042783          	lw	a5,0(s0)
     f34:	00000593          	li	a1,0
     f38:	00000513          	li	a0,0
     f3c:	00178793          	addi	a5,a5,1
     f40:	00f42023          	sw	a5,0(s0)
     f44:	0a5010ef          	jal	ra,27e8 <neorv32_twi_setup>
     f48:	115010ef          	jal	ra,285c <neorv32_twi_generate_start>
     f4c:	00000513          	li	a0,0
     f50:	0d5010ef          	jal	ra,2824 <neorv32_twi_trans>
     f54:	0f1010ef          	jal	ra,2844 <neorv32_twi_generate_stop>
     f58:	01700513          	li	a0,23
     f5c:	274010ef          	jal	ra,21d0 <neorv32_cpu_irq_enable>
     f60:	00000013          	nop
     f64:	01700513          	li	a0,23
     f68:	2a4010ef          	jal	ra,220c <neorv32_cpu_irq_disable>
     f6c:	34202773          	csrr	a4,mcause
     f70:	800007b7          	lui	a5,0x80000
     f74:	01778793          	addi	a5,a5,23 # 80000017 <__ctr0_io_space_begin+0x80000217>
     f78:	7cf71863          	bne	a4,a5,1748 <main+0x15b8>
     f7c:	0cd000ef          	jal	ra,1848 <test_ok>
     f80:	091010ef          	jal	ra,2810 <neorv32_twi_disable>
     f84:	00000793          	li	a5,0
     f88:	34279073          	csrw	mcause,a5
     f8c:	00042583          	lw	a1,0(s0)
     f90:	00004537          	lui	a0,0x4
     f94:	d9c50513          	addi	a0,a0,-612 # 3d9c <__etext+0x504>
     f98:	70d000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
     f9c:	27d000ef          	jal	ra,1a18 <neorv32_xirq_available>
     fa0:	0a050263          	beqz	a0,1044 <main+0xeb4>
     fa4:	00042783          	lw	a5,0(s0)
     fa8:	81818913          	addi	s2,gp,-2024 # 80000018 <xirq_trap_handler_ack>
     fac:	00178793          	addi	a5,a5,1
     fb0:	00f42023          	sw	a5,0(s0)
     fb4:	00092023          	sw	zero,0(s2)
     fb8:	271000ef          	jal	ra,1a28 <neorv32_xirq_setup>
     fbc:	000025b7          	lui	a1,0x2
     fc0:	00050493          	mv	s1,a0
     fc4:	80c58593          	addi	a1,a1,-2036 # 180c <xirq_trap_handler0>
     fc8:	00000513          	li	a0,0
     fcc:	291000ef          	jal	ra,1a5c <neorv32_xirq_install>
     fd0:	000025b7          	lui	a1,0x2
     fd4:	82058593          	addi	a1,a1,-2016 # 1820 <xirq_trap_handler1>
     fd8:	00050a13          	mv	s4,a0
     fdc:	00100513          	li	a0,1
     fe0:	27d000ef          	jal	ra,1a5c <neorv32_xirq_install>
     fe4:	00050993          	mv	s3,a0
     fe8:	01800513          	li	a0,24
     fec:	1e4010ef          	jal	ra,21d0 <neorv32_cpu_irq_enable>
     ff0:	00300513          	li	a0,3
     ff4:	00000593          	li	a1,0
     ff8:	690020ef          	jal	ra,3688 <neorv32_gpio_port_set>
     ffc:	00000013          	nop
    1000:	00000013          	nop
    1004:	01800513          	li	a0,24
    1008:	204010ef          	jal	ra,220c <neorv32_cpu_irq_disable>
    100c:	34202773          	csrr	a4,mcause
    1010:	800007b7          	lui	a5,0x80000
    1014:	01878793          	addi	a5,a5,24 # 80000018 <__ctr0_io_space_begin+0x80000218>
    1018:	72f71c63          	bne	a4,a5,1750 <main+0x15c0>
    101c:	014484b3          	add	s1,s1,s4
    1020:	013484b3          	add	s1,s1,s3
    1024:	72049663          	bnez	s1,1750 <main+0x15c0>
    1028:	00092703          	lw	a4,0(s2)
    102c:	00400793          	li	a5,4
    1030:	72f71063          	bne	a4,a5,1750 <main+0x15c0>
    1034:	015000ef          	jal	ra,1848 <test_ok>
    1038:	f8002023          	sw	zero,-128(zero) # ffffff80 <__ctr0_io_space_begin+0x180>
    103c:	fff00793          	li	a5,-1
    1040:	f8f02223          	sw	a5,-124(zero) # ffffff84 <__ctr0_io_space_begin+0x184>
    1044:	00042583          	lw	a1,0(s0)
    1048:	00004537          	lui	a0,0x4
    104c:	db050513          	addi	a0,a0,-592 # 3db0 <__etext+0x518>
    1050:	655000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    1054:	24d000ef          	jal	ra,1aa0 <neorv32_slink_available>
    1058:	0e050e63          	beqz	a0,1154 <main+0xfc4>
    105c:	00000793          	li	a5,0
    1060:	34279073          	csrw	mcause,a5
    1064:	00042583          	lw	a1,0(s0)
    1068:	00004537          	lui	a0,0x4
    106c:	dd050513          	addi	a0,a0,-560 # 3dd0 <__etext+0x538>
    1070:	635000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    1074:	00042783          	lw	a5,0(s0)
    1078:	00178793          	addi	a5,a5,1
    107c:	00f42023          	sw	a5,0(s0)
    1080:	231000ef          	jal	ra,1ab0 <neorv32_slink_enable>
    1084:	00100613          	li	a2,1
    1088:	00100593          	li	a1,1
    108c:	00000513          	li	a0,0
    1090:	29d000ef          	jal	ra,1b2c <neorv32_slink_tx_irq_config>
    1094:	00100613          	li	a2,1
    1098:	00100593          	li	a1,1
    109c:	00000513          	li	a0,0
    10a0:	241000ef          	jal	ra,1ae0 <neorv32_slink_rx_irq_config>
    10a4:	01a00513          	li	a0,26
    10a8:	128010ef          	jal	ra,21d0 <neorv32_cpu_irq_enable>
    10ac:	01b00513          	li	a0,27
    10b0:	120010ef          	jal	ra,21d0 <neorv32_cpu_irq_enable>
    10b4:	00000013          	nop
    10b8:	342024f3          	csrr	s1,mcause
    10bc:	800007b7          	lui	a5,0x80000
    10c0:	fe57c793          	xori	a5,a5,-27
    10c4:	00000513          	li	a0,0
    10c8:	00100613          	li	a2,1
    10cc:	00000593          	li	a1,0
    10d0:	00f484b3          	add	s1,s1,a5
    10d4:	259000ef          	jal	ra,1b2c <neorv32_slink_tx_irq_config>
    10d8:	a1b2c537          	lui	a0,0xa1b2c
    10dc:	3d450513          	addi	a0,a0,980 # a1b2c3d4 <__ctr0_io_space_begin+0xa1b2c5d4>
    10e0:	009034b3          	snez	s1,s1
    10e4:	299000ef          	jal	ra,1b7c <neorv32_slink_tx0_nonblocking>
    10e8:	00050463          	beqz	a0,10f0 <main+0xf60>
    10ec:	00248493          	addi	s1,s1,2
    10f0:	00000013          	nop
    10f4:	34202773          	csrr	a4,mcause
    10f8:	800007b7          	lui	a5,0x80000
    10fc:	01a78793          	addi	a5,a5,26 # 8000001a <__ctr0_io_space_begin+0x8000021a>
    1100:	00f70463          	beq	a4,a5,1108 <main+0xf78>
    1104:	00448493          	addi	s1,s1,4
    1108:	00000513          	li	a0,0
    110c:	00100613          	li	a2,1
    1110:	00000593          	li	a1,0
    1114:	1cd000ef          	jal	ra,1ae0 <neorv32_slink_rx_irq_config>
    1118:	00c10513          	addi	a0,sp,12
    111c:	281000ef          	jal	ra,1b9c <neorv32_slink_rx0_nonblocking>
    1120:	00050463          	beqz	a0,1128 <main+0xf98>
    1124:	00848493          	addi	s1,s1,8
    1128:	01a00513          	li	a0,26
    112c:	0e0010ef          	jal	ra,220c <neorv32_cpu_irq_disable>
    1130:	01b00513          	li	a0,27
    1134:	0d8010ef          	jal	ra,220c <neorv32_cpu_irq_disable>
    1138:	62049063          	bnez	s1,1758 <main+0x15c8>
    113c:	00c12703          	lw	a4,12(sp)
    1140:	a1b2c7b7          	lui	a5,0xa1b2c
    1144:	3d478793          	addi	a5,a5,980 # a1b2c3d4 <__ctr0_io_space_begin+0xa1b2c5d4>
    1148:	60f71863          	bne	a4,a5,1758 <main+0x15c8>
    114c:	6fc000ef          	jal	ra,1848 <test_ok>
    1150:	179000ef          	jal	ra,1ac8 <neorv32_slink_disable>
    1154:	14d000ef          	jal	ra,1aa0 <neorv32_slink_available>
    1158:	06050463          	beqz	a0,11c0 <main+0x1030>
    115c:	00000793          	li	a5,0
    1160:	34279073          	csrw	mcause,a5
    1164:	00042583          	lw	a1,0(s0)
    1168:	00004537          	lui	a0,0x4
    116c:	dec50513          	addi	a0,a0,-532 # 3dec <__etext+0x554>
    1170:	535000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    1174:	00042783          	lw	a5,0(s0)
    1178:	01c00513          	li	a0,28
    117c:	00178793          	addi	a5,a5,1
    1180:	00f42023          	sw	a5,0(s0)
    1184:	04c010ef          	jal	ra,21d0 <neorv32_cpu_irq_enable>
    1188:	00400613          	li	a2,4
    118c:	00000593          	li	a1,0
    1190:	00000513          	li	a0,0
    1194:	7fc000ef          	jal	ra,1990 <neorv32_gptmr_setup>
    1198:	00000013          	nop
    119c:	00000013          	nop
    11a0:	01c00513          	li	a0,28
    11a4:	068010ef          	jal	ra,220c <neorv32_cpu_irq_disable>
    11a8:	34202773          	csrr	a4,mcause
    11ac:	800007b7          	lui	a5,0x80000
    11b0:	01c78793          	addi	a5,a5,28 # 8000001c <__ctr0_io_space_begin+0x8000021c>
    11b4:	5af71663          	bne	a4,a5,1760 <main+0x15d0>
    11b8:	690000ef          	jal	ra,1848 <test_ok>
    11bc:	005000ef          	jal	ra,19c0 <neorv32_gptmr_disable>
    11c0:	00000793          	li	a5,0
    11c4:	34279073          	csrw	mcause,a5
    11c8:	00042583          	lw	a1,0(s0)
    11cc:	00004537          	lui	a0,0x4
    11d0:	e0450513          	addi	a0,a0,-508 # 3e04 <__etext+0x56c>
    11d4:	4d1000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    11d8:	00042783          	lw	a5,0(s0)
    11dc:	00178793          	addi	a5,a5,1
    11e0:	00f42023          	sw	a5,0(s0)
    11e4:	1f1000ef          	jal	ra,1bd4 <neorv32_mtime_get_time>
    11e8:	00050793          	mv	a5,a0
    11ec:	1f450513          	addi	a0,a0,500
    11f0:	00f537b3          	sltu	a5,a0,a5
    11f4:	00b785b3          	add	a1,a5,a1
    11f8:	209000ef          	jal	ra,1c00 <neorv32_mtime_set_timecmp>
    11fc:	00700513          	li	a0,7
    1200:	7d1000ef          	jal	ra,21d0 <neorv32_cpu_irq_enable>
    1204:	10500073          	wfi
    1208:	00700513          	li	a0,7
    120c:	000010ef          	jal	ra,220c <neorv32_cpu_irq_disable>
    1210:	fff00513          	li	a0,-1
    1214:	fff00593          	li	a1,-1
    1218:	1e9000ef          	jal	ra,1c00 <neorv32_mtime_set_timecmp>
    121c:	34202773          	csrr	a4,mcause
    1220:	800007b7          	lui	a5,0x80000
    1224:	00778793          	addi	a5,a5,7 # 80000007 <__ctr0_io_space_begin+0x80000207>
    1228:	54f70063          	beq	a4,a5,1768 <main+0x15d8>
    122c:	658000ef          	jal	ra,1884 <test_fail>
    1230:	00000793          	li	a5,0
    1234:	34279073          	csrw	mcause,a5
    1238:	00042583          	lw	a1,0(s0)
    123c:	00004537          	lui	a0,0x4
    1240:	e3850513          	addi	a0,a0,-456 # 3e38 <__etext+0x5a0>
    1244:	461000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    1248:	00042783          	lw	a5,0(s0)
    124c:	00178793          	addi	a5,a5,1
    1250:	00f42023          	sw	a5,0(s0)
    1254:	01c010ef          	jal	ra,2270 <neorv32_cpu_goto_user_mode>
    1258:	301027f3          	csrr	a5,misa
    125c:	34202773          	csrr	a4,mcause
    1260:	00200793          	li	a5,2
    1264:	50f71663          	bne	a4,a5,1770 <main+0x15e0>
    1268:	5e0000ef          	jal	ra,1848 <test_ok>
    126c:	00000793          	li	a5,0
    1270:	34279073          	csrw	mcause,a5
    1274:	00042583          	lw	a1,0(s0)
    1278:	00004537          	lui	a0,0x4
    127c:	e6c50513          	addi	a0,a0,-404 # 3e6c <__etext+0x5d4>
    1280:	425000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    1284:	00042783          	lw	a5,0(s0)
    1288:	00200513          	li	a0,2
    128c:	00178793          	addi	a5,a5,1
    1290:	00f42023          	sw	a5,0(s0)
    1294:	2d5010ef          	jal	ra,2d68 <neorv32_rte_exception_uninstall>
    1298:	fff027f3          	csrr	a5,0xfff
    129c:	00005537          	lui	a0,0x5
    12a0:	8f450513          	addi	a0,a0,-1804 # 48f4 <symbols.0+0x6f8>
    12a4:	401000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    12a8:	342027f3          	csrr	a5,mcause
    12ac:	4c078663          	beqz	a5,1778 <main+0x15e8>
    12b0:	598000ef          	jal	ra,1848 <test_ok>
    12b4:	000015b7          	lui	a1,0x1
    12b8:	7fc58593          	addi	a1,a1,2044 # 17fc <global_trap_handler>
    12bc:	00200513          	li	a0,2
    12c0:	281010ef          	jal	ra,2d40 <neorv32_rte_exception_install>
    12c4:	00042583          	lw	a1,0(s0)
    12c8:	00004537          	lui	a0,0x4
    12cc:	e9c50513          	addi	a0,a0,-356 # 3e9c <__etext+0x604>
    12d0:	3d5000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    12d4:	7b1000ef          	jal	ra,2284 <neorv32_cpu_pmp_get_num_regions>
    12d8:	00004937          	lui	s2,0x4
    12dc:	50050463          	beqz	a0,17e4 <main+0x1654>
    12e0:	00000793          	li	a5,0
    12e4:	34279073          	csrw	mcause,a5
    12e8:	00042783          	lw	a5,0(s0)
    12ec:	00178793          	addi	a5,a5,1
    12f0:	00f42023          	sw	a5,0(s0)
    12f4:	048010ef          	jal	ra,233c <neorv32_cpu_pmp_get_granularity>
    12f8:	ff402483          	lw	s1,-12(zero) # fffffff4 <__ctr0_io_space_begin+0x1f4>
    12fc:	00050593          	mv	a1,a0
    1300:	00050993          	mv	s3,a0
    1304:	00004537          	lui	a0,0x4
    1308:	00048613          	mv	a2,s1
    130c:	ec450513          	addi	a0,a0,-316 # 3ec4 <__etext+0x62c>
    1310:	395000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    1314:	01800693          	li	a3,24
    1318:	00098613          	mv	a2,s3
    131c:	00048593          	mv	a1,s1
    1320:	00000513          	li	a0,0
    1324:	058010ef          	jal	ra,237c <neorv32_cpu_pmp_configure_region>
    1328:	46051463          	bnez	a0,1790 <main+0x1600>
    132c:	342027f3          	csrr	a5,mcause
    1330:	46079063          	bnez	a5,1790 <main+0x1600>
    1334:	514000ef          	jal	ra,1848 <test_ok>
    1338:	00042583          	lw	a1,0(s0)
    133c:	00004537          	lui	a0,0x4
    1340:	f2050513          	addi	a0,a0,-224 # 3f20 <__etext+0x688>
    1344:	361000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    1348:	00042783          	lw	a5,0(s0)
    134c:	00178793          	addi	a5,a5,1
    1350:	00f42023          	sw	a5,0(s0)
    1354:	00000793          	li	a5,0
    1358:	34279073          	csrw	mcause,a5
    135c:	715000ef          	jal	ra,2270 <neorv32_cpu_goto_user_mode>
    1360:	000480e7          	jalr	s1
    1364:	342027f3          	csrr	a5,mcause
    1368:	44079863          	bnez	a5,17b8 <main+0x1628>
    136c:	00000073          	ecall
    1370:	514000ef          	jal	ra,1884 <test_fail>
    1374:	00042583          	lw	a1,0(s0)
    1378:	00004537          	lui	a0,0x4
    137c:	f3c50513          	addi	a0,a0,-196 # 3f3c <__etext+0x6a4>
    1380:	325000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    1384:	00042783          	lw	a5,0(s0)
    1388:	00178793          	addi	a5,a5,1
    138c:	00f42023          	sw	a5,0(s0)
    1390:	00000793          	li	a5,0
    1394:	34279073          	csrw	mcause,a5
    1398:	6d9000ef          	jal	ra,2270 <neorv32_cpu_goto_user_mode>
    139c:	0004a783          	lw	a5,0(s1)
    13a0:	00078c63          	beqz	a5,13b8 <main+0x1228>
    13a4:	00004537          	lui	a0,0x4
    13a8:	01b00613          	li	a2,27
    13ac:	01b00593          	li	a1,27
    13b0:	9b050513          	addi	a0,a0,-1616 # 39b0 <__etext+0x118>
    13b4:	2f1000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    13b8:	34202773          	csrr	a4,mcause
    13bc:	00500793          	li	a5,5
    13c0:	40f71263          	bne	a4,a5,17c4 <main+0x1634>
    13c4:	00000073          	ecall
    13c8:	480000ef          	jal	ra,1848 <test_ok>
    13cc:	00042583          	lw	a1,0(s0)
    13d0:	00004537          	lui	a0,0x4
    13d4:	f5450513          	addi	a0,a0,-172 # 3f54 <__etext+0x6bc>
    13d8:	2cd000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    13dc:	00042783          	lw	a5,0(s0)
    13e0:	00000993          	li	s3,0
    13e4:	00178793          	addi	a5,a5,1
    13e8:	00f42023          	sw	a5,0(s0)
    13ec:	34299073          	csrw	mcause,s3
    13f0:	681000ef          	jal	ra,2270 <neorv32_cpu_goto_user_mode>
    13f4:	0134a023          	sw	s3,0(s1)
    13f8:	34202773          	csrr	a4,mcause
    13fc:	00700793          	li	a5,7
    1400:	3cf71863          	bne	a4,a5,17d0 <main+0x1640>
    1404:	00000073          	ecall
    1408:	440000ef          	jal	ra,1848 <test_ok>
    140c:	00042583          	lw	a1,0(s0)
    1410:	00004537          	lui	a0,0x4
    1414:	f7050513          	addi	a0,a0,-144 # 3f70 <__etext+0x6d8>
    1418:	28d000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    141c:	00042783          	lw	a5,0(s0)
    1420:	00178793          	addi	a5,a5,1
    1424:	00f42023          	sw	a5,0(s0)
    1428:	00000793          	li	a5,0
    142c:	34279073          	csrw	mcause,a5
    1430:	08100793          	li	a5,129
    1434:	3a079073          	csrw	pmpcfg0,a5
    1438:	3a0026f3          	csrr	a3,pmpcfg0
    143c:	01900793          	li	a5,25
    1440:	3a079073          	csrw	pmpcfg0,a5
    1444:	3b002773          	csrr	a4,pmpaddr0
    1448:	ababd7b7          	lui	a5,0xababd
    144c:	dcd78793          	addi	a5,a5,-563 # ababcdcd <__ctr0_io_space_begin+0xababcfcd>
    1450:	3b079073          	csrw	pmpaddr0,a5
    1454:	3a0027f3          	csrr	a5,pmpcfg0
    1458:	00d79a63          	bne	a5,a3,146c <main+0x12dc>
    145c:	3b0027f3          	csrr	a5,pmpaddr0
    1460:	00f71663          	bne	a4,a5,146c <main+0x12dc>
    1464:	342027f3          	csrr	a5,mcause
    1468:	36078a63          	beqz	a5,17dc <main+0x164c>
    146c:	418000ef          	jal	ra,1884 <test_fail>
    1470:	00000493          	li	s1,0
    1474:	34249073          	csrw	mcause,s1
    1478:	00042583          	lw	a1,0(s0)
    147c:	00004537          	lui	a0,0x4
    1480:	f9450513          	addi	a0,a0,-108 # 3f94 <__etext+0x6fc>
    1484:	221000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    1488:	93890513          	addi	a0,s2,-1736 # 3938 <__etext+0xa0>
    148c:	219000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    1490:	34249073          	csrw	mcause,s1
    1494:	00042583          	lw	a1,0(s0)
    1498:	00004537          	lui	a0,0x4
    149c:	fc450513          	addi	a0,a0,-60 # 3fc4 <__etext+0x72c>
    14a0:	205000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    14a4:	93890513          	addi	a0,s2,-1736
    14a8:	1fd000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    14ac:	34249073          	csrw	mcause,s1
    14b0:	00042583          	lw	a1,0(s0)
    14b4:	00004537          	lui	a0,0x4
    14b8:	ff450513          	addi	a0,a0,-12 # 3ff4 <__etext+0x75c>
    14bc:	1e9000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    14c0:	93890513          	addi	a0,s2,-1736
    14c4:	1e1000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    14c8:	fff00793          	li	a5,-1
    14cc:	32079073          	csrw	mcountinhibit,a5
    14d0:	8141a583          	lw	a1,-2028(gp) # 80000014 <num_hpm_cnts_global>
    14d4:	00004537          	lui	a0,0x4
    14d8:	02450513          	addi	a0,a0,36 # 4024 <__etext+0x78c>
    14dc:	1c9000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    14e0:	c02025f3          	rdinstret	a1
    14e4:	00004537          	lui	a0,0x4
    14e8:	05450513          	addi	a0,a0,84 # 4054 <__etext+0x7bc>
    14ec:	1b9000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    14f0:	c00025f3          	rdcycle	a1
    14f4:	00004537          	lui	a0,0x4
    14f8:	06850513          	addi	a0,a0,104 # 4068 <__etext+0x7d0>
    14fc:	1a9000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    1500:	b03025f3          	csrr	a1,mhpmcounter3
    1504:	00004537          	lui	a0,0x4
    1508:	07c50513          	addi	a0,a0,124 # 407c <__etext+0x7e4>
    150c:	199000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    1510:	b04025f3          	csrr	a1,mhpmcounter4
    1514:	00004537          	lui	a0,0x4
    1518:	09050513          	addi	a0,a0,144 # 4090 <__etext+0x7f8>
    151c:	189000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    1520:	b05025f3          	csrr	a1,mhpmcounter5
    1524:	00004537          	lui	a0,0x4
    1528:	0a450513          	addi	a0,a0,164 # 40a4 <__etext+0x80c>
    152c:	179000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    1530:	b06025f3          	csrr	a1,mhpmcounter6
    1534:	00004537          	lui	a0,0x4
    1538:	0b850513          	addi	a0,a0,184 # 40b8 <__etext+0x820>
    153c:	169000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    1540:	b07025f3          	csrr	a1,mhpmcounter7
    1544:	00004537          	lui	a0,0x4
    1548:	0cc50513          	addi	a0,a0,204 # 40cc <__etext+0x834>
    154c:	159000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    1550:	b08025f3          	csrr	a1,mhpmcounter8
    1554:	00004537          	lui	a0,0x4
    1558:	0e050513          	addi	a0,a0,224 # 40e0 <__etext+0x848>
    155c:	149000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    1560:	b09025f3          	csrr	a1,mhpmcounter9
    1564:	00004537          	lui	a0,0x4
    1568:	0f450513          	addi	a0,a0,244 # 40f4 <__etext+0x85c>
    156c:	139000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    1570:	b0a025f3          	csrr	a1,mhpmcounter10
    1574:	00004537          	lui	a0,0x4
    1578:	10850513          	addi	a0,a0,264 # 4108 <__etext+0x870>
    157c:	129000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    1580:	b0b025f3          	csrr	a1,mhpmcounter11
    1584:	00004537          	lui	a0,0x4
    1588:	11c50513          	addi	a0,a0,284 # 411c <__etext+0x884>
    158c:	119000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    1590:	b0c025f3          	csrr	a1,mhpmcounter12
    1594:	00004537          	lui	a0,0x4
    1598:	13050513          	addi	a0,a0,304 # 4130 <__etext+0x898>
    159c:	109000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    15a0:	b0d025f3          	csrr	a1,mhpmcounter13
    15a4:	00004537          	lui	a0,0x4
    15a8:	14450513          	addi	a0,a0,324 # 4144 <__etext+0x8ac>
    15ac:	0f9000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    15b0:	b0e025f3          	csrr	a1,mhpmcounter14
    15b4:	00004537          	lui	a0,0x4
    15b8:	15850513          	addi	a0,a0,344 # 4158 <__etext+0x8c0>
    15bc:	0e9000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    15c0:	00042703          	lw	a4,0(s0)
    15c4:	80000437          	lui	s0,0x80000
    15c8:	00840493          	addi	s1,s0,8 # 80000008 <__ctr0_io_space_begin+0x80000208>
    15cc:	800007b7          	lui	a5,0x80000
    15d0:	00c7a583          	lw	a1,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
    15d4:	0004a683          	lw	a3,0(s1)
    15d8:	00004537          	lui	a0,0x4
    15dc:	00070613          	mv	a2,a4
    15e0:	16c50513          	addi	a0,a0,364 # 416c <__etext+0x8d4>
    15e4:	0c1000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    15e8:	0004a783          	lw	a5,0(s1)
    15ec:	00840413          	addi	s0,s0,8
    15f0:	01b00613          	li	a2,27
    15f4:	01b00593          	li	a1,27
    15f8:	1e079c63          	bnez	a5,17f0 <main+0x1660>
    15fc:	00004537          	lui	a0,0x4
    1600:	19850513          	addi	a0,a0,408 # 4198 <__etext+0x900>
    1604:	0a1000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    1608:	00042503          	lw	a0,0(s0)
    160c:	c6dfe06f          	j	278 <main+0xe8>
    1610:	274000ef          	jal	ra,1884 <test_fail>
    1614:	d85fe06f          	j	398 <main+0x208>
    1618:	00004537          	lui	a0,0x4
    161c:	93850513          	addi	a0,a0,-1736 # 3938 <__etext+0xa0>
    1620:	085000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    1624:	d75fe06f          	j	398 <main+0x208>
    1628:	25c000ef          	jal	ra,1884 <test_fail>
    162c:	dc1fe06f          	j	3ec <main+0x25c>
    1630:	254000ef          	jal	ra,1884 <test_fail>
    1634:	e0dfe06f          	j	440 <main+0x2b0>
    1638:	24c000ef          	jal	ra,1884 <test_fail>
    163c:	e65fe06f          	j	4a0 <main+0x310>
    1640:	244000ef          	jal	ra,1884 <test_fail>
    1644:	ee1fe06f          	j	524 <main+0x394>
    1648:	23c000ef          	jal	ra,1884 <test_fail>
    164c:	f25fe06f          	j	570 <main+0x3e0>
    1650:	234000ef          	jal	ra,1884 <test_fail>
    1654:	f95fe06f          	j	5e8 <main+0x458>
    1658:	00004537          	lui	a0,0x4
    165c:	93850513          	addi	a0,a0,-1736 # 3938 <__etext+0xa0>
    1660:	045000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    1664:	f85fe06f          	j	5e8 <main+0x458>
    1668:	21c000ef          	jal	ra,1884 <test_fail>
    166c:	fb9fe06f          	j	624 <main+0x494>
    1670:	214000ef          	jal	ra,1884 <test_fail>
    1674:	fedfe06f          	j	660 <main+0x4d0>
    1678:	20c000ef          	jal	ra,1884 <test_fail>
    167c:	81cff06f          	j	698 <main+0x508>
    1680:	204000ef          	jal	ra,1884 <test_fail>
    1684:	864ff06f          	j	6e8 <main+0x558>
    1688:	00004537          	lui	a0,0x4
    168c:	aac50513          	addi	a0,a0,-1364 # 3aac <__etext+0x214>
    1690:	015000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    1694:	854ff06f          	j	6e8 <main+0x558>
    1698:	1ec000ef          	jal	ra,1884 <test_fail>
    169c:	88cff06f          	j	728 <main+0x598>
    16a0:	1e4000ef          	jal	ra,1884 <test_fail>
    16a4:	8d8ff06f          	j	77c <main+0x5ec>
    16a8:	1dc000ef          	jal	ra,1884 <test_fail>
    16ac:	91cff06f          	j	7c8 <main+0x638>
    16b0:	00004537          	lui	a0,0x4
    16b4:	aac50513          	addi	a0,a0,-1364 # 3aac <__etext+0x214>
    16b8:	7ec000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    16bc:	90cff06f          	j	7c8 <main+0x638>
    16c0:	1c4000ef          	jal	ra,1884 <test_fail>
    16c4:	940ff06f          	j	804 <main+0x674>
    16c8:	1bc000ef          	jal	ra,1884 <test_fail>
    16cc:	984ff06f          	j	850 <main+0x6c0>
    16d0:	1b4000ef          	jal	ra,1884 <test_fail>
    16d4:	9bcff06f          	j	890 <main+0x700>
    16d8:	1ac000ef          	jal	ra,1884 <test_fail>
    16dc:	9f4ff06f          	j	8d0 <main+0x740>
    16e0:	1a4000ef          	jal	ra,1884 <test_fail>
    16e4:	a2cff06f          	j	910 <main+0x780>
    16e8:	19c000ef          	jal	ra,1884 <test_fail>
    16ec:	a60ff06f          	j	94c <main+0x7bc>
    16f0:	194000ef          	jal	ra,1884 <test_fail>
    16f4:	a98ff06f          	j	98c <main+0x7fc>
    16f8:	18c000ef          	jal	ra,1884 <test_fail>
    16fc:	b14ff06f          	j	a10 <main+0x880>
    1700:	184000ef          	jal	ra,1884 <test_fail>
    1704:	b70ff06f          	j	a74 <main+0x8e4>
    1708:	17c000ef          	jal	ra,1884 <test_fail>
    170c:	bc4ff06f          	j	ad0 <main+0x940>
    1710:	174000ef          	jal	ra,1884 <test_fail>
    1714:	c9cff06f          	j	bb0 <main+0xa20>
    1718:	16c000ef          	jal	ra,1884 <test_fail>
    171c:	d0cff06f          	j	c28 <main+0xa98>
    1720:	164000ef          	jal	ra,1884 <test_fail>
    1724:	db8ff06f          	j	cdc <main+0xb4c>
    1728:	15c000ef          	jal	ra,1884 <test_fail>
    172c:	e44ff06f          	j	d70 <main+0xbe0>
    1730:	154000ef          	jal	ra,1884 <test_fail>
    1734:	eccff06f          	j	e00 <main+0xc70>
    1738:	14c000ef          	jal	ra,1884 <test_fail>
    173c:	f58ff06f          	j	e94 <main+0xd04>
    1740:	144000ef          	jal	ra,1884 <test_fail>
    1744:	fc8ff06f          	j	f0c <main+0xd7c>
    1748:	13c000ef          	jal	ra,1884 <test_fail>
    174c:	835ff06f          	j	f80 <main+0xdf0>
    1750:	134000ef          	jal	ra,1884 <test_fail>
    1754:	8e5ff06f          	j	1038 <main+0xea8>
    1758:	12c000ef          	jal	ra,1884 <test_fail>
    175c:	9f5ff06f          	j	1150 <main+0xfc0>
    1760:	124000ef          	jal	ra,1884 <test_fail>
    1764:	a59ff06f          	j	11bc <main+0x102c>
    1768:	0e0000ef          	jal	ra,1848 <test_ok>
    176c:	ac5ff06f          	j	1230 <main+0x10a0>
    1770:	114000ef          	jal	ra,1884 <test_fail>
    1774:	af9ff06f          	j	126c <main+0x10dc>
    1778:	10c000ef          	jal	ra,1884 <test_fail>
    177c:	342025f3          	csrr	a1,mcause
    1780:	00004537          	lui	a0,0x4
    1784:	e8c50513          	addi	a0,a0,-372 # 3e8c <__etext+0x5f4>
    1788:	71c000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    178c:	b29ff06f          	j	12b4 <main+0x1124>
    1790:	3a0027f3          	csrr	a5,pmpcfg0
    1794:	0807f793          	andi	a5,a5,128
    1798:	00078c63          	beqz	a5,17b0 <main+0x1620>
    179c:	00004537          	lui	a0,0x4
    17a0:	01b00613          	li	a2,27
    17a4:	01b00593          	li	a1,27
    17a8:	f0450513          	addi	a0,a0,-252 # 3f04 <__etext+0x66c>
    17ac:	6f8000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    17b0:	0d4000ef          	jal	ra,1884 <test_fail>
    17b4:	b85ff06f          	j	1338 <main+0x11a8>
    17b8:	00000073          	ecall
    17bc:	08c000ef          	jal	ra,1848 <test_ok>
    17c0:	bb5ff06f          	j	1374 <main+0x11e4>
    17c4:	00000073          	ecall
    17c8:	0bc000ef          	jal	ra,1884 <test_fail>
    17cc:	c01ff06f          	j	13cc <main+0x123c>
    17d0:	00000073          	ecall
    17d4:	0b0000ef          	jal	ra,1884 <test_fail>
    17d8:	c35ff06f          	j	140c <main+0x127c>
    17dc:	06c000ef          	jal	ra,1848 <test_ok>
    17e0:	c91ff06f          	j	1470 <main+0x12e0>
    17e4:	93890513          	addi	a0,s2,-1736
    17e8:	6bc000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    17ec:	c85ff06f          	j	1470 <main+0x12e0>
    17f0:	00004537          	lui	a0,0x4
    17f4:	1c850513          	addi	a0,a0,456 # 41c8 <__etext+0x930>
    17f8:	e0dff06f          	j	1604 <main+0x1474>

000017fc <global_trap_handler>:
    17fc:	000027b7          	lui	a5,0x2
    1800:	80078793          	addi	a5,a5,-2048 # 1800 <global_trap_handler+0x4>
    1804:	3007a073          	csrs	mstatus,a5
    1808:	00008067          	ret

0000180c <xirq_trap_handler0>:
    180c:	81818793          	addi	a5,gp,-2024 # 80000018 <xirq_trap_handler_ack>
    1810:	0007a703          	lw	a4,0(a5)
    1814:	00270713          	addi	a4,a4,2
    1818:	00e7a023          	sw	a4,0(a5)
    181c:	00008067          	ret

00001820 <xirq_trap_handler1>:
    1820:	81818793          	addi	a5,gp,-2024 # 80000018 <xirq_trap_handler_ack>
    1824:	0007a703          	lw	a4,0(a5)
    1828:	00171713          	slli	a4,a4,0x1
    182c:	00e7a023          	sw	a4,0(a5)
    1830:	00008067          	ret

00001834 <sim_irq_trigger>:
    1834:	ff0007b7          	lui	a5,0xff000
    1838:	00a7a023          	sw	a0,0(a5) # ff000000 <__ctr0_io_space_begin+0xff000200>
    183c:	00000013          	nop
    1840:	0007a023          	sw	zero,0(a5)
    1844:	00008067          	ret

00001848 <test_ok>:
    1848:	00004537          	lui	a0,0x4
    184c:	ff010113          	addi	sp,sp,-16
    1850:	01b00613          	li	a2,27
    1854:	01b00593          	li	a1,27
    1858:	89850513          	addi	a0,a0,-1896 # 3898 <__etext>
    185c:	00112623          	sw	ra,12(sp)
    1860:	644000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    1864:	800007b7          	lui	a5,0x80000
    1868:	00c78793          	addi	a5,a5,12 # 8000000c <__ctr0_io_space_begin+0x8000020c>
    186c:	0007a703          	lw	a4,0(a5)
    1870:	00c12083          	lw	ra,12(sp)
    1874:	00170713          	addi	a4,a4,1
    1878:	00e7a023          	sw	a4,0(a5)
    187c:	01010113          	addi	sp,sp,16
    1880:	00008067          	ret

00001884 <test_fail>:
    1884:	00004537          	lui	a0,0x4
    1888:	ff010113          	addi	sp,sp,-16
    188c:	01b00613          	li	a2,27
    1890:	01b00593          	li	a1,27
    1894:	8a850513          	addi	a0,a0,-1880 # 38a8 <__etext+0x10>
    1898:	00112623          	sw	ra,12(sp)
    189c:	608000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    18a0:	800007b7          	lui	a5,0x80000
    18a4:	00878793          	addi	a5,a5,8 # 80000008 <__ctr0_io_space_begin+0x80000208>
    18a8:	0007a703          	lw	a4,0(a5)
    18ac:	00c12083          	lw	ra,12(sp)
    18b0:	00170713          	addi	a4,a4,1
    18b4:	00e7a023          	sw	a4,0(a5)
    18b8:	01010113          	addi	sp,sp,16
    18bc:	00008067          	ret

000018c0 <__neorv32_crt0_after_main>:
    18c0:	fa000793          	li	a5,-96
    18c4:	0007a703          	lw	a4,0(a5)
    18c8:	ff010113          	addi	sp,sp,-16
    18cc:	100006b7          	lui	a3,0x10000
    18d0:	00112623          	sw	ra,12(sp)
    18d4:	00d76733          	or	a4,a4,a3
    18d8:	00e7a023          	sw	a4,0(a5)
    18dc:	0007a703          	lw	a4,0(a5)
    18e0:	fffff6b7          	lui	a3,0xfffff
    18e4:	fff68693          	addi	a3,a3,-1 # ffffefff <__ctr0_io_space_begin+0xfffff1ff>
    18e8:	00d77733          	and	a4,a4,a3
    18ec:	00e7a023          	sw	a4,0(a5)
    18f0:	0007a783          	lw	a5,0(a5)
    18f4:	00050593          	mv	a1,a0
    18f8:	00004537          	lui	a0,0x4
    18fc:	fcf02823          	sw	a5,-48(zero) # ffffffd0 <__ctr0_io_space_begin+0x1d0>
    1900:	8101a603          	lw	a2,-2032(gp) # 80000010 <cnt_test>
    1904:	1e850513          	addi	a0,a0,488 # 41e8 <__etext+0x950>
    1908:	59c000ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    190c:	00c12083          	lw	ra,12(sp)
    1910:	00000513          	li	a0,0
    1914:	01010113          	addi	sp,sp,16
    1918:	00008067          	ret

0000191c <neorv32_wdt_available>:
    191c:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
    1920:	01655513          	srli	a0,a0,0x16
    1924:	00157513          	andi	a0,a0,1
    1928:	00008067          	ret

0000192c <neorv32_wdt_setup>:
    192c:	00757513          	andi	a0,a0,7
    1930:	00167613          	andi	a2,a2,1
    1934:	0015f593          	andi	a1,a1,1
    1938:	00151513          	slli	a0,a0,0x1
    193c:	00861613          	slli	a2,a2,0x8
    1940:	00c56533          	or	a0,a0,a2
    1944:	00459593          	slli	a1,a1,0x4
    1948:	fbc00793          	li	a5,-68
    194c:	04000713          	li	a4,64
    1950:	00b56533          	or	a0,a0,a1
    1954:	00e7a023          	sw	a4,0(a5)
    1958:	00156513          	ori	a0,a0,1
    195c:	00a7a023          	sw	a0,0(a5)
    1960:	00008067          	ret

00001964 <neorv32_wdt_disable>:
    1964:	fbc00793          	li	a5,-68
    1968:	0007a023          	sw	zero,0(a5)
    196c:	0007a503          	lw	a0,0(a5)
    1970:	00157513          	andi	a0,a0,1
    1974:	40a00533          	neg	a0,a0
    1978:	00008067          	ret

0000197c <neorv32_wdt_force>:
    197c:	fbc00713          	li	a4,-68
    1980:	00072783          	lw	a5,0(a4)
    1984:	0807e793          	ori	a5,a5,128
    1988:	00f72023          	sw	a5,0(a4)
    198c:	00008067          	ret

00001990 <neorv32_gptmr_setup>:
    1990:	f6000793          	li	a5,-160
    1994:	00757513          	andi	a0,a0,7
    1998:	0015f593          	andi	a1,a1,1
    199c:	0007a023          	sw	zero,0(a5)
    19a0:	00151513          	slli	a0,a0,0x1
    19a4:	00459593          	slli	a1,a1,0x4
    19a8:	00c7a223          	sw	a2,4(a5)
    19ac:	00b56533          	or	a0,a0,a1
    19b0:	0007a423          	sw	zero,8(a5)
    19b4:	00156513          	ori	a0,a0,1
    19b8:	00a7a023          	sw	a0,0(a5)
    19bc:	00008067          	ret

000019c0 <neorv32_gptmr_disable>:
    19c0:	f6000713          	li	a4,-160
    19c4:	00072783          	lw	a5,0(a4)
    19c8:	ffe7f793          	andi	a5,a5,-2
    19cc:	00f72023          	sw	a5,0(a4)
    19d0:	00008067          	ret
    19d4:	0000                	unimp
    19d6:	0000                	unimp
    19d8:	0000                	unimp
    19da:	0000                	unimp
    19dc:	0000                	unimp
    19de:	0000                	unimp

000019e0 <__neorv32_xirq_core>:
    19e0:	f8000693          	li	a3,-128
    19e4:	0086a783          	lw	a5,8(a3)
    19e8:	00100713          	li	a4,1
    19ec:	00f71733          	sll	a4,a4,a5
    19f0:	fff74713          	not	a4,a4
    19f4:	00e6a223          	sw	a4,4(a3)
    19f8:	00279713          	slli	a4,a5,0x2
    19fc:	81c18793          	addi	a5,gp,-2020 # 8000001c <__neorv32_xirq_vector_lut>
    1a00:	0006a423          	sw	zero,8(a3)
    1a04:	00e787b3          	add	a5,a5,a4
    1a08:	0007a783          	lw	a5,0(a5)
    1a0c:	00078067          	jr	a5

00001a10 <__neorv32_xirq_dummy_handler>:
    1a10:	00000013          	nop
    1a14:	00008067          	ret

00001a18 <neorv32_xirq_available>:
    1a18:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
    1a1c:	01c55513          	srli	a0,a0,0x1c
    1a20:	00157513          	andi	a0,a0,1
    1a24:	00008067          	ret

00001a28 <neorv32_xirq_setup>:
    1a28:	f8002023          	sw	zero,-128(zero) # ffffff80 <__ctr0_io_space_begin+0x180>
    1a2c:	81c18793          	addi	a5,gp,-2020 # 8000001c <__neorv32_xirq_vector_lut>
    1a30:	00002737          	lui	a4,0x2
    1a34:	f8002223          	sw	zero,-124(zero) # ffffff84 <__ctr0_io_space_begin+0x184>
    1a38:	08078693          	addi	a3,a5,128
    1a3c:	a1070713          	addi	a4,a4,-1520 # 1a10 <__neorv32_xirq_dummy_handler>
    1a40:	00e7a023          	sw	a4,0(a5)
    1a44:	00478793          	addi	a5,a5,4
    1a48:	fed79ce3          	bne	a5,a3,1a40 <neorv32_xirq_setup+0x18>
    1a4c:	000025b7          	lui	a1,0x2
    1a50:	9e058593          	addi	a1,a1,-1568 # 19e0 <__neorv32_xirq_core>
    1a54:	01500513          	li	a0,21
    1a58:	2e80106f          	j	2d40 <neorv32_rte_exception_install>

00001a5c <neorv32_xirq_install>:
    1a5c:	01f00793          	li	a5,31
    1a60:	02a7ec63          	bltu	a5,a0,1a98 <neorv32_xirq_install+0x3c>
    1a64:	00251713          	slli	a4,a0,0x2
    1a68:	81c18793          	addi	a5,gp,-2020 # 8000001c <__neorv32_xirq_vector_lut>
    1a6c:	00e787b3          	add	a5,a5,a4
    1a70:	00b7a023          	sw	a1,0(a5)
    1a74:	00100793          	li	a5,1
    1a78:	00a79533          	sll	a0,a5,a0
    1a7c:	fff54793          	not	a5,a0
    1a80:	f8f02223          	sw	a5,-124(zero) # ffffff84 <__ctr0_io_space_begin+0x184>
    1a84:	f8002783          	lw	a5,-128(zero) # ffffff80 <__ctr0_io_space_begin+0x180>
    1a88:	00a7e533          	or	a0,a5,a0
    1a8c:	f8a02023          	sw	a0,-128(zero) # ffffff80 <__ctr0_io_space_begin+0x180>
    1a90:	00000513          	li	a0,0
    1a94:	00008067          	ret
    1a98:	00100513          	li	a0,1
    1a9c:	00008067          	ret

00001aa0 <neorv32_slink_available>:
    1aa0:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
    1aa4:	01955513          	srli	a0,a0,0x19
    1aa8:	00157513          	andi	a0,a0,1
    1aac:	00008067          	ret

00001ab0 <neorv32_slink_enable>:
    1ab0:	ec000713          	li	a4,-320
    1ab4:	00072783          	lw	a5,0(a4)
    1ab8:	800006b7          	lui	a3,0x80000
    1abc:	00d7e7b3          	or	a5,a5,a3
    1ac0:	00f72023          	sw	a5,0(a4)
    1ac4:	00008067          	ret

00001ac8 <neorv32_slink_disable>:
    1ac8:	ec000713          	li	a4,-320
    1acc:	00072783          	lw	a5,0(a4)
    1ad0:	00179793          	slli	a5,a5,0x1
    1ad4:	0017d793          	srli	a5,a5,0x1
    1ad8:	00f72023          	sw	a5,0(a4)
    1adc:	00008067          	ret

00001ae0 <neorv32_slink_rx_irq_config>:
    1ae0:	ec802783          	lw	a5,-312(zero) # fffffec8 <__ctr0_io_space_begin+0xc8>
    1ae4:	00757513          	andi	a0,a0,7
    1ae8:	00100713          	li	a4,1
    1aec:	00a71733          	sll	a4,a4,a0
    1af0:	02058263          	beqz	a1,1b14 <neorv32_slink_rx_irq_config+0x34>
    1af4:	00f767b3          	or	a5,a4,a5
    1af8:	00850713          	addi	a4,a0,8
    1afc:	00100513          	li	a0,1
    1b00:	00e51533          	sll	a0,a0,a4
    1b04:	00060e63          	beqz	a2,1b20 <neorv32_slink_rx_irq_config+0x40>
    1b08:	00f567b3          	or	a5,a0,a5
    1b0c:	ecf02423          	sw	a5,-312(zero) # fffffec8 <__ctr0_io_space_begin+0xc8>
    1b10:	00008067          	ret
    1b14:	fff74713          	not	a4,a4
    1b18:	00f777b3          	and	a5,a4,a5
    1b1c:	fddff06f          	j	1af8 <neorv32_slink_rx_irq_config+0x18>
    1b20:	fff54513          	not	a0,a0
    1b24:	00f577b3          	and	a5,a0,a5
    1b28:	fe5ff06f          	j	1b0c <neorv32_slink_rx_irq_config+0x2c>

00001b2c <neorv32_slink_tx_irq_config>:
    1b2c:	00757513          	andi	a0,a0,7
    1b30:	ec802783          	lw	a5,-312(zero) # fffffec8 <__ctr0_io_space_begin+0xc8>
    1b34:	01050693          	addi	a3,a0,16
    1b38:	00100713          	li	a4,1
    1b3c:	00d71733          	sll	a4,a4,a3
    1b40:	02058263          	beqz	a1,1b64 <neorv32_slink_tx_irq_config+0x38>
    1b44:	00f767b3          	or	a5,a4,a5
    1b48:	01850713          	addi	a4,a0,24
    1b4c:	00100513          	li	a0,1
    1b50:	00e51533          	sll	a0,a0,a4
    1b54:	00060e63          	beqz	a2,1b70 <neorv32_slink_tx_irq_config+0x44>
    1b58:	00f567b3          	or	a5,a0,a5
    1b5c:	ecf02423          	sw	a5,-312(zero) # fffffec8 <__ctr0_io_space_begin+0xc8>
    1b60:	00008067          	ret
    1b64:	fff74713          	not	a4,a4
    1b68:	00f777b3          	and	a5,a4,a5
    1b6c:	fddff06f          	j	1b48 <neorv32_slink_tx_irq_config+0x1c>
    1b70:	fff54513          	not	a0,a0
    1b74:	00f577b3          	and	a5,a0,a5
    1b78:	fe5ff06f          	j	1b5c <neorv32_slink_tx_irq_config+0x30>

00001b7c <neorv32_slink_tx0_nonblocking>:
    1b7c:	ed002783          	lw	a5,-304(zero) # fffffed0 <__ctr0_io_space_begin+0xd0>
    1b80:	1007f793          	andi	a5,a5,256
    1b84:	00078863          	beqz	a5,1b94 <neorv32_slink_tx0_nonblocking+0x18>
    1b88:	eea02023          	sw	a0,-288(zero) # fffffee0 <__ctr0_io_space_begin+0xe0>
    1b8c:	00000513          	li	a0,0
    1b90:	00008067          	ret
    1b94:	00100513          	li	a0,1
    1b98:	00008067          	ret

00001b9c <neorv32_slink_rx0_nonblocking>:
    1b9c:	ed002783          	lw	a5,-304(zero) # fffffed0 <__ctr0_io_space_begin+0xd0>
    1ba0:	0017f793          	andi	a5,a5,1
    1ba4:	00078a63          	beqz	a5,1bb8 <neorv32_slink_rx0_nonblocking+0x1c>
    1ba8:	ee002783          	lw	a5,-288(zero) # fffffee0 <__ctr0_io_space_begin+0xe0>
    1bac:	00f52023          	sw	a5,0(a0)
    1bb0:	00000513          	li	a0,0
    1bb4:	00008067          	ret
    1bb8:	00100513          	li	a0,1
    1bbc:	00008067          	ret

00001bc0 <neorv32_mtime_set_time>:
    1bc0:	f9000793          	li	a5,-112
    1bc4:	0007a023          	sw	zero,0(a5)
    1bc8:	00b7a223          	sw	a1,4(a5)
    1bcc:	00a7a023          	sw	a0,0(a5)
    1bd0:	00008067          	ret

00001bd4 <neorv32_mtime_get_time>:
    1bd4:	ff010113          	addi	sp,sp,-16
    1bd8:	f9402783          	lw	a5,-108(zero) # ffffff94 <__ctr0_io_space_begin+0x194>
    1bdc:	f9002703          	lw	a4,-112(zero) # ffffff90 <__ctr0_io_space_begin+0x190>
    1be0:	f9402683          	lw	a3,-108(zero) # ffffff94 <__ctr0_io_space_begin+0x194>
    1be4:	fed79ae3          	bne	a5,a3,1bd8 <neorv32_mtime_get_time+0x4>
    1be8:	00e12023          	sw	a4,0(sp)
    1bec:	00f12223          	sw	a5,4(sp)
    1bf0:	00012503          	lw	a0,0(sp)
    1bf4:	00412583          	lw	a1,4(sp)
    1bf8:	01010113          	addi	sp,sp,16
    1bfc:	00008067          	ret

00001c00 <neorv32_mtime_set_timecmp>:
    1c00:	f9000793          	li	a5,-112
    1c04:	fff00713          	li	a4,-1
    1c08:	00e7a423          	sw	a4,8(a5)
    1c0c:	00b7a623          	sw	a1,12(a5)
    1c10:	00a7a423          	sw	a0,8(a5)
    1c14:	00008067          	ret

00001c18 <__neorv32_uart_itoa>:
    1c18:	fd010113          	addi	sp,sp,-48
    1c1c:	02812423          	sw	s0,40(sp)
    1c20:	02912223          	sw	s1,36(sp)
    1c24:	03212023          	sw	s2,32(sp)
    1c28:	01312e23          	sw	s3,28(sp)
    1c2c:	01412c23          	sw	s4,24(sp)
    1c30:	02112623          	sw	ra,44(sp)
    1c34:	01512a23          	sw	s5,20(sp)
    1c38:	00004a37          	lui	s4,0x4
    1c3c:	00050493          	mv	s1,a0
    1c40:	00058413          	mv	s0,a1
    1c44:	00058523          	sb	zero,10(a1)
    1c48:	00000993          	li	s3,0
    1c4c:	00410913          	addi	s2,sp,4
    1c50:	1f0a0a13          	addi	s4,s4,496 # 41f0 <numbers.1>
    1c54:	00a00593          	li	a1,10
    1c58:	00048513          	mv	a0,s1
    1c5c:	2b1010ef          	jal	ra,370c <__umodsi3>
    1c60:	00aa0533          	add	a0,s4,a0
    1c64:	00054783          	lbu	a5,0(a0)
    1c68:	01390ab3          	add	s5,s2,s3
    1c6c:	00048513          	mv	a0,s1
    1c70:	00fa8023          	sb	a5,0(s5)
    1c74:	00a00593          	li	a1,10
    1c78:	24d010ef          	jal	ra,36c4 <__udivsi3>
    1c7c:	00198993          	addi	s3,s3,1
    1c80:	00a00793          	li	a5,10
    1c84:	00050493          	mv	s1,a0
    1c88:	fcf996e3          	bne	s3,a5,1c54 <__neorv32_uart_itoa+0x3c>
    1c8c:	00090693          	mv	a3,s2
    1c90:	00900713          	li	a4,9
    1c94:	03000613          	li	a2,48
    1c98:	0096c583          	lbu	a1,9(a3) # 80000009 <__ctr0_io_space_begin+0x80000209>
    1c9c:	00070793          	mv	a5,a4
    1ca0:	fff70713          	addi	a4,a4,-1
    1ca4:	01071713          	slli	a4,a4,0x10
    1ca8:	01075713          	srli	a4,a4,0x10
    1cac:	00c59a63          	bne	a1,a2,1cc0 <__neorv32_uart_itoa+0xa8>
    1cb0:	000684a3          	sb	zero,9(a3)
    1cb4:	fff68693          	addi	a3,a3,-1
    1cb8:	fe0710e3          	bnez	a4,1c98 <__neorv32_uart_itoa+0x80>
    1cbc:	00000793          	li	a5,0
    1cc0:	00f907b3          	add	a5,s2,a5
    1cc4:	00000593          	li	a1,0
    1cc8:	0007c703          	lbu	a4,0(a5)
    1ccc:	00070c63          	beqz	a4,1ce4 <__neorv32_uart_itoa+0xcc>
    1cd0:	00158693          	addi	a3,a1,1
    1cd4:	00b405b3          	add	a1,s0,a1
    1cd8:	00e58023          	sb	a4,0(a1)
    1cdc:	01069593          	slli	a1,a3,0x10
    1ce0:	0105d593          	srli	a1,a1,0x10
    1ce4:	fff78713          	addi	a4,a5,-1
    1ce8:	02f91863          	bne	s2,a5,1d18 <__neorv32_uart_itoa+0x100>
    1cec:	00b40433          	add	s0,s0,a1
    1cf0:	00040023          	sb	zero,0(s0)
    1cf4:	02c12083          	lw	ra,44(sp)
    1cf8:	02812403          	lw	s0,40(sp)
    1cfc:	02412483          	lw	s1,36(sp)
    1d00:	02012903          	lw	s2,32(sp)
    1d04:	01c12983          	lw	s3,28(sp)
    1d08:	01812a03          	lw	s4,24(sp)
    1d0c:	01412a83          	lw	s5,20(sp)
    1d10:	03010113          	addi	sp,sp,48
    1d14:	00008067          	ret
    1d18:	00070793          	mv	a5,a4
    1d1c:	fadff06f          	j	1cc8 <__neorv32_uart_itoa+0xb0>

00001d20 <__neorv32_uart_tohex>:
    1d20:	00004637          	lui	a2,0x4
    1d24:	00758693          	addi	a3,a1,7
    1d28:	00000713          	li	a4,0
    1d2c:	1fc60613          	addi	a2,a2,508 # 41fc <symbols.0>
    1d30:	02000813          	li	a6,32
    1d34:	00e557b3          	srl	a5,a0,a4
    1d38:	00f7f793          	andi	a5,a5,15
    1d3c:	00f607b3          	add	a5,a2,a5
    1d40:	0007c783          	lbu	a5,0(a5)
    1d44:	00470713          	addi	a4,a4,4
    1d48:	fff68693          	addi	a3,a3,-1
    1d4c:	00f680a3          	sb	a5,1(a3)
    1d50:	ff0712e3          	bne	a4,a6,1d34 <__neorv32_uart_tohex+0x14>
    1d54:	00058423          	sb	zero,8(a1)
    1d58:	00008067          	ret

00001d5c <neorv32_uart0_available>:
    1d5c:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
    1d60:	01255513          	srli	a0,a0,0x12
    1d64:	00157513          	andi	a0,a0,1
    1d68:	00008067          	ret

00001d6c <neorv32_uart0_setup>:
    1d6c:	ff010113          	addi	sp,sp,-16
    1d70:	00812423          	sw	s0,8(sp)
    1d74:	00912223          	sw	s1,4(sp)
    1d78:	00112623          	sw	ra,12(sp)
    1d7c:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
    1d80:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
    1d84:	00058413          	mv	s0,a1
    1d88:	00151593          	slli	a1,a0,0x1
    1d8c:	00078513          	mv	a0,a5
    1d90:	00060493          	mv	s1,a2
    1d94:	131010ef          	jal	ra,36c4 <__udivsi3>
    1d98:	01051513          	slli	a0,a0,0x10
    1d9c:	000017b7          	lui	a5,0x1
    1da0:	01055513          	srli	a0,a0,0x10
    1da4:	00000713          	li	a4,0
    1da8:	ffe78793          	addi	a5,a5,-2 # ffe <main+0xe6e>
    1dac:	04a7e463          	bltu	a5,a0,1df4 <neorv32_uart0_setup+0x88>
    1db0:	0034f793          	andi	a5,s1,3
    1db4:	00347413          	andi	s0,s0,3
    1db8:	fff50513          	addi	a0,a0,-1
    1dbc:	01479793          	slli	a5,a5,0x14
    1dc0:	01641413          	slli	s0,s0,0x16
    1dc4:	00f567b3          	or	a5,a0,a5
    1dc8:	0087e7b3          	or	a5,a5,s0
    1dcc:	01871713          	slli	a4,a4,0x18
    1dd0:	00c12083          	lw	ra,12(sp)
    1dd4:	00812403          	lw	s0,8(sp)
    1dd8:	00e7e7b3          	or	a5,a5,a4
    1ddc:	10000737          	lui	a4,0x10000
    1de0:	00e7e7b3          	or	a5,a5,a4
    1de4:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
    1de8:	00412483          	lw	s1,4(sp)
    1dec:	01010113          	addi	sp,sp,16
    1df0:	00008067          	ret
    1df4:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffb3ea>
    1df8:	0fd6f693          	andi	a3,a3,253
    1dfc:	00069a63          	bnez	a3,1e10 <neorv32_uart0_setup+0xa4>
    1e00:	00355513          	srli	a0,a0,0x3
    1e04:	00170713          	addi	a4,a4,1
    1e08:	0ff77713          	andi	a4,a4,255
    1e0c:	fa1ff06f          	j	1dac <neorv32_uart0_setup+0x40>
    1e10:	00155513          	srli	a0,a0,0x1
    1e14:	ff1ff06f          	j	1e04 <neorv32_uart0_setup+0x98>

00001e18 <neorv32_uart0_putc>:
    1e18:	00040737          	lui	a4,0x40
    1e1c:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
    1e20:	00e7f7b3          	and	a5,a5,a4
    1e24:	fe079ce3          	bnez	a5,1e1c <neorv32_uart0_putc+0x4>
    1e28:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
    1e2c:	00008067          	ret

00001e30 <neorv32_uart0_tx_busy>:
    1e30:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
    1e34:	00100513          	li	a0,1
    1e38:	0007c863          	bltz	a5,1e48 <neorv32_uart0_tx_busy+0x18>
    1e3c:	0107d513          	srli	a0,a5,0x10
    1e40:	00154513          	xori	a0,a0,1
    1e44:	00157513          	andi	a0,a0,1
    1e48:	00008067          	ret

00001e4c <neorv32_uart0_print>:
    1e4c:	ff010113          	addi	sp,sp,-16
    1e50:	00812423          	sw	s0,8(sp)
    1e54:	01212023          	sw	s2,0(sp)
    1e58:	00112623          	sw	ra,12(sp)
    1e5c:	00912223          	sw	s1,4(sp)
    1e60:	00050413          	mv	s0,a0
    1e64:	00a00913          	li	s2,10
    1e68:	00044483          	lbu	s1,0(s0)
    1e6c:	00140413          	addi	s0,s0,1
    1e70:	00049e63          	bnez	s1,1e8c <neorv32_uart0_print+0x40>
    1e74:	00c12083          	lw	ra,12(sp)
    1e78:	00812403          	lw	s0,8(sp)
    1e7c:	00412483          	lw	s1,4(sp)
    1e80:	00012903          	lw	s2,0(sp)
    1e84:	01010113          	addi	sp,sp,16
    1e88:	00008067          	ret
    1e8c:	01249663          	bne	s1,s2,1e98 <neorv32_uart0_print+0x4c>
    1e90:	00d00513          	li	a0,13
    1e94:	f85ff0ef          	jal	ra,1e18 <neorv32_uart0_putc>
    1e98:	00048513          	mv	a0,s1
    1e9c:	f7dff0ef          	jal	ra,1e18 <neorv32_uart0_putc>
    1ea0:	fc9ff06f          	j	1e68 <neorv32_uart0_print+0x1c>

00001ea4 <neorv32_uart0_printf>:
    1ea4:	fa010113          	addi	sp,sp,-96
    1ea8:	04f12a23          	sw	a5,84(sp)
    1eac:	04410793          	addi	a5,sp,68
    1eb0:	02812c23          	sw	s0,56(sp)
    1eb4:	03212823          	sw	s2,48(sp)
    1eb8:	03412423          	sw	s4,40(sp)
    1ebc:	03512223          	sw	s5,36(sp)
    1ec0:	03612023          	sw	s6,32(sp)
    1ec4:	01712e23          	sw	s7,28(sp)
    1ec8:	01812c23          	sw	s8,24(sp)
    1ecc:	01912a23          	sw	s9,20(sp)
    1ed0:	02112e23          	sw	ra,60(sp)
    1ed4:	02912a23          	sw	s1,52(sp)
    1ed8:	03312623          	sw	s3,44(sp)
    1edc:	00050413          	mv	s0,a0
    1ee0:	04b12223          	sw	a1,68(sp)
    1ee4:	04c12423          	sw	a2,72(sp)
    1ee8:	04d12623          	sw	a3,76(sp)
    1eec:	04e12823          	sw	a4,80(sp)
    1ef0:	05012c23          	sw	a6,88(sp)
    1ef4:	05112e23          	sw	a7,92(sp)
    1ef8:	00f12023          	sw	a5,0(sp)
    1efc:	02500a13          	li	s4,37
    1f00:	00a00a93          	li	s5,10
    1f04:	07300913          	li	s2,115
    1f08:	07500b13          	li	s6,117
    1f0c:	07800b93          	li	s7,120
    1f10:	06300c13          	li	s8,99
    1f14:	06900c93          	li	s9,105
    1f18:	00044483          	lbu	s1,0(s0)
    1f1c:	02049c63          	bnez	s1,1f54 <neorv32_uart0_printf+0xb0>
    1f20:	03c12083          	lw	ra,60(sp)
    1f24:	03812403          	lw	s0,56(sp)
    1f28:	03412483          	lw	s1,52(sp)
    1f2c:	03012903          	lw	s2,48(sp)
    1f30:	02c12983          	lw	s3,44(sp)
    1f34:	02812a03          	lw	s4,40(sp)
    1f38:	02412a83          	lw	s5,36(sp)
    1f3c:	02012b03          	lw	s6,32(sp)
    1f40:	01c12b83          	lw	s7,28(sp)
    1f44:	01812c03          	lw	s8,24(sp)
    1f48:	01412c83          	lw	s9,20(sp)
    1f4c:	06010113          	addi	sp,sp,96
    1f50:	00008067          	ret
    1f54:	0d449863          	bne	s1,s4,2024 <neorv32_uart0_printf+0x180>
    1f58:	00240993          	addi	s3,s0,2
    1f5c:	00144403          	lbu	s0,1(s0)
    1f60:	05240263          	beq	s0,s2,1fa4 <neorv32_uart0_printf+0x100>
    1f64:	00896e63          	bltu	s2,s0,1f80 <neorv32_uart0_printf+0xdc>
    1f68:	05840c63          	beq	s0,s8,1fc0 <neorv32_uart0_printf+0x11c>
    1f6c:	07940663          	beq	s0,s9,1fd8 <neorv32_uart0_printf+0x134>
    1f70:	02500513          	li	a0,37
    1f74:	ea5ff0ef          	jal	ra,1e18 <neorv32_uart0_putc>
    1f78:	00040513          	mv	a0,s0
    1f7c:	0540006f          	j	1fd0 <neorv32_uart0_printf+0x12c>
    1f80:	09640663          	beq	s0,s6,200c <neorv32_uart0_printf+0x168>
    1f84:	ff7416e3          	bne	s0,s7,1f70 <neorv32_uart0_printf+0xcc>
    1f88:	00012783          	lw	a5,0(sp)
    1f8c:	00410593          	addi	a1,sp,4
    1f90:	0007a503          	lw	a0,0(a5)
    1f94:	00478713          	addi	a4,a5,4
    1f98:	00e12023          	sw	a4,0(sp)
    1f9c:	d85ff0ef          	jal	ra,1d20 <__neorv32_uart_tohex>
    1fa0:	0640006f          	j	2004 <neorv32_uart0_printf+0x160>
    1fa4:	00012783          	lw	a5,0(sp)
    1fa8:	0007a503          	lw	a0,0(a5)
    1fac:	00478713          	addi	a4,a5,4
    1fb0:	00e12023          	sw	a4,0(sp)
    1fb4:	e99ff0ef          	jal	ra,1e4c <neorv32_uart0_print>
    1fb8:	00098413          	mv	s0,s3
    1fbc:	f5dff06f          	j	1f18 <neorv32_uart0_printf+0x74>
    1fc0:	00012783          	lw	a5,0(sp)
    1fc4:	0007c503          	lbu	a0,0(a5)
    1fc8:	00478713          	addi	a4,a5,4
    1fcc:	00e12023          	sw	a4,0(sp)
    1fd0:	e49ff0ef          	jal	ra,1e18 <neorv32_uart0_putc>
    1fd4:	fe5ff06f          	j	1fb8 <neorv32_uart0_printf+0x114>
    1fd8:	00012783          	lw	a5,0(sp)
    1fdc:	0007a403          	lw	s0,0(a5)
    1fe0:	00478713          	addi	a4,a5,4
    1fe4:	00e12023          	sw	a4,0(sp)
    1fe8:	00045863          	bgez	s0,1ff8 <neorv32_uart0_printf+0x154>
    1fec:	02d00513          	li	a0,45
    1ff0:	40800433          	neg	s0,s0
    1ff4:	e25ff0ef          	jal	ra,1e18 <neorv32_uart0_putc>
    1ff8:	00410593          	addi	a1,sp,4
    1ffc:	00040513          	mv	a0,s0
    2000:	c19ff0ef          	jal	ra,1c18 <__neorv32_uart_itoa>
    2004:	00410513          	addi	a0,sp,4
    2008:	fadff06f          	j	1fb4 <neorv32_uart0_printf+0x110>
    200c:	00012783          	lw	a5,0(sp)
    2010:	00410593          	addi	a1,sp,4
    2014:	00478713          	addi	a4,a5,4
    2018:	0007a503          	lw	a0,0(a5)
    201c:	00e12023          	sw	a4,0(sp)
    2020:	fe1ff06f          	j	2000 <neorv32_uart0_printf+0x15c>
    2024:	01549663          	bne	s1,s5,2030 <neorv32_uart0_printf+0x18c>
    2028:	00d00513          	li	a0,13
    202c:	dedff0ef          	jal	ra,1e18 <neorv32_uart0_putc>
    2030:	00140993          	addi	s3,s0,1
    2034:	00048513          	mv	a0,s1
    2038:	f99ff06f          	j	1fd0 <neorv32_uart0_printf+0x12c>

0000203c <neorv32_uart1_available>:
    203c:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
    2040:	01a55513          	srli	a0,a0,0x1a
    2044:	00157513          	andi	a0,a0,1
    2048:	00008067          	ret

0000204c <neorv32_uart1_putc>:
    204c:	00040737          	lui	a4,0x40
    2050:	fd002783          	lw	a5,-48(zero) # ffffffd0 <__ctr0_io_space_begin+0x1d0>
    2054:	00e7f7b3          	and	a5,a5,a4
    2058:	fe079ce3          	bnez	a5,2050 <neorv32_uart1_putc+0x4>
    205c:	fca02a23          	sw	a0,-44(zero) # ffffffd4 <__ctr0_io_space_begin+0x1d4>
    2060:	00008067          	ret

00002064 <neorv32_uart1_tx_busy>:
    2064:	fd002783          	lw	a5,-48(zero) # ffffffd0 <__ctr0_io_space_begin+0x1d0>
    2068:	00100513          	li	a0,1
    206c:	0007c863          	bltz	a5,207c <neorv32_uart1_tx_busy+0x18>
    2070:	0107d513          	srli	a0,a5,0x10
    2074:	00154513          	xori	a0,a0,1
    2078:	00157513          	andi	a0,a0,1
    207c:	00008067          	ret

00002080 <__neorv32_cpu_pmp_cfg_read>:
    2080:	00f57513          	andi	a0,a0,15
    2084:	fff50513          	addi	a0,a0,-1
    2088:	00e00793          	li	a5,14
    208c:	00a7ee63          	bltu	a5,a0,20a8 <__neorv32_cpu_pmp_cfg_read+0x28>
    2090:	000047b7          	lui	a5,0x4
    2094:	21078793          	addi	a5,a5,528 # 4210 <symbols.0+0x14>
    2098:	00251513          	slli	a0,a0,0x2
    209c:	00f50533          	add	a0,a0,a5
    20a0:	00052783          	lw	a5,0(a0)
    20a4:	00078067          	jr	a5
    20a8:	3a002573          	csrr	a0,pmpcfg0
    20ac:	00008067          	ret
    20b0:	3a102573          	csrr	a0,pmpcfg1
    20b4:	00008067          	ret
    20b8:	3a202573          	csrr	a0,pmpcfg2
    20bc:	00008067          	ret
    20c0:	3a302573          	csrr	a0,pmpcfg3
    20c4:	00008067          	ret
    20c8:	3a402573          	csrr	a0,0x3a4
    20cc:	00008067          	ret
    20d0:	3a502573          	csrr	a0,0x3a5
    20d4:	00008067          	ret
    20d8:	3a602573          	csrr	a0,0x3a6
    20dc:	00008067          	ret
    20e0:	3a702573          	csrr	a0,0x3a7
    20e4:	00008067          	ret
    20e8:	3a802573          	csrr	a0,0x3a8
    20ec:	00008067          	ret
    20f0:	3a902573          	csrr	a0,0x3a9
    20f4:	00008067          	ret
    20f8:	3aa02573          	csrr	a0,0x3aa
    20fc:	00008067          	ret
    2100:	3ab02573          	csrr	a0,0x3ab
    2104:	00008067          	ret
    2108:	3ac02573          	csrr	a0,0x3ac
    210c:	00008067          	ret
    2110:	3ad02573          	csrr	a0,0x3ad
    2114:	00008067          	ret
    2118:	3ae02573          	csrr	a0,0x3ae
    211c:	00008067          	ret
    2120:	3af02573          	csrr	a0,0x3af
    2124:	00008067          	ret

00002128 <__neorv32_cpu_pmp_cfg_write>:
    2128:	00f57513          	andi	a0,a0,15
    212c:	fff50513          	addi	a0,a0,-1
    2130:	00e00793          	li	a5,14
    2134:	00a7ee63          	bltu	a5,a0,2150 <__neorv32_cpu_pmp_cfg_write+0x28>
    2138:	000047b7          	lui	a5,0x4
    213c:	24c78793          	addi	a5,a5,588 # 424c <symbols.0+0x50>
    2140:	00251513          	slli	a0,a0,0x2
    2144:	00f50533          	add	a0,a0,a5
    2148:	00052783          	lw	a5,0(a0)
    214c:	00078067          	jr	a5
    2150:	3a059073          	csrw	pmpcfg0,a1
    2154:	00008067          	ret
    2158:	3a159073          	csrw	pmpcfg1,a1
    215c:	00008067          	ret
    2160:	3a259073          	csrw	pmpcfg2,a1
    2164:	00008067          	ret
    2168:	3a359073          	csrw	pmpcfg3,a1
    216c:	00008067          	ret
    2170:	3a459073          	csrw	0x3a4,a1
    2174:	00008067          	ret
    2178:	3a559073          	csrw	0x3a5,a1
    217c:	00008067          	ret
    2180:	3a659073          	csrw	0x3a6,a1
    2184:	00008067          	ret
    2188:	3a759073          	csrw	0x3a7,a1
    218c:	00008067          	ret
    2190:	3a859073          	csrw	0x3a8,a1
    2194:	00008067          	ret
    2198:	3a959073          	csrw	0x3a9,a1
    219c:	00008067          	ret
    21a0:	3aa59073          	csrw	0x3aa,a1
    21a4:	00008067          	ret
    21a8:	3ab59073          	csrw	0x3ab,a1
    21ac:	00008067          	ret
    21b0:	3ac59073          	csrw	0x3ac,a1
    21b4:	00008067          	ret
    21b8:	3ad59073          	csrw	0x3ad,a1
    21bc:	00008067          	ret
    21c0:	3ae59073          	csrw	0x3ae,a1
    21c4:	00008067          	ret
    21c8:	3af59073          	csrw	0x3af,a1
    21cc:	00008067          	ret

000021d0 <neorv32_cpu_irq_enable>:
    21d0:	01f00793          	li	a5,31
    21d4:	00050713          	mv	a4,a0
    21d8:	02a7e663          	bltu	a5,a0,2204 <neorv32_cpu_irq_enable+0x34>
    21dc:	ffff17b7          	lui	a5,0xffff1
    21e0:	88878793          	addi	a5,a5,-1912 # ffff0888 <__ctr0_io_space_begin+0xffff0a88>
    21e4:	00a7d7b3          	srl	a5,a5,a0
    21e8:	0017f793          	andi	a5,a5,1
    21ec:	00100513          	li	a0,1
    21f0:	00078c63          	beqz	a5,2208 <neorv32_cpu_irq_enable+0x38>
    21f4:	00e51533          	sll	a0,a0,a4
    21f8:	30452073          	csrs	mie,a0
    21fc:	00000513          	li	a0,0
    2200:	00008067          	ret
    2204:	00100513          	li	a0,1
    2208:	00008067          	ret

0000220c <neorv32_cpu_irq_disable>:
    220c:	01f00793          	li	a5,31
    2210:	00050713          	mv	a4,a0
    2214:	02a7e663          	bltu	a5,a0,2240 <neorv32_cpu_irq_disable+0x34>
    2218:	ffff17b7          	lui	a5,0xffff1
    221c:	88878793          	addi	a5,a5,-1912 # ffff0888 <__ctr0_io_space_begin+0xffff0a88>
    2220:	00a7d7b3          	srl	a5,a5,a0
    2224:	0017f793          	andi	a5,a5,1
    2228:	00100513          	li	a0,1
    222c:	00078c63          	beqz	a5,2244 <neorv32_cpu_irq_disable+0x38>
    2230:	00e51533          	sll	a0,a0,a4
    2234:	30453073          	csrc	mie,a0
    2238:	00000513          	li	a0,0
    223c:	00008067          	ret
    2240:	00100513          	li	a0,1
    2244:	00008067          	ret

00002248 <neorv32_cpu_set_mcycle>:
    2248:	00000793          	li	a5,0
    224c:	b0079073          	csrw	mcycle,a5
    2250:	b8059073          	csrw	mcycleh,a1
    2254:	b0051073          	csrw	mcycle,a0
    2258:	00008067          	ret

0000225c <neorv32_cpu_set_minstret>:
    225c:	00000793          	li	a5,0
    2260:	b0279073          	csrw	minstret,a5
    2264:	b8259073          	csrw	minstreth,a1
    2268:	b0251073          	csrw	minstret,a0
    226c:	00008067          	ret

00002270 <neorv32_cpu_goto_user_mode>:
    2270:	34109073          	csrw	mepc,ra
    2274:	000020b7          	lui	ra,0x2
    2278:	80008093          	addi	ra,ra,-2048 # 1800 <global_trap_handler+0x4>
    227c:	3000b073          	csrc	mstatus,ra
    2280:	30200073          	mret

00002284 <neorv32_cpu_pmp_get_num_regions>:
    2284:	fe402503          	lw	a0,-28(zero) # ffffffe4 <__ctr0_io_space_begin+0x1e4>
    2288:	10057513          	andi	a0,a0,256
    228c:	0a050663          	beqz	a0,2338 <neorv32_cpu_pmp_get_num_regions+0xb4>
    2290:	fe010113          	addi	sp,sp,-32
    2294:	00912a23          	sw	s1,20(sp)
    2298:	010104b7          	lui	s1,0x1010
    229c:	00812c23          	sw	s0,24(sp)
    22a0:	01212823          	sw	s2,16(sp)
    22a4:	00112e23          	sw	ra,28(sp)
    22a8:	01312623          	sw	s3,12(sp)
    22ac:	00000413          	li	s0,0
    22b0:	10148493          	addi	s1,s1,257 # 1010101 <__crt0_copy_data_src_begin+0x100b4ed>
    22b4:	01000913          	li	s2,16
    22b8:	00040513          	mv	a0,s0
    22bc:	00048593          	mv	a1,s1
    22c0:	00140413          	addi	s0,s0,1
    22c4:	e65ff0ef          	jal	ra,2128 <__neorv32_cpu_pmp_cfg_write>
    22c8:	ff2418e3          	bne	s0,s2,22b8 <neorv32_cpu_pmp_get_num_regions+0x34>
    22cc:	01010937          	lui	s2,0x1010
    22d0:	00000413          	li	s0,0
    22d4:	00000493          	li	s1,0
    22d8:	10190913          	addi	s2,s2,257 # 1010101 <__crt0_copy_data_src_begin+0x100b4ed>
    22dc:	01000993          	li	s3,16
    22e0:	00048513          	mv	a0,s1
    22e4:	d9dff0ef          	jal	ra,2080 <__neorv32_cpu_pmp_cfg_read>
    22e8:	01257533          	and	a0,a0,s2
    22ec:	00148493          	addi	s1,s1,1
    22f0:	00a40433          	add	s0,s0,a0
    22f4:	ff3496e3          	bne	s1,s3,22e0 <neorv32_cpu_pmp_get_num_regions+0x5c>
    22f8:	00845793          	srli	a5,s0,0x8
    22fc:	0ff47513          	andi	a0,s0,255
    2300:	0ff7f793          	andi	a5,a5,255
    2304:	00f507b3          	add	a5,a0,a5
    2308:	01045513          	srli	a0,s0,0x10
    230c:	0ff57513          	andi	a0,a0,255
    2310:	01845413          	srli	s0,s0,0x18
    2314:	00f50533          	add	a0,a0,a5
    2318:	01c12083          	lw	ra,28(sp)
    231c:	00a40533          	add	a0,s0,a0
    2320:	01812403          	lw	s0,24(sp)
    2324:	01412483          	lw	s1,20(sp)
    2328:	01012903          	lw	s2,16(sp)
    232c:	00c12983          	lw	s3,12(sp)
    2330:	02010113          	addi	sp,sp,32
    2334:	00008067          	ret
    2338:	00008067          	ret

0000233c <neorv32_cpu_pmp_get_granularity>:
    233c:	3a0027f3          	csrr	a5,pmpcfg0
    2340:	f007f793          	andi	a5,a5,-256
    2344:	3a079073          	csrw	pmpcfg0,a5
    2348:	fff00793          	li	a5,-1
    234c:	3b079073          	csrw	pmpaddr0,a5
    2350:	3b002773          	csrr	a4,pmpaddr0
    2354:	01f00513          	li	a0,31
    2358:	00a757b3          	srl	a5,a4,a0
    235c:	0017f793          	andi	a5,a5,1
    2360:	00078663          	beqz	a5,236c <neorv32_cpu_pmp_get_granularity+0x30>
    2364:	fff50513          	addi	a0,a0,-1
    2368:	fe0518e3          	bnez	a0,2358 <neorv32_cpu_pmp_get_granularity+0x1c>
    236c:	00100793          	li	a5,1
    2370:	00350513          	addi	a0,a0,3
    2374:	00a79533          	sll	a0,a5,a0
    2378:	00008067          	ret

0000237c <neorv32_cpu_pmp_configure_region>:
    237c:	00700793          	li	a5,7
    2380:	2ec7f863          	bgeu	a5,a2,2670 <neorv32_cpu_pmp_configure_region+0x2f4>
    2384:	fe010113          	addi	sp,sp,-32
    2388:	00912a23          	sw	s1,20(sp)
    238c:	fff60493          	addi	s1,a2,-1
    2390:	00812c23          	sw	s0,24(sp)
    2394:	00112e23          	sw	ra,28(sp)
    2398:	01212823          	sw	s2,16(sp)
    239c:	01312623          	sw	s3,12(sp)
    23a0:	01412423          	sw	s4,8(sp)
    23a4:	01512223          	sw	s5,4(sp)
    23a8:	00c4f633          	and	a2,s1,a2
    23ac:	00050413          	mv	s0,a0
    23b0:	00100513          	li	a0,1
    23b4:	12061063          	bnez	a2,24d4 <neorv32_cpu_pmp_configure_region+0x158>
    23b8:	00347a13          	andi	s4,s0,3
    23bc:	003a1713          	slli	a4,s4,0x3
    23c0:	00445993          	srli	s3,s0,0x4
    23c4:	0ff00a13          	li	s4,255
    23c8:	00ea1a33          	sll	s4,s4,a4
    23cc:	00098513          	mv	a0,s3
    23d0:	00058a93          	mv	s5,a1
    23d4:	00e69933          	sll	s2,a3,a4
    23d8:	fffa4a13          	not	s4,s4
    23dc:	ca5ff0ef          	jal	ra,2080 <__neorv32_cpu_pmp_cfg_read>
    23e0:	00aa75b3          	and	a1,s4,a0
    23e4:	00098513          	mv	a0,s3
    23e8:	d41ff0ef          	jal	ra,2128 <__neorv32_cpu_pmp_cfg_write>
    23ec:	0024d793          	srli	a5,s1,0x2
    23f0:	fff7c793          	not	a5,a5
    23f4:	0157f7b3          	and	a5,a5,s5
    23f8:	0034d593          	srli	a1,s1,0x3
    23fc:	03f47513          	andi	a0,s0,63
    2400:	00f5e5b3          	or	a1,a1,a5
    2404:	03e00713          	li	a4,62
    2408:	fff50793          	addi	a5,a0,-1
    240c:	00f76e63          	bltu	a4,a5,2428 <neorv32_cpu_pmp_configure_region+0xac>
    2410:	00004737          	lui	a4,0x4
    2414:	00279793          	slli	a5,a5,0x2
    2418:	28870713          	addi	a4,a4,648 # 4288 <symbols.0+0x8c>
    241c:	00e787b3          	add	a5,a5,a4
    2420:	0007a783          	lw	a5,0(a5)
    2424:	00078067          	jr	a5
    2428:	3b059073          	csrw	pmpaddr0,a1
    242c:	01000513          	li	a0,16
    2430:	0800006f          	j	24b0 <neorv32_cpu_pmp_configure_region+0x134>
    2434:	3b159073          	csrw	pmpaddr1,a1
    2438:	ff5ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    243c:	3b259073          	csrw	pmpaddr2,a1
    2440:	fedff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    2444:	3b359073          	csrw	pmpaddr3,a1
    2448:	fe5ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    244c:	3b459073          	csrw	pmpaddr4,a1
    2450:	fddff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    2454:	3b559073          	csrw	pmpaddr5,a1
    2458:	fd5ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    245c:	3b659073          	csrw	pmpaddr6,a1
    2460:	fcdff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    2464:	3b759073          	csrw	pmpaddr7,a1
    2468:	fc5ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    246c:	3b859073          	csrw	pmpaddr8,a1
    2470:	fbdff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    2474:	3b959073          	csrw	pmpaddr9,a1
    2478:	fb5ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    247c:	3ba59073          	csrw	pmpaddr10,a1
    2480:	fadff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    2484:	3bb59073          	csrw	pmpaddr11,a1
    2488:	fa5ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    248c:	3bc59073          	csrw	pmpaddr12,a1
    2490:	f9dff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    2494:	3bd59073          	csrw	pmpaddr13,a1
    2498:	f95ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    249c:	3be59073          	csrw	pmpaddr14,a1
    24a0:	f8dff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    24a4:	3bf59073          	csrw	pmpaddr15,a1
    24a8:	f85ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    24ac:	3c059073          	csrw	0x3c0,a1
    24b0:	00000013          	nop
    24b4:	fff50513          	addi	a0,a0,-1
    24b8:	fe051ce3          	bnez	a0,24b0 <neorv32_cpu_pmp_configure_region+0x134>
    24bc:	00098513          	mv	a0,s3
    24c0:	bc1ff0ef          	jal	ra,2080 <__neorv32_cpu_pmp_cfg_read>
    24c4:	012565b3          	or	a1,a0,s2
    24c8:	00098513          	mv	a0,s3
    24cc:	c5dff0ef          	jal	ra,2128 <__neorv32_cpu_pmp_cfg_write>
    24d0:	00000513          	li	a0,0
    24d4:	01c12083          	lw	ra,28(sp)
    24d8:	01812403          	lw	s0,24(sp)
    24dc:	01412483          	lw	s1,20(sp)
    24e0:	01012903          	lw	s2,16(sp)
    24e4:	00c12983          	lw	s3,12(sp)
    24e8:	00812a03          	lw	s4,8(sp)
    24ec:	00412a83          	lw	s5,4(sp)
    24f0:	02010113          	addi	sp,sp,32
    24f4:	00008067          	ret
    24f8:	3c159073          	csrw	0x3c1,a1
    24fc:	f31ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    2500:	3c259073          	csrw	0x3c2,a1
    2504:	f29ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    2508:	3c359073          	csrw	0x3c3,a1
    250c:	f21ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    2510:	3c459073          	csrw	0x3c4,a1
    2514:	f19ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    2518:	3c559073          	csrw	0x3c5,a1
    251c:	f11ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    2520:	3c659073          	csrw	0x3c6,a1
    2524:	f09ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    2528:	3c759073          	csrw	0x3c7,a1
    252c:	f01ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    2530:	3c859073          	csrw	0x3c8,a1
    2534:	ef9ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    2538:	3c959073          	csrw	0x3c9,a1
    253c:	ef1ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    2540:	3ca59073          	csrw	0x3ca,a1
    2544:	ee9ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    2548:	3cb59073          	csrw	0x3cb,a1
    254c:	ee1ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    2550:	3cc59073          	csrw	0x3cc,a1
    2554:	ed9ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    2558:	3cd59073          	csrw	0x3cd,a1
    255c:	ed1ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    2560:	3ce59073          	csrw	0x3ce,a1
    2564:	ec9ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    2568:	3cf59073          	csrw	0x3cf,a1
    256c:	ec1ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    2570:	3d059073          	csrw	0x3d0,a1
    2574:	eb9ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    2578:	3d159073          	csrw	0x3d1,a1
    257c:	eb1ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    2580:	3d259073          	csrw	0x3d2,a1
    2584:	ea9ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    2588:	3d359073          	csrw	0x3d3,a1
    258c:	ea1ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    2590:	3d459073          	csrw	0x3d4,a1
    2594:	e99ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    2598:	3d559073          	csrw	0x3d5,a1
    259c:	e91ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    25a0:	3d659073          	csrw	0x3d6,a1
    25a4:	e89ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    25a8:	3d759073          	csrw	0x3d7,a1
    25ac:	e81ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    25b0:	3d859073          	csrw	0x3d8,a1
    25b4:	e79ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    25b8:	3d959073          	csrw	0x3d9,a1
    25bc:	e71ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    25c0:	3da59073          	csrw	0x3da,a1
    25c4:	e69ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    25c8:	3db59073          	csrw	0x3db,a1
    25cc:	e61ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    25d0:	3dc59073          	csrw	0x3dc,a1
    25d4:	e59ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    25d8:	3dd59073          	csrw	0x3dd,a1
    25dc:	e51ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    25e0:	3de59073          	csrw	0x3de,a1
    25e4:	e49ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    25e8:	3df59073          	csrw	0x3df,a1
    25ec:	e41ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    25f0:	3e059073          	csrw	0x3e0,a1
    25f4:	e39ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    25f8:	3e159073          	csrw	0x3e1,a1
    25fc:	e31ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    2600:	3e259073          	csrw	0x3e2,a1
    2604:	e29ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    2608:	3e359073          	csrw	0x3e3,a1
    260c:	e21ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    2610:	3e459073          	csrw	0x3e4,a1
    2614:	e19ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    2618:	3e559073          	csrw	0x3e5,a1
    261c:	e11ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    2620:	3e659073          	csrw	0x3e6,a1
    2624:	e09ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    2628:	3e759073          	csrw	0x3e7,a1
    262c:	e01ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    2630:	3e859073          	csrw	0x3e8,a1
    2634:	df9ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    2638:	3e959073          	csrw	0x3e9,a1
    263c:	df1ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    2640:	3ea59073          	csrw	0x3ea,a1
    2644:	de9ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    2648:	3eb59073          	csrw	0x3eb,a1
    264c:	de1ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    2650:	3ec59073          	csrw	0x3ec,a1
    2654:	dd9ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    2658:	3ed59073          	csrw	0x3ed,a1
    265c:	dd1ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    2660:	3ee59073          	csrw	0x3ee,a1
    2664:	dc9ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    2668:	3ef59073          	csrw	0x3ef,a1
    266c:	dc1ff06f          	j	242c <neorv32_cpu_pmp_configure_region+0xb0>
    2670:	00100513          	li	a0,1
    2674:	00008067          	ret

00002678 <neorv32_cpu_hpm_get_counters>:
    2678:	fe402503          	lw	a0,-28(zero) # ffffffe4 <__ctr0_io_space_begin+0x1e4>
    267c:	20057513          	andi	a0,a0,512
    2680:	14050a63          	beqz	a0,27d4 <neorv32_cpu_hpm_get_counters+0x15c>
    2684:	320027f3          	csrr	a5,mcountinhibit
    2688:	ff87e793          	ori	a5,a5,-8
    268c:	32079073          	csrw	mcountinhibit,a5
    2690:	00100793          	li	a5,1
    2694:	b0379073          	csrw	mhpmcounter3,a5
    2698:	b0479073          	csrw	mhpmcounter4,a5
    269c:	b0579073          	csrw	mhpmcounter5,a5
    26a0:	b0679073          	csrw	mhpmcounter6,a5
    26a4:	b0779073          	csrw	mhpmcounter7,a5
    26a8:	b0879073          	csrw	mhpmcounter8,a5
    26ac:	b0979073          	csrw	mhpmcounter9,a5
    26b0:	b0a79073          	csrw	mhpmcounter10,a5
    26b4:	b0b79073          	csrw	mhpmcounter11,a5
    26b8:	b0c79073          	csrw	mhpmcounter12,a5
    26bc:	b0d79073          	csrw	mhpmcounter13,a5
    26c0:	b0e79073          	csrw	mhpmcounter14,a5
    26c4:	b0f79073          	csrw	mhpmcounter15,a5
    26c8:	b1079073          	csrw	mhpmcounter16,a5
    26cc:	b1179073          	csrw	mhpmcounter17,a5
    26d0:	b1279073          	csrw	mhpmcounter18,a5
    26d4:	b1379073          	csrw	mhpmcounter19,a5
    26d8:	b1479073          	csrw	mhpmcounter20,a5
    26dc:	b1579073          	csrw	mhpmcounter21,a5
    26e0:	b1679073          	csrw	mhpmcounter22,a5
    26e4:	b1779073          	csrw	mhpmcounter23,a5
    26e8:	b1879073          	csrw	mhpmcounter24,a5
    26ec:	b1979073          	csrw	mhpmcounter25,a5
    26f0:	b1a79073          	csrw	mhpmcounter26,a5
    26f4:	b1b79073          	csrw	mhpmcounter27,a5
    26f8:	b1c79073          	csrw	mhpmcounter28,a5
    26fc:	b1d79073          	csrw	mhpmcounter29,a5
    2700:	b03027f3          	csrr	a5,mhpmcounter3
    2704:	b0402573          	csrr	a0,mhpmcounter4
    2708:	00f50533          	add	a0,a0,a5
    270c:	b05027f3          	csrr	a5,mhpmcounter5
    2710:	00f50533          	add	a0,a0,a5
    2714:	b06027f3          	csrr	a5,mhpmcounter6
    2718:	00f50533          	add	a0,a0,a5
    271c:	b07027f3          	csrr	a5,mhpmcounter7
    2720:	00f50533          	add	a0,a0,a5
    2724:	b08027f3          	csrr	a5,mhpmcounter8
    2728:	00f50533          	add	a0,a0,a5
    272c:	b09027f3          	csrr	a5,mhpmcounter9
    2730:	00f50533          	add	a0,a0,a5
    2734:	b0a027f3          	csrr	a5,mhpmcounter10
    2738:	00f50533          	add	a0,a0,a5
    273c:	b0b027f3          	csrr	a5,mhpmcounter11
    2740:	00f50533          	add	a0,a0,a5
    2744:	b0c027f3          	csrr	a5,mhpmcounter12
    2748:	00f50533          	add	a0,a0,a5
    274c:	b0d027f3          	csrr	a5,mhpmcounter13
    2750:	00f50533          	add	a0,a0,a5
    2754:	b0e027f3          	csrr	a5,mhpmcounter14
    2758:	00f50533          	add	a0,a0,a5
    275c:	b0f027f3          	csrr	a5,mhpmcounter15
    2760:	00f50533          	add	a0,a0,a5
    2764:	b10027f3          	csrr	a5,mhpmcounter16
    2768:	00f50533          	add	a0,a0,a5
    276c:	b11027f3          	csrr	a5,mhpmcounter17
    2770:	00f50533          	add	a0,a0,a5
    2774:	b12027f3          	csrr	a5,mhpmcounter18
    2778:	00f50533          	add	a0,a0,a5
    277c:	b13027f3          	csrr	a5,mhpmcounter19
    2780:	00f50533          	add	a0,a0,a5
    2784:	b14027f3          	csrr	a5,mhpmcounter20
    2788:	00f50533          	add	a0,a0,a5
    278c:	b15027f3          	csrr	a5,mhpmcounter21
    2790:	00f50533          	add	a0,a0,a5
    2794:	b16027f3          	csrr	a5,mhpmcounter22
    2798:	00f50533          	add	a0,a0,a5
    279c:	b17027f3          	csrr	a5,mhpmcounter23
    27a0:	00f50533          	add	a0,a0,a5
    27a4:	b18027f3          	csrr	a5,mhpmcounter24
    27a8:	00f50533          	add	a0,a0,a5
    27ac:	b19027f3          	csrr	a5,mhpmcounter25
    27b0:	00f50533          	add	a0,a0,a5
    27b4:	b1a027f3          	csrr	a5,mhpmcounter26
    27b8:	00f50533          	add	a0,a0,a5
    27bc:	b1b027f3          	csrr	a5,mhpmcounter27
    27c0:	00f50533          	add	a0,a0,a5
    27c4:	b1c027f3          	csrr	a5,mhpmcounter28
    27c8:	00f50533          	add	a0,a0,a5
    27cc:	b1d027f3          	csrr	a5,mhpmcounter29
    27d0:	00f50533          	add	a0,a0,a5
    27d4:	00008067          	ret

000027d8 <neorv32_twi_available>:
    27d8:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
    27dc:	01455513          	srli	a0,a0,0x14
    27e0:	00157513          	andi	a0,a0,1
    27e4:	00008067          	ret

000027e8 <neorv32_twi_setup>:
    27e8:	00757513          	andi	a0,a0,7
    27ec:	0015f593          	andi	a1,a1,1
    27f0:	00351513          	slli	a0,a0,0x3
    27f4:	00759593          	slli	a1,a1,0x7
    27f8:	fb000793          	li	a5,-80
    27fc:	00b56533          	or	a0,a0,a1
    2800:	0007a023          	sw	zero,0(a5)
    2804:	00156513          	ori	a0,a0,1
    2808:	00a7a023          	sw	a0,0(a5)
    280c:	00008067          	ret

00002810 <neorv32_twi_disable>:
    2810:	fb000713          	li	a4,-80
    2814:	00072783          	lw	a5,0(a4)
    2818:	ffe7f793          	andi	a5,a5,-2
    281c:	00f72023          	sw	a5,0(a4)
    2820:	00008067          	ret

00002824 <neorv32_twi_trans>:
    2824:	faa02a23          	sw	a0,-76(zero) # ffffffb4 <__ctr0_io_space_begin+0x1b4>
    2828:	fb002783          	lw	a5,-80(zero) # ffffffb0 <__ctr0_io_space_begin+0x1b0>
    282c:	fe07cee3          	bltz	a5,2828 <neorv32_twi_trans+0x4>
    2830:	fb002503          	lw	a0,-80(zero) # ffffffb0 <__ctr0_io_space_begin+0x1b0>
    2834:	01e55513          	srli	a0,a0,0x1e
    2838:	00154513          	xori	a0,a0,1
    283c:	00157513          	andi	a0,a0,1
    2840:	00008067          	ret

00002844 <neorv32_twi_generate_stop>:
    2844:	fb002783          	lw	a5,-80(zero) # ffffffb0 <__ctr0_io_space_begin+0x1b0>
    2848:	0047e793          	ori	a5,a5,4
    284c:	faf02823          	sw	a5,-80(zero) # ffffffb0 <__ctr0_io_space_begin+0x1b0>
    2850:	fb002783          	lw	a5,-80(zero) # ffffffb0 <__ctr0_io_space_begin+0x1b0>
    2854:	fe07cee3          	bltz	a5,2850 <neorv32_twi_generate_stop+0xc>
    2858:	00008067          	ret

0000285c <neorv32_twi_generate_start>:
    285c:	fb002783          	lw	a5,-80(zero) # ffffffb0 <__ctr0_io_space_begin+0x1b0>
    2860:	0027e793          	ori	a5,a5,2
    2864:	faf02823          	sw	a5,-80(zero) # ffffffb0 <__ctr0_io_space_begin+0x1b0>
    2868:	fb002783          	lw	a5,-80(zero) # ffffffb0 <__ctr0_io_space_begin+0x1b0>
    286c:	fe07cee3          	bltz	a5,2868 <neorv32_twi_generate_start+0xc>
    2870:	00008067          	ret
    2874:	0000                	unimp
    2876:	0000                	unimp
    2878:	0000                	unimp
    287a:	0000                	unimp
    287c:	0000                	unimp
    287e:	0000                	unimp

00002880 <__neorv32_rte_core>:
    2880:	fc010113          	addi	sp,sp,-64
    2884:	02112e23          	sw	ra,60(sp)
    2888:	02512c23          	sw	t0,56(sp)
    288c:	02612a23          	sw	t1,52(sp)
    2890:	02712823          	sw	t2,48(sp)
    2894:	02a12623          	sw	a0,44(sp)
    2898:	02b12423          	sw	a1,40(sp)
    289c:	02c12223          	sw	a2,36(sp)
    28a0:	02d12023          	sw	a3,32(sp)
    28a4:	00e12e23          	sw	a4,28(sp)
    28a8:	00f12c23          	sw	a5,24(sp)
    28ac:	01012a23          	sw	a6,20(sp)
    28b0:	01112823          	sw	a7,16(sp)
    28b4:	01c12623          	sw	t3,12(sp)
    28b8:	01d12423          	sw	t4,8(sp)
    28bc:	01e12223          	sw	t5,4(sp)
    28c0:	01f12023          	sw	t6,0(sp)
    28c4:	34102773          	csrr	a4,mepc
    28c8:	34071073          	csrw	mscratch,a4
    28cc:	342027f3          	csrr	a5,mcause
    28d0:	0807ca63          	bltz	a5,2964 <__neorv32_rte_core+0xe4>
    28d4:	00071683          	lh	a3,0(a4)
    28d8:	00300593          	li	a1,3
    28dc:	0036f693          	andi	a3,a3,3
    28e0:	00270613          	addi	a2,a4,2
    28e4:	00b69463          	bne	a3,a1,28ec <__neorv32_rte_core+0x6c>
    28e8:	00470613          	addi	a2,a4,4
    28ec:	34161073          	csrw	mepc,a2
    28f0:	00b00713          	li	a4,11
    28f4:	04f77c63          	bgeu	a4,a5,294c <__neorv32_rte_core+0xcc>
    28f8:	000037b7          	lui	a5,0x3
    28fc:	b4878793          	addi	a5,a5,-1208 # 2b48 <__neorv32_rte_debug_exc_handler>
    2900:	000780e7          	jalr	a5
    2904:	03c12083          	lw	ra,60(sp)
    2908:	03812283          	lw	t0,56(sp)
    290c:	03412303          	lw	t1,52(sp)
    2910:	03012383          	lw	t2,48(sp)
    2914:	02c12503          	lw	a0,44(sp)
    2918:	02812583          	lw	a1,40(sp)
    291c:	02412603          	lw	a2,36(sp)
    2920:	02012683          	lw	a3,32(sp)
    2924:	01c12703          	lw	a4,28(sp)
    2928:	01812783          	lw	a5,24(sp)
    292c:	01412803          	lw	a6,20(sp)
    2930:	01012883          	lw	a7,16(sp)
    2934:	00c12e03          	lw	t3,12(sp)
    2938:	00812e83          	lw	t4,8(sp)
    293c:	00412f03          	lw	t5,4(sp)
    2940:	00012f83          	lw	t6,0(sp)
    2944:	04010113          	addi	sp,sp,64
    2948:	30200073          	mret
    294c:	00004737          	lui	a4,0x4
    2950:	00279793          	slli	a5,a5,0x2
    2954:	38470713          	addi	a4,a4,900 # 4384 <symbols.0+0x188>
    2958:	00e787b3          	add	a5,a5,a4
    295c:	0007a783          	lw	a5,0(a5)
    2960:	00078067          	jr	a5
    2964:	80000737          	lui	a4,0x80000
    2968:	ffd74713          	xori	a4,a4,-3
    296c:	00e787b3          	add	a5,a5,a4
    2970:	01c00713          	li	a4,28
    2974:	f8f762e3          	bltu	a4,a5,28f8 <__neorv32_rte_core+0x78>
    2978:	00004737          	lui	a4,0x4
    297c:	00279793          	slli	a5,a5,0x2
    2980:	3b470713          	addi	a4,a4,948 # 43b4 <symbols.0+0x1b8>
    2984:	00e787b3          	add	a5,a5,a4
    2988:	0007a783          	lw	a5,0(a5)
    298c:	00078067          	jr	a5
    2990:	89c1a783          	lw	a5,-1892(gp) # 8000009c <__neorv32_rte_vector_lut>
    2994:	f6dff06f          	j	2900 <__neorv32_rte_core+0x80>
    2998:	8a01a783          	lw	a5,-1888(gp) # 800000a0 <__neorv32_rte_vector_lut+0x4>
    299c:	f65ff06f          	j	2900 <__neorv32_rte_core+0x80>
    29a0:	8a41a783          	lw	a5,-1884(gp) # 800000a4 <__neorv32_rte_vector_lut+0x8>
    29a4:	f5dff06f          	j	2900 <__neorv32_rte_core+0x80>
    29a8:	8a81a783          	lw	a5,-1880(gp) # 800000a8 <__neorv32_rte_vector_lut+0xc>
    29ac:	f55ff06f          	j	2900 <__neorv32_rte_core+0x80>
    29b0:	8ac1a783          	lw	a5,-1876(gp) # 800000ac <__neorv32_rte_vector_lut+0x10>
    29b4:	f4dff06f          	j	2900 <__neorv32_rte_core+0x80>
    29b8:	8b01a783          	lw	a5,-1872(gp) # 800000b0 <__neorv32_rte_vector_lut+0x14>
    29bc:	f45ff06f          	j	2900 <__neorv32_rte_core+0x80>
    29c0:	8b41a783          	lw	a5,-1868(gp) # 800000b4 <__neorv32_rte_vector_lut+0x18>
    29c4:	f3dff06f          	j	2900 <__neorv32_rte_core+0x80>
    29c8:	8b81a783          	lw	a5,-1864(gp) # 800000b8 <__neorv32_rte_vector_lut+0x1c>
    29cc:	f35ff06f          	j	2900 <__neorv32_rte_core+0x80>
    29d0:	8bc1a783          	lw	a5,-1860(gp) # 800000bc <__neorv32_rte_vector_lut+0x20>
    29d4:	f2dff06f          	j	2900 <__neorv32_rte_core+0x80>
    29d8:	8c01a783          	lw	a5,-1856(gp) # 800000c0 <__neorv32_rte_vector_lut+0x24>
    29dc:	f25ff06f          	j	2900 <__neorv32_rte_core+0x80>
    29e0:	8c41a783          	lw	a5,-1852(gp) # 800000c4 <__neorv32_rte_vector_lut+0x28>
    29e4:	f1dff06f          	j	2900 <__neorv32_rte_core+0x80>
    29e8:	8c81a783          	lw	a5,-1848(gp) # 800000c8 <__neorv32_rte_vector_lut+0x2c>
    29ec:	f15ff06f          	j	2900 <__neorv32_rte_core+0x80>
    29f0:	8cc1a783          	lw	a5,-1844(gp) # 800000cc <__neorv32_rte_vector_lut+0x30>
    29f4:	f0dff06f          	j	2900 <__neorv32_rte_core+0x80>
    29f8:	8d01a783          	lw	a5,-1840(gp) # 800000d0 <__neorv32_rte_vector_lut+0x34>
    29fc:	f05ff06f          	j	2900 <__neorv32_rte_core+0x80>
    2a00:	8d41a783          	lw	a5,-1836(gp) # 800000d4 <__neorv32_rte_vector_lut+0x38>
    2a04:	efdff06f          	j	2900 <__neorv32_rte_core+0x80>
    2a08:	8d81a783          	lw	a5,-1832(gp) # 800000d8 <__neorv32_rte_vector_lut+0x3c>
    2a0c:	ef5ff06f          	j	2900 <__neorv32_rte_core+0x80>
    2a10:	8dc1a783          	lw	a5,-1828(gp) # 800000dc <__neorv32_rte_vector_lut+0x40>
    2a14:	eedff06f          	j	2900 <__neorv32_rte_core+0x80>
    2a18:	8e01a783          	lw	a5,-1824(gp) # 800000e0 <__neorv32_rte_vector_lut+0x44>
    2a1c:	ee5ff06f          	j	2900 <__neorv32_rte_core+0x80>
    2a20:	8e41a783          	lw	a5,-1820(gp) # 800000e4 <__neorv32_rte_vector_lut+0x48>
    2a24:	eddff06f          	j	2900 <__neorv32_rte_core+0x80>
    2a28:	8e81a783          	lw	a5,-1816(gp) # 800000e8 <__neorv32_rte_vector_lut+0x4c>
    2a2c:	ed5ff06f          	j	2900 <__neorv32_rte_core+0x80>
    2a30:	8ec1a783          	lw	a5,-1812(gp) # 800000ec <__neorv32_rte_vector_lut+0x50>
    2a34:	ecdff06f          	j	2900 <__neorv32_rte_core+0x80>
    2a38:	8f01a783          	lw	a5,-1808(gp) # 800000f0 <__neorv32_rte_vector_lut+0x54>
    2a3c:	ec5ff06f          	j	2900 <__neorv32_rte_core+0x80>
    2a40:	8f41a783          	lw	a5,-1804(gp) # 800000f4 <__neorv32_rte_vector_lut+0x58>
    2a44:	ebdff06f          	j	2900 <__neorv32_rte_core+0x80>
    2a48:	8f81a783          	lw	a5,-1800(gp) # 800000f8 <__neorv32_rte_vector_lut+0x5c>
    2a4c:	eb5ff06f          	j	2900 <__neorv32_rte_core+0x80>
    2a50:	8fc1a783          	lw	a5,-1796(gp) # 800000fc <__neorv32_rte_vector_lut+0x60>
    2a54:	eadff06f          	j	2900 <__neorv32_rte_core+0x80>
    2a58:	9001a783          	lw	a5,-1792(gp) # 80000100 <__neorv32_rte_vector_lut+0x64>
    2a5c:	ea5ff06f          	j	2900 <__neorv32_rte_core+0x80>
    2a60:	9041a783          	lw	a5,-1788(gp) # 80000104 <__neorv32_rte_vector_lut+0x68>
    2a64:	e9dff06f          	j	2900 <__neorv32_rte_core+0x80>
    2a68:	9081a783          	lw	a5,-1784(gp) # 80000108 <__neorv32_rte_vector_lut+0x6c>
    2a6c:	e95ff06f          	j	2900 <__neorv32_rte_core+0x80>
    2a70:	90c1a783          	lw	a5,-1780(gp) # 8000010c <__neorv32_rte_vector_lut+0x70>
    2a74:	e8dff06f          	j	2900 <__neorv32_rte_core+0x80>
    2a78:	0000                	unimp
    2a7a:	0000                	unimp
    2a7c:	0000                	unimp
    2a7e:	0000                	unimp

00002a80 <__neorv32_rte_print_true_false>:
    2a80:	00050863          	beqz	a0,2a90 <__neorv32_rte_print_true_false+0x10>
    2a84:	00004537          	lui	a0,0x4
    2a88:	42850513          	addi	a0,a0,1064 # 4428 <symbols.0+0x22c>
    2a8c:	bc0ff06f          	j	1e4c <neorv32_uart0_print>
    2a90:	00004537          	lui	a0,0x4
    2a94:	43050513          	addi	a0,a0,1072 # 4430 <symbols.0+0x234>
    2a98:	ff5ff06f          	j	2a8c <__neorv32_rte_print_true_false+0xc>

00002a9c <__neorv32_rte_print_hex_word>:
    2a9c:	fe010113          	addi	sp,sp,-32
    2aa0:	01212823          	sw	s2,16(sp)
    2aa4:	00050913          	mv	s2,a0
    2aa8:	00004537          	lui	a0,0x4
    2aac:	00912a23          	sw	s1,20(sp)
    2ab0:	43450513          	addi	a0,a0,1076 # 4434 <symbols.0+0x238>
    2ab4:	000054b7          	lui	s1,0x5
    2ab8:	00812c23          	sw	s0,24(sp)
    2abc:	01312623          	sw	s3,12(sp)
    2ac0:	00112e23          	sw	ra,28(sp)
    2ac4:	01c00413          	li	s0,28
    2ac8:	b84ff0ef          	jal	ra,1e4c <neorv32_uart0_print>
    2acc:	c0448493          	addi	s1,s1,-1020 # 4c04 <hex_symbols.0>
    2ad0:	ffc00993          	li	s3,-4
    2ad4:	008957b3          	srl	a5,s2,s0
    2ad8:	00f7f793          	andi	a5,a5,15
    2adc:	00f487b3          	add	a5,s1,a5
    2ae0:	0007c503          	lbu	a0,0(a5)
    2ae4:	ffc40413          	addi	s0,s0,-4
    2ae8:	b30ff0ef          	jal	ra,1e18 <neorv32_uart0_putc>
    2aec:	ff3414e3          	bne	s0,s3,2ad4 <__neorv32_rte_print_hex_word+0x38>
    2af0:	01c12083          	lw	ra,28(sp)
    2af4:	01812403          	lw	s0,24(sp)
    2af8:	01412483          	lw	s1,20(sp)
    2afc:	01012903          	lw	s2,16(sp)
    2b00:	00c12983          	lw	s3,12(sp)
    2b04:	02010113          	addi	sp,sp,32
    2b08:	00008067          	ret

00002b0c <__neorv32_rte_print_checkbox>:
    2b0c:	ff010113          	addi	sp,sp,-16
    2b10:	00812423          	sw	s0,8(sp)
    2b14:	00050413          	mv	s0,a0
    2b18:	05b00513          	li	a0,91
    2b1c:	00112623          	sw	ra,12(sp)
    2b20:	af8ff0ef          	jal	ra,1e18 <neorv32_uart0_putc>
    2b24:	07800513          	li	a0,120
    2b28:	00041463          	bnez	s0,2b30 <__neorv32_rte_print_checkbox+0x24>
    2b2c:	02000513          	li	a0,32
    2b30:	ae8ff0ef          	jal	ra,1e18 <neorv32_uart0_putc>
    2b34:	00812403          	lw	s0,8(sp)
    2b38:	00c12083          	lw	ra,12(sp)
    2b3c:	05d00513          	li	a0,93
    2b40:	01010113          	addi	sp,sp,16
    2b44:	ad4ff06f          	j	1e18 <neorv32_uart0_putc>

00002b48 <__neorv32_rte_debug_exc_handler>:
    2b48:	ff010113          	addi	sp,sp,-16
    2b4c:	00112623          	sw	ra,12(sp)
    2b50:	00812423          	sw	s0,8(sp)
    2b54:	00912223          	sw	s1,4(sp)
    2b58:	a04ff0ef          	jal	ra,1d5c <neorv32_uart0_available>
    2b5c:	1c050863          	beqz	a0,2d2c <__neorv32_rte_debug_exc_handler+0x1e4>
    2b60:	00004537          	lui	a0,0x4
    2b64:	43850513          	addi	a0,a0,1080 # 4438 <symbols.0+0x23c>
    2b68:	ae4ff0ef          	jal	ra,1e4c <neorv32_uart0_print>
    2b6c:	34202473          	csrr	s0,mcause
    2b70:	00900713          	li	a4,9
    2b74:	00f47793          	andi	a5,s0,15
    2b78:	03078493          	addi	s1,a5,48
    2b7c:	00f77463          	bgeu	a4,a5,2b84 <__neorv32_rte_debug_exc_handler+0x3c>
    2b80:	05778493          	addi	s1,a5,87
    2b84:	00b00793          	li	a5,11
    2b88:	0087ee63          	bltu	a5,s0,2ba4 <__neorv32_rte_debug_exc_handler+0x5c>
    2b8c:	00004737          	lui	a4,0x4
    2b90:	00241793          	slli	a5,s0,0x2
    2b94:	5f870713          	addi	a4,a4,1528 # 45f8 <symbols.0+0x3fc>
    2b98:	00e787b3          	add	a5,a5,a4
    2b9c:	0007a783          	lw	a5,0(a5)
    2ba0:	00078067          	jr	a5
    2ba4:	800007b7          	lui	a5,0x80000
    2ba8:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
    2bac:	14e40e63          	beq	s0,a4,2d08 <__neorv32_rte_debug_exc_handler+0x1c0>
    2bb0:	02876a63          	bltu	a4,s0,2be4 <__neorv32_rte_debug_exc_handler+0x9c>
    2bb4:	00378713          	addi	a4,a5,3
    2bb8:	12e40c63          	beq	s0,a4,2cf0 <__neorv32_rte_debug_exc_handler+0x1a8>
    2bbc:	00778793          	addi	a5,a5,7
    2bc0:	12f40e63          	beq	s0,a5,2cfc <__neorv32_rte_debug_exc_handler+0x1b4>
    2bc4:	00004537          	lui	a0,0x4
    2bc8:	59850513          	addi	a0,a0,1432 # 4598 <symbols.0+0x39c>
    2bcc:	a80ff0ef          	jal	ra,1e4c <neorv32_uart0_print>
    2bd0:	00040513          	mv	a0,s0
    2bd4:	ec9ff0ef          	jal	ra,2a9c <__neorv32_rte_print_hex_word>
    2bd8:	00100793          	li	a5,1
    2bdc:	08f40c63          	beq	s0,a5,2c74 <__neorv32_rte_debug_exc_handler+0x12c>
    2be0:	0280006f          	j	2c08 <__neorv32_rte_debug_exc_handler+0xc0>
    2be4:	ff07c793          	xori	a5,a5,-16
    2be8:	00f407b3          	add	a5,s0,a5
    2bec:	00f00713          	li	a4,15
    2bf0:	fcf76ae3          	bltu	a4,a5,2bc4 <__neorv32_rte_debug_exc_handler+0x7c>
    2bf4:	00004537          	lui	a0,0x4
    2bf8:	58850513          	addi	a0,a0,1416 # 4588 <symbols.0+0x38c>
    2bfc:	a50ff0ef          	jal	ra,1e4c <neorv32_uart0_print>
    2c00:	00048513          	mv	a0,s1
    2c04:	a14ff0ef          	jal	ra,1e18 <neorv32_uart0_putc>
    2c08:	ffd47413          	andi	s0,s0,-3
    2c0c:	00500793          	li	a5,5
    2c10:	06f40263          	beq	s0,a5,2c74 <__neorv32_rte_debug_exc_handler+0x12c>
    2c14:	00004537          	lui	a0,0x4
    2c18:	5dc50513          	addi	a0,a0,1500 # 45dc <symbols.0+0x3e0>
    2c1c:	a30ff0ef          	jal	ra,1e4c <neorv32_uart0_print>
    2c20:	34002573          	csrr	a0,mscratch
    2c24:	e79ff0ef          	jal	ra,2a9c <__neorv32_rte_print_hex_word>
    2c28:	00004537          	lui	a0,0x4
    2c2c:	5e450513          	addi	a0,a0,1508 # 45e4 <symbols.0+0x3e8>
    2c30:	a1cff0ef          	jal	ra,1e4c <neorv32_uart0_print>
    2c34:	34302573          	csrr	a0,mtval
    2c38:	e65ff0ef          	jal	ra,2a9c <__neorv32_rte_print_hex_word>
    2c3c:	00812403          	lw	s0,8(sp)
    2c40:	00c12083          	lw	ra,12(sp)
    2c44:	00412483          	lw	s1,4(sp)
    2c48:	00004537          	lui	a0,0x4
    2c4c:	5f050513          	addi	a0,a0,1520 # 45f0 <symbols.0+0x3f4>
    2c50:	01010113          	addi	sp,sp,16
    2c54:	9f8ff06f          	j	1e4c <neorv32_uart0_print>
    2c58:	00004537          	lui	a0,0x4
    2c5c:	44050513          	addi	a0,a0,1088 # 4440 <symbols.0+0x244>
    2c60:	9ecff0ef          	jal	ra,1e4c <neorv32_uart0_print>
    2c64:	fb1ff06f          	j	2c14 <__neorv32_rte_debug_exc_handler+0xcc>
    2c68:	00004537          	lui	a0,0x4
    2c6c:	46050513          	addi	a0,a0,1120 # 4460 <symbols.0+0x264>
    2c70:	9dcff0ef          	jal	ra,1e4c <neorv32_uart0_print>
    2c74:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
    2c78:	0a07d463          	bgez	a5,2d20 <__neorv32_rte_debug_exc_handler+0x1d8>
    2c7c:	0017f793          	andi	a5,a5,1
    2c80:	08078a63          	beqz	a5,2d14 <__neorv32_rte_debug_exc_handler+0x1cc>
    2c84:	00004537          	lui	a0,0x4
    2c88:	5b050513          	addi	a0,a0,1456 # 45b0 <symbols.0+0x3b4>
    2c8c:	fd5ff06f          	j	2c60 <__neorv32_rte_debug_exc_handler+0x118>
    2c90:	00004537          	lui	a0,0x4
    2c94:	47c50513          	addi	a0,a0,1148 # 447c <symbols.0+0x280>
    2c98:	fc9ff06f          	j	2c60 <__neorv32_rte_debug_exc_handler+0x118>
    2c9c:	00004537          	lui	a0,0x4
    2ca0:	49050513          	addi	a0,a0,1168 # 4490 <symbols.0+0x294>
    2ca4:	fbdff06f          	j	2c60 <__neorv32_rte_debug_exc_handler+0x118>
    2ca8:	00004537          	lui	a0,0x4
    2cac:	49c50513          	addi	a0,a0,1180 # 449c <symbols.0+0x2a0>
    2cb0:	fb1ff06f          	j	2c60 <__neorv32_rte_debug_exc_handler+0x118>
    2cb4:	00004537          	lui	a0,0x4
    2cb8:	4b450513          	addi	a0,a0,1204 # 44b4 <symbols.0+0x2b8>
    2cbc:	fb5ff06f          	j	2c70 <__neorv32_rte_debug_exc_handler+0x128>
    2cc0:	00004537          	lui	a0,0x4
    2cc4:	4c850513          	addi	a0,a0,1224 # 44c8 <symbols.0+0x2cc>
    2cc8:	f99ff06f          	j	2c60 <__neorv32_rte_debug_exc_handler+0x118>
    2ccc:	00004537          	lui	a0,0x4
    2cd0:	4e450513          	addi	a0,a0,1252 # 44e4 <symbols.0+0x2e8>
    2cd4:	f9dff06f          	j	2c70 <__neorv32_rte_debug_exc_handler+0x128>
    2cd8:	00004537          	lui	a0,0x4
    2cdc:	4f850513          	addi	a0,a0,1272 # 44f8 <symbols.0+0x2fc>
    2ce0:	f81ff06f          	j	2c60 <__neorv32_rte_debug_exc_handler+0x118>
    2ce4:	00004537          	lui	a0,0x4
    2ce8:	51850513          	addi	a0,a0,1304 # 4518 <symbols.0+0x31c>
    2cec:	f75ff06f          	j	2c60 <__neorv32_rte_debug_exc_handler+0x118>
    2cf0:	00004537          	lui	a0,0x4
    2cf4:	53850513          	addi	a0,a0,1336 # 4538 <symbols.0+0x33c>
    2cf8:	f69ff06f          	j	2c60 <__neorv32_rte_debug_exc_handler+0x118>
    2cfc:	00004537          	lui	a0,0x4
    2d00:	55450513          	addi	a0,a0,1364 # 4554 <symbols.0+0x358>
    2d04:	f5dff06f          	j	2c60 <__neorv32_rte_debug_exc_handler+0x118>
    2d08:	00004537          	lui	a0,0x4
    2d0c:	56c50513          	addi	a0,a0,1388 # 456c <symbols.0+0x370>
    2d10:	f51ff06f          	j	2c60 <__neorv32_rte_debug_exc_handler+0x118>
    2d14:	00004537          	lui	a0,0x4
    2d18:	5c050513          	addi	a0,a0,1472 # 45c0 <symbols.0+0x3c4>
    2d1c:	f45ff06f          	j	2c60 <__neorv32_rte_debug_exc_handler+0x118>
    2d20:	00004537          	lui	a0,0x4
    2d24:	5d050513          	addi	a0,a0,1488 # 45d0 <symbols.0+0x3d4>
    2d28:	f39ff06f          	j	2c60 <__neorv32_rte_debug_exc_handler+0x118>
    2d2c:	00c12083          	lw	ra,12(sp)
    2d30:	00812403          	lw	s0,8(sp)
    2d34:	00412483          	lw	s1,4(sp)
    2d38:	01010113          	addi	sp,sp,16
    2d3c:	00008067          	ret

00002d40 <neorv32_rte_exception_install>:
    2d40:	01f00793          	li	a5,31
    2d44:	00a7ee63          	bltu	a5,a0,2d60 <neorv32_rte_exception_install+0x20>
    2d48:	89c18793          	addi	a5,gp,-1892 # 8000009c <__neorv32_rte_vector_lut>
    2d4c:	00251513          	slli	a0,a0,0x2
    2d50:	00a78533          	add	a0,a5,a0
    2d54:	00b52023          	sw	a1,0(a0)
    2d58:	00000513          	li	a0,0
    2d5c:	00008067          	ret
    2d60:	00100513          	li	a0,1
    2d64:	00008067          	ret

00002d68 <neorv32_rte_exception_uninstall>:
    2d68:	01f00793          	li	a5,31
    2d6c:	02a7e263          	bltu	a5,a0,2d90 <neorv32_rte_exception_uninstall+0x28>
    2d70:	89c18793          	addi	a5,gp,-1892 # 8000009c <__neorv32_rte_vector_lut>
    2d74:	00251513          	slli	a0,a0,0x2
    2d78:	00a78533          	add	a0,a5,a0
    2d7c:	000037b7          	lui	a5,0x3
    2d80:	b4878793          	addi	a5,a5,-1208 # 2b48 <__neorv32_rte_debug_exc_handler>
    2d84:	00f52023          	sw	a5,0(a0)
    2d88:	00000513          	li	a0,0
    2d8c:	00008067          	ret
    2d90:	00100513          	li	a0,1
    2d94:	00008067          	ret

00002d98 <neorv32_rte_setup>:
    2d98:	ff010113          	addi	sp,sp,-16
    2d9c:	000037b7          	lui	a5,0x3
    2da0:	00112623          	sw	ra,12(sp)
    2da4:	00812423          	sw	s0,8(sp)
    2da8:	00912223          	sw	s1,4(sp)
    2dac:	88078793          	addi	a5,a5,-1920 # 2880 <__neorv32_rte_core>
    2db0:	30579073          	csrw	mtvec,a5
    2db4:	00000413          	li	s0,0
    2db8:	01d00493          	li	s1,29
    2dbc:	00040513          	mv	a0,s0
    2dc0:	00140413          	addi	s0,s0,1
    2dc4:	0ff47413          	andi	s0,s0,255
    2dc8:	fa1ff0ef          	jal	ra,2d68 <neorv32_rte_exception_uninstall>
    2dcc:	fe9418e3          	bne	s0,s1,2dbc <neorv32_rte_setup+0x24>
    2dd0:	00c12083          	lw	ra,12(sp)
    2dd4:	00812403          	lw	s0,8(sp)
    2dd8:	00412483          	lw	s1,4(sp)
    2ddc:	01010113          	addi	sp,sp,16
    2de0:	00008067          	ret

00002de4 <neorv32_rte_print_hw_version>:
    2de4:	fe010113          	addi	sp,sp,-32
    2de8:	00112e23          	sw	ra,28(sp)
    2dec:	00812c23          	sw	s0,24(sp)
    2df0:	00912a23          	sw	s1,20(sp)
    2df4:	01212823          	sw	s2,16(sp)
    2df8:	01312623          	sw	s3,12(sp)
    2dfc:	01412423          	sw	s4,8(sp)
    2e00:	f5dfe0ef          	jal	ra,1d5c <neorv32_uart0_available>
    2e04:	06050663          	beqz	a0,2e70 <neorv32_rte_print_hw_version+0x8c>
    2e08:	00000493          	li	s1,0
    2e0c:	00300a13          	li	s4,3
    2e10:	00400993          	li	s3,4
    2e14:	f13027f3          	csrr	a5,mimpid
    2e18:	40900733          	neg	a4,s1
    2e1c:	00371713          	slli	a4,a4,0x3
    2e20:	01870713          	addi	a4,a4,24
    2e24:	00e7d7b3          	srl	a5,a5,a4
    2e28:	0ff7f793          	andi	a5,a5,255
    2e2c:	0047d513          	srli	a0,a5,0x4
    2e30:	40a00933          	neg	s2,a0
    2e34:	00491913          	slli	s2,s2,0x4
    2e38:	03078793          	addi	a5,a5,48
    2e3c:	0ff97913          	andi	s2,s2,255
    2e40:	0ff7f413          	andi	s0,a5,255
    2e44:	00050663          	beqz	a0,2e50 <neorv32_rte_print_hw_version+0x6c>
    2e48:	03050513          	addi	a0,a0,48
    2e4c:	fcdfe0ef          	jal	ra,1e18 <neorv32_uart0_putc>
    2e50:	01240533          	add	a0,s0,s2
    2e54:	0ff57513          	andi	a0,a0,255
    2e58:	fc1fe0ef          	jal	ra,1e18 <neorv32_uart0_putc>
    2e5c:	01448663          	beq	s1,s4,2e68 <neorv32_rte_print_hw_version+0x84>
    2e60:	02e00513          	li	a0,46
    2e64:	fb5fe0ef          	jal	ra,1e18 <neorv32_uart0_putc>
    2e68:	00148493          	addi	s1,s1,1
    2e6c:	fb3494e3          	bne	s1,s3,2e14 <neorv32_rte_print_hw_version+0x30>
    2e70:	01c12083          	lw	ra,28(sp)
    2e74:	01812403          	lw	s0,24(sp)
    2e78:	01412483          	lw	s1,20(sp)
    2e7c:	01012903          	lw	s2,16(sp)
    2e80:	00c12983          	lw	s3,12(sp)
    2e84:	00812a03          	lw	s4,8(sp)
    2e88:	02010113          	addi	sp,sp,32
    2e8c:	00008067          	ret

00002e90 <neorv32_rte_print_hw_config>:
    2e90:	fd010113          	addi	sp,sp,-48
    2e94:	02112623          	sw	ra,44(sp)
    2e98:	02812423          	sw	s0,40(sp)
    2e9c:	02912223          	sw	s1,36(sp)
    2ea0:	03212023          	sw	s2,32(sp)
    2ea4:	01312e23          	sw	s3,28(sp)
    2ea8:	eb5fe0ef          	jal	ra,1d5c <neorv32_uart0_available>
    2eac:	5a050863          	beqz	a0,345c <neorv32_rte_print_hw_config+0x5cc>
    2eb0:	00004537          	lui	a0,0x4
    2eb4:	62850513          	addi	a0,a0,1576 # 4628 <symbols.0+0x42c>
    2eb8:	fedfe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    2ebc:	00004537          	lui	a0,0x4
    2ec0:	65450513          	addi	a0,a0,1620 # 4654 <symbols.0+0x458>
    2ec4:	fe1fe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    2ec8:	fe002583          	lw	a1,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
    2ecc:	00004537          	lui	a0,0x4
    2ed0:	66850513          	addi	a0,a0,1640 # 4668 <symbols.0+0x46c>
    2ed4:	fd1fe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    2ed8:	00004537          	lui	a0,0x4
    2edc:	68450513          	addi	a0,a0,1668 # 4684 <symbols.0+0x488>
    2ee0:	fc5fe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    2ee4:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
    2ee8:	000087b7          	lui	a5,0x8
    2eec:	00f57533          	and	a0,a0,a5
    2ef0:	b91ff0ef          	jal	ra,2a80 <__neorv32_rte_print_true_false>
    2ef4:	00004537          	lui	a0,0x4
    2ef8:	69850513          	addi	a0,a0,1688 # 4698 <symbols.0+0x49c>
    2efc:	fa9fe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    2f00:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
    2f04:	000047b7          	lui	a5,0x4
    2f08:	00f57533          	and	a0,a0,a5
    2f0c:	b75ff0ef          	jal	ra,2a80 <__neorv32_rte_print_true_false>
    2f10:	f14025f3          	csrr	a1,mhartid
    2f14:	f1102673          	csrr	a2,mvendorid
    2f18:	00004537          	lui	a0,0x4
    2f1c:	6ac50513          	addi	a0,a0,1708 # 46ac <symbols.0+0x4b0>
    2f20:	f85fe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    2f24:	f1202473          	csrr	s0,marchid
    2f28:	00004537          	lui	a0,0x4
    2f2c:	00040593          	mv	a1,s0
    2f30:	6e050513          	addi	a0,a0,1760 # 46e0 <symbols.0+0x4e4>
    2f34:	f71fe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    2f38:	01300793          	li	a5,19
    2f3c:	00f41863          	bne	s0,a5,2f4c <neorv32_rte_print_hw_config+0xbc>
    2f40:	00004537          	lui	a0,0x4
    2f44:	6f850513          	addi	a0,a0,1784 # 46f8 <symbols.0+0x4fc>
    2f48:	f5dfe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    2f4c:	f13025f3          	csrr	a1,mimpid
    2f50:	00004537          	lui	a0,0x4
    2f54:	70450513          	addi	a0,a0,1796 # 4704 <symbols.0+0x508>
    2f58:	f4dfe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    2f5c:	e89ff0ef          	jal	ra,2de4 <neorv32_rte_print_hw_version>
    2f60:	02900513          	li	a0,41
    2f64:	eb5fe0ef          	jal	ra,1e18 <neorv32_uart0_putc>
    2f68:	00004537          	lui	a0,0x4
    2f6c:	72050513          	addi	a0,a0,1824 # 4720 <symbols.0+0x524>
    2f70:	f35fe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    2f74:	301027f3          	csrr	a5,misa
    2f78:	00100713          	li	a4,1
    2f7c:	01e7d793          	srli	a5,a5,0x1e
    2f80:	44e79663          	bne	a5,a4,33cc <neorv32_rte_print_hw_config+0x53c>
    2f84:	00004537          	lui	a0,0x4
    2f88:	73850513          	addi	a0,a0,1848 # 4738 <symbols.0+0x53c>
    2f8c:	f19fe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    2f90:	00004537          	lui	a0,0x4
    2f94:	74c50513          	addi	a0,a0,1868 # 474c <symbols.0+0x550>
    2f98:	f0dfe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    2f9c:	30102973          	csrr	s2,misa
    2fa0:	00000413          	li	s0,0
    2fa4:	00100993          	li	s3,1
    2fa8:	01a00493          	li	s1,26
    2fac:	008997b3          	sll	a5,s3,s0
    2fb0:	0127f7b3          	and	a5,a5,s2
    2fb4:	00078c63          	beqz	a5,2fcc <neorv32_rte_print_hw_config+0x13c>
    2fb8:	04140513          	addi	a0,s0,65
    2fbc:	0ff57513          	andi	a0,a0,255
    2fc0:	e59fe0ef          	jal	ra,1e18 <neorv32_uart0_putc>
    2fc4:	02000513          	li	a0,32
    2fc8:	e51fe0ef          	jal	ra,1e18 <neorv32_uart0_putc>
    2fcc:	00140413          	addi	s0,s0,1
    2fd0:	fc941ee3          	bne	s0,s1,2fac <neorv32_rte_print_hw_config+0x11c>
    2fd4:	fe402403          	lw	s0,-28(zero) # ffffffe4 <__ctr0_io_space_begin+0x1e4>
    2fd8:	00147793          	andi	a5,s0,1
    2fdc:	00078863          	beqz	a5,2fec <neorv32_rte_print_hw_config+0x15c>
    2fe0:	00004537          	lui	a0,0x4
    2fe4:	76450513          	addi	a0,a0,1892 # 4764 <symbols.0+0x568>
    2fe8:	ebdfe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    2fec:	08047793          	andi	a5,s0,128
    2ff0:	00078863          	beqz	a5,3000 <neorv32_rte_print_hw_config+0x170>
    2ff4:	00004537          	lui	a0,0x4
    2ff8:	76c50513          	addi	a0,a0,1900 # 476c <symbols.0+0x570>
    2ffc:	ea9fe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    3000:	20047793          	andi	a5,s0,512
    3004:	00078863          	beqz	a5,3014 <neorv32_rte_print_hw_config+0x184>
    3008:	00004537          	lui	a0,0x4
    300c:	77450513          	addi	a0,a0,1908 # 4774 <symbols.0+0x578>
    3010:	e95fe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    3014:	00247793          	andi	a5,s0,2
    3018:	00078863          	beqz	a5,3028 <neorv32_rte_print_hw_config+0x198>
    301c:	00004537          	lui	a0,0x4
    3020:	77c50513          	addi	a0,a0,1916 # 477c <symbols.0+0x580>
    3024:	e81fe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    3028:	00447793          	andi	a5,s0,4
    302c:	00078863          	beqz	a5,303c <neorv32_rte_print_hw_config+0x1ac>
    3030:	00004537          	lui	a0,0x4
    3034:	78850513          	addi	a0,a0,1928 # 4788 <symbols.0+0x58c>
    3038:	e6dfe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    303c:	02047793          	andi	a5,s0,32
    3040:	00078863          	beqz	a5,3050 <neorv32_rte_print_hw_config+0x1c0>
    3044:	00004537          	lui	a0,0x4
    3048:	79050513          	addi	a0,a0,1936 # 4790 <symbols.0+0x594>
    304c:	e59fe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    3050:	04047793          	andi	a5,s0,64
    3054:	00078863          	beqz	a5,3064 <neorv32_rte_print_hw_config+0x1d4>
    3058:	00004537          	lui	a0,0x4
    305c:	79850513          	addi	a0,a0,1944 # 4798 <symbols.0+0x59c>
    3060:	e45fe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    3064:	40047793          	andi	a5,s0,1024
    3068:	00078863          	beqz	a5,3078 <neorv32_rte_print_hw_config+0x1e8>
    306c:	00004537          	lui	a0,0x4
    3070:	7a450513          	addi	a0,a0,1956 # 47a4 <symbols.0+0x5a8>
    3074:	e31fe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    3078:	400007b7          	lui	a5,0x40000
    307c:	00f477b3          	and	a5,s0,a5
    3080:	00078863          	beqz	a5,3090 <neorv32_rte_print_hw_config+0x200>
    3084:	00004537          	lui	a0,0x4
    3088:	7ac50513          	addi	a0,a0,1964 # 47ac <symbols.0+0x5b0>
    308c:	e19fe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    3090:	00045863          	bgez	s0,30a0 <neorv32_rte_print_hw_config+0x210>
    3094:	00004537          	lui	a0,0x4
    3098:	7b850513          	addi	a0,a0,1976 # 47b8 <symbols.0+0x5bc>
    309c:	e09fe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    30a0:	00004537          	lui	a0,0x4
    30a4:	7c450513          	addi	a0,a0,1988 # 47c4 <symbols.0+0x5c8>
    30a8:	dfdfe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    30ac:	9d8ff0ef          	jal	ra,2284 <neorv32_cpu_pmp_get_num_regions>
    30b0:	00a12223          	sw	a0,4(sp)
    30b4:	32050263          	beqz	a0,33d8 <neorv32_rte_print_hw_config+0x548>
    30b8:	a84ff0ef          	jal	ra,233c <neorv32_cpu_pmp_get_granularity>
    30bc:	00412583          	lw	a1,4(sp)
    30c0:	00050613          	mv	a2,a0
    30c4:	00004537          	lui	a0,0x4
    30c8:	7dc50513          	addi	a0,a0,2012 # 47dc <symbols.0+0x5e0>
    30cc:	dd9fe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    30d0:	00005537          	lui	a0,0x5
    30d4:	81c50513          	addi	a0,a0,-2020 # 481c <symbols.0+0x620>
    30d8:	dcdfe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    30dc:	00005537          	lui	a0,0x5
    30e0:	83c50513          	addi	a0,a0,-1988 # 483c <symbols.0+0x640>
    30e4:	dc1fe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    30e8:	fe802783          	lw	a5,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
    30ec:	0017f793          	andi	a5,a5,1
    30f0:	2e078c63          	beqz	a5,33e8 <neorv32_rte_print_hw_config+0x558>
    30f4:	00005537          	lui	a0,0x5
    30f8:	85850513          	addi	a0,a0,-1960 # 4858 <symbols.0+0x65c>
    30fc:	da9fe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    3100:	ff002583          	lw	a1,-16(zero) # fffffff0 <__ctr0_io_space_begin+0x1f0>
    3104:	00005537          	lui	a0,0x5
    3108:	88050513          	addi	a0,a0,-1920 # 4880 <symbols.0+0x684>
    310c:	d99fe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    3110:	00005537          	lui	a0,0x5
    3114:	89c50513          	addi	a0,a0,-1892 # 489c <symbols.0+0x6a0>
    3118:	d8dfe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    311c:	fe802783          	lw	a5,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
    3120:	0047f793          	andi	a5,a5,4
    3124:	2c078c63          	beqz	a5,33fc <neorv32_rte_print_hw_config+0x56c>
    3128:	ff802583          	lw	a1,-8(zero) # fffffff8 <__ctr0_io_space_begin+0x1f8>
    312c:	00005537          	lui	a0,0x5
    3130:	8b450513          	addi	a0,a0,-1868 # 48b4 <symbols.0+0x6b8>
    3134:	d71fe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    3138:	ff402583          	lw	a1,-12(zero) # fffffff4 <__ctr0_io_space_begin+0x1f4>
    313c:	00005537          	lui	a0,0x5
    3140:	8c450513          	addi	a0,a0,-1852 # 48c4 <symbols.0+0x6c8>
    3144:	d61fe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    3148:	00005537          	lui	a0,0x5
    314c:	8e050513          	addi	a0,a0,-1824 # 48e0 <symbols.0+0x6e4>
    3150:	d55fe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    3154:	fe802783          	lw	a5,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
    3158:	0087f793          	andi	a5,a5,8
    315c:	2a078863          	beqz	a5,340c <neorv32_rte_print_hw_config+0x57c>
    3160:	ffc02583          	lw	a1,-4(zero) # fffffffc <__ctr0_io_space_begin+0x1fc>
    3164:	00005537          	lui	a0,0x5
    3168:	8b450513          	addi	a0,a0,-1868 # 48b4 <symbols.0+0x6b8>
    316c:	d39fe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    3170:	00005537          	lui	a0,0x5
    3174:	8f850513          	addi	a0,a0,-1800 # 48f8 <symbols.0+0x6fc>
    3178:	d2dfe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    317c:	fe802783          	lw	a5,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
    3180:	0207f793          	andi	a5,a5,32
    3184:	2c078063          	beqz	a5,3444 <neorv32_rte_print_hw_config+0x5b4>
    3188:	00005537          	lui	a0,0x5
    318c:	91050513          	addi	a0,a0,-1776 # 4910 <symbols.0+0x714>
    3190:	d15fe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    3194:	fec02703          	lw	a4,-20(zero) # ffffffec <__ctr0_io_space_begin+0x1ec>
    3198:	00f77713          	andi	a4,a4,15
    319c:	00070663          	beqz	a4,31a8 <neorv32_rte_print_hw_config+0x318>
    31a0:	00100793          	li	a5,1
    31a4:	00e79733          	sll	a4,a5,a4
    31a8:	fec02683          	lw	a3,-20(zero) # ffffffec <__ctr0_io_space_begin+0x1ec>
    31ac:	0046d693          	srli	a3,a3,0x4
    31b0:	00f6f693          	andi	a3,a3,15
    31b4:	00068663          	beqz	a3,31c0 <neorv32_rte_print_hw_config+0x330>
    31b8:	00100793          	li	a5,1
    31bc:	00d796b3          	sll	a3,a5,a3
    31c0:	fec02403          	lw	s0,-20(zero) # ffffffec <__ctr0_io_space_begin+0x1ec>
    31c4:	00100493          	li	s1,1
    31c8:	00070593          	mv	a1,a4
    31cc:	00845413          	srli	s0,s0,0x8
    31d0:	00f47413          	andi	s0,s0,15
    31d4:	00849633          	sll	a2,s1,s0
    31d8:	00869533          	sll	a0,a3,s0
    31dc:	00c12623          	sw	a2,12(sp)
    31e0:	00e12423          	sw	a4,8(sp)
    31e4:	00d12223          	sw	a3,4(sp)
    31e8:	4b0000ef          	jal	ra,3698 <__mulsi3>
    31ec:	00812703          	lw	a4,8(sp)
    31f0:	00412683          	lw	a3,4(sp)
    31f4:	00c12603          	lw	a2,12(sp)
    31f8:	00050593          	mv	a1,a0
    31fc:	00005537          	lui	a0,0x5
    3200:	91850513          	addi	a0,a0,-1768 # 4918 <symbols.0+0x71c>
    3204:	ca1fe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    3208:	20041a63          	bnez	s0,341c <neorv32_rte_print_hw_config+0x58c>
    320c:	00005537          	lui	a0,0x5
    3210:	95850513          	addi	a0,a0,-1704 # 4958 <symbols.0+0x75c>
    3214:	c91fe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    3218:	00005537          	lui	a0,0x5
    321c:	98850513          	addi	a0,a0,-1656 # 4988 <symbols.0+0x78c>
    3220:	c85fe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    3224:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
    3228:	00257513          	andi	a0,a0,2
    322c:	855ff0ef          	jal	ra,2a80 <__neorv32_rte_print_true_false>
    3230:	00005537          	lui	a0,0x5
    3234:	9a050513          	addi	a0,a0,-1632 # 49a0 <symbols.0+0x7a4>
    3238:	c6dfe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    323c:	fe802783          	lw	a5,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
    3240:	0107f793          	andi	a5,a5,16
    3244:	20078663          	beqz	a5,3450 <neorv32_rte_print_hw_config+0x5c0>
    3248:	00005537          	lui	a0,0x5
    324c:	9b850513          	addi	a0,a0,-1608 # 49b8 <symbols.0+0x7bc>
    3250:	c55fe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    3254:	00005537          	lui	a0,0x5
    3258:	9c850513          	addi	a0,a0,-1592 # 49c8 <symbols.0+0x7cc>
    325c:	c49fe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    3260:	fe802403          	lw	s0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
    3264:	00010537          	lui	a0,0x10
    3268:	00a47533          	and	a0,s0,a0
    326c:	8a1ff0ef          	jal	ra,2b0c <__neorv32_rte_print_checkbox>
    3270:	00005537          	lui	a0,0x5
    3274:	9e450513          	addi	a0,a0,-1564 # 49e4 <symbols.0+0x7e8>
    3278:	c2dfe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    327c:	00020537          	lui	a0,0x20
    3280:	00a47533          	and	a0,s0,a0
    3284:	889ff0ef          	jal	ra,2b0c <__neorv32_rte_print_checkbox>
    3288:	00005537          	lui	a0,0x5
    328c:	9ec50513          	addi	a0,a0,-1556 # 49ec <symbols.0+0x7f0>
    3290:	c15fe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    3294:	00040537          	lui	a0,0x40
    3298:	00a47533          	and	a0,s0,a0
    329c:	871ff0ef          	jal	ra,2b0c <__neorv32_rte_print_checkbox>
    32a0:	00005537          	lui	a0,0x5
    32a4:	9f450513          	addi	a0,a0,-1548 # 49f4 <symbols.0+0x7f8>
    32a8:	bfdfe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    32ac:	04000537          	lui	a0,0x4000
    32b0:	00a47533          	and	a0,s0,a0
    32b4:	859ff0ef          	jal	ra,2b0c <__neorv32_rte_print_checkbox>
    32b8:	00005537          	lui	a0,0x5
    32bc:	9fc50513          	addi	a0,a0,-1540 # 49fc <symbols.0+0x800>
    32c0:	be5fe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    32c4:	00080537          	lui	a0,0x80
    32c8:	00a47533          	and	a0,s0,a0
    32cc:	841ff0ef          	jal	ra,2b0c <__neorv32_rte_print_checkbox>
    32d0:	00005537          	lui	a0,0x5
    32d4:	a0450513          	addi	a0,a0,-1532 # 4a04 <symbols.0+0x808>
    32d8:	bcdfe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    32dc:	00100537          	lui	a0,0x100
    32e0:	00a47533          	and	a0,s0,a0
    32e4:	829ff0ef          	jal	ra,2b0c <__neorv32_rte_print_checkbox>
    32e8:	00005537          	lui	a0,0x5
    32ec:	a0c50513          	addi	a0,a0,-1524 # 4a0c <symbols.0+0x810>
    32f0:	bb5fe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    32f4:	00200537          	lui	a0,0x200
    32f8:	00a47533          	and	a0,s0,a0
    32fc:	811ff0ef          	jal	ra,2b0c <__neorv32_rte_print_checkbox>
    3300:	00005537          	lui	a0,0x5
    3304:	a1450513          	addi	a0,a0,-1516 # 4a14 <symbols.0+0x818>
    3308:	b9dfe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    330c:	00400537          	lui	a0,0x400
    3310:	00a47533          	and	a0,s0,a0
    3314:	ff8ff0ef          	jal	ra,2b0c <__neorv32_rte_print_checkbox>
    3318:	00005537          	lui	a0,0x5
    331c:	a1c50513          	addi	a0,a0,-1508 # 4a1c <symbols.0+0x820>
    3320:	b85fe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    3324:	01000537          	lui	a0,0x1000
    3328:	00a47533          	and	a0,s0,a0
    332c:	fe0ff0ef          	jal	ra,2b0c <__neorv32_rte_print_checkbox>
    3330:	00005537          	lui	a0,0x5
    3334:	a2450513          	addi	a0,a0,-1500 # 4a24 <symbols.0+0x828>
    3338:	b6dfe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    333c:	00800537          	lui	a0,0x800
    3340:	00a47533          	and	a0,s0,a0
    3344:	fc8ff0ef          	jal	ra,2b0c <__neorv32_rte_print_checkbox>
    3348:	00005537          	lui	a0,0x5
    334c:	a2c50513          	addi	a0,a0,-1492 # 4a2c <symbols.0+0x830>
    3350:	b55fe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    3354:	02000537          	lui	a0,0x2000
    3358:	00a47533          	and	a0,s0,a0
    335c:	fb0ff0ef          	jal	ra,2b0c <__neorv32_rte_print_checkbox>
    3360:	00005537          	lui	a0,0x5
    3364:	a3450513          	addi	a0,a0,-1484 # 4a34 <symbols.0+0x838>
    3368:	b3dfe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    336c:	08000537          	lui	a0,0x8000
    3370:	00a47533          	and	a0,s0,a0
    3374:	f98ff0ef          	jal	ra,2b0c <__neorv32_rte_print_checkbox>
    3378:	00005537          	lui	a0,0x5
    337c:	a3c50513          	addi	a0,a0,-1476 # 4a3c <symbols.0+0x840>
    3380:	b25fe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    3384:	10000537          	lui	a0,0x10000
    3388:	00a47533          	and	a0,s0,a0
    338c:	f80ff0ef          	jal	ra,2b0c <__neorv32_rte_print_checkbox>
    3390:	00005537          	lui	a0,0x5
    3394:	a4850513          	addi	a0,a0,-1464 # 4a48 <symbols.0+0x84c>
    3398:	b0dfe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    339c:	20000537          	lui	a0,0x20000
    33a0:	00a47533          	and	a0,s0,a0
    33a4:	f68ff0ef          	jal	ra,2b0c <__neorv32_rte_print_checkbox>
    33a8:	02812403          	lw	s0,40(sp)
    33ac:	02c12083          	lw	ra,44(sp)
    33b0:	02412483          	lw	s1,36(sp)
    33b4:	02012903          	lw	s2,32(sp)
    33b8:	01c12983          	lw	s3,28(sp)
    33bc:	00005537          	lui	a0,0x5
    33c0:	a5050513          	addi	a0,a0,-1456 # 4a50 <symbols.0+0x854>
    33c4:	03010113          	addi	sp,sp,48
    33c8:	addfe06f          	j	1ea4 <neorv32_uart0_printf>
    33cc:	00004537          	lui	a0,0x4
    33d0:	74450513          	addi	a0,a0,1860 # 4744 <symbols.0+0x548>
    33d4:	bb9ff06f          	j	2f8c <neorv32_rte_print_hw_config+0xfc>
    33d8:	00005537          	lui	a0,0x5
    33dc:	80850513          	addi	a0,a0,-2040 # 4808 <symbols.0+0x60c>
    33e0:	ac5fe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    33e4:	cedff06f          	j	30d0 <neorv32_rte_print_hw_config+0x240>
    33e8:	ff002583          	lw	a1,-16(zero) # fffffff0 <__ctr0_io_space_begin+0x1f0>
    33ec:	00005537          	lui	a0,0x5
    33f0:	86850513          	addi	a0,a0,-1944 # 4868 <symbols.0+0x66c>
    33f4:	ab1fe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    33f8:	d09ff06f          	j	3100 <neorv32_rte_print_hw_config+0x270>
    33fc:	00004537          	lui	a0,0x4
    3400:	43050513          	addi	a0,a0,1072 # 4430 <symbols.0+0x234>
    3404:	aa1fe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    3408:	d31ff06f          	j	3138 <neorv32_rte_print_hw_config+0x2a8>
    340c:	00004537          	lui	a0,0x4
    3410:	43050513          	addi	a0,a0,1072 # 4430 <symbols.0+0x234>
    3414:	a91fe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    3418:	d59ff06f          	j	3170 <neorv32_rte_print_hw_config+0x2e0>
    341c:	fec02783          	lw	a5,-20(zero) # ffffffec <__ctr0_io_space_begin+0x1ec>
    3420:	00c7d793          	srli	a5,a5,0xc
    3424:	00f7f793          	andi	a5,a5,15
    3428:	00979863          	bne	a5,s1,3438 <neorv32_rte_print_hw_config+0x5a8>
    342c:	00005537          	lui	a0,0x5
    3430:	96c50513          	addi	a0,a0,-1684 # 496c <symbols.0+0x770>
    3434:	de1ff06f          	j	3214 <neorv32_rte_print_hw_config+0x384>
    3438:	00004537          	lui	a0,0x4
    343c:	19450513          	addi	a0,a0,404 # 4194 <__etext+0x8fc>
    3440:	dd5ff06f          	j	3214 <neorv32_rte_print_hw_config+0x384>
    3444:	00004537          	lui	a0,0x4
    3448:	43050513          	addi	a0,a0,1072 # 4430 <symbols.0+0x234>
    344c:	dc9ff06f          	j	3214 <neorv32_rte_print_hw_config+0x384>
    3450:	00005537          	lui	a0,0x5
    3454:	9c050513          	addi	a0,a0,-1600 # 49c0 <symbols.0+0x7c4>
    3458:	df9ff06f          	j	3250 <neorv32_rte_print_hw_config+0x3c0>
    345c:	02c12083          	lw	ra,44(sp)
    3460:	02812403          	lw	s0,40(sp)
    3464:	02412483          	lw	s1,36(sp)
    3468:	02012903          	lw	s2,32(sp)
    346c:	01c12983          	lw	s3,28(sp)
    3470:	03010113          	addi	sp,sp,48
    3474:	00008067          	ret

00003478 <neorv32_rte_print_credits>:
    3478:	ff010113          	addi	sp,sp,-16
    347c:	00112623          	sw	ra,12(sp)
    3480:	8ddfe0ef          	jal	ra,1d5c <neorv32_uart0_available>
    3484:	00050c63          	beqz	a0,349c <neorv32_rte_print_credits+0x24>
    3488:	00c12083          	lw	ra,12(sp)
    348c:	00005537          	lui	a0,0x5
    3490:	a5850513          	addi	a0,a0,-1448 # 4a58 <symbols.0+0x85c>
    3494:	01010113          	addi	sp,sp,16
    3498:	9b5fe06f          	j	1e4c <neorv32_uart0_print>
    349c:	00c12083          	lw	ra,12(sp)
    34a0:	01010113          	addi	sp,sp,16
    34a4:	00008067          	ret

000034a8 <neorv32_rte_print_logo>:
    34a8:	f2010113          	addi	sp,sp,-224
    34ac:	000055b7          	lui	a1,0x5
    34b0:	0b000613          	li	a2,176
    34b4:	b5458593          	addi	a1,a1,-1196 # 4b54 <symbols.0+0x958>
    34b8:	00010513          	mv	a0,sp
    34bc:	0c112e23          	sw	ra,220(sp)
    34c0:	0c812c23          	sw	s0,216(sp)
    34c4:	0c912a23          	sw	s1,212(sp)
    34c8:	0d212823          	sw	s2,208(sp)
    34cc:	0d312623          	sw	s3,204(sp)
    34d0:	0d412423          	sw	s4,200(sp)
    34d4:	0d512223          	sw	s5,196(sp)
    34d8:	0d612023          	sw	s6,192(sp)
    34dc:	0b712e23          	sw	s7,188(sp)
    34e0:	290000ef          	jal	ra,3770 <memcpy>
    34e4:	879fe0ef          	jal	ra,1d5c <neorv32_uart0_available>
    34e8:	08050863          	beqz	a0,3578 <neorv32_rte_print_logo+0xd0>
    34ec:	00004ab7          	lui	s5,0x4
    34f0:	00010413          	mv	s0,sp
    34f4:	000a8b13          	mv	s6,s5
    34f8:	00400b93          	li	s7,4
    34fc:	194a8513          	addi	a0,s5,404 # 4194 <__etext+0x8fc>
    3500:	94dfe0ef          	jal	ra,1e4c <neorv32_uart0_print>
    3504:	00040913          	mv	s2,s0
    3508:	00000493          	li	s1,0
    350c:	00092a03          	lw	s4,0(s2)
    3510:	02000993          	li	s3,32
    3514:	02300513          	li	a0,35
    3518:	000a4463          	bltz	s4,3520 <neorv32_rte_print_logo+0x78>
    351c:	02000513          	li	a0,32
    3520:	fff98993          	addi	s3,s3,-1
    3524:	8f5fe0ef          	jal	ra,1e18 <neorv32_uart0_putc>
    3528:	001a1a13          	slli	s4,s4,0x1
    352c:	fe0994e3          	bnez	s3,3514 <neorv32_rte_print_logo+0x6c>
    3530:	00148493          	addi	s1,s1,1
    3534:	00490913          	addi	s2,s2,4
    3538:	fd749ae3          	bne	s1,s7,350c <neorv32_rte_print_logo+0x64>
    353c:	01040413          	addi	s0,s0,16
    3540:	0b010793          	addi	a5,sp,176
    3544:	fa879ce3          	bne	a5,s0,34fc <neorv32_rte_print_logo+0x54>
    3548:	0d812403          	lw	s0,216(sp)
    354c:	0dc12083          	lw	ra,220(sp)
    3550:	0d412483          	lw	s1,212(sp)
    3554:	0d012903          	lw	s2,208(sp)
    3558:	0cc12983          	lw	s3,204(sp)
    355c:	0c812a03          	lw	s4,200(sp)
    3560:	0c412a83          	lw	s5,196(sp)
    3564:	0bc12b83          	lw	s7,188(sp)
    3568:	194b0513          	addi	a0,s6,404
    356c:	0c012b03          	lw	s6,192(sp)
    3570:	0e010113          	addi	sp,sp,224
    3574:	8d9fe06f          	j	1e4c <neorv32_uart0_print>
    3578:	0dc12083          	lw	ra,220(sp)
    357c:	0d812403          	lw	s0,216(sp)
    3580:	0d412483          	lw	s1,212(sp)
    3584:	0d012903          	lw	s2,208(sp)
    3588:	0cc12983          	lw	s3,204(sp)
    358c:	0c812a03          	lw	s4,200(sp)
    3590:	0c412a83          	lw	s5,196(sp)
    3594:	0c012b03          	lw	s6,192(sp)
    3598:	0bc12b83          	lw	s7,188(sp)
    359c:	0e010113          	addi	sp,sp,224
    35a0:	00008067          	ret

000035a4 <neorv32_rte_check_isa>:
    35a4:	30102673          	csrr	a2,misa
    35a8:	400007b7          	lui	a5,0x40000
    35ac:	10078793          	addi	a5,a5,256 # 40000100 <__crt0_copy_data_src_begin+0x3fffb4ec>
    35b0:	00f67733          	and	a4,a2,a5
    35b4:	04f70463          	beq	a4,a5,35fc <neorv32_rte_check_isa+0x58>
    35b8:	fe010113          	addi	sp,sp,-32
    35bc:	00112e23          	sw	ra,28(sp)
    35c0:	02051463          	bnez	a0,35e8 <neorv32_rte_check_isa+0x44>
    35c4:	400005b7          	lui	a1,0x40000
    35c8:	00005537          	lui	a0,0x5
    35cc:	10058593          	addi	a1,a1,256 # 40000100 <__crt0_copy_data_src_begin+0x3fffb4ec>
    35d0:	acc50513          	addi	a0,a0,-1332 # 4acc <symbols.0+0x8d0>
    35d4:	8d1fe0ef          	jal	ra,1ea4 <neorv32_uart0_printf>
    35d8:	01c12083          	lw	ra,28(sp)
    35dc:	00100513          	li	a0,1
    35e0:	02010113          	addi	sp,sp,32
    35e4:	00008067          	ret
    35e8:	00c12623          	sw	a2,12(sp)
    35ec:	f70fe0ef          	jal	ra,1d5c <neorv32_uart0_available>
    35f0:	00c12603          	lw	a2,12(sp)
    35f4:	fc0508e3          	beqz	a0,35c4 <neorv32_rte_check_isa+0x20>
    35f8:	fe1ff06f          	j	35d8 <neorv32_rte_check_isa+0x34>
    35fc:	00000513          	li	a0,0
    3600:	00008067          	ret

00003604 <neorv32_spi_available>:
    3604:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
    3608:	01355513          	srli	a0,a0,0x13
    360c:	00157513          	andi	a0,a0,1
    3610:	00008067          	ret

00003614 <neorv32_spi_setup>:
    3614:	00757513          	andi	a0,a0,7
    3618:	0036f793          	andi	a5,a3,3
    361c:	00167613          	andi	a2,a2,1
    3620:	00a51513          	slli	a0,a0,0xa
    3624:	00d79793          	slli	a5,a5,0xd
    3628:	0015f593          	andi	a1,a1,1
    362c:	00f567b3          	or	a5,a0,a5
    3630:	00f61613          	slli	a2,a2,0xf
    3634:	00c7e7b3          	or	a5,a5,a2
    3638:	00959593          	slli	a1,a1,0x9
    363c:	fa800713          	li	a4,-88
    3640:	00b7e7b3          	or	a5,a5,a1
    3644:	00072023          	sw	zero,0(a4)
    3648:	1007e793          	ori	a5,a5,256
    364c:	00f72023          	sw	a5,0(a4)
    3650:	00008067          	ret

00003654 <neorv32_spi_disable>:
    3654:	fa800713          	li	a4,-88
    3658:	00072783          	lw	a5,0(a4)
    365c:	eff7f793          	andi	a5,a5,-257
    3660:	00f72023          	sw	a5,0(a4)
    3664:	00008067          	ret

00003668 <neorv32_spi_trans>:
    3668:	faa02623          	sw	a0,-84(zero) # ffffffac <__ctr0_io_space_begin+0x1ac>
    366c:	fa802783          	lw	a5,-88(zero) # ffffffa8 <__ctr0_io_space_begin+0x1a8>
    3670:	fe07cee3          	bltz	a5,366c <neorv32_spi_trans+0x4>
    3674:	fac02503          	lw	a0,-84(zero) # ffffffac <__ctr0_io_space_begin+0x1ac>
    3678:	00008067          	ret

0000367c <neorv32_spi_busy>:
    367c:	fa802503          	lw	a0,-88(zero) # ffffffa8 <__ctr0_io_space_begin+0x1a8>
    3680:	01f55513          	srli	a0,a0,0x1f
    3684:	00008067          	ret

00003688 <neorv32_gpio_port_set>:
    3688:	fc000793          	li	a5,-64
    368c:	00a7a423          	sw	a0,8(a5)
    3690:	00b7a623          	sw	a1,12(a5)
    3694:	00008067          	ret

00003698 <__mulsi3>:
    3698:	00050613          	mv	a2,a0
    369c:	00000513          	li	a0,0
    36a0:	0015f693          	andi	a3,a1,1
    36a4:	00068463          	beqz	a3,36ac <__mulsi3+0x14>
    36a8:	00c50533          	add	a0,a0,a2
    36ac:	0015d593          	srli	a1,a1,0x1
    36b0:	00161613          	slli	a2,a2,0x1
    36b4:	fe0596e3          	bnez	a1,36a0 <__mulsi3+0x8>
    36b8:	00008067          	ret

000036bc <__divsi3>:
    36bc:	06054063          	bltz	a0,371c <__umodsi3+0x10>
    36c0:	0605c663          	bltz	a1,372c <__umodsi3+0x20>

000036c4 <__udivsi3>:
    36c4:	00058613          	mv	a2,a1
    36c8:	00050593          	mv	a1,a0
    36cc:	fff00513          	li	a0,-1
    36d0:	02060c63          	beqz	a2,3708 <__udivsi3+0x44>
    36d4:	00100693          	li	a3,1
    36d8:	00b67a63          	bgeu	a2,a1,36ec <__udivsi3+0x28>
    36dc:	00c05863          	blez	a2,36ec <__udivsi3+0x28>
    36e0:	00161613          	slli	a2,a2,0x1
    36e4:	00169693          	slli	a3,a3,0x1
    36e8:	feb66ae3          	bltu	a2,a1,36dc <__udivsi3+0x18>
    36ec:	00000513          	li	a0,0
    36f0:	00c5e663          	bltu	a1,a2,36fc <__udivsi3+0x38>
    36f4:	40c585b3          	sub	a1,a1,a2
    36f8:	00d56533          	or	a0,a0,a3
    36fc:	0016d693          	srli	a3,a3,0x1
    3700:	00165613          	srli	a2,a2,0x1
    3704:	fe0696e3          	bnez	a3,36f0 <__udivsi3+0x2c>
    3708:	00008067          	ret

0000370c <__umodsi3>:
    370c:	00008293          	mv	t0,ra
    3710:	fb5ff0ef          	jal	ra,36c4 <__udivsi3>
    3714:	00058513          	mv	a0,a1
    3718:	00028067          	jr	t0
    371c:	40a00533          	neg	a0,a0
    3720:	00b04863          	bgtz	a1,3730 <__umodsi3+0x24>
    3724:	40b005b3          	neg	a1,a1
    3728:	f9dff06f          	j	36c4 <__udivsi3>
    372c:	40b005b3          	neg	a1,a1
    3730:	00008293          	mv	t0,ra
    3734:	f91ff0ef          	jal	ra,36c4 <__udivsi3>
    3738:	40a00533          	neg	a0,a0
    373c:	00028067          	jr	t0

00003740 <__modsi3>:
    3740:	00008293          	mv	t0,ra
    3744:	0005ca63          	bltz	a1,3758 <__modsi3+0x18>
    3748:	00054c63          	bltz	a0,3760 <__modsi3+0x20>
    374c:	f79ff0ef          	jal	ra,36c4 <__udivsi3>
    3750:	00058513          	mv	a0,a1
    3754:	00028067          	jr	t0
    3758:	40b005b3          	neg	a1,a1
    375c:	fe0558e3          	bgez	a0,374c <__modsi3+0xc>
    3760:	40a00533          	neg	a0,a0
    3764:	f61ff0ef          	jal	ra,36c4 <__udivsi3>
    3768:	40b00533          	neg	a0,a1
    376c:	00028067          	jr	t0

00003770 <memcpy>:
    3770:	00a5c7b3          	xor	a5,a1,a0
    3774:	0037f793          	andi	a5,a5,3
    3778:	00c508b3          	add	a7,a0,a2
    377c:	06079663          	bnez	a5,37e8 <memcpy+0x78>
    3780:	00300793          	li	a5,3
    3784:	06c7f263          	bgeu	a5,a2,37e8 <memcpy+0x78>
    3788:	00357793          	andi	a5,a0,3
    378c:	00050713          	mv	a4,a0
    3790:	0c079a63          	bnez	a5,3864 <memcpy+0xf4>
    3794:	ffc8f613          	andi	a2,a7,-4
    3798:	40e606b3          	sub	a3,a2,a4
    379c:	02000793          	li	a5,32
    37a0:	02000293          	li	t0,32
    37a4:	06d7c263          	blt	a5,a3,3808 <memcpy+0x98>
    37a8:	00058693          	mv	a3,a1
    37ac:	00070793          	mv	a5,a4
    37b0:	02c77863          	bgeu	a4,a2,37e0 <memcpy+0x70>
    37b4:	0006a803          	lw	a6,0(a3)
    37b8:	00478793          	addi	a5,a5,4
    37bc:	00468693          	addi	a3,a3,4
    37c0:	ff07ae23          	sw	a6,-4(a5)
    37c4:	fec7e8e3          	bltu	a5,a2,37b4 <memcpy+0x44>
    37c8:	fff60793          	addi	a5,a2,-1
    37cc:	40e787b3          	sub	a5,a5,a4
    37d0:	ffc7f793          	andi	a5,a5,-4
    37d4:	00478793          	addi	a5,a5,4
    37d8:	00f70733          	add	a4,a4,a5
    37dc:	00f585b3          	add	a1,a1,a5
    37e0:	01176863          	bltu	a4,a7,37f0 <memcpy+0x80>
    37e4:	00008067          	ret
    37e8:	00050713          	mv	a4,a0
    37ec:	ff157ce3          	bgeu	a0,a7,37e4 <memcpy+0x74>
    37f0:	0005c783          	lbu	a5,0(a1)
    37f4:	00170713          	addi	a4,a4,1
    37f8:	00158593          	addi	a1,a1,1
    37fc:	fef70fa3          	sb	a5,-1(a4)
    3800:	ff1768e3          	bltu	a4,a7,37f0 <memcpy+0x80>
    3804:	00008067          	ret
    3808:	0045a683          	lw	a3,4(a1)
    380c:	01c5a783          	lw	a5,28(a1)
    3810:	0005af83          	lw	t6,0(a1)
    3814:	0085af03          	lw	t5,8(a1)
    3818:	00c5ae83          	lw	t4,12(a1)
    381c:	0105ae03          	lw	t3,16(a1)
    3820:	0145a303          	lw	t1,20(a1)
    3824:	0185a803          	lw	a6,24(a1)
    3828:	00d72223          	sw	a3,4(a4)
    382c:	0205a683          	lw	a3,32(a1)
    3830:	01f72023          	sw	t6,0(a4)
    3834:	01e72423          	sw	t5,8(a4)
    3838:	01d72623          	sw	t4,12(a4)
    383c:	01c72823          	sw	t3,16(a4)
    3840:	00672a23          	sw	t1,20(a4)
    3844:	01072c23          	sw	a6,24(a4)
    3848:	00f72e23          	sw	a5,28(a4)
    384c:	02470713          	addi	a4,a4,36
    3850:	40e607b3          	sub	a5,a2,a4
    3854:	fed72e23          	sw	a3,-4(a4)
    3858:	02458593          	addi	a1,a1,36
    385c:	faf2c6e3          	blt	t0,a5,3808 <memcpy+0x98>
    3860:	f49ff06f          	j	37a8 <memcpy+0x38>
    3864:	0005c683          	lbu	a3,0(a1)
    3868:	00170713          	addi	a4,a4,1
    386c:	00377793          	andi	a5,a4,3
    3870:	fed70fa3          	sb	a3,-1(a4)
    3874:	00158593          	addi	a1,a1,1
    3878:	f0078ee3          	beqz	a5,3794 <memcpy+0x24>
    387c:	0005c683          	lbu	a3,0(a1)
    3880:	00170713          	addi	a4,a4,1
    3884:	00377793          	andi	a5,a4,3
    3888:	fed70fa3          	sb	a3,-1(a4)
    388c:	00158593          	addi	a1,a1,1
    3890:	fc079ae3          	bnez	a5,3864 <memcpy+0xf4>
    3894:	f01ff06f          	j	3794 <memcpy+0x24>
