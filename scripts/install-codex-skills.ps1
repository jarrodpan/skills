[CmdletBinding()]
param(
    [string]$TargetRoot,
    [switch]$Force,
    [ValidateSet(''Copy'',''Symlink'')]
    [string]$Mode = ''Copy''
)

$ErrorActionPreference = ''Stop''

$repoRoot = Split-Path -Parent $PSScriptRoot
if (-not $TargetRoot) {
    if ($env:CODEX_HOME) {
        $TargetRoot = Join-Path $env:CODEX_HOME ''skills''
    }
    else {
        $TargetRoot = Join-Path $HOME ''.codex\skills''
    }
}

$targetRoot = [System.IO.Path]::GetFullPath($TargetRoot)
New-Item -ItemType Directory -Path $targetRoot -Force | Out-Null

$skillDirs = Get-ChildItem -Path $repoRoot -Directory |
    Where-Object { Test-Path (Join-Path $_.FullName ''SKILL.md'') }

if (-not $skillDirs) {
    throw ''No skill folders found in repository root.''
}

foreach ($skillDir in $skillDirs) {
    $destination = Join-Path $targetRoot $skillDir.Name

    if (Test-Path $destination) {
        if (-not $Force) {
            Write-Host "Skip existing skill: $($skillDir.Name)"
            continue
        }

        Remove-Item -LiteralPath $destination -Recurse -Force
    }

    if ($Mode -eq ''Symlink'') {
        New-Item -ItemType SymbolicLink -Path $destination -Target $skillDir.FullName | Out-Null
    }
    else {
        Copy-Item -Path $skillDir.FullName -Destination $destination -Recurse
    }

    Write-Host "Installed: $($skillDir.Name)"
}

Write-Host "Codex skills installed to: $targetRoot"
