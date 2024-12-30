# Net.Explorer

## ILASM & ILDASM

```shell
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

## Viewing native files


    
