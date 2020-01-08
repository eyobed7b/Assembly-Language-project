 
 
 
 
 
 
;this program performs ascending order operation 
;for three numbers 

 .model small ; we give 64k memory size for data and code segment
 .stack 100h   ; this memory size for stack
 .data
  head db "=================ASCENDING OF THREE NUMBERS ==============$" ;declaring variables
  m1 db 10,13,"ENTER THE FIRST NUMBER:$"
  m2 db 10,13,"ENTER THE SECOND NUMBER:$"
  m3 db 10,13,"ENTER THE THIRD NUMBER:$" 
  new db 10,13," $"  ; this is for new line 
  temp dw 0  ; we declare variable temp and we intializes it 0
  
  
  
  .code 
       ;this is the begginning code segment
       ;program execution begins at end main
       ;and the procedurte begin at main proc
       ;and end at main endp
  main proc
    
     mov ax,@data ; declaring variables 
     mov ds,ax    ;and set on the ds stack segment
      
      lea dx,head   ;this is out put of head
      mov ah,9h
      int 21h   
      
      
             lea dx,m1 ;this tells for the user what to do the first message
             mov ah,9h
             int 21h
                  
                  mov ah,1h ;accepting single character
                  int 21h     
                  mov cx,ax
                  
                  
                  lea dx,m2  ;this displays m2
                  mov ah,9h
                  int 21h
                  
                  mov ah,1h  ;again accepting another character
                  int 21h 
                  mov bx,ax
                  
                  
                     lea dx,m3  ;this displays m3
                     mov ah,9h
                     int 21h
                  
                  mov ah,1h   ;again accepting the 3rd character
                  int 21h
                  mov temp,ax
                    
                  cmp cx,bx   ; comparision values at register cx and bx
                       jg swap      ;it checks the flag register if it is true it jumps to label swap
                       jmp check    ;else it will jump to label check
                      
                   swap:  ;this is the first label to swap the first number and
                           ;and second number if first>second
                       mov dx,cx
                       mov cx,bx
                       mov bx,dx
                       
                  check:
                         cmp bx,temp ;and again second with third 
                         jg swap2
                         jmp last
                         
                  swap2:
                       mov dx,bx
                       mov bx,temp
                       mov temp,dx
                    last:
                       cmp cx,bx
                       jg swap   
                       
                    Display:
                            
                             lea dx,new; new line
                             mov ah,9h
                             int 21h
                         mov dx,cx   ;display the first number after orderd
                         mov ah,2h
                         int 21h  
                         
                         
                            lea dx,new
                             mov ah,9h
                             int 21h
                         mov dx,bx  ;  display the second num after orderd
                         mov ah,2h
                         int 21h
                         
                             lea dx,new
                             mov ah,9h
                             int 21h
                         mov dx,temp ; display the third num after swap
                         mov ah,2h
                         int 21h
                mov ah,4ch ; exit program
                int 21h
   main endp ; the end of main procedure
  end main
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
          
          