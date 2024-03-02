
;SORU: Kullanicidan alacagi 5 karakteri, (11,22) 
;konumundan baslayarak ikiser ikiser ekrana 
;yazdiran 8086 Assembly kodunu yaziniz


org 100h 

MOV CX,5 
mov ah,02h ; imlec pozisyonunu ayarlama
mov dh, 11h ;satir
mov dl, 22h ;sutun
mov bh, 0 
int 10h 

dongu: 

PUSH CX
MOV AH,00h
int 16h ; klavyeden veri al 
 

MOV AH,0Ah ; imlec karakter yazma
MOV BH,0 ;AL de karakter gorunecek
MOV CX,2 ; karakteri 2 kez yazsin
int 10h                           


MOV AH,03h ; imlec pozisyon okuma
int 10h ; DL de sutun degeri var  


MOV AH, 02h ;imlec pozisyon ayarlama
INC DL
INC DL 
int 10h                         


POP CX  

loop dongu 
ret





