# Net.Explorer

## Tools

```shell
# ILASM & ILDASM
# Install nuget in temporary project folder
cd .\temp-project # with .csproj
dotnet add package runtime.win-x64.Microsoft.NETCore.ILAsm
dotnet add package runtime.win-x64.Microsoft.NETCore.ILDAsm

# get .exe from the packages folder
cd %USERPROFILE%\.nuget\packages

# For .NET framework look inside install folders for x86 and 64
# C:\Windows\Microsoft.NET\Framework64\v4.0.30319\ilasm.exe
# C:\Windows\Microsoft.NET\Framework\v4.0.30319\ilasm.exe

```

```shell
# IL Spy GUI
winget install --id=icsharpcode.ILSpy  -e
```
- vscode-solution-explorer
- vscode .NET insights
- https://sharplab.io/

### WinDbg
- https://apps.microsoft.com/detail/9pgjgd53tn86
```shell
winget install -e Microsoft.WinDbg
winget upgrade Microsoft.WinDbg
```

### DnSpyEx

https://github.com/dnSpyEx/dnSpy/releases


### Dumpbin
```shell
# Install MSVC tools for Visual Studio under Desktop Development with C++
# https://learn.microsoft.com/en-us/cpp/build/reference/dumpbin-options
# wrapper /dumpbin.bat
@echo off
C:\'Program Files'\'Microsoft Visual Studio'\2022\Preview\VC\Tools\MSVC\14.42.34431\bin\Hostx64\x86\dumpbin.exe %*

# https://www.youtube.com/watch?v=ZF9QTM87H4Q 
# RicochetTech dumpbin.exe, link /dump, and the Portable Executable Format (PE Format)
dumpbin.exe /? # help
dumpbin /HEADERS
dumpbin /DISASM

```

- Strings from sysinternals - extracting strings

- Ghidra

```shell

# Dependency Java Developer Kit
winget install -e --id Oracle.JDK.17
# install ghidra from web
```

- Benchmark.NET

```shell
dotnet new install BenchmarkDotNet.Templates

# bat script
@echo off

if "%1"=="" (
    echo "project file name required"
    exit /b
)

set framework=""
if not "%2" == "" (
    set framework=--framework %2
)

dotnet new benchmark -n %1 -o bench\%1 %framework%
dotnet sln add bench\%1\%1.csproj
```

## Build folders

### obj folder

![obj-folder](/images/obj-folder.png)

- apphost.exe: locates and starts the dotnet runtime and then loads the dll:s. Makes it easier to start from the app folder. It could locate the system dotnet, it could be self contained. But in /obj it is just a template file that is not linked.

## IL
    
### Debug il src Visual Studio (Native only)

- remove just my code
- put break point in IL file
- link the pdb file

You can only do native debugging what I can find, but you can use breakpoints in il source, SOS does not work in the console or imeediate window

### Dissassemble IL with IlSpy

- Can convert the IL back to C#

### Debug IL dnSpyEx




# IL-Resources

basic intro with op-codes
https://gist.github.com/KaanGaming/32492e2144c549b22d8eae516d550c8e

https://learn.microsoft.com/en-us/dotnet/framework/tools/sos-dll-sos-debugging-extension