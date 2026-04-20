.model small
.stack 100h
     

.code

main proc
  
     
     mov ah,2
     mov dl,'?'
     int 21h
     
     mov ah,1
     int 21h
     mov bl,al
       
      mov ah,1
     int 21h
       mov cl,al
     
         
     mov ah,2
     mov dl,0DH
     int 21h
       
     mov ah,2
     mov dl,0AH
     int 21h
     
     
            
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
     