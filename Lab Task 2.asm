.Model small
.stack 100h
.data    
sum dw ? ,'$'
.code 

main proc
             
    mov ax,@data
    mov ds,ax
    mov cx,12

    mov bx,1 
    mov sum,0    
    
    top:     
        add sum,bx
        add bx,4
        loop top
           
    exit:   
        lea dx,sum 
        mov ah,9
        int 21h
        
        mov ah,4ch
        int 21h
    
    main endp
end main