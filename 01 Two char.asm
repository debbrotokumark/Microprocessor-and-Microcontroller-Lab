.model small
.stack 100h
        
.data

    sign db '?'        

.code

main proc
     
        
      mov ax,@data
      mov ds,ax
      
      mov ah,2
      mov dl,sign
      int 21h
      
      
      
      mov ah,1
      int 21h
      mov bl,al
      
        
      mov ah,1
      int 21h
      mov cl,al 
      
      
      cmp bl,cl
      
       jle L1
       
       jmp L2
       
       
       L1:
      mov ah,2
      mov dl,bl
      int 21h 
       mov ah,2
      mov dl,cl
      int 21h
      jmp exit:
      
      
      L2:
        mov ah,2
      mov dl,cl
      int 21h 
       mov ah,2
      mov dl,bl
      int 21h 
      jmp exit:
       
      
      
      exit:
      
      mov ah,4Ch
      int 21h
      main endp

end main
     