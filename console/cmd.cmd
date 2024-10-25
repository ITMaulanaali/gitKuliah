::Setiap melakukan installasi atau perubahan data dan melakukan pengecekan ke cmd pastikan untuk ulangi buka cmd untuk refresh
-------------------------------------------------------------------------------------------------------------------------------------
::LAIN LAIN

::melakukan cek user password wifi
netsh wlan show profile Reno key=clear
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
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

::mendownload aplikasi winbox
winget install MikroTik.Winbox
