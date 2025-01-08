@echo off
setlocal

set TOOL_PATH=%~dp0tools
set PATH=%PATH%%TOOL_PATH%;

if "%~1"=="" (
    echo Usage:
    echo build-il IL_FILE_NO_EXT              ^| Assemble and run il file
    echo clean                                ^| Clean output directory
    echo
    echo Same folder as script is requried
    goto :end
)

if "%~1"=="clean" (
    rmdir /s /q %~dp0out
    goto :end
)

set program=%*

if not exist %~dp0out (
    mkdir %~dp0out
)

if not exist .%~dp0%program%.runtimeconfig.json (
    copy %program%.runtimeconfig.json .\out\
)

ilasm %~dp0%program%.il /output:%~dp0\%program%.exe

move /y %~dp0%program%.exe .\out\

dotnet %~dp0out\%program%.exe

:end
endlocal