 .model small
.stack 100h
     

.code

main proc
        
        
        mov al,1
        mov bl,3
       
       mul bl ; al=al *bl
        
        mov ah,2   
          
          add al,48
          
        mov dl,al 
         
        int 21h
       
      
      
      exit:
      
      mov ah,4Ch
      int 21h
      main endp

end main
     