param(
    [string]$Compiler = "gcc",
    [switch]$StopOnError
)

$ErrorActionPreference = "Stop"
$repo = Resolve-Path (Join-Path $PSScriptRoot "..")
$buildDir = Join-Path $repo "build\bin"
$includeDir = Join-Path $repo "include"

New-Item -ItemType Directory -Path $buildDir -Force | Out-Null

if (-not (Get-Command $Compiler -ErrorAction SilentlyContinue)) {
    Write-Error "Compiler '$Compiler' was not found. Install GCC/MinGW-w64 or pass -Compiler with a valid compiler path."
}

$sources = Get-ChildItem -Path (Join-Path $repo "src") -Recurse -Filter "*.c" | Sort-Object FullName
$results = foreach ($source in $sources) {
    $compilerOutput = ""
    $relative = [IO.Path]::GetRelativePath((Join-Path $repo "src"), $source.FullName)
    $target = Join-Path $buildDir ([IO.Path]::ChangeExtension($relative, ".exe"))
    New-Item -ItemType Directory -Path (Split-Path $target -Parent) -Force | Out-Null

    $args = @("-std=gnu11", "-Wall", "-Wextra", "-I$includeDir", $source.FullName, "-lm", "-o", $target)
    & $Compiler @args 2>&1 | ForEach-Object { $compilerOutput = "$compilerOutput`n$_" }
    $ok = $LASTEXITCODE -eq 0

    if (-not $ok -and $StopOnError) {
        throw "Failed to build $relative"
    }

    [PSCustomObject]@{
        Source = $relative
        Status = if ($ok) { "ok" } else { "failed" }
        Output = ($compilerOutput -replace "^\s+", "").Trim()
    }
}

$results | Select-Object Source, Status | Format-Table -AutoSize

$failed = @($results | Where-Object Status -eq "failed")
if ($failed.Count -gt 0) {
    Write-Host ""
    Write-Host "Failures:" -ForegroundColor Yellow
    $failed | ForEach-Object {
        Write-Host "== $($_.Source) =="
        Write-Host $_.Output
    }
    exit 1
}

Write-Host "Built $($results.Count) programs into $buildDir"
