#!/usr/bin/env pwsh

# run this file with two dots to init the variables
# > ". .\init.ps1"

function AddDirToPath($dir){
    $fullDir = Join-Path $PSScriptRoot $dir
    
    if (-not ($env:Path -split $pathSep -contains $fullDir)) {
        $env:Path += [System.IO.Path]::PathSeparator + $fullDir
    }
}

AddDirToPath "scripts"
AddDirToPath "tools"
$env:_ROOT_PATH_ = $PSScriptRoot
$env:_REPO_NAME_ = "Net.Explorer"
$env:_IL_PATH_ = Join-Path $env:_ROOT_PATH_ "src" "IL"