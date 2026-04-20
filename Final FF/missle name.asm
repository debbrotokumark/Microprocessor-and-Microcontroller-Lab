.model small
.stack 100h
     

.data
    
    a db 5 DUP("***********",0DH,0AH),"$"
   
    b db  "****","$" 
    
    c db '?' 
    
    d db 0DH,0AH,'$'                               
     
.code                                            

main proc
      
      mov ax,@data
      mov ds,ax
           
      mov ah,2
      mov dl,c  ; print ?
      int 21h
      
      mov ah,1
      int 21h     ; bl input
      mov bl,al
      
      mov ah,1
      int 21h     ; bh input
      mov bh,al
      
      mov ah,1
      int 21h     ; cl input
      mov cl,al                
      
      mov ah,9
      lea dx,d  ;print line
      int 21h
      
         
     
      
      
      mov ah,9
      lea dx,a  ;print 5 time
      int 21h 
      
         mov ah,9
      lea dx,b  ;print 1 time
      int 21h 
      
      
      mov ah,2
      mov dl,bl ;PRINT BL
      int 21h 
       
       mov ah,2
      mov dl,bh    ;PRINT BH
      int 21h 
      
      
       mov ah,2
      mov dl,cl     ;PRINT CL
       int 21h 
      
      
      mov ah,9
      lea dx,b  ;print 1 time
      int 21h 
      
          mov ah,9
      lea dx,d  ;print line
      int 21h
             
      
      mov ah,9
      lea dx,a  ;print 5 time
      int 21h 
      

            
      
  
      
      exit:
      
      mov ah,4Ch
      int 21h
      main endp

end main
     