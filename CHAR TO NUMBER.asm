.model small
.stack 100h
     
.data
 a db 'Enter the Digit $'
 newline db 0Dh,0Ah,'$'
  b db 'In decimal it is $'

.code

main proc
   
   mov ax,@data
   mov ds,ax
   
   
   mov ah,9
   lea dx,a
   int 21h
   
   mov ah,1
   int 21h
   mov bl,al
   
   mov ah,9
   lea dx,newline
   int 21h
   
   mov ah,9
   lea dx,b
   int 21h
 
  
  mov ah,2
  mov dl,'1'
  int 21h
  
    
   sub bl,'A'
   
  
               
   mov ah,2
   
   mov dl,bl
   add dl,'0'
  int 21h            
               
               
 
      exit:
      
      mov ah,4Ch
      int 21h
      main endp

end main
     