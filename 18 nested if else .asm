.model small
.stack 100h
     

.code  

.data 
a db 10,13 ,"Greater then 5$"   ; 10 for new line 13 for renove space
b db 10,13 ,"Less then 5$"
c db 10,13 ,"Equal 5$"

main proc
  
 
        
        mov ax,@data 
        mov ds,ax
        
        
        mov ah,1
        int 21h
        mov bl,al
        
        
             
        cmp bl,053 ; compare with 5
        je L1
        jg L2
        jmp L3  
        
        
        L1:
        mov ah,9
        lea dx,c
        int 21h
        jmp exit
        
         L2:
        mov ah,9
        lea dx,a
        int 21h
        jmp exit
         
        L3:
        mov ah,9
        lea dx,b
        int 21h
        jmp exit
       
       
      exit:
      
      mov ah,4Ch
      int 21h
      main endp

end main
     