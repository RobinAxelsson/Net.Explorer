@echo off
setlocal

set PROGRAM=%*
set OUT=%_IL_PATH_%\out

if "%~1"=="" (
    echo Error: You need to input an *.il file
    echo Usage:
    echo build-il IL_FILE_NO_EXT              ^| Assemble and run il file
    echo clean                                ^| Clean output directory
    goto :end
)

:: empty OUT directory
if "%~1"=="clean" (
    rmdir /s /q %OUT%
    goto :end
)

if not exist %OUT% {
    mkdir %OUT%
}

:: runtime config is needed for Framework Dependent builds (pointing to which .NET version to use)
if not exist %OUT%\%PROGRAM%.runtimeconfig.json {
    copy %_IL_PATH_%\%PROGRAM%.runtimeconfig.json %OUT%
}

:: del %OUT%\%PROGRAM%.exe
:: Assemble IL
ilasm %_IL_PATH_%\%PROGRAM%.il /output:%OUT%\%PROGRAM%.dll && (
    :: Run assembly with dotnet if assembler process passed
    dotnet %OUT%\%PROGRAM%.dll
) || (
    echo no build: %_IL_PATH_%\%PROGRAM%.il
)


:end
endlocal
