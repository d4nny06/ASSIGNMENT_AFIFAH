$ErrorActionPreference = "Stop"

$repoUrl = "https://github.com/d4nny06/ASSIGNMENT_AFIFAH.git"
$projectPath = (Get-Location).Path.Replace("\", "/")

git config --global --add safe.directory $projectPath

if (-not (Test-Path ".git")) {
  git init
}

git config user.name "NUR AFIFAH HANNANI HILMI"
git config user.email "2025116765@student.uitm.edu.my"
git branch -M main

if (-not (git remote | Select-String -SimpleMatch "origin")) {
  git remote add origin $repoUrl
}

git add .
git commit -m "Upload complete ICM661 FlutterFlow project"
git push -u origin main --force
