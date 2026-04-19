.model small
.stack 100h
.data      ; need for dta declear

a db 5 ; set default value  ; for small data db=define byte , we can also use dw = define word
b db ? ; emty value     

.code

main proc             ; procedure
     mov ax,@data
     mov ds,ax
     
     mov ah,1
     int 21h
     mov b,al      ; b input  
     
     
         
     mov ah,2
     mov dl,010    ; print new line
     int 21h                           
     
     
     mov dl,13          ; remove space
     int 21h 
     
     
     mov ah,2
     mov dl,a    ; print a ; here same problem print like emoji because here prit the ascii value of 5 , 
                 ; in aschii value 053 mean = 5 so we need to add more 48 in dl
     add dl,48
     int 21h
          
      
    
     mov ah,2
     mov dl,010    ; print new line 
     int 21h    
       
            
     mov dl,13          ; remove space
     int 21h     
          
     mov ah,2
     mov dl,b    ; print b
     int 21h
     
      
     mov ah, 4ch      ; exit
     int 21h

main endp
end main     