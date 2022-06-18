
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
      c4:	f4458593          	addi	a1,a1,-188 # 80000004 <__ctr0_io_space_begin+0x80000204>
      c8:	8fc18613          	addi	a2,gp,-1796 # 800000fc <__BSS_END__>

000000cc <__crt0_clear_bss_loop>:
      cc:	00c5d863          	bge	a1,a2,dc <__crt0_clear_bss_loop_end>
      d0:	00058023          	sb	zero,0(a1)
      d4:	00158593          	addi	a1,a1,1
      d8:	ff5ff06f          	j	cc <__crt0_clear_bss_loop>

000000dc <__crt0_clear_bss_loop_end>:
      dc:	00001597          	auipc	a1,0x1
      e0:	2e058593          	addi	a1,a1,736 # 13bc <__crt0_copy_data_src_begin>
      e4:	80000617          	auipc	a2,0x80000
      e8:	f1c60613          	addi	a2,a2,-228 # 80000000 <__ctr0_io_space_begin+0x80000200>
      ec:	80000697          	auipc	a3,0x80000
      f0:	f1868693          	addi	a3,a3,-232 # 80000004 <__ctr0_io_space_begin+0x80000204>

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
     18c:	00912223          	sw	s1,4(sp)
     190:	429000ef          	jal	ra,db8 <neorv32_rte_setup>
     194:	00005537          	lui	a0,0x5
     198:	00000613          	li	a2,0
     19c:	00000593          	li	a1,0
     1a0:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3744>
     1a4:	38c000ef          	jal	ra,530 <neorv32_uart0_setup>
     1a8:	164000ef          	jal	ra,30c <neorv32_xirq_available>
     1ac:	00051a63          	bnez	a0,1c0 <main+0x40>
     1b0:	00001537          	lui	a0,0x1
     1b4:	04050513          	addi	a0,a0,64 # 1040 <__etext+0x20>
     1b8:	494000ef          	jal	ra,64c <neorv32_uart0_printf>
     1bc:	0180006f          	j	1d4 <main+0x54>
     1c0:	455000ef          	jal	ra,e14 <neorv32_gpio_available>
     1c4:	02051463          	bnez	a0,1ec <main+0x6c>
     1c8:	00001537          	lui	a0,0x1
     1cc:	05850513          	addi	a0,a0,88 # 1058 <__etext+0x38>
     1d0:	424000ef          	jal	ra,5f4 <neorv32_uart0_print>
     1d4:	00c12083          	lw	ra,12(sp)
     1d8:	00812403          	lw	s0,8(sp)
     1dc:	00412483          	lw	s1,4(sp)
     1e0:	00100513          	li	a0,1
     1e4:	01010113          	addi	sp,sp,16
     1e8:	00008067          	ret
     1ec:	00001537          	lui	a0,0x1
     1f0:	07c50513          	addi	a0,a0,124 # 107c <__etext+0x5c>
     1f4:	458000ef          	jal	ra,64c <neorv32_uart0_printf>
     1f8:	124000ef          	jal	ra,31c <neorv32_xirq_setup>
     1fc:	00050863          	beqz	a0,20c <main+0x8c>
     200:	00001537          	lui	a0,0x1
     204:	0a050513          	addi	a0,a0,160 # 10a0 <__etext+0x80>
     208:	fb1ff06f          	j	1b8 <main+0x38>
     20c:	26000593          	li	a1,608
     210:	144000ef          	jal	ra,354 <neorv32_xirq_install>
     214:	00050863          	beqz	a0,224 <main+0xa4>
     218:	00001537          	lui	a0,0x1
     21c:	0bc50513          	addi	a0,a0,188 # 10bc <__etext+0x9c>
     220:	f99ff06f          	j	1b8 <main+0x38>
     224:	128000ef          	jal	ra,34c <neorv32_xirq_global_enable>
     228:	30046073          	csrsi	mstatus,8
     22c:	00c00513          	li	a0,12
     230:	3f5000ef          	jal	ra,e24 <neorv32_gpio_pin_set>
     234:	00d00513          	li	a0,13
     238:	41d000ef          	jal	ra,e54 <neorv32_gpio_pin_clr>
     23c:	00000413          	li	s0,0
     240:	000014b7          	lui	s1,0x1
     244:	00040593          	mv	a1,s0
     248:	0d848513          	addi	a0,s1,216 # 10d8 <__etext+0xb8>
     24c:	400000ef          	jal	ra,64c <neorv32_uart0_printf>
     250:	5dc00513          	li	a0,1500
     254:	00140413          	addi	s0,s0,1
     258:	5f0000ef          	jal	ra,848 <neorv32_cpu_delay_ms>
     25c:	fe9ff06f          	j	244 <main+0xc4>

00000260 <xirq_handler_ch0>:
     260:	ff010113          	addi	sp,sp,-16
     264:	00c00513          	li	a0,12
     268:	00112623          	sw	ra,12(sp)
     26c:	41d000ef          	jal	ra,e88 <neorv32_gpio_pin_toggle>
     270:	00d00513          	li	a0,13
     274:	415000ef          	jal	ra,e88 <neorv32_gpio_pin_toggle>
     278:	800007b7          	lui	a5,0x80000
     27c:	00078793          	mv	a5,a5
     280:	0007c583          	lbu	a1,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
     284:	00001537          	lui	a0,0x1
     288:	02050513          	addi	a0,a0,32 # 1020 <__etext>
     28c:	0015b593          	seqz	a1,a1
     290:	00b78023          	sb	a1,0(a5)
     294:	800007b7          	lui	a5,0x80000
     298:	00478793          	addi	a5,a5,4 # 80000004 <__ctr0_io_space_begin+0x80000204>
     29c:	0007c603          	lbu	a2,0(a5)
     2a0:	00163613          	seqz	a2,a2
     2a4:	00c78023          	sb	a2,0(a5)
     2a8:	00c12083          	lw	ra,12(sp)
     2ac:	01010113          	addi	sp,sp,16
     2b0:	39c0006f          	j	64c <neorv32_uart0_printf>
     2b4:	0000                	unimp
     2b6:	0000                	unimp
     2b8:	0000                	unimp
     2ba:	0000                	unimp
     2bc:	0000                	unimp
     2be:	0000                	unimp

000002c0 <__neorv32_xirq_core>:
     2c0:	f8000693          	li	a3,-128
     2c4:	0086a783          	lw	a5,8(a3)
     2c8:	00100713          	li	a4,1
     2cc:	00f71733          	sll	a4,a4,a5
     2d0:	fff74713          	not	a4,a4
     2d4:	00e6a223          	sw	a4,4(a3)
     2d8:	ff000737          	lui	a4,0xff000
     2dc:	fff70713          	addi	a4,a4,-1 # feffffff <__ctr0_io_space_begin+0xff0001ff>
     2e0:	34471073          	csrw	mip,a4
     2e4:	00279713          	slli	a4,a5,0x2
     2e8:	800007b7          	lui	a5,0x80000
     2ec:	00878793          	addi	a5,a5,8 # 80000008 <__ctr0_io_space_begin+0x80000208>
     2f0:	0006a423          	sw	zero,8(a3)
     2f4:	00e787b3          	add	a5,a5,a4
     2f8:	0007a783          	lw	a5,0(a5)
     2fc:	00078067          	jr	a5
     300:	0000                	unimp
     302:	0000                	unimp

00000304 <__neorv32_xirq_dummy_handler>:
     304:	00000013          	nop
     308:	00008067          	ret

0000030c <neorv32_xirq_available>:
     30c:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     310:	01c55513          	srli	a0,a0,0x1c
     314:	00157513          	andi	a0,a0,1
     318:	00008067          	ret

0000031c <neorv32_xirq_setup>:
     31c:	800007b7          	lui	a5,0x80000
     320:	f8002023          	sw	zero,-128(zero) # ffffff80 <__ctr0_io_space_begin+0x180>
     324:	00878793          	addi	a5,a5,8 # 80000008 <__ctr0_io_space_begin+0x80000208>
     328:	f8002223          	sw	zero,-124(zero) # ffffff84 <__ctr0_io_space_begin+0x184>
     32c:	08078693          	addi	a3,a5,128
     330:	30400713          	li	a4,772
     334:	00e7a023          	sw	a4,0(a5)
     338:	00478793          	addi	a5,a5,4
     33c:	fed79ce3          	bne	a5,a3,334 <neorv32_xirq_setup+0x18>
     340:	2c000593          	li	a1,704
     344:	01500513          	li	a0,21
     348:	2190006f          	j	d60 <neorv32_rte_exception_install>

0000034c <neorv32_xirq_global_enable>:
     34c:	01800513          	li	a0,24
     350:	4bc0006f          	j	80c <neorv32_cpu_irq_enable>

00000354 <neorv32_xirq_install>:
     354:	01f00793          	li	a5,31
     358:	02a7ee63          	bltu	a5,a0,394 <neorv32_xirq_install+0x40>
     35c:	800007b7          	lui	a5,0x80000
     360:	00251713          	slli	a4,a0,0x2
     364:	00878793          	addi	a5,a5,8 # 80000008 <__ctr0_io_space_begin+0x80000208>
     368:	00e787b3          	add	a5,a5,a4
     36c:	00b7a023          	sw	a1,0(a5)
     370:	00100793          	li	a5,1
     374:	00a79533          	sll	a0,a5,a0
     378:	fff54793          	not	a5,a0
     37c:	f8f02223          	sw	a5,-124(zero) # ffffff84 <__ctr0_io_space_begin+0x184>
     380:	f8002783          	lw	a5,-128(zero) # ffffff80 <__ctr0_io_space_begin+0x180>
     384:	00a7e533          	or	a0,a5,a0
     388:	f8a02023          	sw	a0,-128(zero) # ffffff80 <__ctr0_io_space_begin+0x180>
     38c:	00000513          	li	a0,0
     390:	00008067          	ret
     394:	00100513          	li	a0,1
     398:	00008067          	ret

0000039c <neorv32_mtime_get_time>:
     39c:	f9402583          	lw	a1,-108(zero) # ffffff94 <__ctr0_io_space_begin+0x194>
     3a0:	f9002503          	lw	a0,-112(zero) # ffffff90 <__ctr0_io_space_begin+0x190>
     3a4:	f9402783          	lw	a5,-108(zero) # ffffff94 <__ctr0_io_space_begin+0x194>
     3a8:	fef59ae3          	bne	a1,a5,39c <neorv32_mtime_get_time>
     3ac:	00008067          	ret

000003b0 <__neorv32_uart_itoa>:
     3b0:	fd010113          	addi	sp,sp,-48
     3b4:	02812423          	sw	s0,40(sp)
     3b8:	02912223          	sw	s1,36(sp)
     3bc:	03212023          	sw	s2,32(sp)
     3c0:	01312e23          	sw	s3,28(sp)
     3c4:	01412c23          	sw	s4,24(sp)
     3c8:	02112623          	sw	ra,44(sp)
     3cc:	01512a23          	sw	s5,20(sp)
     3d0:	00001a37          	lui	s4,0x1
     3d4:	00050493          	mv	s1,a0
     3d8:	00058413          	mv	s0,a1
     3dc:	00058523          	sb	zero,10(a1)
     3e0:	00000993          	li	s3,0
     3e4:	00410913          	addi	s2,sp,4
     3e8:	0f0a0a13          	addi	s4,s4,240 # 10f0 <numbers.1>
     3ec:	00a00593          	li	a1,10
     3f0:	00048513          	mv	a0,s1
     3f4:	3c9000ef          	jal	ra,fbc <__umodsi3>
     3f8:	00aa0533          	add	a0,s4,a0
     3fc:	00054783          	lbu	a5,0(a0)
     400:	01390ab3          	add	s5,s2,s3
     404:	00048513          	mv	a0,s1
     408:	00fa8023          	sb	a5,0(s5)
     40c:	00a00593          	li	a1,10
     410:	365000ef          	jal	ra,f74 <__udivsi3>
     414:	00198993          	addi	s3,s3,1
     418:	00a00793          	li	a5,10
     41c:	00050493          	mv	s1,a0
     420:	fcf996e3          	bne	s3,a5,3ec <__neorv32_uart_itoa+0x3c>
     424:	00090693          	mv	a3,s2
     428:	00900713          	li	a4,9
     42c:	03000613          	li	a2,48
     430:	0096c583          	lbu	a1,9(a3)
     434:	00070793          	mv	a5,a4
     438:	fff70713          	addi	a4,a4,-1
     43c:	01071713          	slli	a4,a4,0x10
     440:	01075713          	srli	a4,a4,0x10
     444:	00c59a63          	bne	a1,a2,458 <__neorv32_uart_itoa+0xa8>
     448:	000684a3          	sb	zero,9(a3)
     44c:	fff68693          	addi	a3,a3,-1
     450:	fe0710e3          	bnez	a4,430 <__neorv32_uart_itoa+0x80>
     454:	00000793          	li	a5,0
     458:	00f907b3          	add	a5,s2,a5
     45c:	00000593          	li	a1,0
     460:	0007c703          	lbu	a4,0(a5)
     464:	00070c63          	beqz	a4,47c <__neorv32_uart_itoa+0xcc>
     468:	00158693          	addi	a3,a1,1
     46c:	00b405b3          	add	a1,s0,a1
     470:	00e58023          	sb	a4,0(a1)
     474:	01069593          	slli	a1,a3,0x10
     478:	0105d593          	srli	a1,a1,0x10
     47c:	fff78713          	addi	a4,a5,-1
     480:	02f91863          	bne	s2,a5,4b0 <__neorv32_uart_itoa+0x100>
     484:	00b40433          	add	s0,s0,a1
     488:	00040023          	sb	zero,0(s0)
     48c:	02c12083          	lw	ra,44(sp)
     490:	02812403          	lw	s0,40(sp)
     494:	02412483          	lw	s1,36(sp)
     498:	02012903          	lw	s2,32(sp)
     49c:	01c12983          	lw	s3,28(sp)
     4a0:	01812a03          	lw	s4,24(sp)
     4a4:	01412a83          	lw	s5,20(sp)
     4a8:	03010113          	addi	sp,sp,48
     4ac:	00008067          	ret
     4b0:	00070793          	mv	a5,a4
     4b4:	fadff06f          	j	460 <__neorv32_uart_itoa+0xb0>

000004b8 <__neorv32_uart_tohex>:
     4b8:	00001637          	lui	a2,0x1
     4bc:	00758693          	addi	a3,a1,7
     4c0:	00000713          	li	a4,0
     4c4:	0fc60613          	addi	a2,a2,252 # 10fc <symbols.0>
     4c8:	02000813          	li	a6,32
     4cc:	00e557b3          	srl	a5,a0,a4
     4d0:	00f7f793          	andi	a5,a5,15
     4d4:	00f607b3          	add	a5,a2,a5
     4d8:	0007c783          	lbu	a5,0(a5)
     4dc:	00470713          	addi	a4,a4,4
     4e0:	fff68693          	addi	a3,a3,-1
     4e4:	00f680a3          	sb	a5,1(a3)
     4e8:	ff0712e3          	bne	a4,a6,4cc <__neorv32_uart_tohex+0x14>
     4ec:	00058423          	sb	zero,8(a1)
     4f0:	00008067          	ret

000004f4 <__neorv32_uart_touppercase.constprop.0>:
     4f4:	00b50693          	addi	a3,a0,11
     4f8:	01900613          	li	a2,25
     4fc:	00054783          	lbu	a5,0(a0)
     500:	f9f78713          	addi	a4,a5,-97
     504:	0ff77713          	andi	a4,a4,255
     508:	00e66663          	bltu	a2,a4,514 <__neorv32_uart_touppercase.constprop.0+0x20>
     50c:	fe078793          	addi	a5,a5,-32
     510:	00f50023          	sb	a5,0(a0)
     514:	00150513          	addi	a0,a0,1
     518:	fed512e3          	bne	a0,a3,4fc <__neorv32_uart_touppercase.constprop.0+0x8>
     51c:	00008067          	ret

00000520 <neorv32_uart0_available>:
     520:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     524:	01255513          	srli	a0,a0,0x12
     528:	00157513          	andi	a0,a0,1
     52c:	00008067          	ret

00000530 <neorv32_uart0_setup>:
     530:	ff010113          	addi	sp,sp,-16
     534:	00812423          	sw	s0,8(sp)
     538:	00912223          	sw	s1,4(sp)
     53c:	00112623          	sw	ra,12(sp)
     540:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     544:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
     548:	00058413          	mv	s0,a1
     54c:	00151593          	slli	a1,a0,0x1
     550:	00078513          	mv	a0,a5
     554:	00060493          	mv	s1,a2
     558:	21d000ef          	jal	ra,f74 <__udivsi3>
     55c:	01051513          	slli	a0,a0,0x10
     560:	000017b7          	lui	a5,0x1
     564:	01055513          	srli	a0,a0,0x10
     568:	00000713          	li	a4,0
     56c:	ffe78793          	addi	a5,a5,-2 # ffe <__modsi3+0xe>
     570:	04a7e463          	bltu	a5,a0,5b8 <neorv32_uart0_setup+0x88>
     574:	0034f793          	andi	a5,s1,3
     578:	00347413          	andi	s0,s0,3
     57c:	fff50513          	addi	a0,a0,-1
     580:	01479793          	slli	a5,a5,0x14
     584:	01641413          	slli	s0,s0,0x16
     588:	00f567b3          	or	a5,a0,a5
     58c:	0087e7b3          	or	a5,a5,s0
     590:	01871713          	slli	a4,a4,0x18
     594:	00c12083          	lw	ra,12(sp)
     598:	00812403          	lw	s0,8(sp)
     59c:	00e7e7b3          	or	a5,a5,a4
     5a0:	10000737          	lui	a4,0x10000
     5a4:	00e7e7b3          	or	a5,a5,a4
     5a8:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     5ac:	00412483          	lw	s1,4(sp)
     5b0:	01010113          	addi	sp,sp,16
     5b4:	00008067          	ret
     5b8:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffec42>
     5bc:	0fd6f693          	andi	a3,a3,253
     5c0:	00069a63          	bnez	a3,5d4 <neorv32_uart0_setup+0xa4>
     5c4:	00355513          	srli	a0,a0,0x3
     5c8:	00170713          	addi	a4,a4,1
     5cc:	0ff77713          	andi	a4,a4,255
     5d0:	fa1ff06f          	j	570 <neorv32_uart0_setup+0x40>
     5d4:	00155513          	srli	a0,a0,0x1
     5d8:	ff1ff06f          	j	5c8 <neorv32_uart0_setup+0x98>

000005dc <neorv32_uart0_putc>:
     5dc:	00040737          	lui	a4,0x40
     5e0:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     5e4:	00e7f7b3          	and	a5,a5,a4
     5e8:	fe079ce3          	bnez	a5,5e0 <neorv32_uart0_putc+0x4>
     5ec:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
     5f0:	00008067          	ret

000005f4 <neorv32_uart0_print>:
     5f4:	ff010113          	addi	sp,sp,-16
     5f8:	00812423          	sw	s0,8(sp)
     5fc:	01212023          	sw	s2,0(sp)
     600:	00112623          	sw	ra,12(sp)
     604:	00912223          	sw	s1,4(sp)
     608:	00050413          	mv	s0,a0
     60c:	00a00913          	li	s2,10
     610:	00044483          	lbu	s1,0(s0)
     614:	00140413          	addi	s0,s0,1
     618:	00049e63          	bnez	s1,634 <neorv32_uart0_print+0x40>
     61c:	00c12083          	lw	ra,12(sp)
     620:	00812403          	lw	s0,8(sp)
     624:	00412483          	lw	s1,4(sp)
     628:	00012903          	lw	s2,0(sp)
     62c:	01010113          	addi	sp,sp,16
     630:	00008067          	ret
     634:	01249663          	bne	s1,s2,640 <neorv32_uart0_print+0x4c>
     638:	00d00513          	li	a0,13
     63c:	fa1ff0ef          	jal	ra,5dc <neorv32_uart0_putc>
     640:	00048513          	mv	a0,s1
     644:	f99ff0ef          	jal	ra,5dc <neorv32_uart0_putc>
     648:	fc9ff06f          	j	610 <neorv32_uart0_print+0x1c>

0000064c <neorv32_uart0_printf>:
     64c:	fa010113          	addi	sp,sp,-96
     650:	04f12a23          	sw	a5,84(sp)
     654:	04410793          	addi	a5,sp,68
     658:	02812c23          	sw	s0,56(sp)
     65c:	03212823          	sw	s2,48(sp)
     660:	03312623          	sw	s3,44(sp)
     664:	03512223          	sw	s5,36(sp)
     668:	03612023          	sw	s6,32(sp)
     66c:	01712e23          	sw	s7,28(sp)
     670:	01812c23          	sw	s8,24(sp)
     674:	01912a23          	sw	s9,20(sp)
     678:	02112e23          	sw	ra,60(sp)
     67c:	02912a23          	sw	s1,52(sp)
     680:	03412423          	sw	s4,40(sp)
     684:	00050413          	mv	s0,a0
     688:	04b12223          	sw	a1,68(sp)
     68c:	04c12423          	sw	a2,72(sp)
     690:	04d12623          	sw	a3,76(sp)
     694:	04e12823          	sw	a4,80(sp)
     698:	05012c23          	sw	a6,88(sp)
     69c:	05112e23          	sw	a7,92(sp)
     6a0:	00f12023          	sw	a5,0(sp)
     6a4:	02500a93          	li	s5,37
     6a8:	00a00b13          	li	s6,10
     6ac:	07000913          	li	s2,112
     6b0:	05800993          	li	s3,88
     6b4:	07500b93          	li	s7,117
     6b8:	07800c13          	li	s8,120
     6bc:	07300c93          	li	s9,115
     6c0:	00044483          	lbu	s1,0(s0)
     6c4:	02049c63          	bnez	s1,6fc <neorv32_uart0_printf+0xb0>
     6c8:	03c12083          	lw	ra,60(sp)
     6cc:	03812403          	lw	s0,56(sp)
     6d0:	03412483          	lw	s1,52(sp)
     6d4:	03012903          	lw	s2,48(sp)
     6d8:	02c12983          	lw	s3,44(sp)
     6dc:	02812a03          	lw	s4,40(sp)
     6e0:	02412a83          	lw	s5,36(sp)
     6e4:	02012b03          	lw	s6,32(sp)
     6e8:	01c12b83          	lw	s7,28(sp)
     6ec:	01812c03          	lw	s8,24(sp)
     6f0:	01412c83          	lw	s9,20(sp)
     6f4:	06010113          	addi	sp,sp,96
     6f8:	00008067          	ret
     6fc:	0f549c63          	bne	s1,s5,7f4 <neorv32_uart0_printf+0x1a8>
     700:	00240a13          	addi	s4,s0,2
     704:	00144403          	lbu	s0,1(s0)
     708:	0d240263          	beq	s0,s2,7cc <neorv32_uart0_printf+0x180>
     70c:	06896463          	bltu	s2,s0,774 <neorv32_uart0_printf+0x128>
     710:	06300793          	li	a5,99
     714:	08f40463          	beq	s0,a5,79c <neorv32_uart0_printf+0x150>
     718:	0087ec63          	bltu	a5,s0,730 <neorv32_uart0_printf+0xe4>
     71c:	0b340863          	beq	s0,s3,7cc <neorv32_uart0_printf+0x180>
     720:	02500513          	li	a0,37
     724:	eb9ff0ef          	jal	ra,5dc <neorv32_uart0_putc>
     728:	00040513          	mv	a0,s0
     72c:	0800006f          	j	7ac <neorv32_uart0_printf+0x160>
     730:	06400793          	li	a5,100
     734:	00f40663          	beq	s0,a5,740 <neorv32_uart0_printf+0xf4>
     738:	06900793          	li	a5,105
     73c:	fef412e3          	bne	s0,a5,720 <neorv32_uart0_printf+0xd4>
     740:	00012783          	lw	a5,0(sp)
     744:	0007a403          	lw	s0,0(a5)
     748:	00478713          	addi	a4,a5,4
     74c:	00e12023          	sw	a4,0(sp)
     750:	00045863          	bgez	s0,760 <neorv32_uart0_printf+0x114>
     754:	02d00513          	li	a0,45
     758:	40800433          	neg	s0,s0
     75c:	e81ff0ef          	jal	ra,5dc <neorv32_uart0_putc>
     760:	00410593          	addi	a1,sp,4
     764:	00040513          	mv	a0,s0
     768:	c49ff0ef          	jal	ra,3b0 <__neorv32_uart_itoa>
     76c:	00410513          	addi	a0,sp,4
     770:	0200006f          	j	790 <neorv32_uart0_printf+0x144>
     774:	05740063          	beq	s0,s7,7b4 <neorv32_uart0_printf+0x168>
     778:	05840a63          	beq	s0,s8,7cc <neorv32_uart0_printf+0x180>
     77c:	fb9412e3          	bne	s0,s9,720 <neorv32_uart0_printf+0xd4>
     780:	00012783          	lw	a5,0(sp)
     784:	0007a503          	lw	a0,0(a5)
     788:	00478713          	addi	a4,a5,4
     78c:	00e12023          	sw	a4,0(sp)
     790:	e65ff0ef          	jal	ra,5f4 <neorv32_uart0_print>
     794:	000a0413          	mv	s0,s4
     798:	f29ff06f          	j	6c0 <neorv32_uart0_printf+0x74>
     79c:	00012783          	lw	a5,0(sp)
     7a0:	0007c503          	lbu	a0,0(a5)
     7a4:	00478713          	addi	a4,a5,4
     7a8:	00e12023          	sw	a4,0(sp)
     7ac:	e31ff0ef          	jal	ra,5dc <neorv32_uart0_putc>
     7b0:	fe5ff06f          	j	794 <neorv32_uart0_printf+0x148>
     7b4:	00012783          	lw	a5,0(sp)
     7b8:	00410593          	addi	a1,sp,4
     7bc:	00478713          	addi	a4,a5,4
     7c0:	0007a503          	lw	a0,0(a5)
     7c4:	00e12023          	sw	a4,0(sp)
     7c8:	fa1ff06f          	j	768 <neorv32_uart0_printf+0x11c>
     7cc:	00012783          	lw	a5,0(sp)
     7d0:	00410593          	addi	a1,sp,4
     7d4:	0007a503          	lw	a0,0(a5)
     7d8:	00478713          	addi	a4,a5,4
     7dc:	00e12023          	sw	a4,0(sp)
     7e0:	cd9ff0ef          	jal	ra,4b8 <__neorv32_uart_tohex>
     7e4:	f93414e3          	bne	s0,s3,76c <neorv32_uart0_printf+0x120>
     7e8:	00410513          	addi	a0,sp,4
     7ec:	d09ff0ef          	jal	ra,4f4 <__neorv32_uart_touppercase.constprop.0>
     7f0:	f7dff06f          	j	76c <neorv32_uart0_printf+0x120>
     7f4:	01649663          	bne	s1,s6,800 <neorv32_uart0_printf+0x1b4>
     7f8:	00d00513          	li	a0,13
     7fc:	de1ff0ef          	jal	ra,5dc <neorv32_uart0_putc>
     800:	00140a13          	addi	s4,s0,1
     804:	00048513          	mv	a0,s1
     808:	fa5ff06f          	j	7ac <neorv32_uart0_printf+0x160>

0000080c <neorv32_cpu_irq_enable>:
     80c:	01f00793          	li	a5,31
     810:	00050713          	mv	a4,a0
     814:	02a7e663          	bltu	a5,a0,840 <neorv32_cpu_irq_enable+0x34>
     818:	ffff17b7          	lui	a5,0xffff1
     81c:	88878793          	addi	a5,a5,-1912 # ffff0888 <__ctr0_io_space_begin+0xffff0a88>
     820:	00a7d7b3          	srl	a5,a5,a0
     824:	0017f793          	andi	a5,a5,1
     828:	00100513          	li	a0,1
     82c:	00078c63          	beqz	a5,844 <neorv32_cpu_irq_enable+0x38>
     830:	00e51533          	sll	a0,a0,a4
     834:	30452073          	csrs	mie,a0
     838:	00000513          	li	a0,0
     83c:	00008067          	ret
     840:	00100513          	li	a0,1
     844:	00008067          	ret

00000848 <neorv32_cpu_delay_ms>:
     848:	fe010113          	addi	sp,sp,-32
     84c:	00a12623          	sw	a0,12(sp)
     850:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
     854:	3e800593          	li	a1,1000
     858:	00112e23          	sw	ra,28(sp)
     85c:	00812c23          	sw	s0,24(sp)
     860:	00912a23          	sw	s1,20(sp)
     864:	710000ef          	jal	ra,f74 <__udivsi3>
     868:	00c12603          	lw	a2,12(sp)
     86c:	00000693          	li	a3,0
     870:	00000593          	li	a1,0
     874:	668000ef          	jal	ra,edc <__muldi3>
     878:	fe802783          	lw	a5,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     87c:	00020737          	lui	a4,0x20
     880:	00050413          	mv	s0,a0
     884:	00e7f7b3          	and	a5,a5,a4
     888:	00058493          	mv	s1,a1
     88c:	02078e63          	beqz	a5,8c8 <neorv32_cpu_delay_ms+0x80>
     890:	b0dff0ef          	jal	ra,39c <neorv32_mtime_get_time>
     894:	00850433          	add	s0,a0,s0
     898:	00a43533          	sltu	a0,s0,a0
     89c:	009584b3          	add	s1,a1,s1
     8a0:	009504b3          	add	s1,a0,s1
     8a4:	af9ff0ef          	jal	ra,39c <neorv32_mtime_get_time>
     8a8:	fe95eee3          	bltu	a1,s1,8a4 <neorv32_cpu_delay_ms+0x5c>
     8ac:	00b49463          	bne	s1,a1,8b4 <neorv32_cpu_delay_ms+0x6c>
     8b0:	fe856ae3          	bltu	a0,s0,8a4 <neorv32_cpu_delay_ms+0x5c>
     8b4:	01c12083          	lw	ra,28(sp)
     8b8:	01812403          	lw	s0,24(sp)
     8bc:	01412483          	lw	s1,20(sp)
     8c0:	02010113          	addi	sp,sp,32
     8c4:	00008067          	ret
     8c8:	01c59493          	slli	s1,a1,0x1c
     8cc:	00455513          	srli	a0,a0,0x4
     8d0:	00a4e533          	or	a0,s1,a0

000008d4 <__neorv32_cpu_delay_ms_start>:
     8d4:	00050a63          	beqz	a0,8e8 <__neorv32_cpu_delay_ms_end>
     8d8:	00050863          	beqz	a0,8e8 <__neorv32_cpu_delay_ms_end>
     8dc:	fff50513          	addi	a0,a0,-1
     8e0:	00000013          	nop
     8e4:	ff1ff06f          	j	8d4 <__neorv32_cpu_delay_ms_start>

000008e8 <__neorv32_cpu_delay_ms_end>:
     8e8:	fcdff06f          	j	8b4 <neorv32_cpu_delay_ms+0x6c>

000008ec <__neorv32_rte_core>:
     8ec:	fc010113          	addi	sp,sp,-64
     8f0:	02112e23          	sw	ra,60(sp)
     8f4:	02512c23          	sw	t0,56(sp)
     8f8:	02612a23          	sw	t1,52(sp)
     8fc:	02712823          	sw	t2,48(sp)
     900:	02a12623          	sw	a0,44(sp)
     904:	02b12423          	sw	a1,40(sp)
     908:	02c12223          	sw	a2,36(sp)
     90c:	02d12023          	sw	a3,32(sp)
     910:	00e12e23          	sw	a4,28(sp)
     914:	00f12c23          	sw	a5,24(sp)
     918:	01012a23          	sw	a6,20(sp)
     91c:	01112823          	sw	a7,16(sp)
     920:	01c12623          	sw	t3,12(sp)
     924:	01d12423          	sw	t4,8(sp)
     928:	01e12223          	sw	t5,4(sp)
     92c:	01f12023          	sw	t6,0(sp)
     930:	341026f3          	csrr	a3,mepc
     934:	34069073          	csrw	mscratch,a3
     938:	342027f3          	csrr	a5,mcause
     93c:	0607c063          	bltz	a5,99c <__neorv32_rte_core+0xb0>
     940:	0006d703          	lhu	a4,0(a3)
     944:	01071713          	slli	a4,a4,0x10
     948:	01075713          	srli	a4,a4,0x10
     94c:	00468593          	addi	a1,a3,4
     950:	30102673          	csrr	a2,misa
     954:	00467613          	andi	a2,a2,4
     958:	00060a63          	beqz	a2,96c <__neorv32_rte_core+0x80>
     95c:	00377713          	andi	a4,a4,3
     960:	00300613          	li	a2,3
     964:	00c70463          	beq	a4,a2,96c <__neorv32_rte_core+0x80>
     968:	00268593          	addi	a1,a3,2
     96c:	34159073          	csrw	mepc,a1
     970:	00b00713          	li	a4,11
     974:	00f77863          	bgeu	a4,a5,984 <__neorv32_rte_core+0x98>
     978:	000017b7          	lui	a5,0x1
     97c:	b6878793          	addi	a5,a5,-1176 # b68 <__neorv32_rte_debug_exc_handler>
     980:	04c0006f          	j	9cc <__neorv32_rte_core+0xe0>
     984:	00001737          	lui	a4,0x1
     988:	00279793          	slli	a5,a5,0x2
     98c:	11070713          	addi	a4,a4,272 # 1110 <symbols.0+0x14>
     990:	00e787b3          	add	a5,a5,a4
     994:	0007a783          	lw	a5,0(a5)
     998:	00078067          	jr	a5
     99c:	80000737          	lui	a4,0x80000
     9a0:	ffd74713          	xori	a4,a4,-3
     9a4:	00e787b3          	add	a5,a5,a4
     9a8:	01c00713          	li	a4,28
     9ac:	fcf766e3          	bltu	a4,a5,978 <__neorv32_rte_core+0x8c>
     9b0:	00001737          	lui	a4,0x1
     9b4:	00279793          	slli	a5,a5,0x2
     9b8:	14070713          	addi	a4,a4,320 # 1140 <symbols.0+0x44>
     9bc:	00e787b3          	add	a5,a5,a4
     9c0:	0007a783          	lw	a5,0(a5)
     9c4:	00078067          	jr	a5
     9c8:	8881a783          	lw	a5,-1912(gp) # 80000088 <__neorv32_rte_vector_lut>
     9cc:	000780e7          	jalr	a5
     9d0:	03c12083          	lw	ra,60(sp)
     9d4:	03812283          	lw	t0,56(sp)
     9d8:	03412303          	lw	t1,52(sp)
     9dc:	03012383          	lw	t2,48(sp)
     9e0:	02c12503          	lw	a0,44(sp)
     9e4:	02812583          	lw	a1,40(sp)
     9e8:	02412603          	lw	a2,36(sp)
     9ec:	02012683          	lw	a3,32(sp)
     9f0:	01c12703          	lw	a4,28(sp)
     9f4:	01812783          	lw	a5,24(sp)
     9f8:	01412803          	lw	a6,20(sp)
     9fc:	01012883          	lw	a7,16(sp)
     a00:	00c12e03          	lw	t3,12(sp)
     a04:	00812e83          	lw	t4,8(sp)
     a08:	00412f03          	lw	t5,4(sp)
     a0c:	00012f83          	lw	t6,0(sp)
     a10:	04010113          	addi	sp,sp,64
     a14:	30200073          	mret
     a18:	88c1a783          	lw	a5,-1908(gp) # 8000008c <__neorv32_rte_vector_lut+0x4>
     a1c:	fb1ff06f          	j	9cc <__neorv32_rte_core+0xe0>
     a20:	8901a783          	lw	a5,-1904(gp) # 80000090 <__neorv32_rte_vector_lut+0x8>
     a24:	fa9ff06f          	j	9cc <__neorv32_rte_core+0xe0>
     a28:	8941a783          	lw	a5,-1900(gp) # 80000094 <__neorv32_rte_vector_lut+0xc>
     a2c:	fa1ff06f          	j	9cc <__neorv32_rte_core+0xe0>
     a30:	8981a783          	lw	a5,-1896(gp) # 80000098 <__neorv32_rte_vector_lut+0x10>
     a34:	f99ff06f          	j	9cc <__neorv32_rte_core+0xe0>
     a38:	89c1a783          	lw	a5,-1892(gp) # 8000009c <__neorv32_rte_vector_lut+0x14>
     a3c:	f91ff06f          	j	9cc <__neorv32_rte_core+0xe0>
     a40:	8a01a783          	lw	a5,-1888(gp) # 800000a0 <__neorv32_rte_vector_lut+0x18>
     a44:	f89ff06f          	j	9cc <__neorv32_rte_core+0xe0>
     a48:	8a41a783          	lw	a5,-1884(gp) # 800000a4 <__neorv32_rte_vector_lut+0x1c>
     a4c:	f81ff06f          	j	9cc <__neorv32_rte_core+0xe0>
     a50:	8a81a783          	lw	a5,-1880(gp) # 800000a8 <__neorv32_rte_vector_lut+0x20>
     a54:	f79ff06f          	j	9cc <__neorv32_rte_core+0xe0>
     a58:	8ac1a783          	lw	a5,-1876(gp) # 800000ac <__neorv32_rte_vector_lut+0x24>
     a5c:	f71ff06f          	j	9cc <__neorv32_rte_core+0xe0>
     a60:	8b01a783          	lw	a5,-1872(gp) # 800000b0 <__neorv32_rte_vector_lut+0x28>
     a64:	f69ff06f          	j	9cc <__neorv32_rte_core+0xe0>
     a68:	8b41a783          	lw	a5,-1868(gp) # 800000b4 <__neorv32_rte_vector_lut+0x2c>
     a6c:	f61ff06f          	j	9cc <__neorv32_rte_core+0xe0>
     a70:	8b81a783          	lw	a5,-1864(gp) # 800000b8 <__neorv32_rte_vector_lut+0x30>
     a74:	f59ff06f          	j	9cc <__neorv32_rte_core+0xe0>
     a78:	8bc1a783          	lw	a5,-1860(gp) # 800000bc <__neorv32_rte_vector_lut+0x34>
     a7c:	f51ff06f          	j	9cc <__neorv32_rte_core+0xe0>
     a80:	8c01a783          	lw	a5,-1856(gp) # 800000c0 <__neorv32_rte_vector_lut+0x38>
     a84:	f49ff06f          	j	9cc <__neorv32_rte_core+0xe0>
     a88:	8c41a783          	lw	a5,-1852(gp) # 800000c4 <__neorv32_rte_vector_lut+0x3c>
     a8c:	f41ff06f          	j	9cc <__neorv32_rte_core+0xe0>
     a90:	8c81a783          	lw	a5,-1848(gp) # 800000c8 <__neorv32_rte_vector_lut+0x40>
     a94:	f39ff06f          	j	9cc <__neorv32_rte_core+0xe0>
     a98:	8cc1a783          	lw	a5,-1844(gp) # 800000cc <__neorv32_rte_vector_lut+0x44>
     a9c:	f31ff06f          	j	9cc <__neorv32_rte_core+0xe0>
     aa0:	8d01a783          	lw	a5,-1840(gp) # 800000d0 <__neorv32_rte_vector_lut+0x48>
     aa4:	f29ff06f          	j	9cc <__neorv32_rte_core+0xe0>
     aa8:	8d41a783          	lw	a5,-1836(gp) # 800000d4 <__neorv32_rte_vector_lut+0x4c>
     aac:	f21ff06f          	j	9cc <__neorv32_rte_core+0xe0>
     ab0:	8d81a783          	lw	a5,-1832(gp) # 800000d8 <__neorv32_rte_vector_lut+0x50>
     ab4:	f19ff06f          	j	9cc <__neorv32_rte_core+0xe0>
     ab8:	8dc1a783          	lw	a5,-1828(gp) # 800000dc <__neorv32_rte_vector_lut+0x54>
     abc:	f11ff06f          	j	9cc <__neorv32_rte_core+0xe0>
     ac0:	8e01a783          	lw	a5,-1824(gp) # 800000e0 <__neorv32_rte_vector_lut+0x58>
     ac4:	f09ff06f          	j	9cc <__neorv32_rte_core+0xe0>
     ac8:	8e41a783          	lw	a5,-1820(gp) # 800000e4 <__neorv32_rte_vector_lut+0x5c>
     acc:	f01ff06f          	j	9cc <__neorv32_rte_core+0xe0>
     ad0:	8e81a783          	lw	a5,-1816(gp) # 800000e8 <__neorv32_rte_vector_lut+0x60>
     ad4:	ef9ff06f          	j	9cc <__neorv32_rte_core+0xe0>
     ad8:	8ec1a783          	lw	a5,-1812(gp) # 800000ec <__neorv32_rte_vector_lut+0x64>
     adc:	ef1ff06f          	j	9cc <__neorv32_rte_core+0xe0>
     ae0:	8f01a783          	lw	a5,-1808(gp) # 800000f0 <__neorv32_rte_vector_lut+0x68>
     ae4:	ee9ff06f          	j	9cc <__neorv32_rte_core+0xe0>
     ae8:	8f41a783          	lw	a5,-1804(gp) # 800000f4 <__neorv32_rte_vector_lut+0x6c>
     aec:	ee1ff06f          	j	9cc <__neorv32_rte_core+0xe0>
     af0:	8f81a783          	lw	a5,-1800(gp) # 800000f8 <__neorv32_rte_vector_lut+0x70>
     af4:	ed9ff06f          	j	9cc <__neorv32_rte_core+0xe0>

00000af8 <__neorv32_rte_print_hex_word>:
     af8:	fe010113          	addi	sp,sp,-32
     afc:	01212823          	sw	s2,16(sp)
     b00:	00050913          	mv	s2,a0
     b04:	00001537          	lui	a0,0x1
     b08:	00912a23          	sw	s1,20(sp)
     b0c:	1b450513          	addi	a0,a0,436 # 11b4 <symbols.0+0xb8>
     b10:	000014b7          	lui	s1,0x1
     b14:	00812c23          	sw	s0,24(sp)
     b18:	01312623          	sw	s3,12(sp)
     b1c:	00112e23          	sw	ra,28(sp)
     b20:	01c00413          	li	s0,28
     b24:	ad1ff0ef          	jal	ra,5f4 <neorv32_uart0_print>
     b28:	3ac48493          	addi	s1,s1,940 # 13ac <hex_symbols.0>
     b2c:	ffc00993          	li	s3,-4
     b30:	008957b3          	srl	a5,s2,s0
     b34:	00f7f793          	andi	a5,a5,15
     b38:	00f487b3          	add	a5,s1,a5
     b3c:	0007c503          	lbu	a0,0(a5)
     b40:	ffc40413          	addi	s0,s0,-4
     b44:	a99ff0ef          	jal	ra,5dc <neorv32_uart0_putc>
     b48:	ff3414e3          	bne	s0,s3,b30 <__neorv32_rte_print_hex_word+0x38>
     b4c:	01c12083          	lw	ra,28(sp)
     b50:	01812403          	lw	s0,24(sp)
     b54:	01412483          	lw	s1,20(sp)
     b58:	01012903          	lw	s2,16(sp)
     b5c:	00c12983          	lw	s3,12(sp)
     b60:	02010113          	addi	sp,sp,32
     b64:	00008067          	ret

00000b68 <__neorv32_rte_debug_exc_handler>:
     b68:	ff010113          	addi	sp,sp,-16
     b6c:	00112623          	sw	ra,12(sp)
     b70:	00812423          	sw	s0,8(sp)
     b74:	00912223          	sw	s1,4(sp)
     b78:	9a9ff0ef          	jal	ra,520 <neorv32_uart0_available>
     b7c:	1c050863          	beqz	a0,d4c <__neorv32_rte_debug_exc_handler+0x1e4>
     b80:	00001537          	lui	a0,0x1
     b84:	1b850513          	addi	a0,a0,440 # 11b8 <symbols.0+0xbc>
     b88:	a6dff0ef          	jal	ra,5f4 <neorv32_uart0_print>
     b8c:	34202473          	csrr	s0,mcause
     b90:	00900713          	li	a4,9
     b94:	00f47793          	andi	a5,s0,15
     b98:	03078493          	addi	s1,a5,48
     b9c:	00f77463          	bgeu	a4,a5,ba4 <__neorv32_rte_debug_exc_handler+0x3c>
     ba0:	05778493          	addi	s1,a5,87
     ba4:	00b00793          	li	a5,11
     ba8:	0087ee63          	bltu	a5,s0,bc4 <__neorv32_rte_debug_exc_handler+0x5c>
     bac:	00001737          	lui	a4,0x1
     bb0:	00241793          	slli	a5,s0,0x2
     bb4:	37c70713          	addi	a4,a4,892 # 137c <symbols.0+0x280>
     bb8:	00e787b3          	add	a5,a5,a4
     bbc:	0007a783          	lw	a5,0(a5)
     bc0:	00078067          	jr	a5
     bc4:	800007b7          	lui	a5,0x80000
     bc8:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
     bcc:	14e40e63          	beq	s0,a4,d28 <__neorv32_rte_debug_exc_handler+0x1c0>
     bd0:	02876a63          	bltu	a4,s0,c04 <__neorv32_rte_debug_exc_handler+0x9c>
     bd4:	00378713          	addi	a4,a5,3
     bd8:	12e40c63          	beq	s0,a4,d10 <__neorv32_rte_debug_exc_handler+0x1a8>
     bdc:	00778793          	addi	a5,a5,7
     be0:	12f40e63          	beq	s0,a5,d1c <__neorv32_rte_debug_exc_handler+0x1b4>
     be4:	00001537          	lui	a0,0x1
     be8:	31850513          	addi	a0,a0,792 # 1318 <symbols.0+0x21c>
     bec:	a09ff0ef          	jal	ra,5f4 <neorv32_uart0_print>
     bf0:	00040513          	mv	a0,s0
     bf4:	f05ff0ef          	jal	ra,af8 <__neorv32_rte_print_hex_word>
     bf8:	00100793          	li	a5,1
     bfc:	08f40c63          	beq	s0,a5,c94 <__neorv32_rte_debug_exc_handler+0x12c>
     c00:	0280006f          	j	c28 <__neorv32_rte_debug_exc_handler+0xc0>
     c04:	ff07c793          	xori	a5,a5,-16
     c08:	00f407b3          	add	a5,s0,a5
     c0c:	00f00713          	li	a4,15
     c10:	fcf76ae3          	bltu	a4,a5,be4 <__neorv32_rte_debug_exc_handler+0x7c>
     c14:	00001537          	lui	a0,0x1
     c18:	30850513          	addi	a0,a0,776 # 1308 <symbols.0+0x20c>
     c1c:	9d9ff0ef          	jal	ra,5f4 <neorv32_uart0_print>
     c20:	00048513          	mv	a0,s1
     c24:	9b9ff0ef          	jal	ra,5dc <neorv32_uart0_putc>
     c28:	ffd47413          	andi	s0,s0,-3
     c2c:	00500793          	li	a5,5
     c30:	06f40263          	beq	s0,a5,c94 <__neorv32_rte_debug_exc_handler+0x12c>
     c34:	00001537          	lui	a0,0x1
     c38:	35c50513          	addi	a0,a0,860 # 135c <symbols.0+0x260>
     c3c:	9b9ff0ef          	jal	ra,5f4 <neorv32_uart0_print>
     c40:	34002573          	csrr	a0,mscratch
     c44:	eb5ff0ef          	jal	ra,af8 <__neorv32_rte_print_hex_word>
     c48:	00001537          	lui	a0,0x1
     c4c:	36450513          	addi	a0,a0,868 # 1364 <symbols.0+0x268>
     c50:	9a5ff0ef          	jal	ra,5f4 <neorv32_uart0_print>
     c54:	34302573          	csrr	a0,mtval
     c58:	ea1ff0ef          	jal	ra,af8 <__neorv32_rte_print_hex_word>
     c5c:	00812403          	lw	s0,8(sp)
     c60:	00c12083          	lw	ra,12(sp)
     c64:	00412483          	lw	s1,4(sp)
     c68:	00001537          	lui	a0,0x1
     c6c:	37050513          	addi	a0,a0,880 # 1370 <symbols.0+0x274>
     c70:	01010113          	addi	sp,sp,16
     c74:	981ff06f          	j	5f4 <neorv32_uart0_print>
     c78:	00001537          	lui	a0,0x1
     c7c:	1c050513          	addi	a0,a0,448 # 11c0 <symbols.0+0xc4>
     c80:	975ff0ef          	jal	ra,5f4 <neorv32_uart0_print>
     c84:	fb1ff06f          	j	c34 <__neorv32_rte_debug_exc_handler+0xcc>
     c88:	00001537          	lui	a0,0x1
     c8c:	1e050513          	addi	a0,a0,480 # 11e0 <symbols.0+0xe4>
     c90:	965ff0ef          	jal	ra,5f4 <neorv32_uart0_print>
     c94:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
     c98:	0a07d463          	bgez	a5,d40 <__neorv32_rte_debug_exc_handler+0x1d8>
     c9c:	0017f793          	andi	a5,a5,1
     ca0:	08078a63          	beqz	a5,d34 <__neorv32_rte_debug_exc_handler+0x1cc>
     ca4:	00001537          	lui	a0,0x1
     ca8:	33050513          	addi	a0,a0,816 # 1330 <symbols.0+0x234>
     cac:	fd5ff06f          	j	c80 <__neorv32_rte_debug_exc_handler+0x118>
     cb0:	00001537          	lui	a0,0x1
     cb4:	1fc50513          	addi	a0,a0,508 # 11fc <symbols.0+0x100>
     cb8:	fc9ff06f          	j	c80 <__neorv32_rte_debug_exc_handler+0x118>
     cbc:	00001537          	lui	a0,0x1
     cc0:	21050513          	addi	a0,a0,528 # 1210 <symbols.0+0x114>
     cc4:	fbdff06f          	j	c80 <__neorv32_rte_debug_exc_handler+0x118>
     cc8:	00001537          	lui	a0,0x1
     ccc:	21c50513          	addi	a0,a0,540 # 121c <symbols.0+0x120>
     cd0:	fb1ff06f          	j	c80 <__neorv32_rte_debug_exc_handler+0x118>
     cd4:	00001537          	lui	a0,0x1
     cd8:	23450513          	addi	a0,a0,564 # 1234 <symbols.0+0x138>
     cdc:	fb5ff06f          	j	c90 <__neorv32_rte_debug_exc_handler+0x128>
     ce0:	00001537          	lui	a0,0x1
     ce4:	24850513          	addi	a0,a0,584 # 1248 <symbols.0+0x14c>
     ce8:	f99ff06f          	j	c80 <__neorv32_rte_debug_exc_handler+0x118>
     cec:	00001537          	lui	a0,0x1
     cf0:	26450513          	addi	a0,a0,612 # 1264 <symbols.0+0x168>
     cf4:	f9dff06f          	j	c90 <__neorv32_rte_debug_exc_handler+0x128>
     cf8:	00001537          	lui	a0,0x1
     cfc:	27850513          	addi	a0,a0,632 # 1278 <symbols.0+0x17c>
     d00:	f81ff06f          	j	c80 <__neorv32_rte_debug_exc_handler+0x118>
     d04:	00001537          	lui	a0,0x1
     d08:	29850513          	addi	a0,a0,664 # 1298 <symbols.0+0x19c>
     d0c:	f75ff06f          	j	c80 <__neorv32_rte_debug_exc_handler+0x118>
     d10:	00001537          	lui	a0,0x1
     d14:	2b850513          	addi	a0,a0,696 # 12b8 <symbols.0+0x1bc>
     d18:	f69ff06f          	j	c80 <__neorv32_rte_debug_exc_handler+0x118>
     d1c:	00001537          	lui	a0,0x1
     d20:	2d450513          	addi	a0,a0,724 # 12d4 <symbols.0+0x1d8>
     d24:	f5dff06f          	j	c80 <__neorv32_rte_debug_exc_handler+0x118>
     d28:	00001537          	lui	a0,0x1
     d2c:	2ec50513          	addi	a0,a0,748 # 12ec <symbols.0+0x1f0>
     d30:	f51ff06f          	j	c80 <__neorv32_rte_debug_exc_handler+0x118>
     d34:	00001537          	lui	a0,0x1
     d38:	34050513          	addi	a0,a0,832 # 1340 <symbols.0+0x244>
     d3c:	f45ff06f          	j	c80 <__neorv32_rte_debug_exc_handler+0x118>
     d40:	00001537          	lui	a0,0x1
     d44:	35050513          	addi	a0,a0,848 # 1350 <symbols.0+0x254>
     d48:	f39ff06f          	j	c80 <__neorv32_rte_debug_exc_handler+0x118>
     d4c:	00c12083          	lw	ra,12(sp)
     d50:	00812403          	lw	s0,8(sp)
     d54:	00412483          	lw	s1,4(sp)
     d58:	01010113          	addi	sp,sp,16
     d5c:	00008067          	ret

00000d60 <neorv32_rte_exception_install>:
     d60:	01f00793          	li	a5,31
     d64:	00a7ee63          	bltu	a5,a0,d80 <neorv32_rte_exception_install+0x20>
     d68:	88818793          	addi	a5,gp,-1912 # 80000088 <__neorv32_rte_vector_lut>
     d6c:	00251513          	slli	a0,a0,0x2
     d70:	00a78533          	add	a0,a5,a0
     d74:	00b52023          	sw	a1,0(a0)
     d78:	00000513          	li	a0,0
     d7c:	00008067          	ret
     d80:	00100513          	li	a0,1
     d84:	00008067          	ret

00000d88 <neorv32_rte_exception_uninstall>:
     d88:	01f00793          	li	a5,31
     d8c:	02a7e263          	bltu	a5,a0,db0 <neorv32_rte_exception_uninstall+0x28>
     d90:	88818793          	addi	a5,gp,-1912 # 80000088 <__neorv32_rte_vector_lut>
     d94:	00251513          	slli	a0,a0,0x2
     d98:	00a78533          	add	a0,a5,a0
     d9c:	000017b7          	lui	a5,0x1
     da0:	b6878793          	addi	a5,a5,-1176 # b68 <__neorv32_rte_debug_exc_handler>
     da4:	00f52023          	sw	a5,0(a0)
     da8:	00000513          	li	a0,0
     dac:	00008067          	ret
     db0:	00100513          	li	a0,1
     db4:	00008067          	ret

00000db8 <neorv32_rte_setup>:
     db8:	ff010113          	addi	sp,sp,-16
     dbc:	000017b7          	lui	a5,0x1
     dc0:	00112623          	sw	ra,12(sp)
     dc4:	00812423          	sw	s0,8(sp)
     dc8:	00912223          	sw	s1,4(sp)
     dcc:	8ec78793          	addi	a5,a5,-1812 # 8ec <__neorv32_rte_core>
     dd0:	30579073          	csrw	mtvec,a5
     dd4:	00000793          	li	a5,0
     dd8:	30479073          	csrw	mie,a5
     ddc:	34479073          	csrw	mip,a5
     de0:	f6002e23          	sw	zero,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
     de4:	00000413          	li	s0,0
     de8:	01d00493          	li	s1,29
     dec:	00040513          	mv	a0,s0
     df0:	00140413          	addi	s0,s0,1
     df4:	0ff47413          	andi	s0,s0,255
     df8:	f91ff0ef          	jal	ra,d88 <neorv32_rte_exception_uninstall>
     dfc:	fe9418e3          	bne	s0,s1,dec <neorv32_rte_setup+0x34>
     e00:	00c12083          	lw	ra,12(sp)
     e04:	00812403          	lw	s0,8(sp)
     e08:	00412483          	lw	s1,4(sp)
     e0c:	01010113          	addi	sp,sp,16
     e10:	00008067          	ret

00000e14 <neorv32_gpio_available>:
     e14:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     e18:	01055513          	srli	a0,a0,0x10
     e1c:	00157513          	andi	a0,a0,1
     e20:	00008067          	ret

00000e24 <neorv32_gpio_pin_set>:
     e24:	00100793          	li	a5,1
     e28:	01f00713          	li	a4,31
     e2c:	00a797b3          	sll	a5,a5,a0
     e30:	00a74a63          	blt	a4,a0,e44 <neorv32_gpio_pin_set+0x20>
     e34:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     e38:	00f767b3          	or	a5,a4,a5
     e3c:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     e40:	00008067          	ret
     e44:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     e48:	00f767b3          	or	a5,a4,a5
     e4c:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     e50:	00008067          	ret

00000e54 <neorv32_gpio_pin_clr>:
     e54:	00100793          	li	a5,1
     e58:	00a797b3          	sll	a5,a5,a0
     e5c:	01f00713          	li	a4,31
     e60:	fff7c793          	not	a5,a5
     e64:	00a74a63          	blt	a4,a0,e78 <neorv32_gpio_pin_clr+0x24>
     e68:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     e6c:	00f777b3          	and	a5,a4,a5
     e70:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     e74:	00008067          	ret
     e78:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     e7c:	00f777b3          	and	a5,a4,a5
     e80:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     e84:	00008067          	ret

00000e88 <neorv32_gpio_pin_toggle>:
     e88:	00100793          	li	a5,1
     e8c:	01f00713          	li	a4,31
     e90:	00a797b3          	sll	a5,a5,a0
     e94:	00a74a63          	blt	a4,a0,ea8 <neorv32_gpio_pin_toggle+0x20>
     e98:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     e9c:	00f747b3          	xor	a5,a4,a5
     ea0:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     ea4:	00008067          	ret
     ea8:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     eac:	00f747b3          	xor	a5,a4,a5
     eb0:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     eb4:	00008067          	ret

00000eb8 <__mulsi3>:
     eb8:	00050613          	mv	a2,a0
     ebc:	00000513          	li	a0,0
     ec0:	0015f693          	andi	a3,a1,1
     ec4:	00068463          	beqz	a3,ecc <__mulsi3+0x14>
     ec8:	00c50533          	add	a0,a0,a2
     ecc:	0015d593          	srli	a1,a1,0x1
     ed0:	00161613          	slli	a2,a2,0x1
     ed4:	fe0596e3          	bnez	a1,ec0 <__mulsi3+0x8>
     ed8:	00008067          	ret

00000edc <__muldi3>:
     edc:	00050313          	mv	t1,a0
     ee0:	ff010113          	addi	sp,sp,-16
     ee4:	00060513          	mv	a0,a2
     ee8:	00068893          	mv	a7,a3
     eec:	00112623          	sw	ra,12(sp)
     ef0:	00030613          	mv	a2,t1
     ef4:	00050693          	mv	a3,a0
     ef8:	00000713          	li	a4,0
     efc:	00000793          	li	a5,0
     f00:	00000813          	li	a6,0
     f04:	0016fe13          	andi	t3,a3,1
     f08:	00171e93          	slli	t4,a4,0x1
     f0c:	000e0c63          	beqz	t3,f24 <__muldi3+0x48>
     f10:	01060e33          	add	t3,a2,a6
     f14:	010e3833          	sltu	a6,t3,a6
     f18:	00e787b3          	add	a5,a5,a4
     f1c:	00f807b3          	add	a5,a6,a5
     f20:	000e0813          	mv	a6,t3
     f24:	01f65713          	srli	a4,a2,0x1f
     f28:	0016d693          	srli	a3,a3,0x1
     f2c:	00eee733          	or	a4,t4,a4
     f30:	00161613          	slli	a2,a2,0x1
     f34:	fc0698e3          	bnez	a3,f04 <__muldi3+0x28>
     f38:	00058663          	beqz	a1,f44 <__muldi3+0x68>
     f3c:	f7dff0ef          	jal	ra,eb8 <__mulsi3>
     f40:	00a787b3          	add	a5,a5,a0
     f44:	00088a63          	beqz	a7,f58 <__muldi3+0x7c>
     f48:	00030513          	mv	a0,t1
     f4c:	00088593          	mv	a1,a7
     f50:	f69ff0ef          	jal	ra,eb8 <__mulsi3>
     f54:	00f507b3          	add	a5,a0,a5
     f58:	00c12083          	lw	ra,12(sp)
     f5c:	00080513          	mv	a0,a6
     f60:	00078593          	mv	a1,a5
     f64:	01010113          	addi	sp,sp,16
     f68:	00008067          	ret

00000f6c <__divsi3>:
     f6c:	06054063          	bltz	a0,fcc <__umodsi3+0x10>
     f70:	0605c663          	bltz	a1,fdc <__umodsi3+0x20>

00000f74 <__udivsi3>:
     f74:	00058613          	mv	a2,a1
     f78:	00050593          	mv	a1,a0
     f7c:	fff00513          	li	a0,-1
     f80:	02060c63          	beqz	a2,fb8 <__udivsi3+0x44>
     f84:	00100693          	li	a3,1
     f88:	00b67a63          	bgeu	a2,a1,f9c <__udivsi3+0x28>
     f8c:	00c05863          	blez	a2,f9c <__udivsi3+0x28>
     f90:	00161613          	slli	a2,a2,0x1
     f94:	00169693          	slli	a3,a3,0x1
     f98:	feb66ae3          	bltu	a2,a1,f8c <__udivsi3+0x18>
     f9c:	00000513          	li	a0,0
     fa0:	00c5e663          	bltu	a1,a2,fac <__udivsi3+0x38>
     fa4:	40c585b3          	sub	a1,a1,a2
     fa8:	00d56533          	or	a0,a0,a3
     fac:	0016d693          	srli	a3,a3,0x1
     fb0:	00165613          	srli	a2,a2,0x1
     fb4:	fe0696e3          	bnez	a3,fa0 <__udivsi3+0x2c>
     fb8:	00008067          	ret

00000fbc <__umodsi3>:
     fbc:	00008293          	mv	t0,ra
     fc0:	fb5ff0ef          	jal	ra,f74 <__udivsi3>
     fc4:	00058513          	mv	a0,a1
     fc8:	00028067          	jr	t0
     fcc:	40a00533          	neg	a0,a0
     fd0:	00b04863          	bgtz	a1,fe0 <__umodsi3+0x24>
     fd4:	40b005b3          	neg	a1,a1
     fd8:	f9dff06f          	j	f74 <__udivsi3>
     fdc:	40b005b3          	neg	a1,a1
     fe0:	00008293          	mv	t0,ra
     fe4:	f91ff0ef          	jal	ra,f74 <__udivsi3>
     fe8:	40a00533          	neg	a0,a0
     fec:	00028067          	jr	t0

00000ff0 <__modsi3>:
     ff0:	00008293          	mv	t0,ra
     ff4:	0005ca63          	bltz	a1,1008 <__modsi3+0x18>
     ff8:	00054c63          	bltz	a0,1010 <__modsi3+0x20>
     ffc:	f79ff0ef          	jal	ra,f74 <__udivsi3>
    1000:	00058513          	mv	a0,a1
    1004:	00028067          	jr	t0
    1008:	40b005b3          	neg	a1,a1
    100c:	fe0558e3          	bgez	a0,ffc <__modsi3+0xc>
    1010:	40a00533          	neg	a0,a0
    1014:	f61ff0ef          	jal	ra,f74 <__udivsi3>
    1018:	40b00533          	neg	a0,a1
    101c:	00028067          	jr	t0
