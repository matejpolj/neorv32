
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
      e0:	2e058593          	addi	a1,a1,736 # 13bc <__crt0_copy_data_src_begin>
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
     180:	fe010113          	addi	sp,sp,-32
     184:	00112e23          	sw	ra,28(sp)
     188:	00812c23          	sw	s0,24(sp)
     18c:	00912a23          	sw	s1,20(sp)
     190:	01212823          	sw	s2,16(sp)
     194:	01312623          	sw	s3,12(sp)
     198:	495000ef          	jal	ra,e2c <neorv32_gpio_available>
     19c:	08050a63          	beqz	a0,230 <main+0xb0>
     1a0:	3cd000ef          	jal	ra,d6c <neorv32_rte_setup>
     1a4:	388000ef          	jal	ra,52c <neorv32_uart0_available>
     1a8:	02050663          	beqz	a0,1d4 <main+0x54>
     1ac:	00005537          	lui	a0,0x5
     1b0:	00000613          	li	a2,0
     1b4:	00000593          	li	a1,0
     1b8:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3744>
     1bc:	380000ef          	jal	ra,53c <neorv32_uart0_setup>
     1c0:	00000513          	li	a0,0
     1c4:	405000ef          	jal	ra,dc8 <neorv32_rte_check_isa>
     1c8:	00001537          	lui	a0,0x1
     1cc:	03050513          	addi	a0,a0,48 # 1030 <__etext>
     1d0:	430000ef          	jal	ra,600 <neorv32_uart0_print>
     1d4:	00000493          	li	s1,0
     1d8:	00000413          	li	s0,0
     1dc:	00100913          	li	s2,1
     1e0:	000019b7          	lui	s3,0x1
     1e4:	0fc000ef          	jal	ra,2e0 <getBut>
     1e8:	00a40433          	add	s0,s0,a0
     1ec:	00f47413          	andi	s0,s0,15
     1f0:	154000ef          	jal	ra,344 <getButons>
     1f4:	40a40433          	sub	s0,s0,a0
     1f8:	0ff47413          	andi	s0,s0,255
     1fc:	00040513          	mv	a0,s0
     200:	050000ef          	jal	ra,250 <printNum>
     204:	00a00593          	li	a1,10
     208:	00048513          	mv	a0,s1
     20c:	5c1000ef          	jal	ra,fcc <__umodsi3>
     210:	01251863          	bne	a0,s2,220 <main+0xa0>
     214:	00040593          	mv	a1,s0
     218:	05098513          	addi	a0,s3,80 # 1050 <__etext+0x20>
     21c:	43c000ef          	jal	ra,658 <neorv32_uart0_printf>
     220:	06400513          	li	a0,100
     224:	00148493          	addi	s1,s1,1
     228:	5f0000ef          	jal	ra,818 <neorv32_cpu_delay_ms>
     22c:	fb9ff06f          	j	1e4 <main+0x64>
     230:	01c12083          	lw	ra,28(sp)
     234:	01812403          	lw	s0,24(sp)
     238:	01412483          	lw	s1,20(sp)
     23c:	01012903          	lw	s2,16(sp)
     240:	00c12983          	lw	s3,12(sp)
     244:	00100513          	li	a0,1
     248:	02010113          	addi	sp,sp,32
     24c:	00008067          	ret

00000250 <printNum>:
     250:	ff010113          	addi	sp,sp,-16
     254:	40355793          	srai	a5,a0,0x3
     258:	00812423          	sw	s0,8(sp)
     25c:	00112623          	sw	ra,12(sp)
     260:	0017f793          	andi	a5,a5,1
     264:	00050413          	mv	s0,a0
     268:	01900513          	li	a0,25
     26c:	04078663          	beqz	a5,2b8 <printNum+0x68>
     270:	3cd000ef          	jal	ra,e3c <neorv32_gpio_pin_set>
     274:	40245793          	srai	a5,s0,0x2
     278:	0017f793          	andi	a5,a5,1
     27c:	01800513          	li	a0,24
     280:	04078063          	beqz	a5,2c0 <printNum+0x70>
     284:	3b9000ef          	jal	ra,e3c <neorv32_gpio_pin_set>
     288:	40145793          	srai	a5,s0,0x1
     28c:	0017f793          	andi	a5,a5,1
     290:	01700513          	li	a0,23
     294:	02078a63          	beqz	a5,2c8 <printNum+0x78>
     298:	3a5000ef          	jal	ra,e3c <neorv32_gpio_pin_set>
     29c:	00147413          	andi	s0,s0,1
     2a0:	01600513          	li	a0,22
     2a4:	02040663          	beqz	s0,2d0 <printNum+0x80>
     2a8:	00812403          	lw	s0,8(sp)
     2ac:	00c12083          	lw	ra,12(sp)
     2b0:	01010113          	addi	sp,sp,16
     2b4:	3890006f          	j	e3c <neorv32_gpio_pin_set>
     2b8:	3b5000ef          	jal	ra,e6c <neorv32_gpio_pin_clr>
     2bc:	fb9ff06f          	j	274 <printNum+0x24>
     2c0:	3ad000ef          	jal	ra,e6c <neorv32_gpio_pin_clr>
     2c4:	fc5ff06f          	j	288 <printNum+0x38>
     2c8:	3a5000ef          	jal	ra,e6c <neorv32_gpio_pin_clr>
     2cc:	fd1ff06f          	j	29c <printNum+0x4c>
     2d0:	00812403          	lw	s0,8(sp)
     2d4:	00c12083          	lw	ra,12(sp)
     2d8:	01010113          	addi	sp,sp,16
     2dc:	3910006f          	j	e6c <neorv32_gpio_pin_clr>

000002e0 <getBut>:
     2e0:	ff010113          	addi	sp,sp,-16
     2e4:	01600513          	li	a0,22
     2e8:	00812423          	sw	s0,8(sp)
     2ec:	00112623          	sw	ra,12(sp)
     2f0:	3b1000ef          	jal	ra,ea0 <neorv32_gpio_pin_get>
     2f4:	00a03433          	snez	s0,a0
     2f8:	01700513          	li	a0,23
     2fc:	3a5000ef          	jal	ra,ea0 <neorv32_gpio_pin_get>
     300:	00050463          	beqz	a0,308 <getBut+0x28>
     304:	00240413          	addi	s0,s0,2
     308:	01800513          	li	a0,24
     30c:	395000ef          	jal	ra,ea0 <neorv32_gpio_pin_get>
     310:	00050663          	beqz	a0,31c <getBut+0x3c>
     314:	00340413          	addi	s0,s0,3
     318:	0ff47413          	andi	s0,s0,255
     31c:	01900513          	li	a0,25
     320:	381000ef          	jal	ra,ea0 <neorv32_gpio_pin_get>
     324:	00050663          	beqz	a0,330 <getBut+0x50>
     328:	00440413          	addi	s0,s0,4
     32c:	0ff47413          	andi	s0,s0,255
     330:	00c12083          	lw	ra,12(sp)
     334:	00040513          	mv	a0,s0
     338:	00812403          	lw	s0,8(sp)
     33c:	01010113          	addi	sp,sp,16
     340:	00008067          	ret

00000344 <getButons>:
     344:	ff010113          	addi	sp,sp,-16
     348:	00900513          	li	a0,9
     34c:	00812423          	sw	s0,8(sp)
     350:	00112623          	sw	ra,12(sp)
     354:	34d000ef          	jal	ra,ea0 <neorv32_gpio_pin_get>
     358:	00a03433          	snez	s0,a0
     35c:	00a00513          	li	a0,10
     360:	341000ef          	jal	ra,ea0 <neorv32_gpio_pin_get>
     364:	00050463          	beqz	a0,36c <getButons+0x28>
     368:	00240413          	addi	s0,s0,2
     36c:	00b00513          	li	a0,11
     370:	331000ef          	jal	ra,ea0 <neorv32_gpio_pin_get>
     374:	00050663          	beqz	a0,380 <getButons+0x3c>
     378:	00340413          	addi	s0,s0,3
     37c:	0ff47413          	andi	s0,s0,255
     380:	00c00513          	li	a0,12
     384:	31d000ef          	jal	ra,ea0 <neorv32_gpio_pin_get>
     388:	00050663          	beqz	a0,394 <getButons+0x50>
     38c:	00440413          	addi	s0,s0,4
     390:	0ff47413          	andi	s0,s0,255
     394:	00c12083          	lw	ra,12(sp)
     398:	00040513          	mv	a0,s0
     39c:	00812403          	lw	s0,8(sp)
     3a0:	01010113          	addi	sp,sp,16
     3a4:	00008067          	ret

000003a8 <neorv32_mtime_get_time>:
     3a8:	f9402583          	lw	a1,-108(zero) # ffffff94 <__ctr0_io_space_begin+0x194>
     3ac:	f9002503          	lw	a0,-112(zero) # ffffff90 <__ctr0_io_space_begin+0x190>
     3b0:	f9402783          	lw	a5,-108(zero) # ffffff94 <__ctr0_io_space_begin+0x194>
     3b4:	fef59ae3          	bne	a1,a5,3a8 <neorv32_mtime_get_time>
     3b8:	00008067          	ret

000003bc <__neorv32_uart_itoa>:
     3bc:	fd010113          	addi	sp,sp,-48
     3c0:	02812423          	sw	s0,40(sp)
     3c4:	02912223          	sw	s1,36(sp)
     3c8:	03212023          	sw	s2,32(sp)
     3cc:	01312e23          	sw	s3,28(sp)
     3d0:	01412c23          	sw	s4,24(sp)
     3d4:	02112623          	sw	ra,44(sp)
     3d8:	01512a23          	sw	s5,20(sp)
     3dc:	00001a37          	lui	s4,0x1
     3e0:	00050493          	mv	s1,a0
     3e4:	00058413          	mv	s0,a1
     3e8:	00058523          	sb	zero,10(a1)
     3ec:	00000993          	li	s3,0
     3f0:	00410913          	addi	s2,sp,4
     3f4:	068a0a13          	addi	s4,s4,104 # 1068 <numbers.1>
     3f8:	00a00593          	li	a1,10
     3fc:	00048513          	mv	a0,s1
     400:	3cd000ef          	jal	ra,fcc <__umodsi3>
     404:	00aa0533          	add	a0,s4,a0
     408:	00054783          	lbu	a5,0(a0)
     40c:	01390ab3          	add	s5,s2,s3
     410:	00048513          	mv	a0,s1
     414:	00fa8023          	sb	a5,0(s5)
     418:	00a00593          	li	a1,10
     41c:	369000ef          	jal	ra,f84 <__udivsi3>
     420:	00198993          	addi	s3,s3,1
     424:	00a00793          	li	a5,10
     428:	00050493          	mv	s1,a0
     42c:	fcf996e3          	bne	s3,a5,3f8 <__neorv32_uart_itoa+0x3c>
     430:	00090693          	mv	a3,s2
     434:	00900713          	li	a4,9
     438:	03000613          	li	a2,48
     43c:	0096c583          	lbu	a1,9(a3)
     440:	00070793          	mv	a5,a4
     444:	fff70713          	addi	a4,a4,-1
     448:	01071713          	slli	a4,a4,0x10
     44c:	01075713          	srli	a4,a4,0x10
     450:	00c59a63          	bne	a1,a2,464 <__neorv32_uart_itoa+0xa8>
     454:	000684a3          	sb	zero,9(a3)
     458:	fff68693          	addi	a3,a3,-1
     45c:	fe0710e3          	bnez	a4,43c <__neorv32_uart_itoa+0x80>
     460:	00000793          	li	a5,0
     464:	00f907b3          	add	a5,s2,a5
     468:	00000593          	li	a1,0
     46c:	0007c703          	lbu	a4,0(a5)
     470:	00070c63          	beqz	a4,488 <__neorv32_uart_itoa+0xcc>
     474:	00158693          	addi	a3,a1,1
     478:	00b405b3          	add	a1,s0,a1
     47c:	00e58023          	sb	a4,0(a1)
     480:	01069593          	slli	a1,a3,0x10
     484:	0105d593          	srli	a1,a1,0x10
     488:	fff78713          	addi	a4,a5,-1
     48c:	02f91863          	bne	s2,a5,4bc <__neorv32_uart_itoa+0x100>
     490:	00b40433          	add	s0,s0,a1
     494:	00040023          	sb	zero,0(s0)
     498:	02c12083          	lw	ra,44(sp)
     49c:	02812403          	lw	s0,40(sp)
     4a0:	02412483          	lw	s1,36(sp)
     4a4:	02012903          	lw	s2,32(sp)
     4a8:	01c12983          	lw	s3,28(sp)
     4ac:	01812a03          	lw	s4,24(sp)
     4b0:	01412a83          	lw	s5,20(sp)
     4b4:	03010113          	addi	sp,sp,48
     4b8:	00008067          	ret
     4bc:	00070793          	mv	a5,a4
     4c0:	fadff06f          	j	46c <__neorv32_uart_itoa+0xb0>

000004c4 <__neorv32_uart_tohex>:
     4c4:	00001637          	lui	a2,0x1
     4c8:	00758693          	addi	a3,a1,7
     4cc:	00000713          	li	a4,0
     4d0:	07460613          	addi	a2,a2,116 # 1074 <symbols.0>
     4d4:	02000813          	li	a6,32
     4d8:	00e557b3          	srl	a5,a0,a4
     4dc:	00f7f793          	andi	a5,a5,15
     4e0:	00f607b3          	add	a5,a2,a5
     4e4:	0007c783          	lbu	a5,0(a5)
     4e8:	00470713          	addi	a4,a4,4
     4ec:	fff68693          	addi	a3,a3,-1
     4f0:	00f680a3          	sb	a5,1(a3)
     4f4:	ff0712e3          	bne	a4,a6,4d8 <__neorv32_uart_tohex+0x14>
     4f8:	00058423          	sb	zero,8(a1)
     4fc:	00008067          	ret

00000500 <__neorv32_uart_touppercase.constprop.0>:
     500:	00b50693          	addi	a3,a0,11
     504:	01900613          	li	a2,25
     508:	00054783          	lbu	a5,0(a0)
     50c:	f9f78713          	addi	a4,a5,-97
     510:	0ff77713          	andi	a4,a4,255
     514:	00e66663          	bltu	a2,a4,520 <__neorv32_uart_touppercase.constprop.0+0x20>
     518:	fe078793          	addi	a5,a5,-32
     51c:	00f50023          	sb	a5,0(a0)
     520:	00150513          	addi	a0,a0,1
     524:	fed512e3          	bne	a0,a3,508 <__neorv32_uart_touppercase.constprop.0+0x8>
     528:	00008067          	ret

0000052c <neorv32_uart0_available>:
     52c:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     530:	01255513          	srli	a0,a0,0x12
     534:	00157513          	andi	a0,a0,1
     538:	00008067          	ret

0000053c <neorv32_uart0_setup>:
     53c:	ff010113          	addi	sp,sp,-16
     540:	00812423          	sw	s0,8(sp)
     544:	00912223          	sw	s1,4(sp)
     548:	00112623          	sw	ra,12(sp)
     54c:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     550:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
     554:	00058413          	mv	s0,a1
     558:	00151593          	slli	a1,a0,0x1
     55c:	00078513          	mv	a0,a5
     560:	00060493          	mv	s1,a2
     564:	221000ef          	jal	ra,f84 <__udivsi3>
     568:	01051513          	slli	a0,a0,0x10
     56c:	000017b7          	lui	a5,0x1
     570:	01055513          	srli	a0,a0,0x10
     574:	00000713          	li	a4,0
     578:	ffe78793          	addi	a5,a5,-2 # ffe <__umodsi3+0x32>
     57c:	04a7e463          	bltu	a5,a0,5c4 <neorv32_uart0_setup+0x88>
     580:	0034f793          	andi	a5,s1,3
     584:	00347413          	andi	s0,s0,3
     588:	fff50513          	addi	a0,a0,-1
     58c:	01479793          	slli	a5,a5,0x14
     590:	01641413          	slli	s0,s0,0x16
     594:	00f567b3          	or	a5,a0,a5
     598:	0087e7b3          	or	a5,a5,s0
     59c:	01871713          	slli	a4,a4,0x18
     5a0:	00c12083          	lw	ra,12(sp)
     5a4:	00812403          	lw	s0,8(sp)
     5a8:	00e7e7b3          	or	a5,a5,a4
     5ac:	10000737          	lui	a4,0x10000
     5b0:	00e7e7b3          	or	a5,a5,a4
     5b4:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     5b8:	00412483          	lw	s1,4(sp)
     5bc:	01010113          	addi	sp,sp,16
     5c0:	00008067          	ret
     5c4:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffec42>
     5c8:	0fd6f693          	andi	a3,a3,253
     5cc:	00069a63          	bnez	a3,5e0 <neorv32_uart0_setup+0xa4>
     5d0:	00355513          	srli	a0,a0,0x3
     5d4:	00170713          	addi	a4,a4,1
     5d8:	0ff77713          	andi	a4,a4,255
     5dc:	fa1ff06f          	j	57c <neorv32_uart0_setup+0x40>
     5e0:	00155513          	srli	a0,a0,0x1
     5e4:	ff1ff06f          	j	5d4 <neorv32_uart0_setup+0x98>

000005e8 <neorv32_uart0_putc>:
     5e8:	00040737          	lui	a4,0x40
     5ec:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     5f0:	00e7f7b3          	and	a5,a5,a4
     5f4:	fe079ce3          	bnez	a5,5ec <neorv32_uart0_putc+0x4>
     5f8:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
     5fc:	00008067          	ret

00000600 <neorv32_uart0_print>:
     600:	ff010113          	addi	sp,sp,-16
     604:	00812423          	sw	s0,8(sp)
     608:	01212023          	sw	s2,0(sp)
     60c:	00112623          	sw	ra,12(sp)
     610:	00912223          	sw	s1,4(sp)
     614:	00050413          	mv	s0,a0
     618:	00a00913          	li	s2,10
     61c:	00044483          	lbu	s1,0(s0)
     620:	00140413          	addi	s0,s0,1
     624:	00049e63          	bnez	s1,640 <neorv32_uart0_print+0x40>
     628:	00c12083          	lw	ra,12(sp)
     62c:	00812403          	lw	s0,8(sp)
     630:	00412483          	lw	s1,4(sp)
     634:	00012903          	lw	s2,0(sp)
     638:	01010113          	addi	sp,sp,16
     63c:	00008067          	ret
     640:	01249663          	bne	s1,s2,64c <neorv32_uart0_print+0x4c>
     644:	00d00513          	li	a0,13
     648:	fa1ff0ef          	jal	ra,5e8 <neorv32_uart0_putc>
     64c:	00048513          	mv	a0,s1
     650:	f99ff0ef          	jal	ra,5e8 <neorv32_uart0_putc>
     654:	fc9ff06f          	j	61c <neorv32_uart0_print+0x1c>

00000658 <neorv32_uart0_printf>:
     658:	fa010113          	addi	sp,sp,-96
     65c:	04f12a23          	sw	a5,84(sp)
     660:	04410793          	addi	a5,sp,68
     664:	02812c23          	sw	s0,56(sp)
     668:	03212823          	sw	s2,48(sp)
     66c:	03312623          	sw	s3,44(sp)
     670:	03512223          	sw	s5,36(sp)
     674:	03612023          	sw	s6,32(sp)
     678:	01712e23          	sw	s7,28(sp)
     67c:	01812c23          	sw	s8,24(sp)
     680:	01912a23          	sw	s9,20(sp)
     684:	02112e23          	sw	ra,60(sp)
     688:	02912a23          	sw	s1,52(sp)
     68c:	03412423          	sw	s4,40(sp)
     690:	00050413          	mv	s0,a0
     694:	04b12223          	sw	a1,68(sp)
     698:	04c12423          	sw	a2,72(sp)
     69c:	04d12623          	sw	a3,76(sp)
     6a0:	04e12823          	sw	a4,80(sp)
     6a4:	05012c23          	sw	a6,88(sp)
     6a8:	05112e23          	sw	a7,92(sp)
     6ac:	00f12023          	sw	a5,0(sp)
     6b0:	02500a93          	li	s5,37
     6b4:	00a00b13          	li	s6,10
     6b8:	07000913          	li	s2,112
     6bc:	05800993          	li	s3,88
     6c0:	07500b93          	li	s7,117
     6c4:	07800c13          	li	s8,120
     6c8:	07300c93          	li	s9,115
     6cc:	00044483          	lbu	s1,0(s0)
     6d0:	02049c63          	bnez	s1,708 <neorv32_uart0_printf+0xb0>
     6d4:	03c12083          	lw	ra,60(sp)
     6d8:	03812403          	lw	s0,56(sp)
     6dc:	03412483          	lw	s1,52(sp)
     6e0:	03012903          	lw	s2,48(sp)
     6e4:	02c12983          	lw	s3,44(sp)
     6e8:	02812a03          	lw	s4,40(sp)
     6ec:	02412a83          	lw	s5,36(sp)
     6f0:	02012b03          	lw	s6,32(sp)
     6f4:	01c12b83          	lw	s7,28(sp)
     6f8:	01812c03          	lw	s8,24(sp)
     6fc:	01412c83          	lw	s9,20(sp)
     700:	06010113          	addi	sp,sp,96
     704:	00008067          	ret
     708:	0f549c63          	bne	s1,s5,800 <neorv32_uart0_printf+0x1a8>
     70c:	00240a13          	addi	s4,s0,2
     710:	00144403          	lbu	s0,1(s0)
     714:	0d240263          	beq	s0,s2,7d8 <neorv32_uart0_printf+0x180>
     718:	06896463          	bltu	s2,s0,780 <neorv32_uart0_printf+0x128>
     71c:	06300793          	li	a5,99
     720:	08f40463          	beq	s0,a5,7a8 <neorv32_uart0_printf+0x150>
     724:	0087ec63          	bltu	a5,s0,73c <neorv32_uart0_printf+0xe4>
     728:	0b340863          	beq	s0,s3,7d8 <neorv32_uart0_printf+0x180>
     72c:	02500513          	li	a0,37
     730:	eb9ff0ef          	jal	ra,5e8 <neorv32_uart0_putc>
     734:	00040513          	mv	a0,s0
     738:	0800006f          	j	7b8 <neorv32_uart0_printf+0x160>
     73c:	06400793          	li	a5,100
     740:	00f40663          	beq	s0,a5,74c <neorv32_uart0_printf+0xf4>
     744:	06900793          	li	a5,105
     748:	fef412e3          	bne	s0,a5,72c <neorv32_uart0_printf+0xd4>
     74c:	00012783          	lw	a5,0(sp)
     750:	0007a403          	lw	s0,0(a5)
     754:	00478713          	addi	a4,a5,4
     758:	00e12023          	sw	a4,0(sp)
     75c:	00045863          	bgez	s0,76c <neorv32_uart0_printf+0x114>
     760:	02d00513          	li	a0,45
     764:	40800433          	neg	s0,s0
     768:	e81ff0ef          	jal	ra,5e8 <neorv32_uart0_putc>
     76c:	00410593          	addi	a1,sp,4
     770:	00040513          	mv	a0,s0
     774:	c49ff0ef          	jal	ra,3bc <__neorv32_uart_itoa>
     778:	00410513          	addi	a0,sp,4
     77c:	0200006f          	j	79c <neorv32_uart0_printf+0x144>
     780:	05740063          	beq	s0,s7,7c0 <neorv32_uart0_printf+0x168>
     784:	05840a63          	beq	s0,s8,7d8 <neorv32_uart0_printf+0x180>
     788:	fb9412e3          	bne	s0,s9,72c <neorv32_uart0_printf+0xd4>
     78c:	00012783          	lw	a5,0(sp)
     790:	0007a503          	lw	a0,0(a5)
     794:	00478713          	addi	a4,a5,4
     798:	00e12023          	sw	a4,0(sp)
     79c:	e65ff0ef          	jal	ra,600 <neorv32_uart0_print>
     7a0:	000a0413          	mv	s0,s4
     7a4:	f29ff06f          	j	6cc <neorv32_uart0_printf+0x74>
     7a8:	00012783          	lw	a5,0(sp)
     7ac:	0007c503          	lbu	a0,0(a5)
     7b0:	00478713          	addi	a4,a5,4
     7b4:	00e12023          	sw	a4,0(sp)
     7b8:	e31ff0ef          	jal	ra,5e8 <neorv32_uart0_putc>
     7bc:	fe5ff06f          	j	7a0 <neorv32_uart0_printf+0x148>
     7c0:	00012783          	lw	a5,0(sp)
     7c4:	00410593          	addi	a1,sp,4
     7c8:	00478713          	addi	a4,a5,4
     7cc:	0007a503          	lw	a0,0(a5)
     7d0:	00e12023          	sw	a4,0(sp)
     7d4:	fa1ff06f          	j	774 <neorv32_uart0_printf+0x11c>
     7d8:	00012783          	lw	a5,0(sp)
     7dc:	00410593          	addi	a1,sp,4
     7e0:	0007a503          	lw	a0,0(a5)
     7e4:	00478713          	addi	a4,a5,4
     7e8:	00e12023          	sw	a4,0(sp)
     7ec:	cd9ff0ef          	jal	ra,4c4 <__neorv32_uart_tohex>
     7f0:	f93414e3          	bne	s0,s3,778 <neorv32_uart0_printf+0x120>
     7f4:	00410513          	addi	a0,sp,4
     7f8:	d09ff0ef          	jal	ra,500 <__neorv32_uart_touppercase.constprop.0>
     7fc:	f7dff06f          	j	778 <neorv32_uart0_printf+0x120>
     800:	01649663          	bne	s1,s6,80c <neorv32_uart0_printf+0x1b4>
     804:	00d00513          	li	a0,13
     808:	de1ff0ef          	jal	ra,5e8 <neorv32_uart0_putc>
     80c:	00140a13          	addi	s4,s0,1
     810:	00048513          	mv	a0,s1
     814:	fa5ff06f          	j	7b8 <neorv32_uart0_printf+0x160>

00000818 <neorv32_cpu_delay_ms>:
     818:	fe010113          	addi	sp,sp,-32
     81c:	00a12623          	sw	a0,12(sp)
     820:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
     824:	3e800593          	li	a1,1000
     828:	00112e23          	sw	ra,28(sp)
     82c:	00812c23          	sw	s0,24(sp)
     830:	00912a23          	sw	s1,20(sp)
     834:	750000ef          	jal	ra,f84 <__udivsi3>
     838:	00c12603          	lw	a2,12(sp)
     83c:	00000693          	li	a3,0
     840:	00000593          	li	a1,0
     844:	6a8000ef          	jal	ra,eec <__muldi3>
     848:	fe802783          	lw	a5,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     84c:	00020737          	lui	a4,0x20
     850:	00050413          	mv	s0,a0
     854:	00e7f7b3          	and	a5,a5,a4
     858:	00058493          	mv	s1,a1
     85c:	02078e63          	beqz	a5,898 <neorv32_cpu_delay_ms+0x80>
     860:	b49ff0ef          	jal	ra,3a8 <neorv32_mtime_get_time>
     864:	00850433          	add	s0,a0,s0
     868:	00a43533          	sltu	a0,s0,a0
     86c:	009584b3          	add	s1,a1,s1
     870:	009504b3          	add	s1,a0,s1
     874:	b35ff0ef          	jal	ra,3a8 <neorv32_mtime_get_time>
     878:	fe95eee3          	bltu	a1,s1,874 <neorv32_cpu_delay_ms+0x5c>
     87c:	00b49463          	bne	s1,a1,884 <neorv32_cpu_delay_ms+0x6c>
     880:	fe856ae3          	bltu	a0,s0,874 <neorv32_cpu_delay_ms+0x5c>
     884:	01c12083          	lw	ra,28(sp)
     888:	01812403          	lw	s0,24(sp)
     88c:	01412483          	lw	s1,20(sp)
     890:	02010113          	addi	sp,sp,32
     894:	00008067          	ret
     898:	01c59493          	slli	s1,a1,0x1c
     89c:	00455513          	srli	a0,a0,0x4
     8a0:	00a4e533          	or	a0,s1,a0

000008a4 <__neorv32_cpu_delay_ms_start>:
     8a4:	00050a63          	beqz	a0,8b8 <__neorv32_cpu_delay_ms_end>
     8a8:	00050863          	beqz	a0,8b8 <__neorv32_cpu_delay_ms_end>
     8ac:	fff50513          	addi	a0,a0,-1
     8b0:	00000013          	nop
     8b4:	ff1ff06f          	j	8a4 <__neorv32_cpu_delay_ms_start>

000008b8 <__neorv32_cpu_delay_ms_end>:
     8b8:	fcdff06f          	j	884 <neorv32_cpu_delay_ms+0x6c>

000008bc <__neorv32_rte_core>:
     8bc:	fc010113          	addi	sp,sp,-64
     8c0:	02112e23          	sw	ra,60(sp)
     8c4:	02512c23          	sw	t0,56(sp)
     8c8:	02612a23          	sw	t1,52(sp)
     8cc:	02712823          	sw	t2,48(sp)
     8d0:	02a12623          	sw	a0,44(sp)
     8d4:	02b12423          	sw	a1,40(sp)
     8d8:	02c12223          	sw	a2,36(sp)
     8dc:	02d12023          	sw	a3,32(sp)
     8e0:	00e12e23          	sw	a4,28(sp)
     8e4:	00f12c23          	sw	a5,24(sp)
     8e8:	01012a23          	sw	a6,20(sp)
     8ec:	01112823          	sw	a7,16(sp)
     8f0:	01c12623          	sw	t3,12(sp)
     8f4:	01d12423          	sw	t4,8(sp)
     8f8:	01e12223          	sw	t5,4(sp)
     8fc:	01f12023          	sw	t6,0(sp)
     900:	341026f3          	csrr	a3,mepc
     904:	34069073          	csrw	mscratch,a3
     908:	342027f3          	csrr	a5,mcause
     90c:	0607c063          	bltz	a5,96c <__neorv32_rte_core+0xb0>
     910:	0006d703          	lhu	a4,0(a3)
     914:	01071713          	slli	a4,a4,0x10
     918:	01075713          	srli	a4,a4,0x10
     91c:	00468593          	addi	a1,a3,4
     920:	30102673          	csrr	a2,misa
     924:	00467613          	andi	a2,a2,4
     928:	00060a63          	beqz	a2,93c <__neorv32_rte_core+0x80>
     92c:	00377713          	andi	a4,a4,3
     930:	00300613          	li	a2,3
     934:	00c70463          	beq	a4,a2,93c <__neorv32_rte_core+0x80>
     938:	00268593          	addi	a1,a3,2
     93c:	34159073          	csrw	mepc,a1
     940:	00b00713          	li	a4,11
     944:	00f77863          	bgeu	a4,a5,954 <__neorv32_rte_core+0x98>
     948:	000017b7          	lui	a5,0x1
     94c:	b4078793          	addi	a5,a5,-1216 # b40 <__neorv32_rte_debug_exc_handler>
     950:	0500006f          	j	9a0 <__neorv32_rte_core+0xe4>
     954:	00001737          	lui	a4,0x1
     958:	00279793          	slli	a5,a5,0x2
     95c:	08870713          	addi	a4,a4,136 # 1088 <symbols.0+0x14>
     960:	00e787b3          	add	a5,a5,a4
     964:	0007a783          	lw	a5,0(a5)
     968:	00078067          	jr	a5
     96c:	80000737          	lui	a4,0x80000
     970:	ffd74713          	xori	a4,a4,-3
     974:	00e787b3          	add	a5,a5,a4
     978:	01c00713          	li	a4,28
     97c:	fcf766e3          	bltu	a4,a5,948 <__neorv32_rte_core+0x8c>
     980:	00001737          	lui	a4,0x1
     984:	00279793          	slli	a5,a5,0x2
     988:	0b870713          	addi	a4,a4,184 # 10b8 <symbols.0+0x44>
     98c:	00e787b3          	add	a5,a5,a4
     990:	0007a783          	lw	a5,0(a5)
     994:	00078067          	jr	a5
     998:	800007b7          	lui	a5,0x80000
     99c:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
     9a0:	000780e7          	jalr	a5
     9a4:	03c12083          	lw	ra,60(sp)
     9a8:	03812283          	lw	t0,56(sp)
     9ac:	03412303          	lw	t1,52(sp)
     9b0:	03012383          	lw	t2,48(sp)
     9b4:	02c12503          	lw	a0,44(sp)
     9b8:	02812583          	lw	a1,40(sp)
     9bc:	02412603          	lw	a2,36(sp)
     9c0:	02012683          	lw	a3,32(sp)
     9c4:	01c12703          	lw	a4,28(sp)
     9c8:	01812783          	lw	a5,24(sp)
     9cc:	01412803          	lw	a6,20(sp)
     9d0:	01012883          	lw	a7,16(sp)
     9d4:	00c12e03          	lw	t3,12(sp)
     9d8:	00812e83          	lw	t4,8(sp)
     9dc:	00412f03          	lw	t5,4(sp)
     9e0:	00012f83          	lw	t6,0(sp)
     9e4:	04010113          	addi	sp,sp,64
     9e8:	30200073          	mret
     9ec:	800007b7          	lui	a5,0x80000
     9f0:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
     9f4:	fadff06f          	j	9a0 <__neorv32_rte_core+0xe4>
     9f8:	8081a783          	lw	a5,-2040(gp) # 80000008 <__neorv32_rte_vector_lut+0x8>
     9fc:	fa5ff06f          	j	9a0 <__neorv32_rte_core+0xe4>
     a00:	80c1a783          	lw	a5,-2036(gp) # 8000000c <__neorv32_rte_vector_lut+0xc>
     a04:	f9dff06f          	j	9a0 <__neorv32_rte_core+0xe4>
     a08:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
     a0c:	f95ff06f          	j	9a0 <__neorv32_rte_core+0xe4>
     a10:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
     a14:	f8dff06f          	j	9a0 <__neorv32_rte_core+0xe4>
     a18:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
     a1c:	f85ff06f          	j	9a0 <__neorv32_rte_core+0xe4>
     a20:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
     a24:	f7dff06f          	j	9a0 <__neorv32_rte_core+0xe4>
     a28:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
     a2c:	f75ff06f          	j	9a0 <__neorv32_rte_core+0xe4>
     a30:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
     a34:	f6dff06f          	j	9a0 <__neorv32_rte_core+0xe4>
     a38:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
     a3c:	f65ff06f          	j	9a0 <__neorv32_rte_core+0xe4>
     a40:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
     a44:	f5dff06f          	j	9a0 <__neorv32_rte_core+0xe4>
     a48:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
     a4c:	f55ff06f          	j	9a0 <__neorv32_rte_core+0xe4>
     a50:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
     a54:	f4dff06f          	j	9a0 <__neorv32_rte_core+0xe4>
     a58:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
     a5c:	f45ff06f          	j	9a0 <__neorv32_rte_core+0xe4>
     a60:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
     a64:	f3dff06f          	j	9a0 <__neorv32_rte_core+0xe4>
     a68:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
     a6c:	f35ff06f          	j	9a0 <__neorv32_rte_core+0xe4>
     a70:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
     a74:	f2dff06f          	j	9a0 <__neorv32_rte_core+0xe4>
     a78:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
     a7c:	f25ff06f          	j	9a0 <__neorv32_rte_core+0xe4>
     a80:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
     a84:	f1dff06f          	j	9a0 <__neorv32_rte_core+0xe4>
     a88:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
     a8c:	f15ff06f          	j	9a0 <__neorv32_rte_core+0xe4>
     a90:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
     a94:	f0dff06f          	j	9a0 <__neorv32_rte_core+0xe4>
     a98:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
     a9c:	f05ff06f          	j	9a0 <__neorv32_rte_core+0xe4>
     aa0:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
     aa4:	efdff06f          	j	9a0 <__neorv32_rte_core+0xe4>
     aa8:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
     aac:	ef5ff06f          	j	9a0 <__neorv32_rte_core+0xe4>
     ab0:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
     ab4:	eedff06f          	j	9a0 <__neorv32_rte_core+0xe4>
     ab8:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
     abc:	ee5ff06f          	j	9a0 <__neorv32_rte_core+0xe4>
     ac0:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
     ac4:	eddff06f          	j	9a0 <__neorv32_rte_core+0xe4>
     ac8:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
     acc:	ed5ff06f          	j	9a0 <__neorv32_rte_core+0xe4>

00000ad0 <__neorv32_rte_print_hex_word>:
     ad0:	fe010113          	addi	sp,sp,-32
     ad4:	01212823          	sw	s2,16(sp)
     ad8:	00050913          	mv	s2,a0
     adc:	00001537          	lui	a0,0x1
     ae0:	00912a23          	sw	s1,20(sp)
     ae4:	12c50513          	addi	a0,a0,300 # 112c <symbols.0+0xb8>
     ae8:	000014b7          	lui	s1,0x1
     aec:	00812c23          	sw	s0,24(sp)
     af0:	01312623          	sw	s3,12(sp)
     af4:	00112e23          	sw	ra,28(sp)
     af8:	01c00413          	li	s0,28
     afc:	b05ff0ef          	jal	ra,600 <neorv32_uart0_print>
     b00:	3ac48493          	addi	s1,s1,940 # 13ac <hex_symbols.0>
     b04:	ffc00993          	li	s3,-4
     b08:	008957b3          	srl	a5,s2,s0
     b0c:	00f7f793          	andi	a5,a5,15
     b10:	00f487b3          	add	a5,s1,a5
     b14:	0007c503          	lbu	a0,0(a5)
     b18:	ffc40413          	addi	s0,s0,-4
     b1c:	acdff0ef          	jal	ra,5e8 <neorv32_uart0_putc>
     b20:	ff3414e3          	bne	s0,s3,b08 <__neorv32_rte_print_hex_word+0x38>
     b24:	01c12083          	lw	ra,28(sp)
     b28:	01812403          	lw	s0,24(sp)
     b2c:	01412483          	lw	s1,20(sp)
     b30:	01012903          	lw	s2,16(sp)
     b34:	00c12983          	lw	s3,12(sp)
     b38:	02010113          	addi	sp,sp,32
     b3c:	00008067          	ret

00000b40 <__neorv32_rte_debug_exc_handler>:
     b40:	ff010113          	addi	sp,sp,-16
     b44:	00112623          	sw	ra,12(sp)
     b48:	00812423          	sw	s0,8(sp)
     b4c:	00912223          	sw	s1,4(sp)
     b50:	9ddff0ef          	jal	ra,52c <neorv32_uart0_available>
     b54:	1c050863          	beqz	a0,d24 <__neorv32_rte_debug_exc_handler+0x1e4>
     b58:	00001537          	lui	a0,0x1
     b5c:	13050513          	addi	a0,a0,304 # 1130 <symbols.0+0xbc>
     b60:	aa1ff0ef          	jal	ra,600 <neorv32_uart0_print>
     b64:	34202473          	csrr	s0,mcause
     b68:	00900713          	li	a4,9
     b6c:	00f47793          	andi	a5,s0,15
     b70:	03078493          	addi	s1,a5,48
     b74:	00f77463          	bgeu	a4,a5,b7c <__neorv32_rte_debug_exc_handler+0x3c>
     b78:	05778493          	addi	s1,a5,87
     b7c:	00b00793          	li	a5,11
     b80:	0087ee63          	bltu	a5,s0,b9c <__neorv32_rte_debug_exc_handler+0x5c>
     b84:	00001737          	lui	a4,0x1
     b88:	00241793          	slli	a5,s0,0x2
     b8c:	2f470713          	addi	a4,a4,756 # 12f4 <symbols.0+0x280>
     b90:	00e787b3          	add	a5,a5,a4
     b94:	0007a783          	lw	a5,0(a5)
     b98:	00078067          	jr	a5
     b9c:	800007b7          	lui	a5,0x80000
     ba0:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
     ba4:	14e40e63          	beq	s0,a4,d00 <__neorv32_rte_debug_exc_handler+0x1c0>
     ba8:	02876a63          	bltu	a4,s0,bdc <__neorv32_rte_debug_exc_handler+0x9c>
     bac:	00378713          	addi	a4,a5,3
     bb0:	12e40c63          	beq	s0,a4,ce8 <__neorv32_rte_debug_exc_handler+0x1a8>
     bb4:	00778793          	addi	a5,a5,7
     bb8:	12f40e63          	beq	s0,a5,cf4 <__neorv32_rte_debug_exc_handler+0x1b4>
     bbc:	00001537          	lui	a0,0x1
     bc0:	29050513          	addi	a0,a0,656 # 1290 <symbols.0+0x21c>
     bc4:	a3dff0ef          	jal	ra,600 <neorv32_uart0_print>
     bc8:	00040513          	mv	a0,s0
     bcc:	f05ff0ef          	jal	ra,ad0 <__neorv32_rte_print_hex_word>
     bd0:	00100793          	li	a5,1
     bd4:	08f40c63          	beq	s0,a5,c6c <__neorv32_rte_debug_exc_handler+0x12c>
     bd8:	0280006f          	j	c00 <__neorv32_rte_debug_exc_handler+0xc0>
     bdc:	ff07c793          	xori	a5,a5,-16
     be0:	00f407b3          	add	a5,s0,a5
     be4:	00f00713          	li	a4,15
     be8:	fcf76ae3          	bltu	a4,a5,bbc <__neorv32_rte_debug_exc_handler+0x7c>
     bec:	00001537          	lui	a0,0x1
     bf0:	28050513          	addi	a0,a0,640 # 1280 <symbols.0+0x20c>
     bf4:	a0dff0ef          	jal	ra,600 <neorv32_uart0_print>
     bf8:	00048513          	mv	a0,s1
     bfc:	9edff0ef          	jal	ra,5e8 <neorv32_uart0_putc>
     c00:	ffd47413          	andi	s0,s0,-3
     c04:	00500793          	li	a5,5
     c08:	06f40263          	beq	s0,a5,c6c <__neorv32_rte_debug_exc_handler+0x12c>
     c0c:	00001537          	lui	a0,0x1
     c10:	2d450513          	addi	a0,a0,724 # 12d4 <symbols.0+0x260>
     c14:	9edff0ef          	jal	ra,600 <neorv32_uart0_print>
     c18:	34002573          	csrr	a0,mscratch
     c1c:	eb5ff0ef          	jal	ra,ad0 <__neorv32_rte_print_hex_word>
     c20:	00001537          	lui	a0,0x1
     c24:	2dc50513          	addi	a0,a0,732 # 12dc <symbols.0+0x268>
     c28:	9d9ff0ef          	jal	ra,600 <neorv32_uart0_print>
     c2c:	34302573          	csrr	a0,mtval
     c30:	ea1ff0ef          	jal	ra,ad0 <__neorv32_rte_print_hex_word>
     c34:	00812403          	lw	s0,8(sp)
     c38:	00c12083          	lw	ra,12(sp)
     c3c:	00412483          	lw	s1,4(sp)
     c40:	00001537          	lui	a0,0x1
     c44:	2e850513          	addi	a0,a0,744 # 12e8 <symbols.0+0x274>
     c48:	01010113          	addi	sp,sp,16
     c4c:	9b5ff06f          	j	600 <neorv32_uart0_print>
     c50:	00001537          	lui	a0,0x1
     c54:	13850513          	addi	a0,a0,312 # 1138 <symbols.0+0xc4>
     c58:	9a9ff0ef          	jal	ra,600 <neorv32_uart0_print>
     c5c:	fb1ff06f          	j	c0c <__neorv32_rte_debug_exc_handler+0xcc>
     c60:	00001537          	lui	a0,0x1
     c64:	15850513          	addi	a0,a0,344 # 1158 <symbols.0+0xe4>
     c68:	999ff0ef          	jal	ra,600 <neorv32_uart0_print>
     c6c:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
     c70:	0a07d463          	bgez	a5,d18 <__neorv32_rte_debug_exc_handler+0x1d8>
     c74:	0017f793          	andi	a5,a5,1
     c78:	08078a63          	beqz	a5,d0c <__neorv32_rte_debug_exc_handler+0x1cc>
     c7c:	00001537          	lui	a0,0x1
     c80:	2a850513          	addi	a0,a0,680 # 12a8 <symbols.0+0x234>
     c84:	fd5ff06f          	j	c58 <__neorv32_rte_debug_exc_handler+0x118>
     c88:	00001537          	lui	a0,0x1
     c8c:	17450513          	addi	a0,a0,372 # 1174 <symbols.0+0x100>
     c90:	fc9ff06f          	j	c58 <__neorv32_rte_debug_exc_handler+0x118>
     c94:	00001537          	lui	a0,0x1
     c98:	18850513          	addi	a0,a0,392 # 1188 <symbols.0+0x114>
     c9c:	fbdff06f          	j	c58 <__neorv32_rte_debug_exc_handler+0x118>
     ca0:	00001537          	lui	a0,0x1
     ca4:	19450513          	addi	a0,a0,404 # 1194 <symbols.0+0x120>
     ca8:	fb1ff06f          	j	c58 <__neorv32_rte_debug_exc_handler+0x118>
     cac:	00001537          	lui	a0,0x1
     cb0:	1ac50513          	addi	a0,a0,428 # 11ac <symbols.0+0x138>
     cb4:	fb5ff06f          	j	c68 <__neorv32_rte_debug_exc_handler+0x128>
     cb8:	00001537          	lui	a0,0x1
     cbc:	1c050513          	addi	a0,a0,448 # 11c0 <symbols.0+0x14c>
     cc0:	f99ff06f          	j	c58 <__neorv32_rte_debug_exc_handler+0x118>
     cc4:	00001537          	lui	a0,0x1
     cc8:	1dc50513          	addi	a0,a0,476 # 11dc <symbols.0+0x168>
     ccc:	f9dff06f          	j	c68 <__neorv32_rte_debug_exc_handler+0x128>
     cd0:	00001537          	lui	a0,0x1
     cd4:	1f050513          	addi	a0,a0,496 # 11f0 <symbols.0+0x17c>
     cd8:	f81ff06f          	j	c58 <__neorv32_rte_debug_exc_handler+0x118>
     cdc:	00001537          	lui	a0,0x1
     ce0:	21050513          	addi	a0,a0,528 # 1210 <symbols.0+0x19c>
     ce4:	f75ff06f          	j	c58 <__neorv32_rte_debug_exc_handler+0x118>
     ce8:	00001537          	lui	a0,0x1
     cec:	23050513          	addi	a0,a0,560 # 1230 <symbols.0+0x1bc>
     cf0:	f69ff06f          	j	c58 <__neorv32_rte_debug_exc_handler+0x118>
     cf4:	00001537          	lui	a0,0x1
     cf8:	24c50513          	addi	a0,a0,588 # 124c <symbols.0+0x1d8>
     cfc:	f5dff06f          	j	c58 <__neorv32_rte_debug_exc_handler+0x118>
     d00:	00001537          	lui	a0,0x1
     d04:	26450513          	addi	a0,a0,612 # 1264 <symbols.0+0x1f0>
     d08:	f51ff06f          	j	c58 <__neorv32_rte_debug_exc_handler+0x118>
     d0c:	00001537          	lui	a0,0x1
     d10:	2b850513          	addi	a0,a0,696 # 12b8 <symbols.0+0x244>
     d14:	f45ff06f          	j	c58 <__neorv32_rte_debug_exc_handler+0x118>
     d18:	00001537          	lui	a0,0x1
     d1c:	2c850513          	addi	a0,a0,712 # 12c8 <symbols.0+0x254>
     d20:	f39ff06f          	j	c58 <__neorv32_rte_debug_exc_handler+0x118>
     d24:	00c12083          	lw	ra,12(sp)
     d28:	00812403          	lw	s0,8(sp)
     d2c:	00412483          	lw	s1,4(sp)
     d30:	01010113          	addi	sp,sp,16
     d34:	00008067          	ret

00000d38 <neorv32_rte_exception_uninstall>:
     d38:	01f00793          	li	a5,31
     d3c:	02a7e463          	bltu	a5,a0,d64 <neorv32_rte_exception_uninstall+0x2c>
     d40:	800007b7          	lui	a5,0x80000
     d44:	00078793          	mv	a5,a5
     d48:	00251513          	slli	a0,a0,0x2
     d4c:	00a78533          	add	a0,a5,a0
     d50:	000017b7          	lui	a5,0x1
     d54:	b4078793          	addi	a5,a5,-1216 # b40 <__neorv32_rte_debug_exc_handler>
     d58:	00f52023          	sw	a5,0(a0)
     d5c:	00000513          	li	a0,0
     d60:	00008067          	ret
     d64:	00100513          	li	a0,1
     d68:	00008067          	ret

00000d6c <neorv32_rte_setup>:
     d6c:	ff010113          	addi	sp,sp,-16
     d70:	000017b7          	lui	a5,0x1
     d74:	00112623          	sw	ra,12(sp)
     d78:	00812423          	sw	s0,8(sp)
     d7c:	00912223          	sw	s1,4(sp)
     d80:	8bc78793          	addi	a5,a5,-1860 # 8bc <__neorv32_rte_core>
     d84:	30579073          	csrw	mtvec,a5
     d88:	00000793          	li	a5,0
     d8c:	30479073          	csrw	mie,a5
     d90:	34479073          	csrw	mip,a5
     d94:	f6002e23          	sw	zero,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
     d98:	00000413          	li	s0,0
     d9c:	01d00493          	li	s1,29
     da0:	00040513          	mv	a0,s0
     da4:	00140413          	addi	s0,s0,1
     da8:	0ff47413          	andi	s0,s0,255
     dac:	f8dff0ef          	jal	ra,d38 <neorv32_rte_exception_uninstall>
     db0:	fe9418e3          	bne	s0,s1,da0 <neorv32_rte_setup+0x34>
     db4:	00c12083          	lw	ra,12(sp)
     db8:	00812403          	lw	s0,8(sp)
     dbc:	00412483          	lw	s1,4(sp)
     dc0:	01010113          	addi	sp,sp,16
     dc4:	00008067          	ret

00000dc8 <neorv32_rte_check_isa>:
     dc8:	30102673          	csrr	a2,misa
     dcc:	400005b7          	lui	a1,0x40000
     dd0:	10058593          	addi	a1,a1,256 # 40000100 <__crt0_copy_data_src_begin+0x3fffed44>
     dd4:	00b677b3          	and	a5,a2,a1
     dd8:	04b78663          	beq	a5,a1,e24 <neorv32_rte_check_isa+0x5c>
     ddc:	00050663          	beqz	a0,de8 <neorv32_rte_check_isa+0x20>
     de0:	00100513          	li	a0,1
     de4:	00008067          	ret
     de8:	fe010113          	addi	sp,sp,-32
     dec:	00c12623          	sw	a2,12(sp)
     df0:	00112e23          	sw	ra,28(sp)
     df4:	f38ff0ef          	jal	ra,52c <neorv32_uart0_available>
     df8:	400007b7          	lui	a5,0x40000
     dfc:	00c12603          	lw	a2,12(sp)
     e00:	10078593          	addi	a1,a5,256 # 40000100 <__crt0_copy_data_src_begin+0x3fffed44>
     e04:	00050863          	beqz	a0,e14 <neorv32_rte_check_isa+0x4c>
     e08:	00001537          	lui	a0,0x1
     e0c:	32450513          	addi	a0,a0,804 # 1324 <symbols.0+0x2b0>
     e10:	849ff0ef          	jal	ra,658 <neorv32_uart0_printf>
     e14:	01c12083          	lw	ra,28(sp)
     e18:	00100513          	li	a0,1
     e1c:	02010113          	addi	sp,sp,32
     e20:	00008067          	ret
     e24:	00000513          	li	a0,0
     e28:	00008067          	ret

00000e2c <neorv32_gpio_available>:
     e2c:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     e30:	01055513          	srli	a0,a0,0x10
     e34:	00157513          	andi	a0,a0,1
     e38:	00008067          	ret

00000e3c <neorv32_gpio_pin_set>:
     e3c:	00100793          	li	a5,1
     e40:	01f00713          	li	a4,31
     e44:	00a797b3          	sll	a5,a5,a0
     e48:	00a74a63          	blt	a4,a0,e5c <neorv32_gpio_pin_set+0x20>
     e4c:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     e50:	00f767b3          	or	a5,a4,a5
     e54:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     e58:	00008067          	ret
     e5c:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     e60:	00f767b3          	or	a5,a4,a5
     e64:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     e68:	00008067          	ret

00000e6c <neorv32_gpio_pin_clr>:
     e6c:	00100793          	li	a5,1
     e70:	00a797b3          	sll	a5,a5,a0
     e74:	01f00713          	li	a4,31
     e78:	fff7c793          	not	a5,a5
     e7c:	00a74a63          	blt	a4,a0,e90 <neorv32_gpio_pin_clr+0x24>
     e80:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     e84:	00f777b3          	and	a5,a4,a5
     e88:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     e8c:	00008067          	ret
     e90:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     e94:	00f777b3          	and	a5,a4,a5
     e98:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     e9c:	00008067          	ret

00000ea0 <neorv32_gpio_pin_get>:
     ea0:	00050793          	mv	a5,a0
     ea4:	01f00713          	li	a4,31
     ea8:	00100513          	li	a0,1
     eac:	00f51533          	sll	a0,a0,a5
     eb0:	00f74863          	blt	a4,a5,ec0 <neorv32_gpio_pin_get+0x20>
     eb4:	fc002783          	lw	a5,-64(zero) # ffffffc0 <__ctr0_io_space_begin+0x1c0>
     eb8:	00a7f533          	and	a0,a5,a0
     ebc:	00008067          	ret
     ec0:	fc402783          	lw	a5,-60(zero) # ffffffc4 <__ctr0_io_space_begin+0x1c4>
     ec4:	ff5ff06f          	j	eb8 <neorv32_gpio_pin_get+0x18>

00000ec8 <__mulsi3>:
     ec8:	00050613          	mv	a2,a0
     ecc:	00000513          	li	a0,0
     ed0:	0015f693          	andi	a3,a1,1
     ed4:	00068463          	beqz	a3,edc <__mulsi3+0x14>
     ed8:	00c50533          	add	a0,a0,a2
     edc:	0015d593          	srli	a1,a1,0x1
     ee0:	00161613          	slli	a2,a2,0x1
     ee4:	fe0596e3          	bnez	a1,ed0 <__mulsi3+0x8>
     ee8:	00008067          	ret

00000eec <__muldi3>:
     eec:	00050313          	mv	t1,a0
     ef0:	ff010113          	addi	sp,sp,-16
     ef4:	00060513          	mv	a0,a2
     ef8:	00068893          	mv	a7,a3
     efc:	00112623          	sw	ra,12(sp)
     f00:	00030613          	mv	a2,t1
     f04:	00050693          	mv	a3,a0
     f08:	00000713          	li	a4,0
     f0c:	00000793          	li	a5,0
     f10:	00000813          	li	a6,0
     f14:	0016fe13          	andi	t3,a3,1
     f18:	00171e93          	slli	t4,a4,0x1
     f1c:	000e0c63          	beqz	t3,f34 <__muldi3+0x48>
     f20:	01060e33          	add	t3,a2,a6
     f24:	010e3833          	sltu	a6,t3,a6
     f28:	00e787b3          	add	a5,a5,a4
     f2c:	00f807b3          	add	a5,a6,a5
     f30:	000e0813          	mv	a6,t3
     f34:	01f65713          	srli	a4,a2,0x1f
     f38:	0016d693          	srli	a3,a3,0x1
     f3c:	00eee733          	or	a4,t4,a4
     f40:	00161613          	slli	a2,a2,0x1
     f44:	fc0698e3          	bnez	a3,f14 <__muldi3+0x28>
     f48:	00058663          	beqz	a1,f54 <__muldi3+0x68>
     f4c:	f7dff0ef          	jal	ra,ec8 <__mulsi3>
     f50:	00a787b3          	add	a5,a5,a0
     f54:	00088a63          	beqz	a7,f68 <__muldi3+0x7c>
     f58:	00030513          	mv	a0,t1
     f5c:	00088593          	mv	a1,a7
     f60:	f69ff0ef          	jal	ra,ec8 <__mulsi3>
     f64:	00f507b3          	add	a5,a0,a5
     f68:	00c12083          	lw	ra,12(sp)
     f6c:	00080513          	mv	a0,a6
     f70:	00078593          	mv	a1,a5
     f74:	01010113          	addi	sp,sp,16
     f78:	00008067          	ret

00000f7c <__divsi3>:
     f7c:	06054063          	bltz	a0,fdc <__umodsi3+0x10>
     f80:	0605c663          	bltz	a1,fec <__umodsi3+0x20>

00000f84 <__udivsi3>:
     f84:	00058613          	mv	a2,a1
     f88:	00050593          	mv	a1,a0
     f8c:	fff00513          	li	a0,-1
     f90:	02060c63          	beqz	a2,fc8 <__udivsi3+0x44>
     f94:	00100693          	li	a3,1
     f98:	00b67a63          	bgeu	a2,a1,fac <__udivsi3+0x28>
     f9c:	00c05863          	blez	a2,fac <__udivsi3+0x28>
     fa0:	00161613          	slli	a2,a2,0x1
     fa4:	00169693          	slli	a3,a3,0x1
     fa8:	feb66ae3          	bltu	a2,a1,f9c <__udivsi3+0x18>
     fac:	00000513          	li	a0,0
     fb0:	00c5e663          	bltu	a1,a2,fbc <__udivsi3+0x38>
     fb4:	40c585b3          	sub	a1,a1,a2
     fb8:	00d56533          	or	a0,a0,a3
     fbc:	0016d693          	srli	a3,a3,0x1
     fc0:	00165613          	srli	a2,a2,0x1
     fc4:	fe0696e3          	bnez	a3,fb0 <__udivsi3+0x2c>
     fc8:	00008067          	ret

00000fcc <__umodsi3>:
     fcc:	00008293          	mv	t0,ra
     fd0:	fb5ff0ef          	jal	ra,f84 <__udivsi3>
     fd4:	00058513          	mv	a0,a1
     fd8:	00028067          	jr	t0
     fdc:	40a00533          	neg	a0,a0
     fe0:	00b04863          	bgtz	a1,ff0 <__umodsi3+0x24>
     fe4:	40b005b3          	neg	a1,a1
     fe8:	f9dff06f          	j	f84 <__udivsi3>
     fec:	40b005b3          	neg	a1,a1
     ff0:	00008293          	mv	t0,ra
     ff4:	f91ff0ef          	jal	ra,f84 <__udivsi3>
     ff8:	40a00533          	neg	a0,a0
     ffc:	00028067          	jr	t0

00001000 <__modsi3>:
    1000:	00008293          	mv	t0,ra
    1004:	0005ca63          	bltz	a1,1018 <__modsi3+0x18>
    1008:	00054c63          	bltz	a0,1020 <__modsi3+0x20>
    100c:	f79ff0ef          	jal	ra,f84 <__udivsi3>
    1010:	00058513          	mv	a0,a1
    1014:	00028067          	jr	t0
    1018:	40b005b3          	neg	a1,a1
    101c:	fe0558e3          	bgez	a0,100c <__modsi3+0xc>
    1020:	40a00533          	neg	a0,a0
    1024:	f61ff0ef          	jal	ra,f84 <__udivsi3>
    1028:	40b00533          	neg	a0,a1
    102c:	00028067          	jr	t0
