@echo off
setlocal

mshta vbscript:Execute("n=InputBox(""请输入目标计算机编号（如：23）"",""IP地址""):CreateObject(""Scripting.FileSystemObject"").OpenTextFile(""%temp%\ip.txt"",2,true).Write(n):close")
set /p IPNUM=<"%temp%\ip.txt"
del /q "%temp%\ip.txt" >nul 2>&1

mshta vbscript:Execute("t=InputBox(""请输入倒计时（秒）"",""关机时间""):CreateObject(""Scripting.FileSystemObject"").OpenTextFile(""%temp%\time.txt"",2,true).Write(t):close")
set /p SHUTTIME=<"%temp%\time.txt"
del /q "%temp%\time.txt" >nul 2>&1

shutdown /s /m \\192.168.45.1%IPNUM% /t %SHUTTIME% /f

mshta vbscript:Execute("n=InputBox(""若想需要取消ta关机的进程请回车，如果需要继续执行请忽略此窗口"",""提示：你已经操作了ta""):CreateObject(""Scripting.FileSystemObject"").OpenTextFile(""%temp%\ip.txt"",2,true).Write(n):close")
shutdown /a /m \\192.168.45.1%IPNUM%
