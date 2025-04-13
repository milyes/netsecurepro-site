
#!/bin/bash

# Script de déploiement automatique pour NetSecurePro-site depuis Termux
# Auteur : Milyes (milyes.github.io)

REPO_DIR="$HOME/netsecurepro-site"
GITHUB_REPO="https://github.com/milyes/netsecurepro-site.git"
BRANCH="main"

echo "==> Déploiement GitHub Pages – NetSecurePro"

# Étape 1 : Aller dans le dossier du projet
cd "$REPO_DIR" || { echo "[ERREUR] Dossier introuvable : $REPO_DIR"; exit 1; }

# Étape 2 : Ajouter tous les fichiers modifiés
git add .

# Étape 3 : Commit avec timestamp automatique
COMMIT_MSG="Déploiement automatique $(date '+%Y-%m-%d %H:%M:%S')"
git commit -m "$COMMIT_MSG"

# Étape 4 : Push vers la branche main
git push origin $BRANCH

echo "[OK] Déploiement terminé vers GitHub Pages : https://milyes.github.io/netsecurepro-site/"
