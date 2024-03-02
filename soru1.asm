
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

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



;MOV AL, [BX]
;INC AL
;MOV [BP+3],AL 


;MOV AL, [BX+1]
;INC AL
;MOV [BP+2],AL


;MOV AL, [BX+2]
;INC AL
;MOV [BP+1],AL 



;MOV AL, [BX+3]
;INC AL
;MOV [BP],AL





ret

sayilar db 2,4,6,3 
sayilar2 db 4 dup(?)

