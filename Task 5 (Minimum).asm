.model small
.stack 100h
.data 
    arr db 54,55,56,57,53   
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov si, offset arr      
    mov cx, 4               
    
    
    mov bl, [si]           
    
L1:
    inc si                  
    cmp [si], bl           
    jge SkipUpdate          
    mov bl, [si]            
    
SkipUpdate:
    loop L1              

    
                
    mov dl, bl              
    mov ah, 2               
    int 21h                 


mov ah, 4ch             
int 21h                 

main endp 
end main 



    

             