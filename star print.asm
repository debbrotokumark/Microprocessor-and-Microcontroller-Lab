.model small
.stack 100h
     
 .data
 
 box db 10 DUP("**********",0Dh,0AH),'$'
 
 ; count DUP(value)
.code

main proc
    
    
    mov ax,@data
    mov ds,ax
    
    
    mov ah,9
    lea dx,box
    int 21h
  
      
      
      exit:
      
      mov ah,4Ch
      int 21h
      main endp

end main
     