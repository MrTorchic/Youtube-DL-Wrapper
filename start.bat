@echo off




echo Welcome to Youtube-DL Wrapper
echo Made by Dayton Daniels
:: A 'Wrapper' made for ease of use when it comes to the youtube-dl library
:: This project is designed around the latest version of https://github.com/ytdl-patched, a patched version of youtube-dl
:: Once downloaded place the file in src as 'youtube-dl.exe'






:inputURL
set /P inputUrl="'Input your source URL': " || set "inputUrl="Invalid Value""
echo %inputUrl%
ping %inputUrl% || call:inputURL
goto:fileType
goto:eof

:fileType
set /P fileType="'Input file type, Ex: Video, Audio': " || set "fileType="
if [%fileType%]==[] call:fileType
goto:downloadFile
goto:eof


:downloadFile

if [%fileType%]==["Video"] set "-f mp4"
if [%fileType%]==["Audio"] set "-x --audio-format mp3"

echo "URL: %inputURL% File Type: %fileType% File Location: %fileLocation%"
set downloadInit1 = "./src/youtube-dl.exe %inputURL% %fileType%"

goto:eof
