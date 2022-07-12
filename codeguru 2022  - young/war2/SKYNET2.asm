%define MN 0x1002
%define MN2 0x5782
%define opcode 0x1fff-2
%define opcode_hpoh 0x1fff
jmp start
mov word[opcode],opcode_hpoh
mov word[MN2], opcode
mov bp, ax
mov cx,7
itay:
loop itay
add ax, Zombie_code
mov bx,[MN*2]
mov[0],ax
mov word [bx],0x25ff


my_code:
push cs
push ss
pop ds
pop ss

mov ax, opcode
mov bx, 0x200
mov sp, ax
mov [bx],ax
mov[bx+2],cs
callfar:
call far [bx]
jmp my_code

Zombie_code:
mov ax,[MN2]
add ax,sof
push cs
pop es
mov cx, 0xFFFF
mov di,ax
add di,sof
rep stosw
jmp Zombie_code
jmp $
dq 0xcccccccc

mov word[opcode],opcode_hpoh
mov word[MN2], opcode
mov bp, ax
mov cx,7
itay_1:
loop itay_1
add ax, Zombie_code
mov bx,[MN*2]
mov[0],ax
mov word [bx],0x25ff


my_code_1:
push cs
push ss
pop ds
pop ss

mov ax, opcode
mov bx, 0x200
mov sp, ax
mov [bx],ax
mov[bx+2],cs
callfar_1:
call far [bx]
jmp my_code_1

Zombie_code_1:
mov ax,[MN2]
add ax,sof
push cs
pop es
mov cx, 0xFFFF
mov di,ax
add di,sof
rep stosw
jmp Zombie_code_1
jmp $
dq 0xcccccccc

start:
mov word[opcode],opcode_hpoh
mov word[MN2], opcode
mov bp, ax
mov cx,7
itay_2:
loop itay_2
add ax, Zombie_code
mov bx,[MN*2]
mov[0],ax
mov word [bx],0x25ff


my_code_2:
push cs
push ss
pop ds
pop ss

mov ax, opcode
mov bx, 0x200
mov sp, ax
mov [bx],ax
mov[bx+2],cs
callfar_2:
call far [bx]
jmp my_code_2

Zombie_code_2:
mov ax,[MN2]
add ax,sof
push cs
pop es
mov cx, 0xFFFF
mov di,ax
add di,sof
rep stosw
jmp Zombie_code_2
end:
jmp $
dq 0xcccccccc


mov word[opcode],opcode_hpoh
mov word[MN2], opcode
mov bp, ax
mov cx,7
itay_3:
loop itay_3
add ax, Zombie_code
mov bx,[MN*2]
mov[0],ax
mov word [bx],0x25ff


my_code_3:
push cs
push ss
pop ds
pop ss

mov ax, opcode
mov bx, 0x200
mov sp, ax
mov [bx],ax
mov[bx+2],cs
callfar_3:
call far [bx]
jmp my_code_1

Zombie_code_3:
mov ax,[MN2]
add ax,sof
push cs
pop es
mov cx, 0xFFFF
mov di,ax
add di,sof
rep stosw
jmp Zombie_code_3
jmp $
dq 0xcccccccc


mov word[opcode],opcode_hpoh
mov word[MN2], opcode
mov bp, ax
mov cx,7
itay_4:
loop itay_4
add ax, Zombie_code
mov bx,[MN*2]
mov[0],ax
mov word [bx],0x25ff


my_code_4:
push cs
push ss
pop ds
pop ss

mov ax, opcode
mov bx, 0x200
mov sp, ax
mov [bx],ax
mov[bx+2],cs
callfar_4:
call far [bx]
jmp my_code_1

Zombie_code_4:
mov ax,[MN2]
add ax,sof
push cs
pop es
mov cx, 0xFFFF
mov di,ax
add di,sof
rep stosw
jmp Zombie_code_4
jmp $
dq 0xcccccccc


sof:







