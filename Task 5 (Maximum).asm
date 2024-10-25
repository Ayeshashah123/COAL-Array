.model small
.stack 100h
.data 
    arr db 8, 7, 6, 3, 4   
.code
main proc  

    mov ax, @data
    mov ds, ax
    
    mov si, offset arr      
    mov cx, 5               
    
    
    mov bl, [si]            
    
L1:
    inc si                  
    cmp [si], bl            
    jle SkipUpdate          
    mov bl, [si]            
    
SkipUpdate:
    loop L1              

   
    add bl, 48              
    mov dl, bl              
    mov ah, 2               
    int 21h                 


mov ah, 4ch             
int 21h                 

main endp 
end main
