.model small
.stack 100h
     

.data
    
    a db "Enter A HEX DIGIT : $"
    b db 0DH,0AH,"In decimal it is : $"
                                     
     
.code

main proc
      
      mov ax,@data
      mov ds,ax
      
      mov ah,9
      lea dx,a ; init print
      int 21h
      
      
      mov ah,1
      int 21h
      mov bl,al
      
      sub bl,'A'
      
      
          
      mov ah,9
      lea dx,b ; init print
      int 21h
      
      
      mov ah,2
      mov dl,'1'
      int 21h
      
      mov al,2
      mov dl,bl
      add dl,'0'
      int 21h
      
     
      
      
      
      
      exit:
      
      mov ah,4Ch
      int 21h
      main endp

end main
     