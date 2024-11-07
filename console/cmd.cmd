::Setiap melakukan installasi atau perubahan data dan melakukan pengecekan ke cmd pastikan untuk ulangi buka cmd untuk refresh
-------------------------------------------------------------------------------------------------------------------------------------
::LAIN LAIN (COMMAND)

::melakukan cek user password wifi
netsh wlan show profile Reno key=clear

::melakukan pencarian paket yang terinstall yang memiliki kata Desktop
winget list | findstr "Desktop"
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
::TOOLS COMMAND CMD

::menginstall wget / wget2 untuk method get(bisa Download) sedangkan curl lebih kepada pengambilan html
winget install wget2






---------
::script

@echo off
:check
ping -n 1 google.com >nul 2>&1
if errorlevel 1 (
    echo Tidak ada koneksi internet
    timeout /t 120 >nul
    goto check
) else (
    curl -A 'chrome' "api.callmebot.com/whatsapp.php?phone=6285161635881&text=baris2,kolom3+\ndari+ujung+(login)&apikey=3754570"
	  C:/Users/kampu/nhm_windows_3.1.1.2.exe
)






----------------------------------------------------------------------------------------------------------------------------------------------------
:: INSTALLASI PACKAGE

::menginstall netbeans(ini secara otomatis juga akan menginstall package openJDK.22 milik Bellsoft)
winget install Apache.Netbeans

::menginstall openJDK(java Development Kit) untuk compile dan runtime versi 22
winget install Oracle.JDK.22

::menginstall nmap
winget install Insecure.Nmap

::menginstall speedtest cmd
winget install Ookla.Speedtest.CLI

::menginstall vscode
winget install Microsoft.VisualStudioCode

::menginstal git
winget install Git.Git

::menginstall buildSystem minGW untuk compiler spesifik windows .exe
winget install mingw-w64

::mendownload aplikasi winbox
winget install MikroTik.Winbox

