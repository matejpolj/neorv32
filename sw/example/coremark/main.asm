
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
      18:	11c50513          	addi	a0,a0,284 # 130 <__crt0_dummy_trap_handler>
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
      c0:	81018593          	addi	a1,gp,-2032 # 80000010 <num_hpm_cnts_global>
      c4:	07418613          	addi	a2,gp,116 # 80000874 <__BSS_END__>

000000c8 <__crt0_clear_bss_loop>:
      c8:	00c5d863          	bge	a1,a2,d8 <__crt0_clear_bss_loop_end>
      cc:	00058023          	sb	zero,0(a1)
      d0:	00158593          	addi	a1,a1,1
      d4:	ff5ff06f          	j	c8 <__crt0_clear_bss_loop>

000000d8 <__crt0_clear_bss_loop_end>:
      d8:	00005597          	auipc	a1,0x5
      dc:	c3458593          	addi	a1,a1,-972 # 4d0c <__crt0_copy_data_src_begin>
      e0:	80000617          	auipc	a2,0x80000
      e4:	f2060613          	addi	a2,a2,-224 # 80000000 <__ctr0_io_space_begin+0x80000200>
      e8:	80000697          	auipc	a3,0x80000
      ec:	f2468693          	addi	a3,a3,-220 # 8000000c <__ctr0_io_space_begin+0x8000020c>

000000f0 <__crt0_copy_data_loop>:
      f0:	00d65c63          	bge	a2,a3,108 <__crt0_copy_data_loop_end>
      f4:	00058703          	lb	a4,0(a1)
      f8:	00e60023          	sb	a4,0(a2)
      fc:	00158593          	addi	a1,a1,1
     100:	00160613          	addi	a2,a2,1
     104:	fedff06f          	j	f0 <__crt0_copy_data_loop>

00000108 <__crt0_copy_data_loop_end>:
     108:	00000513          	li	a0,0
     10c:	00000593          	li	a1,0
     110:	06c000ef          	jal	ra,17c <main>

00000114 <__crt0_main_aftermath>:
     114:	34051073          	csrw	mscratch,a0
     118:	00000093          	li	ra,0
     11c:	00008463          	beqz	ra,124 <__crt0_main_aftermath_end>
     120:	000080e7          	jalr	ra

00000124 <__crt0_main_aftermath_end>:
     124:	30047073          	csrci	mstatus,8

00000128 <__crt0_main_aftermath_end_loop>:
     128:	10500073          	wfi
     12c:	ffdff06f          	j	128 <__crt0_main_aftermath_end_loop>

00000130 <__crt0_dummy_trap_handler>:
     130:	ff810113          	addi	sp,sp,-8
     134:	00812023          	sw	s0,0(sp)
     138:	00912223          	sw	s1,4(sp)
     13c:	34202473          	csrr	s0,mcause
     140:	02044663          	bltz	s0,16c <__crt0_dummy_trap_handler_irq>
     144:	34102473          	csrr	s0,mepc

00000148 <__crt0_dummy_trap_handler_exc_c_check>:
     148:	00041483          	lh	s1,0(s0)
     14c:	0034f493          	andi	s1,s1,3
     150:	00240413          	addi	s0,s0,2
     154:	34141073          	csrw	mepc,s0
     158:	00300413          	li	s0,3
     15c:	00941863          	bne	s0,s1,16c <__crt0_dummy_trap_handler_irq>

00000160 <__crt0_dummy_trap_handler_exc_uncrompressed>:
     160:	34102473          	csrr	s0,mepc
     164:	00240413          	addi	s0,s0,2
     168:	34141073          	csrw	mepc,s0

0000016c <__crt0_dummy_trap_handler_irq>:
     16c:	00012403          	lw	s0,0(sp)
     170:	00412483          	lw	s1,4(sp)
     174:	00810113          	addi	sp,sp,8
     178:	30200073          	mret

0000017c <main>:
     17c:	f6010113          	addi	sp,sp,-160
     180:	00058613          	mv	a2,a1
     184:	00a12623          	sw	a0,12(sp)
     188:	00c10593          	addi	a1,sp,12
     18c:	05e10513          	addi	a0,sp,94
     190:	08112e23          	sw	ra,156(sp)
     194:	08812c23          	sw	s0,152(sp)
     198:	08912a23          	sw	s1,148(sp)
     19c:	09212823          	sw	s2,144(sp)
     1a0:	09312623          	sw	s3,140(sp)
     1a4:	09412423          	sw	s4,136(sp)
     1a8:	09512223          	sw	s5,132(sp)
     1ac:	09612023          	sw	s6,128(sp)
     1b0:	07712e23          	sw	s7,124(sp)
     1b4:	07812c23          	sw	s8,120(sp)
     1b8:	07912a23          	sw	s9,116(sp)
     1bc:	07a12823          	sw	s10,112(sp)
     1c0:	07b12623          	sw	s11,108(sp)
     1c4:	635010ef          	jal	ra,1ff8 <portable_init>
     1c8:	00100513          	li	a0,1
     1cc:	6f4000ef          	jal	ra,8c0 <get_seed_32>
     1d0:	00a11e23          	sh	a0,28(sp)
     1d4:	00200513          	li	a0,2
     1d8:	6e8000ef          	jal	ra,8c0 <get_seed_32>
     1dc:	00a11f23          	sh	a0,30(sp)
     1e0:	00300513          	li	a0,3
     1e4:	6dc000ef          	jal	ra,8c0 <get_seed_32>
     1e8:	02a11023          	sh	a0,32(sp)
     1ec:	00400513          	li	a0,4
     1f0:	6d0000ef          	jal	ra,8c0 <get_seed_32>
     1f4:	02a12c23          	sw	a0,56(sp)
     1f8:	00500513          	li	a0,5
     1fc:	6c4000ef          	jal	ra,8c0 <get_seed_32>
     200:	3c050063          	beqz	a0,5c0 <main+0x444>
     204:	02a12e23          	sw	a0,60(sp)
     208:	01c12783          	lw	a5,28(sp)
     20c:	00079a63          	bnez	a5,220 <main+0xa4>
     210:	02011703          	lh	a4,32(sp)
     214:	02071863          	bnez	a4,244 <main+0xc8>
     218:	06600713          	li	a4,102
     21c:	02e11023          	sh	a4,32(sp)
     220:	00100713          	li	a4,1
     224:	02e79063          	bne	a5,a4,244 <main+0xc8>
     228:	02011783          	lh	a5,32(sp)
     22c:	00079c63          	bnez	a5,244 <main+0xc8>
     230:	341537b7          	lui	a5,0x34153
     234:	41578793          	addi	a5,a5,1045 # 34153415 <__crt0_copy_data_src_begin+0x3414e709>
     238:	00f12e23          	sw	a5,28(sp)
     23c:	06600793          	li	a5,102
     240:	02f11023          	sh	a5,32(sp)
     244:	03c12483          	lw	s1,60(sp)
     248:	83018793          	addi	a5,gp,-2000 # 80000030 <static_memblk>
     24c:	02f12223          	sw	a5,36(sp)
     250:	0014fb93          	andi	s7,s1,1
     254:	04011e23          	sh	zero,92(sp)
     258:	0024f793          	andi	a5,s1,2
     25c:	000b8593          	mv	a1,s7
     260:	83018b13          	addi	s6,gp,-2000 # 80000030 <static_memblk>
     264:	00078463          	beqz	a5,26c <main+0xf0>
     268:	001b8593          	addi	a1,s7,1
     26c:	0044f793          	andi	a5,s1,4
     270:	00078863          	beqz	a5,280 <main+0x104>
     274:	00158593          	addi	a1,a1,1
     278:	01059593          	slli	a1,a1,0x10
     27c:	0105d593          	srli	a1,a1,0x10
     280:	7d000513          	li	a0,2000
     284:	255030ef          	jal	ra,3cd8 <__udivsi3>
     288:	01c10a13          	addi	s4,sp,28
     28c:	00050413          	mv	s0,a0
     290:	02a12a23          	sw	a0,52(sp)
     294:	00000993          	li	s3,0
     298:	00000913          	li	s2,0
     29c:	000a0a93          	mv	s5,s4
     2a0:	00100c93          	li	s9,1
     2a4:	00300c13          	li	s8,3
     2a8:	013c97b3          	sll	a5,s9,s3
     2ac:	0097f7b3          	and	a5,a5,s1
     2b0:	02078263          	beqz	a5,2d4 <main+0x158>
     2b4:	00090513          	mv	a0,s2
     2b8:	00040593          	mv	a1,s0
     2bc:	1f1030ef          	jal	ra,3cac <__mulsi3>
     2c0:	00190913          	addi	s2,s2,1
     2c4:	00ab0533          	add	a0,s6,a0
     2c8:	01091913          	slli	s2,s2,0x10
     2cc:	00aa2623          	sw	a0,12(s4)
     2d0:	01095913          	srli	s2,s2,0x10
     2d4:	00198993          	addi	s3,s3,1
     2d8:	004a0a13          	addi	s4,s4,4
     2dc:	fd8996e3          	bne	s3,s8,2a8 <main+0x12c>
     2e0:	000b8c63          	beqz	s7,2f8 <main+0x17c>
     2e4:	01c11603          	lh	a2,28(sp)
     2e8:	02812583          	lw	a1,40(sp)
     2ec:	00040513          	mv	a0,s0
     2f0:	2e9010ef          	jal	ra,1dd8 <core_list_init>
     2f4:	04a12023          	sw	a0,64(sp)
     2f8:	03c12783          	lw	a5,60(sp)
     2fc:	0027f793          	andi	a5,a5,2
     300:	02078263          	beqz	a5,324 <main+0x1a8>
     304:	01e11783          	lh	a5,30(sp)
     308:	01c11603          	lh	a2,28(sp)
     30c:	02c12583          	lw	a1,44(sp)
     310:	03412503          	lw	a0,52(sp)
     314:	01079793          	slli	a5,a5,0x10
     318:	04410693          	addi	a3,sp,68
     31c:	00c7e633          	or	a2,a5,a2
     320:	0b4020ef          	jal	ra,23d4 <core_init_matrix>
     324:	03c12783          	lw	a5,60(sp)
     328:	0047f793          	andi	a5,a5,4
     32c:	00078a63          	beqz	a5,340 <main+0x1c4>
     330:	03012603          	lw	a2,48(sp)
     334:	01c11583          	lh	a1,28(sp)
     338:	03412503          	lw	a0,52(sp)
     33c:	074010ef          	jal	ra,13b0 <core_init_state>
     340:	03812783          	lw	a5,56(sp)
     344:	04079c63          	bnez	a5,39c <main+0x220>
     348:	00100793          	li	a5,1
     34c:	02f12c23          	sw	a5,56(sp)
     350:	03812703          	lw	a4,56(sp)
     354:	00271793          	slli	a5,a4,0x2
     358:	00e787b3          	add	a5,a5,a4
     35c:	00179793          	slli	a5,a5,0x1
     360:	02f12c23          	sw	a5,56(sp)
     364:	3f9010ef          	jal	ra,1f5c <start_time>
     368:	000a8513          	mv	a0,s5
     36c:	7e1010ef          	jal	ra,234c <iterate>
     370:	415010ef          	jal	ra,1f84 <stop_time>
     374:	439010ef          	jal	ra,1fac <get_time>
     378:	461010ef          	jal	ra,1fd8 <time_in_secs>
     37c:	00050593          	mv	a1,a0
     380:	fc0508e3          	beqz	a0,350 <main+0x1d4>
     384:	00a00513          	li	a0,10
     388:	151030ef          	jal	ra,3cd8 <__udivsi3>
     38c:	00150593          	addi	a1,a0,1
     390:	03812503          	lw	a0,56(sp)
     394:	119030ef          	jal	ra,3cac <__mulsi3>
     398:	02a12c23          	sw	a0,56(sp)
     39c:	3c1010ef          	jal	ra,1f5c <start_time>
     3a0:	000a8513          	mv	a0,s5
     3a4:	7a9010ef          	jal	ra,234c <iterate>
     3a8:	3dd010ef          	jal	ra,1f84 <stop_time>
     3ac:	401010ef          	jal	ra,1fac <get_time>
     3b0:	00050a93          	mv	s5,a0
     3b4:	01c11503          	lh	a0,28(sp)
     3b8:	00058b13          	mv	s6,a1
     3bc:	00000593          	li	a1,0
     3c0:	610000ef          	jal	ra,9d0 <crc16>
     3c4:	00050593          	mv	a1,a0
     3c8:	01e11503          	lh	a0,30(sp)
     3cc:	80000a37          	lui	s4,0x80000
     3d0:	600000ef          	jal	ra,9d0 <crc16>
     3d4:	00050593          	mv	a1,a0
     3d8:	02011503          	lh	a0,32(sp)
     3dc:	5f4000ef          	jal	ra,9d0 <crc16>
     3e0:	00050593          	mv	a1,a0
     3e4:	03411503          	lh	a0,52(sp)
     3e8:	5e8000ef          	jal	ra,9d0 <crc16>
     3ec:	000087b7          	lui	a5,0x8
     3f0:	b0578793          	addi	a5,a5,-1275 # 7b05 <__crt0_copy_data_src_begin+0x2df9>
     3f4:	00050913          	mv	s2,a0
     3f8:	22f50e63          	beq	a0,a5,634 <main+0x4b8>
     3fc:	1ca7e863          	bltu	a5,a0,5cc <main+0x450>
     400:	000027b7          	lui	a5,0x2
     404:	8f278793          	addi	a5,a5,-1806 # 18f2 <calc_func+0x92>
     408:	24f50a63          	beq	a0,a5,65c <main+0x4e0>
     40c:	000057b7          	lui	a5,0x5
     410:	eaf78793          	addi	a5,a5,-337 # 4eaf <__crt0_copy_data_src_begin+0x1a3>
     414:	22f50a63          	beq	a0,a5,648 <main+0x4cc>
     418:	fff00b93          	li	s7,-1
     41c:	5c0000ef          	jal	ra,9dc <check_data_types>
     420:	03412583          	lw	a1,52(sp)
     424:	01750433          	add	s0,a0,s7
     428:	00004537          	lui	a0,0x4
     42c:	61850513          	addi	a0,a0,1560 # 4618 <scipat+0x4c4>
     430:	085000ef          	jal	ra,cb4 <ee_printf>
     434:	00004537          	lui	a0,0x4
     438:	000a8593          	mv	a1,s5
     43c:	63050513          	addi	a0,a0,1584 # 4630 <scipat+0x4dc>
     440:	075000ef          	jal	ra,cb4 <ee_printf>
     444:	000b0593          	mv	a1,s6
     448:	000a8513          	mv	a0,s5
     44c:	38d010ef          	jal	ra,1fd8 <time_in_secs>
     450:	00050593          	mv	a1,a0
     454:	00004537          	lui	a0,0x4
     458:	64850513          	addi	a0,a0,1608 # 4648 <scipat+0x4f4>
     45c:	059000ef          	jal	ra,cb4 <ee_printf>
     460:	01041413          	slli	s0,s0,0x10
     464:	000a8513          	mv	a0,s5
     468:	000b0593          	mv	a1,s6
     46c:	01045413          	srli	s0,s0,0x10
     470:	369010ef          	jal	ra,1fd8 <time_in_secs>
     474:	02050e63          	beqz	a0,4b0 <main+0x334>
     478:	000a2583          	lw	a1,0(s4) # 80000000 <__ctr0_io_space_begin+0x80000200>
     47c:	03812503          	lw	a0,56(sp)
     480:	02d030ef          	jal	ra,3cac <__mulsi3>
     484:	00050493          	mv	s1,a0
     488:	000b0593          	mv	a1,s6
     48c:	000a8513          	mv	a0,s5
     490:	349010ef          	jal	ra,1fd8 <time_in_secs>
     494:	00050593          	mv	a1,a0
     498:	00048513          	mv	a0,s1
     49c:	03d030ef          	jal	ra,3cd8 <__udivsi3>
     4a0:	00050593          	mv	a1,a0
     4a4:	00004537          	lui	a0,0x4
     4a8:	66050513          	addi	a0,a0,1632 # 4660 <scipat+0x50c>
     4ac:	009000ef          	jal	ra,cb4 <ee_printf>
     4b0:	000a8513          	mv	a0,s5
     4b4:	000b0593          	mv	a1,s6
     4b8:	321010ef          	jal	ra,1fd8 <time_in_secs>
     4bc:	00900793          	li	a5,9
     4c0:	2ca7f263          	bgeu	a5,a0,784 <main+0x608>
     4c4:	000a2583          	lw	a1,0(s4)
     4c8:	03812503          	lw	a0,56(sp)
     4cc:	01041413          	slli	s0,s0,0x10
     4d0:	41045413          	srai	s0,s0,0x10
     4d4:	7d8030ef          	jal	ra,3cac <__mulsi3>
     4d8:	00050593          	mv	a1,a0
     4dc:	00004537          	lui	a0,0x4
     4e0:	6b850513          	addi	a0,a0,1720 # 46b8 <scipat+0x564>
     4e4:	7d0000ef          	jal	ra,cb4 <ee_printf>
     4e8:	000045b7          	lui	a1,0x4
     4ec:	00004537          	lui	a0,0x4
     4f0:	6d058593          	addi	a1,a1,1744 # 46d0 <scipat+0x57c>
     4f4:	6dc50513          	addi	a0,a0,1756 # 46dc <scipat+0x588>
     4f8:	7bc000ef          	jal	ra,cb4 <ee_printf>
     4fc:	000045b7          	lui	a1,0x4
     500:	00004537          	lui	a0,0x4
     504:	6f458593          	addi	a1,a1,1780 # 46f4 <scipat+0x5a0>
     508:	71050513          	addi	a0,a0,1808 # 4710 <scipat+0x5bc>
     50c:	7a8000ef          	jal	ra,cb4 <ee_printf>
     510:	000045b7          	lui	a1,0x4
     514:	00004537          	lui	a0,0x4
     518:	72858593          	addi	a1,a1,1832 # 4728 <scipat+0x5d4>
     51c:	73050513          	addi	a0,a0,1840 # 4730 <scipat+0x5dc>
     520:	794000ef          	jal	ra,cb4 <ee_printf>
     524:	00004537          	lui	a0,0x4
     528:	00090593          	mv	a1,s2
     52c:	74850513          	addi	a0,a0,1864 # 4748 <scipat+0x5f4>
     530:	784000ef          	jal	ra,cb4 <ee_printf>
     534:	03c12783          	lw	a5,60(sp)
     538:	0017f793          	andi	a5,a5,1
     53c:	28079c63          	bnez	a5,7d4 <main+0x658>
     540:	03c12783          	lw	a5,60(sp)
     544:	0027f793          	andi	a5,a5,2
     548:	2c079a63          	bnez	a5,81c <main+0x6a0>
     54c:	03c12783          	lw	a5,60(sp)
     550:	0047f793          	andi	a5,a5,4
     554:	30079863          	bnez	a5,864 <main+0x6e8>
     558:	00000493          	li	s1,0
     55c:	00004937          	lui	s2,0x4
     560:	000a2783          	lw	a5,0(s4)
     564:	30f4e663          	bltu	s1,a5,870 <main+0x6f4>
     568:	32041e63          	bnez	s0,8a4 <main+0x728>
     56c:	00004537          	lui	a0,0x4
     570:	7d450513          	addi	a0,a0,2004 # 47d4 <scipat+0x680>
     574:	740000ef          	jal	ra,cb4 <ee_printf>
     578:	05e10513          	addi	a0,sp,94
     57c:	3a1010ef          	jal	ra,211c <portable_fini>
     580:	09c12083          	lw	ra,156(sp)
     584:	09812403          	lw	s0,152(sp)
     588:	09412483          	lw	s1,148(sp)
     58c:	09012903          	lw	s2,144(sp)
     590:	08c12983          	lw	s3,140(sp)
     594:	08812a03          	lw	s4,136(sp)
     598:	08412a83          	lw	s5,132(sp)
     59c:	08012b03          	lw	s6,128(sp)
     5a0:	07c12b83          	lw	s7,124(sp)
     5a4:	07812c03          	lw	s8,120(sp)
     5a8:	07412c83          	lw	s9,116(sp)
     5ac:	07012d03          	lw	s10,112(sp)
     5b0:	06c12d83          	lw	s11,108(sp)
     5b4:	00000513          	li	a0,0
     5b8:	0a010113          	addi	sp,sp,160
     5bc:	00008067          	ret
     5c0:	00700793          	li	a5,7
     5c4:	02f12e23          	sw	a5,60(sp)
     5c8:	c41ff06f          	j	208 <main+0x8c>
     5cc:	000097b7          	lui	a5,0x9
     5d0:	a0278793          	addi	a5,a5,-1534 # 8a02 <__crt0_copy_data_src_begin+0x3cf6>
     5d4:	02f50263          	beq	a0,a5,5f8 <main+0x47c>
     5d8:	0000f7b7          	lui	a5,0xf
     5dc:	9f578793          	addi	a5,a5,-1547 # e9f5 <__crt0_copy_data_src_begin+0x9ce9>
     5e0:	e2f51ce3          	bne	a0,a5,418 <main+0x29c>
     5e4:	00004537          	lui	a0,0x4
     5e8:	52850513          	addi	a0,a0,1320 # 4528 <scipat+0x3d4>
     5ec:	6c8000ef          	jal	ra,cb4 <ee_printf>
     5f0:	00300993          	li	s3,3
     5f4:	0140006f          	j	608 <main+0x48c>
     5f8:	00004537          	lui	a0,0x4
     5fc:	49850513          	addi	a0,a0,1176 # 4498 <scipat+0x344>
     600:	6b4000ef          	jal	ra,cb4 <ee_printf>
     604:	00000993          	li	s3,0
     608:	00005c37          	lui	s8,0x5
     60c:	00005cb7          	lui	s9,0x5
     610:	00199993          	slli	s3,s3,0x1
     614:	898c0c13          	addi	s8,s8,-1896 # 4898 <list_known_crc>
     618:	8a4c8c93          	addi	s9,s9,-1884 # 48a4 <matrix_known_crc>
     61c:	00000b93          	li	s7,0
     620:	00000413          	li	s0,0
     624:	013c0c33          	add	s8,s8,s3
     628:	00004d37          	lui	s10,0x4
     62c:	013c8cb3          	add	s9,s9,s3
     630:	1480006f          	j	778 <main+0x5fc>
     634:	00004537          	lui	a0,0x4
     638:	4c850513          	addi	a0,a0,1224 # 44c8 <scipat+0x374>
     63c:	678000ef          	jal	ra,cb4 <ee_printf>
     640:	00100993          	li	s3,1
     644:	fc5ff06f          	j	608 <main+0x48c>
     648:	00004537          	lui	a0,0x4
     64c:	4f450513          	addi	a0,a0,1268 # 44f4 <scipat+0x3a0>
     650:	664000ef          	jal	ra,cb4 <ee_printf>
     654:	00200993          	li	s3,2
     658:	fb1ff06f          	j	608 <main+0x48c>
     65c:	00004537          	lui	a0,0x4
     660:	55850513          	addi	a0,a0,1368 # 4558 <scipat+0x404>
     664:	650000ef          	jal	ra,cb4 <ee_printf>
     668:	00400993          	li	s3,4
     66c:	f9dff06f          	j	608 <main+0x48c>
     670:	00441493          	slli	s1,s0,0x4
     674:	00848db3          	add	s11,s1,s0
     678:	06010793          	addi	a5,sp,96
     67c:	002d9d93          	slli	s11,s11,0x2
     680:	01b78db3          	add	s11,a5,s11
     684:	fdcda783          	lw	a5,-36(s11)
     688:	fe0d9e23          	sh	zero,-4(s11)
     68c:	0017f793          	andi	a5,a5,1
     690:	02078463          	beqz	a5,6b8 <main+0x53c>
     694:	ff6dd603          	lhu	a2,-10(s11)
     698:	000c5683          	lhu	a3,0(s8)
     69c:	00d60e63          	beq	a2,a3,6b8 <main+0x53c>
     6a0:	00040593          	mv	a1,s0
     6a4:	584d0513          	addi	a0,s10,1412 # 4584 <scipat+0x430>
     6a8:	60c000ef          	jal	ra,cb4 <ee_printf>
     6ac:	ffcdd783          	lhu	a5,-4(s11)
     6b0:	00178793          	addi	a5,a5,1
     6b4:	fefd9e23          	sh	a5,-4(s11)
     6b8:	00848db3          	add	s11,s1,s0
     6bc:	06010793          	addi	a5,sp,96
     6c0:	002d9d93          	slli	s11,s11,0x2
     6c4:	01b78db3          	add	s11,a5,s11
     6c8:	fdcda783          	lw	a5,-36(s11)
     6cc:	0027f793          	andi	a5,a5,2
     6d0:	02078663          	beqz	a5,6fc <main+0x580>
     6d4:	ff8dd603          	lhu	a2,-8(s11)
     6d8:	000cd683          	lhu	a3,0(s9)
     6dc:	02d60063          	beq	a2,a3,6fc <main+0x580>
     6e0:	00004537          	lui	a0,0x4
     6e4:	00040593          	mv	a1,s0
     6e8:	5b450513          	addi	a0,a0,1460 # 45b4 <scipat+0x460>
     6ec:	5c8000ef          	jal	ra,cb4 <ee_printf>
     6f0:	ffcdd783          	lhu	a5,-4(s11)
     6f4:	00178793          	addi	a5,a5,1
     6f8:	fefd9e23          	sh	a5,-4(s11)
     6fc:	00848db3          	add	s11,s1,s0
     700:	06010793          	addi	a5,sp,96
     704:	002d9d93          	slli	s11,s11,0x2
     708:	01b78db3          	add	s11,a5,s11
     70c:	fdcda783          	lw	a5,-36(s11)
     710:	0047f793          	andi	a5,a5,4
     714:	02078c63          	beqz	a5,74c <main+0x5d0>
     718:	000057b7          	lui	a5,0x5
     71c:	8b078793          	addi	a5,a5,-1872 # 48b0 <state_known_crc>
     720:	013787b3          	add	a5,a5,s3
     724:	ffadd603          	lhu	a2,-6(s11)
     728:	0007d683          	lhu	a3,0(a5)
     72c:	02d60063          	beq	a2,a3,74c <main+0x5d0>
     730:	00004537          	lui	a0,0x4
     734:	00040593          	mv	a1,s0
     738:	5e850513          	addi	a0,a0,1512 # 45e8 <scipat+0x494>
     73c:	578000ef          	jal	ra,cb4 <ee_printf>
     740:	ffcdd783          	lhu	a5,-4(s11)
     744:	00178793          	addi	a5,a5,1
     748:	fefd9e23          	sh	a5,-4(s11)
     74c:	008484b3          	add	s1,s1,s0
     750:	06010793          	addi	a5,sp,96
     754:	00249493          	slli	s1,s1,0x2
     758:	009784b3          	add	s1,a5,s1
     75c:	ffc4d783          	lhu	a5,-4(s1)
     760:	00140413          	addi	s0,s0,1
     764:	01041413          	slli	s0,s0,0x10
     768:	00fb8bb3          	add	s7,s7,a5
     76c:	010b9b93          	slli	s7,s7,0x10
     770:	410bdb93          	srai	s7,s7,0x10
     774:	01045413          	srli	s0,s0,0x10
     778:	000a2783          	lw	a5,0(s4)
     77c:	eef46ae3          	bltu	s0,a5,670 <main+0x4f4>
     780:	c9dff06f          	j	41c <main+0x2a0>
     784:	00004537          	lui	a0,0x4
     788:	67850513          	addi	a0,a0,1656 # 4678 <scipat+0x524>
     78c:	528000ef          	jal	ra,cb4 <ee_printf>
     790:	00140413          	addi	s0,s0,1
     794:	d31ff06f          	j	4c4 <main+0x348>
     798:	00449793          	slli	a5,s1,0x4
     79c:	009787b3          	add	a5,a5,s1
     7a0:	06010713          	addi	a4,sp,96
     7a4:	00279793          	slli	a5,a5,0x2
     7a8:	00f707b3          	add	a5,a4,a5
     7ac:	ff67d603          	lhu	a2,-10(a5)
     7b0:	00048593          	mv	a1,s1
     7b4:	00148493          	addi	s1,s1,1
     7b8:	76490513          	addi	a0,s2,1892 # 4764 <scipat+0x610>
     7bc:	01049493          	slli	s1,s1,0x10
     7c0:	4f4000ef          	jal	ra,cb4 <ee_printf>
     7c4:	0104d493          	srli	s1,s1,0x10
     7c8:	000a2783          	lw	a5,0(s4)
     7cc:	fcf4e6e3          	bltu	s1,a5,798 <main+0x61c>
     7d0:	d71ff06f          	j	540 <main+0x3c4>
     7d4:	00000493          	li	s1,0
     7d8:	00004937          	lui	s2,0x4
     7dc:	fedff06f          	j	7c8 <main+0x64c>
     7e0:	00449793          	slli	a5,s1,0x4
     7e4:	009787b3          	add	a5,a5,s1
     7e8:	06010713          	addi	a4,sp,96
     7ec:	00279793          	slli	a5,a5,0x2
     7f0:	00f707b3          	add	a5,a4,a5
     7f4:	ff87d603          	lhu	a2,-8(a5)
     7f8:	00048593          	mv	a1,s1
     7fc:	00148493          	addi	s1,s1,1
     800:	78090513          	addi	a0,s2,1920 # 4780 <scipat+0x62c>
     804:	01049493          	slli	s1,s1,0x10
     808:	4ac000ef          	jal	ra,cb4 <ee_printf>
     80c:	0104d493          	srli	s1,s1,0x10
     810:	000a2783          	lw	a5,0(s4)
     814:	fcf4e6e3          	bltu	s1,a5,7e0 <main+0x664>
     818:	d35ff06f          	j	54c <main+0x3d0>
     81c:	00000493          	li	s1,0
     820:	00004937          	lui	s2,0x4
     824:	fedff06f          	j	810 <main+0x694>
     828:	00449793          	slli	a5,s1,0x4
     82c:	009787b3          	add	a5,a5,s1
     830:	06010713          	addi	a4,sp,96
     834:	00279793          	slli	a5,a5,0x2
     838:	00f707b3          	add	a5,a4,a5
     83c:	ffa7d603          	lhu	a2,-6(a5)
     840:	00048593          	mv	a1,s1
     844:	00148493          	addi	s1,s1,1
     848:	79c90513          	addi	a0,s2,1948 # 479c <scipat+0x648>
     84c:	01049493          	slli	s1,s1,0x10
     850:	464000ef          	jal	ra,cb4 <ee_printf>
     854:	0104d493          	srli	s1,s1,0x10
     858:	000a2783          	lw	a5,0(s4)
     85c:	fcf4e6e3          	bltu	s1,a5,828 <main+0x6ac>
     860:	cf9ff06f          	j	558 <main+0x3dc>
     864:	00000493          	li	s1,0
     868:	00004937          	lui	s2,0x4
     86c:	fedff06f          	j	858 <main+0x6dc>
     870:	00449793          	slli	a5,s1,0x4
     874:	009787b3          	add	a5,a5,s1
     878:	06010713          	addi	a4,sp,96
     87c:	00279793          	slli	a5,a5,0x2
     880:	00f707b3          	add	a5,a4,a5
     884:	ff47d603          	lhu	a2,-12(a5)
     888:	00048593          	mv	a1,s1
     88c:	00148493          	addi	s1,s1,1
     890:	7b890513          	addi	a0,s2,1976 # 47b8 <scipat+0x664>
     894:	01049493          	slli	s1,s1,0x10
     898:	41c000ef          	jal	ra,cb4 <ee_printf>
     89c:	0104d493          	srli	s1,s1,0x10
     8a0:	cc1ff06f          	j	560 <main+0x3e4>
     8a4:	00805863          	blez	s0,8b4 <main+0x738>
     8a8:	00005537          	lui	a0,0x5
     8ac:	82050513          	addi	a0,a0,-2016 # 4820 <scipat+0x6cc>
     8b0:	cc5ff06f          	j	574 <main+0x3f8>
     8b4:	00005537          	lui	a0,0x5
     8b8:	83450513          	addi	a0,a0,-1996 # 4834 <scipat+0x6e0>
     8bc:	cb9ff06f          	j	574 <main+0x3f8>

000008c0 <get_seed_32>:
     8c0:	fff50513          	addi	a0,a0,-1
     8c4:	00400793          	li	a5,4
     8c8:	04a7e663          	bltu	a5,a0,914 <get_seed_32+0x54>
     8cc:	000047b7          	lui	a5,0x4
     8d0:	f8878793          	addi	a5,a5,-120 # 3f88 <__etext>
     8d4:	00251513          	slli	a0,a0,0x2
     8d8:	00f50533          	add	a0,a0,a5
     8dc:	00052783          	lw	a5,0(a0)
     8e0:	00078067          	jr	a5
     8e4:	8141a503          	lw	a0,-2028(gp) # 80000014 <seed1_volatile>
     8e8:	00008067          	ret
     8ec:	8181a503          	lw	a0,-2024(gp) # 80000018 <seed2_volatile>
     8f0:	00008067          	ret
     8f4:	800007b7          	lui	a5,0x80000
     8f8:	0047a503          	lw	a0,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
     8fc:	00008067          	ret
     900:	800007b7          	lui	a5,0x80000
     904:	0087a503          	lw	a0,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
     908:	00008067          	ret
     90c:	81c1a503          	lw	a0,-2020(gp) # 8000001c <seed5_volatile>
     910:	00008067          	ret
     914:	00000513          	li	a0,0
     918:	00008067          	ret

0000091c <crcu8>:
     91c:	00004637          	lui	a2,0x4
     920:	00050713          	mv	a4,a0
     924:	00800793          	li	a5,8
     928:	00058513          	mv	a0,a1
     92c:	00260613          	addi	a2,a2,2 # 4002 <__etext+0x7a>
     930:	ffff8837          	lui	a6,0xffff8
     934:	00e546b3          	xor	a3,a0,a4
     938:	0016f693          	andi	a3,a3,1
     93c:	00175713          	srli	a4,a4,0x1
     940:	00068463          	beqz	a3,948 <crcu8+0x2c>
     944:	00c54533          	xor	a0,a0,a2
     948:	00155513          	srli	a0,a0,0x1
     94c:	00068863          	beqz	a3,95c <crcu8+0x40>
     950:	010565b3          	or	a1,a0,a6
     954:	01059513          	slli	a0,a1,0x10
     958:	01055513          	srli	a0,a0,0x10
     95c:	fff78793          	addi	a5,a5,-1
     960:	0ff7f793          	andi	a5,a5,255
     964:	fc0798e3          	bnez	a5,934 <crcu8+0x18>
     968:	00008067          	ret

0000096c <crcu16>:
     96c:	ff010113          	addi	sp,sp,-16
     970:	00812423          	sw	s0,8(sp)
     974:	00050413          	mv	s0,a0
     978:	0ff57513          	andi	a0,a0,255
     97c:	00112623          	sw	ra,12(sp)
     980:	f9dff0ef          	jal	ra,91c <crcu8>
     984:	00050593          	mv	a1,a0
     988:	00845513          	srli	a0,s0,0x8
     98c:	00812403          	lw	s0,8(sp)
     990:	00c12083          	lw	ra,12(sp)
     994:	01010113          	addi	sp,sp,16
     998:	f85ff06f          	j	91c <crcu8>

0000099c <crcu32>:
     99c:	ff010113          	addi	sp,sp,-16
     9a0:	00812423          	sw	s0,8(sp)
     9a4:	00050413          	mv	s0,a0
     9a8:	01051513          	slli	a0,a0,0x10
     9ac:	01055513          	srli	a0,a0,0x10
     9b0:	00112623          	sw	ra,12(sp)
     9b4:	fb9ff0ef          	jal	ra,96c <crcu16>
     9b8:	00050593          	mv	a1,a0
     9bc:	01045513          	srli	a0,s0,0x10
     9c0:	00812403          	lw	s0,8(sp)
     9c4:	00c12083          	lw	ra,12(sp)
     9c8:	01010113          	addi	sp,sp,16
     9cc:	fa1ff06f          	j	96c <crcu16>

000009d0 <crc16>:
     9d0:	01051513          	slli	a0,a0,0x10
     9d4:	01055513          	srli	a0,a0,0x10
     9d8:	f95ff06f          	j	96c <crcu16>

000009dc <check_data_types>:
     9dc:	00000513          	li	a0,0
     9e0:	00008067          	ret

000009e4 <number>:
     9e4:	f6010113          	addi	sp,sp,-160
     9e8:	08812c23          	sw	s0,152(sp)
     9ec:	08912a23          	sw	s1,148(sp)
     9f0:	09212823          	sw	s2,144(sp)
     9f4:	09412423          	sw	s4,136(sp)
     9f8:	00078493          	mv	s1,a5
     9fc:	08112e23          	sw	ra,156(sp)
     a00:	09312623          	sw	s3,140(sp)
     a04:	09512223          	sw	s5,132(sp)
     a08:	09612023          	sw	s6,128(sp)
     a0c:	07712e23          	sw	s7,124(sp)
     a10:	07812c23          	sw	s8,120(sp)
     a14:	07912a23          	sw	s9,116(sp)
     a18:	07a12823          	sw	s10,112(sp)
     a1c:	07b12623          	sw	s11,108(sp)
     a20:	0407f793          	andi	a5,a5,64
     a24:	00050913          	mv	s2,a0
     a28:	00060a13          	mv	s4,a2
     a2c:	00058513          	mv	a0,a1
     a30:	00068413          	mv	s0,a3
     a34:	02078063          	beqz	a5,a54 <number+0x70>
     a38:	00004ab7          	lui	s5,0x4
     a3c:	fc4a8a93          	addi	s5,s5,-60 # 3fc4 <__etext+0x3c>
     a40:	0104fb93          	andi	s7,s1,16
     a44:	000b8e63          	beqz	s7,a60 <number+0x7c>
     a48:	ffe4f493          	andi	s1,s1,-2
     a4c:	02000b13          	li	s6,32
     a50:	01c0006f          	j	a6c <number+0x88>
     a54:	00004ab7          	lui	s5,0x4
     a58:	f9ca8a93          	addi	s5,s5,-100 # 3f9c <__etext+0x14>
     a5c:	fe5ff06f          	j	a40 <number+0x5c>
     a60:	0014f793          	andi	a5,s1,1
     a64:	03000b13          	li	s6,48
     a68:	fe0782e3          	beqz	a5,a4c <number+0x68>
     a6c:	0024f793          	andi	a5,s1,2
     a70:	00000d93          	li	s11,0
     a74:	00078a63          	beqz	a5,a88 <number+0xa4>
     a78:	14055a63          	bgez	a0,bcc <number+0x1e8>
     a7c:	40a00533          	neg	a0,a0
     a80:	fff40413          	addi	s0,s0,-1
     a84:	02d00d93          	li	s11,45
     a88:	0204fc13          	andi	s8,s1,32
     a8c:	000c0863          	beqz	s8,a9c <number+0xb8>
     a90:	01000793          	li	a5,16
     a94:	16fa1063          	bne	s4,a5,bf4 <number+0x210>
     a98:	ffe40413          	addi	s0,s0,-2
     a9c:	16051463          	bnez	a0,c04 <number+0x220>
     aa0:	03000793          	li	a5,48
     aa4:	00f10e23          	sb	a5,28(sp)
     aa8:	00100993          	li	s3,1
     aac:	00098a93          	mv	s5,s3
     ab0:	00e9d463          	bge	s3,a4,ab8 <number+0xd4>
     ab4:	00070a93          	mv	s5,a4
     ab8:	0114f493          	andi	s1,s1,17
     abc:	41540433          	sub	s0,s0,s5
     ac0:	02049663          	bnez	s1,aec <number+0x108>
     ac4:	00040493          	mv	s1,s0
     ac8:	00045463          	bgez	s0,ad0 <number+0xec>
     acc:	00000493          	li	s1,0
     ad0:	00090513          	mv	a0,s2
     ad4:	00048613          	mv	a2,s1
     ad8:	02000593          	li	a1,32
     adc:	fff40413          	addi	s0,s0,-1
     ae0:	3cc030ef          	jal	ra,3eac <memset>
     ae4:	00990933          	add	s2,s2,s1
     ae8:	40940433          	sub	s0,s0,s1
     aec:	000d8663          	beqz	s11,af8 <number+0x114>
     af0:	01b90023          	sb	s11,0(s2)
     af4:	00190913          	addi	s2,s2,1
     af8:	000c0c63          	beqz	s8,b10 <number+0x12c>
     afc:	00800793          	li	a5,8
     b00:	14fa1463          	bne	s4,a5,c48 <number+0x264>
     b04:	03000793          	li	a5,48
     b08:	00f90023          	sb	a5,0(s2)
     b0c:	00190913          	addi	s2,s2,1
     b10:	020b9663          	bnez	s7,b3c <number+0x158>
     b14:	00040493          	mv	s1,s0
     b18:	00045463          	bgez	s0,b20 <number+0x13c>
     b1c:	00000493          	li	s1,0
     b20:	00090513          	mv	a0,s2
     b24:	00048613          	mv	a2,s1
     b28:	000b0593          	mv	a1,s6
     b2c:	fff40413          	addi	s0,s0,-1
     b30:	37c030ef          	jal	ra,3eac <memset>
     b34:	00990933          	add	s2,s2,s1
     b38:	40940433          	sub	s0,s0,s1
     b3c:	00098a13          	mv	s4,s3
     b40:	00000493          	li	s1,0
     b44:	013ac463          	blt	s5,s3,b4c <number+0x168>
     b48:	413a84b3          	sub	s1,s5,s3
     b4c:	00048613          	mv	a2,s1
     b50:	03000593          	li	a1,48
     b54:	00090513          	mv	a0,s2
     b58:	354030ef          	jal	ra,3eac <memset>
     b5c:	009907b3          	add	a5,s2,s1
     b60:	00078713          	mv	a4,a5
     b64:	fff00693          	li	a3,-1
     b68:	fff98993          	addi	s3,s3,-1
     b6c:	0ed99e63          	bne	s3,a3,c68 <number+0x284>
     b70:	014787b3          	add	a5,a5,s4
     b74:	00045463          	bgez	s0,b7c <number+0x198>
     b78:	00000413          	li	s0,0
     b7c:	00040613          	mv	a2,s0
     b80:	02000593          	li	a1,32
     b84:	00078513          	mv	a0,a5
     b88:	324030ef          	jal	ra,3eac <memset>
     b8c:	09c12083          	lw	ra,156(sp)
     b90:	00850533          	add	a0,a0,s0
     b94:	09812403          	lw	s0,152(sp)
     b98:	09412483          	lw	s1,148(sp)
     b9c:	09012903          	lw	s2,144(sp)
     ba0:	08c12983          	lw	s3,140(sp)
     ba4:	08812a03          	lw	s4,136(sp)
     ba8:	08412a83          	lw	s5,132(sp)
     bac:	08012b03          	lw	s6,128(sp)
     bb0:	07c12b83          	lw	s7,124(sp)
     bb4:	07812c03          	lw	s8,120(sp)
     bb8:	07412c83          	lw	s9,116(sp)
     bbc:	07012d03          	lw	s10,112(sp)
     bc0:	06c12d83          	lw	s11,108(sp)
     bc4:	0a010113          	addi	sp,sp,160
     bc8:	00008067          	ret
     bcc:	0044f793          	andi	a5,s1,4
     bd0:	00078863          	beqz	a5,be0 <number+0x1fc>
     bd4:	fff40413          	addi	s0,s0,-1
     bd8:	02b00d93          	li	s11,43
     bdc:	eadff06f          	j	a88 <number+0xa4>
     be0:	0084f793          	andi	a5,s1,8
     be4:	ea0782e3          	beqz	a5,a88 <number+0xa4>
     be8:	fff40413          	addi	s0,s0,-1
     bec:	02000d93          	li	s11,32
     bf0:	e99ff06f          	j	a88 <number+0xa4>
     bf4:	00800793          	li	a5,8
     bf8:	eafa12e3          	bne	s4,a5,a9c <number+0xb8>
     bfc:	fff40413          	addi	s0,s0,-1
     c00:	e9dff06f          	j	a9c <number+0xb8>
     c04:	01c10d13          	addi	s10,sp,28
     c08:	00000993          	li	s3,0
     c0c:	000a0593          	mv	a1,s4
     c10:	00e12623          	sw	a4,12(sp)
     c14:	00050c93          	mv	s9,a0
     c18:	108030ef          	jal	ra,3d20 <__umodsi3>
     c1c:	00aa8533          	add	a0,s5,a0
     c20:	00054783          	lbu	a5,0(a0)
     c24:	000a0593          	mv	a1,s4
     c28:	000c8513          	mv	a0,s9
     c2c:	00fd0023          	sb	a5,0(s10)
     c30:	0a8030ef          	jal	ra,3cd8 <__udivsi3>
     c34:	00c12703          	lw	a4,12(sp)
     c38:	00198993          	addi	s3,s3,1
     c3c:	001d0d13          	addi	s10,s10,1
     c40:	fd4cf6e3          	bgeu	s9,s4,c0c <number+0x228>
     c44:	e69ff06f          	j	aac <number+0xc8>
     c48:	01000793          	li	a5,16
     c4c:	ecfa12e3          	bne	s4,a5,b10 <number+0x12c>
     c50:	03000793          	li	a5,48
     c54:	00f90023          	sb	a5,0(s2)
     c58:	07800793          	li	a5,120
     c5c:	00f900a3          	sb	a5,1(s2)
     c60:	00290913          	addi	s2,s2,2
     c64:	eadff06f          	j	b10 <number+0x12c>
     c68:	01c10613          	addi	a2,sp,28
     c6c:	01360633          	add	a2,a2,s3
     c70:	00064603          	lbu	a2,0(a2)
     c74:	00170713          	addi	a4,a4,1
     c78:	fec70fa3          	sb	a2,-1(a4)
     c7c:	eedff06f          	j	b68 <number+0x184>

00000c80 <uart_send_char>:
     c80:	ff010113          	addi	sp,sp,-16
     c84:	00812423          	sw	s0,8(sp)
     c88:	00112623          	sw	ra,12(sp)
     c8c:	00a00793          	li	a5,10
     c90:	00050413          	mv	s0,a0
     c94:	00f51663          	bne	a0,a5,ca0 <uart_send_char+0x20>
     c98:	00d00513          	li	a0,13
     c9c:	118020ef          	jal	ra,2db4 <neorv32_uart0_putc>
     ca0:	00040513          	mv	a0,s0
     ca4:	00812403          	lw	s0,8(sp)
     ca8:	00c12083          	lw	ra,12(sp)
     cac:	01010113          	addi	sp,sp,16
     cb0:	1040206f          	j	2db4 <neorv32_uart0_putc>

00000cb4 <ee_printf>:
     cb4:	e7010113          	addi	sp,sp,-400
     cb8:	17212023          	sw	s2,352(sp)
     cbc:	00004937          	lui	s2,0x4
     cc0:	16912223          	sw	s1,356(sp)
     cc4:	15312e23          	sw	s3,348(sp)
     cc8:	18f12223          	sw	a5,388(sp)
     ccc:	19112623          	sw	a7,396(sp)
     cd0:	000044b7          	lui	s1,0x4
     cd4:	17410893          	addi	a7,sp,372
     cd8:	fc490793          	addi	a5,s2,-60 # 3fc4 <__etext+0x3c>
     cdc:	000049b7          	lui	s3,0x4
     ce0:	15512a23          	sw	s5,340(sp)
     ce4:	15612823          	sw	s6,336(sp)
     ce8:	16112623          	sw	ra,364(sp)
     cec:	16812423          	sw	s0,360(sp)
     cf0:	15412c23          	sw	s4,344(sp)
     cf4:	15712623          	sw	s7,332(sp)
     cf8:	15812423          	sw	s8,328(sp)
     cfc:	15912223          	sw	s9,324(sp)
     d00:	15a12023          	sw	s10,320(sp)
     d04:	13b12e23          	sw	s11,316(sp)
     d08:	16b12a23          	sw	a1,372(sp)
     d0c:	16c12c23          	sw	a2,376(sp)
     d10:	16d12e23          	sw	a3,380(sp)
     d14:	18e12023          	sw	a4,384(sp)
     d18:	19012423          	sw	a6,392(sp)
     d1c:	01112a23          	sw	a7,20(sp)
     d20:	00088b13          	mv	s6,a7
     d24:	03010a93          	addi	s5,sp,48
     d28:	f9c48493          	addi	s1,s1,-100 # 3f9c <__etext+0x14>
     d2c:	00f12423          	sw	a5,8(sp)
     d30:	ff498993          	addi	s3,s3,-12 # 3ff4 <__etext+0x6c>
     d34:	00054783          	lbu	a5,0(a0)
     d38:	04079e63          	bnez	a5,d94 <ee_printf+0xe0>
     d3c:	000a8023          	sb	zero,0(s5)
     d40:	00000413          	li	s0,0
     d44:	03010793          	addi	a5,sp,48
     d48:	008787b3          	add	a5,a5,s0
     d4c:	0007c503          	lbu	a0,0(a5)
     d50:	64051a63          	bnez	a0,13a4 <ee_printf+0x6f0>
     d54:	16c12083          	lw	ra,364(sp)
     d58:	00040513          	mv	a0,s0
     d5c:	16812403          	lw	s0,360(sp)
     d60:	16412483          	lw	s1,356(sp)
     d64:	16012903          	lw	s2,352(sp)
     d68:	15c12983          	lw	s3,348(sp)
     d6c:	15812a03          	lw	s4,344(sp)
     d70:	15412a83          	lw	s5,340(sp)
     d74:	15012b03          	lw	s6,336(sp)
     d78:	14c12b83          	lw	s7,332(sp)
     d7c:	14812c03          	lw	s8,328(sp)
     d80:	14412c83          	lw	s9,324(sp)
     d84:	14012d03          	lw	s10,320(sp)
     d88:	13c12d83          	lw	s11,316(sp)
     d8c:	19010113          	addi	sp,sp,400
     d90:	00008067          	ret
     d94:	02500713          	li	a4,37
     d98:	00e78a63          	beq	a5,a4,dac <ee_printf+0xf8>
     d9c:	00fa8023          	sb	a5,0(s5)
     da0:	00050413          	mv	s0,a0
     da4:	001a8a93          	addi	s5,s5,1
     da8:	2740006f          	j	101c <ee_printf+0x368>
     dac:	00000793          	li	a5,0
     db0:	02b00693          	li	a3,43
     db4:	02d00613          	li	a2,45
     db8:	03000593          	li	a1,48
     dbc:	02000313          	li	t1,32
     dc0:	02300e13          	li	t3,35
     dc4:	01c0006f          	j	de0 <ee_printf+0x12c>
     dc8:	00c70863          	beq	a4,a2,dd8 <ee_printf+0x124>
     dcc:	02b71663          	bne	a4,a1,df8 <ee_printf+0x144>
     dd0:	0017e793          	ori	a5,a5,1
     dd4:	0080006f          	j	ddc <ee_printf+0x128>
     dd8:	0107e793          	ori	a5,a5,16
     ddc:	00040513          	mv	a0,s0
     de0:	00154703          	lbu	a4,1(a0)
     de4:	00150413          	addi	s0,a0,1
     de8:	02d70663          	beq	a4,a3,e14 <ee_printf+0x160>
     dec:	fce6eee3          	bltu	a3,a4,dc8 <ee_printf+0x114>
     df0:	02670663          	beq	a4,t1,e1c <ee_printf+0x168>
     df4:	03c70863          	beq	a4,t3,e24 <ee_printf+0x170>
     df8:	fd070693          	addi	a3,a4,-48
     dfc:	0ff6f693          	andi	a3,a3,255
     e00:	00900613          	li	a2,9
     e04:	08d66263          	bltu	a2,a3,e88 <ee_printf+0x1d4>
     e08:	00000d93          	li	s11,0
     e0c:	00900513          	li	a0,9
     e10:	0340006f          	j	e44 <ee_printf+0x190>
     e14:	0047e793          	ori	a5,a5,4
     e18:	fc5ff06f          	j	ddc <ee_printf+0x128>
     e1c:	0087e793          	ori	a5,a5,8
     e20:	fbdff06f          	j	ddc <ee_printf+0x128>
     e24:	0207e793          	ori	a5,a5,32
     e28:	fb5ff06f          	j	ddc <ee_printf+0x128>
     e2c:	002d9713          	slli	a4,s11,0x2
     e30:	01b706b3          	add	a3,a4,s11
     e34:	00169693          	slli	a3,a3,0x1
     e38:	00b686b3          	add	a3,a3,a1
     e3c:	00140413          	addi	s0,s0,1
     e40:	fd068d93          	addi	s11,a3,-48
     e44:	00044583          	lbu	a1,0(s0)
     e48:	fd058613          	addi	a2,a1,-48
     e4c:	0ff67613          	andi	a2,a2,255
     e50:	fcc57ee3          	bgeu	a0,a2,e2c <ee_printf+0x178>
     e54:	00044583          	lbu	a1,0(s0)
     e58:	02e00613          	li	a2,46
     e5c:	fff00713          	li	a4,-1
     e60:	08c59263          	bne	a1,a2,ee4 <ee_printf+0x230>
     e64:	00144603          	lbu	a2,1(s0)
     e68:	00900513          	li	a0,9
     e6c:	00140593          	addi	a1,s0,1
     e70:	fd060713          	addi	a4,a2,-48
     e74:	0ff77713          	andi	a4,a4,255
     e78:	0ce56c63          	bltu	a0,a4,f50 <ee_printf+0x29c>
     e7c:	00000713          	li	a4,0
     e80:	00900313          	li	t1,9
     e84:	0440006f          	j	ec8 <ee_printf+0x214>
     e88:	02a00613          	li	a2,42
     e8c:	fff00d93          	li	s11,-1
     e90:	fcc712e3          	bne	a4,a2,e54 <ee_printf+0x1a0>
     e94:	000b2d83          	lw	s11,0(s6)
     e98:	00250413          	addi	s0,a0,2
     e9c:	004b0b13          	addi	s6,s6,4
     ea0:	fa0ddae3          	bgez	s11,e54 <ee_printf+0x1a0>
     ea4:	41b00db3          	neg	s11,s11
     ea8:	0107e793          	ori	a5,a5,16
     eac:	fa9ff06f          	j	e54 <ee_printf+0x1a0>
     eb0:	00271613          	slli	a2,a4,0x2
     eb4:	00e60733          	add	a4,a2,a4
     eb8:	00171713          	slli	a4,a4,0x1
     ebc:	00a70733          	add	a4,a4,a0
     ec0:	00158593          	addi	a1,a1,1
     ec4:	fd070713          	addi	a4,a4,-48
     ec8:	0005c503          	lbu	a0,0(a1)
     ecc:	fd050613          	addi	a2,a0,-48
     ed0:	0ff67613          	andi	a2,a2,255
     ed4:	fcc37ee3          	bgeu	t1,a2,eb0 <ee_printf+0x1fc>
     ed8:	00075463          	bgez	a4,ee0 <ee_printf+0x22c>
     edc:	00000713          	li	a4,0
     ee0:	00058413          	mv	s0,a1
     ee4:	00044603          	lbu	a2,0(s0)
     ee8:	04c00593          	li	a1,76
     eec:	fff00513          	li	a0,-1
     ef0:	0df67313          	andi	t1,a2,223
     ef4:	00b31663          	bne	t1,a1,f00 <ee_printf+0x24c>
     ef8:	00060513          	mv	a0,a2
     efc:	00140413          	addi	s0,s0,1
     f00:	00044583          	lbu	a1,0(s0)
     f04:	07800613          	li	a2,120
     f08:	02b66663          	bltu	a2,a1,f34 <ee_printf+0x280>
     f0c:	06000613          	li	a2,96
     f10:	06b66263          	bltu	a2,a1,f74 <ee_printf+0x2c0>
     f14:	04100613          	li	a2,65
     f18:	20c58463          	beq	a1,a2,1120 <ee_printf+0x46c>
     f1c:	05800513          	li	a0,88
     f20:	0407e793          	ori	a5,a5,64
     f24:	01000613          	li	a2,16
     f28:	06a58863          	beq	a1,a0,f98 <ee_printf+0x2e4>
     f2c:	02500793          	li	a5,37
     f30:	00f58863          	beq	a1,a5,f40 <ee_printf+0x28c>
     f34:	02500793          	li	a5,37
     f38:	00fa8023          	sb	a5,0(s5)
     f3c:	001a8a93          	addi	s5,s5,1
     f40:	00044783          	lbu	a5,0(s0)
     f44:	44078863          	beqz	a5,1394 <ee_printf+0x6e0>
     f48:	00fa8023          	sb	a5,0(s5)
     f4c:	e59ff06f          	j	da4 <ee_printf+0xf0>
     f50:	02a00713          	li	a4,42
     f54:	00e61a63          	bne	a2,a4,f68 <ee_printf+0x2b4>
     f58:	000b2703          	lw	a4,0(s6)
     f5c:	00240593          	addi	a1,s0,2
     f60:	004b0b13          	addi	s6,s6,4
     f64:	f75ff06f          	j	ed8 <ee_printf+0x224>
     f68:	00058413          	mv	s0,a1
     f6c:	00000713          	li	a4,0
     f70:	f75ff06f          	j	ee4 <ee_printf+0x230>
     f74:	f9f58613          	addi	a2,a1,-97
     f78:	0ff67613          	andi	a2,a2,255
     f7c:	01700313          	li	t1,23
     f80:	fac366e3          	bltu	t1,a2,f2c <ee_printf+0x278>
     f84:	00261613          	slli	a2,a2,0x2
     f88:	01360633          	add	a2,a2,s3
     f8c:	00062603          	lw	a2,0(a2)
     f90:	00060067          	jr	a2
     f94:	01000613          	li	a2,16
     f98:	000b2583          	lw	a1,0(s6)
     f9c:	004b0a13          	addi	s4,s6,4
     fa0:	000d8693          	mv	a3,s11
     fa4:	16c0006f          	j	1110 <ee_printf+0x45c>
     fa8:	0107f793          	andi	a5,a5,16
     fac:	02079e63          	bnez	a5,fe8 <ee_printf+0x334>
     fb0:	fffd8a13          	addi	s4,s11,-1
     fb4:	00000b93          	li	s7,0
     fb8:	01b05463          	blez	s11,fc0 <ee_printf+0x30c>
     fbc:	000a0b93          	mv	s7,s4
     fc0:	000a8513          	mv	a0,s5
     fc4:	000b8613          	mv	a2,s7
     fc8:	02000593          	li	a1,32
     fcc:	6e1020ef          	jal	ra,3eac <memset>
     fd0:	017a8ab3          	add	s5,s5,s7
     fd4:	000d8693          	mv	a3,s11
     fd8:	01b04463          	bgtz	s11,fe0 <ee_printf+0x32c>
     fdc:	00100693          	li	a3,1
     fe0:	40da06b3          	sub	a3,s4,a3
     fe4:	00168d93          	addi	s11,a3,1
     fe8:	000b2703          	lw	a4,0(s6)
     fec:	001a8793          	addi	a5,s5,1
     ff0:	004b0b93          	addi	s7,s6,4
     ff4:	00ea8023          	sb	a4,0(s5)
     ff8:	00000a93          	li	s5,0
     ffc:	01b05463          	blez	s11,1004 <ee_printf+0x350>
    1000:	fffd8a93          	addi	s5,s11,-1
    1004:	000a8613          	mv	a2,s5
    1008:	02000593          	li	a1,32
    100c:	00078513          	mv	a0,a5
    1010:	69d020ef          	jal	ra,3eac <memset>
    1014:	01550ab3          	add	s5,a0,s5
    1018:	000b8b13          	mv	s6,s7
    101c:	00140513          	addi	a0,s0,1
    1020:	d15ff06f          	j	d34 <ee_printf+0x80>
    1024:	000b2d03          	lw	s10,0(s6)
    1028:	004b0a13          	addi	s4,s6,4
    102c:	000d1663          	bnez	s10,1038 <ee_printf+0x384>
    1030:	000046b7          	lui	a3,0x4
    1034:	fec68d13          	addi	s10,a3,-20 # 3fec <__etext+0x64>
    1038:	00ed0733          	add	a4,s10,a4
    103c:	000d0b93          	mv	s7,s10
    1040:	000bc603          	lbu	a2,0(s7)
    1044:	00060463          	beqz	a2,104c <ee_printf+0x398>
    1048:	08eb9463          	bne	s7,a4,10d0 <ee_printf+0x41c>
    104c:	0107f793          	andi	a5,a5,16
    1050:	41ab8bb3          	sub	s7,s7,s10
    1054:	02079e63          	bnez	a5,1090 <ee_printf+0x3dc>
    1058:	417d8cb3          	sub	s9,s11,s7
    105c:	00000c13          	li	s8,0
    1060:	017dc463          	blt	s11,s7,1068 <ee_printf+0x3b4>
    1064:	000c8c13          	mv	s8,s9
    1068:	000a8513          	mv	a0,s5
    106c:	000c0613          	mv	a2,s8
    1070:	02000593          	li	a1,32
    1074:	639020ef          	jal	ra,3eac <memset>
    1078:	018a8ab3          	add	s5,s5,s8
    107c:	fffd8713          	addi	a4,s11,-1
    1080:	00000793          	li	a5,0
    1084:	017dc463          	blt	s11,s7,108c <ee_printf+0x3d8>
    1088:	419007b3          	neg	a5,s9
    108c:	00f70db3          	add	s11,a4,a5
    1090:	00000793          	li	a5,0
    1094:	0577c263          	blt	a5,s7,10d8 <ee_printf+0x424>
    1098:	000b8613          	mv	a2,s7
    109c:	000bd463          	bgez	s7,10a4 <ee_printf+0x3f0>
    10a0:	00000613          	li	a2,0
    10a4:	00ca8833          	add	a6,s5,a2
    10a8:	00000a93          	li	s5,0
    10ac:	017dc463          	blt	s11,s7,10b4 <ee_printf+0x400>
    10b0:	417d8ab3          	sub	s5,s11,s7
    10b4:	000a8613          	mv	a2,s5
    10b8:	02000593          	li	a1,32
    10bc:	00080513          	mv	a0,a6
    10c0:	5ed020ef          	jal	ra,3eac <memset>
    10c4:	01550ab3          	add	s5,a0,s5
    10c8:	000a0b13          	mv	s6,s4
    10cc:	f51ff06f          	j	101c <ee_printf+0x368>
    10d0:	001b8b93          	addi	s7,s7,1
    10d4:	f6dff06f          	j	1040 <ee_printf+0x38c>
    10d8:	00fd0733          	add	a4,s10,a5
    10dc:	00074603          	lbu	a2,0(a4)
    10e0:	00fa8733          	add	a4,s5,a5
    10e4:	00178793          	addi	a5,a5,1
    10e8:	00c70023          	sb	a2,0(a4)
    10ec:	fa9ff06f          	j	1094 <ee_printf+0x3e0>
    10f0:	fff00613          	li	a2,-1
    10f4:	00cd9663          	bne	s11,a2,1100 <ee_printf+0x44c>
    10f8:	0017e793          	ori	a5,a5,1
    10fc:	00800d93          	li	s11,8
    1100:	000b2583          	lw	a1,0(s6)
    1104:	004b0a13          	addi	s4,s6,4
    1108:	000d8693          	mv	a3,s11
    110c:	01000613          	li	a2,16
    1110:	000a8513          	mv	a0,s5
    1114:	8d1ff0ef          	jal	ra,9e4 <number>
    1118:	00050a93          	mv	s5,a0
    111c:	fadff06f          	j	10c8 <ee_printf+0x414>
    1120:	0407e793          	ori	a5,a5,64
    1124:	06c00713          	li	a4,108
    1128:	000b2a03          	lw	s4,0(s6)
    112c:	004b0b13          	addi	s6,s6,4
    1130:	18e51663          	bne	a0,a4,12bc <ee_printf+0x608>
    1134:	0407f713          	andi	a4,a5,64
    1138:	00048513          	mv	a0,s1
    113c:	00070463          	beqz	a4,1144 <ee_printf+0x490>
    1140:	00812503          	lw	a0,8(sp)
    1144:	01810713          	addi	a4,sp,24
    1148:	00000593          	li	a1,0
    114c:	00070c13          	mv	s8,a4
    1150:	00600e13          	li	t3,6
    1154:	03a00e93          	li	t4,58
    1158:	00ba0633          	add	a2,s4,a1
    115c:	00064603          	lbu	a2,0(a2)
    1160:	00158593          	addi	a1,a1,1
    1164:	00370713          	addi	a4,a4,3
    1168:	00465313          	srli	t1,a2,0x4
    116c:	00f67613          	andi	a2,a2,15
    1170:	00650333          	add	t1,a0,t1
    1174:	00c50633          	add	a2,a0,a2
    1178:	00034303          	lbu	t1,0(t1)
    117c:	00064603          	lbu	a2,0(a2)
    1180:	fe670ea3          	sb	t1,-3(a4)
    1184:	fec70f23          	sb	a2,-2(a4)
    1188:	09c59463          	bne	a1,t3,1210 <ee_printf+0x55c>
    118c:	0107f793          	andi	a5,a5,16
    1190:	04079263          	bnez	a5,11d4 <ee_printf+0x520>
    1194:	01000793          	li	a5,16
    1198:	fefd8b93          	addi	s7,s11,-17
    119c:	00000a13          	li	s4,0
    11a0:	01b7d463          	bge	a5,s11,11a8 <ee_printf+0x4f4>
    11a4:	000b8a13          	mv	s4,s7
    11a8:	000a8513          	mv	a0,s5
    11ac:	000a0613          	mv	a2,s4
    11b0:	02000593          	li	a1,32
    11b4:	4f9020ef          	jal	ra,3eac <memset>
    11b8:	01000713          	li	a4,16
    11bc:	014a8ab3          	add	s5,s5,s4
    11c0:	00000793          	li	a5,0
    11c4:	01b75463          	bge	a4,s11,11cc <ee_printf+0x518>
    11c8:	417007b3          	neg	a5,s7
    11cc:	fffd8693          	addi	a3,s11,-1
    11d0:	00d78db3          	add	s11,a5,a3
    11d4:	000a8513          	mv	a0,s5
    11d8:	01100613          	li	a2,17
    11dc:	000c0593          	mv	a1,s8
    11e0:	3a5020ef          	jal	ra,3d84 <memcpy>
    11e4:	01000793          	li	a5,16
    11e8:	011a8813          	addi	a6,s5,17
    11ec:	00000a93          	li	s5,0
    11f0:	01b7d463          	bge	a5,s11,11f8 <ee_printf+0x544>
    11f4:	fefd8a93          	addi	s5,s11,-17
    11f8:	000a8613          	mv	a2,s5
    11fc:	02000593          	li	a1,32
    1200:	00080513          	mv	a0,a6
    1204:	4a9020ef          	jal	ra,3eac <memset>
    1208:	01550ab3          	add	s5,a0,s5
    120c:	e11ff06f          	j	101c <ee_printf+0x368>
    1210:	ffd70fa3          	sb	t4,-1(a4)
    1214:	f45ff06f          	j	1158 <ee_printf+0x4a4>
    1218:	13010713          	addi	a4,sp,304
    121c:	01870733          	add	a4,a4,s8
    1220:	02e00693          	li	a3,46
    1224:	001c0d13          	addi	s10,s8,1
    1228:	eed70423          	sb	a3,-280(a4)
    122c:	017a0733          	add	a4,s4,s7
    1230:	00074c83          	lbu	s9,0(a4)
    1234:	13010713          	addi	a4,sp,304
    1238:	001d0c13          	addi	s8,s10,1
    123c:	01a70933          	add	s2,a4,s10
    1240:	080c9463          	bnez	s9,12c8 <ee_printf+0x614>
    1244:	03000713          	li	a4,48
    1248:	eee90423          	sb	a4,-280(s2)
    124c:	001b8b93          	addi	s7,s7,1
    1250:	00400713          	li	a4,4
    1254:	fceb92e3          	bne	s7,a4,1218 <ee_printf+0x564>
    1258:	0107f793          	andi	a5,a5,16
    125c:	02079e63          	bnez	a5,1298 <ee_printf+0x5e4>
    1260:	418d8bb3          	sub	s7,s11,s8
    1264:	00000a13          	li	s4,0
    1268:	018dc463          	blt	s11,s8,1270 <ee_printf+0x5bc>
    126c:	000b8a13          	mv	s4,s7
    1270:	000a8513          	mv	a0,s5
    1274:	000a0613          	mv	a2,s4
    1278:	02000593          	li	a1,32
    127c:	431020ef          	jal	ra,3eac <memset>
    1280:	014a8ab3          	add	s5,s5,s4
    1284:	00000793          	li	a5,0
    1288:	018dc463          	blt	s11,s8,1290 <ee_printf+0x5dc>
    128c:	417007b3          	neg	a5,s7
    1290:	fffd8693          	addi	a3,s11,-1
    1294:	00d78db3          	add	s11,a5,a3
    1298:	000a8513          	mv	a0,s5
    129c:	000c0613          	mv	a2,s8
    12a0:	01810593          	addi	a1,sp,24
    12a4:	2e1020ef          	jal	ra,3d84 <memcpy>
    12a8:	018a8833          	add	a6,s5,s8
    12ac:	00000a93          	li	s5,0
    12b0:	f58dc4e3          	blt	s11,s8,11f8 <ee_printf+0x544>
    12b4:	418d8ab3          	sub	s5,s11,s8
    12b8:	f41ff06f          	j	11f8 <ee_printf+0x544>
    12bc:	00000b93          	li	s7,0
    12c0:	00000d13          	li	s10,0
    12c4:	f69ff06f          	j	122c <ee_printf+0x578>
    12c8:	06300713          	li	a4,99
    12cc:	09975063          	bge	a4,s9,134c <ee_printf+0x698>
    12d0:	06400593          	li	a1,100
    12d4:	000c8513          	mv	a0,s9
    12d8:	00f12623          	sw	a5,12(sp)
    12dc:	1f5020ef          	jal	ra,3cd0 <__divsi3>
    12e0:	00a48533          	add	a0,s1,a0
    12e4:	00054583          	lbu	a1,0(a0)
    12e8:	000c8513          	mv	a0,s9
    12ec:	002d0d13          	addi	s10,s10,2
    12f0:	eeb90423          	sb	a1,-280(s2)
    12f4:	06400593          	li	a1,100
    12f8:	25d020ef          	jal	ra,3d54 <__modsi3>
    12fc:	13010793          	addi	a5,sp,304
    1300:	00a00593          	li	a1,10
    1304:	01878c33          	add	s8,a5,s8
    1308:	00050913          	mv	s2,a0
    130c:	1c5020ef          	jal	ra,3cd0 <__divsi3>
    1310:	00a48533          	add	a0,s1,a0
    1314:	00054583          	lbu	a1,0(a0)
    1318:	00090513          	mv	a0,s2
    131c:	eebc0423          	sb	a1,-280(s8)
    1320:	00a00593          	li	a1,10
    1324:	231020ef          	jal	ra,3d54 <__modsi3>
    1328:	00050c93          	mv	s9,a0
    132c:	00c12783          	lw	a5,12(sp)
    1330:	01948633          	add	a2,s1,s9
    1334:	00064603          	lbu	a2,0(a2)
    1338:	13010713          	addi	a4,sp,304
    133c:	01a705b3          	add	a1,a4,s10
    1340:	001d0c13          	addi	s8,s10,1
    1344:	eec58423          	sb	a2,-280(a1)
    1348:	f05ff06f          	j	124c <ee_printf+0x598>
    134c:	00900713          	li	a4,9
    1350:	ff9750e3          	bge	a4,s9,1330 <ee_printf+0x67c>
    1354:	00a00593          	li	a1,10
    1358:	000c8513          	mv	a0,s9
    135c:	00f12623          	sw	a5,12(sp)
    1360:	171020ef          	jal	ra,3cd0 <__divsi3>
    1364:	00a48533          	add	a0,s1,a0
    1368:	00054583          	lbu	a1,0(a0)
    136c:	000c8513          	mv	a0,s9
    1370:	000c0d13          	mv	s10,s8
    1374:	eeb90423          	sb	a1,-280(s2)
    1378:	00a00593          	li	a1,10
    137c:	1d9020ef          	jal	ra,3d54 <__modsi3>
    1380:	00050c93          	mv	s9,a0
    1384:	fa9ff06f          	j	132c <ee_printf+0x678>
    1388:	0027e793          	ori	a5,a5,2
    138c:	00a00613          	li	a2,10
    1390:	c09ff06f          	j	f98 <ee_printf+0x2e4>
    1394:	fff40413          	addi	s0,s0,-1
    1398:	c85ff06f          	j	101c <ee_printf+0x368>
    139c:	00800613          	li	a2,8
    13a0:	bf9ff06f          	j	f98 <ee_printf+0x2e4>
    13a4:	8ddff0ef          	jal	ra,c80 <uart_send_char>
    13a8:	00140413          	addi	s0,s0,1
    13ac:	999ff06f          	j	d44 <ee_printf+0x90>

000013b0 <core_init_state>:
    13b0:	00158593          	addi	a1,a1,1
    13b4:	fe010113          	addi	sp,sp,-32
    13b8:	01059593          	slli	a1,a1,0x10
    13bc:	00004337          	lui	t1,0x4
    13c0:	00004e37          	lui	t3,0x4
    13c4:	00004eb7          	lui	t4,0x4
    13c8:	00004f37          	lui	t5,0x4
    13cc:	00812e23          	sw	s0,28(sp)
    13d0:	00912c23          	sw	s1,24(sp)
    13d4:	01212a23          	sw	s2,20(sp)
    13d8:	01312823          	sw	s3,16(sp)
    13dc:	01412623          	sw	s4,12(sp)
    13e0:	00060813          	mv	a6,a2
    13e4:	fff50f93          	addi	t6,a0,-1
    13e8:	0105d593          	srli	a1,a1,0x10
    13ec:	00000713          	li	a4,0
    13f0:	00000793          	li	a5,0
    13f4:	00000693          	li	a3,0
    13f8:	02c00293          	li	t0,44
    13fc:	00700393          	li	t2,7
    1400:	12430313          	addi	t1,t1,292 # 4124 <errpat>
    1404:	00400413          	li	s0,4
    1408:	154e0e13          	addi	t3,t3,340 # 4154 <scipat>
    140c:	00100493          	li	s1,1
    1410:	134e8e93          	addi	t4,t4,308 # 4134 <floatpat>
    1414:	144f0f13          	addi	t5,t5,324 # 4144 <intpat>
    1418:	00f688b3          	add	a7,a3,a5
    141c:	00188993          	addi	s3,a7,1
    1420:	03f9ea63          	bltu	s3,t6,1454 <core_init_state+0xa4>
    1424:	00000613          	li	a2,0
    1428:	00d56463          	bltu	a0,a3,1430 <core_init_state+0x80>
    142c:	40d50633          	sub	a2,a0,a3
    1430:	01c12403          	lw	s0,28(sp)
    1434:	01812483          	lw	s1,24(sp)
    1438:	01412903          	lw	s2,20(sp)
    143c:	01012983          	lw	s3,16(sp)
    1440:	00c12a03          	lw	s4,12(sp)
    1444:	00000593          	li	a1,0
    1448:	00d80533          	add	a0,a6,a3
    144c:	02010113          	addi	sp,sp,32
    1450:	25d0206f          	j	3eac <memset>
    1454:	02078863          	beqz	a5,1484 <core_init_state+0xd4>
    1458:	00000613          	li	a2,0
    145c:	00c70933          	add	s2,a4,a2
    1460:	00094a03          	lbu	s4,0(s2)
    1464:	00c68933          	add	s2,a3,a2
    1468:	01280933          	add	s2,a6,s2
    146c:	01490023          	sb	s4,0(s2)
    1470:	00160613          	addi	a2,a2,1
    1474:	fec794e3          	bne	a5,a2,145c <core_init_state+0xac>
    1478:	011808b3          	add	a7,a6,a7
    147c:	00588023          	sb	t0,0(a7)
    1480:	00098693          	mv	a3,s3
    1484:	0015d793          	srli	a5,a1,0x1
    1488:	0075f713          	andi	a4,a1,7
    148c:	00c7f793          	andi	a5,a5,12
    1490:	04770663          	beq	a4,t2,14dc <core_init_state+0x12c>
    1494:	04e46063          	bltu	s0,a4,14d4 <core_init_state+0x124>
    1498:	ffd70713          	addi	a4,a4,-3
    149c:	01071713          	slli	a4,a4,0x10
    14a0:	01075713          	srli	a4,a4,0x10
    14a4:	02e4f063          	bgeu	s1,a4,14c4 <core_init_state+0x114>
    14a8:	00ff07b3          	add	a5,t5,a5
    14ac:	0007a703          	lw	a4,0(a5)
    14b0:	00400793          	li	a5,4
    14b4:	00158593          	addi	a1,a1,1
    14b8:	01059593          	slli	a1,a1,0x10
    14bc:	0105d593          	srli	a1,a1,0x10
    14c0:	f59ff06f          	j	1418 <core_init_state+0x68>
    14c4:	00fe87b3          	add	a5,t4,a5
    14c8:	0007a703          	lw	a4,0(a5)
    14cc:	00800793          	li	a5,8
    14d0:	fe5ff06f          	j	14b4 <core_init_state+0x104>
    14d4:	00fe07b3          	add	a5,t3,a5
    14d8:	ff1ff06f          	j	14c8 <core_init_state+0x118>
    14dc:	00f307b3          	add	a5,t1,a5
    14e0:	fe9ff06f          	j	14c8 <core_init_state+0x118>

000014e4 <core_state_transition>:
    14e4:	000048b7          	lui	a7,0x4
    14e8:	00052703          	lw	a4,0(a0)
    14ec:	00050813          	mv	a6,a0
    14f0:	00100e13          	li	t3,1
    14f4:	00000513          	li	a0,0
    14f8:	02c00e93          	li	t4,44
    14fc:	00700f13          	li	t5,7
    1500:	05488893          	addi	a7,a7,84 # 4054 <__etext+0xcc>
    1504:	00900613          	li	a2,9
    1508:	04500f93          	li	t6,69
    150c:	02e00313          	li	t1,46
    1510:	00074783          	lbu	a5,0(a4)
    1514:	00078463          	beqz	a5,151c <core_state_transition+0x38>
    1518:	01c51663          	bne	a0,t3,1524 <core_state_transition+0x40>
    151c:	00e82023          	sw	a4,0(a6) # ffff8000 <__ctr0_io_space_begin+0xffff8200>
    1520:	00008067          	ret
    1524:	00170713          	addi	a4,a4,1
    1528:	ffd78ae3          	beq	a5,t4,151c <core_state_transition+0x38>
    152c:	feaf62e3          	bltu	t5,a0,1510 <core_state_transition+0x2c>
    1530:	00251693          	slli	a3,a0,0x2
    1534:	011686b3          	add	a3,a3,a7
    1538:	0006a683          	lw	a3,0(a3)
    153c:	00068067          	jr	a3
    1540:	fd078693          	addi	a3,a5,-48
    1544:	0ff6f693          	andi	a3,a3,255
    1548:	00400513          	li	a0,4
    154c:	02d67663          	bgeu	a2,a3,1578 <core_state_transition+0x94>
    1550:	fd578693          	addi	a3,a5,-43
    1554:	0fd6f693          	andi	a3,a3,253
    1558:	00200513          	li	a0,2
    155c:	00068e63          	beqz	a3,1578 <core_state_transition+0x94>
    1560:	00500513          	li	a0,5
    1564:	00678a63          	beq	a5,t1,1578 <core_state_transition+0x94>
    1568:	0045a783          	lw	a5,4(a1)
    156c:	00100513          	li	a0,1
    1570:	00178793          	addi	a5,a5,1
    1574:	00f5a223          	sw	a5,4(a1)
    1578:	0005a783          	lw	a5,0(a1)
    157c:	00178793          	addi	a5,a5,1
    1580:	00f5a023          	sw	a5,0(a1)
    1584:	f8dff06f          	j	1510 <core_state_transition+0x2c>
    1588:	0085a683          	lw	a3,8(a1)
    158c:	fd078513          	addi	a0,a5,-48
    1590:	0ff57513          	andi	a0,a0,255
    1594:	00168693          	addi	a3,a3,1
    1598:	00a67a63          	bgeu	a2,a0,15ac <core_state_transition+0xc8>
    159c:	00679e63          	bne	a5,t1,15b8 <core_state_transition+0xd4>
    15a0:	00d5a423          	sw	a3,8(a1)
    15a4:	00500513          	li	a0,5
    15a8:	f69ff06f          	j	1510 <core_state_transition+0x2c>
    15ac:	00d5a423          	sw	a3,8(a1)
    15b0:	00400513          	li	a0,4
    15b4:	f5dff06f          	j	1510 <core_state_transition+0x2c>
    15b8:	00d5a423          	sw	a3,8(a1)
    15bc:	00100513          	li	a0,1
    15c0:	f51ff06f          	j	1510 <core_state_transition+0x2c>
    15c4:	00679a63          	bne	a5,t1,15d8 <core_state_transition+0xf4>
    15c8:	0105a783          	lw	a5,16(a1)
    15cc:	00178793          	addi	a5,a5,1
    15d0:	00f5a823          	sw	a5,16(a1)
    15d4:	fd1ff06f          	j	15a4 <core_state_transition+0xc0>
    15d8:	fd078793          	addi	a5,a5,-48
    15dc:	0ff7f793          	andi	a5,a5,255
    15e0:	f2f678e3          	bgeu	a2,a5,1510 <core_state_transition+0x2c>
    15e4:	0105a783          	lw	a5,16(a1)
    15e8:	00178793          	addi	a5,a5,1
    15ec:	00f5a823          	sw	a5,16(a1)
    15f0:	fcdff06f          	j	15bc <core_state_transition+0xd8>
    15f4:	0df7f693          	andi	a3,a5,223
    15f8:	01f69c63          	bne	a3,t6,1610 <core_state_transition+0x12c>
    15fc:	0145a783          	lw	a5,20(a1)
    1600:	00300513          	li	a0,3
    1604:	00178793          	addi	a5,a5,1
    1608:	00f5aa23          	sw	a5,20(a1)
    160c:	f05ff06f          	j	1510 <core_state_transition+0x2c>
    1610:	fd078793          	addi	a5,a5,-48
    1614:	0ff7f793          	andi	a5,a5,255
    1618:	eef67ce3          	bgeu	a2,a5,1510 <core_state_transition+0x2c>
    161c:	0145a783          	lw	a5,20(a1)
    1620:	00178793          	addi	a5,a5,1
    1624:	00f5aa23          	sw	a5,20(a1)
    1628:	f95ff06f          	j	15bc <core_state_transition+0xd8>
    162c:	00c5a683          	lw	a3,12(a1)
    1630:	fd578793          	addi	a5,a5,-43
    1634:	0fd7f793          	andi	a5,a5,253
    1638:	00168693          	addi	a3,a3,1
    163c:	00d5a623          	sw	a3,12(a1)
    1640:	00600513          	li	a0,6
    1644:	f6079ce3          	bnez	a5,15bc <core_state_transition+0xd8>
    1648:	ec9ff06f          	j	1510 <core_state_transition+0x2c>
    164c:	0185a683          	lw	a3,24(a1)
    1650:	fd078793          	addi	a5,a5,-48
    1654:	0ff7f793          	andi	a5,a5,255
    1658:	00168693          	addi	a3,a3,1
    165c:	00d5ac23          	sw	a3,24(a1)
    1660:	00700513          	li	a0,7
    1664:	eaf676e3          	bgeu	a2,a5,1510 <core_state_transition+0x2c>
    1668:	f55ff06f          	j	15bc <core_state_transition+0xd8>
    166c:	fd078793          	addi	a5,a5,-48
    1670:	0ff7f793          	andi	a5,a5,255
    1674:	e8f67ee3          	bgeu	a2,a5,1510 <core_state_transition+0x2c>
    1678:	0045a783          	lw	a5,4(a1)
    167c:	00178793          	addi	a5,a5,1
    1680:	00f5a223          	sw	a5,4(a1)
    1684:	f39ff06f          	j	15bc <core_state_transition+0xd8>

00001688 <core_bench_state>:
    1688:	f9010113          	addi	sp,sp,-112
    168c:	06812423          	sw	s0,104(sp)
    1690:	07212023          	sw	s2,96(sp)
    1694:	05512a23          	sw	s5,84(sp)
    1698:	00b12623          	sw	a1,12(sp)
    169c:	00050913          	mv	s2,a0
    16a0:	00058413          	mv	s0,a1
    16a4:	00060a93          	mv	s5,a2
    16a8:	00000593          	li	a1,0
    16ac:	02000613          	li	a2,32
    16b0:	03010513          	addi	a0,sp,48
    16b4:	06912223          	sw	s1,100(sp)
    16b8:	05312e23          	sw	s3,92(sp)
    16bc:	05412c23          	sw	s4,88(sp)
    16c0:	06112623          	sw	ra,108(sp)
    16c4:	00068a13          	mv	s4,a3
    16c8:	00070993          	mv	s3,a4
    16cc:	00078493          	mv	s1,a5
    16d0:	7dc020ef          	jal	ra,3eac <memset>
    16d4:	02000613          	li	a2,32
    16d8:	00000593          	li	a1,0
    16dc:	01010513          	addi	a0,sp,16
    16e0:	7cc020ef          	jal	ra,3eac <memset>
    16e4:	00c12783          	lw	a5,12(sp)
    16e8:	0007c783          	lbu	a5,0(a5)
    16ec:	08079c63          	bnez	a5,1784 <core_bench_state+0xfc>
    16f0:	00812623          	sw	s0,12(sp)
    16f4:	01240933          	add	s2,s0,s2
    16f8:	02c00693          	li	a3,44
    16fc:	00c12703          	lw	a4,12(sp)
    1700:	0b276663          	bltu	a4,s2,17ac <core_bench_state+0x124>
    1704:	00812623          	sw	s0,12(sp)
    1708:	00c12783          	lw	a5,12(sp)
    170c:	0007c783          	lbu	a5,0(a5)
    1710:	0a079e63          	bnez	a5,17cc <core_bench_state+0x144>
    1714:	00812623          	sw	s0,12(sp)
    1718:	02c00693          	li	a3,44
    171c:	00c12703          	lw	a4,12(sp)
    1720:	0d276a63          	bltu	a4,s2,17f4 <core_bench_state+0x16c>
    1724:	00000413          	li	s0,0
    1728:	02000913          	li	s2,32
    172c:	01010793          	addi	a5,sp,16
    1730:	008787b3          	add	a5,a5,s0
    1734:	0007a503          	lw	a0,0(a5)
    1738:	00048593          	mv	a1,s1
    173c:	a60ff0ef          	jal	ra,99c <crcu32>
    1740:	03010793          	addi	a5,sp,48
    1744:	008787b3          	add	a5,a5,s0
    1748:	00050593          	mv	a1,a0
    174c:	0007a503          	lw	a0,0(a5)
    1750:	00440413          	addi	s0,s0,4
    1754:	a48ff0ef          	jal	ra,99c <crcu32>
    1758:	00050493          	mv	s1,a0
    175c:	fd2418e3          	bne	s0,s2,172c <core_bench_state+0xa4>
    1760:	06c12083          	lw	ra,108(sp)
    1764:	06812403          	lw	s0,104(sp)
    1768:	06412483          	lw	s1,100(sp)
    176c:	06012903          	lw	s2,96(sp)
    1770:	05c12983          	lw	s3,92(sp)
    1774:	05812a03          	lw	s4,88(sp)
    1778:	05412a83          	lw	s5,84(sp)
    177c:	07010113          	addi	sp,sp,112
    1780:	00008067          	ret
    1784:	03010593          	addi	a1,sp,48
    1788:	00c10513          	addi	a0,sp,12
    178c:	d59ff0ef          	jal	ra,14e4 <core_state_transition>
    1790:	05010713          	addi	a4,sp,80
    1794:	00251793          	slli	a5,a0,0x2
    1798:	00f707b3          	add	a5,a4,a5
    179c:	fc07a703          	lw	a4,-64(a5)
    17a0:	00170713          	addi	a4,a4,1
    17a4:	fce7a023          	sw	a4,-64(a5)
    17a8:	f3dff06f          	j	16e4 <core_bench_state+0x5c>
    17ac:	00074783          	lbu	a5,0(a4)
    17b0:	00d78663          	beq	a5,a3,17bc <core_bench_state+0x134>
    17b4:	0157c7b3          	xor	a5,a5,s5
    17b8:	00f70023          	sb	a5,0(a4)
    17bc:	00c12783          	lw	a5,12(sp)
    17c0:	013787b3          	add	a5,a5,s3
    17c4:	00f12623          	sw	a5,12(sp)
    17c8:	f35ff06f          	j	16fc <core_bench_state+0x74>
    17cc:	03010593          	addi	a1,sp,48
    17d0:	00c10513          	addi	a0,sp,12
    17d4:	d11ff0ef          	jal	ra,14e4 <core_state_transition>
    17d8:	05010793          	addi	a5,sp,80
    17dc:	00251513          	slli	a0,a0,0x2
    17e0:	00a78533          	add	a0,a5,a0
    17e4:	fc052783          	lw	a5,-64(a0)
    17e8:	00178793          	addi	a5,a5,1
    17ec:	fcf52023          	sw	a5,-64(a0)
    17f0:	f19ff06f          	j	1708 <core_bench_state+0x80>
    17f4:	00074783          	lbu	a5,0(a4)
    17f8:	00d78663          	beq	a5,a3,1804 <core_bench_state+0x17c>
    17fc:	0147c7b3          	xor	a5,a5,s4
    1800:	00f70023          	sb	a5,0(a4)
    1804:	00c12783          	lw	a5,12(sp)
    1808:	013787b3          	add	a5,a5,s3
    180c:	00f12623          	sw	a5,12(sp)
    1810:	f0dff06f          	j	171c <core_bench_state+0x94>

00001814 <cmp_idx>:
    1814:	02061e63          	bnez	a2,1850 <cmp_idx+0x3c>
    1818:	00051783          	lh	a5,0(a0)
    181c:	f007f713          	andi	a4,a5,-256
    1820:	01079793          	slli	a5,a5,0x10
    1824:	0107d793          	srli	a5,a5,0x10
    1828:	0087d793          	srli	a5,a5,0x8
    182c:	00f767b3          	or	a5,a4,a5
    1830:	00f51023          	sh	a5,0(a0)
    1834:	00059783          	lh	a5,0(a1)
    1838:	f007f713          	andi	a4,a5,-256
    183c:	01079793          	slli	a5,a5,0x10
    1840:	0107d793          	srli	a5,a5,0x10
    1844:	0087d793          	srli	a5,a5,0x8
    1848:	00f767b3          	or	a5,a4,a5
    184c:	00f59023          	sh	a5,0(a1)
    1850:	00251503          	lh	a0,2(a0)
    1854:	00259783          	lh	a5,2(a1)
    1858:	40f50533          	sub	a0,a0,a5
    185c:	00008067          	ret

00001860 <calc_func>:
    1860:	fe010113          	addi	sp,sp,-32
    1864:	00912a23          	sw	s1,20(sp)
    1868:	00051483          	lh	s1,0(a0)
    186c:	00112e23          	sw	ra,28(sp)
    1870:	00812c23          	sw	s0,24(sp)
    1874:	4074d793          	srai	a5,s1,0x7
    1878:	01212823          	sw	s2,16(sp)
    187c:	01312623          	sw	s3,12(sp)
    1880:	0017f793          	andi	a5,a5,1
    1884:	02078263          	beqz	a5,18a8 <calc_func+0x48>
    1888:	07f4f513          	andi	a0,s1,127
    188c:	01c12083          	lw	ra,28(sp)
    1890:	01812403          	lw	s0,24(sp)
    1894:	01412483          	lw	s1,20(sp)
    1898:	01012903          	lw	s2,16(sp)
    189c:	00c12983          	lw	s3,12(sp)
    18a0:	02010113          	addi	sp,sp,32
    18a4:	00008067          	ret
    18a8:	00058413          	mv	s0,a1
    18ac:	4034d593          	srai	a1,s1,0x3
    18b0:	00f5f793          	andi	a5,a1,15
    18b4:	00479593          	slli	a1,a5,0x4
    18b8:	0074f713          	andi	a4,s1,7
    18bc:	00f5e5b3          	or	a1,a1,a5
    18c0:	00050993          	mv	s3,a0
    18c4:	03845783          	lhu	a5,56(s0)
    18c8:	02070a63          	beqz	a4,18fc <calc_func+0x9c>
    18cc:	00100693          	li	a3,1
    18d0:	00048913          	mv	s2,s1
    18d4:	06d71263          	bne	a4,a3,1938 <calc_func+0xd8>
    18d8:	00078613          	mv	a2,a5
    18dc:	02840513          	addi	a0,s0,40
    18e0:	298010ef          	jal	ra,2b78 <core_bench_matrix>
    18e4:	03c45783          	lhu	a5,60(s0)
    18e8:	01051913          	slli	s2,a0,0x10
    18ec:	41095913          	srai	s2,s2,0x10
    18f0:	04079463          	bnez	a5,1938 <calc_func+0xd8>
    18f4:	02a41e23          	sh	a0,60(s0)
    18f8:	0400006f          	j	1938 <calc_func+0xd8>
    18fc:	02200693          	li	a3,34
    1900:	00058713          	mv	a4,a1
    1904:	00d5d463          	bge	a1,a3,190c <calc_func+0xac>
    1908:	02200713          	li	a4,34
    190c:	00241683          	lh	a3,2(s0)
    1910:	00041603          	lh	a2,0(s0)
    1914:	01442583          	lw	a1,20(s0)
    1918:	01842503          	lw	a0,24(s0)
    191c:	0ff77713          	andi	a4,a4,255
    1920:	d69ff0ef          	jal	ra,1688 <core_bench_state>
    1924:	03e45783          	lhu	a5,62(s0)
    1928:	01051913          	slli	s2,a0,0x10
    192c:	41095913          	srai	s2,s2,0x10
    1930:	00079463          	bnez	a5,1938 <calc_func+0xd8>
    1934:	02a41f23          	sh	a0,62(s0)
    1938:	03845583          	lhu	a1,56(s0)
    193c:	01091513          	slli	a0,s2,0x10
    1940:	01055513          	srli	a0,a0,0x10
    1944:	828ff0ef          	jal	ra,96c <crcu16>
    1948:	02a41c23          	sh	a0,56(s0)
    194c:	f004f493          	andi	s1,s1,-256
    1950:	07f97513          	andi	a0,s2,127
    1954:	009564b3          	or	s1,a0,s1
    1958:	0804e493          	ori	s1,s1,128
    195c:	00999023          	sh	s1,0(s3)
    1960:	f2dff06f          	j	188c <calc_func+0x2c>

00001964 <cmp_complex>:
    1964:	fe010113          	addi	sp,sp,-32
    1968:	00912a23          	sw	s1,20(sp)
    196c:	00058493          	mv	s1,a1
    1970:	00060593          	mv	a1,a2
    1974:	00112e23          	sw	ra,28(sp)
    1978:	00812c23          	sw	s0,24(sp)
    197c:	00c12623          	sw	a2,12(sp)
    1980:	ee1ff0ef          	jal	ra,1860 <calc_func>
    1984:	00c12583          	lw	a1,12(sp)
    1988:	00050413          	mv	s0,a0
    198c:	00048513          	mv	a0,s1
    1990:	ed1ff0ef          	jal	ra,1860 <calc_func>
    1994:	01c12083          	lw	ra,28(sp)
    1998:	40a40533          	sub	a0,s0,a0
    199c:	01812403          	lw	s0,24(sp)
    19a0:	01412483          	lw	s1,20(sp)
    19a4:	02010113          	addi	sp,sp,32
    19a8:	00008067          	ret

000019ac <core_list_insert_new>:
    19ac:	00050813          	mv	a6,a0
    19b0:	00062503          	lw	a0,0(a2)
    19b4:	00850893          	addi	a7,a0,8
    19b8:	04e8f463          	bgeu	a7,a4,1a00 <core_list_insert_new+0x54>
    19bc:	0006a703          	lw	a4,0(a3)
    19c0:	00470313          	addi	t1,a4,4
    19c4:	02f37e63          	bgeu	t1,a5,1a00 <core_list_insert_new+0x54>
    19c8:	01162023          	sw	a7,0(a2)
    19cc:	00082783          	lw	a5,0(a6)
    19d0:	00f52023          	sw	a5,0(a0)
    19d4:	00a82023          	sw	a0,0(a6)
    19d8:	00e52223          	sw	a4,4(a0)
    19dc:	0006a783          	lw	a5,0(a3)
    19e0:	00059703          	lh	a4,0(a1)
    19e4:	00478793          	addi	a5,a5,4
    19e8:	00f6a023          	sw	a5,0(a3)
    19ec:	00452783          	lw	a5,4(a0)
    19f0:	00e79023          	sh	a4,0(a5)
    19f4:	00259703          	lh	a4,2(a1)
    19f8:	00e79123          	sh	a4,2(a5)
    19fc:	00008067          	ret
    1a00:	00000513          	li	a0,0
    1a04:	00008067          	ret

00001a08 <core_list_remove>:
    1a08:	00050793          	mv	a5,a0
    1a0c:	00052503          	lw	a0,0(a0)
    1a10:	0047a703          	lw	a4,4(a5)
    1a14:	00452683          	lw	a3,4(a0)
    1a18:	00d7a223          	sw	a3,4(a5)
    1a1c:	00e52223          	sw	a4,4(a0)
    1a20:	00052703          	lw	a4,0(a0)
    1a24:	00e7a023          	sw	a4,0(a5)
    1a28:	00052023          	sw	zero,0(a0)
    1a2c:	00008067          	ret

00001a30 <core_list_find>:
    1a30:	00259783          	lh	a5,2(a1)
    1a34:	0207d063          	bgez	a5,1a54 <core_list_find+0x24>
    1a38:	00050a63          	beqz	a0,1a4c <core_list_find+0x1c>
    1a3c:	00452783          	lw	a5,4(a0)
    1a40:	0007c703          	lbu	a4,0(a5)
    1a44:	00059783          	lh	a5,0(a1)
    1a48:	02f71063          	bne	a4,a5,1a68 <core_list_find+0x38>
    1a4c:	00008067          	ret
    1a50:	00052503          	lw	a0,0(a0)
    1a54:	fe050ce3          	beqz	a0,1a4c <core_list_find+0x1c>
    1a58:	00452703          	lw	a4,4(a0)
    1a5c:	00271703          	lh	a4,2(a4)
    1a60:	fef718e3          	bne	a4,a5,1a50 <core_list_find+0x20>
    1a64:	00008067          	ret
    1a68:	00052503          	lw	a0,0(a0)
    1a6c:	fcdff06f          	j	1a38 <core_list_find+0x8>

00001a70 <core_list_reverse>:
    1a70:	00050793          	mv	a5,a0
    1a74:	00000513          	li	a0,0
    1a78:	00079463          	bnez	a5,1a80 <core_list_reverse+0x10>
    1a7c:	00008067          	ret
    1a80:	0007a703          	lw	a4,0(a5)
    1a84:	00a7a023          	sw	a0,0(a5)
    1a88:	00078513          	mv	a0,a5
    1a8c:	00070793          	mv	a5,a4
    1a90:	fe9ff06f          	j	1a78 <core_list_reverse+0x8>

00001a94 <core_list_mergesort>:
    1a94:	fd010113          	addi	sp,sp,-48
    1a98:	01312e23          	sw	s3,28(sp)
    1a9c:	01512a23          	sw	s5,20(sp)
    1aa0:	01712623          	sw	s7,12(sp)
    1aa4:	01812423          	sw	s8,8(sp)
    1aa8:	01a12023          	sw	s10,0(sp)
    1aac:	02112623          	sw	ra,44(sp)
    1ab0:	02812423          	sw	s0,40(sp)
    1ab4:	02912223          	sw	s1,36(sp)
    1ab8:	03212023          	sw	s2,32(sp)
    1abc:	01412c23          	sw	s4,24(sp)
    1ac0:	01612823          	sw	s6,16(sp)
    1ac4:	01912223          	sw	s9,4(sp)
    1ac8:	00058b93          	mv	s7,a1
    1acc:	00060c13          	mv	s8,a2
    1ad0:	00050993          	mv	s3,a0
    1ad4:	00100a93          	li	s5,1
    1ad8:	00100d13          	li	s10,1
    1adc:	00098493          	mv	s1,s3
    1ae0:	00000c93          	li	s9,0
    1ae4:	00000b13          	li	s6,0
    1ae8:	00000993          	li	s3,0
    1aec:	00049a63          	bnez	s1,1b00 <core_list_mergesort+0x6c>
    1af0:	000b2023          	sw	zero,0(s6)
    1af4:	099d5a63          	bge	s10,s9,1b88 <core_list_mergesort+0xf4>
    1af8:	001a9a93          	slli	s5,s5,0x1
    1afc:	fe1ff06f          	j	1adc <core_list_mergesort+0x48>
    1b00:	001c8c93          	addi	s9,s9,1
    1b04:	00048413          	mv	s0,s1
    1b08:	00000913          	li	s2,0
    1b0c:	00042403          	lw	s0,0(s0)
    1b10:	00190913          	addi	s2,s2,1
    1b14:	00041e63          	bnez	s0,1b30 <core_list_mergesort+0x9c>
    1b18:	000a8a13          	mv	s4,s5
    1b1c:	00091e63          	bnez	s2,1b38 <core_list_mergesort+0xa4>
    1b20:	000a0463          	beqz	s4,1b28 <core_list_mergesort+0x94>
    1b24:	04041663          	bnez	s0,1b70 <core_list_mergesort+0xdc>
    1b28:	00040493          	mv	s1,s0
    1b2c:	fc1ff06f          	j	1aec <core_list_mergesort+0x58>
    1b30:	fd2a9ee3          	bne	s5,s2,1b0c <core_list_mergesort+0x78>
    1b34:	fe5ff06f          	j	1b18 <core_list_mergesort+0x84>
    1b38:	000a0463          	beqz	s4,1b40 <core_list_mergesort+0xac>
    1b3c:	02041063          	bnez	s0,1b5c <core_list_mergesort+0xc8>
    1b40:	00048793          	mv	a5,s1
    1b44:	0004a483          	lw	s1,0(s1)
    1b48:	fff90913          	addi	s2,s2,-1
    1b4c:	020b0a63          	beqz	s6,1b80 <core_list_mergesort+0xec>
    1b50:	00fb2023          	sw	a5,0(s6)
    1b54:	00078b13          	mv	s6,a5
    1b58:	fc5ff06f          	j	1b1c <core_list_mergesort+0x88>
    1b5c:	00442583          	lw	a1,4(s0)
    1b60:	0044a503          	lw	a0,4(s1)
    1b64:	000c0613          	mv	a2,s8
    1b68:	000b80e7          	jalr	s7
    1b6c:	fca05ae3          	blez	a0,1b40 <core_list_mergesort+0xac>
    1b70:	00040793          	mv	a5,s0
    1b74:	fffa0a13          	addi	s4,s4,-1
    1b78:	00042403          	lw	s0,0(s0)
    1b7c:	fd1ff06f          	j	1b4c <core_list_mergesort+0xb8>
    1b80:	00078993          	mv	s3,a5
    1b84:	fd1ff06f          	j	1b54 <core_list_mergesort+0xc0>
    1b88:	02c12083          	lw	ra,44(sp)
    1b8c:	02812403          	lw	s0,40(sp)
    1b90:	02412483          	lw	s1,36(sp)
    1b94:	02012903          	lw	s2,32(sp)
    1b98:	01812a03          	lw	s4,24(sp)
    1b9c:	01412a83          	lw	s5,20(sp)
    1ba0:	01012b03          	lw	s6,16(sp)
    1ba4:	00c12b83          	lw	s7,12(sp)
    1ba8:	00812c03          	lw	s8,8(sp)
    1bac:	00412c83          	lw	s9,4(sp)
    1bb0:	00012d03          	lw	s10,0(sp)
    1bb4:	00098513          	mv	a0,s3
    1bb8:	01c12983          	lw	s3,28(sp)
    1bbc:	03010113          	addi	sp,sp,48
    1bc0:	00008067          	ret

00001bc4 <core_bench_list>:
    1bc4:	fb010113          	addi	sp,sp,-80
    1bc8:	04812423          	sw	s0,72(sp)
    1bcc:	03612823          	sw	s6,48(sp)
    1bd0:	02452403          	lw	s0,36(a0)
    1bd4:	00451b03          	lh	s6,4(a0)
    1bd8:	04912223          	sw	s1,68(sp)
    1bdc:	05212023          	sw	s2,64(sp)
    1be0:	03412c23          	sw	s4,56(sp)
    1be4:	03512a23          	sw	s5,52(sp)
    1be8:	03712623          	sw	s7,44(sp)
    1bec:	04112623          	sw	ra,76(sp)
    1bf0:	03312e23          	sw	s3,60(sp)
    1bf4:	00050613          	mv	a2,a0
    1bf8:	00058a13          	mv	s4,a1
    1bfc:	00b11f23          	sh	a1,30(sp)
    1c00:	00000b93          	li	s7,0
    1c04:	00000a93          	li	s5,0
    1c08:	00000913          	li	s2,0
    1c0c:	00000493          	li	s1,0
    1c10:	0d6bc463          	blt	s7,s6,1cd8 <core_bench_list+0x114>
    1c14:	00291913          	slli	s2,s2,0x2
    1c18:	41590933          	sub	s2,s2,s5
    1c1c:	012484b3          	add	s1,s1,s2
    1c20:	01049493          	slli	s1,s1,0x10
    1c24:	0104d493          	srli	s1,s1,0x10
    1c28:	01405c63          	blez	s4,1c40 <core_bench_list+0x7c>
    1c2c:	000025b7          	lui	a1,0x2
    1c30:	00040513          	mv	a0,s0
    1c34:	96458593          	addi	a1,a1,-1692 # 1964 <cmp_complex>
    1c38:	e5dff0ef          	jal	ra,1a94 <core_list_mergesort>
    1c3c:	00050413          	mv	s0,a0
    1c40:	00042503          	lw	a0,0(s0)
    1c44:	dc5ff0ef          	jal	ra,1a08 <core_list_remove>
    1c48:	00050993          	mv	s3,a0
    1c4c:	01c10593          	addi	a1,sp,28
    1c50:	00040513          	mv	a0,s0
    1c54:	dddff0ef          	jal	ra,1a30 <core_list_find>
    1c58:	00050913          	mv	s2,a0
    1c5c:	14051263          	bnez	a0,1da0 <core_bench_list+0x1dc>
    1c60:	00042903          	lw	s2,0(s0)
    1c64:	12091e63          	bnez	s2,1da0 <core_bench_list+0x1dc>
    1c68:	00042783          	lw	a5,0(s0)
    1c6c:	0049a703          	lw	a4,4(s3)
    1c70:	000025b7          	lui	a1,0x2
    1c74:	0047a683          	lw	a3,4(a5)
    1c78:	00040513          	mv	a0,s0
    1c7c:	00000613          	li	a2,0
    1c80:	00d9a223          	sw	a3,4(s3)
    1c84:	00e7a223          	sw	a4,4(a5)
    1c88:	0007a703          	lw	a4,0(a5)
    1c8c:	81458593          	addi	a1,a1,-2028 # 1814 <cmp_idx>
    1c90:	00e9a023          	sw	a4,0(s3)
    1c94:	0137a023          	sw	s3,0(a5)
    1c98:	dfdff0ef          	jal	ra,1a94 <core_list_mergesort>
    1c9c:	00052903          	lw	s2,0(a0)
    1ca0:	00050413          	mv	s0,a0
    1ca4:	10091c63          	bnez	s2,1dbc <core_bench_list+0x1f8>
    1ca8:	04c12083          	lw	ra,76(sp)
    1cac:	04812403          	lw	s0,72(sp)
    1cb0:	04012903          	lw	s2,64(sp)
    1cb4:	03c12983          	lw	s3,60(sp)
    1cb8:	03812a03          	lw	s4,56(sp)
    1cbc:	03412a83          	lw	s5,52(sp)
    1cc0:	03012b03          	lw	s6,48(sp)
    1cc4:	02c12b83          	lw	s7,44(sp)
    1cc8:	00048513          	mv	a0,s1
    1ccc:	04412483          	lw	s1,68(sp)
    1cd0:	05010113          	addi	sp,sp,80
    1cd4:	00008067          	ret
    1cd8:	0ffbf793          	andi	a5,s7,255
    1cdc:	01c10593          	addi	a1,sp,28
    1ce0:	00040513          	mv	a0,s0
    1ce4:	00c12623          	sw	a2,12(sp)
    1ce8:	00f11e23          	sh	a5,28(sp)
    1cec:	d45ff0ef          	jal	ra,1a30 <core_list_find>
    1cf0:	00050993          	mv	s3,a0
    1cf4:	00040513          	mv	a0,s0
    1cf8:	d79ff0ef          	jal	ra,1a70 <core_list_reverse>
    1cfc:	00c12603          	lw	a2,12(sp)
    1d00:	00050413          	mv	s0,a0
    1d04:	04099663          	bnez	s3,1d50 <core_bench_list+0x18c>
    1d08:	00052783          	lw	a5,0(a0)
    1d0c:	001a8a93          	addi	s5,s5,1
    1d10:	010a9a93          	slli	s5,s5,0x10
    1d14:	0047a783          	lw	a5,4(a5)
    1d18:	010ada93          	srli	s5,s5,0x10
    1d1c:	00178783          	lb	a5,1(a5)
    1d20:	0017f793          	andi	a5,a5,1
    1d24:	00f484b3          	add	s1,s1,a5
    1d28:	01049493          	slli	s1,s1,0x10
    1d2c:	0104d493          	srli	s1,s1,0x10
    1d30:	01e11783          	lh	a5,30(sp)
    1d34:	0007c663          	bltz	a5,1d40 <core_bench_list+0x17c>
    1d38:	00178793          	addi	a5,a5,1
    1d3c:	00f11f23          	sh	a5,30(sp)
    1d40:	001b8793          	addi	a5,s7,1
    1d44:	01079b93          	slli	s7,a5,0x10
    1d48:	410bdb93          	srai	s7,s7,0x10
    1d4c:	ec5ff06f          	j	1c10 <core_bench_list+0x4c>
    1d50:	0049a703          	lw	a4,4(s3)
    1d54:	00190913          	addi	s2,s2,1
    1d58:	01091913          	slli	s2,s2,0x10
    1d5c:	00071783          	lh	a5,0(a4)
    1d60:	01095913          	srli	s2,s2,0x10
    1d64:	0017f713          	andi	a4,a5,1
    1d68:	00070c63          	beqz	a4,1d80 <core_bench_list+0x1bc>
    1d6c:	4097d793          	srai	a5,a5,0x9
    1d70:	0017f793          	andi	a5,a5,1
    1d74:	00f484b3          	add	s1,s1,a5
    1d78:	01049493          	slli	s1,s1,0x10
    1d7c:	0104d493          	srli	s1,s1,0x10
    1d80:	0009a783          	lw	a5,0(s3)
    1d84:	fa0786e3          	beqz	a5,1d30 <core_bench_list+0x16c>
    1d88:	0007a703          	lw	a4,0(a5)
    1d8c:	00e9a023          	sw	a4,0(s3)
    1d90:	00042703          	lw	a4,0(s0)
    1d94:	00e7a023          	sw	a4,0(a5)
    1d98:	00f42023          	sw	a5,0(s0)
    1d9c:	f95ff06f          	j	1d30 <core_bench_list+0x16c>
    1da0:	00442783          	lw	a5,4(s0)
    1da4:	00048593          	mv	a1,s1
    1da8:	00079503          	lh	a0,0(a5)
    1dac:	c25fe0ef          	jal	ra,9d0 <crc16>
    1db0:	00050493          	mv	s1,a0
    1db4:	00092903          	lw	s2,0(s2)
    1db8:	eadff06f          	j	1c64 <core_bench_list+0xa0>
    1dbc:	00442783          	lw	a5,4(s0)
    1dc0:	00048593          	mv	a1,s1
    1dc4:	00079503          	lh	a0,0(a5)
    1dc8:	c09fe0ef          	jal	ra,9d0 <crc16>
    1dcc:	00050493          	mv	s1,a0
    1dd0:	00092903          	lw	s2,0(s2)
    1dd4:	ed1ff06f          	j	1ca4 <core_bench_list+0xe0>

00001dd8 <core_list_init>:
    1dd8:	fc010113          	addi	sp,sp,-64
    1ddc:	02812c23          	sw	s0,56(sp)
    1de0:	00058413          	mv	s0,a1
    1de4:	01400593          	li	a1,20
    1de8:	02112e23          	sw	ra,60(sp)
    1dec:	02912a23          	sw	s1,52(sp)
    1df0:	03212823          	sw	s2,48(sp)
    1df4:	03312623          	sw	s3,44(sp)
    1df8:	03412423          	sw	s4,40(sp)
    1dfc:	03512223          	sw	s5,36(sp)
    1e00:	00060913          	mv	s2,a2
    1e04:	6d5010ef          	jal	ra,3cd8 <__udivsi3>
    1e08:	ffe50993          	addi	s3,a0,-2
    1e0c:	00399493          	slli	s1,s3,0x3
    1e10:	009404b3          	add	s1,s0,s1
    1e14:	ffff87b7          	lui	a5,0xffff8
    1e18:	00042023          	sw	zero,0(s0)
    1e1c:	00942223          	sw	s1,4(s0)
    1e20:	08078793          	addi	a5,a5,128 # ffff8080 <__ctr0_io_space_begin+0xffff8280>
    1e24:	00f49023          	sh	a5,0(s1)
    1e28:	00049123          	sh	zero,2(s1)
    1e2c:	00840793          	addi	a5,s0,8
    1e30:	00f12623          	sw	a5,12(sp)
    1e34:	00448793          	addi	a5,s1,4
    1e38:	00f12c23          	sw	a5,24(sp)
    1e3c:	00299a93          	slli	s5,s3,0x2
    1e40:	800007b7          	lui	a5,0x80000
    1e44:	fff7c793          	not	a5,a5
    1e48:	01548ab3          	add	s5,s1,s5
    1e4c:	00f12e23          	sw	a5,28(sp)
    1e50:	00048713          	mv	a4,s1
    1e54:	000a8793          	mv	a5,s5
    1e58:	01810693          	addi	a3,sp,24
    1e5c:	00c10613          	addi	a2,sp,12
    1e60:	01c10593          	addi	a1,sp,28
    1e64:	00040513          	mv	a0,s0
    1e68:	b45ff0ef          	jal	ra,19ac <core_list_insert_new>
    1e6c:	00000a13          	li	s4,0
    1e70:	073a6063          	bltu	s4,s3,1ed0 <core_list_init+0xf8>
    1e74:	00500593          	li	a1,5
    1e78:	00098513          	mv	a0,s3
    1e7c:	65d010ef          	jal	ra,3cd8 <__udivsi3>
    1e80:	00042483          	lw	s1,0(s0)
    1e84:	00004637          	lui	a2,0x4
    1e88:	00100713          	li	a4,1
    1e8c:	fff60613          	addi	a2,a2,-1 # 3fff <__etext+0x77>
    1e90:	0004a583          	lw	a1,0(s1)
    1e94:	08059463          	bnez	a1,1f1c <core_list_init+0x144>
    1e98:	000025b7          	lui	a1,0x2
    1e9c:	00040513          	mv	a0,s0
    1ea0:	00000613          	li	a2,0
    1ea4:	81458593          	addi	a1,a1,-2028 # 1814 <cmp_idx>
    1ea8:	bedff0ef          	jal	ra,1a94 <core_list_mergesort>
    1eac:	03c12083          	lw	ra,60(sp)
    1eb0:	03812403          	lw	s0,56(sp)
    1eb4:	03412483          	lw	s1,52(sp)
    1eb8:	03012903          	lw	s2,48(sp)
    1ebc:	02c12983          	lw	s3,44(sp)
    1ec0:	02812a03          	lw	s4,40(sp)
    1ec4:	02412a83          	lw	s5,36(sp)
    1ec8:	04010113          	addi	sp,sp,64
    1ecc:	00008067          	ret
    1ed0:	010a1793          	slli	a5,s4,0x10
    1ed4:	0107d793          	srli	a5,a5,0x10
    1ed8:	0127c733          	xor	a4,a5,s2
    1edc:	00371713          	slli	a4,a4,0x3
    1ee0:	0077f793          	andi	a5,a5,7
    1ee4:	07877713          	andi	a4,a4,120
    1ee8:	00f76733          	or	a4,a4,a5
    1eec:	00871793          	slli	a5,a4,0x8
    1ef0:	00e7e733          	or	a4,a5,a4
    1ef4:	00e11e23          	sh	a4,28(sp)
    1ef8:	000a8793          	mv	a5,s5
    1efc:	00048713          	mv	a4,s1
    1f00:	01810693          	addi	a3,sp,24
    1f04:	00c10613          	addi	a2,sp,12
    1f08:	01c10593          	addi	a1,sp,28
    1f0c:	00040513          	mv	a0,s0
    1f10:	a9dff0ef          	jal	ra,19ac <core_list_insert_new>
    1f14:	001a0a13          	addi	s4,s4,1
    1f18:	f59ff06f          	j	1e70 <core_list_init+0x98>
    1f1c:	0044a803          	lw	a6,4(s1)
    1f20:	00a77a63          	bgeu	a4,a0,1f34 <core_list_init+0x15c>
    1f24:	00e81123          	sh	a4,2(a6)
    1f28:	00170713          	addi	a4,a4,1
    1f2c:	00058493          	mv	s1,a1
    1f30:	f61ff06f          	j	1e90 <core_list_init+0xb8>
    1f34:	01071693          	slli	a3,a4,0x10
    1f38:	0106d693          	srli	a3,a3,0x10
    1f3c:	00168793          	addi	a5,a3,1
    1f40:	00879793          	slli	a5,a5,0x8
    1f44:	7007f793          	andi	a5,a5,1792
    1f48:	0126c6b3          	xor	a3,a3,s2
    1f4c:	00d7e7b3          	or	a5,a5,a3
    1f50:	00c7f7b3          	and	a5,a5,a2
    1f54:	00f81123          	sh	a5,2(a6)
    1f58:	fd1ff06f          	j	1f28 <core_list_init+0x150>

00001f5c <start_time>:
    1f5c:	ff010113          	addi	sp,sp,-16
    1f60:	00112623          	sw	ra,12(sp)
    1f64:	00000793          	li	a5,0
    1f68:	32079073          	csrw	mcountinhibit,a5
    1f6c:	050010ef          	jal	ra,2fbc <neorv32_cpu_get_cycle>
    1f70:	00c12083          	lw	ra,12(sp)
    1f74:	82a1a023          	sw	a0,-2016(gp) # 80000020 <start_time_val>
    1f78:	82b1a223          	sw	a1,-2012(gp) # 80000024 <start_time_val+0x4>
    1f7c:	01010113          	addi	sp,sp,16
    1f80:	00008067          	ret

00001f84 <stop_time>:
    1f84:	ff010113          	addi	sp,sp,-16
    1f88:	00112623          	sw	ra,12(sp)
    1f8c:	fff00793          	li	a5,-1
    1f90:	32079073          	csrw	mcountinhibit,a5
    1f94:	028010ef          	jal	ra,2fbc <neorv32_cpu_get_cycle>
    1f98:	00c12083          	lw	ra,12(sp)
    1f9c:	82a1a423          	sw	a0,-2008(gp) # 80000028 <stop_time_val>
    1fa0:	82b1a623          	sw	a1,-2004(gp) # 8000002c <stop_time_val+0x4>
    1fa4:	01010113          	addi	sp,sp,16
    1fa8:	00008067          	ret

00001fac <get_time>:
    1fac:	82818713          	addi	a4,gp,-2008 # 80000028 <stop_time_val>
    1fb0:	82018793          	addi	a5,gp,-2016 # 80000020 <start_time_val>
    1fb4:	00072583          	lw	a1,0(a4)
    1fb8:	0007a503          	lw	a0,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
    1fbc:	00472703          	lw	a4,4(a4)
    1fc0:	0047a783          	lw	a5,4(a5)
    1fc4:	40a58533          	sub	a0,a1,a0
    1fc8:	00a5b5b3          	sltu	a1,a1,a0
    1fcc:	40f707b3          	sub	a5,a4,a5
    1fd0:	40b785b3          	sub	a1,a5,a1
    1fd4:	00008067          	ret

00001fd8 <time_in_secs>:
    1fd8:	fe002603          	lw	a2,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
    1fdc:	ff010113          	addi	sp,sp,-16
    1fe0:	00000693          	li	a3,0
    1fe4:	00112623          	sw	ra,12(sp)
    1fe8:	6ec010ef          	jal	ra,36d4 <__udivdi3>
    1fec:	00c12083          	lw	ra,12(sp)
    1ff0:	01010113          	addi	sp,sp,16
    1ff4:	00008067          	ret

00001ff8 <portable_init>:
    1ff8:	ff010113          	addi	sp,sp,-16
    1ffc:	00812423          	sw	s0,8(sp)
    2000:	00112623          	sw	ra,12(sp)
    2004:	00050413          	mv	s0,a0
    2008:	30047073          	csrci	mstatus,8
    200c:	00000013          	nop
    2010:	00000013          	nop
    2014:	614010ef          	jal	ra,3628 <neorv32_rte_setup>
    2018:	00005537          	lui	a0,0x5
    201c:	00000613          	li	a2,0
    2020:	00000593          	li	a1,0
    2024:	b0050513          	addi	a0,a0,-1280 # 4b00 <symbols.0+0x238>
    2028:	4e1000ef          	jal	ra,2d08 <neorv32_uart0_setup>
    202c:	00000513          	li	a0,0
    2030:	644010ef          	jal	ra,3674 <neorv32_rte_check_isa>
    2034:	7f5000ef          	jal	ra,3028 <neorv32_cpu_hpm_get_counters>
    2038:	80a1a823          	sw	a0,-2032(gp) # 80000010 <num_hpm_cnts_global>
    203c:	00000793          	li	a5,0
    2040:	b0379073          	csrw	mhpmcounter3,a5
    2044:	00800713          	li	a4,8
    2048:	32371073          	csrw	mhpmevent3,a4
    204c:	b0479073          	csrw	mhpmcounter4,a5
    2050:	01000713          	li	a4,16
    2054:	32471073          	csrw	mhpmevent4,a4
    2058:	b0579073          	csrw	mhpmcounter5,a5
    205c:	02000713          	li	a4,32
    2060:	32571073          	csrw	mhpmevent5,a4
    2064:	b0679073          	csrw	mhpmcounter6,a5
    2068:	04000713          	li	a4,64
    206c:	32671073          	csrw	mhpmevent6,a4
    2070:	b0779073          	csrw	mhpmcounter7,a5
    2074:	08000713          	li	a4,128
    2078:	32771073          	csrw	mhpmevent7,a4
    207c:	b0879073          	csrw	mhpmcounter8,a5
    2080:	10000713          	li	a4,256
    2084:	32871073          	csrw	mhpmevent8,a4
    2088:	b0979073          	csrw	mhpmcounter9,a5
    208c:	20000713          	li	a4,512
    2090:	32971073          	csrw	mhpmevent9,a4
    2094:	b0a79073          	csrw	mhpmcounter10,a5
    2098:	40000713          	li	a4,1024
    209c:	32a71073          	csrw	mhpmevent10,a4
    20a0:	b0b79073          	csrw	mhpmcounter11,a5
    20a4:	00001737          	lui	a4,0x1
    20a8:	80070693          	addi	a3,a4,-2048 # 800 <main+0x684>
    20ac:	32b69073          	csrw	mhpmevent11,a3
    20b0:	b0c79073          	csrw	mhpmcounter12,a5
    20b4:	32c71073          	csrw	mhpmevent12,a4
    20b8:	b0d79073          	csrw	mhpmcounter13,a5
    20bc:	00002737          	lui	a4,0x2
    20c0:	32d71073          	csrw	mhpmevent13,a4
    20c4:	b0e79073          	csrw	mhpmcounter14,a5
    20c8:	000047b7          	lui	a5,0x4
    20cc:	32e79073          	csrw	mhpmevent14,a5
    20d0:	fe002583          	lw	a1,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
    20d4:	00004537          	lui	a0,0x4
    20d8:	16450513          	addi	a0,a0,356 # 4164 <scipat+0x10>
    20dc:	549000ef          	jal	ra,2e24 <neorv32_uart0_printf>
    20e0:	00004537          	lui	a0,0x4
    20e4:	7d000593          	li	a1,2000
    20e8:	18c50513          	addi	a0,a0,396 # 418c <scipat+0x38>
    20ec:	539000ef          	jal	ra,2e24 <neorv32_uart0_printf>
    20f0:	00000513          	li	a0,0
    20f4:	00000593          	li	a1,0
    20f8:	6f1000ef          	jal	ra,2fe8 <neorv32_cpu_set_mcycle>
    20fc:	fff00793          	li	a5,-1
    2100:	30679073          	csrw	mcounteren,a5
    2104:	00100793          	li	a5,1
    2108:	00c12083          	lw	ra,12(sp)
    210c:	00f40023          	sb	a5,0(s0)
    2110:	00812403          	lw	s0,8(sp)
    2114:	01010113          	addi	sp,sp,16
    2118:	00008067          	ret

0000211c <portable_fini>:
    211c:	fe010113          	addi	sp,sp,-32
    2120:	00112e23          	sw	ra,28(sp)
    2124:	00812c23          	sw	s0,24(sp)
    2128:	00912a23          	sw	s1,20(sp)
    212c:	01212823          	sw	s2,16(sp)
    2130:	01312623          	sw	s3,12(sp)
    2134:	01412423          	sw	s4,8(sp)
    2138:	00050023          	sb	zero,0(a0)
    213c:	e71ff0ef          	jal	ra,1fac <get_time>
    2140:	00050913          	mv	s2,a0
    2144:	00058493          	mv	s1,a1
    2148:	6b5000ef          	jal	ra,2ffc <neorv32_cpu_get_instret>
    214c:	00050a13          	mv	s4,a0
    2150:	00004537          	lui	a0,0x4
    2154:	1d850513          	addi	a0,a0,472 # 41d8 <scipat+0x84>
    2158:	00058993          	mv	s3,a1
    215c:	4c9000ef          	jal	ra,2e24 <neorv32_uart0_printf>
    2160:	00004537          	lui	a0,0x4
    2164:	21850513          	addi	a0,a0,536 # 4218 <scipat+0xc4>
    2168:	4bd000ef          	jal	ra,2e24 <neorv32_uart0_printf>
    216c:	8101a783          	lw	a5,-2032(gp) # 80000010 <num_hpm_cnts_global>
    2170:	81018413          	addi	s0,gp,-2032 # 80000010 <num_hpm_cnts_global>
    2174:	04078063          	beqz	a5,21b4 <portable_fini+0x98>
    2178:	b03025f3          	csrr	a1,mhpmcounter3
    217c:	00004537          	lui	a0,0x4
    2180:	23050513          	addi	a0,a0,560 # 4230 <scipat+0xdc>
    2184:	4a1000ef          	jal	ra,2e24 <neorv32_uart0_printf>
    2188:	00042703          	lw	a4,0(s0)
    218c:	00100793          	li	a5,1
    2190:	1ae7e463          	bltu	a5,a4,2338 <portable_fini+0x21c>
    2194:	00042703          	lw	a4,0(s0)
    2198:	00200793          	li	a5,2
    219c:	02e7f663          	bgeu	a5,a4,21c8 <portable_fini+0xac>
    21a0:	b05025f3          	csrr	a1,mhpmcounter5
    21a4:	00004537          	lui	a0,0x4
    21a8:	28c50513          	addi	a0,a0,652 # 428c <scipat+0x138>
    21ac:	479000ef          	jal	ra,2e24 <neorv32_uart0_printf>
    21b0:	0180006f          	j	21c8 <portable_fini+0xac>
    21b4:	00004537          	lui	a0,0x4
    21b8:	25450513          	addi	a0,a0,596 # 4254 <scipat+0x100>
    21bc:	469000ef          	jal	ra,2e24 <neorv32_uart0_printf>
    21c0:	00042783          	lw	a5,0(s0)
    21c4:	fa079ae3          	bnez	a5,2178 <portable_fini+0x5c>
    21c8:	00042703          	lw	a4,0(s0)
    21cc:	00300793          	li	a5,3
    21d0:	00e7fa63          	bgeu	a5,a4,21e4 <portable_fini+0xc8>
    21d4:	b06025f3          	csrr	a1,mhpmcounter6
    21d8:	00004537          	lui	a0,0x4
    21dc:	2b050513          	addi	a0,a0,688 # 42b0 <scipat+0x15c>
    21e0:	445000ef          	jal	ra,2e24 <neorv32_uart0_printf>
    21e4:	00042703          	lw	a4,0(s0)
    21e8:	00400793          	li	a5,4
    21ec:	00e7fa63          	bgeu	a5,a4,2200 <portable_fini+0xe4>
    21f0:	b07025f3          	csrr	a1,mhpmcounter7
    21f4:	00004537          	lui	a0,0x4
    21f8:	2d450513          	addi	a0,a0,724 # 42d4 <scipat+0x180>
    21fc:	429000ef          	jal	ra,2e24 <neorv32_uart0_printf>
    2200:	00042703          	lw	a4,0(s0)
    2204:	00500793          	li	a5,5
    2208:	00e7fa63          	bgeu	a5,a4,221c <portable_fini+0x100>
    220c:	b08025f3          	csrr	a1,mhpmcounter8
    2210:	00004537          	lui	a0,0x4
    2214:	2f850513          	addi	a0,a0,760 # 42f8 <scipat+0x1a4>
    2218:	40d000ef          	jal	ra,2e24 <neorv32_uart0_printf>
    221c:	00042703          	lw	a4,0(s0)
    2220:	00600793          	li	a5,6
    2224:	00e7fa63          	bgeu	a5,a4,2238 <portable_fini+0x11c>
    2228:	b09025f3          	csrr	a1,mhpmcounter9
    222c:	00004537          	lui	a0,0x4
    2230:	31c50513          	addi	a0,a0,796 # 431c <scipat+0x1c8>
    2234:	3f1000ef          	jal	ra,2e24 <neorv32_uart0_printf>
    2238:	00042703          	lw	a4,0(s0)
    223c:	00700793          	li	a5,7
    2240:	00e7fa63          	bgeu	a5,a4,2254 <portable_fini+0x138>
    2244:	b0a025f3          	csrr	a1,mhpmcounter10
    2248:	00004537          	lui	a0,0x4
    224c:	34050513          	addi	a0,a0,832 # 4340 <scipat+0x1ec>
    2250:	3d5000ef          	jal	ra,2e24 <neorv32_uart0_printf>
    2254:	00042703          	lw	a4,0(s0)
    2258:	00800793          	li	a5,8
    225c:	00e7fa63          	bgeu	a5,a4,2270 <portable_fini+0x154>
    2260:	b0b025f3          	csrr	a1,mhpmcounter11
    2264:	00004537          	lui	a0,0x4
    2268:	36450513          	addi	a0,a0,868 # 4364 <scipat+0x210>
    226c:	3b9000ef          	jal	ra,2e24 <neorv32_uart0_printf>
    2270:	00042703          	lw	a4,0(s0)
    2274:	00900793          	li	a5,9
    2278:	00e7fa63          	bgeu	a5,a4,228c <portable_fini+0x170>
    227c:	b0c025f3          	csrr	a1,mhpmcounter12
    2280:	00004537          	lui	a0,0x4
    2284:	38850513          	addi	a0,a0,904 # 4388 <scipat+0x234>
    2288:	39d000ef          	jal	ra,2e24 <neorv32_uart0_printf>
    228c:	00042703          	lw	a4,0(s0)
    2290:	00a00793          	li	a5,10
    2294:	00e7fa63          	bgeu	a5,a4,22a8 <portable_fini+0x18c>
    2298:	b0d025f3          	csrr	a1,mhpmcounter13
    229c:	00004537          	lui	a0,0x4
    22a0:	3ac50513          	addi	a0,a0,940 # 43ac <scipat+0x258>
    22a4:	381000ef          	jal	ra,2e24 <neorv32_uart0_printf>
    22a8:	00042703          	lw	a4,0(s0)
    22ac:	00b00793          	li	a5,11
    22b0:	00e7fa63          	bgeu	a5,a4,22c4 <portable_fini+0x1a8>
    22b4:	b0e025f3          	csrr	a1,mhpmcounter14
    22b8:	00004537          	lui	a0,0x4
    22bc:	3d050513          	addi	a0,a0,976 # 43d0 <scipat+0x27c>
    22c0:	365000ef          	jal	ra,2e24 <neorv32_uart0_printf>
    22c4:	00004537          	lui	a0,0x4
    22c8:	1d450513          	addi	a0,a0,468 # 41d4 <scipat+0x80>
    22cc:	359000ef          	jal	ra,2e24 <neorv32_uart0_printf>
    22d0:	00004537          	lui	a0,0x4
    22d4:	000a0613          	mv	a2,s4
    22d8:	00098593          	mv	a1,s3
    22dc:	3f450513          	addi	a0,a0,1012 # 43f4 <scipat+0x2a0>
    22e0:	345000ef          	jal	ra,2e24 <neorv32_uart0_printf>
    22e4:	00004537          	lui	a0,0x4
    22e8:	00090613          	mv	a2,s2
    22ec:	00048593          	mv	a1,s1
    22f0:	42450513          	addi	a0,a0,1060 # 4424 <scipat+0x2d0>
    22f4:	331000ef          	jal	ra,2e24 <neorv32_uart0_printf>
    22f8:	000a0613          	mv	a2,s4
    22fc:	00098693          	mv	a3,s3
    2300:	00090513          	mv	a0,s2
    2304:	00048593          	mv	a1,s1
    2308:	3cc010ef          	jal	ra,36d4 <__udivdi3>
    230c:	01812403          	lw	s0,24(sp)
    2310:	01c12083          	lw	ra,28(sp)
    2314:	01412483          	lw	s1,20(sp)
    2318:	01012903          	lw	s2,16(sp)
    231c:	00c12983          	lw	s3,12(sp)
    2320:	00812a03          	lw	s4,8(sp)
    2324:	00050593          	mv	a1,a0
    2328:	00004537          	lui	a0,0x4
    232c:	45450513          	addi	a0,a0,1108 # 4454 <scipat+0x300>
    2330:	02010113          	addi	sp,sp,32
    2334:	2f10006f          	j	2e24 <neorv32_uart0_printf>
    2338:	b04025f3          	csrr	a1,mhpmcounter4
    233c:	00004537          	lui	a0,0x4
    2340:	26850513          	addi	a0,a0,616 # 4268 <scipat+0x114>
    2344:	2e1000ef          	jal	ra,2e24 <neorv32_uart0_printf>
    2348:	e4dff06f          	j	2194 <portable_fini+0x78>

0000234c <iterate>:
    234c:	ff010113          	addi	sp,sp,-16
    2350:	01212023          	sw	s2,0(sp)
    2354:	01c52903          	lw	s2,28(a0)
    2358:	00812423          	sw	s0,8(sp)
    235c:	00912223          	sw	s1,4(sp)
    2360:	00112623          	sw	ra,12(sp)
    2364:	00050413          	mv	s0,a0
    2368:	02052c23          	sw	zero,56(a0)
    236c:	02052e23          	sw	zero,60(a0)
    2370:	00000493          	li	s1,0
    2374:	03249063          	bne	s1,s2,2394 <iterate+0x48>
    2378:	00c12083          	lw	ra,12(sp)
    237c:	00812403          	lw	s0,8(sp)
    2380:	00412483          	lw	s1,4(sp)
    2384:	00012903          	lw	s2,0(sp)
    2388:	00000513          	li	a0,0
    238c:	01010113          	addi	sp,sp,16
    2390:	00008067          	ret
    2394:	00100593          	li	a1,1
    2398:	00040513          	mv	a0,s0
    239c:	829ff0ef          	jal	ra,1bc4 <core_bench_list>
    23a0:	03845583          	lhu	a1,56(s0)
    23a4:	dc8fe0ef          	jal	ra,96c <crcu16>
    23a8:	02a41c23          	sh	a0,56(s0)
    23ac:	fff00593          	li	a1,-1
    23b0:	00040513          	mv	a0,s0
    23b4:	811ff0ef          	jal	ra,1bc4 <core_bench_list>
    23b8:	03845583          	lhu	a1,56(s0)
    23bc:	db0fe0ef          	jal	ra,96c <crcu16>
    23c0:	02a41c23          	sh	a0,56(s0)
    23c4:	00049463          	bnez	s1,23cc <iterate+0x80>
    23c8:	02a41d23          	sh	a0,58(s0)
    23cc:	00148493          	addi	s1,s1,1
    23d0:	fa5ff06f          	j	2374 <iterate+0x28>

000023d4 <core_init_matrix>:
    23d4:	fb010113          	addi	sp,sp,-80
    23d8:	04812423          	sw	s0,72(sp)
    23dc:	05212023          	sw	s2,64(sp)
    23e0:	03412c23          	sw	s4,56(sp)
    23e4:	03512a23          	sw	s5,52(sp)
    23e8:	04112623          	sw	ra,76(sp)
    23ec:	04912223          	sw	s1,68(sp)
    23f0:	03312e23          	sw	s3,60(sp)
    23f4:	03612823          	sw	s6,48(sp)
    23f8:	03712623          	sw	s7,44(sp)
    23fc:	03812423          	sw	s8,40(sp)
    2400:	03912223          	sw	s9,36(sp)
    2404:	03a12023          	sw	s10,32(sp)
    2408:	01b12e23          	sw	s11,28(sp)
    240c:	00050413          	mv	s0,a0
    2410:	00058a93          	mv	s5,a1
    2414:	00068a13          	mv	s4,a3
    2418:	00100913          	li	s2,1
    241c:	00060463          	beqz	a2,2424 <core_init_matrix+0x50>
    2420:	00060913          	mv	s2,a2
    2424:	00000793          	li	a5,0
    2428:	00000993          	li	s3,0
    242c:	0180006f          	j	2444 <core_init_matrix+0x70>
    2430:	00198993          	addi	s3,s3,1
    2434:	00098593          	mv	a1,s3
    2438:	00098513          	mv	a0,s3
    243c:	071010ef          	jal	ra,3cac <__mulsi3>
    2440:	00351793          	slli	a5,a0,0x3
    2444:	fe87e6e3          	bltu	a5,s0,2430 <core_init_matrix+0x5c>
    2448:	fff98993          	addi	s3,s3,-1
    244c:	fffa8a93          	addi	s5,s5,-1
    2450:	00098593          	mv	a1,s3
    2454:	00098513          	mv	a0,s3
    2458:	055010ef          	jal	ra,3cac <__mulsi3>
    245c:	ffcafa93          	andi	s5,s5,-4
    2460:	00151b93          	slli	s7,a0,0x1
    2464:	004a8a93          	addi	s5,s5,4
    2468:	80010d37          	lui	s10,0x80010
    246c:	017a8433          	add	s0,s5,s7
    2470:	00000c13          	li	s8,0
    2474:	00000c93          	li	s9,0
    2478:	00100493          	li	s1,1
    247c:	fffd0d13          	addi	s10,s10,-1 # 8000ffff <__ctr0_io_space_begin+0x800101ff>
    2480:	41700833          	neg	a6,s7
    2484:	093cf263          	bgeu	s9,s3,2508 <core_init_matrix+0x134>
    2488:	001c1b13          	slli	s6,s8,0x1
    248c:	008b0b33          	add	s6,s6,s0
    2490:	01348db3          	add	s11,s1,s3
    2494:	0640006f          	j	24f8 <core_init_matrix+0x124>
    2498:	00048593          	mv	a1,s1
    249c:	00090513          	mv	a0,s2
    24a0:	01012623          	sw	a6,12(sp)
    24a4:	009010ef          	jal	ra,3cac <__mulsi3>
    24a8:	01a57633          	and	a2,a0,s10
    24ac:	00c12803          	lw	a6,12(sp)
    24b0:	ffff06b7          	lui	a3,0xffff0
    24b4:	00065863          	bgez	a2,24c4 <core_init_matrix+0xf0>
    24b8:	fff60613          	addi	a2,a2,-1
    24bc:	00d66633          	or	a2,a2,a3
    24c0:	00160613          	addi	a2,a2,1
    24c4:	01049713          	slli	a4,s1,0x10
    24c8:	01075713          	srli	a4,a4,0x10
    24cc:	00c707b3          	add	a5,a4,a2
    24d0:	01079793          	slli	a5,a5,0x10
    24d4:	0107d793          	srli	a5,a5,0x10
    24d8:	00fb1023          	sh	a5,0(s6)
    24dc:	00e787b3          	add	a5,a5,a4
    24e0:	0ff7f793          	andi	a5,a5,255
    24e4:	01680733          	add	a4,a6,s6
    24e8:	00060913          	mv	s2,a2
    24ec:	00f71023          	sh	a5,0(a4) # 2000 <portable_init+0x8>
    24f0:	00148493          	addi	s1,s1,1
    24f4:	002b0b13          	addi	s6,s6,2
    24f8:	fbb490e3          	bne	s1,s11,2498 <core_init_matrix+0xc4>
    24fc:	001c8c93          	addi	s9,s9,1
    2500:	013c0c33          	add	s8,s8,s3
    2504:	f81ff06f          	j	2484 <core_init_matrix+0xb0>
    2508:	008a2423          	sw	s0,8(s4)
    250c:	01740433          	add	s0,s0,s7
    2510:	fff40413          	addi	s0,s0,-1
    2514:	ffc47413          	andi	s0,s0,-4
    2518:	00440413          	addi	s0,s0,4
    251c:	008a2623          	sw	s0,12(s4)
    2520:	04c12083          	lw	ra,76(sp)
    2524:	04812403          	lw	s0,72(sp)
    2528:	015a2223          	sw	s5,4(s4)
    252c:	013a2023          	sw	s3,0(s4)
    2530:	04412483          	lw	s1,68(sp)
    2534:	04012903          	lw	s2,64(sp)
    2538:	03812a03          	lw	s4,56(sp)
    253c:	03412a83          	lw	s5,52(sp)
    2540:	03012b03          	lw	s6,48(sp)
    2544:	02c12b83          	lw	s7,44(sp)
    2548:	02812c03          	lw	s8,40(sp)
    254c:	02412c83          	lw	s9,36(sp)
    2550:	02012d03          	lw	s10,32(sp)
    2554:	01c12d83          	lw	s11,28(sp)
    2558:	00098513          	mv	a0,s3
    255c:	03c12983          	lw	s3,60(sp)
    2560:	05010113          	addi	sp,sp,80
    2564:	00008067          	ret

00002568 <matrix_sum>:
    2568:	00050693          	mv	a3,a0
    256c:	00000e13          	li	t3,0
    2570:	00000e93          	li	t4,0
    2574:	00000513          	li	a0,0
    2578:	00000893          	li	a7,0
    257c:	00000813          	li	a6,0
    2580:	06de8463          	beq	t4,a3,25e8 <matrix_sum+0x80>
    2584:	002e1713          	slli	a4,t3,0x2
    2588:	00e58733          	add	a4,a1,a4
    258c:	00000313          	li	t1,0
    2590:	0340006f          	j	25c4 <matrix_sum+0x5c>
    2594:	00072f03          	lw	t5,0(a4)
    2598:	01051793          	slli	a5,a0,0x10
    259c:	0107d793          	srli	a5,a5,0x10
    25a0:	01e80833          	add	a6,a6,t5
    25a4:	03065863          	bge	a2,a6,25d4 <matrix_sum+0x6c>
    25a8:	00a78513          	addi	a0,a5,10 # 400a <__etext+0x82>
    25ac:	01051513          	slli	a0,a0,0x10
    25b0:	41055513          	srai	a0,a0,0x10
    25b4:	00000813          	li	a6,0
    25b8:	00130313          	addi	t1,t1,1
    25bc:	00470713          	addi	a4,a4,4
    25c0:	000f0893          	mv	a7,t5
    25c4:	fcd318e3          	bne	t1,a3,2594 <matrix_sum+0x2c>
    25c8:	001e8e93          	addi	t4,t4,1
    25cc:	00de0e33          	add	t3,t3,a3
    25d0:	fb1ff06f          	j	2580 <matrix_sum+0x18>
    25d4:	01e8a533          	slt	a0,a7,t5
    25d8:	00a78533          	add	a0,a5,a0
    25dc:	01051513          	slli	a0,a0,0x10
    25e0:	41055513          	srai	a0,a0,0x10
    25e4:	fd5ff06f          	j	25b8 <matrix_sum+0x50>
    25e8:	00008067          	ret

000025ec <matrix_mul_const>:
    25ec:	fd010113          	addi	sp,sp,-48
    25f0:	03212023          	sw	s2,32(sp)
    25f4:	01312e23          	sw	s3,28(sp)
    25f8:	01512a23          	sw	s5,20(sp)
    25fc:	01612823          	sw	s6,16(sp)
    2600:	01712623          	sw	s7,12(sp)
    2604:	01812423          	sw	s8,8(sp)
    2608:	02112623          	sw	ra,44(sp)
    260c:	02812423          	sw	s0,40(sp)
    2610:	02912223          	sw	s1,36(sp)
    2614:	01412c23          	sw	s4,24(sp)
    2618:	00050913          	mv	s2,a0
    261c:	00058a93          	mv	s5,a1
    2620:	00060b13          	mv	s6,a2
    2624:	00068c13          	mv	s8,a3
    2628:	00000993          	li	s3,0
    262c:	00000b93          	li	s7,0
    2630:	052b8463          	beq	s7,s2,2678 <matrix_mul_const+0x8c>
    2634:	00199493          	slli	s1,s3,0x1
    2638:	00299413          	slli	s0,s3,0x2
    263c:	009b04b3          	add	s1,s6,s1
    2640:	008a8433          	add	s0,s5,s0
    2644:	00000a13          	li	s4,0
    2648:	0200006f          	j	2668 <matrix_mul_const+0x7c>
    264c:	00049503          	lh	a0,0(s1)
    2650:	000c0593          	mv	a1,s8
    2654:	001a0a13          	addi	s4,s4,1
    2658:	654010ef          	jal	ra,3cac <__mulsi3>
    265c:	00a42023          	sw	a0,0(s0)
    2660:	00248493          	addi	s1,s1,2
    2664:	00440413          	addi	s0,s0,4
    2668:	ff2a12e3          	bne	s4,s2,264c <matrix_mul_const+0x60>
    266c:	001b8b93          	addi	s7,s7,1
    2670:	012989b3          	add	s3,s3,s2
    2674:	fbdff06f          	j	2630 <matrix_mul_const+0x44>
    2678:	02c12083          	lw	ra,44(sp)
    267c:	02812403          	lw	s0,40(sp)
    2680:	02412483          	lw	s1,36(sp)
    2684:	02012903          	lw	s2,32(sp)
    2688:	01c12983          	lw	s3,28(sp)
    268c:	01812a03          	lw	s4,24(sp)
    2690:	01412a83          	lw	s5,20(sp)
    2694:	01012b03          	lw	s6,16(sp)
    2698:	00c12b83          	lw	s7,12(sp)
    269c:	00812c03          	lw	s8,8(sp)
    26a0:	03010113          	addi	sp,sp,48
    26a4:	00008067          	ret

000026a8 <matrix_add_const>:
    26a8:	00000693          	li	a3,0
    26ac:	00000813          	li	a6,0
    26b0:	02a80c63          	beq	a6,a0,26e8 <matrix_add_const+0x40>
    26b4:	00169793          	slli	a5,a3,0x1
    26b8:	00f587b3          	add	a5,a1,a5
    26bc:	00000713          	li	a4,0
    26c0:	0180006f          	j	26d8 <matrix_add_const+0x30>
    26c4:	0007d883          	lhu	a7,0(a5)
    26c8:	00170713          	addi	a4,a4,1
    26cc:	00278793          	addi	a5,a5,2
    26d0:	011608b3          	add	a7,a2,a7
    26d4:	ff179f23          	sh	a7,-2(a5)
    26d8:	fea716e3          	bne	a4,a0,26c4 <matrix_add_const+0x1c>
    26dc:	00180813          	addi	a6,a6,1
    26e0:	00a686b3          	add	a3,a3,a0
    26e4:	fcdff06f          	j	26b0 <matrix_add_const+0x8>
    26e8:	00008067          	ret

000026ec <matrix_mul_vect>:
    26ec:	fd010113          	addi	sp,sp,-48
    26f0:	01312e23          	sw	s3,28(sp)
    26f4:	00058993          	mv	s3,a1
    26f8:	02812423          	sw	s0,40(sp)
    26fc:	01512a23          	sw	s5,20(sp)
    2700:	00050413          	mv	s0,a0
    2704:	00060a93          	mv	s5,a2
    2708:	00000593          	li	a1,0
    270c:	00251613          	slli	a2,a0,0x2
    2710:	00098513          	mv	a0,s3
    2714:	03212023          	sw	s2,32(sp)
    2718:	01412c23          	sw	s4,24(sp)
    271c:	01612823          	sw	s6,16(sp)
    2720:	01912223          	sw	s9,4(sp)
    2724:	02112623          	sw	ra,44(sp)
    2728:	02912223          	sw	s1,36(sp)
    272c:	01712623          	sw	s7,12(sp)
    2730:	01812423          	sw	s8,8(sp)
    2734:	00068b13          	mv	s6,a3
    2738:	00141c93          	slli	s9,s0,0x1
    273c:	770010ef          	jal	ra,3eac <memset>
    2740:	00000a13          	li	s4,0
    2744:	00000913          	li	s2,0
    2748:	02891c63          	bne	s2,s0,2780 <matrix_mul_vect+0x94>
    274c:	02c12083          	lw	ra,44(sp)
    2750:	02812403          	lw	s0,40(sp)
    2754:	02412483          	lw	s1,36(sp)
    2758:	02012903          	lw	s2,32(sp)
    275c:	01c12983          	lw	s3,28(sp)
    2760:	01812a03          	lw	s4,24(sp)
    2764:	01412a83          	lw	s5,20(sp)
    2768:	01012b03          	lw	s6,16(sp)
    276c:	00c12b83          	lw	s7,12(sp)
    2770:	00812c03          	lw	s8,8(sp)
    2774:	00412c83          	lw	s9,4(sp)
    2778:	03010113          	addi	sp,sp,48
    277c:	00008067          	ret
    2780:	001a1c13          	slli	s8,s4,0x1
    2784:	018a8c33          	add	s8,s5,s8
    2788:	00000493          	li	s1,0
    278c:	00000b93          	li	s7,0
    2790:	009c07b3          	add	a5,s8,s1
    2794:	009b0733          	add	a4,s6,s1
    2798:	00071583          	lh	a1,0(a4)
    279c:	00079503          	lh	a0,0(a5)
    27a0:	00248493          	addi	s1,s1,2
    27a4:	508010ef          	jal	ra,3cac <__mulsi3>
    27a8:	00ab8bb3          	add	s7,s7,a0
    27ac:	fe9c92e3          	bne	s9,s1,2790 <matrix_mul_vect+0xa4>
    27b0:	00291793          	slli	a5,s2,0x2
    27b4:	00f987b3          	add	a5,s3,a5
    27b8:	0177a023          	sw	s7,0(a5)
    27bc:	00190913          	addi	s2,s2,1
    27c0:	008a0a33          	add	s4,s4,s0
    27c4:	f85ff06f          	j	2748 <matrix_mul_vect+0x5c>

000027c8 <matrix_mul_matrix>:
    27c8:	fb010113          	addi	sp,sp,-80
    27cc:	04812423          	sw	s0,72(sp)
    27d0:	04912223          	sw	s1,68(sp)
    27d4:	03612823          	sw	s6,48(sp)
    27d8:	03712623          	sw	s7,44(sp)
    27dc:	03812423          	sw	s8,40(sp)
    27e0:	03912223          	sw	s9,36(sp)
    27e4:	03a12023          	sw	s10,32(sp)
    27e8:	01b12e23          	sw	s11,28(sp)
    27ec:	04112623          	sw	ra,76(sp)
    27f0:	05212023          	sw	s2,64(sp)
    27f4:	03312e23          	sw	s3,60(sp)
    27f8:	03412c23          	sw	s4,56(sp)
    27fc:	03512a23          	sw	s5,52(sp)
    2800:	00050413          	mv	s0,a0
    2804:	00060b13          	mv	s6,a2
    2808:	00068b93          	mv	s7,a3
    280c:	00251c13          	slli	s8,a0,0x2
    2810:	00058493          	mv	s1,a1
    2814:	00151c93          	slli	s9,a0,0x1
    2818:	00000d13          	li	s10,0
    281c:	00000d93          	li	s11,0
    2820:	088d8863          	beq	s11,s0,28b0 <matrix_mul_matrix+0xe8>
    2824:	000c0613          	mv	a2,s8
    2828:	00000593          	li	a1,0
    282c:	00048513          	mv	a0,s1
    2830:	001d1a93          	slli	s5,s10,0x1
    2834:	678010ef          	jal	ra,3eac <memset>
    2838:	015b0ab3          	add	s5,s6,s5
    283c:	00048a13          	mv	s4,s1
    2840:	00000993          	li	s3,0
    2844:	0200006f          	j	2864 <matrix_mul_matrix+0x9c>
    2848:	00199913          	slli	s2,s3,0x1
    284c:	012b8933          	add	s2,s7,s2
    2850:	000a8713          	mv	a4,s5
    2854:	00000793          	li	a5,0
    2858:	02879063          	bne	a5,s0,2878 <matrix_mul_matrix+0xb0>
    285c:	00198993          	addi	s3,s3,1
    2860:	004a0a13          	addi	s4,s4,4
    2864:	fe8992e3          	bne	s3,s0,2848 <matrix_mul_matrix+0x80>
    2868:	001d8d93          	addi	s11,s11,1
    286c:	018484b3          	add	s1,s1,s8
    2870:	008d0d33          	add	s10,s10,s0
    2874:	fadff06f          	j	2820 <matrix_mul_matrix+0x58>
    2878:	00091583          	lh	a1,0(s2)
    287c:	00071503          	lh	a0,0(a4)
    2880:	00f12623          	sw	a5,12(sp)
    2884:	00e12423          	sw	a4,8(sp)
    2888:	424010ef          	jal	ra,3cac <__mulsi3>
    288c:	000a2683          	lw	a3,0(s4)
    2890:	00c12783          	lw	a5,12(sp)
    2894:	00812703          	lw	a4,8(sp)
    2898:	00a686b3          	add	a3,a3,a0
    289c:	00da2023          	sw	a3,0(s4)
    28a0:	00178793          	addi	a5,a5,1
    28a4:	00270713          	addi	a4,a4,2
    28a8:	01990933          	add	s2,s2,s9
    28ac:	fadff06f          	j	2858 <matrix_mul_matrix+0x90>
    28b0:	04c12083          	lw	ra,76(sp)
    28b4:	04812403          	lw	s0,72(sp)
    28b8:	04412483          	lw	s1,68(sp)
    28bc:	04012903          	lw	s2,64(sp)
    28c0:	03c12983          	lw	s3,60(sp)
    28c4:	03812a03          	lw	s4,56(sp)
    28c8:	03412a83          	lw	s5,52(sp)
    28cc:	03012b03          	lw	s6,48(sp)
    28d0:	02c12b83          	lw	s7,44(sp)
    28d4:	02812c03          	lw	s8,40(sp)
    28d8:	02412c83          	lw	s9,36(sp)
    28dc:	02012d03          	lw	s10,32(sp)
    28e0:	01c12d83          	lw	s11,28(sp)
    28e4:	05010113          	addi	sp,sp,80
    28e8:	00008067          	ret

000028ec <matrix_mul_matrix_bitextract>:
    28ec:	fb010113          	addi	sp,sp,-80
    28f0:	04812423          	sw	s0,72(sp)
    28f4:	04912223          	sw	s1,68(sp)
    28f8:	03412c23          	sw	s4,56(sp)
    28fc:	03512a23          	sw	s5,52(sp)
    2900:	03612823          	sw	s6,48(sp)
    2904:	03712623          	sw	s7,44(sp)
    2908:	03a12023          	sw	s10,32(sp)
    290c:	01b12e23          	sw	s11,28(sp)
    2910:	04112623          	sw	ra,76(sp)
    2914:	05212023          	sw	s2,64(sp)
    2918:	03312e23          	sw	s3,60(sp)
    291c:	03812423          	sw	s8,40(sp)
    2920:	03912223          	sw	s9,36(sp)
    2924:	00050413          	mv	s0,a0
    2928:	00060a13          	mv	s4,a2
    292c:	00068a93          	mv	s5,a3
    2930:	00251b13          	slli	s6,a0,0x2
    2934:	00058493          	mv	s1,a1
    2938:	00151b93          	slli	s7,a0,0x1
    293c:	00000d13          	li	s10,0
    2940:	00000d93          	li	s11,0
    2944:	0a8d8263          	beq	s11,s0,29e8 <matrix_mul_matrix_bitextract+0xfc>
    2948:	000b0613          	mv	a2,s6
    294c:	00000593          	li	a1,0
    2950:	00048513          	mv	a0,s1
    2954:	001d1c93          	slli	s9,s10,0x1
    2958:	554010ef          	jal	ra,3eac <memset>
    295c:	019a0cb3          	add	s9,s4,s9
    2960:	00048c13          	mv	s8,s1
    2964:	00000993          	li	s3,0
    2968:	0200006f          	j	2988 <matrix_mul_matrix_bitextract+0x9c>
    296c:	00199913          	slli	s2,s3,0x1
    2970:	012a8933          	add	s2,s5,s2
    2974:	000c8713          	mv	a4,s9
    2978:	00000793          	li	a5,0
    297c:	02879063          	bne	a5,s0,299c <matrix_mul_matrix_bitextract+0xb0>
    2980:	00198993          	addi	s3,s3,1
    2984:	004c0c13          	addi	s8,s8,4
    2988:	fe8992e3          	bne	s3,s0,296c <matrix_mul_matrix_bitextract+0x80>
    298c:	001d8d93          	addi	s11,s11,1
    2990:	016484b3          	add	s1,s1,s6
    2994:	008d0d33          	add	s10,s10,s0
    2998:	fadff06f          	j	2944 <matrix_mul_matrix_bitextract+0x58>
    299c:	00091583          	lh	a1,0(s2)
    29a0:	00071503          	lh	a0,0(a4)
    29a4:	00f12623          	sw	a5,12(sp)
    29a8:	00e12423          	sw	a4,8(sp)
    29ac:	300010ef          	jal	ra,3cac <__mulsi3>
    29b0:	40255693          	srai	a3,a0,0x2
    29b4:	40555593          	srai	a1,a0,0x5
    29b8:	07f5f593          	andi	a1,a1,127
    29bc:	00f6f513          	andi	a0,a3,15
    29c0:	2ec010ef          	jal	ra,3cac <__mulsi3>
    29c4:	000c2683          	lw	a3,0(s8)
    29c8:	00c12783          	lw	a5,12(sp)
    29cc:	00812703          	lw	a4,8(sp)
    29d0:	00a686b3          	add	a3,a3,a0
    29d4:	00dc2023          	sw	a3,0(s8)
    29d8:	00178793          	addi	a5,a5,1
    29dc:	00270713          	addi	a4,a4,2
    29e0:	01790933          	add	s2,s2,s7
    29e4:	f99ff06f          	j	297c <matrix_mul_matrix_bitextract+0x90>
    29e8:	04c12083          	lw	ra,76(sp)
    29ec:	04812403          	lw	s0,72(sp)
    29f0:	04412483          	lw	s1,68(sp)
    29f4:	04012903          	lw	s2,64(sp)
    29f8:	03c12983          	lw	s3,60(sp)
    29fc:	03812a03          	lw	s4,56(sp)
    2a00:	03412a83          	lw	s5,52(sp)
    2a04:	03012b03          	lw	s6,48(sp)
    2a08:	02c12b83          	lw	s7,44(sp)
    2a0c:	02812c03          	lw	s8,40(sp)
    2a10:	02412c83          	lw	s9,36(sp)
    2a14:	02012d03          	lw	s10,32(sp)
    2a18:	01c12d83          	lw	s11,28(sp)
    2a1c:	05010113          	addi	sp,sp,80
    2a20:	00008067          	ret

00002a24 <matrix_test>:
    2a24:	fe010113          	addi	sp,sp,-32
    2a28:	01212823          	sw	s2,16(sp)
    2a2c:	00060913          	mv	s2,a2
    2a30:	00912a23          	sw	s1,20(sp)
    2a34:	00070613          	mv	a2,a4
    2a38:	01412423          	sw	s4,8(sp)
    2a3c:	00058493          	mv	s1,a1
    2a40:	fffffa37          	lui	s4,0xfffff
    2a44:	00090593          	mv	a1,s2
    2a48:	00112e23          	sw	ra,28(sp)
    2a4c:	01476a33          	or	s4,a4,s4
    2a50:	00812c23          	sw	s0,24(sp)
    2a54:	01312623          	sw	s3,12(sp)
    2a58:	01512223          	sw	s5,4(sp)
    2a5c:	00070993          	mv	s3,a4
    2a60:	01612023          	sw	s6,0(sp)
    2a64:	00050413          	mv	s0,a0
    2a68:	00068a93          	mv	s5,a3
    2a6c:	c3dff0ef          	jal	ra,26a8 <matrix_add_const>
    2a70:	00098693          	mv	a3,s3
    2a74:	00090613          	mv	a2,s2
    2a78:	00048593          	mv	a1,s1
    2a7c:	00040513          	mv	a0,s0
    2a80:	b6dff0ef          	jal	ra,25ec <matrix_mul_const>
    2a84:	000a0613          	mv	a2,s4
    2a88:	00048593          	mv	a1,s1
    2a8c:	00040513          	mv	a0,s0
    2a90:	ad9ff0ef          	jal	ra,2568 <matrix_sum>
    2a94:	00000593          	li	a1,0
    2a98:	f39fd0ef          	jal	ra,9d0 <crc16>
    2a9c:	000a8693          	mv	a3,s5
    2aa0:	00050b13          	mv	s6,a0
    2aa4:	00090613          	mv	a2,s2
    2aa8:	00048593          	mv	a1,s1
    2aac:	00040513          	mv	a0,s0
    2ab0:	c3dff0ef          	jal	ra,26ec <matrix_mul_vect>
    2ab4:	000a0613          	mv	a2,s4
    2ab8:	00048593          	mv	a1,s1
    2abc:	00040513          	mv	a0,s0
    2ac0:	aa9ff0ef          	jal	ra,2568 <matrix_sum>
    2ac4:	000b0593          	mv	a1,s6
    2ac8:	f09fd0ef          	jal	ra,9d0 <crc16>
    2acc:	000a8693          	mv	a3,s5
    2ad0:	00050b13          	mv	s6,a0
    2ad4:	00090613          	mv	a2,s2
    2ad8:	00048593          	mv	a1,s1
    2adc:	00040513          	mv	a0,s0
    2ae0:	ce9ff0ef          	jal	ra,27c8 <matrix_mul_matrix>
    2ae4:	000a0613          	mv	a2,s4
    2ae8:	00048593          	mv	a1,s1
    2aec:	00040513          	mv	a0,s0
    2af0:	a79ff0ef          	jal	ra,2568 <matrix_sum>
    2af4:	000b0593          	mv	a1,s6
    2af8:	ed9fd0ef          	jal	ra,9d0 <crc16>
    2afc:	000a8693          	mv	a3,s5
    2b00:	00050b13          	mv	s6,a0
    2b04:	00090613          	mv	a2,s2
    2b08:	00048593          	mv	a1,s1
    2b0c:	00040513          	mv	a0,s0
    2b10:	dddff0ef          	jal	ra,28ec <matrix_mul_matrix_bitextract>
    2b14:	000a0613          	mv	a2,s4
    2b18:	00048593          	mv	a1,s1
    2b1c:	00040513          	mv	a0,s0
    2b20:	a49ff0ef          	jal	ra,2568 <matrix_sum>
    2b24:	000b0593          	mv	a1,s6
    2b28:	ea9fd0ef          	jal	ra,9d0 <crc16>
    2b2c:	41300633          	neg	a2,s3
    2b30:	01061613          	slli	a2,a2,0x10
    2b34:	00050493          	mv	s1,a0
    2b38:	00090593          	mv	a1,s2
    2b3c:	00040513          	mv	a0,s0
    2b40:	41065613          	srai	a2,a2,0x10
    2b44:	b65ff0ef          	jal	ra,26a8 <matrix_add_const>
    2b48:	01c12083          	lw	ra,28(sp)
    2b4c:	01812403          	lw	s0,24(sp)
    2b50:	01049513          	slli	a0,s1,0x10
    2b54:	01012903          	lw	s2,16(sp)
    2b58:	01412483          	lw	s1,20(sp)
    2b5c:	00c12983          	lw	s3,12(sp)
    2b60:	00812a03          	lw	s4,8(sp)
    2b64:	00412a83          	lw	s5,4(sp)
    2b68:	00012b03          	lw	s6,0(sp)
    2b6c:	41055513          	srai	a0,a0,0x10
    2b70:	02010113          	addi	sp,sp,32
    2b74:	00008067          	ret

00002b78 <core_bench_matrix>:
    2b78:	ff010113          	addi	sp,sp,-16
    2b7c:	00812423          	sw	s0,8(sp)
    2b80:	00852683          	lw	a3,8(a0)
    2b84:	00060413          	mv	s0,a2
    2b88:	00058713          	mv	a4,a1
    2b8c:	00452603          	lw	a2,4(a0)
    2b90:	00c52583          	lw	a1,12(a0)
    2b94:	00052503          	lw	a0,0(a0)
    2b98:	00112623          	sw	ra,12(sp)
    2b9c:	e89ff0ef          	jal	ra,2a24 <matrix_test>
    2ba0:	00040593          	mv	a1,s0
    2ba4:	00812403          	lw	s0,8(sp)
    2ba8:	00c12083          	lw	ra,12(sp)
    2bac:	01010113          	addi	sp,sp,16
    2bb0:	e21fd06f          	j	9d0 <crc16>

00002bb4 <__neorv32_uart_itoa>:
    2bb4:	fd010113          	addi	sp,sp,-48
    2bb8:	02812423          	sw	s0,40(sp)
    2bbc:	02912223          	sw	s1,36(sp)
    2bc0:	03212023          	sw	s2,32(sp)
    2bc4:	01312e23          	sw	s3,28(sp)
    2bc8:	01412c23          	sw	s4,24(sp)
    2bcc:	02112623          	sw	ra,44(sp)
    2bd0:	01512a23          	sw	s5,20(sp)
    2bd4:	00005a37          	lui	s4,0x5
    2bd8:	00050493          	mv	s1,a0
    2bdc:	00058413          	mv	s0,a1
    2be0:	00058523          	sb	zero,10(a1)
    2be4:	00000993          	li	s3,0
    2be8:	00410913          	addi	s2,sp,4
    2bec:	8bca0a13          	addi	s4,s4,-1860 # 48bc <numbers.1>
    2bf0:	00a00593          	li	a1,10
    2bf4:	00048513          	mv	a0,s1
    2bf8:	128010ef          	jal	ra,3d20 <__umodsi3>
    2bfc:	00aa0533          	add	a0,s4,a0
    2c00:	00054783          	lbu	a5,0(a0)
    2c04:	01390ab3          	add	s5,s2,s3
    2c08:	00048513          	mv	a0,s1
    2c0c:	00fa8023          	sb	a5,0(s5)
    2c10:	00a00593          	li	a1,10
    2c14:	0c4010ef          	jal	ra,3cd8 <__udivsi3>
    2c18:	00198993          	addi	s3,s3,1
    2c1c:	00a00793          	li	a5,10
    2c20:	00050493          	mv	s1,a0
    2c24:	fcf996e3          	bne	s3,a5,2bf0 <__neorv32_uart_itoa+0x3c>
    2c28:	00090693          	mv	a3,s2
    2c2c:	00900713          	li	a4,9
    2c30:	03000613          	li	a2,48
    2c34:	0096c583          	lbu	a1,9(a3) # ffff0009 <__ctr0_io_space_begin+0xffff0209>
    2c38:	00070793          	mv	a5,a4
    2c3c:	fff70713          	addi	a4,a4,-1
    2c40:	01071713          	slli	a4,a4,0x10
    2c44:	01075713          	srli	a4,a4,0x10
    2c48:	00c59a63          	bne	a1,a2,2c5c <__neorv32_uart_itoa+0xa8>
    2c4c:	000684a3          	sb	zero,9(a3)
    2c50:	fff68693          	addi	a3,a3,-1
    2c54:	fe0710e3          	bnez	a4,2c34 <__neorv32_uart_itoa+0x80>
    2c58:	00000793          	li	a5,0
    2c5c:	00f907b3          	add	a5,s2,a5
    2c60:	00000593          	li	a1,0
    2c64:	0007c703          	lbu	a4,0(a5)
    2c68:	00070c63          	beqz	a4,2c80 <__neorv32_uart_itoa+0xcc>
    2c6c:	00158693          	addi	a3,a1,1
    2c70:	00b405b3          	add	a1,s0,a1
    2c74:	00e58023          	sb	a4,0(a1)
    2c78:	01069593          	slli	a1,a3,0x10
    2c7c:	0105d593          	srli	a1,a1,0x10
    2c80:	fff78713          	addi	a4,a5,-1
    2c84:	02f91863          	bne	s2,a5,2cb4 <__neorv32_uart_itoa+0x100>
    2c88:	00b40433          	add	s0,s0,a1
    2c8c:	00040023          	sb	zero,0(s0)
    2c90:	02c12083          	lw	ra,44(sp)
    2c94:	02812403          	lw	s0,40(sp)
    2c98:	02412483          	lw	s1,36(sp)
    2c9c:	02012903          	lw	s2,32(sp)
    2ca0:	01c12983          	lw	s3,28(sp)
    2ca4:	01812a03          	lw	s4,24(sp)
    2ca8:	01412a83          	lw	s5,20(sp)
    2cac:	03010113          	addi	sp,sp,48
    2cb0:	00008067          	ret
    2cb4:	00070793          	mv	a5,a4
    2cb8:	fadff06f          	j	2c64 <__neorv32_uart_itoa+0xb0>

00002cbc <__neorv32_uart_tohex>:
    2cbc:	00005637          	lui	a2,0x5
    2cc0:	00758693          	addi	a3,a1,7
    2cc4:	00000713          	li	a4,0
    2cc8:	8c860613          	addi	a2,a2,-1848 # 48c8 <symbols.0>
    2ccc:	02000813          	li	a6,32
    2cd0:	00e557b3          	srl	a5,a0,a4
    2cd4:	00f7f793          	andi	a5,a5,15
    2cd8:	00f607b3          	add	a5,a2,a5
    2cdc:	0007c783          	lbu	a5,0(a5)
    2ce0:	00470713          	addi	a4,a4,4
    2ce4:	fff68693          	addi	a3,a3,-1
    2ce8:	00f680a3          	sb	a5,1(a3)
    2cec:	ff0712e3          	bne	a4,a6,2cd0 <__neorv32_uart_tohex+0x14>
    2cf0:	00058423          	sb	zero,8(a1)
    2cf4:	00008067          	ret

00002cf8 <neorv32_uart0_available>:
    2cf8:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
    2cfc:	01255513          	srli	a0,a0,0x12
    2d00:	00157513          	andi	a0,a0,1
    2d04:	00008067          	ret

00002d08 <neorv32_uart0_setup>:
    2d08:	ff010113          	addi	sp,sp,-16
    2d0c:	00812423          	sw	s0,8(sp)
    2d10:	00912223          	sw	s1,4(sp)
    2d14:	00112623          	sw	ra,12(sp)
    2d18:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
    2d1c:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
    2d20:	00058413          	mv	s0,a1
    2d24:	00151593          	slli	a1,a0,0x1
    2d28:	00078513          	mv	a0,a5
    2d2c:	00060493          	mv	s1,a2
    2d30:	7a9000ef          	jal	ra,3cd8 <__udivsi3>
    2d34:	01051513          	slli	a0,a0,0x10
    2d38:	000017b7          	lui	a5,0x1
    2d3c:	01055513          	srli	a0,a0,0x10
    2d40:	00000713          	li	a4,0
    2d44:	ffe78793          	addi	a5,a5,-2 # ffe <ee_printf+0x34a>
    2d48:	04a7e463          	bltu	a5,a0,2d90 <neorv32_uart0_setup+0x88>
    2d4c:	0034f793          	andi	a5,s1,3
    2d50:	00347413          	andi	s0,s0,3
    2d54:	fff50513          	addi	a0,a0,-1
    2d58:	01479793          	slli	a5,a5,0x14
    2d5c:	01641413          	slli	s0,s0,0x16
    2d60:	00f567b3          	or	a5,a0,a5
    2d64:	0087e7b3          	or	a5,a5,s0
    2d68:	01871713          	slli	a4,a4,0x18
    2d6c:	00c12083          	lw	ra,12(sp)
    2d70:	00812403          	lw	s0,8(sp)
    2d74:	00e7e7b3          	or	a5,a5,a4
    2d78:	10000737          	lui	a4,0x10000
    2d7c:	00e7e7b3          	or	a5,a5,a4
    2d80:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
    2d84:	00412483          	lw	s1,4(sp)
    2d88:	01010113          	addi	sp,sp,16
    2d8c:	00008067          	ret
    2d90:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffb2f2>
    2d94:	0fd6f693          	andi	a3,a3,253
    2d98:	00069a63          	bnez	a3,2dac <neorv32_uart0_setup+0xa4>
    2d9c:	00355513          	srli	a0,a0,0x3
    2da0:	00170713          	addi	a4,a4,1
    2da4:	0ff77713          	andi	a4,a4,255
    2da8:	fa1ff06f          	j	2d48 <neorv32_uart0_setup+0x40>
    2dac:	00155513          	srli	a0,a0,0x1
    2db0:	ff1ff06f          	j	2da0 <neorv32_uart0_setup+0x98>

00002db4 <neorv32_uart0_putc>:
    2db4:	00040737          	lui	a4,0x40
    2db8:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
    2dbc:	00e7f7b3          	and	a5,a5,a4
    2dc0:	fe079ce3          	bnez	a5,2db8 <neorv32_uart0_putc+0x4>
    2dc4:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
    2dc8:	00008067          	ret

00002dcc <neorv32_uart0_print>:
    2dcc:	ff010113          	addi	sp,sp,-16
    2dd0:	00812423          	sw	s0,8(sp)
    2dd4:	01212023          	sw	s2,0(sp)
    2dd8:	00112623          	sw	ra,12(sp)
    2ddc:	00912223          	sw	s1,4(sp)
    2de0:	00050413          	mv	s0,a0
    2de4:	00a00913          	li	s2,10
    2de8:	00044483          	lbu	s1,0(s0)
    2dec:	00140413          	addi	s0,s0,1
    2df0:	00049e63          	bnez	s1,2e0c <neorv32_uart0_print+0x40>
    2df4:	00c12083          	lw	ra,12(sp)
    2df8:	00812403          	lw	s0,8(sp)
    2dfc:	00412483          	lw	s1,4(sp)
    2e00:	00012903          	lw	s2,0(sp)
    2e04:	01010113          	addi	sp,sp,16
    2e08:	00008067          	ret
    2e0c:	01249663          	bne	s1,s2,2e18 <neorv32_uart0_print+0x4c>
    2e10:	00d00513          	li	a0,13
    2e14:	fa1ff0ef          	jal	ra,2db4 <neorv32_uart0_putc>
    2e18:	00048513          	mv	a0,s1
    2e1c:	f99ff0ef          	jal	ra,2db4 <neorv32_uart0_putc>
    2e20:	fc9ff06f          	j	2de8 <neorv32_uart0_print+0x1c>

00002e24 <neorv32_uart0_printf>:
    2e24:	fa010113          	addi	sp,sp,-96
    2e28:	04f12a23          	sw	a5,84(sp)
    2e2c:	04410793          	addi	a5,sp,68
    2e30:	02812c23          	sw	s0,56(sp)
    2e34:	03212823          	sw	s2,48(sp)
    2e38:	03412423          	sw	s4,40(sp)
    2e3c:	03512223          	sw	s5,36(sp)
    2e40:	03612023          	sw	s6,32(sp)
    2e44:	01712e23          	sw	s7,28(sp)
    2e48:	01812c23          	sw	s8,24(sp)
    2e4c:	01912a23          	sw	s9,20(sp)
    2e50:	02112e23          	sw	ra,60(sp)
    2e54:	02912a23          	sw	s1,52(sp)
    2e58:	03312623          	sw	s3,44(sp)
    2e5c:	00050413          	mv	s0,a0
    2e60:	04b12223          	sw	a1,68(sp)
    2e64:	04c12423          	sw	a2,72(sp)
    2e68:	04d12623          	sw	a3,76(sp)
    2e6c:	04e12823          	sw	a4,80(sp)
    2e70:	05012c23          	sw	a6,88(sp)
    2e74:	05112e23          	sw	a7,92(sp)
    2e78:	00f12023          	sw	a5,0(sp)
    2e7c:	02500a13          	li	s4,37
    2e80:	00a00a93          	li	s5,10
    2e84:	07300913          	li	s2,115
    2e88:	07500b13          	li	s6,117
    2e8c:	07800b93          	li	s7,120
    2e90:	06300c13          	li	s8,99
    2e94:	06900c93          	li	s9,105
    2e98:	00044483          	lbu	s1,0(s0)
    2e9c:	02049c63          	bnez	s1,2ed4 <neorv32_uart0_printf+0xb0>
    2ea0:	03c12083          	lw	ra,60(sp)
    2ea4:	03812403          	lw	s0,56(sp)
    2ea8:	03412483          	lw	s1,52(sp)
    2eac:	03012903          	lw	s2,48(sp)
    2eb0:	02c12983          	lw	s3,44(sp)
    2eb4:	02812a03          	lw	s4,40(sp)
    2eb8:	02412a83          	lw	s5,36(sp)
    2ebc:	02012b03          	lw	s6,32(sp)
    2ec0:	01c12b83          	lw	s7,28(sp)
    2ec4:	01812c03          	lw	s8,24(sp)
    2ec8:	01412c83          	lw	s9,20(sp)
    2ecc:	06010113          	addi	sp,sp,96
    2ed0:	00008067          	ret
    2ed4:	0d449863          	bne	s1,s4,2fa4 <neorv32_uart0_printf+0x180>
    2ed8:	00240993          	addi	s3,s0,2
    2edc:	00144403          	lbu	s0,1(s0)
    2ee0:	05240263          	beq	s0,s2,2f24 <neorv32_uart0_printf+0x100>
    2ee4:	00896e63          	bltu	s2,s0,2f00 <neorv32_uart0_printf+0xdc>
    2ee8:	05840c63          	beq	s0,s8,2f40 <neorv32_uart0_printf+0x11c>
    2eec:	07940663          	beq	s0,s9,2f58 <neorv32_uart0_printf+0x134>
    2ef0:	02500513          	li	a0,37
    2ef4:	ec1ff0ef          	jal	ra,2db4 <neorv32_uart0_putc>
    2ef8:	00040513          	mv	a0,s0
    2efc:	0540006f          	j	2f50 <neorv32_uart0_printf+0x12c>
    2f00:	09640663          	beq	s0,s6,2f8c <neorv32_uart0_printf+0x168>
    2f04:	ff7416e3          	bne	s0,s7,2ef0 <neorv32_uart0_printf+0xcc>
    2f08:	00012783          	lw	a5,0(sp)
    2f0c:	00410593          	addi	a1,sp,4
    2f10:	0007a503          	lw	a0,0(a5)
    2f14:	00478713          	addi	a4,a5,4
    2f18:	00e12023          	sw	a4,0(sp)
    2f1c:	da1ff0ef          	jal	ra,2cbc <__neorv32_uart_tohex>
    2f20:	0640006f          	j	2f84 <neorv32_uart0_printf+0x160>
    2f24:	00012783          	lw	a5,0(sp)
    2f28:	0007a503          	lw	a0,0(a5)
    2f2c:	00478713          	addi	a4,a5,4
    2f30:	00e12023          	sw	a4,0(sp)
    2f34:	e99ff0ef          	jal	ra,2dcc <neorv32_uart0_print>
    2f38:	00098413          	mv	s0,s3
    2f3c:	f5dff06f          	j	2e98 <neorv32_uart0_printf+0x74>
    2f40:	00012783          	lw	a5,0(sp)
    2f44:	0007c503          	lbu	a0,0(a5)
    2f48:	00478713          	addi	a4,a5,4
    2f4c:	00e12023          	sw	a4,0(sp)
    2f50:	e65ff0ef          	jal	ra,2db4 <neorv32_uart0_putc>
    2f54:	fe5ff06f          	j	2f38 <neorv32_uart0_printf+0x114>
    2f58:	00012783          	lw	a5,0(sp)
    2f5c:	0007a403          	lw	s0,0(a5)
    2f60:	00478713          	addi	a4,a5,4
    2f64:	00e12023          	sw	a4,0(sp)
    2f68:	00045863          	bgez	s0,2f78 <neorv32_uart0_printf+0x154>
    2f6c:	02d00513          	li	a0,45
    2f70:	40800433          	neg	s0,s0
    2f74:	e41ff0ef          	jal	ra,2db4 <neorv32_uart0_putc>
    2f78:	00410593          	addi	a1,sp,4
    2f7c:	00040513          	mv	a0,s0
    2f80:	c35ff0ef          	jal	ra,2bb4 <__neorv32_uart_itoa>
    2f84:	00410513          	addi	a0,sp,4
    2f88:	fadff06f          	j	2f34 <neorv32_uart0_printf+0x110>
    2f8c:	00012783          	lw	a5,0(sp)
    2f90:	00410593          	addi	a1,sp,4
    2f94:	00478713          	addi	a4,a5,4
    2f98:	0007a503          	lw	a0,0(a5)
    2f9c:	00e12023          	sw	a4,0(sp)
    2fa0:	fe1ff06f          	j	2f80 <neorv32_uart0_printf+0x15c>
    2fa4:	01549663          	bne	s1,s5,2fb0 <neorv32_uart0_printf+0x18c>
    2fa8:	00d00513          	li	a0,13
    2fac:	e09ff0ef          	jal	ra,2db4 <neorv32_uart0_putc>
    2fb0:	00140993          	addi	s3,s0,1
    2fb4:	00048513          	mv	a0,s1
    2fb8:	f99ff06f          	j	2f50 <neorv32_uart0_printf+0x12c>

00002fbc <neorv32_cpu_get_cycle>:
    2fbc:	ff010113          	addi	sp,sp,-16
    2fc0:	c80026f3          	rdcycleh	a3
    2fc4:	c0002773          	rdcycle	a4
    2fc8:	c80027f3          	rdcycleh	a5
    2fcc:	fed79ae3          	bne	a5,a3,2fc0 <neorv32_cpu_get_cycle+0x4>
    2fd0:	00e12023          	sw	a4,0(sp)
    2fd4:	00f12223          	sw	a5,4(sp)
    2fd8:	00012503          	lw	a0,0(sp)
    2fdc:	00412583          	lw	a1,4(sp)
    2fe0:	01010113          	addi	sp,sp,16
    2fe4:	00008067          	ret

00002fe8 <neorv32_cpu_set_mcycle>:
    2fe8:	00000793          	li	a5,0
    2fec:	b0079073          	csrw	mcycle,a5
    2ff0:	b8059073          	csrw	mcycleh,a1
    2ff4:	b0051073          	csrw	mcycle,a0
    2ff8:	00008067          	ret

00002ffc <neorv32_cpu_get_instret>:
    2ffc:	ff010113          	addi	sp,sp,-16
    3000:	c82026f3          	rdinstreth	a3
    3004:	c0202773          	rdinstret	a4
    3008:	c82027f3          	rdinstreth	a5
    300c:	fed79ae3          	bne	a5,a3,3000 <neorv32_cpu_get_instret+0x4>
    3010:	00e12023          	sw	a4,0(sp)
    3014:	00f12223          	sw	a5,4(sp)
    3018:	00012503          	lw	a0,0(sp)
    301c:	00412583          	lw	a1,4(sp)
    3020:	01010113          	addi	sp,sp,16
    3024:	00008067          	ret

00003028 <neorv32_cpu_hpm_get_counters>:
    3028:	fe402503          	lw	a0,-28(zero) # ffffffe4 <__ctr0_io_space_begin+0x1e4>
    302c:	20057513          	andi	a0,a0,512
    3030:	14050a63          	beqz	a0,3184 <neorv32_cpu_hpm_get_counters+0x15c>
    3034:	320027f3          	csrr	a5,mcountinhibit
    3038:	ff87e793          	ori	a5,a5,-8
    303c:	32079073          	csrw	mcountinhibit,a5
    3040:	00100793          	li	a5,1
    3044:	b0379073          	csrw	mhpmcounter3,a5
    3048:	b0479073          	csrw	mhpmcounter4,a5
    304c:	b0579073          	csrw	mhpmcounter5,a5
    3050:	b0679073          	csrw	mhpmcounter6,a5
    3054:	b0779073          	csrw	mhpmcounter7,a5
    3058:	b0879073          	csrw	mhpmcounter8,a5
    305c:	b0979073          	csrw	mhpmcounter9,a5
    3060:	b0a79073          	csrw	mhpmcounter10,a5
    3064:	b0b79073          	csrw	mhpmcounter11,a5
    3068:	b0c79073          	csrw	mhpmcounter12,a5
    306c:	b0d79073          	csrw	mhpmcounter13,a5
    3070:	b0e79073          	csrw	mhpmcounter14,a5
    3074:	b0f79073          	csrw	mhpmcounter15,a5
    3078:	b1079073          	csrw	mhpmcounter16,a5
    307c:	b1179073          	csrw	mhpmcounter17,a5
    3080:	b1279073          	csrw	mhpmcounter18,a5
    3084:	b1379073          	csrw	mhpmcounter19,a5
    3088:	b1479073          	csrw	mhpmcounter20,a5
    308c:	b1579073          	csrw	mhpmcounter21,a5
    3090:	b1679073          	csrw	mhpmcounter22,a5
    3094:	b1779073          	csrw	mhpmcounter23,a5
    3098:	b1879073          	csrw	mhpmcounter24,a5
    309c:	b1979073          	csrw	mhpmcounter25,a5
    30a0:	b1a79073          	csrw	mhpmcounter26,a5
    30a4:	b1b79073          	csrw	mhpmcounter27,a5
    30a8:	b1c79073          	csrw	mhpmcounter28,a5
    30ac:	b1d79073          	csrw	mhpmcounter29,a5
    30b0:	b03027f3          	csrr	a5,mhpmcounter3
    30b4:	b0402573          	csrr	a0,mhpmcounter4
    30b8:	00f50533          	add	a0,a0,a5
    30bc:	b05027f3          	csrr	a5,mhpmcounter5
    30c0:	00f50533          	add	a0,a0,a5
    30c4:	b06027f3          	csrr	a5,mhpmcounter6
    30c8:	00f50533          	add	a0,a0,a5
    30cc:	b07027f3          	csrr	a5,mhpmcounter7
    30d0:	00f50533          	add	a0,a0,a5
    30d4:	b08027f3          	csrr	a5,mhpmcounter8
    30d8:	00f50533          	add	a0,a0,a5
    30dc:	b09027f3          	csrr	a5,mhpmcounter9
    30e0:	00f50533          	add	a0,a0,a5
    30e4:	b0a027f3          	csrr	a5,mhpmcounter10
    30e8:	00f50533          	add	a0,a0,a5
    30ec:	b0b027f3          	csrr	a5,mhpmcounter11
    30f0:	00f50533          	add	a0,a0,a5
    30f4:	b0c027f3          	csrr	a5,mhpmcounter12
    30f8:	00f50533          	add	a0,a0,a5
    30fc:	b0d027f3          	csrr	a5,mhpmcounter13
    3100:	00f50533          	add	a0,a0,a5
    3104:	b0e027f3          	csrr	a5,mhpmcounter14
    3108:	00f50533          	add	a0,a0,a5
    310c:	b0f027f3          	csrr	a5,mhpmcounter15
    3110:	00f50533          	add	a0,a0,a5
    3114:	b10027f3          	csrr	a5,mhpmcounter16
    3118:	00f50533          	add	a0,a0,a5
    311c:	b11027f3          	csrr	a5,mhpmcounter17
    3120:	00f50533          	add	a0,a0,a5
    3124:	b12027f3          	csrr	a5,mhpmcounter18
    3128:	00f50533          	add	a0,a0,a5
    312c:	b13027f3          	csrr	a5,mhpmcounter19
    3130:	00f50533          	add	a0,a0,a5
    3134:	b14027f3          	csrr	a5,mhpmcounter20
    3138:	00f50533          	add	a0,a0,a5
    313c:	b15027f3          	csrr	a5,mhpmcounter21
    3140:	00f50533          	add	a0,a0,a5
    3144:	b16027f3          	csrr	a5,mhpmcounter22
    3148:	00f50533          	add	a0,a0,a5
    314c:	b17027f3          	csrr	a5,mhpmcounter23
    3150:	00f50533          	add	a0,a0,a5
    3154:	b18027f3          	csrr	a5,mhpmcounter24
    3158:	00f50533          	add	a0,a0,a5
    315c:	b19027f3          	csrr	a5,mhpmcounter25
    3160:	00f50533          	add	a0,a0,a5
    3164:	b1a027f3          	csrr	a5,mhpmcounter26
    3168:	00f50533          	add	a0,a0,a5
    316c:	b1b027f3          	csrr	a5,mhpmcounter27
    3170:	00f50533          	add	a0,a0,a5
    3174:	b1c027f3          	csrr	a5,mhpmcounter28
    3178:	00f50533          	add	a0,a0,a5
    317c:	b1d027f3          	csrr	a5,mhpmcounter29
    3180:	00f50533          	add	a0,a0,a5
    3184:	00008067          	ret
    3188:	0000                	unimp
    318a:	0000                	unimp
    318c:	0000                	unimp
    318e:	0000                	unimp

00003190 <__neorv32_rte_core>:
    3190:	fc010113          	addi	sp,sp,-64
    3194:	02112e23          	sw	ra,60(sp)
    3198:	02512c23          	sw	t0,56(sp)
    319c:	02612a23          	sw	t1,52(sp)
    31a0:	02712823          	sw	t2,48(sp)
    31a4:	02a12623          	sw	a0,44(sp)
    31a8:	02b12423          	sw	a1,40(sp)
    31ac:	02c12223          	sw	a2,36(sp)
    31b0:	02d12023          	sw	a3,32(sp)
    31b4:	00e12e23          	sw	a4,28(sp)
    31b8:	00f12c23          	sw	a5,24(sp)
    31bc:	01012a23          	sw	a6,20(sp)
    31c0:	01112823          	sw	a7,16(sp)
    31c4:	01c12623          	sw	t3,12(sp)
    31c8:	01d12423          	sw	t4,8(sp)
    31cc:	01e12223          	sw	t5,4(sp)
    31d0:	01f12023          	sw	t6,0(sp)
    31d4:	34102773          	csrr	a4,mepc
    31d8:	34071073          	csrw	mscratch,a4
    31dc:	342027f3          	csrr	a5,mcause
    31e0:	0807ca63          	bltz	a5,3274 <__neorv32_rte_core+0xe4>
    31e4:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3b2f4>
    31e8:	00300593          	li	a1,3
    31ec:	0036f693          	andi	a3,a3,3
    31f0:	00270613          	addi	a2,a4,2
    31f4:	00b69463          	bne	a3,a1,31fc <__neorv32_rte_core+0x6c>
    31f8:	00470613          	addi	a2,a4,4
    31fc:	34161073          	csrw	mepc,a2
    3200:	00b00713          	li	a4,11
    3204:	04f77c63          	bgeu	a4,a5,325c <__neorv32_rte_core+0xcc>
    3208:	000037b7          	lui	a5,0x3
    320c:	40078793          	addi	a5,a5,1024 # 3400 <__neorv32_rte_debug_exc_handler>
    3210:	000780e7          	jalr	a5
    3214:	03c12083          	lw	ra,60(sp)
    3218:	03812283          	lw	t0,56(sp)
    321c:	03412303          	lw	t1,52(sp)
    3220:	03012383          	lw	t2,48(sp)
    3224:	02c12503          	lw	a0,44(sp)
    3228:	02812583          	lw	a1,40(sp)
    322c:	02412603          	lw	a2,36(sp)
    3230:	02012683          	lw	a3,32(sp)
    3234:	01c12703          	lw	a4,28(sp)
    3238:	01812783          	lw	a5,24(sp)
    323c:	01412803          	lw	a6,20(sp)
    3240:	01012883          	lw	a7,16(sp)
    3244:	00c12e03          	lw	t3,12(sp)
    3248:	00812e83          	lw	t4,8(sp)
    324c:	00412f03          	lw	t5,4(sp)
    3250:	00012f83          	lw	t6,0(sp)
    3254:	04010113          	addi	sp,sp,64
    3258:	30200073          	mret
    325c:	00005737          	lui	a4,0x5
    3260:	00279793          	slli	a5,a5,0x2
    3264:	8dc70713          	addi	a4,a4,-1828 # 48dc <symbols.0+0x14>
    3268:	00e787b3          	add	a5,a5,a4
    326c:	0007a783          	lw	a5,0(a5)
    3270:	00078067          	jr	a5
    3274:	80000737          	lui	a4,0x80000
    3278:	ffd74713          	xori	a4,a4,-3
    327c:	00e787b3          	add	a5,a5,a4
    3280:	01c00713          	li	a4,28
    3284:	f8f762e3          	bltu	a4,a5,3208 <__neorv32_rte_core+0x78>
    3288:	00005737          	lui	a4,0x5
    328c:	00279793          	slli	a5,a5,0x2
    3290:	90c70713          	addi	a4,a4,-1780 # 490c <symbols.0+0x44>
    3294:	00e787b3          	add	a5,a5,a4
    3298:	0007a783          	lw	a5,0(a5)
    329c:	00078067          	jr	a5
    32a0:	0001a783          	lw	a5,0(gp) # 80000800 <__neorv32_rte_vector_lut>
    32a4:	f6dff06f          	j	3210 <__neorv32_rte_core+0x80>
    32a8:	0041a783          	lw	a5,4(gp) # 80000804 <__neorv32_rte_vector_lut+0x4>
    32ac:	f65ff06f          	j	3210 <__neorv32_rte_core+0x80>
    32b0:	0081a783          	lw	a5,8(gp) # 80000808 <__neorv32_rte_vector_lut+0x8>
    32b4:	f5dff06f          	j	3210 <__neorv32_rte_core+0x80>
    32b8:	00c1a783          	lw	a5,12(gp) # 8000080c <__neorv32_rte_vector_lut+0xc>
    32bc:	f55ff06f          	j	3210 <__neorv32_rte_core+0x80>
    32c0:	0101a783          	lw	a5,16(gp) # 80000810 <__neorv32_rte_vector_lut+0x10>
    32c4:	f4dff06f          	j	3210 <__neorv32_rte_core+0x80>
    32c8:	0141a783          	lw	a5,20(gp) # 80000814 <__neorv32_rte_vector_lut+0x14>
    32cc:	f45ff06f          	j	3210 <__neorv32_rte_core+0x80>
    32d0:	0181a783          	lw	a5,24(gp) # 80000818 <__neorv32_rte_vector_lut+0x18>
    32d4:	f3dff06f          	j	3210 <__neorv32_rte_core+0x80>
    32d8:	01c1a783          	lw	a5,28(gp) # 8000081c <__neorv32_rte_vector_lut+0x1c>
    32dc:	f35ff06f          	j	3210 <__neorv32_rte_core+0x80>
    32e0:	0201a783          	lw	a5,32(gp) # 80000820 <__neorv32_rte_vector_lut+0x20>
    32e4:	f2dff06f          	j	3210 <__neorv32_rte_core+0x80>
    32e8:	0241a783          	lw	a5,36(gp) # 80000824 <__neorv32_rte_vector_lut+0x24>
    32ec:	f25ff06f          	j	3210 <__neorv32_rte_core+0x80>
    32f0:	0281a783          	lw	a5,40(gp) # 80000828 <__neorv32_rte_vector_lut+0x28>
    32f4:	f1dff06f          	j	3210 <__neorv32_rte_core+0x80>
    32f8:	02c1a783          	lw	a5,44(gp) # 8000082c <__neorv32_rte_vector_lut+0x2c>
    32fc:	f15ff06f          	j	3210 <__neorv32_rte_core+0x80>
    3300:	0301a783          	lw	a5,48(gp) # 80000830 <__neorv32_rte_vector_lut+0x30>
    3304:	f0dff06f          	j	3210 <__neorv32_rte_core+0x80>
    3308:	0341a783          	lw	a5,52(gp) # 80000834 <__neorv32_rte_vector_lut+0x34>
    330c:	f05ff06f          	j	3210 <__neorv32_rte_core+0x80>
    3310:	0381a783          	lw	a5,56(gp) # 80000838 <__neorv32_rte_vector_lut+0x38>
    3314:	efdff06f          	j	3210 <__neorv32_rte_core+0x80>
    3318:	03c1a783          	lw	a5,60(gp) # 8000083c <__neorv32_rte_vector_lut+0x3c>
    331c:	ef5ff06f          	j	3210 <__neorv32_rte_core+0x80>
    3320:	0401a783          	lw	a5,64(gp) # 80000840 <__neorv32_rte_vector_lut+0x40>
    3324:	eedff06f          	j	3210 <__neorv32_rte_core+0x80>
    3328:	0441a783          	lw	a5,68(gp) # 80000844 <__neorv32_rte_vector_lut+0x44>
    332c:	ee5ff06f          	j	3210 <__neorv32_rte_core+0x80>
    3330:	0481a783          	lw	a5,72(gp) # 80000848 <__neorv32_rte_vector_lut+0x48>
    3334:	eddff06f          	j	3210 <__neorv32_rte_core+0x80>
    3338:	04c1a783          	lw	a5,76(gp) # 8000084c <__neorv32_rte_vector_lut+0x4c>
    333c:	ed5ff06f          	j	3210 <__neorv32_rte_core+0x80>
    3340:	0501a783          	lw	a5,80(gp) # 80000850 <__neorv32_rte_vector_lut+0x50>
    3344:	ecdff06f          	j	3210 <__neorv32_rte_core+0x80>
    3348:	0541a783          	lw	a5,84(gp) # 80000854 <__neorv32_rte_vector_lut+0x54>
    334c:	ec5ff06f          	j	3210 <__neorv32_rte_core+0x80>
    3350:	0581a783          	lw	a5,88(gp) # 80000858 <__neorv32_rte_vector_lut+0x58>
    3354:	ebdff06f          	j	3210 <__neorv32_rte_core+0x80>
    3358:	05c1a783          	lw	a5,92(gp) # 8000085c <__neorv32_rte_vector_lut+0x5c>
    335c:	eb5ff06f          	j	3210 <__neorv32_rte_core+0x80>
    3360:	0601a783          	lw	a5,96(gp) # 80000860 <__neorv32_rte_vector_lut+0x60>
    3364:	eadff06f          	j	3210 <__neorv32_rte_core+0x80>
    3368:	0641a783          	lw	a5,100(gp) # 80000864 <__neorv32_rte_vector_lut+0x64>
    336c:	ea5ff06f          	j	3210 <__neorv32_rte_core+0x80>
    3370:	0681a783          	lw	a5,104(gp) # 80000868 <__neorv32_rte_vector_lut+0x68>
    3374:	e9dff06f          	j	3210 <__neorv32_rte_core+0x80>
    3378:	06c1a783          	lw	a5,108(gp) # 8000086c <__neorv32_rte_vector_lut+0x6c>
    337c:	e95ff06f          	j	3210 <__neorv32_rte_core+0x80>
    3380:	0701a783          	lw	a5,112(gp) # 80000870 <__neorv32_rte_vector_lut+0x70>
    3384:	e8dff06f          	j	3210 <__neorv32_rte_core+0x80>
    3388:	0000                	unimp
    338a:	0000                	unimp
    338c:	0000                	unimp
    338e:	0000                	unimp

00003390 <__neorv32_rte_print_hex_word>:
    3390:	fe010113          	addi	sp,sp,-32
    3394:	01212823          	sw	s2,16(sp)
    3398:	00050913          	mv	s2,a0
    339c:	00005537          	lui	a0,0x5
    33a0:	00912a23          	sw	s1,20(sp)
    33a4:	98050513          	addi	a0,a0,-1664 # 4980 <symbols.0+0xb8>
    33a8:	000054b7          	lui	s1,0x5
    33ac:	00812c23          	sw	s0,24(sp)
    33b0:	01312623          	sw	s3,12(sp)
    33b4:	00112e23          	sw	ra,28(sp)
    33b8:	01c00413          	li	s0,28
    33bc:	a11ff0ef          	jal	ra,2dcc <neorv32_uart0_print>
    33c0:	bfc48493          	addi	s1,s1,-1028 # 4bfc <hex_symbols.0>
    33c4:	ffc00993          	li	s3,-4
    33c8:	008957b3          	srl	a5,s2,s0
    33cc:	00f7f793          	andi	a5,a5,15
    33d0:	00f487b3          	add	a5,s1,a5
    33d4:	0007c503          	lbu	a0,0(a5)
    33d8:	ffc40413          	addi	s0,s0,-4
    33dc:	9d9ff0ef          	jal	ra,2db4 <neorv32_uart0_putc>
    33e0:	ff3414e3          	bne	s0,s3,33c8 <__neorv32_rte_print_hex_word+0x38>
    33e4:	01c12083          	lw	ra,28(sp)
    33e8:	01812403          	lw	s0,24(sp)
    33ec:	01412483          	lw	s1,20(sp)
    33f0:	01012903          	lw	s2,16(sp)
    33f4:	00c12983          	lw	s3,12(sp)
    33f8:	02010113          	addi	sp,sp,32
    33fc:	00008067          	ret

00003400 <__neorv32_rte_debug_exc_handler>:
    3400:	ff010113          	addi	sp,sp,-16
    3404:	00112623          	sw	ra,12(sp)
    3408:	00812423          	sw	s0,8(sp)
    340c:	00912223          	sw	s1,4(sp)
    3410:	8e9ff0ef          	jal	ra,2cf8 <neorv32_uart0_available>
    3414:	1c050863          	beqz	a0,35e4 <__neorv32_rte_debug_exc_handler+0x1e4>
    3418:	00005537          	lui	a0,0x5
    341c:	98450513          	addi	a0,a0,-1660 # 4984 <symbols.0+0xbc>
    3420:	9adff0ef          	jal	ra,2dcc <neorv32_uart0_print>
    3424:	34202473          	csrr	s0,mcause
    3428:	00900713          	li	a4,9
    342c:	00f47793          	andi	a5,s0,15
    3430:	03078493          	addi	s1,a5,48
    3434:	00f77463          	bgeu	a4,a5,343c <__neorv32_rte_debug_exc_handler+0x3c>
    3438:	05778493          	addi	s1,a5,87
    343c:	00b00793          	li	a5,11
    3440:	0087ee63          	bltu	a5,s0,345c <__neorv32_rte_debug_exc_handler+0x5c>
    3444:	00005737          	lui	a4,0x5
    3448:	00241793          	slli	a5,s0,0x2
    344c:	b4470713          	addi	a4,a4,-1212 # 4b44 <symbols.0+0x27c>
    3450:	00e787b3          	add	a5,a5,a4
    3454:	0007a783          	lw	a5,0(a5)
    3458:	00078067          	jr	a5
    345c:	800007b7          	lui	a5,0x80000
    3460:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
    3464:	14e40e63          	beq	s0,a4,35c0 <__neorv32_rte_debug_exc_handler+0x1c0>
    3468:	02876a63          	bltu	a4,s0,349c <__neorv32_rte_debug_exc_handler+0x9c>
    346c:	00378713          	addi	a4,a5,3
    3470:	12e40c63          	beq	s0,a4,35a8 <__neorv32_rte_debug_exc_handler+0x1a8>
    3474:	00778793          	addi	a5,a5,7
    3478:	12f40e63          	beq	s0,a5,35b4 <__neorv32_rte_debug_exc_handler+0x1b4>
    347c:	00005537          	lui	a0,0x5
    3480:	ae450513          	addi	a0,a0,-1308 # 4ae4 <symbols.0+0x21c>
    3484:	949ff0ef          	jal	ra,2dcc <neorv32_uart0_print>
    3488:	00040513          	mv	a0,s0
    348c:	f05ff0ef          	jal	ra,3390 <__neorv32_rte_print_hex_word>
    3490:	00100793          	li	a5,1
    3494:	08f40c63          	beq	s0,a5,352c <__neorv32_rte_debug_exc_handler+0x12c>
    3498:	0280006f          	j	34c0 <__neorv32_rte_debug_exc_handler+0xc0>
    349c:	ff07c793          	xori	a5,a5,-16
    34a0:	00f407b3          	add	a5,s0,a5
    34a4:	00f00713          	li	a4,15
    34a8:	fcf76ae3          	bltu	a4,a5,347c <__neorv32_rte_debug_exc_handler+0x7c>
    34ac:	00005537          	lui	a0,0x5
    34b0:	ad450513          	addi	a0,a0,-1324 # 4ad4 <symbols.0+0x20c>
    34b4:	919ff0ef          	jal	ra,2dcc <neorv32_uart0_print>
    34b8:	00048513          	mv	a0,s1
    34bc:	8f9ff0ef          	jal	ra,2db4 <neorv32_uart0_putc>
    34c0:	ffd47413          	andi	s0,s0,-3
    34c4:	00500793          	li	a5,5
    34c8:	06f40263          	beq	s0,a5,352c <__neorv32_rte_debug_exc_handler+0x12c>
    34cc:	00005537          	lui	a0,0x5
    34d0:	b2850513          	addi	a0,a0,-1240 # 4b28 <symbols.0+0x260>
    34d4:	8f9ff0ef          	jal	ra,2dcc <neorv32_uart0_print>
    34d8:	34002573          	csrr	a0,mscratch
    34dc:	eb5ff0ef          	jal	ra,3390 <__neorv32_rte_print_hex_word>
    34e0:	00005537          	lui	a0,0x5
    34e4:	b3050513          	addi	a0,a0,-1232 # 4b30 <symbols.0+0x268>
    34e8:	8e5ff0ef          	jal	ra,2dcc <neorv32_uart0_print>
    34ec:	34302573          	csrr	a0,mtval
    34f0:	ea1ff0ef          	jal	ra,3390 <__neorv32_rte_print_hex_word>
    34f4:	00812403          	lw	s0,8(sp)
    34f8:	00c12083          	lw	ra,12(sp)
    34fc:	00412483          	lw	s1,4(sp)
    3500:	00005537          	lui	a0,0x5
    3504:	b3c50513          	addi	a0,a0,-1220 # 4b3c <symbols.0+0x274>
    3508:	01010113          	addi	sp,sp,16
    350c:	8c1ff06f          	j	2dcc <neorv32_uart0_print>
    3510:	00005537          	lui	a0,0x5
    3514:	98c50513          	addi	a0,a0,-1652 # 498c <symbols.0+0xc4>
    3518:	8b5ff0ef          	jal	ra,2dcc <neorv32_uart0_print>
    351c:	fb1ff06f          	j	34cc <__neorv32_rte_debug_exc_handler+0xcc>
    3520:	00005537          	lui	a0,0x5
    3524:	9ac50513          	addi	a0,a0,-1620 # 49ac <symbols.0+0xe4>
    3528:	8a5ff0ef          	jal	ra,2dcc <neorv32_uart0_print>
    352c:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
    3530:	0a07d463          	bgez	a5,35d8 <__neorv32_rte_debug_exc_handler+0x1d8>
    3534:	0017f793          	andi	a5,a5,1
    3538:	08078a63          	beqz	a5,35cc <__neorv32_rte_debug_exc_handler+0x1cc>
    353c:	00005537          	lui	a0,0x5
    3540:	afc50513          	addi	a0,a0,-1284 # 4afc <symbols.0+0x234>
    3544:	fd5ff06f          	j	3518 <__neorv32_rte_debug_exc_handler+0x118>
    3548:	00005537          	lui	a0,0x5
    354c:	9c850513          	addi	a0,a0,-1592 # 49c8 <symbols.0+0x100>
    3550:	fc9ff06f          	j	3518 <__neorv32_rte_debug_exc_handler+0x118>
    3554:	00005537          	lui	a0,0x5
    3558:	9dc50513          	addi	a0,a0,-1572 # 49dc <symbols.0+0x114>
    355c:	fbdff06f          	j	3518 <__neorv32_rte_debug_exc_handler+0x118>
    3560:	00005537          	lui	a0,0x5
    3564:	9e850513          	addi	a0,a0,-1560 # 49e8 <symbols.0+0x120>
    3568:	fb1ff06f          	j	3518 <__neorv32_rte_debug_exc_handler+0x118>
    356c:	00005537          	lui	a0,0x5
    3570:	a0050513          	addi	a0,a0,-1536 # 4a00 <symbols.0+0x138>
    3574:	fb5ff06f          	j	3528 <__neorv32_rte_debug_exc_handler+0x128>
    3578:	00005537          	lui	a0,0x5
    357c:	a1450513          	addi	a0,a0,-1516 # 4a14 <symbols.0+0x14c>
    3580:	f99ff06f          	j	3518 <__neorv32_rte_debug_exc_handler+0x118>
    3584:	00005537          	lui	a0,0x5
    3588:	a3050513          	addi	a0,a0,-1488 # 4a30 <symbols.0+0x168>
    358c:	f9dff06f          	j	3528 <__neorv32_rte_debug_exc_handler+0x128>
    3590:	00005537          	lui	a0,0x5
    3594:	a4450513          	addi	a0,a0,-1468 # 4a44 <symbols.0+0x17c>
    3598:	f81ff06f          	j	3518 <__neorv32_rte_debug_exc_handler+0x118>
    359c:	00005537          	lui	a0,0x5
    35a0:	a6450513          	addi	a0,a0,-1436 # 4a64 <symbols.0+0x19c>
    35a4:	f75ff06f          	j	3518 <__neorv32_rte_debug_exc_handler+0x118>
    35a8:	00005537          	lui	a0,0x5
    35ac:	a8450513          	addi	a0,a0,-1404 # 4a84 <symbols.0+0x1bc>
    35b0:	f69ff06f          	j	3518 <__neorv32_rte_debug_exc_handler+0x118>
    35b4:	00005537          	lui	a0,0x5
    35b8:	aa050513          	addi	a0,a0,-1376 # 4aa0 <symbols.0+0x1d8>
    35bc:	f5dff06f          	j	3518 <__neorv32_rte_debug_exc_handler+0x118>
    35c0:	00005537          	lui	a0,0x5
    35c4:	ab850513          	addi	a0,a0,-1352 # 4ab8 <symbols.0+0x1f0>
    35c8:	f51ff06f          	j	3518 <__neorv32_rte_debug_exc_handler+0x118>
    35cc:	00005537          	lui	a0,0x5
    35d0:	b0c50513          	addi	a0,a0,-1268 # 4b0c <symbols.0+0x244>
    35d4:	f45ff06f          	j	3518 <__neorv32_rte_debug_exc_handler+0x118>
    35d8:	00005537          	lui	a0,0x5
    35dc:	b1c50513          	addi	a0,a0,-1252 # 4b1c <symbols.0+0x254>
    35e0:	f39ff06f          	j	3518 <__neorv32_rte_debug_exc_handler+0x118>
    35e4:	00c12083          	lw	ra,12(sp)
    35e8:	00812403          	lw	s0,8(sp)
    35ec:	00412483          	lw	s1,4(sp)
    35f0:	01010113          	addi	sp,sp,16
    35f4:	00008067          	ret

000035f8 <neorv32_rte_exception_uninstall>:
    35f8:	01f00793          	li	a5,31
    35fc:	02a7e263          	bltu	a5,a0,3620 <neorv32_rte_exception_uninstall+0x28>
    3600:	00018793          	mv	a5,gp
    3604:	00251513          	slli	a0,a0,0x2
    3608:	00a78533          	add	a0,a5,a0
    360c:	000037b7          	lui	a5,0x3
    3610:	40078793          	addi	a5,a5,1024 # 3400 <__neorv32_rte_debug_exc_handler>
    3614:	00f52023          	sw	a5,0(a0)
    3618:	00000513          	li	a0,0
    361c:	00008067          	ret
    3620:	00100513          	li	a0,1
    3624:	00008067          	ret

00003628 <neorv32_rte_setup>:
    3628:	ff010113          	addi	sp,sp,-16
    362c:	000037b7          	lui	a5,0x3
    3630:	00112623          	sw	ra,12(sp)
    3634:	00812423          	sw	s0,8(sp)
    3638:	00912223          	sw	s1,4(sp)
    363c:	19078793          	addi	a5,a5,400 # 3190 <__neorv32_rte_core>
    3640:	30579073          	csrw	mtvec,a5
    3644:	00000413          	li	s0,0
    3648:	01d00493          	li	s1,29
    364c:	00040513          	mv	a0,s0
    3650:	00140413          	addi	s0,s0,1
    3654:	0ff47413          	andi	s0,s0,255
    3658:	fa1ff0ef          	jal	ra,35f8 <neorv32_rte_exception_uninstall>
    365c:	fe9418e3          	bne	s0,s1,364c <neorv32_rte_setup+0x24>
    3660:	00c12083          	lw	ra,12(sp)
    3664:	00812403          	lw	s0,8(sp)
    3668:	00412483          	lw	s1,4(sp)
    366c:	01010113          	addi	sp,sp,16
    3670:	00008067          	ret

00003674 <neorv32_rte_check_isa>:
    3674:	30102673          	csrr	a2,misa
    3678:	400007b7          	lui	a5,0x40000
    367c:	10078793          	addi	a5,a5,256 # 40000100 <__crt0_copy_data_src_begin+0x3fffb3f4>
    3680:	00f67733          	and	a4,a2,a5
    3684:	04f70463          	beq	a4,a5,36cc <neorv32_rte_check_isa+0x58>
    3688:	fe010113          	addi	sp,sp,-32
    368c:	00112e23          	sw	ra,28(sp)
    3690:	02051463          	bnez	a0,36b8 <neorv32_rte_check_isa+0x44>
    3694:	400005b7          	lui	a1,0x40000
    3698:	00005537          	lui	a0,0x5
    369c:	10058593          	addi	a1,a1,256 # 40000100 <__crt0_copy_data_src_begin+0x3fffb3f4>
    36a0:	b7450513          	addi	a0,a0,-1164 # 4b74 <symbols.0+0x2ac>
    36a4:	f80ff0ef          	jal	ra,2e24 <neorv32_uart0_printf>
    36a8:	01c12083          	lw	ra,28(sp)
    36ac:	00100513          	li	a0,1
    36b0:	02010113          	addi	sp,sp,32
    36b4:	00008067          	ret
    36b8:	00c12623          	sw	a2,12(sp)
    36bc:	e3cff0ef          	jal	ra,2cf8 <neorv32_uart0_available>
    36c0:	00c12603          	lw	a2,12(sp)
    36c4:	fc0508e3          	beqz	a0,3694 <neorv32_rte_check_isa+0x20>
    36c8:	fe1ff06f          	j	36a8 <neorv32_rte_check_isa+0x34>
    36cc:	00000513          	li	a0,0
    36d0:	00008067          	ret

000036d4 <__udivdi3>:
    36d4:	fd010113          	addi	sp,sp,-48
    36d8:	02812423          	sw	s0,40(sp)
    36dc:	01712623          	sw	s7,12(sp)
    36e0:	02112623          	sw	ra,44(sp)
    36e4:	02912223          	sw	s1,36(sp)
    36e8:	03212023          	sw	s2,32(sp)
    36ec:	01312e23          	sw	s3,28(sp)
    36f0:	01412c23          	sw	s4,24(sp)
    36f4:	01512a23          	sw	s5,20(sp)
    36f8:	01612823          	sw	s6,16(sp)
    36fc:	01812423          	sw	s8,8(sp)
    3700:	01912223          	sw	s9,4(sp)
    3704:	00050b93          	mv	s7,a0
    3708:	00058413          	mv	s0,a1
    370c:	38069c63          	bnez	a3,3aa4 <__udivdi3+0x3d0>
    3710:	000054b7          	lui	s1,0x5
    3714:	00060913          	mv	s2,a2
    3718:	00050a13          	mv	s4,a0
    371c:	c0c48493          	addi	s1,s1,-1012 # 4c0c <__clz_tab>
    3720:	12c5f863          	bgeu	a1,a2,3850 <__udivdi3+0x17c>
    3724:	000107b7          	lui	a5,0x10
    3728:	00058c13          	mv	s8,a1
    372c:	10f67863          	bgeu	a2,a5,383c <__udivdi3+0x168>
    3730:	0ff00713          	li	a4,255
    3734:	00c73733          	sltu	a4,a4,a2
    3738:	00371713          	slli	a4,a4,0x3
    373c:	00e657b3          	srl	a5,a2,a4
    3740:	00f484b3          	add	s1,s1,a5
    3744:	0004c683          	lbu	a3,0(s1)
    3748:	00e68733          	add	a4,a3,a4
    374c:	02000693          	li	a3,32
    3750:	40e687b3          	sub	a5,a3,a4
    3754:	00e68c63          	beq	a3,a4,376c <__udivdi3+0x98>
    3758:	00f41433          	sll	s0,s0,a5
    375c:	00ebd733          	srl	a4,s7,a4
    3760:	00f61933          	sll	s2,a2,a5
    3764:	00876c33          	or	s8,a4,s0
    3768:	00fb9a33          	sll	s4,s7,a5
    376c:	01095b13          	srli	s6,s2,0x10
    3770:	000b0593          	mv	a1,s6
    3774:	000c0513          	mv	a0,s8
    3778:	5a8000ef          	jal	ra,3d20 <__umodsi3>
    377c:	00050493          	mv	s1,a0
    3780:	000b0593          	mv	a1,s6
    3784:	01091a93          	slli	s5,s2,0x10
    3788:	000c0513          	mv	a0,s8
    378c:	54c000ef          	jal	ra,3cd8 <__udivsi3>
    3790:	010ada93          	srli	s5,s5,0x10
    3794:	00050413          	mv	s0,a0
    3798:	00050593          	mv	a1,a0
    379c:	000a8513          	mv	a0,s5
    37a0:	50c000ef          	jal	ra,3cac <__mulsi3>
    37a4:	01049493          	slli	s1,s1,0x10
    37a8:	010a5713          	srli	a4,s4,0x10
    37ac:	00e4e733          	or	a4,s1,a4
    37b0:	00040993          	mv	s3,s0
    37b4:	00a77e63          	bgeu	a4,a0,37d0 <__udivdi3+0xfc>
    37b8:	01270733          	add	a4,a4,s2
    37bc:	fff40993          	addi	s3,s0,-1
    37c0:	01276863          	bltu	a4,s2,37d0 <__udivdi3+0xfc>
    37c4:	00a77663          	bgeu	a4,a0,37d0 <__udivdi3+0xfc>
    37c8:	ffe40993          	addi	s3,s0,-2
    37cc:	01270733          	add	a4,a4,s2
    37d0:	40a70433          	sub	s0,a4,a0
    37d4:	000b0593          	mv	a1,s6
    37d8:	00040513          	mv	a0,s0
    37dc:	544000ef          	jal	ra,3d20 <__umodsi3>
    37e0:	00050493          	mv	s1,a0
    37e4:	000b0593          	mv	a1,s6
    37e8:	00040513          	mv	a0,s0
    37ec:	4ec000ef          	jal	ra,3cd8 <__udivsi3>
    37f0:	010a1a13          	slli	s4,s4,0x10
    37f4:	00050413          	mv	s0,a0
    37f8:	00050593          	mv	a1,a0
    37fc:	01049493          	slli	s1,s1,0x10
    3800:	000a8513          	mv	a0,s5
    3804:	010a5a13          	srli	s4,s4,0x10
    3808:	4a4000ef          	jal	ra,3cac <__mulsi3>
    380c:	0144ea33          	or	s4,s1,s4
    3810:	00040613          	mv	a2,s0
    3814:	00aa7c63          	bgeu	s4,a0,382c <__udivdi3+0x158>
    3818:	01490a33          	add	s4,s2,s4
    381c:	fff40613          	addi	a2,s0,-1
    3820:	012a6663          	bltu	s4,s2,382c <__udivdi3+0x158>
    3824:	00aa7463          	bgeu	s4,a0,382c <__udivdi3+0x158>
    3828:	ffe40613          	addi	a2,s0,-2
    382c:	01099793          	slli	a5,s3,0x10
    3830:	00c7e7b3          	or	a5,a5,a2
    3834:	00000493          	li	s1,0
    3838:	1300006f          	j	3968 <__udivdi3+0x294>
    383c:	010007b7          	lui	a5,0x1000
    3840:	01000713          	li	a4,16
    3844:	eef66ce3          	bltu	a2,a5,373c <__udivdi3+0x68>
    3848:	01800713          	li	a4,24
    384c:	ef1ff06f          	j	373c <__udivdi3+0x68>
    3850:	00068993          	mv	s3,a3
    3854:	00061a63          	bnez	a2,3868 <__udivdi3+0x194>
    3858:	00000593          	li	a1,0
    385c:	00100513          	li	a0,1
    3860:	478000ef          	jal	ra,3cd8 <__udivsi3>
    3864:	00050913          	mv	s2,a0
    3868:	000107b7          	lui	a5,0x10
    386c:	12f97c63          	bgeu	s2,a5,39a4 <__udivdi3+0x2d0>
    3870:	0ff00793          	li	a5,255
    3874:	0127f463          	bgeu	a5,s2,387c <__udivdi3+0x1a8>
    3878:	00800993          	li	s3,8
    387c:	013957b3          	srl	a5,s2,s3
    3880:	00f484b3          	add	s1,s1,a5
    3884:	0004c783          	lbu	a5,0(s1)
    3888:	02000693          	li	a3,32
    388c:	013787b3          	add	a5,a5,s3
    3890:	40f68733          	sub	a4,a3,a5
    3894:	12f69263          	bne	a3,a5,39b8 <__udivdi3+0x2e4>
    3898:	41240433          	sub	s0,s0,s2
    389c:	00100493          	li	s1,1
    38a0:	01095a93          	srli	s5,s2,0x10
    38a4:	000a8593          	mv	a1,s5
    38a8:	00040513          	mv	a0,s0
    38ac:	474000ef          	jal	ra,3d20 <__umodsi3>
    38b0:	00050993          	mv	s3,a0
    38b4:	000a8593          	mv	a1,s5
    38b8:	00040513          	mv	a0,s0
    38bc:	01091b13          	slli	s6,s2,0x10
    38c0:	418000ef          	jal	ra,3cd8 <__udivsi3>
    38c4:	010b5b13          	srli	s6,s6,0x10
    38c8:	00050413          	mv	s0,a0
    38cc:	00050593          	mv	a1,a0
    38d0:	000b0513          	mv	a0,s6
    38d4:	3d8000ef          	jal	ra,3cac <__mulsi3>
    38d8:	01099993          	slli	s3,s3,0x10
    38dc:	010a5713          	srli	a4,s4,0x10
    38e0:	00e9e733          	or	a4,s3,a4
    38e4:	00040b93          	mv	s7,s0
    38e8:	00a77e63          	bgeu	a4,a0,3904 <__udivdi3+0x230>
    38ec:	01270733          	add	a4,a4,s2
    38f0:	fff40b93          	addi	s7,s0,-1
    38f4:	01276863          	bltu	a4,s2,3904 <__udivdi3+0x230>
    38f8:	00a77663          	bgeu	a4,a0,3904 <__udivdi3+0x230>
    38fc:	ffe40b93          	addi	s7,s0,-2
    3900:	01270733          	add	a4,a4,s2
    3904:	40a70433          	sub	s0,a4,a0
    3908:	000a8593          	mv	a1,s5
    390c:	00040513          	mv	a0,s0
    3910:	410000ef          	jal	ra,3d20 <__umodsi3>
    3914:	00050993          	mv	s3,a0
    3918:	000a8593          	mv	a1,s5
    391c:	00040513          	mv	a0,s0
    3920:	3b8000ef          	jal	ra,3cd8 <__udivsi3>
    3924:	010a1a13          	slli	s4,s4,0x10
    3928:	00050413          	mv	s0,a0
    392c:	00050593          	mv	a1,a0
    3930:	01099993          	slli	s3,s3,0x10
    3934:	000b0513          	mv	a0,s6
    3938:	010a5a13          	srli	s4,s4,0x10
    393c:	370000ef          	jal	ra,3cac <__mulsi3>
    3940:	0149ea33          	or	s4,s3,s4
    3944:	00040613          	mv	a2,s0
    3948:	00aa7c63          	bgeu	s4,a0,3960 <__udivdi3+0x28c>
    394c:	01490a33          	add	s4,s2,s4
    3950:	fff40613          	addi	a2,s0,-1
    3954:	012a6663          	bltu	s4,s2,3960 <__udivdi3+0x28c>
    3958:	00aa7463          	bgeu	s4,a0,3960 <__udivdi3+0x28c>
    395c:	ffe40613          	addi	a2,s0,-2
    3960:	010b9793          	slli	a5,s7,0x10
    3964:	00c7e7b3          	or	a5,a5,a2
    3968:	00078513          	mv	a0,a5
    396c:	00048593          	mv	a1,s1
    3970:	02c12083          	lw	ra,44(sp)
    3974:	02812403          	lw	s0,40(sp)
    3978:	02412483          	lw	s1,36(sp)
    397c:	02012903          	lw	s2,32(sp)
    3980:	01c12983          	lw	s3,28(sp)
    3984:	01812a03          	lw	s4,24(sp)
    3988:	01412a83          	lw	s5,20(sp)
    398c:	01012b03          	lw	s6,16(sp)
    3990:	00c12b83          	lw	s7,12(sp)
    3994:	00812c03          	lw	s8,8(sp)
    3998:	00412c83          	lw	s9,4(sp)
    399c:	03010113          	addi	sp,sp,48
    39a0:	00008067          	ret
    39a4:	010007b7          	lui	a5,0x1000
    39a8:	01000993          	li	s3,16
    39ac:	ecf968e3          	bltu	s2,a5,387c <__udivdi3+0x1a8>
    39b0:	01800993          	li	s3,24
    39b4:	ec9ff06f          	j	387c <__udivdi3+0x1a8>
    39b8:	00e91933          	sll	s2,s2,a4
    39bc:	00f459b3          	srl	s3,s0,a5
    39c0:	00fbd7b3          	srl	a5,s7,a5
    39c4:	00e41433          	sll	s0,s0,a4
    39c8:	0087eab3          	or	s5,a5,s0
    39cc:	01095413          	srli	s0,s2,0x10
    39d0:	00040593          	mv	a1,s0
    39d4:	00098513          	mv	a0,s3
    39d8:	00eb9a33          	sll	s4,s7,a4
    39dc:	344000ef          	jal	ra,3d20 <__umodsi3>
    39e0:	00050493          	mv	s1,a0
    39e4:	00040593          	mv	a1,s0
    39e8:	00098513          	mv	a0,s3
    39ec:	01091b13          	slli	s6,s2,0x10
    39f0:	2e8000ef          	jal	ra,3cd8 <__udivsi3>
    39f4:	010b5b13          	srli	s6,s6,0x10
    39f8:	00050993          	mv	s3,a0
    39fc:	00050593          	mv	a1,a0
    3a00:	000b0513          	mv	a0,s6
    3a04:	2a8000ef          	jal	ra,3cac <__mulsi3>
    3a08:	01049493          	slli	s1,s1,0x10
    3a0c:	010ad793          	srli	a5,s5,0x10
    3a10:	00f4e7b3          	or	a5,s1,a5
    3a14:	00098b93          	mv	s7,s3
    3a18:	00a7fe63          	bgeu	a5,a0,3a34 <__udivdi3+0x360>
    3a1c:	012787b3          	add	a5,a5,s2
    3a20:	fff98b93          	addi	s7,s3,-1
    3a24:	0127e863          	bltu	a5,s2,3a34 <__udivdi3+0x360>
    3a28:	00a7f663          	bgeu	a5,a0,3a34 <__udivdi3+0x360>
    3a2c:	ffe98b93          	addi	s7,s3,-2
    3a30:	012787b3          	add	a5,a5,s2
    3a34:	40a789b3          	sub	s3,a5,a0
    3a38:	00040593          	mv	a1,s0
    3a3c:	00098513          	mv	a0,s3
    3a40:	2e0000ef          	jal	ra,3d20 <__umodsi3>
    3a44:	00040593          	mv	a1,s0
    3a48:	00050493          	mv	s1,a0
    3a4c:	00098513          	mv	a0,s3
    3a50:	288000ef          	jal	ra,3cd8 <__udivsi3>
    3a54:	010a9413          	slli	s0,s5,0x10
    3a58:	00050993          	mv	s3,a0
    3a5c:	00050593          	mv	a1,a0
    3a60:	01049493          	slli	s1,s1,0x10
    3a64:	000b0513          	mv	a0,s6
    3a68:	01045413          	srli	s0,s0,0x10
    3a6c:	240000ef          	jal	ra,3cac <__mulsi3>
    3a70:	0084e433          	or	s0,s1,s0
    3a74:	00098793          	mv	a5,s3
    3a78:	00a47e63          	bgeu	s0,a0,3a94 <__udivdi3+0x3c0>
    3a7c:	01240433          	add	s0,s0,s2
    3a80:	fff98793          	addi	a5,s3,-1
    3a84:	01246863          	bltu	s0,s2,3a94 <__udivdi3+0x3c0>
    3a88:	00a47663          	bgeu	s0,a0,3a94 <__udivdi3+0x3c0>
    3a8c:	ffe98793          	addi	a5,s3,-2
    3a90:	01240433          	add	s0,s0,s2
    3a94:	010b9493          	slli	s1,s7,0x10
    3a98:	40a40433          	sub	s0,s0,a0
    3a9c:	00f4e4b3          	or	s1,s1,a5
    3aa0:	e01ff06f          	j	38a0 <__udivdi3+0x1cc>
    3aa4:	1ed5ee63          	bltu	a1,a3,3ca0 <__udivdi3+0x5cc>
    3aa8:	000107b7          	lui	a5,0x10
    3aac:	04f6f463          	bgeu	a3,a5,3af4 <__udivdi3+0x420>
    3ab0:	0ff00a93          	li	s5,255
    3ab4:	00dab733          	sltu	a4,s5,a3
    3ab8:	00371713          	slli	a4,a4,0x3
    3abc:	000057b7          	lui	a5,0x5
    3ac0:	00e6d5b3          	srl	a1,a3,a4
    3ac4:	c0c78793          	addi	a5,a5,-1012 # 4c0c <__clz_tab>
    3ac8:	00b787b3          	add	a5,a5,a1
    3acc:	0007ca83          	lbu	s5,0(a5)
    3ad0:	02000793          	li	a5,32
    3ad4:	00ea8ab3          	add	s5,s5,a4
    3ad8:	415784b3          	sub	s1,a5,s5
    3adc:	03579663          	bne	a5,s5,3b08 <__udivdi3+0x434>
    3ae0:	00100793          	li	a5,1
    3ae4:	e886e2e3          	bltu	a3,s0,3968 <__udivdi3+0x294>
    3ae8:	00cbb633          	sltu	a2,s7,a2
    3aec:	00164793          	xori	a5,a2,1
    3af0:	e79ff06f          	j	3968 <__udivdi3+0x294>
    3af4:	010007b7          	lui	a5,0x1000
    3af8:	01000713          	li	a4,16
    3afc:	fcf6e0e3          	bltu	a3,a5,3abc <__udivdi3+0x3e8>
    3b00:	01800713          	li	a4,24
    3b04:	fb9ff06f          	j	3abc <__udivdi3+0x3e8>
    3b08:	01565cb3          	srl	s9,a2,s5
    3b0c:	009696b3          	sll	a3,a3,s1
    3b10:	00dcecb3          	or	s9,s9,a3
    3b14:	015459b3          	srl	s3,s0,s5
    3b18:	00941433          	sll	s0,s0,s1
    3b1c:	015bdab3          	srl	s5,s7,s5
    3b20:	008aeab3          	or	s5,s5,s0
    3b24:	010cd413          	srli	s0,s9,0x10
    3b28:	00040593          	mv	a1,s0
    3b2c:	00098513          	mv	a0,s3
    3b30:	00961933          	sll	s2,a2,s1
    3b34:	1ec000ef          	jal	ra,3d20 <__umodsi3>
    3b38:	00050a13          	mv	s4,a0
    3b3c:	00040593          	mv	a1,s0
    3b40:	00098513          	mv	a0,s3
    3b44:	010c9b13          	slli	s6,s9,0x10
    3b48:	190000ef          	jal	ra,3cd8 <__udivsi3>
    3b4c:	010b5b13          	srli	s6,s6,0x10
    3b50:	00050993          	mv	s3,a0
    3b54:	00050593          	mv	a1,a0
    3b58:	000b0513          	mv	a0,s6
    3b5c:	150000ef          	jal	ra,3cac <__mulsi3>
    3b60:	010a1a13          	slli	s4,s4,0x10
    3b64:	010ad713          	srli	a4,s5,0x10
    3b68:	00ea6733          	or	a4,s4,a4
    3b6c:	00098c13          	mv	s8,s3
    3b70:	00a77e63          	bgeu	a4,a0,3b8c <__udivdi3+0x4b8>
    3b74:	01970733          	add	a4,a4,s9
    3b78:	fff98c13          	addi	s8,s3,-1
    3b7c:	01976863          	bltu	a4,s9,3b8c <__udivdi3+0x4b8>
    3b80:	00a77663          	bgeu	a4,a0,3b8c <__udivdi3+0x4b8>
    3b84:	ffe98c13          	addi	s8,s3,-2
    3b88:	01970733          	add	a4,a4,s9
    3b8c:	40a709b3          	sub	s3,a4,a0
    3b90:	00040593          	mv	a1,s0
    3b94:	00098513          	mv	a0,s3
    3b98:	188000ef          	jal	ra,3d20 <__umodsi3>
    3b9c:	00040593          	mv	a1,s0
    3ba0:	00050a13          	mv	s4,a0
    3ba4:	00098513          	mv	a0,s3
    3ba8:	130000ef          	jal	ra,3cd8 <__udivsi3>
    3bac:	010a9413          	slli	s0,s5,0x10
    3bb0:	00050993          	mv	s3,a0
    3bb4:	00050593          	mv	a1,a0
    3bb8:	010a1a13          	slli	s4,s4,0x10
    3bbc:	000b0513          	mv	a0,s6
    3bc0:	01045413          	srli	s0,s0,0x10
    3bc4:	0e8000ef          	jal	ra,3cac <__mulsi3>
    3bc8:	008a6433          	or	s0,s4,s0
    3bcc:	00098613          	mv	a2,s3
    3bd0:	00a47e63          	bgeu	s0,a0,3bec <__udivdi3+0x518>
    3bd4:	01940433          	add	s0,s0,s9
    3bd8:	fff98613          	addi	a2,s3,-1
    3bdc:	01946863          	bltu	s0,s9,3bec <__udivdi3+0x518>
    3be0:	00a47663          	bgeu	s0,a0,3bec <__udivdi3+0x518>
    3be4:	ffe98613          	addi	a2,s3,-2
    3be8:	01940433          	add	s0,s0,s9
    3bec:	010c1793          	slli	a5,s8,0x10
    3bf0:	00010e37          	lui	t3,0x10
    3bf4:	00c7e7b3          	or	a5,a5,a2
    3bf8:	fffe0313          	addi	t1,t3,-1 # ffff <__crt0_copy_data_src_begin+0xb2f3>
    3bfc:	0067f8b3          	and	a7,a5,t1
    3c00:	00697333          	and	t1,s2,t1
    3c04:	40a40433          	sub	s0,s0,a0
    3c08:	0107de93          	srli	t4,a5,0x10
    3c0c:	01095913          	srli	s2,s2,0x10
    3c10:	00088513          	mv	a0,a7
    3c14:	00030593          	mv	a1,t1
    3c18:	094000ef          	jal	ra,3cac <__mulsi3>
    3c1c:	00050813          	mv	a6,a0
    3c20:	00090593          	mv	a1,s2
    3c24:	00088513          	mv	a0,a7
    3c28:	084000ef          	jal	ra,3cac <__mulsi3>
    3c2c:	00050893          	mv	a7,a0
    3c30:	00030593          	mv	a1,t1
    3c34:	000e8513          	mv	a0,t4
    3c38:	074000ef          	jal	ra,3cac <__mulsi3>
    3c3c:	00050313          	mv	t1,a0
    3c40:	00090593          	mv	a1,s2
    3c44:	000e8513          	mv	a0,t4
    3c48:	064000ef          	jal	ra,3cac <__mulsi3>
    3c4c:	01085713          	srli	a4,a6,0x10
    3c50:	006888b3          	add	a7,a7,t1
    3c54:	01170733          	add	a4,a4,a7
    3c58:	00050693          	mv	a3,a0
    3c5c:	00677463          	bgeu	a4,t1,3c64 <__udivdi3+0x590>
    3c60:	01c506b3          	add	a3,a0,t3
    3c64:	01075513          	srli	a0,a4,0x10
    3c68:	00d506b3          	add	a3,a0,a3
    3c6c:	02d46663          	bltu	s0,a3,3c98 <__udivdi3+0x5c4>
    3c70:	bcd412e3          	bne	s0,a3,3834 <__udivdi3+0x160>
    3c74:	00010537          	lui	a0,0x10
    3c78:	fff50513          	addi	a0,a0,-1 # ffff <__crt0_copy_data_src_begin+0xb2f3>
    3c7c:	00a77733          	and	a4,a4,a0
    3c80:	01071713          	slli	a4,a4,0x10
    3c84:	00a87833          	and	a6,a6,a0
    3c88:	009b9bb3          	sll	s7,s7,s1
    3c8c:	01070733          	add	a4,a4,a6
    3c90:	00000493          	li	s1,0
    3c94:	ccebfae3          	bgeu	s7,a4,3968 <__udivdi3+0x294>
    3c98:	fff78793          	addi	a5,a5,-1 # ffffff <__crt0_copy_data_src_begin+0xffb2f3>
    3c9c:	b99ff06f          	j	3834 <__udivdi3+0x160>
    3ca0:	00000493          	li	s1,0
    3ca4:	00000793          	li	a5,0
    3ca8:	cc1ff06f          	j	3968 <__udivdi3+0x294>

00003cac <__mulsi3>:
    3cac:	00050613          	mv	a2,a0
    3cb0:	00000513          	li	a0,0
    3cb4:	0015f693          	andi	a3,a1,1
    3cb8:	00068463          	beqz	a3,3cc0 <__mulsi3+0x14>
    3cbc:	00c50533          	add	a0,a0,a2
    3cc0:	0015d593          	srli	a1,a1,0x1
    3cc4:	00161613          	slli	a2,a2,0x1
    3cc8:	fe0596e3          	bnez	a1,3cb4 <__mulsi3+0x8>
    3ccc:	00008067          	ret

00003cd0 <__divsi3>:
    3cd0:	06054063          	bltz	a0,3d30 <__umodsi3+0x10>
    3cd4:	0605c663          	bltz	a1,3d40 <__umodsi3+0x20>

00003cd8 <__udivsi3>:
    3cd8:	00058613          	mv	a2,a1
    3cdc:	00050593          	mv	a1,a0
    3ce0:	fff00513          	li	a0,-1
    3ce4:	02060c63          	beqz	a2,3d1c <__udivsi3+0x44>
    3ce8:	00100693          	li	a3,1
    3cec:	00b67a63          	bgeu	a2,a1,3d00 <__udivsi3+0x28>
    3cf0:	00c05863          	blez	a2,3d00 <__udivsi3+0x28>
    3cf4:	00161613          	slli	a2,a2,0x1
    3cf8:	00169693          	slli	a3,a3,0x1
    3cfc:	feb66ae3          	bltu	a2,a1,3cf0 <__udivsi3+0x18>
    3d00:	00000513          	li	a0,0
    3d04:	00c5e663          	bltu	a1,a2,3d10 <__udivsi3+0x38>
    3d08:	40c585b3          	sub	a1,a1,a2
    3d0c:	00d56533          	or	a0,a0,a3
    3d10:	0016d693          	srli	a3,a3,0x1
    3d14:	00165613          	srli	a2,a2,0x1
    3d18:	fe0696e3          	bnez	a3,3d04 <__udivsi3+0x2c>
    3d1c:	00008067          	ret

00003d20 <__umodsi3>:
    3d20:	00008293          	mv	t0,ra
    3d24:	fb5ff0ef          	jal	ra,3cd8 <__udivsi3>
    3d28:	00058513          	mv	a0,a1
    3d2c:	00028067          	jr	t0
    3d30:	40a00533          	neg	a0,a0
    3d34:	00b04863          	bgtz	a1,3d44 <__umodsi3+0x24>
    3d38:	40b005b3          	neg	a1,a1
    3d3c:	f9dff06f          	j	3cd8 <__udivsi3>
    3d40:	40b005b3          	neg	a1,a1
    3d44:	00008293          	mv	t0,ra
    3d48:	f91ff0ef          	jal	ra,3cd8 <__udivsi3>
    3d4c:	40a00533          	neg	a0,a0
    3d50:	00028067          	jr	t0

00003d54 <__modsi3>:
    3d54:	00008293          	mv	t0,ra
    3d58:	0005ca63          	bltz	a1,3d6c <__modsi3+0x18>
    3d5c:	00054c63          	bltz	a0,3d74 <__modsi3+0x20>
    3d60:	f79ff0ef          	jal	ra,3cd8 <__udivsi3>
    3d64:	00058513          	mv	a0,a1
    3d68:	00028067          	jr	t0
    3d6c:	40b005b3          	neg	a1,a1
    3d70:	fe0558e3          	bgez	a0,3d60 <__modsi3+0xc>
    3d74:	40a00533          	neg	a0,a0
    3d78:	f61ff0ef          	jal	ra,3cd8 <__udivsi3>
    3d7c:	40b00533          	neg	a0,a1
    3d80:	00028067          	jr	t0

00003d84 <memcpy>:
    3d84:	00a5c7b3          	xor	a5,a1,a0
    3d88:	0037f793          	andi	a5,a5,3
    3d8c:	00c508b3          	add	a7,a0,a2
    3d90:	06079663          	bnez	a5,3dfc <memcpy+0x78>
    3d94:	00300793          	li	a5,3
    3d98:	06c7f263          	bgeu	a5,a2,3dfc <memcpy+0x78>
    3d9c:	00357793          	andi	a5,a0,3
    3da0:	00050713          	mv	a4,a0
    3da4:	0c079a63          	bnez	a5,3e78 <memcpy+0xf4>
    3da8:	ffc8f613          	andi	a2,a7,-4
    3dac:	40e606b3          	sub	a3,a2,a4
    3db0:	02000793          	li	a5,32
    3db4:	02000293          	li	t0,32
    3db8:	06d7c263          	blt	a5,a3,3e1c <memcpy+0x98>
    3dbc:	00058693          	mv	a3,a1
    3dc0:	00070793          	mv	a5,a4
    3dc4:	02c77863          	bgeu	a4,a2,3df4 <memcpy+0x70>
    3dc8:	0006a803          	lw	a6,0(a3)
    3dcc:	00478793          	addi	a5,a5,4
    3dd0:	00468693          	addi	a3,a3,4
    3dd4:	ff07ae23          	sw	a6,-4(a5)
    3dd8:	fec7e8e3          	bltu	a5,a2,3dc8 <memcpy+0x44>
    3ddc:	fff60793          	addi	a5,a2,-1
    3de0:	40e787b3          	sub	a5,a5,a4
    3de4:	ffc7f793          	andi	a5,a5,-4
    3de8:	00478793          	addi	a5,a5,4
    3dec:	00f70733          	add	a4,a4,a5
    3df0:	00f585b3          	add	a1,a1,a5
    3df4:	01176863          	bltu	a4,a7,3e04 <memcpy+0x80>
    3df8:	00008067          	ret
    3dfc:	00050713          	mv	a4,a0
    3e00:	ff157ce3          	bgeu	a0,a7,3df8 <memcpy+0x74>
    3e04:	0005c783          	lbu	a5,0(a1)
    3e08:	00170713          	addi	a4,a4,1
    3e0c:	00158593          	addi	a1,a1,1
    3e10:	fef70fa3          	sb	a5,-1(a4)
    3e14:	ff1768e3          	bltu	a4,a7,3e04 <memcpy+0x80>
    3e18:	00008067          	ret
    3e1c:	0045a683          	lw	a3,4(a1)
    3e20:	01c5a783          	lw	a5,28(a1)
    3e24:	0005af83          	lw	t6,0(a1)
    3e28:	0085af03          	lw	t5,8(a1)
    3e2c:	00c5ae83          	lw	t4,12(a1)
    3e30:	0105ae03          	lw	t3,16(a1)
    3e34:	0145a303          	lw	t1,20(a1)
    3e38:	0185a803          	lw	a6,24(a1)
    3e3c:	00d72223          	sw	a3,4(a4)
    3e40:	0205a683          	lw	a3,32(a1)
    3e44:	01f72023          	sw	t6,0(a4)
    3e48:	01e72423          	sw	t5,8(a4)
    3e4c:	01d72623          	sw	t4,12(a4)
    3e50:	01c72823          	sw	t3,16(a4)
    3e54:	00672a23          	sw	t1,20(a4)
    3e58:	01072c23          	sw	a6,24(a4)
    3e5c:	00f72e23          	sw	a5,28(a4)
    3e60:	02470713          	addi	a4,a4,36
    3e64:	40e607b3          	sub	a5,a2,a4
    3e68:	fed72e23          	sw	a3,-4(a4)
    3e6c:	02458593          	addi	a1,a1,36
    3e70:	faf2c6e3          	blt	t0,a5,3e1c <memcpy+0x98>
    3e74:	f49ff06f          	j	3dbc <memcpy+0x38>
    3e78:	0005c683          	lbu	a3,0(a1)
    3e7c:	00170713          	addi	a4,a4,1
    3e80:	00377793          	andi	a5,a4,3
    3e84:	fed70fa3          	sb	a3,-1(a4)
    3e88:	00158593          	addi	a1,a1,1
    3e8c:	f0078ee3          	beqz	a5,3da8 <memcpy+0x24>
    3e90:	0005c683          	lbu	a3,0(a1)
    3e94:	00170713          	addi	a4,a4,1
    3e98:	00377793          	andi	a5,a4,3
    3e9c:	fed70fa3          	sb	a3,-1(a4)
    3ea0:	00158593          	addi	a1,a1,1
    3ea4:	fc079ae3          	bnez	a5,3e78 <memcpy+0xf4>
    3ea8:	f01ff06f          	j	3da8 <memcpy+0x24>

00003eac <memset>:
    3eac:	00f00313          	li	t1,15
    3eb0:	00050713          	mv	a4,a0
    3eb4:	02c37e63          	bgeu	t1,a2,3ef0 <memset+0x44>
    3eb8:	00f77793          	andi	a5,a4,15
    3ebc:	0a079063          	bnez	a5,3f5c <memset+0xb0>
    3ec0:	08059263          	bnez	a1,3f44 <memset+0x98>
    3ec4:	ff067693          	andi	a3,a2,-16
    3ec8:	00f67613          	andi	a2,a2,15
    3ecc:	00e686b3          	add	a3,a3,a4
    3ed0:	00b72023          	sw	a1,0(a4)
    3ed4:	00b72223          	sw	a1,4(a4)
    3ed8:	00b72423          	sw	a1,8(a4)
    3edc:	00b72623          	sw	a1,12(a4)
    3ee0:	01070713          	addi	a4,a4,16
    3ee4:	fed766e3          	bltu	a4,a3,3ed0 <memset+0x24>
    3ee8:	00061463          	bnez	a2,3ef0 <memset+0x44>
    3eec:	00008067          	ret
    3ef0:	40c306b3          	sub	a3,t1,a2
    3ef4:	00269693          	slli	a3,a3,0x2
    3ef8:	00000297          	auipc	t0,0x0
    3efc:	005686b3          	add	a3,a3,t0
    3f00:	00c68067          	jr	12(a3)
    3f04:	00b70723          	sb	a1,14(a4)
    3f08:	00b706a3          	sb	a1,13(a4)
    3f0c:	00b70623          	sb	a1,12(a4)
    3f10:	00b705a3          	sb	a1,11(a4)
    3f14:	00b70523          	sb	a1,10(a4)
    3f18:	00b704a3          	sb	a1,9(a4)
    3f1c:	00b70423          	sb	a1,8(a4)
    3f20:	00b703a3          	sb	a1,7(a4)
    3f24:	00b70323          	sb	a1,6(a4)
    3f28:	00b702a3          	sb	a1,5(a4)
    3f2c:	00b70223          	sb	a1,4(a4)
    3f30:	00b701a3          	sb	a1,3(a4)
    3f34:	00b70123          	sb	a1,2(a4)
    3f38:	00b700a3          	sb	a1,1(a4)
    3f3c:	00b70023          	sb	a1,0(a4)
    3f40:	00008067          	ret
    3f44:	0ff5f593          	andi	a1,a1,255
    3f48:	00859693          	slli	a3,a1,0x8
    3f4c:	00d5e5b3          	or	a1,a1,a3
    3f50:	01059693          	slli	a3,a1,0x10
    3f54:	00d5e5b3          	or	a1,a1,a3
    3f58:	f6dff06f          	j	3ec4 <memset+0x18>
    3f5c:	00279693          	slli	a3,a5,0x2
    3f60:	00000297          	auipc	t0,0x0
    3f64:	005686b3          	add	a3,a3,t0
    3f68:	00008293          	mv	t0,ra
    3f6c:	fa0680e7          	jalr	-96(a3)
    3f70:	00028093          	mv	ra,t0
    3f74:	ff078793          	addi	a5,a5,-16
    3f78:	40f70733          	sub	a4,a4,a5
    3f7c:	00f60633          	add	a2,a2,a5
    3f80:	f6c378e3          	bgeu	t1,a2,3ef0 <memset+0x44>
    3f84:	f3dff06f          	j	3ec0 <memset+0x14>
