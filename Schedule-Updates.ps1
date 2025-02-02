#Requires -RunAsAdministrator

param(
    [string]$TaskName = "Update Neversink Filters - Git Pull",
    [string]$RepoPath = (Get-Item $PSScriptRoot).FullName,
    [switch]$AtLogon,
    [TimeSpan]$Interval,
    [switch]$Force
)

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    throw "Git is not installed or not in PATH"
}

$gitRoot = $RepoPath
while (-not (Test-Path -Path (Join-Path $gitRoot ".git") -PathType Container)) {
    $gitRoot = Split-Path $gitRoot -Parent
    if (-not $gitRoot) {
        throw "Not a git repository (or any parent directories): .git not found"
    }
}

$action = New-ScheduledTaskAction -Execute "git.exe" `
    -Argument "pull" `
    -WorkingDirectory $gitRoot

$triggers = @()

if ($AtLogon) {
    $logonTrigger = New-ScheduledTaskTrigger -AtLogOn
    $logonTrigger.Delay = "PT1M"  # 1 minute delay after logon
    $triggers += $logonTrigger
}

if ($Interval) {
    $intervalTrigger = New-ScheduledTaskTrigger -Once -At (Get-Date) `
        -RepetitionInterval $Interval `
        -RepetitionDuration ([System.TimeSpan]::MaxValue)
    $triggers += $intervalTrigger
}

if (-not $triggers) {
    throw "You must specify at least one trigger type (-AtLogon or -Interval)"
}

$settings = New-ScheduledTaskSettingsSet `
    -AllowStartIfOnBatteries `
    -DontStopIfGoingOnBatteries `
    -StartWhenAvailable `
    -MultipleInstances Ignore `
    -RestartCount 3 `
    -RestartInterval (New-TimeSpan -Minutes 1) `
    -WakeToRun

$existingTask = Get-ScheduledTask -TaskName $TaskName -ErrorAction SilentlyContinue

if ($existingTask) {
    if (-not $Force) {
        $choice = Read-Host "Task '$TaskName' already exists. Overwrite? (Y/N)"
        if ($choice -ne 'Y') { exit }
    }
    Unregister-ScheduledTask -TaskName $TaskName -Confirm:$false
}

$principal = New-ScheduledTaskPrincipal `
    -UserId "$env:USERDOMAIN\$env:USERNAME" `
    -LogonType Interactive `
    -RunLevel Highest

$task = New-ScheduledTask `
    -Action $action `
    -Trigger $triggers `
    -Settings $settings `
    -Principal $principal `
    -Description "Persistent task created $(Get-Date)"

Register-ScheduledTask -TaskName $TaskName -InputObject $task | Out-Null

Write-Host "`nCreated persistent scheduled task '$TaskName'" -ForegroundColor Green
Write-Host "Repository: $gitRoot"

Write-Host "`nTriggers:" -ForegroundColor Cyan
$triggers | ForEach-Object { 
    if ($_.Repetition.Interval) {
        Write-Host "- Repeats every $($_.Repetition.Interval)"
    }
    else {
        Write-Host "- Runs at user logon (with 1 minute delay)"
    }
}

Write-Host "`nVerification command:" -ForegroundColor Yellow
Write-Host "Get-ScheduledTask -TaskName '$TaskName' | Format-List"