
jmp start


push cs
pop ss
mov bx, ax
mov sp, ax
add ax,callfar
add bx,end
mov [bx],ax
mov[bx+2],cs

callfar:
call far [bx]
jmp $
dq 0xcccccccc

push cs
pop ss
mov bx, ax
mov sp, ax
add ax,callfar1
add bx,end
mov [bx],ax
mov[bx+2],cs

callfar1:
call far [bx]
jmp $
dq 0xcccccccc

start:

push cs
pop ss
mov bx, ax
mov sp, ax
add ax,callfar2
add bx,end
mov [bx],ax
mov[bx+2],cs

callfar2:
call far [bx]

end:
jmp $
dq 0xcccccccc

push cs
pop ss
mov bx, ax
mov sp, ax
add ax,callfar3
add bx,end
mov [bx],ax
mov[bx+2],cs

callfar3:
call far [bx]
jmp $
dq 0xcccccccc

push cs
pop ss
mov bx, ax
mov sp, ax
add ax,callfar4
add bx,end
mov [bx],ax
mov[bx+2],cs

callfar4:
call far [bx]
jmp $
dq 0xcccccccc

