@echo off
setlocal
cd %~dp0
dotnet run -c Release --project Hallo.Bench.csproj  -- --job short --runtimes net9.0
endlocal
