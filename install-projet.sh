#!/usr/bin/env bash
# Installe le skill prompt-master dans un projet (portee projet, valable aussi en session cloud).
# Usage : ./install-projet.sh /chemin/vers/projet   (par defaut : dossier courant)
set -e
src="$(cd "$(dirname "$0")" && pwd)"
dest="${1:-.}/.claude/skills/prompt-master"
mkdir -p "$dest"
cp "$src/SKILL.md" "$src/LICENSE" "$dest/"
cp -r "$src/references" "$dest/"
echo "Skill installe dans $dest. Pensez a le versionner : git add .claude/skills/prompt-master"
