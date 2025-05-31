#!/bin/bash

echo ">>> Initialisation de DZ_TERMINAL_AI_FULLSTARTER..."

# 1. Créer le dossier principal
PROJECT_DIR="$HOME/DZ_TERMINAL_AI"
mkdir -p "$PROJECT_DIR"
cd "$PROJECT_DIR" || exit

# 2. Créer l'arborescence
mkdir -p modules data logs backups outputs
mkdir -p modules/ai modules/cli modules/network
mkdir -p scripts ai_core

# 3. Fichiers essentiels initiaux
cat << 'EOF' > README.md
# DZ_TERMINAL_AI - Starter Complet
Terminal IA Linux avec Intelligence Internet, modules CLI & IA auto.
EOF

cat << 'EOF' > dz_start.sh
#!/bin/bash
echo "=== Démarrage de DZ TERMINAL IA ==="
python3 ai_core/ai_terminal.py
EOF
chmod +x dz_start.sh

# 4. Générer un premier fichier IA de base
cat << 'EOF' > ai_core/ai_terminal.py
import os
import time

def main():
    print("Bienvenue dans DZ_TERMINAL_AI")
    print("Chargement des modules IA...")
    time.sleep(1)
    print("Modules prêts. Interface en cours de lancement.")
    while True:
        cmd = input("IA_CMD$ ")
        if cmd in ["exit", "quit"]:
            print("Arrêt du terminal IA.")
            break
        elif cmd == "help":
            print("Commandes : help | exit | info | netscan")
        elif cmd == "info":
            print("Module IA DZ_TERMINAL | v1.0.0 | Internet Intelligence active.")
        elif cmd == "netscan":
            os.system("ping -c 2 google.com")
        else:
            print(f"Commande inconnue : {cmd}")

if __name__ == "__main__":
    main()
EOF

# 5. Ajouter un raccourci global
echo "alias dzterminal='bash $PROJECT_DIR/dz_start.sh'" >> ~/.bashrc
source ~/.bashrc

echo ">>> Installation terminée."
echo "Tu peux maintenant lancer le terminal IA avec : dzterminal"
