@echo off
setlocal

mshta vbscript:Execute("n=InputBox(""������Ŀ��������ţ��磺23��"",""IP��ַ""):CreateObject(""Scripting.FileSystemObject"").OpenTextFile(""%temp%\ip.txt"",2,true).Write(n):close")
set /p IPNUM=<"%temp%\ip.txt"
del /q "%temp%\ip.txt" >nul 2>&1

mshta vbscript:Execute("t=InputBox(""�����뵹��ʱ���룩"",""�ػ�ʱ��""):CreateObject(""Scripting.FileSystemObject"").OpenTextFile(""%temp%\time.txt"",2,true).Write(t):close")
set /p SHUTTIME=<"%temp%\time.txt"
del /q "%temp%\time.txt" >nul 2>&1

shutdown /s /m \\192.168.45.1%IPNUM% /t %SHUTTIME% /f

mshta vbscript:Execute("n=InputBox(""������Ҫȡ��ta�ػ��Ľ�����س��������Ҫ����ִ������Դ˴���"",""��ʾ�����Ѿ�������ta""):CreateObject(""Scripting.FileSystemObject"").OpenTextFile(""%temp%\ip.txt"",2,true).Write(n):close")
shutdown /a /m \\192.168.45.1%IPNUM%
