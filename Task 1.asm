.model small
.stack 100h
.data
array DB 50,51,52,53,54
.code
main Proc
    mov ax,@data
    mov ds,ax
    mov si,offset array
    mov cx,5
    
    l1:
    mov dl,[si]
    
    mov ah,2
    int 21h
    
    Inc si 
    loop l1
    
mov ah,4ch
int 21h
main endp
end main
    
