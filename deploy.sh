#!/bin/bash
git init
git add .
git commit -m "Déploiement initial NetSecurePro"
git branch -M main
git remote add origin https://github.com/milyes/netsecurepro.git
git push -u origin main