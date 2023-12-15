#To python we go for the built in tkinter
import os
from subprocess import run
from art import * 

os.system("cls")
tprint("YOUTUBE-DL","emo")
tprint("by dayton daniels","emo")
print('Press ANY key to Continue') 
input()

def getUrl():
    os.system("cls")
    urlInput = input("Enter URL Below\n Make sure to use double quotation marks\n")
    if urlInput=="":
        getUrl()
    else:
        getFiletype(urlInput)
def getFiletype(url):
    validType = ["mp3","mp4","webm","flac"]
    fileInput = input("Enter file type below\nmp3\nflac\nmp4\nwebm\n")
    for i in validType:
        if fileInput==i:
            fileSort(i,url)
def fileSort(x,y):
    os.system("cls")
    fileName=""
    
    if x == "mp3":
        ydl_opts = "-x --audio-format mp3"
        downloadFile(y,ydl_opts)
    if x == "mp4":
        ydl_opts = "-f mp4"
        downloadFile(y,ydl_opts)
    if x == "webm":
        ydl_opts = "-f webm"
        downloadFile(y,ydl_opts)
    if x == "flac":
        ydl_opts = "-x --audio-format flac"
        downloadFile(y,ydl_opts)
def downloadFile(url,args):
    tprint("Calling youtube-dl.exe","rnd-small")
    os.system(f'{os.getcwd()}\\src\\youtube-dl.exe {url} {args} --output "%(uploader)s ! %(title)s.%(ext)s')
getUrl()