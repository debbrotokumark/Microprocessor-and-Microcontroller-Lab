.model small
.stack 100h
     
.data
   newline db 0DH,0AH,'$'
     
 
.code

main proc
    
      mov ax,@data
      mov ds,ax
      
      mov bl,80h
      mov si,0
      
      
      
      loop_start:
       mov ah,2
       mov dl,bl
       int 21h
       
        
       inc si 
        
       cmp si,10
       jne contine  
       
       
        mov si,0
        
        mov ah,9
        lea dx,newline
        int 21h
        jmp contine
        
       
       
       
       contine:
       cmp bl,0FFH
       je exit
       
       inc bl
       jmp loop_start 
       
      
    
        
    
  
      
      
      exit:
      
      mov ah,4Ch
      int 21h
      main endp

end main
     