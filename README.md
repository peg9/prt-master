# prt-master

Copie du skill Claude `prompt-master` de nidhinjs (v1.8.2, licence MIT).
Source : https://github.com/nidhinjs/prompt-master

## Utilisation dans un seul projet

Copier `SKILL.md` et `references/` dans `.claude/skills/prompt-master/` du projet.

## Utilisation dans tous les projets (portée personnelle)

Cloner ce dépôt directement dans le dossier des skills personnels de Claude Code. Le nom du dossier doit être `prompt-master` : c'est lui qui donne la commande `/prompt-master`.

Windows (PowerShell) :

```
git clone https://github.com/peg9/prt-master "$env:USERPROFILE\.claude\skills\prompt-master"
```

macOS ou Linux :

```
git clone https://github.com/peg9/prt-master ~/.claude/skills/prompt-master
```

Ouvrir ensuite une nouvelle session Claude Code. Mise à jour :

```
git -C <dossier du skill> pull
```

Limite : selon la documentation de Claude Code, un skill personnel (`~/.claude/skills/`) est disponible dans tous les projets de la machine, mais pas dans les sessions cloud ni Cowork. Pour ces sessions, copier le skill dans le dépôt concerné, sous `.claude/skills/prompt-master/`.

Emplacement documenté : https://code.claude.com/docs/en/skills

## Dans un nouveau projet (y compris pour les sessions cloud)

Depuis une copie locale de ce dépôt, lancer le script avec le chemin du projet :

```
./install-projet.sh /chemin/vers/projet
```

Windows (PowerShell) :

```
.\install-projet.ps1 C:\chemin\vers\projet
```

Le skill est copié dans `.claude/skills/prompt-master/` du projet. Le versionner (`git add .claude/skills/prompt-master`) pour qu'il soit présent dans les sessions cloud de ce dépôt.
