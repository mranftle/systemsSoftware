
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000400ad0 <_init>:
  400ad0:	48 83 ec 08          	sub    $0x8,%rsp
  400ad4:	48 8b 05 1d 35 20 00 	mov    0x20351d(%rip),%rax        # 603ff8 <_DYNAMIC+0x1d0>
  400adb:	48 85 c0             	test   %rax,%rax
  400ade:	74 05                	je     400ae5 <_init+0x15>
  400ae0:	e8 0b 01 00 00       	callq  400bf0 <__gmon_start__@plt>
  400ae5:	48 83 c4 08          	add    $0x8,%rsp
  400ae9:	c3                   	retq   

Disassembly of section .plt:

0000000000400af0 <getenv@plt-0x10>:
  400af0:	ff 35 12 35 20 00    	pushq  0x203512(%rip)        # 604008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400af6:	ff 25 14 35 20 00    	jmpq   *0x203514(%rip)        # 604010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400afc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400b00 <getenv@plt>:
  400b00:	ff 25 12 35 20 00    	jmpq   *0x203512(%rip)        # 604018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400b06:	68 00 00 00 00       	pushq  $0x0
  400b0b:	e9 e0 ff ff ff       	jmpq   400af0 <_init+0x20>

0000000000400b10 <strcasecmp@plt>:
  400b10:	ff 25 0a 35 20 00    	jmpq   *0x20350a(%rip)        # 604020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400b16:	68 01 00 00 00       	pushq  $0x1
  400b1b:	e9 d0 ff ff ff       	jmpq   400af0 <_init+0x20>

0000000000400b20 <__errno_location@plt>:
  400b20:	ff 25 02 35 20 00    	jmpq   *0x203502(%rip)        # 604028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400b26:	68 02 00 00 00       	pushq  $0x2
  400b2b:	e9 c0 ff ff ff       	jmpq   400af0 <_init+0x20>

0000000000400b30 <strcpy@plt>:
  400b30:	ff 25 fa 34 20 00    	jmpq   *0x2034fa(%rip)        # 604030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400b36:	68 03 00 00 00       	pushq  $0x3
  400b3b:	e9 b0 ff ff ff       	jmpq   400af0 <_init+0x20>

0000000000400b40 <puts@plt>:
  400b40:	ff 25 f2 34 20 00    	jmpq   *0x2034f2(%rip)        # 604038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400b46:	68 04 00 00 00       	pushq  $0x4
  400b4b:	e9 a0 ff ff ff       	jmpq   400af0 <_init+0x20>

0000000000400b50 <write@plt>:
  400b50:	ff 25 ea 34 20 00    	jmpq   *0x2034ea(%rip)        # 604040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400b56:	68 05 00 00 00       	pushq  $0x5
  400b5b:	e9 90 ff ff ff       	jmpq   400af0 <_init+0x20>

0000000000400b60 <printf@plt>:
  400b60:	ff 25 e2 34 20 00    	jmpq   *0x2034e2(%rip)        # 604048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400b66:	68 06 00 00 00       	pushq  $0x6
  400b6b:	e9 80 ff ff ff       	jmpq   400af0 <_init+0x20>

0000000000400b70 <alarm@plt>:
  400b70:	ff 25 da 34 20 00    	jmpq   *0x2034da(%rip)        # 604050 <_GLOBAL_OFFSET_TABLE_+0x50>
  400b76:	68 07 00 00 00       	pushq  $0x7
  400b7b:	e9 70 ff ff ff       	jmpq   400af0 <_init+0x20>

0000000000400b80 <close@plt>:
  400b80:	ff 25 d2 34 20 00    	jmpq   *0x2034d2(%rip)        # 604058 <_GLOBAL_OFFSET_TABLE_+0x58>
  400b86:	68 08 00 00 00       	pushq  $0x8
  400b8b:	e9 60 ff ff ff       	jmpq   400af0 <_init+0x20>

0000000000400b90 <read@plt>:
  400b90:	ff 25 ca 34 20 00    	jmpq   *0x2034ca(%rip)        # 604060 <_GLOBAL_OFFSET_TABLE_+0x60>
  400b96:	68 09 00 00 00       	pushq  $0x9
  400b9b:	e9 50 ff ff ff       	jmpq   400af0 <_init+0x20>

0000000000400ba0 <__libc_start_main@plt>:
  400ba0:	ff 25 c2 34 20 00    	jmpq   *0x2034c2(%rip)        # 604068 <_GLOBAL_OFFSET_TABLE_+0x68>
  400ba6:	68 0a 00 00 00       	pushq  $0xa
  400bab:	e9 40 ff ff ff       	jmpq   400af0 <_init+0x20>

0000000000400bb0 <fgets@plt>:
  400bb0:	ff 25 ba 34 20 00    	jmpq   *0x2034ba(%rip)        # 604070 <_GLOBAL_OFFSET_TABLE_+0x70>
  400bb6:	68 0b 00 00 00       	pushq  $0xb
  400bbb:	e9 30 ff ff ff       	jmpq   400af0 <_init+0x20>

0000000000400bc0 <signal@plt>:
  400bc0:	ff 25 b2 34 20 00    	jmpq   *0x2034b2(%rip)        # 604078 <_GLOBAL_OFFSET_TABLE_+0x78>
  400bc6:	68 0c 00 00 00       	pushq  $0xc
  400bcb:	e9 20 ff ff ff       	jmpq   400af0 <_init+0x20>

0000000000400bd0 <gethostbyname@plt>:
  400bd0:	ff 25 aa 34 20 00    	jmpq   *0x2034aa(%rip)        # 604080 <_GLOBAL_OFFSET_TABLE_+0x80>
  400bd6:	68 0d 00 00 00       	pushq  $0xd
  400bdb:	e9 10 ff ff ff       	jmpq   400af0 <_init+0x20>

0000000000400be0 <fprintf@plt>:
  400be0:	ff 25 a2 34 20 00    	jmpq   *0x2034a2(%rip)        # 604088 <_GLOBAL_OFFSET_TABLE_+0x88>
  400be6:	68 0e 00 00 00       	pushq  $0xe
  400beb:	e9 00 ff ff ff       	jmpq   400af0 <_init+0x20>

0000000000400bf0 <__gmon_start__@plt>:
  400bf0:	ff 25 9a 34 20 00    	jmpq   *0x20349a(%rip)        # 604090 <_GLOBAL_OFFSET_TABLE_+0x90>
  400bf6:	68 0f 00 00 00       	pushq  $0xf
  400bfb:	e9 f0 fe ff ff       	jmpq   400af0 <_init+0x20>

0000000000400c00 <strtol@plt>:
  400c00:	ff 25 92 34 20 00    	jmpq   *0x203492(%rip)        # 604098 <_GLOBAL_OFFSET_TABLE_+0x98>
  400c06:	68 10 00 00 00       	pushq  $0x10
  400c0b:	e9 e0 fe ff ff       	jmpq   400af0 <_init+0x20>

0000000000400c10 <memcpy@plt>:
  400c10:	ff 25 8a 34 20 00    	jmpq   *0x20348a(%rip)        # 6040a0 <_GLOBAL_OFFSET_TABLE_+0xa0>
  400c16:	68 11 00 00 00       	pushq  $0x11
  400c1b:	e9 d0 fe ff ff       	jmpq   400af0 <_init+0x20>

0000000000400c20 <fflush@plt>:
  400c20:	ff 25 82 34 20 00    	jmpq   *0x203482(%rip)        # 6040a8 <_GLOBAL_OFFSET_TABLE_+0xa8>
  400c26:	68 12 00 00 00       	pushq  $0x12
  400c2b:	e9 c0 fe ff ff       	jmpq   400af0 <_init+0x20>

0000000000400c30 <__isoc99_sscanf@plt>:
  400c30:	ff 25 7a 34 20 00    	jmpq   *0x20347a(%rip)        # 6040b0 <_GLOBAL_OFFSET_TABLE_+0xb0>
  400c36:	68 13 00 00 00       	pushq  $0x13
  400c3b:	e9 b0 fe ff ff       	jmpq   400af0 <_init+0x20>

0000000000400c40 <bcopy@plt>:
  400c40:	ff 25 72 34 20 00    	jmpq   *0x203472(%rip)        # 6040b8 <_GLOBAL_OFFSET_TABLE_+0xb8>
  400c46:	68 14 00 00 00       	pushq  $0x14
  400c4b:	e9 a0 fe ff ff       	jmpq   400af0 <_init+0x20>

0000000000400c50 <fopen@plt>:
  400c50:	ff 25 6a 34 20 00    	jmpq   *0x20346a(%rip)        # 6040c0 <_GLOBAL_OFFSET_TABLE_+0xc0>
  400c56:	68 15 00 00 00       	pushq  $0x15
  400c5b:	e9 90 fe ff ff       	jmpq   400af0 <_init+0x20>

0000000000400c60 <gethostname@plt>:
  400c60:	ff 25 62 34 20 00    	jmpq   *0x203462(%rip)        # 6040c8 <_GLOBAL_OFFSET_TABLE_+0xc8>
  400c66:	68 16 00 00 00       	pushq  $0x16
  400c6b:	e9 80 fe ff ff       	jmpq   400af0 <_init+0x20>

0000000000400c70 <sprintf@plt>:
  400c70:	ff 25 5a 34 20 00    	jmpq   *0x20345a(%rip)        # 6040d0 <_GLOBAL_OFFSET_TABLE_+0xd0>
  400c76:	68 17 00 00 00       	pushq  $0x17
  400c7b:	e9 70 fe ff ff       	jmpq   400af0 <_init+0x20>

0000000000400c80 <exit@plt>:
  400c80:	ff 25 52 34 20 00    	jmpq   *0x203452(%rip)        # 6040d8 <_GLOBAL_OFFSET_TABLE_+0xd8>
  400c86:	68 18 00 00 00       	pushq  $0x18
  400c8b:	e9 60 fe ff ff       	jmpq   400af0 <_init+0x20>

0000000000400c90 <connect@plt>:
  400c90:	ff 25 4a 34 20 00    	jmpq   *0x20344a(%rip)        # 6040e0 <_GLOBAL_OFFSET_TABLE_+0xe0>
  400c96:	68 19 00 00 00       	pushq  $0x19
  400c9b:	e9 50 fe ff ff       	jmpq   400af0 <_init+0x20>

0000000000400ca0 <sleep@plt>:
  400ca0:	ff 25 42 34 20 00    	jmpq   *0x203442(%rip)        # 6040e8 <_GLOBAL_OFFSET_TABLE_+0xe8>
  400ca6:	68 1a 00 00 00       	pushq  $0x1a
  400cab:	e9 40 fe ff ff       	jmpq   400af0 <_init+0x20>

0000000000400cb0 <__ctype_b_loc@plt>:
  400cb0:	ff 25 3a 34 20 00    	jmpq   *0x20343a(%rip)        # 6040f0 <_GLOBAL_OFFSET_TABLE_+0xf0>
  400cb6:	68 1b 00 00 00       	pushq  $0x1b
  400cbb:	e9 30 fe ff ff       	jmpq   400af0 <_init+0x20>

0000000000400cc0 <socket@plt>:
  400cc0:	ff 25 32 34 20 00    	jmpq   *0x203432(%rip)        # 6040f8 <_GLOBAL_OFFSET_TABLE_+0xf8>
  400cc6:	68 1c 00 00 00       	pushq  $0x1c
  400ccb:	e9 20 fe ff ff       	jmpq   400af0 <_init+0x20>

Disassembly of section .text:

0000000000400cd0 <_start>:
  400cd0:	31 ed                	xor    %ebp,%ebp
  400cd2:	49 89 d1             	mov    %rdx,%r9
  400cd5:	5e                   	pop    %rsi
  400cd6:	48 89 e2             	mov    %rsp,%rdx
  400cd9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400cdd:	50                   	push   %rax
  400cde:	54                   	push   %rsp
  400cdf:	49 c7 c0 c0 23 40 00 	mov    $0x4023c0,%r8
  400ce6:	48 c7 c1 50 23 40 00 	mov    $0x402350,%rcx
  400ced:	48 c7 c7 c0 0d 40 00 	mov    $0x400dc0,%rdi
  400cf4:	e8 a7 fe ff ff       	callq  400ba0 <__libc_start_main@plt>
  400cf9:	f4                   	hlt    
  400cfa:	66 90                	xchg   %ax,%ax
  400cfc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400d00 <deregister_tm_clones>:
  400d00:	b8 87 4b 60 00       	mov    $0x604b87,%eax
  400d05:	55                   	push   %rbp
  400d06:	48 2d 80 4b 60 00    	sub    $0x604b80,%rax
  400d0c:	48 83 f8 0e          	cmp    $0xe,%rax
  400d10:	48 89 e5             	mov    %rsp,%rbp
  400d13:	77 02                	ja     400d17 <deregister_tm_clones+0x17>
  400d15:	5d                   	pop    %rbp
  400d16:	c3                   	retq   
  400d17:	b8 00 00 00 00       	mov    $0x0,%eax
  400d1c:	48 85 c0             	test   %rax,%rax
  400d1f:	74 f4                	je     400d15 <deregister_tm_clones+0x15>
  400d21:	5d                   	pop    %rbp
  400d22:	bf 80 4b 60 00       	mov    $0x604b80,%edi
  400d27:	ff e0                	jmpq   *%rax
  400d29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400d30 <register_tm_clones>:
  400d30:	b8 80 4b 60 00       	mov    $0x604b80,%eax
  400d35:	55                   	push   %rbp
  400d36:	48 2d 80 4b 60 00    	sub    $0x604b80,%rax
  400d3c:	48 c1 f8 03          	sar    $0x3,%rax
  400d40:	48 89 e5             	mov    %rsp,%rbp
  400d43:	48 89 c2             	mov    %rax,%rdx
  400d46:	48 c1 ea 3f          	shr    $0x3f,%rdx
  400d4a:	48 01 d0             	add    %rdx,%rax
  400d4d:	48 d1 f8             	sar    %rax
  400d50:	75 02                	jne    400d54 <register_tm_clones+0x24>
  400d52:	5d                   	pop    %rbp
  400d53:	c3                   	retq   
  400d54:	ba 00 00 00 00       	mov    $0x0,%edx
  400d59:	48 85 d2             	test   %rdx,%rdx
  400d5c:	74 f4                	je     400d52 <register_tm_clones+0x22>
  400d5e:	5d                   	pop    %rbp
  400d5f:	48 89 c6             	mov    %rax,%rsi
  400d62:	bf 80 4b 60 00       	mov    $0x604b80,%edi
  400d67:	ff e2                	jmpq   *%rdx
  400d69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400d70 <__do_global_dtors_aux>:
  400d70:	80 3d 21 3e 20 00 00 	cmpb   $0x0,0x203e21(%rip)        # 604b98 <completed.6364>
  400d77:	75 11                	jne    400d8a <__do_global_dtors_aux+0x1a>
  400d79:	55                   	push   %rbp
  400d7a:	48 89 e5             	mov    %rsp,%rbp
  400d7d:	e8 7e ff ff ff       	callq  400d00 <deregister_tm_clones>
  400d82:	5d                   	pop    %rbp
  400d83:	c6 05 0e 3e 20 00 01 	movb   $0x1,0x203e0e(%rip)        # 604b98 <completed.6364>
  400d8a:	f3 c3                	repz retq 
  400d8c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400d90 <frame_dummy>:
  400d90:	48 83 3d 88 30 20 00 	cmpq   $0x0,0x203088(%rip)        # 603e20 <__JCR_END__>
  400d97:	00 
  400d98:	74 1e                	je     400db8 <frame_dummy+0x28>
  400d9a:	b8 00 00 00 00       	mov    $0x0,%eax
  400d9f:	48 85 c0             	test   %rax,%rax
  400da2:	74 14                	je     400db8 <frame_dummy+0x28>
  400da4:	55                   	push   %rbp
  400da5:	bf 20 3e 60 00       	mov    $0x603e20,%edi
  400daa:	48 89 e5             	mov    %rsp,%rbp
  400dad:	ff d0                	callq  *%rax
  400daf:	5d                   	pop    %rbp
  400db0:	e9 7b ff ff ff       	jmpq   400d30 <register_tm_clones>
  400db5:	0f 1f 00             	nopl   (%rax)
  400db8:	e9 73 ff ff ff       	jmpq   400d30 <register_tm_clones>
  400dbd:	0f 1f 00             	nopl   (%rax)

0000000000400dc0 <main>:
  400dc0:	53                   	push   %rbx
  400dc1:	83 ff 01             	cmp    $0x1,%edi
  400dc4:	75 10                	jne    400dd6 <main+0x16>
  400dc6:	48 8b 05 bb 3d 20 00 	mov    0x203dbb(%rip),%rax        # 604b88 <stdin@@GLIBC_2.2.5>
  400dcd:	48 89 05 cc 3d 20 00 	mov    %rax,0x203dcc(%rip)        # 604ba0 <infile>
  400dd4:	eb 59                	jmp    400e2f <main+0x6f>
  400dd6:	48 89 f3             	mov    %rsi,%rbx
  400dd9:	83 ff 02             	cmp    $0x2,%edi
  400ddc:	75 35                	jne    400e13 <main+0x53>
  400dde:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
  400de2:	be f0 23 40 00       	mov    $0x4023f0,%esi
  400de7:	e8 64 fe ff ff       	callq  400c50 <fopen@plt>
  400dec:	48 89 05 ad 3d 20 00 	mov    %rax,0x203dad(%rip)        # 604ba0 <infile>
  400df3:	48 85 c0             	test   %rax,%rax
  400df6:	75 37                	jne    400e2f <main+0x6f>
  400df8:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  400dfc:	48 8b 33             	mov    (%rbx),%rsi
  400dff:	bf f2 23 40 00       	mov    $0x4023f2,%edi
  400e04:	e8 57 fd ff ff       	callq  400b60 <printf@plt>
  400e09:	bf 08 00 00 00       	mov    $0x8,%edi
  400e0e:	e8 6d fe ff ff       	callq  400c80 <exit@plt>
  400e13:	48 8b 36             	mov    (%rsi),%rsi
  400e16:	bf 0f 24 40 00       	mov    $0x40240f,%edi
  400e1b:	b8 00 00 00 00       	mov    $0x0,%eax
  400e20:	e8 3b fd ff ff       	callq  400b60 <printf@plt>
  400e25:	bf 08 00 00 00       	mov    $0x8,%edi
  400e2a:	e8 51 fe ff ff       	callq  400c80 <exit@plt>
  400e2f:	e8 d3 05 00 00       	callq  401407 <initialize_bomb>
  400e34:	bf 78 24 40 00       	mov    $0x402478,%edi
  400e39:	e8 02 fd ff ff       	callq  400b40 <puts@plt>
  400e3e:	bf b8 24 40 00       	mov    $0x4024b8,%edi
  400e43:	e8 f8 fc ff ff       	callq  400b40 <puts@plt>
  400e48:	e8 2a 08 00 00       	callq  401677 <read_line>
  400e4d:	48 89 c7             	mov    %rax,%rdi
  400e50:	e8 9b 00 00 00       	callq  400ef0 <phase_1>
  400e55:	e8 43 09 00 00       	callq  40179d <phase_defused>
  400e5a:	bf e8 24 40 00       	mov    $0x4024e8,%edi
  400e5f:	e8 dc fc ff ff       	callq  400b40 <puts@plt>
  400e64:	e8 0e 08 00 00       	callq  401677 <read_line>
  400e69:	48 89 c7             	mov    %rax,%rdi
  400e6c:	e8 9b 00 00 00       	callq  400f0c <phase_2>
  400e71:	e8 27 09 00 00       	callq  40179d <phase_defused>
  400e76:	bf 29 24 40 00       	mov    $0x402429,%edi
  400e7b:	e8 c0 fc ff ff       	callq  400b40 <puts@plt>
  400e80:	e8 f2 07 00 00       	callq  401677 <read_line>
  400e85:	48 89 c7             	mov    %rax,%rdi
  400e88:	e8 ce 00 00 00       	callq  400f5b <phase_3>
  400e8d:	e8 0b 09 00 00       	callq  40179d <phase_defused>
  400e92:	bf 47 24 40 00       	mov    $0x402447,%edi
  400e97:	e8 a4 fc ff ff       	callq  400b40 <puts@plt>
  400e9c:	e8 d6 07 00 00       	callq  401677 <read_line>
  400ea1:	48 89 c7             	mov    %rax,%rdi
  400ea4:	e8 32 02 00 00       	callq  4010db <phase_4>
  400ea9:	e8 ef 08 00 00       	callq  40179d <phase_defused>
  400eae:	bf 18 25 40 00       	mov    $0x402518,%edi
  400eb3:	e8 88 fc ff ff       	callq  400b40 <puts@plt>
  400eb8:	e8 ba 07 00 00       	callq  401677 <read_line>
  400ebd:	48 89 c7             	mov    %rax,%rdi
  400ec0:	e8 6d 02 00 00       	callq  401132 <phase_5>
  400ec5:	e8 d3 08 00 00       	callq  40179d <phase_defused>
  400eca:	bf 56 24 40 00       	mov    $0x402456,%edi
  400ecf:	e8 6c fc ff ff       	callq  400b40 <puts@plt>
  400ed4:	e8 9e 07 00 00       	callq  401677 <read_line>
  400ed9:	48 89 c7             	mov    %rax,%rdi
  400edc:	e8 a2 02 00 00       	callq  401183 <phase_6>
  400ee1:	e8 b7 08 00 00       	callq  40179d <phase_defused>
  400ee6:	b8 00 00 00 00       	mov    $0x0,%eax
  400eeb:	5b                   	pop    %rbx
  400eec:	c3                   	retq   
  400eed:	0f 1f 00             	nopl   (%rax)

0000000000400ef0 <phase_1>:
  400ef0:	48 83 ec 08          	sub    $0x8,%rsp
  400ef4:	be 40 25 40 00       	mov    $0x402540,%esi
  400ef9:	e8 a0 04 00 00       	callq  40139e <strings_not_equal>
  400efe:	85 c0                	test   %eax,%eax
  400f00:	74 05                	je     400f07 <phase_1+0x17>
  400f02:	e8 f8 06 00 00       	callq  4015ff <explode_bomb>
  400f07:	48 83 c4 08          	add    $0x8,%rsp
  400f0b:	c3                   	retq   

0000000000400f0c <phase_2>:
  400f0c:	55                   	push   %rbp
  400f0d:	53                   	push   %rbx
  400f0e:	48 83 ec 28          	sub    $0x28,%rsp
  400f12:	48 89 e6             	mov    %rsp,%rsi
  400f15:	e8 1b 07 00 00       	callq  401635 <read_six_numbers>
  400f1a:	83 3c 24 00          	cmpl   $0x0,(%rsp)
  400f1e:	75 07                	jne    400f27 <phase_2+0x1b>
  400f20:	83 7c 24 04 01       	cmpl   $0x1,0x4(%rsp)
  400f25:	74 21                	je     400f48 <phase_2+0x3c>
  400f27:	e8 d3 06 00 00       	callq  4015ff <explode_bomb>
  400f2c:	eb 1a                	jmp    400f48 <phase_2+0x3c>
  400f2e:	8b 43 f8             	mov    -0x8(%rbx),%eax
  400f31:	03 43 fc             	add    -0x4(%rbx),%eax
  400f34:	39 03                	cmp    %eax,(%rbx)
  400f36:	74 05                	je     400f3d <phase_2+0x31>
  400f38:	e8 c2 06 00 00       	callq  4015ff <explode_bomb>
  400f3d:	48 83 c3 04          	add    $0x4,%rbx
  400f41:	48 39 eb             	cmp    %rbp,%rbx
  400f44:	75 e8                	jne    400f2e <phase_2+0x22>
  400f46:	eb 0c                	jmp    400f54 <phase_2+0x48>
  400f48:	48 8d 5c 24 08       	lea    0x8(%rsp),%rbx
  400f4d:	48 8d 6c 24 18       	lea    0x18(%rsp),%rbp
  400f52:	eb da                	jmp    400f2e <phase_2+0x22>
  400f54:	48 83 c4 28          	add    $0x28,%rsp
  400f58:	5b                   	pop    %rbx
  400f59:	5d                   	pop    %rbp
  400f5a:	c3                   	retq   

0000000000400f5b <phase_3>:
  400f5b:	48 83 ec 18          	sub    $0x18,%rsp
  400f5f:	4c 8d 44 24 08       	lea    0x8(%rsp),%r8
  400f64:	48 8d 4c 24 07       	lea    0x7(%rsp),%rcx
  400f69:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
  400f6e:	be 8e 25 40 00       	mov    $0x40258e,%esi
  400f73:	b8 00 00 00 00       	mov    $0x0,%eax
  400f78:	e8 b3 fc ff ff       	callq  400c30 <__isoc99_sscanf@plt>
  400f7d:	83 f8 02             	cmp    $0x2,%eax
  400f80:	7f 05                	jg     400f87 <phase_3+0x2c>
  400f82:	e8 78 06 00 00       	callq  4015ff <explode_bomb>
  400f87:	83 7c 24 0c 07       	cmpl   $0x7,0xc(%rsp)
  400f8c:	0f 87 fc 00 00 00    	ja     40108e <phase_3+0x133>
  400f92:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400f96:	ff 24 c5 a0 25 40 00 	jmpq   *0x4025a0(,%rax,8)
  400f9d:	b8 70 00 00 00       	mov    $0x70,%eax
  400fa2:	81 7c 24 08 76 01 00 	cmpl   $0x176,0x8(%rsp)
  400fa9:	00 
  400faa:	0f 84 e8 00 00 00    	je     401098 <phase_3+0x13d>
  400fb0:	e8 4a 06 00 00       	callq  4015ff <explode_bomb>
  400fb5:	b8 70 00 00 00       	mov    $0x70,%eax
  400fba:	e9 d9 00 00 00       	jmpq   401098 <phase_3+0x13d>
  400fbf:	b8 78 00 00 00       	mov    $0x78,%eax
  400fc4:	81 7c 24 08 5f 01 00 	cmpl   $0x15f,0x8(%rsp)
  400fcb:	00 
  400fcc:	0f 84 c6 00 00 00    	je     401098 <phase_3+0x13d>
  400fd2:	e8 28 06 00 00       	callq  4015ff <explode_bomb>
  400fd7:	b8 78 00 00 00       	mov    $0x78,%eax
  400fdc:	e9 b7 00 00 00       	jmpq   401098 <phase_3+0x13d>
  400fe1:	b8 64 00 00 00       	mov    $0x64,%eax
  400fe6:	81 7c 24 08 57 02 00 	cmpl   $0x257,0x8(%rsp)
  400fed:	00 
  400fee:	0f 84 a4 00 00 00    	je     401098 <phase_3+0x13d>
  400ff4:	e8 06 06 00 00       	callq  4015ff <explode_bomb>
  400ff9:	b8 64 00 00 00       	mov    $0x64,%eax
  400ffe:	e9 95 00 00 00       	jmpq   401098 <phase_3+0x13d>
  401003:	b8 64 00 00 00       	mov    $0x64,%eax
  401008:	81 7c 24 08 e9 02 00 	cmpl   $0x2e9,0x8(%rsp)
  40100f:	00 
  401010:	0f 84 82 00 00 00    	je     401098 <phase_3+0x13d>
  401016:	e8 e4 05 00 00       	callq  4015ff <explode_bomb>
  40101b:	b8 64 00 00 00       	mov    $0x64,%eax
  401020:	eb 76                	jmp    401098 <phase_3+0x13d>
  401022:	b8 66 00 00 00       	mov    $0x66,%eax
  401027:	81 7c 24 08 4a 01 00 	cmpl   $0x14a,0x8(%rsp)
  40102e:	00 
  40102f:	74 67                	je     401098 <phase_3+0x13d>
  401031:	e8 c9 05 00 00       	callq  4015ff <explode_bomb>
  401036:	b8 66 00 00 00       	mov    $0x66,%eax
  40103b:	eb 5b                	jmp    401098 <phase_3+0x13d>
  40103d:	b8 74 00 00 00       	mov    $0x74,%eax
  401042:	81 7c 24 08 20 03 00 	cmpl   $0x320,0x8(%rsp)
  401049:	00 
  40104a:	74 4c                	je     401098 <phase_3+0x13d>
  40104c:	e8 ae 05 00 00       	callq  4015ff <explode_bomb>
  401051:	b8 74 00 00 00       	mov    $0x74,%eax
  401056:	eb 40                	jmp    401098 <phase_3+0x13d>
  401058:	b8 65 00 00 00       	mov    $0x65,%eax
  40105d:	81 7c 24 08 b5 02 00 	cmpl   $0x2b5,0x8(%rsp)
  401064:	00 
  401065:	74 31                	je     401098 <phase_3+0x13d>
  401067:	e8 93 05 00 00       	callq  4015ff <explode_bomb>
  40106c:	b8 65 00 00 00       	mov    $0x65,%eax
  401071:	eb 25                	jmp    401098 <phase_3+0x13d>
  401073:	b8 6f 00 00 00       	mov    $0x6f,%eax
  401078:	81 7c 24 08 9d 02 00 	cmpl   $0x29d,0x8(%rsp)
  40107f:	00 
  401080:	74 16                	je     401098 <phase_3+0x13d>
  401082:	e8 78 05 00 00       	callq  4015ff <explode_bomb>
  401087:	b8 6f 00 00 00       	mov    $0x6f,%eax
  40108c:	eb 0a                	jmp    401098 <phase_3+0x13d>
  40108e:	e8 6c 05 00 00       	callq  4015ff <explode_bomb>
  401093:	b8 66 00 00 00       	mov    $0x66,%eax
  401098:	3a 44 24 07          	cmp    0x7(%rsp),%al
  40109c:	74 05                	je     4010a3 <phase_3+0x148>
  40109e:	e8 5c 05 00 00       	callq  4015ff <explode_bomb>
  4010a3:	48 83 c4 18          	add    $0x18,%rsp
  4010a7:	c3                   	retq   

00000000004010a8 <func4>:
  4010a8:	53                   	push   %rbx
  4010a9:	89 d0                	mov    %edx,%eax
  4010ab:	29 f0                	sub    %esi,%eax
  4010ad:	89 c3                	mov    %eax,%ebx
  4010af:	c1 eb 1f             	shr    $0x1f,%ebx
  4010b2:	01 d8                	add    %ebx,%eax
  4010b4:	d1 f8                	sar    %eax
  4010b6:	8d 1c 30             	lea    (%rax,%rsi,1),%ebx
  4010b9:	39 fb                	cmp    %edi,%ebx
  4010bb:	7e 0c                	jle    4010c9 <func4+0x21>
  4010bd:	8d 53 ff             	lea    -0x1(%rbx),%edx
  4010c0:	e8 e3 ff ff ff       	callq  4010a8 <func4>
  4010c5:	01 d8                	add    %ebx,%eax
  4010c7:	eb 10                	jmp    4010d9 <func4+0x31>
  4010c9:	89 d8                	mov    %ebx,%eax
  4010cb:	39 fb                	cmp    %edi,%ebx
  4010cd:	7d 0a                	jge    4010d9 <func4+0x31>
  4010cf:	8d 73 01             	lea    0x1(%rbx),%esi
  4010d2:	e8 d1 ff ff ff       	callq  4010a8 <func4>
  4010d7:	01 d8                	add    %ebx,%eax
  4010d9:	5b                   	pop    %rbx
  4010da:	c3                   	retq   

00000000004010db <phase_4>:
  4010db:	48 83 ec 18          	sub    $0x18,%rsp
  4010df:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
  4010e4:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
  4010e9:	be 6d 28 40 00       	mov    $0x40286d,%esi
  4010ee:	b8 00 00 00 00       	mov    $0x0,%eax
  4010f3:	e8 38 fb ff ff       	callq  400c30 <__isoc99_sscanf@plt>
  4010f8:	83 f8 02             	cmp    $0x2,%eax
  4010fb:	75 07                	jne    401104 <phase_4+0x29>
  4010fd:	83 7c 24 0c 0e       	cmpl   $0xe,0xc(%rsp)
  401102:	76 05                	jbe    401109 <phase_4+0x2e>
  401104:	e8 f6 04 00 00       	callq  4015ff <explode_bomb>
  401109:	ba 0e 00 00 00       	mov    $0xe,%edx
  40110e:	be 00 00 00 00       	mov    $0x0,%esi
  401113:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
  401117:	e8 8c ff ff ff       	callq  4010a8 <func4>
  40111c:	83 f8 12             	cmp    $0x12,%eax
  40111f:	75 07                	jne    401128 <phase_4+0x4d>
  401121:	83 7c 24 08 12       	cmpl   $0x12,0x8(%rsp)
  401126:	74 05                	je     40112d <phase_4+0x52>
  401128:	e8 d2 04 00 00       	callq  4015ff <explode_bomb>
  40112d:	48 83 c4 18          	add    $0x18,%rsp
  401131:	c3                   	retq   

0000000000401132 <phase_5>:
  401132:	53                   	push   %rbx
  401133:	48 83 ec 10          	sub    $0x10,%rsp
  401137:	48 89 fb             	mov    %rdi,%rbx
  40113a:	e8 42 02 00 00       	callq  401381 <string_length>
  40113f:	83 f8 06             	cmp    $0x6,%eax
  401142:	74 05                	je     401149 <phase_5+0x17>
  401144:	e8 b6 04 00 00       	callq  4015ff <explode_bomb>
  401149:	b8 00 00 00 00       	mov    $0x0,%eax
  40114e:	ba 00 00 00 00       	mov    $0x0,%edx
  401153:	0f b6 34 03          	movzbl (%rbx,%rax,1),%esi
  401157:	40 88 34 24          	mov    %sil,(%rsp)
  40115b:	48 8b 0c 24          	mov    (%rsp),%rcx
  40115f:	83 e1 0f             	and    $0xf,%ecx
  401162:	03 14 8d e0 25 40 00 	add    0x4025e0(,%rcx,4),%edx
  401169:	48 83 c0 01          	add    $0x1,%rax
  40116d:	48 83 f8 06          	cmp    $0x6,%rax
  401171:	75 e0                	jne    401153 <phase_5+0x21>
  401173:	83 fa 27             	cmp    $0x27,%edx
  401176:	74 05                	je     40117d <phase_5+0x4b>
  401178:	e8 82 04 00 00       	callq  4015ff <explode_bomb>
  40117d:	48 83 c4 10          	add    $0x10,%rsp
  401181:	5b                   	pop    %rbx
  401182:	c3                   	retq   

0000000000401183 <phase_6>:
  401183:	41 55                	push   %r13
  401185:	41 54                	push   %r12
  401187:	55                   	push   %rbp
  401188:	53                   	push   %rbx
  401189:	48 83 ec 58          	sub    $0x58,%rsp
  40118d:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
  401192:	e8 9e 04 00 00       	callq  401635 <read_six_numbers>
  401197:	4c 8d 6c 24 30       	lea    0x30(%rsp),%r13
  40119c:	41 bc 00 00 00 00    	mov    $0x0,%r12d
  4011a2:	4c 89 ed             	mov    %r13,%rbp
  4011a5:	41 8b 45 00          	mov    0x0(%r13),%eax
  4011a9:	83 e8 01             	sub    $0x1,%eax
  4011ac:	83 f8 05             	cmp    $0x5,%eax
  4011af:	76 05                	jbe    4011b6 <phase_6+0x33>
  4011b1:	e8 49 04 00 00       	callq  4015ff <explode_bomb>
  4011b6:	41 83 c4 01          	add    $0x1,%r12d
  4011ba:	41 83 fc 06          	cmp    $0x6,%r12d
  4011be:	75 07                	jne    4011c7 <phase_6+0x44>
  4011c0:	be 00 00 00 00       	mov    $0x0,%esi
  4011c5:	eb 42                	jmp    401209 <phase_6+0x86>
  4011c7:	44 89 e3             	mov    %r12d,%ebx
  4011ca:	48 63 c3             	movslq %ebx,%rax
  4011cd:	8b 44 84 30          	mov    0x30(%rsp,%rax,4),%eax
  4011d1:	39 45 00             	cmp    %eax,0x0(%rbp)
  4011d4:	75 05                	jne    4011db <phase_6+0x58>
  4011d6:	e8 24 04 00 00       	callq  4015ff <explode_bomb>
  4011db:	83 c3 01             	add    $0x1,%ebx
  4011de:	83 fb 05             	cmp    $0x5,%ebx
  4011e1:	7e e7                	jle    4011ca <phase_6+0x47>
  4011e3:	49 83 c5 04          	add    $0x4,%r13
  4011e7:	eb b9                	jmp    4011a2 <phase_6+0x1f>
  4011e9:	48 8b 52 08          	mov    0x8(%rdx),%rdx
  4011ed:	83 c0 01             	add    $0x1,%eax
  4011f0:	39 c8                	cmp    %ecx,%eax
  4011f2:	75 f5                	jne    4011e9 <phase_6+0x66>
  4011f4:	eb 05                	jmp    4011fb <phase_6+0x78>
  4011f6:	ba 00 43 60 00       	mov    $0x604300,%edx
  4011fb:	48 89 14 74          	mov    %rdx,(%rsp,%rsi,2)
  4011ff:	48 83 c6 04          	add    $0x4,%rsi
  401203:	48 83 fe 18          	cmp    $0x18,%rsi
  401207:	74 15                	je     40121e <phase_6+0x9b>
  401209:	8b 4c 34 30          	mov    0x30(%rsp,%rsi,1),%ecx
  40120d:	83 f9 01             	cmp    $0x1,%ecx
  401210:	7e e4                	jle    4011f6 <phase_6+0x73>
  401212:	b8 01 00 00 00       	mov    $0x1,%eax
  401217:	ba 00 43 60 00       	mov    $0x604300,%edx
  40121c:	eb cb                	jmp    4011e9 <phase_6+0x66>
  40121e:	48 8b 1c 24          	mov    (%rsp),%rbx
  401222:	48 8d 44 24 08       	lea    0x8(%rsp),%rax
  401227:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
  40122c:	48 89 d9             	mov    %rbx,%rcx
  40122f:	48 8b 10             	mov    (%rax),%rdx
  401232:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  401236:	48 83 c0 08          	add    $0x8,%rax
  40123a:	48 39 f0             	cmp    %rsi,%rax
  40123d:	74 05                	je     401244 <phase_6+0xc1>
  40123f:	48 89 d1             	mov    %rdx,%rcx
  401242:	eb eb                	jmp    40122f <phase_6+0xac>
  401244:	48 c7 42 08 00 00 00 	movq   $0x0,0x8(%rdx)
  40124b:	00 
  40124c:	bd 05 00 00 00       	mov    $0x5,%ebp
  401251:	48 8b 43 08          	mov    0x8(%rbx),%rax
  401255:	8b 00                	mov    (%rax),%eax
  401257:	39 03                	cmp    %eax,(%rbx)
  401259:	7d 05                	jge    401260 <phase_6+0xdd>
  40125b:	e8 9f 03 00 00       	callq  4015ff <explode_bomb>
  401260:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
  401264:	83 ed 01             	sub    $0x1,%ebp
  401267:	75 e8                	jne    401251 <phase_6+0xce>
  401269:	48 83 c4 58          	add    $0x58,%rsp
  40126d:	5b                   	pop    %rbx
  40126e:	5d                   	pop    %rbp
  40126f:	41 5c                	pop    %r12
  401271:	41 5d                	pop    %r13
  401273:	c3                   	retq   

0000000000401274 <fun7>:
  401274:	48 83 ec 08          	sub    $0x8,%rsp
  401278:	48 85 ff             	test   %rdi,%rdi
  40127b:	74 2b                	je     4012a8 <fun7+0x34>
  40127d:	8b 17                	mov    (%rdi),%edx
  40127f:	39 f2                	cmp    %esi,%edx
  401281:	7e 0d                	jle    401290 <fun7+0x1c>
  401283:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
  401287:	e8 e8 ff ff ff       	callq  401274 <fun7>
  40128c:	01 c0                	add    %eax,%eax
  40128e:	eb 1d                	jmp    4012ad <fun7+0x39>
  401290:	b8 00 00 00 00       	mov    $0x0,%eax
  401295:	39 f2                	cmp    %esi,%edx
  401297:	74 14                	je     4012ad <fun7+0x39>
  401299:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
  40129d:	e8 d2 ff ff ff       	callq  401274 <fun7>
  4012a2:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
  4012a6:	eb 05                	jmp    4012ad <fun7+0x39>
  4012a8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4012ad:	48 83 c4 08          	add    $0x8,%rsp
  4012b1:	c3                   	retq   

00000000004012b2 <secret_phase>:
  4012b2:	53                   	push   %rbx
  4012b3:	e8 bf 03 00 00       	callq  401677 <read_line>
  4012b8:	ba 0a 00 00 00       	mov    $0xa,%edx
  4012bd:	be 00 00 00 00       	mov    $0x0,%esi
  4012c2:	48 89 c7             	mov    %rax,%rdi
  4012c5:	e8 36 f9 ff ff       	callq  400c00 <strtol@plt>
  4012ca:	48 89 c3             	mov    %rax,%rbx
  4012cd:	8d 40 ff             	lea    -0x1(%rax),%eax
  4012d0:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  4012d5:	76 05                	jbe    4012dc <secret_phase+0x2a>
  4012d7:	e8 23 03 00 00       	callq  4015ff <explode_bomb>
  4012dc:	89 de                	mov    %ebx,%esi
  4012de:	bf 20 41 60 00       	mov    $0x604120,%edi
  4012e3:	e8 8c ff ff ff       	callq  401274 <fun7>
  4012e8:	83 f8 02             	cmp    $0x2,%eax
  4012eb:	74 05                	je     4012f2 <secret_phase+0x40>
  4012ed:	e8 0d 03 00 00       	callq  4015ff <explode_bomb>
  4012f2:	bf 68 25 40 00       	mov    $0x402568,%edi
  4012f7:	e8 44 f8 ff ff       	callq  400b40 <puts@plt>
  4012fc:	e8 9c 04 00 00       	callq  40179d <phase_defused>
  401301:	5b                   	pop    %rbx
  401302:	c3                   	retq   
  401303:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40130a:	00 00 00 
  40130d:	0f 1f 00             	nopl   (%rax)

0000000000401310 <sig_handler>:
  401310:	48 83 ec 08          	sub    $0x8,%rsp
  401314:	bf 20 26 40 00       	mov    $0x402620,%edi
  401319:	e8 22 f8 ff ff       	callq  400b40 <puts@plt>
  40131e:	bf 03 00 00 00       	mov    $0x3,%edi
  401323:	e8 78 f9 ff ff       	callq  400ca0 <sleep@plt>
  401328:	bf e9 27 40 00       	mov    $0x4027e9,%edi
  40132d:	b8 00 00 00 00       	mov    $0x0,%eax
  401332:	e8 29 f8 ff ff       	callq  400b60 <printf@plt>
  401337:	48 8b 3d 42 38 20 00 	mov    0x203842(%rip),%rdi        # 604b80 <__TMC_END__>
  40133e:	e8 dd f8 ff ff       	callq  400c20 <fflush@plt>
  401343:	bf 01 00 00 00       	mov    $0x1,%edi
  401348:	e8 53 f9 ff ff       	callq  400ca0 <sleep@plt>
  40134d:	bf f1 27 40 00       	mov    $0x4027f1,%edi
  401352:	e8 e9 f7 ff ff       	callq  400b40 <puts@plt>
  401357:	bf 10 00 00 00       	mov    $0x10,%edi
  40135c:	e8 1f f9 ff ff       	callq  400c80 <exit@plt>

0000000000401361 <invalid_phase>:
  401361:	48 83 ec 08          	sub    $0x8,%rsp
  401365:	48 89 fe             	mov    %rdi,%rsi
  401368:	bf f9 27 40 00       	mov    $0x4027f9,%edi
  40136d:	b8 00 00 00 00       	mov    $0x0,%eax
  401372:	e8 e9 f7 ff ff       	callq  400b60 <printf@plt>
  401377:	bf 08 00 00 00       	mov    $0x8,%edi
  40137c:	e8 ff f8 ff ff       	callq  400c80 <exit@plt>

0000000000401381 <string_length>:
  401381:	80 3f 00             	cmpb   $0x0,(%rdi)
  401384:	74 12                	je     401398 <string_length+0x17>
  401386:	48 89 fa             	mov    %rdi,%rdx
  401389:	48 83 c2 01          	add    $0x1,%rdx
  40138d:	89 d0                	mov    %edx,%eax
  40138f:	29 f8                	sub    %edi,%eax
  401391:	80 3a 00             	cmpb   $0x0,(%rdx)
  401394:	75 f3                	jne    401389 <string_length+0x8>
  401396:	f3 c3                	repz retq 
  401398:	b8 00 00 00 00       	mov    $0x0,%eax
  40139d:	c3                   	retq   

000000000040139e <strings_not_equal>:
  40139e:	41 54                	push   %r12
  4013a0:	55                   	push   %rbp
  4013a1:	53                   	push   %rbx
  4013a2:	48 89 fb             	mov    %rdi,%rbx
  4013a5:	48 89 f5             	mov    %rsi,%rbp
  4013a8:	e8 d4 ff ff ff       	callq  401381 <string_length>
  4013ad:	41 89 c4             	mov    %eax,%r12d
  4013b0:	48 89 ef             	mov    %rbp,%rdi
  4013b3:	e8 c9 ff ff ff       	callq  401381 <string_length>
  4013b8:	ba 01 00 00 00       	mov    $0x1,%edx
  4013bd:	41 39 c4             	cmp    %eax,%r12d
  4013c0:	75 3e                	jne    401400 <strings_not_equal+0x62>
  4013c2:	0f b6 03             	movzbl (%rbx),%eax
  4013c5:	84 c0                	test   %al,%al
  4013c7:	74 24                	je     4013ed <strings_not_equal+0x4f>
  4013c9:	3a 45 00             	cmp    0x0(%rbp),%al
  4013cc:	74 09                	je     4013d7 <strings_not_equal+0x39>
  4013ce:	66 90                	xchg   %ax,%ax
  4013d0:	eb 22                	jmp    4013f4 <strings_not_equal+0x56>
  4013d2:	3a 45 00             	cmp    0x0(%rbp),%al
  4013d5:	75 24                	jne    4013fb <strings_not_equal+0x5d>
  4013d7:	48 83 c3 01          	add    $0x1,%rbx
  4013db:	48 83 c5 01          	add    $0x1,%rbp
  4013df:	0f b6 03             	movzbl (%rbx),%eax
  4013e2:	84 c0                	test   %al,%al
  4013e4:	75 ec                	jne    4013d2 <strings_not_equal+0x34>
  4013e6:	ba 00 00 00 00       	mov    $0x0,%edx
  4013eb:	eb 13                	jmp    401400 <strings_not_equal+0x62>
  4013ed:	ba 00 00 00 00       	mov    $0x0,%edx
  4013f2:	eb 0c                	jmp    401400 <strings_not_equal+0x62>
  4013f4:	ba 01 00 00 00       	mov    $0x1,%edx
  4013f9:	eb 05                	jmp    401400 <strings_not_equal+0x62>
  4013fb:	ba 01 00 00 00       	mov    $0x1,%edx
  401400:	89 d0                	mov    %edx,%eax
  401402:	5b                   	pop    %rbx
  401403:	5d                   	pop    %rbp
  401404:	41 5c                	pop    %r12
  401406:	c3                   	retq   

0000000000401407 <initialize_bomb>:
  401407:	53                   	push   %rbx
  401408:	48 81 ec 40 20 00 00 	sub    $0x2040,%rsp
  40140f:	be 10 13 40 00       	mov    $0x401310,%esi
  401414:	bf 02 00 00 00       	mov    $0x2,%edi
  401419:	e8 a2 f7 ff ff       	callq  400bc0 <signal@plt>
  40141e:	be 40 00 00 00       	mov    $0x40,%esi
  401423:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
  40142a:	00 
  40142b:	e8 30 f8 ff ff       	callq  400c60 <gethostname@plt>
  401430:	85 c0                	test   %eax,%eax
  401432:	75 13                	jne    401447 <initialize_bomb+0x40>
  401434:	48 8b 3d 45 33 20 00 	mov    0x203345(%rip),%rdi        # 604780 <host_table>
  40143b:	bb 88 47 60 00       	mov    $0x604788,%ebx
  401440:	48 85 ff             	test   %rdi,%rdi
  401443:	75 16                	jne    40145b <initialize_bomb+0x54>
  401445:	eb 50                	jmp    401497 <initialize_bomb+0x90>
  401447:	bf 58 26 40 00       	mov    $0x402658,%edi
  40144c:	e8 ef f6 ff ff       	callq  400b40 <puts@plt>
  401451:	bf 08 00 00 00       	mov    $0x8,%edi
  401456:	e8 25 f8 ff ff       	callq  400c80 <exit@plt>
  40145b:	48 8d b4 24 00 20 00 	lea    0x2000(%rsp),%rsi
  401462:	00 
  401463:	e8 a8 f6 ff ff       	callq  400b10 <strcasecmp@plt>
  401468:	85 c0                	test   %eax,%eax
  40146a:	74 3f                	je     4014ab <initialize_bomb+0xa4>
  40146c:	48 83 c3 08          	add    $0x8,%rbx
  401470:	48 8b 7b f8          	mov    -0x8(%rbx),%rdi
  401474:	48 85 ff             	test   %rdi,%rdi
  401477:	75 e2                	jne    40145b <initialize_bomb+0x54>
  401479:	eb 1c                	jmp    401497 <initialize_bomb+0x90>
  40147b:	48 89 e6             	mov    %rsp,%rsi
  40147e:	bf 0a 28 40 00       	mov    $0x40280a,%edi
  401483:	b8 00 00 00 00       	mov    $0x0,%eax
  401488:	e8 d3 f6 ff ff       	callq  400b60 <printf@plt>
  40148d:	bf 08 00 00 00       	mov    $0x8,%edi
  401492:	e8 e9 f7 ff ff       	callq  400c80 <exit@plt>
  401497:	bf 90 26 40 00       	mov    $0x402690,%edi
  40149c:	e8 9f f6 ff ff       	callq  400b40 <puts@plt>
  4014a1:	bf 08 00 00 00       	mov    $0x8,%edi
  4014a6:	e8 d5 f7 ff ff       	callq  400c80 <exit@plt>
  4014ab:	48 89 e7             	mov    %rsp,%rdi
  4014ae:	e8 87 0c 00 00       	callq  40213a <init_driver>
  4014b3:	85 c0                	test   %eax,%eax
  4014b5:	78 c4                	js     40147b <initialize_bomb+0x74>
  4014b7:	48 81 c4 40 20 00 00 	add    $0x2040,%rsp
  4014be:	5b                   	pop    %rbx
  4014bf:	c3                   	retq   

00000000004014c0 <initialize_bomb_solve>:
  4014c0:	f3 c3                	repz retq 

00000000004014c2 <blank_line>:
  4014c2:	55                   	push   %rbp
  4014c3:	53                   	push   %rbx
  4014c4:	48 83 ec 08          	sub    $0x8,%rsp
  4014c8:	48 89 fb             	mov    %rdi,%rbx
  4014cb:	eb 17                	jmp    4014e4 <blank_line+0x22>
  4014cd:	e8 de f7 ff ff       	callq  400cb0 <__ctype_b_loc@plt>
  4014d2:	48 83 c3 01          	add    $0x1,%rbx
  4014d6:	48 0f be ed          	movsbq %bpl,%rbp
  4014da:	48 8b 00             	mov    (%rax),%rax
  4014dd:	f6 44 68 01 20       	testb  $0x20,0x1(%rax,%rbp,2)
  4014e2:	74 0f                	je     4014f3 <blank_line+0x31>
  4014e4:	0f b6 2b             	movzbl (%rbx),%ebp
  4014e7:	40 84 ed             	test   %bpl,%bpl
  4014ea:	75 e1                	jne    4014cd <blank_line+0xb>
  4014ec:	b8 01 00 00 00       	mov    $0x1,%eax
  4014f1:	eb 05                	jmp    4014f8 <blank_line+0x36>
  4014f3:	b8 00 00 00 00       	mov    $0x0,%eax
  4014f8:	48 83 c4 08          	add    $0x8,%rsp
  4014fc:	5b                   	pop    %rbx
  4014fd:	5d                   	pop    %rbp
  4014fe:	c3                   	retq   

00000000004014ff <skip>:
  4014ff:	53                   	push   %rbx
  401500:	48 63 05 95 36 20 00 	movslq 0x203695(%rip),%rax        # 604b9c <num_input_strings>
  401507:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
  40150b:	48 c1 e7 04          	shl    $0x4,%rdi
  40150f:	48 81 c7 c0 4b 60 00 	add    $0x604bc0,%rdi
  401516:	48 8b 15 83 36 20 00 	mov    0x203683(%rip),%rdx        # 604ba0 <infile>
  40151d:	be 50 00 00 00       	mov    $0x50,%esi
  401522:	e8 89 f6 ff ff       	callq  400bb0 <fgets@plt>
  401527:	48 89 c3             	mov    %rax,%rbx
  40152a:	48 85 c0             	test   %rax,%rax
  40152d:	74 0c                	je     40153b <skip+0x3c>
  40152f:	48 89 c7             	mov    %rax,%rdi
  401532:	e8 8b ff ff ff       	callq  4014c2 <blank_line>
  401537:	85 c0                	test   %eax,%eax
  401539:	75 c5                	jne    401500 <skip+0x1>
  40153b:	48 89 d8             	mov    %rbx,%rax
  40153e:	5b                   	pop    %rbx
  40153f:	c3                   	retq   

0000000000401540 <send_msg>:
  401540:	48 81 ec 08 40 00 00 	sub    $0x4008,%rsp
  401547:	89 fe                	mov    %edi,%esi
  401549:	44 8b 05 4c 36 20 00 	mov    0x20364c(%rip),%r8d        # 604b9c <num_input_strings>
  401550:	41 8d 40 ff          	lea    -0x1(%r8),%eax
  401554:	48 98                	cltq   
  401556:	4c 8d 0c 80          	lea    (%rax,%rax,4),%r9
  40155a:	49 c1 e1 04          	shl    $0x4,%r9
  40155e:	49 81 c1 c0 4b 60 00 	add    $0x604bc0,%r9
  401565:	4c 89 cf             	mov    %r9,%rdi
  401568:	b8 00 00 00 00       	mov    $0x0,%eax
  40156d:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401574:	f2 ae                	repnz scas %es:(%rdi),%al
  401576:	48 f7 d1             	not    %rcx
  401579:	48 83 c1 63          	add    $0x63,%rcx
  40157d:	48 81 f9 00 20 00 00 	cmp    $0x2000,%rcx
  401584:	76 14                	jbe    40159a <send_msg+0x5a>
  401586:	bf c8 26 40 00       	mov    $0x4026c8,%edi
  40158b:	e8 d0 f5 ff ff       	callq  400b60 <printf@plt>
  401590:	bf 08 00 00 00       	mov    $0x8,%edi
  401595:	e8 e6 f6 ff ff       	callq  400c80 <exit@plt>
  40159a:	85 f6                	test   %esi,%esi
  40159c:	b8 24 28 40 00       	mov    $0x402824,%eax
  4015a1:	b9 2c 28 40 00       	mov    $0x40282c,%ecx
  4015a6:	48 0f 45 c8          	cmovne %rax,%rcx
  4015aa:	8b 15 b0 31 20 00    	mov    0x2031b0(%rip),%edx        # 604760 <bomb_id>
  4015b0:	be 35 28 40 00       	mov    $0x402835,%esi
  4015b5:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
  4015bc:	00 
  4015bd:	b8 00 00 00 00       	mov    $0x0,%eax
  4015c2:	e8 a9 f6 ff ff       	callq  400c70 <sprintf@plt>
  4015c7:	48 89 e1             	mov    %rsp,%rcx
  4015ca:	ba 00 00 00 00       	mov    $0x0,%edx
  4015cf:	48 8d b4 24 00 20 00 	lea    0x2000(%rsp),%rsi
  4015d6:	00 
  4015d7:	bf 60 43 60 00       	mov    $0x604360,%edi
  4015dc:	e8 f7 0c 00 00       	callq  4022d8 <driver_post>
  4015e1:	85 c0                	test   %eax,%eax
  4015e3:	79 12                	jns    4015f7 <send_msg+0xb7>
  4015e5:	48 89 e7             	mov    %rsp,%rdi
  4015e8:	e8 53 f5 ff ff       	callq  400b40 <puts@plt>
  4015ed:	bf 00 00 00 00       	mov    $0x0,%edi
  4015f2:	e8 89 f6 ff ff       	callq  400c80 <exit@plt>
  4015f7:	48 81 c4 08 40 00 00 	add    $0x4008,%rsp
  4015fe:	c3                   	retq   

00000000004015ff <explode_bomb>:
  4015ff:	48 83 ec 08          	sub    $0x8,%rsp
  401603:	bf 41 28 40 00       	mov    $0x402841,%edi
  401608:	e8 33 f5 ff ff       	callq  400b40 <puts@plt>
  40160d:	bf 4a 28 40 00       	mov    $0x40284a,%edi
  401612:	e8 29 f5 ff ff       	callq  400b40 <puts@plt>
  401617:	bf 00 00 00 00       	mov    $0x0,%edi
  40161c:	e8 1f ff ff ff       	callq  401540 <send_msg>
  401621:	bf f0 26 40 00       	mov    $0x4026f0,%edi
  401626:	e8 15 f5 ff ff       	callq  400b40 <puts@plt>
  40162b:	bf 08 00 00 00       	mov    $0x8,%edi
  401630:	e8 4b f6 ff ff       	callq  400c80 <exit@plt>

0000000000401635 <read_six_numbers>:
  401635:	48 83 ec 18          	sub    $0x18,%rsp
  401639:	48 89 f2             	mov    %rsi,%rdx
  40163c:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
  401640:	48 8d 46 14          	lea    0x14(%rsi),%rax
  401644:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  401649:	48 8d 46 10          	lea    0x10(%rsi),%rax
  40164d:	48 89 04 24          	mov    %rax,(%rsp)
  401651:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
  401655:	4c 8d 46 08          	lea    0x8(%rsi),%r8
  401659:	be 61 28 40 00       	mov    $0x402861,%esi
  40165e:	b8 00 00 00 00       	mov    $0x0,%eax
  401663:	e8 c8 f5 ff ff       	callq  400c30 <__isoc99_sscanf@plt>
  401668:	83 f8 05             	cmp    $0x5,%eax
  40166b:	7f 05                	jg     401672 <read_six_numbers+0x3d>
  40166d:	e8 8d ff ff ff       	callq  4015ff <explode_bomb>
  401672:	48 83 c4 18          	add    $0x18,%rsp
  401676:	c3                   	retq   

0000000000401677 <read_line>:
  401677:	48 83 ec 08          	sub    $0x8,%rsp
  40167b:	b8 00 00 00 00       	mov    $0x0,%eax
  401680:	e8 7a fe ff ff       	callq  4014ff <skip>
  401685:	48 85 c0             	test   %rax,%rax
  401688:	75 6e                	jne    4016f8 <read_line+0x81>
  40168a:	48 8b 05 f7 34 20 00 	mov    0x2034f7(%rip),%rax        # 604b88 <stdin@@GLIBC_2.2.5>
  401691:	48 39 05 08 35 20 00 	cmp    %rax,0x203508(%rip)        # 604ba0 <infile>
  401698:	75 14                	jne    4016ae <read_line+0x37>
  40169a:	bf 73 28 40 00       	mov    $0x402873,%edi
  40169f:	e8 9c f4 ff ff       	callq  400b40 <puts@plt>
  4016a4:	bf 08 00 00 00       	mov    $0x8,%edi
  4016a9:	e8 d2 f5 ff ff       	callq  400c80 <exit@plt>
  4016ae:	bf 91 28 40 00       	mov    $0x402891,%edi
  4016b3:	e8 48 f4 ff ff       	callq  400b00 <getenv@plt>
  4016b8:	48 85 c0             	test   %rax,%rax
  4016bb:	74 0a                	je     4016c7 <read_line+0x50>
  4016bd:	bf 00 00 00 00       	mov    $0x0,%edi
  4016c2:	e8 b9 f5 ff ff       	callq  400c80 <exit@plt>
  4016c7:	48 8b 05 ba 34 20 00 	mov    0x2034ba(%rip),%rax        # 604b88 <stdin@@GLIBC_2.2.5>
  4016ce:	48 89 05 cb 34 20 00 	mov    %rax,0x2034cb(%rip)        # 604ba0 <infile>
  4016d5:	b8 00 00 00 00       	mov    $0x0,%eax
  4016da:	e8 20 fe ff ff       	callq  4014ff <skip>
  4016df:	48 85 c0             	test   %rax,%rax
  4016e2:	75 14                	jne    4016f8 <read_line+0x81>
  4016e4:	bf 73 28 40 00       	mov    $0x402873,%edi
  4016e9:	e8 52 f4 ff ff       	callq  400b40 <puts@plt>
  4016ee:	bf 00 00 00 00       	mov    $0x0,%edi
  4016f3:	e8 88 f5 ff ff       	callq  400c80 <exit@plt>
  4016f8:	8b 15 9e 34 20 00    	mov    0x20349e(%rip),%edx        # 604b9c <num_input_strings>
  4016fe:	48 63 c2             	movslq %edx,%rax
  401701:	48 8d 34 80          	lea    (%rax,%rax,4),%rsi
  401705:	48 c1 e6 04          	shl    $0x4,%rsi
  401709:	48 81 c6 c0 4b 60 00 	add    $0x604bc0,%rsi
  401710:	48 89 f7             	mov    %rsi,%rdi
  401713:	b8 00 00 00 00       	mov    $0x0,%eax
  401718:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40171f:	f2 ae                	repnz scas %es:(%rdi),%al
  401721:	48 f7 d1             	not    %rcx
  401724:	48 83 e9 01          	sub    $0x1,%rcx
  401728:	83 f9 4e             	cmp    $0x4e,%ecx
  40172b:	7e 46                	jle    401773 <read_line+0xfc>
  40172d:	bf 9c 28 40 00       	mov    $0x40289c,%edi
  401732:	e8 09 f4 ff ff       	callq  400b40 <puts@plt>
  401737:	8b 05 5f 34 20 00    	mov    0x20345f(%rip),%eax        # 604b9c <num_input_strings>
  40173d:	8d 50 01             	lea    0x1(%rax),%edx
  401740:	89 15 56 34 20 00    	mov    %edx,0x203456(%rip)        # 604b9c <num_input_strings>
  401746:	48 98                	cltq   
  401748:	48 6b c0 50          	imul   $0x50,%rax,%rax
  40174c:	48 bf 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rdi
  401753:	75 6e 63 
  401756:	48 89 b8 c0 4b 60 00 	mov    %rdi,0x604bc0(%rax)
  40175d:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
  401764:	2a 2a 00 
  401767:	48 89 b8 c8 4b 60 00 	mov    %rdi,0x604bc8(%rax)
  40176e:	e8 8c fe ff ff       	callq  4015ff <explode_bomb>
  401773:	83 e9 01             	sub    $0x1,%ecx
  401776:	48 63 c9             	movslq %ecx,%rcx
  401779:	48 63 c2             	movslq %edx,%rax
  40177c:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401780:	48 c1 e0 04          	shl    $0x4,%rax
  401784:	c6 84 01 c0 4b 60 00 	movb   $0x0,0x604bc0(%rcx,%rax,1)
  40178b:	00 
  40178c:	83 c2 01             	add    $0x1,%edx
  40178f:	89 15 07 34 20 00    	mov    %edx,0x203407(%rip)        # 604b9c <num_input_strings>
  401795:	48 89 f0             	mov    %rsi,%rax
  401798:	48 83 c4 08          	add    $0x8,%rsp
  40179c:	c3                   	retq   

000000000040179d <phase_defused>:
  40179d:	48 83 ec 68          	sub    $0x68,%rsp
  4017a1:	bf 01 00 00 00       	mov    $0x1,%edi
  4017a6:	e8 95 fd ff ff       	callq  401540 <send_msg>
  4017ab:	83 3d ea 33 20 00 06 	cmpl   $0x6,0x2033ea(%rip)        # 604b9c <num_input_strings>
  4017b2:	75 6d                	jne    401821 <phase_defused+0x84>
  4017b4:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
  4017b9:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
  4017be:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
  4017c3:	be b7 28 40 00       	mov    $0x4028b7,%esi
  4017c8:	bf b0 4c 60 00       	mov    $0x604cb0,%edi
  4017cd:	b8 00 00 00 00       	mov    $0x0,%eax
  4017d2:	e8 59 f4 ff ff       	callq  400c30 <__isoc99_sscanf@plt>
  4017d7:	83 f8 03             	cmp    $0x3,%eax
  4017da:	75 31                	jne    40180d <phase_defused+0x70>
  4017dc:	be c0 28 40 00       	mov    $0x4028c0,%esi
  4017e1:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  4017e6:	e8 b3 fb ff ff       	callq  40139e <strings_not_equal>
  4017eb:	85 c0                	test   %eax,%eax
  4017ed:	75 1e                	jne    40180d <phase_defused+0x70>
  4017ef:	bf 18 27 40 00       	mov    $0x402718,%edi
  4017f4:	e8 47 f3 ff ff       	callq  400b40 <puts@plt>
  4017f9:	bf 40 27 40 00       	mov    $0x402740,%edi
  4017fe:	e8 3d f3 ff ff       	callq  400b40 <puts@plt>
  401803:	b8 00 00 00 00       	mov    $0x0,%eax
  401808:	e8 a5 fa ff ff       	callq  4012b2 <secret_phase>
  40180d:	bf 78 27 40 00       	mov    $0x402778,%edi
  401812:	e8 29 f3 ff ff       	callq  400b40 <puts@plt>
  401817:	bf a8 27 40 00       	mov    $0x4027a8,%edi
  40181c:	e8 1f f3 ff ff       	callq  400b40 <puts@plt>
  401821:	48 83 c4 68          	add    $0x68,%rsp
  401825:	c3                   	retq   
  401826:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40182d:	00 00 00 

0000000000401830 <sigalrm_handler>:
  401830:	48 83 ec 08          	sub    $0x8,%rsp
  401834:	ba 00 00 00 00       	mov    $0x0,%edx
  401839:	be b0 2b 40 00       	mov    $0x402bb0,%esi
  40183e:	48 8b 3d 4b 33 20 00 	mov    0x20334b(%rip),%rdi        # 604b90 <stderr@@GLIBC_2.2.5>
  401845:	b8 00 00 00 00       	mov    $0x0,%eax
  40184a:	e8 91 f3 ff ff       	callq  400be0 <fprintf@plt>
  40184f:	bf 01 00 00 00       	mov    $0x1,%edi
  401854:	e8 27 f4 ff ff       	callq  400c80 <exit@plt>

0000000000401859 <rio_readlineb>:
  401859:	41 57                	push   %r15
  40185b:	41 56                	push   %r14
  40185d:	41 55                	push   %r13
  40185f:	41 54                	push   %r12
  401861:	55                   	push   %rbp
  401862:	53                   	push   %rbx
  401863:	48 83 ec 38          	sub    $0x38,%rsp
  401867:	49 89 f6             	mov    %rsi,%r14
  40186a:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
  40186f:	48 83 fa 01          	cmp    $0x1,%rdx
  401873:	0f 86 c2 00 00 00    	jbe    40193b <rio_readlineb+0xe2>
  401879:	48 89 fb             	mov    %rdi,%rbx
  40187c:	41 bd 01 00 00 00    	mov    $0x1,%r13d
  401882:	4c 8d 67 10          	lea    0x10(%rdi),%r12
  401886:	eb 2e                	jmp    4018b6 <rio_readlineb+0x5d>
  401888:	ba 00 20 00 00       	mov    $0x2000,%edx
  40188d:	4c 89 e6             	mov    %r12,%rsi
  401890:	8b 3b                	mov    (%rbx),%edi
  401892:	e8 f9 f2 ff ff       	callq  400b90 <read@plt>
  401897:	89 43 04             	mov    %eax,0x4(%rbx)
  40189a:	85 c0                	test   %eax,%eax
  40189c:	79 0f                	jns    4018ad <rio_readlineb+0x54>
  40189e:	e8 7d f2 ff ff       	callq  400b20 <__errno_location@plt>
  4018a3:	83 38 04             	cmpl   $0x4,(%rax)
  4018a6:	74 0e                	je     4018b6 <rio_readlineb+0x5d>
  4018a8:	e9 9d 00 00 00       	jmpq   40194a <rio_readlineb+0xf1>
  4018ad:	85 c0                	test   %eax,%eax
  4018af:	90                   	nop
  4018b0:	74 6c                	je     40191e <rio_readlineb+0xc5>
  4018b2:	4c 89 63 08          	mov    %r12,0x8(%rbx)
  4018b6:	8b 6b 04             	mov    0x4(%rbx),%ebp
  4018b9:	85 ed                	test   %ebp,%ebp
  4018bb:	7e cb                	jle    401888 <rio_readlineb+0x2f>
  4018bd:	85 ed                	test   %ebp,%ebp
  4018bf:	41 0f 95 c7          	setne  %r15b
  4018c3:	41 0f b6 c7          	movzbl %r15b,%eax
  4018c7:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4018cb:	45 0f b6 ff          	movzbl %r15b,%r15d
  4018cf:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  4018d3:	4c 89 fa             	mov    %r15,%rdx
  4018d6:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
  4018db:	48 89 ce             	mov    %rcx,%rsi
  4018de:	48 8d 7c 24 2f       	lea    0x2f(%rsp),%rdi
  4018e3:	e8 28 f3 ff ff       	callq  400c10 <memcpy@plt>
  4018e8:	4c 03 7c 24 10       	add    0x10(%rsp),%r15
  4018ed:	4c 89 7b 08          	mov    %r15,0x8(%rbx)
  4018f1:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4018f5:	29 c5                	sub    %eax,%ebp
  4018f7:	89 6b 04             	mov    %ebp,0x4(%rbx)
  4018fa:	83 f8 01             	cmp    $0x1,%eax
  4018fd:	75 13                	jne    401912 <rio_readlineb+0xb9>
  4018ff:	49 83 c6 01          	add    $0x1,%r14
  401903:	0f b6 44 24 2f       	movzbl 0x2f(%rsp),%eax
  401908:	41 88 46 ff          	mov    %al,-0x1(%r14)
  40190c:	3c 0a                	cmp    $0xa,%al
  40190e:	75 18                	jne    401928 <rio_readlineb+0xcf>
  401910:	eb 2f                	jmp    401941 <rio_readlineb+0xe8>
  401912:	83 7c 24 0c 00       	cmpl   $0x0,0xc(%rsp)
  401917:	75 3a                	jne    401953 <rio_readlineb+0xfa>
  401919:	44 89 e8             	mov    %r13d,%eax
  40191c:	eb 03                	jmp    401921 <rio_readlineb+0xc8>
  40191e:	44 89 e8             	mov    %r13d,%eax
  401921:	83 f8 01             	cmp    $0x1,%eax
  401924:	75 1b                	jne    401941 <rio_readlineb+0xe8>
  401926:	eb 34                	jmp    40195c <rio_readlineb+0x103>
  401928:	41 83 c5 01          	add    $0x1,%r13d
  40192c:	49 63 c5             	movslq %r13d,%rax
  40192f:	48 3b 44 24 18       	cmp    0x18(%rsp),%rax
  401934:	73 0b                	jae    401941 <rio_readlineb+0xe8>
  401936:	e9 7b ff ff ff       	jmpq   4018b6 <rio_readlineb+0x5d>
  40193b:	41 bd 01 00 00 00    	mov    $0x1,%r13d
  401941:	41 c6 06 00          	movb   $0x0,(%r14)
  401945:	49 63 c5             	movslq %r13d,%rax
  401948:	eb 17                	jmp    401961 <rio_readlineb+0x108>
  40194a:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  401951:	eb 0e                	jmp    401961 <rio_readlineb+0x108>
  401953:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40195a:	eb 05                	jmp    401961 <rio_readlineb+0x108>
  40195c:	b8 00 00 00 00       	mov    $0x0,%eax
  401961:	48 83 c4 38          	add    $0x38,%rsp
  401965:	5b                   	pop    %rbx
  401966:	5d                   	pop    %rbp
  401967:	41 5c                	pop    %r12
  401969:	41 5d                	pop    %r13
  40196b:	41 5e                	pop    %r14
  40196d:	41 5f                	pop    %r15
  40196f:	c3                   	retq   

0000000000401970 <submitr>:
  401970:	41 57                	push   %r15
  401972:	41 56                	push   %r14
  401974:	41 55                	push   %r13
  401976:	41 54                	push   %r12
  401978:	55                   	push   %rbp
  401979:	53                   	push   %rbx
  40197a:	48 81 ec 58 a0 00 00 	sub    $0xa058,%rsp
  401981:	48 89 fd             	mov    %rdi,%rbp
  401984:	41 89 f5             	mov    %esi,%r13d
  401987:	48 89 14 24          	mov    %rdx,(%rsp)
  40198b:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  401990:	4d 89 c7             	mov    %r8,%r15
  401993:	4c 89 cb             	mov    %r9,%rbx
  401996:	4c 8b b4 24 90 a0 00 	mov    0xa090(%rsp),%r14
  40199d:	00 
  40199e:	c7 84 24 2c 20 00 00 	movl   $0x0,0x202c(%rsp)
  4019a5:	00 00 00 00 
  4019a9:	ba 00 00 00 00       	mov    $0x0,%edx
  4019ae:	be 01 00 00 00       	mov    $0x1,%esi
  4019b3:	bf 02 00 00 00       	mov    $0x2,%edi
  4019b8:	e8 03 f3 ff ff       	callq  400cc0 <socket@plt>
  4019bd:	41 89 c4             	mov    %eax,%r12d
  4019c0:	85 c0                	test   %eax,%eax
  4019c2:	79 50                	jns    401a14 <submitr+0xa4>
  4019c4:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4019cb:	3a 20 43 
  4019ce:	49 89 06             	mov    %rax,(%r14)
  4019d1:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4019d8:	20 75 6e 
  4019db:	49 89 46 08          	mov    %rax,0x8(%r14)
  4019df:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4019e6:	74 6f 20 
  4019e9:	49 89 46 10          	mov    %rax,0x10(%r14)
  4019ed:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  4019f4:	65 20 73 
  4019f7:	49 89 46 18          	mov    %rax,0x18(%r14)
  4019fb:	41 c7 46 20 6f 63 6b 	movl   $0x656b636f,0x20(%r14)
  401a02:	65 
  401a03:	66 41 c7 46 24 74 00 	movw   $0x74,0x24(%r14)
  401a0a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401a0f:	e9 ed 06 00 00       	jmpq   402101 <submitr+0x791>
  401a14:	48 89 ef             	mov    %rbp,%rdi
  401a17:	e8 b4 f1 ff ff       	callq  400bd0 <gethostbyname@plt>
  401a1c:	48 85 c0             	test   %rax,%rax
  401a1f:	75 6b                	jne    401a8c <submitr+0x11c>
  401a21:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  401a28:	3a 20 44 
  401a2b:	49 89 06             	mov    %rax,(%r14)
  401a2e:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  401a35:	20 75 6e 
  401a38:	49 89 46 08          	mov    %rax,0x8(%r14)
  401a3c:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401a43:	74 6f 20 
  401a46:	49 89 46 10          	mov    %rax,0x10(%r14)
  401a4a:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  401a51:	76 65 20 
  401a54:	49 89 46 18          	mov    %rax,0x18(%r14)
  401a58:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  401a5f:	72 20 61 
  401a62:	49 89 46 20          	mov    %rax,0x20(%r14)
  401a66:	41 c7 46 28 64 64 72 	movl   $0x65726464,0x28(%r14)
  401a6d:	65 
  401a6e:	66 41 c7 46 2c 73 73 	movw   $0x7373,0x2c(%r14)
  401a75:	41 c6 46 2e 00       	movb   $0x0,0x2e(%r14)
  401a7a:	44 89 e7             	mov    %r12d,%edi
  401a7d:	e8 fe f0 ff ff       	callq  400b80 <close@plt>
  401a82:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401a87:	e9 75 06 00 00       	jmpq   402101 <submitr+0x791>
  401a8c:	48 c7 84 24 40 a0 00 	movq   $0x0,0xa040(%rsp)
  401a93:	00 00 00 00 00 
  401a98:	48 c7 84 24 48 a0 00 	movq   $0x0,0xa048(%rsp)
  401a9f:	00 00 00 00 00 
  401aa4:	66 c7 84 24 40 a0 00 	movw   $0x2,0xa040(%rsp)
  401aab:	00 02 00 
  401aae:	48 63 50 14          	movslq 0x14(%rax),%rdx
  401ab2:	48 8d b4 24 44 a0 00 	lea    0xa044(%rsp),%rsi
  401ab9:	00 
  401aba:	48 8b 40 18          	mov    0x18(%rax),%rax
  401abe:	48 8b 38             	mov    (%rax),%rdi
  401ac1:	e8 7a f1 ff ff       	callq  400c40 <bcopy@plt>
  401ac6:	66 41 c1 cd 08       	ror    $0x8,%r13w
  401acb:	66 44 89 ac 24 42 a0 	mov    %r13w,0xa042(%rsp)
  401ad2:	00 00 
  401ad4:	ba 10 00 00 00       	mov    $0x10,%edx
  401ad9:	48 8d b4 24 40 a0 00 	lea    0xa040(%rsp),%rsi
  401ae0:	00 
  401ae1:	44 89 e7             	mov    %r12d,%edi
  401ae4:	e8 a7 f1 ff ff       	callq  400c90 <connect@plt>
  401ae9:	85 c0                	test   %eax,%eax
  401aeb:	79 5d                	jns    401b4a <submitr+0x1da>
  401aed:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  401af4:	3a 20 55 
  401af7:	49 89 06             	mov    %rax,(%r14)
  401afa:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  401b01:	20 74 6f 
  401b04:	49 89 46 08          	mov    %rax,0x8(%r14)
  401b08:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  401b0f:	65 63 74 
  401b12:	49 89 46 10          	mov    %rax,0x10(%r14)
  401b16:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  401b1d:	68 65 20 
  401b20:	49 89 46 18          	mov    %rax,0x18(%r14)
  401b24:	41 c7 46 20 73 65 72 	movl   $0x76726573,0x20(%r14)
  401b2b:	76 
  401b2c:	66 41 c7 46 24 65 72 	movw   $0x7265,0x24(%r14)
  401b33:	41 c6 46 26 00       	movb   $0x0,0x26(%r14)
  401b38:	44 89 e7             	mov    %r12d,%edi
  401b3b:	e8 40 f0 ff ff       	callq  400b80 <close@plt>
  401b40:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401b45:	e9 b7 05 00 00       	jmpq   402101 <submitr+0x791>
  401b4a:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  401b51:	48 89 df             	mov    %rbx,%rdi
  401b54:	b8 00 00 00 00       	mov    $0x0,%eax
  401b59:	48 89 d1             	mov    %rdx,%rcx
  401b5c:	f2 ae                	repnz scas %es:(%rdi),%al
  401b5e:	48 f7 d1             	not    %rcx
  401b61:	48 89 ce             	mov    %rcx,%rsi
  401b64:	48 8b 3c 24          	mov    (%rsp),%rdi
  401b68:	48 89 d1             	mov    %rdx,%rcx
  401b6b:	f2 ae                	repnz scas %es:(%rdi),%al
  401b6d:	49 89 c8             	mov    %rcx,%r8
  401b70:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  401b75:	48 89 d1             	mov    %rdx,%rcx
  401b78:	f2 ae                	repnz scas %es:(%rdi),%al
  401b7a:	48 f7 d1             	not    %rcx
  401b7d:	49 89 c9             	mov    %rcx,%r9
  401b80:	4c 89 ff             	mov    %r15,%rdi
  401b83:	48 89 d1             	mov    %rdx,%rcx
  401b86:	f2 ae                	repnz scas %es:(%rdi),%al
  401b88:	4d 29 c1             	sub    %r8,%r9
  401b8b:	49 29 c9             	sub    %rcx,%r9
  401b8e:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
  401b93:	49 8d 44 01 7b       	lea    0x7b(%r9,%rax,1),%rax
  401b98:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  401b9e:	76 73                	jbe    401c13 <submitr+0x2a3>
  401ba0:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  401ba7:	3a 20 52 
  401baa:	49 89 06             	mov    %rax,(%r14)
  401bad:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  401bb4:	20 73 74 
  401bb7:	49 89 46 08          	mov    %rax,0x8(%r14)
  401bbb:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  401bc2:	74 6f 6f 
  401bc5:	49 89 46 10          	mov    %rax,0x10(%r14)
  401bc9:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  401bd0:	65 2e 20 
  401bd3:	49 89 46 18          	mov    %rax,0x18(%r14)
  401bd7:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  401bde:	61 73 65 
  401be1:	49 89 46 20          	mov    %rax,0x20(%r14)
  401be5:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  401bec:	49 54 52 
  401bef:	49 89 46 28          	mov    %rax,0x28(%r14)
  401bf3:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  401bfa:	55 46 00 
  401bfd:	49 89 46 30          	mov    %rax,0x30(%r14)
  401c01:	44 89 e7             	mov    %r12d,%edi
  401c04:	e8 77 ef ff ff       	callq  400b80 <close@plt>
  401c09:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401c0e:	e9 ee 04 00 00       	jmpq   402101 <submitr+0x791>
  401c13:	48 8d 94 24 30 40 00 	lea    0x4030(%rsp),%rdx
  401c1a:	00 
  401c1b:	b9 00 04 00 00       	mov    $0x400,%ecx
  401c20:	b8 00 00 00 00       	mov    $0x0,%eax
  401c25:	48 89 d7             	mov    %rdx,%rdi
  401c28:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  401c2b:	48 89 df             	mov    %rbx,%rdi
  401c2e:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401c35:	f2 ae                	repnz scas %es:(%rdi),%al
  401c37:	48 f7 d1             	not    %rcx
  401c3a:	48 83 e9 01          	sub    $0x1,%rcx
  401c3e:	85 c9                	test   %ecx,%ecx
  401c40:	0f 84 d2 03 00 00    	je     402018 <submitr+0x6a8>
  401c46:	83 e9 01             	sub    $0x1,%ecx
  401c49:	4c 8d 6c 0b 01       	lea    0x1(%rbx,%rcx,1),%r13
  401c4e:	48 89 d5             	mov    %rdx,%rbp
  401c51:	0f b6 13             	movzbl (%rbx),%edx
  401c54:	80 fa 2a             	cmp    $0x2a,%dl
  401c57:	74 1f                	je     401c78 <submitr+0x308>
  401c59:	8d 42 d3             	lea    -0x2d(%rdx),%eax
  401c5c:	3c 01                	cmp    $0x1,%al
  401c5e:	76 18                	jbe    401c78 <submitr+0x308>
  401c60:	80 fa 5f             	cmp    $0x5f,%dl
  401c63:	74 13                	je     401c78 <submitr+0x308>
  401c65:	8d 42 d0             	lea    -0x30(%rdx),%eax
  401c68:	3c 09                	cmp    $0x9,%al
  401c6a:	76 0c                	jbe    401c78 <submitr+0x308>
  401c6c:	89 d0                	mov    %edx,%eax
  401c6e:	83 e0 df             	and    $0xffffffdf,%eax
  401c71:	83 e8 41             	sub    $0x41,%eax
  401c74:	3c 19                	cmp    $0x19,%al
  401c76:	77 09                	ja     401c81 <submitr+0x311>
  401c78:	48 8d 45 01          	lea    0x1(%rbp),%rax
  401c7c:	88 55 00             	mov    %dl,0x0(%rbp)
  401c7f:	eb 52                	jmp    401cd3 <submitr+0x363>
  401c81:	80 fa 20             	cmp    $0x20,%dl
  401c84:	75 0a                	jne    401c90 <submitr+0x320>
  401c86:	48 8d 45 01          	lea    0x1(%rbp),%rax
  401c8a:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  401c8e:	eb 43                	jmp    401cd3 <submitr+0x363>
  401c90:	8d 42 e0             	lea    -0x20(%rdx),%eax
  401c93:	3c 5f                	cmp    $0x5f,%al
  401c95:	76 09                	jbe    401ca0 <submitr+0x330>
  401c97:	80 fa 09             	cmp    $0x9,%dl
  401c9a:	0f 85 d9 03 00 00    	jne    402079 <submitr+0x709>
  401ca0:	0f b6 d2             	movzbl %dl,%edx
  401ca3:	be 80 2c 40 00       	mov    $0x402c80,%esi
  401ca8:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  401cad:	b8 00 00 00 00       	mov    $0x0,%eax
  401cb2:	e8 b9 ef ff ff       	callq  400c70 <sprintf@plt>
  401cb7:	0f b6 44 24 10       	movzbl 0x10(%rsp),%eax
  401cbc:	88 45 00             	mov    %al,0x0(%rbp)
  401cbf:	0f b6 44 24 11       	movzbl 0x11(%rsp),%eax
  401cc4:	88 45 01             	mov    %al,0x1(%rbp)
  401cc7:	48 8d 45 03          	lea    0x3(%rbp),%rax
  401ccb:	0f b6 54 24 12       	movzbl 0x12(%rsp),%edx
  401cd0:	88 55 02             	mov    %dl,0x2(%rbp)
  401cd3:	48 83 c3 01          	add    $0x1,%rbx
  401cd7:	4c 39 eb             	cmp    %r13,%rbx
  401cda:	0f 84 38 03 00 00    	je     402018 <submitr+0x6a8>
  401ce0:	48 89 c5             	mov    %rax,%rbp
  401ce3:	e9 69 ff ff ff       	jmpq   401c51 <submitr+0x2e1>
  401ce8:	48 89 da             	mov    %rbx,%rdx
  401ceb:	48 89 ee             	mov    %rbp,%rsi
  401cee:	44 89 e7             	mov    %r12d,%edi
  401cf1:	e8 5a ee ff ff       	callq  400b50 <write@plt>
  401cf6:	48 85 c0             	test   %rax,%rax
  401cf9:	7f 0f                	jg     401d0a <submitr+0x39a>
  401cfb:	e8 20 ee ff ff       	callq  400b20 <__errno_location@plt>
  401d00:	83 38 04             	cmpl   $0x4,(%rax)
  401d03:	75 12                	jne    401d17 <submitr+0x3a7>
  401d05:	b8 00 00 00 00       	mov    $0x0,%eax
  401d0a:	48 01 c5             	add    %rax,%rbp
  401d0d:	48 29 c3             	sub    %rax,%rbx
  401d10:	75 d6                	jne    401ce8 <submitr+0x378>
  401d12:	4d 85 ed             	test   %r13,%r13
  401d15:	79 5f                	jns    401d76 <submitr+0x406>
  401d17:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  401d1e:	3a 20 43 
  401d21:	49 89 06             	mov    %rax,(%r14)
  401d24:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  401d2b:	20 75 6e 
  401d2e:	49 89 46 08          	mov    %rax,0x8(%r14)
  401d32:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401d39:	74 6f 20 
  401d3c:	49 89 46 10          	mov    %rax,0x10(%r14)
  401d40:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  401d47:	20 74 6f 
  401d4a:	49 89 46 18          	mov    %rax,0x18(%r14)
  401d4e:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
  401d55:	73 65 72 
  401d58:	49 89 46 20          	mov    %rax,0x20(%r14)
  401d5c:	41 c7 46 28 76 65 72 	movl   $0x726576,0x28(%r14)
  401d63:	00 
  401d64:	44 89 e7             	mov    %r12d,%edi
  401d67:	e8 14 ee ff ff       	callq  400b80 <close@plt>
  401d6c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401d71:	e9 8b 03 00 00       	jmpq   402101 <submitr+0x791>
  401d76:	44 89 a4 24 30 80 00 	mov    %r12d,0x8030(%rsp)
  401d7d:	00 
  401d7e:	c7 84 24 34 80 00 00 	movl   $0x0,0x8034(%rsp)
  401d85:	00 00 00 00 
  401d89:	48 8d 84 24 40 80 00 	lea    0x8040(%rsp),%rax
  401d90:	00 
  401d91:	48 89 84 24 38 80 00 	mov    %rax,0x8038(%rsp)
  401d98:	00 
  401d99:	ba 00 20 00 00       	mov    $0x2000,%edx
  401d9e:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  401da5:	00 
  401da6:	48 8d bc 24 30 80 00 	lea    0x8030(%rsp),%rdi
  401dad:	00 
  401dae:	e8 a6 fa ff ff       	callq  401859 <rio_readlineb>
  401db3:	48 85 c0             	test   %rax,%rax
  401db6:	7f 74                	jg     401e2c <submitr+0x4bc>
  401db8:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  401dbf:	3a 20 43 
  401dc2:	49 89 06             	mov    %rax,(%r14)
  401dc5:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  401dcc:	20 75 6e 
  401dcf:	49 89 46 08          	mov    %rax,0x8(%r14)
  401dd3:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401dda:	74 6f 20 
  401ddd:	49 89 46 10          	mov    %rax,0x10(%r14)
  401de1:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  401de8:	66 69 72 
  401deb:	49 89 46 18          	mov    %rax,0x18(%r14)
  401def:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  401df6:	61 64 65 
  401df9:	49 89 46 20          	mov    %rax,0x20(%r14)
  401dfd:	48 b8 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rax
  401e04:	6d 20 73 
  401e07:	49 89 46 28          	mov    %rax,0x28(%r14)
  401e0b:	41 c7 46 30 65 72 76 	movl   $0x65767265,0x30(%r14)
  401e12:	65 
  401e13:	66 41 c7 46 34 72 00 	movw   $0x72,0x34(%r14)
  401e1a:	44 89 e7             	mov    %r12d,%edi
  401e1d:	e8 5e ed ff ff       	callq  400b80 <close@plt>
  401e22:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401e27:	e9 d5 02 00 00       	jmpq   402101 <submitr+0x791>
  401e2c:	4c 8d 44 24 20       	lea    0x20(%rsp),%r8
  401e31:	48 8d 8c 24 2c 20 00 	lea    0x202c(%rsp),%rcx
  401e38:	00 
  401e39:	48 8d 94 24 30 20 00 	lea    0x2030(%rsp),%rdx
  401e40:	00 
  401e41:	be 87 2c 40 00       	mov    $0x402c87,%esi
  401e46:	48 8d bc 24 30 60 00 	lea    0x6030(%rsp),%rdi
  401e4d:	00 
  401e4e:	b8 00 00 00 00       	mov    $0x0,%eax
  401e53:	e8 d8 ed ff ff       	callq  400c30 <__isoc99_sscanf@plt>
  401e58:	8b 94 24 2c 20 00 00 	mov    0x202c(%rsp),%edx
  401e5f:	81 fa c8 00 00 00    	cmp    $0xc8,%edx
  401e65:	0f 84 b2 00 00 00    	je     401f1d <submitr+0x5ad>
  401e6b:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  401e70:	be d8 2b 40 00       	mov    $0x402bd8,%esi
  401e75:	4c 89 f7             	mov    %r14,%rdi
  401e78:	b8 00 00 00 00       	mov    $0x0,%eax
  401e7d:	e8 ee ed ff ff       	callq  400c70 <sprintf@plt>
  401e82:	44 89 e7             	mov    %r12d,%edi
  401e85:	e8 f6 ec ff ff       	callq  400b80 <close@plt>
  401e8a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401e8f:	e9 6d 02 00 00       	jmpq   402101 <submitr+0x791>
  401e94:	ba 00 20 00 00       	mov    $0x2000,%edx
  401e99:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  401ea0:	00 
  401ea1:	48 8d bc 24 30 80 00 	lea    0x8030(%rsp),%rdi
  401ea8:	00 
  401ea9:	e8 ab f9 ff ff       	callq  401859 <rio_readlineb>
  401eae:	48 85 c0             	test   %rax,%rax
  401eb1:	7f 6a                	jg     401f1d <submitr+0x5ad>
  401eb3:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  401eba:	3a 20 43 
  401ebd:	49 89 06             	mov    %rax,(%r14)
  401ec0:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  401ec7:	20 75 6e 
  401eca:	49 89 46 08          	mov    %rax,0x8(%r14)
  401ece:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401ed5:	74 6f 20 
  401ed8:	49 89 46 10          	mov    %rax,0x10(%r14)
  401edc:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  401ee3:	68 65 61 
  401ee6:	49 89 46 18          	mov    %rax,0x18(%r14)
  401eea:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  401ef1:	66 72 6f 
  401ef4:	49 89 46 20          	mov    %rax,0x20(%r14)
  401ef8:	48 b8 6d 20 73 65 72 	movabs $0x726576726573206d,%rax
  401eff:	76 65 72 
  401f02:	49 89 46 28          	mov    %rax,0x28(%r14)
  401f06:	41 c6 46 30 00       	movb   $0x0,0x30(%r14)
  401f0b:	44 89 e7             	mov    %r12d,%edi
  401f0e:	e8 6d ec ff ff       	callq  400b80 <close@plt>
  401f13:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401f18:	e9 e4 01 00 00       	jmpq   402101 <submitr+0x791>
  401f1d:	80 bc 24 30 60 00 00 	cmpb   $0xd,0x6030(%rsp)
  401f24:	0d 
  401f25:	0f 85 69 ff ff ff    	jne    401e94 <submitr+0x524>
  401f2b:	80 bc 24 31 60 00 00 	cmpb   $0xa,0x6031(%rsp)
  401f32:	0a 
  401f33:	0f 85 5b ff ff ff    	jne    401e94 <submitr+0x524>
  401f39:	80 bc 24 32 60 00 00 	cmpb   $0x0,0x6032(%rsp)
  401f40:	00 
  401f41:	0f 85 4d ff ff ff    	jne    401e94 <submitr+0x524>
  401f47:	ba 00 20 00 00       	mov    $0x2000,%edx
  401f4c:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  401f53:	00 
  401f54:	48 8d bc 24 30 80 00 	lea    0x8030(%rsp),%rdi
  401f5b:	00 
  401f5c:	e8 f8 f8 ff ff       	callq  401859 <rio_readlineb>
  401f61:	48 85 c0             	test   %rax,%rax
  401f64:	7f 73                	jg     401fd9 <submitr+0x669>
  401f66:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  401f6d:	3a 20 43 
  401f70:	49 89 06             	mov    %rax,(%r14)
  401f73:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  401f7a:	20 75 6e 
  401f7d:	49 89 46 08          	mov    %rax,0x8(%r14)
  401f81:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401f88:	74 6f 20 
  401f8b:	49 89 46 10          	mov    %rax,0x10(%r14)
  401f8f:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  401f96:	73 74 61 
  401f99:	49 89 46 18          	mov    %rax,0x18(%r14)
  401f9d:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  401fa4:	65 73 73 
  401fa7:	49 89 46 20          	mov    %rax,0x20(%r14)
  401fab:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  401fb2:	72 6f 6d 
  401fb5:	49 89 46 28          	mov    %rax,0x28(%r14)
  401fb9:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
  401fc0:	65 72 00 
  401fc3:	49 89 46 30          	mov    %rax,0x30(%r14)
  401fc7:	44 89 e7             	mov    %r12d,%edi
  401fca:	e8 b1 eb ff ff       	callq  400b80 <close@plt>
  401fcf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401fd4:	e9 28 01 00 00       	jmpq   402101 <submitr+0x791>
  401fd9:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  401fe0:	00 
  401fe1:	4c 89 f7             	mov    %r14,%rdi
  401fe4:	e8 47 eb ff ff       	callq  400b30 <strcpy@plt>
  401fe9:	44 89 e7             	mov    %r12d,%edi
  401fec:	e8 8f eb ff ff       	callq  400b80 <close@plt>
  401ff1:	41 0f b6 06          	movzbl (%r14),%eax
  401ff5:	83 e8 4f             	sub    $0x4f,%eax
  401ff8:	75 0f                	jne    402009 <submitr+0x699>
  401ffa:	41 0f b6 46 01       	movzbl 0x1(%r14),%eax
  401fff:	83 e8 4b             	sub    $0x4b,%eax
  402002:	75 05                	jne    402009 <submitr+0x699>
  402004:	41 0f b6 46 02       	movzbl 0x2(%r14),%eax
  402009:	85 c0                	test   %eax,%eax
  40200b:	0f 95 c0             	setne  %al
  40200e:	0f b6 c0             	movzbl %al,%eax
  402011:	f7 d8                	neg    %eax
  402013:	e9 e9 00 00 00       	jmpq   402101 <submitr+0x791>
  402018:	4c 8d 8c 24 30 40 00 	lea    0x4030(%rsp),%r9
  40201f:	00 
  402020:	4d 89 f8             	mov    %r15,%r8
  402023:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  402028:	48 8b 14 24          	mov    (%rsp),%rdx
  40202c:	be 08 2c 40 00       	mov    $0x402c08,%esi
  402031:	48 8d bc 24 30 60 00 	lea    0x6030(%rsp),%rdi
  402038:	00 
  402039:	b8 00 00 00 00       	mov    $0x0,%eax
  40203e:	e8 2d ec ff ff       	callq  400c70 <sprintf@plt>
  402043:	48 8d bc 24 30 60 00 	lea    0x6030(%rsp),%rdi
  40204a:	00 
  40204b:	b8 00 00 00 00       	mov    $0x0,%eax
  402050:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402057:	f2 ae                	repnz scas %es:(%rdi),%al
  402059:	48 f7 d1             	not    %rcx
  40205c:	48 83 e9 01          	sub    $0x1,%rcx
  402060:	49 89 cd             	mov    %rcx,%r13
  402063:	0f 84 0d fd ff ff    	je     401d76 <submitr+0x406>
  402069:	48 89 cb             	mov    %rcx,%rbx
  40206c:	48 8d ac 24 30 60 00 	lea    0x6030(%rsp),%rbp
  402073:	00 
  402074:	e9 6f fc ff ff       	jmpq   401ce8 <submitr+0x378>
  402079:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402080:	3a 20 52 
  402083:	49 89 06             	mov    %rax,(%r14)
  402086:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  40208d:	20 73 74 
  402090:	49 89 46 08          	mov    %rax,0x8(%r14)
  402094:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  40209b:	63 6f 6e 
  40209e:	49 89 46 10          	mov    %rax,0x10(%r14)
  4020a2:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  4020a9:	20 61 6e 
  4020ac:	49 89 46 18          	mov    %rax,0x18(%r14)
  4020b0:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  4020b7:	67 61 6c 
  4020ba:	49 89 46 20          	mov    %rax,0x20(%r14)
  4020be:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  4020c5:	6e 70 72 
  4020c8:	49 89 46 28          	mov    %rax,0x28(%r14)
  4020cc:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  4020d3:	6c 65 20 
  4020d6:	49 89 46 30          	mov    %rax,0x30(%r14)
  4020da:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  4020e1:	63 74 65 
  4020e4:	49 89 46 38          	mov    %rax,0x38(%r14)
  4020e8:	66 41 c7 46 40 72 2e 	movw   $0x2e72,0x40(%r14)
  4020ef:	41 c6 46 42 00       	movb   $0x0,0x42(%r14)
  4020f4:	44 89 e7             	mov    %r12d,%edi
  4020f7:	e8 84 ea ff ff       	callq  400b80 <close@plt>
  4020fc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402101:	48 81 c4 58 a0 00 00 	add    $0xa058,%rsp
  402108:	5b                   	pop    %rbx
  402109:	5d                   	pop    %rbp
  40210a:	41 5c                	pop    %r12
  40210c:	41 5d                	pop    %r13
  40210e:	41 5e                	pop    %r14
  402110:	41 5f                	pop    %r15
  402112:	c3                   	retq   

0000000000402113 <init_timeout>:
  402113:	53                   	push   %rbx
  402114:	89 fb                	mov    %edi,%ebx
  402116:	85 ff                	test   %edi,%edi
  402118:	74 1e                	je     402138 <init_timeout+0x25>
  40211a:	be 30 18 40 00       	mov    $0x401830,%esi
  40211f:	bf 0e 00 00 00       	mov    $0xe,%edi
  402124:	e8 97 ea ff ff       	callq  400bc0 <signal@plt>
  402129:	85 db                	test   %ebx,%ebx
  40212b:	bf 00 00 00 00       	mov    $0x0,%edi
  402130:	0f 49 fb             	cmovns %ebx,%edi
  402133:	e8 38 ea ff ff       	callq  400b70 <alarm@plt>
  402138:	5b                   	pop    %rbx
  402139:	c3                   	retq   

000000000040213a <init_driver>:
  40213a:	55                   	push   %rbp
  40213b:	53                   	push   %rbx
  40213c:	48 83 ec 18          	sub    $0x18,%rsp
  402140:	48 89 fd             	mov    %rdi,%rbp
  402143:	be 01 00 00 00       	mov    $0x1,%esi
  402148:	bf 0d 00 00 00       	mov    $0xd,%edi
  40214d:	e8 6e ea ff ff       	callq  400bc0 <signal@plt>
  402152:	be 01 00 00 00       	mov    $0x1,%esi
  402157:	bf 1d 00 00 00       	mov    $0x1d,%edi
  40215c:	e8 5f ea ff ff       	callq  400bc0 <signal@plt>
  402161:	be 01 00 00 00       	mov    $0x1,%esi
  402166:	bf 1d 00 00 00       	mov    $0x1d,%edi
  40216b:	e8 50 ea ff ff       	callq  400bc0 <signal@plt>
  402170:	ba 00 00 00 00       	mov    $0x0,%edx
  402175:	be 01 00 00 00       	mov    $0x1,%esi
  40217a:	bf 02 00 00 00       	mov    $0x2,%edi
  40217f:	e8 3c eb ff ff       	callq  400cc0 <socket@plt>
  402184:	89 c3                	mov    %eax,%ebx
  402186:	85 c0                	test   %eax,%eax
  402188:	79 4f                	jns    4021d9 <init_driver+0x9f>
  40218a:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402191:	3a 20 43 
  402194:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402198:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40219f:	20 75 6e 
  4021a2:	48 89 45 08          	mov    %rax,0x8(%rbp)
  4021a6:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4021ad:	74 6f 20 
  4021b0:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4021b4:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  4021bb:	65 20 73 
  4021be:	48 89 45 18          	mov    %rax,0x18(%rbp)
  4021c2:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  4021c9:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  4021cf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4021d4:	e9 f8 00 00 00       	jmpq   4022d1 <init_driver+0x197>
  4021d9:	bf 97 2b 40 00       	mov    $0x402b97,%edi
  4021de:	e8 ed e9 ff ff       	callq  400bd0 <gethostbyname@plt>
  4021e3:	48 85 c0             	test   %rax,%rax
  4021e6:	75 68                	jne    402250 <init_driver+0x116>
  4021e8:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4021ef:	3a 20 44 
  4021f2:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4021f6:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  4021fd:	20 75 6e 
  402200:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402204:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40220b:	74 6f 20 
  40220e:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402212:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402219:	76 65 20 
  40221c:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402220:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402227:	72 20 61 
  40222a:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40222e:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402235:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  40223b:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  40223f:	89 df                	mov    %ebx,%edi
  402241:	e8 3a e9 ff ff       	callq  400b80 <close@plt>
  402246:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40224b:	e9 81 00 00 00       	jmpq   4022d1 <init_driver+0x197>
  402250:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  402257:	00 
  402258:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  40225f:	00 00 
  402261:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402267:	48 63 50 14          	movslq 0x14(%rax),%rdx
  40226b:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
  402270:	48 8b 40 18          	mov    0x18(%rax),%rax
  402274:	48 8b 38             	mov    (%rax),%rdi
  402277:	e8 c4 e9 ff ff       	callq  400c40 <bcopy@plt>
  40227c:	66 c7 44 24 02 3b 6e 	movw   $0x6e3b,0x2(%rsp)
  402283:	ba 10 00 00 00       	mov    $0x10,%edx
  402288:	48 89 e6             	mov    %rsp,%rsi
  40228b:	89 df                	mov    %ebx,%edi
  40228d:	e8 fe e9 ff ff       	callq  400c90 <connect@plt>
  402292:	85 c0                	test   %eax,%eax
  402294:	79 25                	jns    4022bb <init_driver+0x181>
  402296:	ba 97 2b 40 00       	mov    $0x402b97,%edx
  40229b:	be 58 2c 40 00       	mov    $0x402c58,%esi
  4022a0:	48 89 ef             	mov    %rbp,%rdi
  4022a3:	b8 00 00 00 00       	mov    $0x0,%eax
  4022a8:	e8 c3 e9 ff ff       	callq  400c70 <sprintf@plt>
  4022ad:	89 df                	mov    %ebx,%edi
  4022af:	e8 cc e8 ff ff       	callq  400b80 <close@plt>
  4022b4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4022b9:	eb 16                	jmp    4022d1 <init_driver+0x197>
  4022bb:	89 df                	mov    %ebx,%edi
  4022bd:	e8 be e8 ff ff       	callq  400b80 <close@plt>
  4022c2:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  4022c8:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  4022cc:	b8 00 00 00 00       	mov    $0x0,%eax
  4022d1:	48 83 c4 18          	add    $0x18,%rsp
  4022d5:	5b                   	pop    %rbx
  4022d6:	5d                   	pop    %rbp
  4022d7:	c3                   	retq   

00000000004022d8 <driver_post>:
  4022d8:	53                   	push   %rbx
  4022d9:	48 83 ec 10          	sub    $0x10,%rsp
  4022dd:	48 89 cb             	mov    %rcx,%rbx
  4022e0:	85 d2                	test   %edx,%edx
  4022e2:	74 1f                	je     402303 <driver_post+0x2b>
  4022e4:	bf 98 2c 40 00       	mov    $0x402c98,%edi
  4022e9:	b8 00 00 00 00       	mov    $0x0,%eax
  4022ee:	e8 6d e8 ff ff       	callq  400b60 <printf@plt>
  4022f3:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  4022f8:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  4022fc:	b8 00 00 00 00       	mov    $0x0,%eax
  402301:	eb 3e                	jmp    402341 <driver_post+0x69>
  402303:	48 85 ff             	test   %rdi,%rdi
  402306:	74 2b                	je     402333 <driver_post+0x5b>
  402308:	80 3f 00             	cmpb   $0x0,(%rdi)
  40230b:	74 26                	je     402333 <driver_post+0x5b>
  40230d:	48 89 0c 24          	mov    %rcx,(%rsp)
  402311:	49 89 f1             	mov    %rsi,%r9
  402314:	41 b8 af 2c 40 00    	mov    $0x402caf,%r8d
  40231a:	48 89 f9             	mov    %rdi,%rcx
  40231d:	ba b3 2c 40 00       	mov    $0x402cb3,%edx
  402322:	be 6e 3b 00 00       	mov    $0x3b6e,%esi
  402327:	bf 97 2b 40 00       	mov    $0x402b97,%edi
  40232c:	e8 3f f6 ff ff       	callq  401970 <submitr>
  402331:	eb 0e                	jmp    402341 <driver_post+0x69>
  402333:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402338:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  40233c:	b8 00 00 00 00       	mov    $0x0,%eax
  402341:	48 83 c4 10          	add    $0x10,%rsp
  402345:	5b                   	pop    %rbx
  402346:	c3                   	retq   
  402347:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40234e:	00 00 

0000000000402350 <__libc_csu_init>:
  402350:	41 57                	push   %r15
  402352:	41 89 ff             	mov    %edi,%r15d
  402355:	41 56                	push   %r14
  402357:	49 89 f6             	mov    %rsi,%r14
  40235a:	41 55                	push   %r13
  40235c:	49 89 d5             	mov    %rdx,%r13
  40235f:	41 54                	push   %r12
  402361:	4c 8d 25 a8 1a 20 00 	lea    0x201aa8(%rip),%r12        # 603e10 <__frame_dummy_init_array_entry>
  402368:	55                   	push   %rbp
  402369:	48 8d 2d a8 1a 20 00 	lea    0x201aa8(%rip),%rbp        # 603e18 <__init_array_end>
  402370:	53                   	push   %rbx
  402371:	4c 29 e5             	sub    %r12,%rbp
  402374:	31 db                	xor    %ebx,%ebx
  402376:	48 c1 fd 03          	sar    $0x3,%rbp
  40237a:	48 83 ec 08          	sub    $0x8,%rsp
  40237e:	e8 4d e7 ff ff       	callq  400ad0 <_init>
  402383:	48 85 ed             	test   %rbp,%rbp
  402386:	74 1e                	je     4023a6 <__libc_csu_init+0x56>
  402388:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40238f:	00 
  402390:	4c 89 ea             	mov    %r13,%rdx
  402393:	4c 89 f6             	mov    %r14,%rsi
  402396:	44 89 ff             	mov    %r15d,%edi
  402399:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40239d:	48 83 c3 01          	add    $0x1,%rbx
  4023a1:	48 39 eb             	cmp    %rbp,%rbx
  4023a4:	75 ea                	jne    402390 <__libc_csu_init+0x40>
  4023a6:	48 83 c4 08          	add    $0x8,%rsp
  4023aa:	5b                   	pop    %rbx
  4023ab:	5d                   	pop    %rbp
  4023ac:	41 5c                	pop    %r12
  4023ae:	41 5d                	pop    %r13
  4023b0:	41 5e                	pop    %r14
  4023b2:	41 5f                	pop    %r15
  4023b4:	c3                   	retq   
  4023b5:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  4023bc:	00 00 00 00 

00000000004023c0 <__libc_csu_fini>:
  4023c0:	f3 c3                	repz retq 
  4023c2:	66 90                	xchg   %ax,%ax

Disassembly of section .fini:

00000000004023c4 <_fini>:
  4023c4:	48 83 ec 08          	sub    $0x8,%rsp
  4023c8:	48 83 c4 08          	add    $0x8,%rsp
  4023cc:	c3                   	retq   
