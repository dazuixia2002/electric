@echo off
if "%1"=="h" goto begin
start mshta vbscript:createobject("wscript.shell").run("""%~nx0"" h",0)(window.close)&&exit
:begin
xcopy E:\Dropbox\electric\html E:\Dropbox\electric\extra\Re-index\all_htmls /s /e /i /y
del /f /s /q E:\Dropbox\electric\extra\Re-index\all_htmls\contents.html
del /f /s /q E:\Dropbox\electric\extra\Re-index\all_htmls\index.html
del /f /s /q E:\Dropbox\electric\extra\Re-index\all_htmls\denied.html
start "" "C:\Program Files (x86)\Softany\WinCHM\winchm.exe"