.model small
.stack 100h
     

.code

main proc
  
      
      mov ah,1
      int 21h
      mov bl,al
      
      
      
      cmp bl,'y'
      jz L2
      
        
      jnz exit:
      
      
 
      
      L2:
      
      mov ah,2
      mov dl,bl
      sub dl,32
      int 21h
      jmp exit:
         
      
     
      
        
        
        
      
      exit:
      
      mov ah,4Ch
      int 21h
      main endp

end main
     