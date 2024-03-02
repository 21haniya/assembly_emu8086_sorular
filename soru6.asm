

;Kullanicidan alacagi 5 karakteri, (10,5) 
;konumundan baslayarak her karakterden 3 tane, eðer 
;karakterler ayni ise yan yana, 
;farkli ise 5. sutunu bozmadan alt alta yazdiran 
;8086 Assembly kodunu yaziniz
;(Stil: arka plan cam gobegi karakterler siyah)


org 100h 


mov ah,02h ; imlec pozisyonunu ayarlama
mov dh, 10h ;satir
mov dl, 5h ;sutun
mov bh, 0 
int 10h  


MOV AH,00h
int 16h ; klavyeden veri al 
MOV temp, AL 
 

MOV AH,09h ; imlec karakter yazma
MOV BH,0 ;AL de karakter gorunecek
MOV CX,3 ; karakteri 3 kez yazsin
MOV BL, 00110000b
int 10h        


MOV AH,03h ; imlec pozisyon okuma
int 10h ; DH satir, DL de sutun degeri var


MOV CX,4  


don:   

JCXZ bitir
PUSH CX   


MOV AH,00h
int 16h ; klavyeden veri al


CMP temp, AL
JE ayni 


MOV temp, AL   


MOV AH,03h ; imlec pozisyon okuma
int 10h ; DH satir, DL de sutun degeri var


MOV AH, 02h ;imlec pozisyon ayarlama
MOV DL, 5h ;farkliysa sutun ayni kalacak satir artacak asagi inecek
INC DH
int 10h


MOV AH,09h ; imlec karakter yazma
MOV BH,0 ;AL de karakter gorunecek
MOV CX,3 ; karakteri 3 kez yazsin
MOV BL, 00110000b
int 10h 


jmp devam 

ayni: 

MOV AH,03h ; imlec pozisyon okuma
int 10h ; DH satir, DL de sutun degeri var


MOV AH, 02h ;imlec pozisyon ayarlama
INC DL
INC DL
INC DL
int 10h


MOV AH,09h ; imlec karakter yazma
MOV BH,0 ;AL de karakter gorunecek
MOV CX,3 ; karakteri 3 kez yazsin
MOV BL, 00110000b
int 10h 


devam:
POP CX

loop don 

bitir:

ret
temp db 0