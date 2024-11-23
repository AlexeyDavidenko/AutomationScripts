@echo off
:: Clear contents of the folder D:\Nod32_Update_Archive\
echo Clearing contents from D:\Nod32_Update_Archive...
del /f /q "D:\Nod32_Update_Archive\*"
rd /s /q "D:\Nod32_Update_Archive\"
mkdir "D:\Nod32_Update_Archive\"

:: Download file using wget (replace <URL> with the actual download link)
echo Downloading update file to D:\Nod32_Update_Archive\...
"D:\wget\wget.exe" -d -c "https://uzsmart.ru/yangiliklar/offline_update_eav.zip" --no-check-certificate -P D:\Nod32_Update_Archive

:: Unpack downloaded file using WinRAR
echo Unpacking the file to D:\Nod32...
"%ProgramFiles%\WinRAR\winrar.exe" x -o+ D:\Nod32_Update_Archive\offline_update_eav.zip *.* D:\NOD32

:: Close the command prompt window after completion
exit