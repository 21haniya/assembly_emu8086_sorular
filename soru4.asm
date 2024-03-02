
;cumle='kelime eleme' dizisindeki 'e' 
;harfinden kaç tane olduðunu bulan ve bu 
;sayiyi 'esayisi' isimli degiskene aktaran 8086 
;Assembly kodunu yaziniz


org 100h

MOV SI, 0
MOV CX,12 
MOV BH, 'e'

dongu:

MOV AH, [cumle+SI]
CMP AH,BH
JE earttir
INC SI 
JCXZ bitir
LOOP dongu
 
 
earttir:  

INC esayisi
DEC CX 
JCXZ bitir
INC SI
JMP dongu
 
 
bitir:   

ret
cumle db 'kelime eleme'
esayisi db 0





