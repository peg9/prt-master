# Installe le skill prompt-master dans un projet (portee projet, valable aussi en session cloud).
# Usage : .\install-projet.ps1 C:\chemin\vers\projet   (par defaut : dossier courant)
param([string]$Projet = ".")
$src = Split-Path -Parent $MyInvocation.MyCommand.Path
$dest = Join-Path $Projet ".claude\skills\prompt-master"
New-Item -ItemType Directory -Force -Path $dest | Out-Null
Copy-Item "$src\SKILL.md", "$src\LICENSE" -Destination $dest -Force
Copy-Item "$src\references" -Destination $dest -Recurse -Force
Write-Host "Skill installe dans $dest. Pensez a le versionner : git add .claude/skills/prompt-master"
