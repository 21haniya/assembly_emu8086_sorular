
;sayilar= 10,20,30,40 dizisindeki 
;elemanlarin her birinin sadece son 4 bitindeki 
;degerleri alip bunlari sayilar2 dizisine yazan 8086 
;Assembly kodunu yaziniz
;Orn: 
;10= 0000 1010 › 1010 (A) olacak
;20= 0001 0100› 0100 (4) olacak 
;30= 0001 1110 › 1110 (E) olacak 
;40= 0010 1000 › 1000 (8) olacak 

org 100h

MOV CX,4
MOV SI, 0
MOV AL, 00001111b  ; 0F

dongu:
MOV BL, [sayilar+SI]
AND BL, AL
MOV [sayilar2+SI], BL
INC SI

LOOP dongu



ret

sayilar db 10,20,30,40 
sayilar2 db 4 dup(?)








