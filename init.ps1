# run this file with two dots to init the variables
# > ". .\init.ps1"

$REP_ROOT=$PSScriptRoot

Set-Alias build-il $REP_ROOT\src\IL\build-il.bat
Set-Alias build-masm $REP_ROOT\src\Masm\build-masm.bat
Set-Alias run-hallo.bench $REP_ROOT\bench\Hallo.Bench\build.bat

function watch-il($file){
    watch-path "$REP_ROOT\src\IL" "$file.il" "$REP_ROOT\src\IL\build-il.bat $file"
}