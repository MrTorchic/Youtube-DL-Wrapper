@echo off
set url=%2
call%*
goto :eof
:mp4
    set args=%url:"=% -f mp4
    goto :download
:webm
    set args=%url:"=% -f webm
    goto :download
:mp3
    set args="%url:"=% -x --audio-format mp3"
    goto :download
:flac
    set args="%url:"=% -x --audio-format flac"
    goto :download
:download
	cls
	echo Downloading...
    set "downloadString=%~dp0src\youtube-dl.exe %args:"=%"
    call %downloadString:"=%
    if errorlevel 1 (
        echo Error occurred during download!
    ) else (
        echo Download successful!
    )
    goto :eof