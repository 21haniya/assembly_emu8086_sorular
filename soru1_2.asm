


;SORU
;sayilar=2,4,6,3 dizisindeki her bir elemani 1 
;arttirarak sayilar2 dizisine tersten aktaran kodu yaziniz

org 100h

LEA BX, sayilar
LEA BP, sayilar2

MOV CX, 4
MOV SI, 0
MOV DI, 3


dongu:

MOV AL, 0
MOV AL, [BX+SI]
INC AL
MOV [BP+DI],AL

INC SI
DEC DI

LOOP dongu

ret

sayilar db 2,4,6,3 
sayilar2 db 4 dup(?)

