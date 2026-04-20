.model small
.stack 100h
     

.data
    
    a db 10 DUP("**********",0DH,0AH),"$"
   
                                     
     
.code                                            

main proc
      
      mov ax,@data
      mov ds,ax
      
      mov ah,9
      lea dx,a ; init print
      int 21h
      
      
      exit:
      
      mov ah,4Ch
      int 21h
      main endp

end main
     