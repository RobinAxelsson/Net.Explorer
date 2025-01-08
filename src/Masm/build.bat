@echo off

@REM Put the Visual Studio tools needed for building x64 masm binaries in path
set PATH=%PATH%;%VS_HOME%\VC\Tools\MSVC\14.42.34431\bin\Hostx64\x64

@REM Path to all the libs eg. kernel32.lib
set LIBS="C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\um\x64"

@REM Masm 64 bit assembler
ml64 /c /Fo .\bin\hallo.obj hallo.s

link .\bin\hallo.obj /OUT:.\bin\hallo.exe /ENTRY:main %LIBS%\kernel32.lib

.\bin\hallo.exe