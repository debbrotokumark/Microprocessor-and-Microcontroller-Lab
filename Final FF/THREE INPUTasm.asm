.model small
.stack 100h
    
 .data
 
    a db "Enter three initials : $"   
    newline db 0DH,0AH,"$" 

.code

main proc
  
      
     mov ax,@data
     mov ds,ax
     
     
     mov ah,9
     lea dx,a ; print
     int 21h
     
     mov ah,1
     int 21h         ;input  bl
     mov bl,al
      
      
           
     mov ah,1
     int 21h         ;input  bh
     mov bh,al
                              
                              
     mov ah,1
     int 21h         ;input  cl
     mov cl,al
     
     
       mov ah,9
     lea dx,newline ; print  line
     int 21h
      
      
      mov ah,2
      mov dl,bl      ;print bl
      int 21h
      
            
       mov ah,9
     lea dx,newline ; print  line
     int 21h
      
      
      mov ah,2
      mov dl,bh      ;print bl
      int 21h
        
        
                  
       mov ah,9
     lea dx,newline ; print  line
     int 21h
      
      
      mov ah,2
      mov dl,cl      ;print cl
      int 21h
        
        
        
      
      exit:
      
      mov ah,4Ch
      int 21h
      main endp

end main
     
