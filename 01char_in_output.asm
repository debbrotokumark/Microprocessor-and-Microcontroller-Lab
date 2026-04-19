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
    
    
    mov ah,2
    
    mov dl,bl
    
    int 21h
    
    exit:
    
    mov ah,4ch
    int 21h               ; exit
    main endp

end main
    
    
    