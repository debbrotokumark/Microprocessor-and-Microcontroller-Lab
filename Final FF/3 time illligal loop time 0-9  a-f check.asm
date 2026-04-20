.model small
.stack 100h
      
      
.data 
 a db "Enter A HEX DIGIT : $"
 b db "In decimal it is : $"
 c db 0DH,0AH,"Do yu want to do it agin? y/n : $" 
 d db "Illegal char 0-9 / A-F  $"
 newline db 0DH,0AH,'$'     

.code

main proc
    
    mov ax,@data
    mov ds,ax 
    
    mov si,0
     
    loop_start:
       
       
     
      mov ah,9
      lea dx,a
      int 21h
      
    
    
      mov ah,1
      int 21h
      mov bl,al 
      
      mov ah,9
      lea dx,newline
      int 21h
       
      cmp bl,'0'
      jb L1
      
      cmp bl,'9'
      jle L2
      
      cmp bl,'A'
      jb L1
       
      cmp bl,'F'
      jle L3
      
         
      cmp bl,'a'
      jb L1
       
      cmp bl,'f'
      jle L4
      
     
     
     L1:
        mov ah,9
      lea dx,b
      int 21h
      
      mov ah,9
      lea dx,d
      int 21h
      
      inc si
      
      jmp  again_check 
      
      
      L2:
      mov ah,9
      lea dx,b
      int 21h
      
      
       mov ah,2
       mov dl,bl
       int 21h  
       
       
       jmp  again_check
       
       L3:
      mov ah,9
      lea dx,b
      int 21h
       
        
       mov ah,2
       mov dl,'1'
       int 21h
       
       
       
       mov dl,bl
       sub dl,'A'
       add dl,'0'
       int 21h
       
       jmp  again_check
    
       
       
       L4:
      mov ah,9
      lea dx,b
      int 21h
       
        
       mov ah,2
       mov dl,'1'
       int 21h
       
       
       
       mov dl,bl
       sub dl,'a'
       add dl,'0'
       int 21h
       
       jmp  again_check
    
       
      again_check:  
      
      cmp si,3
      je exit
      
      mov ah,9
      lea dx,c
      int 21h 
      
      mov ah,1
      int 21h
      mov bl,al 
      
         mov ah,9
      lea dx,newline
      int 21h
      
      cmp bl,'y'
      je loop_start
      
      cmp bl,'Y'
      je loop_start   
      
      
      cmp bl,'n'
      je exit
      
      cmp bl,'N'
      je exit
        
        
        
      exit:
      
      mov ah,4Ch
      int 21h
      main endp  
      
      

end main
     