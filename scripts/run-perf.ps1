#!/usr/bin/env pwsh

$project = Join-Path $env:_ROOT_PATH_ "perf" $args[0] ${args[0]}.csproj
dotnet run -c Release --project $project  -- --job short --runtimes net9.0
