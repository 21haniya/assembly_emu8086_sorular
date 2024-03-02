

;C:\yeniklasor\dosyam.txt dosyasini olusturunuz, 
;dizi1='2,11,9,6' dizisindeki çift elemanlari 
;bulup bu elemanlari dizi2 dizisine aktariniz, 
;dizi2 elemanlarini dosyam.txt ye yaziniz


org 100h

mov si, 0
mov cx, 4
mov di, 0
 
dongu: 
 
mov dx,0
mov ax,0
mov dl,[dizi1+si]
mov al,dl
mov bl,2
div bl   ; sonuc al de tutulur
cmp ah,0 ;kalan 0 mi bakar cunku kalan ah a yazilir

je cift  ;jz de olabilirdi
jmp bitir

cift:
mov [dizi2+di],dl
inc di
jmp bitir
       
       
bitir:
inc si

loop dongu  

lea dx, klasoradi
mov ah, 39h
int 21h

lea dx, klasoradi
mov ah, 3Bh
int 21h

lea si, dosyayolu
mov dl, 00h
mov ah, 47h
int 21h

;dosya ac

lea dx, dosyaadi 
mov ah, 3Ch
int 21h
mov [fileHandle], ax 
 

;dosya yaz 
mov bx, [fileHandle]
mov dx, offset dizi2
mov cx, 2 
mov ah, 40h
int 21h  

;isaretci ayarla
mov al,0
mov bx, [fileHandle]
mov cx, 0
mov dx, 0
mov ah, 42h
int 21h

;dosyadan oku
mov ah, 3Eh 
mov bx, [fileHandle]
int 21h

mov ah, 3Eh 
mov bx, [fileHandle]
int 21h

ret  

klasoradi db 'C:\yeniklasor',0
dosyayolu db 64  dup(0)
dosyaadi db 'C:\yeniklasor\dosyam.txt', 0
fileHandle dw ?

dizi1 db 2,11,9,6 
dizi2 db 2 dup(0) 