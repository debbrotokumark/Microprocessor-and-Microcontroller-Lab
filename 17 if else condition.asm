.model small
.stack 100h
     

.code

main proc
  
       mov ah,1
       int 21h
       mov bl,al
       
       
       mov ah,1
       int 21h
       mov cl,al
       
       
      
      cmp bl,cl
      jl L1
      jmp L2
      
      L1:
      mov ah,2
      mov dl,bl
      int 21h 
      jmp exit:
      
      L2:
      mov ah,2
      mov dl,cl
      int 21h
      jmp exit:
      
       
      
      exit:
      
      mov ah,4Ch
      int 21h
      main endp

end main
     