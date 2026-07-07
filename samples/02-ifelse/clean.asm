
clean:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	48 83 ec 08          	sub    rsp,0x8
  401004:	48 8b 05 d5 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fd5]        # 403fe0 <__gmon_start__@Base>
  40100b:	48 85 c0             	test   rax,rax
  40100e:	74 02                	je     401012 <_init+0x12>
  401010:	ff d0                	call   rax
  401012:	48 83 c4 08          	add    rsp,0x8
  401016:	c3                   	ret

Disassembly of section .plt:

0000000000401020 <printf@plt-0x10>:
  401020:	ff 35 ca 2f 00 00    	push   QWORD PTR [rip+0x2fca]        # 403ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 cc 2f 00 00    	jmp    QWORD PTR [rip+0x2fcc]        # 403ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401030 <printf@plt>:
  401030:	ff 25 ca 2f 00 00    	jmp    QWORD PTR [rip+0x2fca]        # 404000 <printf@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	push   0x0
  40103b:	e9 e0 ff ff ff       	jmp    401020 <_init+0x20>

Disassembly of section .text:

0000000000401040 <_start>:
  401040:	31 ed                	xor    ebp,ebp
  401042:	49 89 d1             	mov    r9,rdx
  401045:	5e                   	pop    rsi
  401046:	48 89 e2             	mov    rdx,rsp
  401049:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  40104d:	50                   	push   rax
  40104e:	54                   	push   rsp
  40104f:	45 31 c0             	xor    r8d,r8d
  401052:	31 c9                	xor    ecx,ecx
  401054:	48 c7 c7 30 11 40 00 	mov    rdi,0x401130
  40105b:	ff 15 77 2f 00 00    	call   QWORD PTR [rip+0x2f77]        # 403fd8 <__libc_start_main@GLIBC_2.34>
  401061:	f4                   	hlt
  401062:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  401069:	00 00 00 
  40106c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401070 <_dl_relocate_static_pie>:
  401070:	c3                   	ret
  401071:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  401078:	00 00 00 
  40107b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401080 <deregister_tm_clones>:
  401080:	b8 18 40 40 00       	mov    eax,0x404018
  401085:	48 3d 18 40 40 00    	cmp    rax,0x404018
  40108b:	74 13                	je     4010a0 <deregister_tm_clones+0x20>
  40108d:	b8 00 00 00 00       	mov    eax,0x0
  401092:	48 85 c0             	test   rax,rax
  401095:	74 09                	je     4010a0 <deregister_tm_clones+0x20>
  401097:	bf 18 40 40 00       	mov    edi,0x404018
  40109c:	ff e0                	jmp    rax
  40109e:	66 90                	xchg   ax,ax
  4010a0:	c3                   	ret
  4010a1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4010a8:	00 00 00 00 
  4010ac:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004010b0 <register_tm_clones>:
  4010b0:	be 18 40 40 00       	mov    esi,0x404018
  4010b5:	48 81 ee 18 40 40 00 	sub    rsi,0x404018
  4010bc:	48 89 f0             	mov    rax,rsi
  4010bf:	48 c1 ee 3f          	shr    rsi,0x3f
  4010c3:	48 c1 f8 03          	sar    rax,0x3
  4010c7:	48 01 c6             	add    rsi,rax
  4010ca:	48 d1 fe             	sar    rsi,1
  4010cd:	74 11                	je     4010e0 <register_tm_clones+0x30>
  4010cf:	b8 00 00 00 00       	mov    eax,0x0
  4010d4:	48 85 c0             	test   rax,rax
  4010d7:	74 07                	je     4010e0 <register_tm_clones+0x30>
  4010d9:	bf 18 40 40 00       	mov    edi,0x404018
  4010de:	ff e0                	jmp    rax
  4010e0:	c3                   	ret
  4010e1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4010e8:	00 00 00 00 
  4010ec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004010f0 <__do_global_dtors_aux>:
  4010f0:	f3 0f 1e fa          	endbr64
  4010f4:	80 3d 1d 2f 00 00 00 	cmp    BYTE PTR [rip+0x2f1d],0x0        # 404018 <__TMC_END__>
  4010fb:	75 13                	jne    401110 <__do_global_dtors_aux+0x20>
  4010fd:	55                   	push   rbp
  4010fe:	48 89 e5             	mov    rbp,rsp
  401101:	e8 7a ff ff ff       	call   401080 <deregister_tm_clones>
  401106:	c6 05 0b 2f 00 00 01 	mov    BYTE PTR [rip+0x2f0b],0x1        # 404018 <__TMC_END__>
  40110d:	5d                   	pop    rbp
  40110e:	c3                   	ret
  40110f:	90                   	nop
  401110:	c3                   	ret
  401111:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  401118:	00 00 00 00 
  40111c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401120 <frame_dummy>:
  401120:	f3 0f 1e fa          	endbr64
  401124:	eb 8a                	jmp    4010b0 <register_tm_clones>
  401126:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  40112d:	00 00 00 

0000000000401130 <main>:
  401130:	55                   	push   rbp
  401131:	48 89 e5             	mov    rbp,rsp
  401134:	48 83 ec 10          	sub    rsp,0x10
  401138:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  40113f:	c7 45 f8 0a 00 00 00 	mov    DWORD PTR [rbp-0x8],0xa
  401146:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  401149:	83 f8 00             	cmp    eax,0x0
  40114c:	0f 8e 16 00 00 00    	jle    401168 <main+0x38>
  401152:	48 bf 04 20 40 00 00 	movabs rdi,0x402004
  401159:	00 00 00 
  40115c:	b0 00                	mov    al,0x0
  40115e:	e8 cd fe ff ff       	call   401030 <printf@plt>
  401163:	e9 38 00 00 00       	jmp    4011a0 <main+0x70>
  401168:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  40116b:	83 f8 00             	cmp    eax,0x0
  40116e:	0f 8d 16 00 00 00    	jge    40118a <main+0x5a>
  401174:	48 bf 0e 20 40 00 00 	movabs rdi,0x40200e
  40117b:	00 00 00 
  40117e:	b0 00                	mov    al,0x0
  401180:	e8 ab fe ff ff       	call   401030 <printf@plt>
  401185:	e9 11 00 00 00       	jmp    40119b <main+0x6b>
  40118a:	48 bf 18 20 40 00 00 	movabs rdi,0x402018
  401191:	00 00 00 
  401194:	b0 00                	mov    al,0x0
  401196:	e8 95 fe ff ff       	call   401030 <printf@plt>
  40119b:	e9 00 00 00 00       	jmp    4011a0 <main+0x70>
  4011a0:	31 c0                	xor    eax,eax
  4011a2:	48 83 c4 10          	add    rsp,0x10
  4011a6:	5d                   	pop    rbp
  4011a7:	c3                   	ret

Disassembly of section .fini:

00000000004011a8 <_fini>:
  4011a8:	48 83 ec 08          	sub    rsp,0x8
  4011ac:	48 83 c4 08          	add    rsp,0x8
  4011b0:	c3                   	ret
