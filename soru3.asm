
;sayilar= 10,20,30,40 dizisindeki 
;elemanlari sayilar2= 3,4,7,6 dizisindeki sayilara 
;bolen ve sadece kalanlari kalan dizisine yazan 
;8086 Assembly kodunu yaziniz.


org 100h


MOV CX,4
MOV SI,0

dongu:
MOV AX,0
MOV AL, [sayilar+SI]
MOV BL, [sayilar2+SI]
DIV BL
MOV [kalan+SI],AH
INC SI

LOOP dongu

ret 

sayilar db 10,20,30,40
sayilar2 db 3,4,7,6 

kalan db 4 dup(?)




