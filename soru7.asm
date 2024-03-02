
;C:\klasor2\dosyam.txt dosyasinin ismini
;dosyam2.txt haline donusturunuz
;Not: Klasor ve dosyayi siz olusturacaksiniz.

org 100h

;klasor olusturur
lea dx, klasoradi
mov ah, 39h
int 21h

;kontrol eder
lea dx, klasoradi ;varsdizin
mov ah, 3Bh
int 21h 

;uzerinde calisilan klasoru alir
lea si, dosyayolu   
mov dl, 00h  
mov ah, 47h
int 21h
;icin dosyayolu: klasor1 olur

    
;dosya olustur 
lea dx, dosyaadi 
mov cx, 0
mov ah, 3Ch
int 21h 
mov [fileHandle], ax 

;dosya kapatir
mov ah, 3Eh
mov bx, [fileHandle]
int 21h               
                 
;dosya ismini degistirir
lea dx, dosyaadi
lea di, yenidosyaadi
mov ah, 56h
int 21h 
mov [fileHandle], ax      

;dosyayi kapatir
mov ah, 3Eh
mov bx, [fileHandle]
int 21h


ret

klasoradi db 'C:\klasor1', 0 ;varsdizin db 'C:\klasor1', 0
dosyayolu db 64 dup(0)  
dosyaadi db 'C:klasor1\dosyamm.txt', 0  
yenidosyaadi db 'C:klasor1\dosyamm2.txt', 0   
fileHandle dw ?

end









