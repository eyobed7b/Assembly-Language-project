.model small
.stack 100h
.data 
 ms db 10,10,13, "1 Dollar to birr $"
 ms2 db  10,10,13,"2 Euro to birr $"    
 ms3 db 10,10,13, "3 Drham to birr $"  
 ms4 db 10,10,13,"4 yen to birr $" 
 ms5 db 10,10,13, "5 shiling to birr $"   
 ms6 db 10,10,13, "7 exit$"
 ms7 db 10,10,13, "6 more information"

 
 ans db 10,10,13, "Ethiopian Birr = $" 
 
 info db 10,10,13,"1 dollar = 29 birr $"
 info2 db 10,10,13,"1 drham = 32 birr $"   
 info3 db 10,10,13,"1 yen = 32 birr $"
 info4 db 10,10,13,"1 shiling = 32 birr $"  
 euro_am db 10,10,13, "insert the amount of euro $" 
dollar_am db 10,10,13, "insert the amount of dollar $"  

shiling_am db 10,10,13,"Insert the amount of shiling $"
yen_am db 10,10,13,"Insert the amount of yen $" 
drham_am db 10,10,13, "Insert the amount of drham $"   
question db 10,10,13, "Do you want to go to the menu (1/0) $"                                                
                           

no db '?' 
amont dw ?  
ansb dw  ?

 .code 
 
 




 project proc
 mov Ax,@data 
 mov ds,ax
    

    top: 
     
 lea dx,ms
 mov ah,09h
 int 21h
 
 lea dx,ms2
 mov ah,09h
 int 21h
 
 lea dx,ms3
 mov ah,09h
 int 21h
 
 lea dx,ms4
 mov ah,09h
 int 21h
 
 lea dx,ms5
 mov ah,09h
 int 21h  
     
   lea dx,ms7
 mov ah,09h
 int 21h    
 
  lea dx,ms6
 mov ah,09h
 int 21h    
        

 
 
 
   mov ah,1
 int 21h
mov no,al
   
  
 
 
cmp no ,'1'
   je dollar
  
    
   
 cmp no,'2'
   je euro  
   
   cmp no ,'3'
   je drham
   
  cmp no,'4'
  je yen
  
  cmp no,'5'
  je shiling  
  
  cmp no,'6'
  
  je infor 
  
  cmp no,'7'
  
  je endss
  
 
  
  

    
  

 
            dollar:
 
  dollar_func proc NEAR
         lea dx,dollar_am
         mov ah,09h
         int 21h 
 
         mov ah,1h
         int 21h
      
   
  
         sub ax,30h
    

 
         mov cx ,28

         mul cx   
  
         add ax,48 
  
         mov ansb, ax 
    
         lea dx,ans
   
         mov ah,09h
         int 21h
   
   
   
         mov ax,ansb 
 
  
         mov dx,ax
  
         mov ah,2h
         int 21h
  
             lea dx,question
    mov ah,09h
    int 21h
         
         mov ah, 1h
         int 21h
         
         mov no,al
         
         cmp no,'1'
         je top
         jne endss
  
 dollar_func endp 
             
             yen:
      yen_func proc NEAR
            lea dx,yen_am
            mov ah,09h
            int 21h 
 
            mov ah,1h
            int 21h
      
   
  
            sub ax,30h
    

 
            mov cx ,28

            mul cx   
  
            add ax,48 
  
            mov ansb, ax 
    
            lea dx,ans
   
            mov ah,9h
            int 21h
   
   
            mov ax,ansb 
 
  
            mov dx,ax
  
            mov ah,2h
            int 21h 
            
              lea dx,question
    mov ah,09h
    int 21h
         
         mov ah, 1h
         int 21h
         
         mov no,al
         
         cmp no,'1'
         je top
         jne endss
 
 yen_func endp
    
    
          shiling:
 shiling_func proc NEAR
          lea dx,shiling_am
          mov ah,09h
          int 21h 
 
          mov ah,1h
          int 21h
      
   
  
          sub ax,30h
    
          mov cx ,6

          mul cx   
  
          add ax,48 
  
          mov ansb, ax 
    
          lea dx,ans
   
          mov ah,09h
          int 21h
   
   
   
          mov ax,ansb 
 
  
          mov dx,ax
  
          mov ah,2h
          int 21h
           
              lea dx,question
    mov ah,09h
    int 21h
         
         mov ah, 1h
         int 21h
         
         mov no,al
         
         cmp no,'1'
         je top
         jne endss           
                      
 shiling_func endp    
          
          
          drham:
 drham_func proc 
         lea dx,drham_am
         mov ah,09h
         int 21h 
 
         mov ah,1h
         int 21h
      
   
  
         sub ax,30h
    

 
         mov cx ,3

         mul cx   
  
         add ax,48 
  
         mov ansb, ax 
    
         lea dx,ans
   
         mov ah,09h
         int 21h
   
   
   
         mov ax,ansb 
 
  
         mov dx,ax
  
         mov ah,2h
         int 21h 
         
           lea dx,question
    mov ah,09h
    int 21h
         
         mov ah, 1h
         int 21h
         
         mov no,al
         
         cmp no,'1'
         je top
         jne endss
  drham_func endp
        
      euro:  
 euro_func proc  

         lea dx,euro_am
         mov ah,09h
         int 21h 
 
         mov ah,1h
         int 21h
      
   
  
         sub ax,30h
    

 
         mov cx ,35

         mul cx   
  
         add ax,48 
  
         mov ansb, ax 
    
         lea dx,ans
   
         mov ah,09h
         int 21h
   
   
   
         mov ax,ansb 
 
  
         mov dx,ax
  
         mov ah,2h
         int 21h  
         
            lea dx,question
    mov ah,09h
    int 21h
         
         mov ah, 1h
         int 21h
         
         mov no,al
         
         cmp no,'1'
         je top
         jne endss
 
 euro_func endp 
          infor:
 info_func proc NEAR
    lea dx,info
    mov ah,09h
    int 21h
     
     lea dx,info2
    mov ah,09h
    int 21h
    
     lea dx,info3
    mov ah,09h
    int 21h
    
     lea dx,info4
    mov ah,09h
    int 21h
         
         lea dx,question
    mov ah,09h
    int 21h
         
         mov ah, 1h
         int 21h
         
         mov no,al
         
         cmp no,'1'
         je top
         jne endss
         
     
info_func endp
                
         
     display proc NEAR
        
        mov al,ans
        mov ah,ans
        
        sub al,30h
        sub ah,30h
        
        mov dl,al
        mov dh,ah
        
        mov ah,2h
        int 21h
    
  
  
  endss:
 mov ah, 4ch
 int 21h
  

  
    

  
    