.model small
.stack 100h
     
.data
 a db '?'
 b db 0Dh,0Ah,"The sum of $"
 c db " and $"
 d db " is $"
 


.code

main proc
   
   mov ax,@data
   mov ds,ax
       
          ; print '?'

   mov ah,2
   mov dl,a
   int 21h
          ; input first digit

   mov ah,1
   int 21h 
   sub al,'0'
   mov bl,al
  
           ; input second digit

   mov ah,1
   int 21h
   sub al,'0'
   mov cl,al
   
           ; print newline + "The sum of "

   mov ah,9
   lea dx,b
   int 21h 
   
      
           ; print first number

           
   mov ah,2
   mov dl,bl
   add dl,'0'
   int 21h   
   
            ; print " and "

     
       mov ah,9
   lea dx,c   
   int 21h   
   
           ; print second number

         
         
              
   mov ah,2
   mov dl,cl
   add dl,'0'
   int 21h 
            
                                   
                                   
               ; print " is "    
               
            mov ah,9
   lea dx,d   
   int 21h 
   


   
     ; calculate sum


   
   
   mov al,bl
   
   add al,cl
    

   
 
         ; print sum


   
   mov ah,2
   mov dl,al
   add dl,'0'
   int 21h
      
      
      
      
      exit:
      
      mov ah,4Ch
      int 21h
      main endp

end main
     