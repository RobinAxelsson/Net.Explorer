param(
    [string]$path,
    [string]$filter,
    [string]$command
)

# Help text
function Show-Help {
    Write-Host "Usage: watch -path <path> -filter <fileFilter> -command <command or scriptPath>"
    Write-Host "Example: watch -path C:\path\to\watch -filter *.cs -command 'build.ps1'"
    exit 1
}

# Validate parameters
if (-not $path -or -not $filter -or -not $command) {
    Write-Host "Error: Missing required parameters."
    Show-Help
}

if (-not (Test-Path $path)) {
    Write-Host "Error: The specified path does not exist."
    exit 1
}

# Create FileSystemWatcher
$watcher = New-Object System.IO.FileSystemWatcher
$watcher.Path = $path
$watcher.Filter = $filter
$watcher.NotifyFilter = [System.IO.NotifyFilters]::LastWrite

# Action to perform when a file is changed
$block=$false
$action = {
    param($source, $event)

    # Save event get triggerd twice so we skip the second one by toggeling block
    # there is a bug if it is not triggered twice
    if(!$block){
        Write-Host "File changed: $($event.FullPath)"

        try {
            $output = & powershell -Command $command | Out-String
            Write-Host $output
        }
        catch {
            Write-Host "Error executing script: $_"
        }

        $block
    }

    $block=!$block
}
# Register event handler
$registered = Register-ObjectEvent -InputObject $watcher -EventName Changed -Action $action

# Start watching
$watcher.EnableRaisingEvents = $true
Write-Host "Watching for changes in $path with filter '$filter'. Press Ctrl+C to stop."

# Keep the script running
while ($true) {
    Start-Sleep -Seconds 1
}
