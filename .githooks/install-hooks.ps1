$ErrorActionPreference = "Stop"

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
  Write-Host "git not found; install git first." -ForegroundColor Yellow
  exit 1
}

if (-not (Test-Path ".git")) {
  Write-Host "No .git directory in current folder. Run 'git init' first." -ForegroundColor Yellow
  exit 1
}

git config core.hooksPath .githooks
Write-Host "Git hooks path set to .githooks" -ForegroundColor Green

