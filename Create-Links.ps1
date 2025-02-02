#Requires -RunAsAdministrator

param(
    [string]$SourceRepoPath = ".\",
    [string]$PoeFilterPath = "$env:USERPROFILE\Documents\My Games\Path of Exile 2\",
    [switch]$UseHardLinks
)

if (-not (Test-Path -Path $SourceRepoPath)) {
    Write-Host "Source repository path not found: $SourceRepoPath" -ForegroundColor Red
    exit
}

if (-not (Test-Path -Path $PoeFilterPath)) {
    Write-Host "POE2 filter directory not found: $PoeFilterPath" -ForegroundColor Red
    exit
}

if ($UseHardLinks) {
    $sourceRoot = (Get-Item $SourceRepoPath).Root
    $destRoot = (Get-Item $PoeFilterPath).Root
    
    if ($sourceRoot -ne $destRoot) {
        Write-Host "Hard links require both directories to be on the same volume." -ForegroundColor Red
        Write-Host "Source root: $sourceRoot" -ForegroundColor Red
        Write-Host "Destination root: $destRoot" -ForegroundColor Red
        exit
    }
}
else { # sanity check
    $isAdmin = ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
    if (-not $isAdmin) {
        Write-Host "Symbolic links require administrator privileges. Please run the script as Administrator." -ForegroundColor Red
        exit
    }
}

$filterFiles = Get-ChildItem -Path $SourceRepoPath -Filter *.filter

if ($filterFiles.Count -eq 0) {
    Write-Host "No .filter files found in the source repository." -ForegroundColor Yellow
    exit
}

foreach ($file in $filterFiles) {
    $targetPath = Join-Path -Path $PoeFilterPath -ChildPath $file.Name
    $linkType = if ($UseHardLinks) { "hard" } else { "symbolic" }
    
    if (Test-Path -Path $targetPath) {
        Write-Host "Skipping existing file: $($file.Name)" -ForegroundColor Yellow
        continue
    }

    try {
        if ($UseHardLinks) {
            New-Item -ItemType HardLink -Path $targetPath -Value $file.FullName
        }
        else {
            New-Item -ItemType SymbolicLink -Path $targetPath -Target $file.FullName
        }
        Write-Host "Created $linkType link for: $($file.Name)" -ForegroundColor Green
    }
    catch {
        Write-Host "Failed to create $linkType link for: $($file.Name)" -ForegroundColor Red
        Write-Host "Error: $_" -ForegroundColor Red
    }
}

Write-Host "`nLink creation process completed." -ForegroundColor Cyan