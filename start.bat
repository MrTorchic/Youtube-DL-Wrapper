@echo off
cls


echo Welcome to Youtube-DL Wrapper
echo Made by Dayton Daniels
:: A 'Wrapper' made for ease of use when it comes to the youtube-dl library
:: This project is designed around the latest version of https://github.com/ytdl-patched, a patched version of youtube-dl
:: Once downloaded place the file in src as 'youtube-dl.exe'






:inputURL
echo "Enter your url:"
set /P inputUrl=""

goto:fileType
goto:eof

:fileType
cls
echo "Enter file type:"
echo 1:mp4 3:webm
echo 2:mp3 4:flac
echo ("1-------9)
choice /c 1234 /n /m "Enter the number of your choice: "
set errorlevel_value=%errorlevel%

if %errorlevel_value% equ 4 (
    call config.bat :flac %inputUrl%
) else if %errorlevel_value% equ 3 (
	call config.bat :webm %inputUrl%
) else if %errorlevel_value% equ 2 (
	call config.bat :mp3 %inputUrl%
) else if %errorlevel_value% equ 1 (
	call config.bat :mp4 %inputUrl%
)
