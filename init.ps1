# run this file with two dots to init the variables
# > ". .\init.ps1"

# .\tools\ildasm.net9.x64.exe src\Console\bin\Debug\net9.0\Console.dll

function ilasm(){
    .\tools\ilasm.net9.x64.exe src\Console\il\Console.il /output:src\Console\bin\Release\net9.0\Console.dll
    run_console
}

function ildasm(){
    .\tools\ildasm.net9.x64.exe src\Console\bin\Release\net9.0\Console.dll /output:src\Console\il\Console.il
}

function run_console(){
    src\Console\bin\Release\net9.0\Console.exe @args
}

function build_console(){
    dotnet build .\src\Console\Console.csproj
}

function build_release(){
    dotnet build .\src\Console\Console.csproj -c Release
}