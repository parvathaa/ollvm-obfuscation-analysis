
obf_fla:     file format elf64-x86-64


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
  401134:	48 83 ec 20          	sub    rsp,0x20
  401138:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [rbp-0x8],0x0
  40113f:	c7 45 f4 0a 00 00 00 	mov    DWORD PTR [rbp-0xc],0xa
  401146:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  401149:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  40114c:	c7 45 f0 69 80 2f 74 	mov    DWORD PTR [rbp-0x10],0x742f8069
  401153:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  401156:	89 45 ec             	mov    DWORD PTR [rbp-0x14],eax
  401159:	2d 38 6c d1 93       	sub    eax,0x93d16c38
  40115e:	0f 84 b4 00 00 00    	je     401218 <main+0xe8>
  401164:	e9 00 00 00 00       	jmp    401169 <main+0x39>
  401169:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  40116c:	2d cc 71 57 c0       	sub    eax,0xc05771cc
  401171:	0f 84 02 01 00 00    	je     401279 <main+0x149>
  401177:	e9 00 00 00 00       	jmp    40117c <main+0x4c>
  40117c:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  40117f:	2d 49 0f 91 fe       	sub    eax,0xfe910f49
  401184:	0f 84 71 00 00 00    	je     4011fb <main+0xcb>
  40118a:	e9 00 00 00 00       	jmp    40118f <main+0x5f>
  40118f:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  401192:	2d 0e 8d 48 11       	sub    eax,0x11488d0e
  401197:	0f 84 b3 00 00 00    	je     401250 <main+0x120>
  40119d:	e9 00 00 00 00       	jmp    4011a2 <main+0x72>
  4011a2:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  4011a5:	2d 63 0c 62 12       	sub    eax,0x12620c63
  4011aa:	0f 84 83 00 00 00    	je     401233 <main+0x103>
  4011b0:	e9 00 00 00 00       	jmp    4011b5 <main+0x85>
  4011b5:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  4011b8:	2d 49 a6 af 26       	sub    eax,0x26afa649
  4011bd:	0f 84 aa 00 00 00    	je     40126d <main+0x13d>
  4011c3:	e9 00 00 00 00       	jmp    4011c8 <main+0x98>
  4011c8:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  4011cb:	2d 69 80 2f 74       	sub    eax,0x742f8069
  4011d0:	0f 84 0a 00 00 00    	je     4011e0 <main+0xb0>
  4011d6:	e9 00 00 00 00       	jmp    4011db <main+0xab>
  4011db:	e9 a1 00 00 00       	jmp    401281 <main+0x151>
  4011e0:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
  4011e3:	b8 38 6c d1 93       	mov    eax,0x93d16c38
  4011e8:	b9 49 0f 91 fe       	mov    ecx,0xfe910f49
  4011ed:	83 fa 00             	cmp    edx,0x0
  4011f0:	0f 4f c1             	cmovg  eax,ecx
  4011f3:	89 45 f0             	mov    DWORD PTR [rbp-0x10],eax
  4011f6:	e9 86 00 00 00       	jmp    401281 <main+0x151>
  4011fb:	48 bf 04 20 40 00 00 	movabs rdi,0x402004
  401202:	00 00 00 
  401205:	b0 00                	mov    al,0x0
  401207:	e8 24 fe ff ff       	call   401030 <printf@plt>
  40120c:	c7 45 f0 cc 71 57 c0 	mov    DWORD PTR [rbp-0x10],0xc05771cc
  401213:	e9 69 00 00 00       	jmp    401281 <main+0x151>
  401218:	8b 55 f4             	mov    edx,DWORD PTR [rbp-0xc]
  40121b:	b8 0e 8d 48 11       	mov    eax,0x11488d0e
  401220:	b9 63 0c 62 12       	mov    ecx,0x12620c63
  401225:	83 fa 00             	cmp    edx,0x0
  401228:	0f 4c c1             	cmovl  eax,ecx
  40122b:	89 45 f0             	mov    DWORD PTR [rbp-0x10],eax
  40122e:	e9 4e 00 00 00       	jmp    401281 <main+0x151>
  401233:	48 bf 0e 20 40 00 00 	movabs rdi,0x40200e
  40123a:	00 00 00 
  40123d:	b0 00                	mov    al,0x0
  40123f:	e8 ec fd ff ff       	call   401030 <printf@plt>
  401244:	c7 45 f0 49 a6 af 26 	mov    DWORD PTR [rbp-0x10],0x26afa649
  40124b:	e9 31 00 00 00       	jmp    401281 <main+0x151>
  401250:	48 bf 18 20 40 00 00 	movabs rdi,0x402018
  401257:	00 00 00 
  40125a:	b0 00                	mov    al,0x0
  40125c:	e8 cf fd ff ff       	call   401030 <printf@plt>
  401261:	c7 45 f0 49 a6 af 26 	mov    DWORD PTR [rbp-0x10],0x26afa649
  401268:	e9 14 00 00 00       	jmp    401281 <main+0x151>
  40126d:	c7 45 f0 cc 71 57 c0 	mov    DWORD PTR [rbp-0x10],0xc05771cc
  401274:	e9 08 00 00 00       	jmp    401281 <main+0x151>
  401279:	31 c0                	xor    eax,eax
  40127b:	48 83 c4 20          	add    rsp,0x20
  40127f:	5d                   	pop    rbp
  401280:	c3                   	ret
  401281:	e9 cd fe ff ff       	jmp    401153 <main+0x23>

Disassembly of section .fini:

0000000000401288 <_fini>:
  401288:	48 83 ec 08          	sub    rsp,0x8
  40128c:	48 83 c4 08          	add    rsp,0x8
  401290:	c3                   	ret
