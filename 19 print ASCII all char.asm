.model small
.stack 100h
     

.code

main proc
  
      mov cx,256
      
      mov ah,2
      mov dl,0
      
      Loop:
        int 21h
        
        inc dl
        dec cx
        JNZ LOOP
        
      
      
      
      
      exit:
      
      mov ah,4Ch
      int 21h
      main endp

end main
     