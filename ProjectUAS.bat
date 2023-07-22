@echo off
:login
cls
echo SELAMAT DATANG DI PROGRAM SEDERHANA SAYA!!
set x=YULFIA ASRININGTYAS
set y=1

set /p user=Masukkan username anda :
set /p pass=Masukkan password anda :

if %pass% == %y% goto menu
else %pass% goto login


:menu
cls
echo =============///\\\=================
echo ====================================
echo HALO SELAMAT DATANG %x% SILAHKAN..
echo Pilih menu :
echo [1.] Internet
echo [2.] Program Kalkulator sederhana
echo [3.] Turn off PC
echo ====================================
echo =============\\\///=================
set /p pilihan= Pilihan anda? :

if %pilihan% == 1 goto inet 
if %pilihan% == 2 goto kalk
if %pilihan% == 3 goto turn
else (
    echo pilihan anda tidak ada silahkan ulang kembali...
    pause
    goto menu
)



:inet
cls
echo =============///\\\=================
echo ====================================
echo Pilih menu :
echo [1.] facebook
echo [2.] instagram
echo [3.] youtube
echo [4.] kembali ke menu
echo ====================================
echo =============\\\///=================
set /p pilihan= Pilihan anda? :

if %pilihan% ==1 goto fb 
if %pilihan% ==2 goto ig
if %pilihan% ==3 goto youtube
if %pilihan% ==4 goto menu
else (
    echo pilihan anda tidak ada silahkan ulang kembali...
    pause
    goto inet
)
:fb
cls
start www.facebook.com
pause
goto inet
:ig
cls
start www.instagram.com
pause
goto inet
:youtube
cls
start www.youtube.com
pause
goto inet
rem ==============================================================================================

:kalk
cls
echo kalkulator sederhana
set /p x=Masukkan angka pertama  : 
set /p y=Masukkan angka ke dua   : 
set /p n=Pilih salah satu jenis(+,-,*,/)(tambah,kurang,kali,bagi)
set /a xy=%x%%n%%y%
echo -------------
echo %x%%n%%y%=%xy%
echo -------------
echo -------------
echo [1] kembali menggunakan kalkulator
echo [0] kembali ke menu 
echo -------------
set /p hu= pilihan anda..?
if %hu%==1 goto kalk
if %hu%==0 goto menu
rem =================================kkl========================================


rem =================================turn off========================================
:turn
cls
echo Pilih menu:
echo [1]. Shutdown
echo [2]. Restart
echo [0]. kembali ke Menu 
echo.

set /p hy=Masukkan pilihan Anda: 

REM Pemilihan menu
if %hy%==1 goto st
if %hy%==2 goto restart
if %hy%==0 goto menu (
) else (
    echo Pilihan tidak valid. Silakan coba lagi.
    pause
    goto turn
)

REM  untuk melakukan shutdown
:st
cls
echo Menjalankan perintah shutdown...
shutdown /s /t 0
goto turn

REM  untuk melakukan restart
:restart
cls
echo Menjalankan perintah restart...
shutdown /r /t 0
goto turn

pause