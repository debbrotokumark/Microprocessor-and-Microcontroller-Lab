.model small
.stack 100h
     
.data
newline db 0Dh,0Ah,'$'

.code

main proc
  
    mov ax,@data
    mov ds,ax
     
    mov cx,80h
    mov bx,0FFh
    mov si,0 
     
for:
    cmp cx,bx
    ja exit    ; first value > second value
     
    mov ah,2
    mov dl,cl
    int 21h
     
    inc cx
    inc si
     
    cmp si,10
    jne skip      ; if not 10 ? skip newline
  
; RUN WHEN 10     
L1:
    mov ah,9
    lea dx,newline
    int 21h
    mov si,0   
     
skip:
    jmp for 
     
exit:
    mov ah,4Ch
    int 21h

main endp
end main