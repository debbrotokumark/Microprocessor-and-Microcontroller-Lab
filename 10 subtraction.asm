.model small
.stack 100h
     

.code

main proc
         
      mov ah,1
      int 21h
      mov bl,al
      sub bl,30h
      
      mov ah,1
      int 21h
      mov cl,al
      sub cl,30h   
         
      
      sub bl,cl
      add bl,30h
       
       
       
      
      mov ah,2
      mov dl,bl
      int 21h 
     
      
      
      exit:
      
      mov ah,4Ch
      int 21h
      main endp
      
      
end main
     