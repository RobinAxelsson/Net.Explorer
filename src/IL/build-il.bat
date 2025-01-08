@echo off
setlocal

set PROGRAM=%*
set SRC=%~dp0
set TOOLS=%~dp0tools
set OUT=%~dp0out

if "%~1"=="" (
    echo Error: You need to input an argument
    echo Usage:
    echo build-il IL_FILE_NO_EXT              ^| Assemble and run il file
    echo clean                                ^| Clean output directory
    goto :end
)

:: empty directory
rmdir /s /q %OUT%
if "%~1"=="clean" (
    goto :end
)

:: Reset /out
mkdir %OUT%
copy %SRC%%PROGRAM%.runtimeconfig.json %OUT%

:: Assemble IL
%TOOLS%\ilasm %SRC%\%PROGRAM%.il /output:%OUT%\%PROGRAM%.exe

dotnet %OUT%\%PROGRAM%.exe

:end
endlocal