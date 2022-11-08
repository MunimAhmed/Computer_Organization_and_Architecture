.model small
.stack 100h
.data    
a dw ?,'$'   

.code    


main proc 
    
    mov ax,@data
    mov ds,ax  
    
    
    mov cx,19 
    mov bx,0
    mov bx,100
    mov a,0
    
    top:     
    mov dx,a
    
    add dx,bx
    mov a,dx

    sub bx,5
    loop top   
    
    
    exit: 
    mov ah,9
    lea dx,a
    int 21h
    mov ah,4ch
    int 21h
    
    main endp
end main