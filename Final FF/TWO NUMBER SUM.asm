.model small
.stack 100h

.data
 a db '?'
b db 0DH, 0AH ,"THE SUM OF $" 
c db " and $"
d db " Is $"
 
 main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,2
    mov dl,a    ; PRINT ?
    int 21h 
    
    mov ah,1
    int 21h
    sub al,'0'  ; INPUT BL
    mov bl,al
    
  
    
    
    mov ah,1
    int 21h          ; INPUT CL
    sub al,'0'
    mov cl,al
         
    
    
    mov ah,9
    lea dx,b         ; PRINT THE SUM OF
    int 21h 
    
    mov ah,2
    mov dl,bl       ;PRINT BL
    add dl,'0'
    int 21h  
    
    
    mov ah,9         ; PRINT AND
    lea dx,c
    int 21h 
     
     
     mov ah,2          ; PRINT CL
    mov dl,cl 
     add dl,'0'
    int 21h   
    
    mov ah,9
    lea dx,d              ;PRINT IS
    int 21h                                  
    
    
    ADD bl,cl
         
    mov ah,2
    mov dl,bl                      ;PRINT SUM
    add dl,'0'
    int 21h     
    
    mov ah,4Ch
    int 21h
    
    
    main endp
 
end main 
