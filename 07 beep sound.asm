 .model small
.stack 100h
     

.code

main proc
  
        
      mov ah,2
      mov dl,007
      int 21h   
      
      
      mov ah,2
      mov dl,007
      int 21h 
      
      mov ah,2
      mov dl,007
      int 21h 
        
                      
                      
                            
      mov ah,2
      mov dl,007
      int 21h 
      
            mov ah,2
      mov dl,007
      int 21h 
        
                      
      exit:
      
      mov ah,4Ch
      int 21h
      main endp

end main
     