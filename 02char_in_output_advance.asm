.model small    ;also have tiny ,large, extra large
                                                                                             ; Register
.stack 100h     ;memoey in stack

.code                                                                                        ; ax = ah al          ; al reserve for input          big

                                                                                             ; bx = bh bl
                                                                                             
                                                                                             ; cx = ch cl
                                                                                             
                                                                                             ; dx = dh dl           ; dl reserve for output         smal
main proc          ; procedure (function)
        
    
    mov ah,1      ; simple char input function, ah =2 char output ah=9 string output
            
    int 21h              ; its call the uppor function                                                    ; input
    
    mov bl,al            ; when i input same thing its set in al , now move it al to bl                         
    
   
   
   ; after input get print new line
   
   
    mov ah,2
    mov dl,010      ; In ascii 010 mean new line , frist in dl set space then print space 
    int 21h
                                                  
                                                  
                                                  ;  Now if we run it we show that
                                                  ;  Input :g
                                                  ;  Output: g // problem is show extra space
                                                  ;  for remove this  space we need returen cratege in asii its value 013
                                                  
                                                  
    mov dl,013        ; remove space
    int 21h                                              
                                                    
                                                  
    
    mov ah,2
    mov dl,bl             ; output          ; in bl we already set input , here in dl set bl then print 
    int 21h                                 
    
    exit:
    
    mov ah,4ch
    int 21h               ; exit
    main endp

end main
    
    
    