@echo off

set PATH=%PATH%;%VS_HOME%\VC\Tools\MSVC\14.42.34431\bin\Hostx64\x64

set TOOLS="%~dp0tools"
set LIBS="%~dp0libs"
set OUT="%~dp0out"
set PROGRAM=hallo

if "%~1"=="clean" (
    rmdir /s /q %OUT%
    goto :end
)

if exist %OUT% (
    rmdir /s /q %OUT%
)

mkdir %OUT%

:: Tools copied from C:\Program Files\Microsoft Visual Studio\2022\Preview\VC\Tools\MSVC\14.42.34431\bin\Hostx64\x64

:: Masm 64 bit assembler
%TOOLS%\ml64 /c /Fo %OUT%\%PROGRAM%.o %PROGRAM%.s

:: does not give much output - maybe because it is copied
%TOOLS%\link %OUT%\%PROGRAM%.o /OUT:%OUT%\%PROGRAM%.exe /ENTRY:main %LIBS%\kernel32.lib

%OUT%\%PROGRAM%.exe

:end