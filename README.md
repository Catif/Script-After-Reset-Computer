# Script-After-Reset-Computer

Ce script me permet d'installer la presque totalité des logiciels qui me sont utiles après une remise à zéro de mon pc windows.

J'utilise la library [Chocolatey](https://chocolatey.org) qui permet de télécharger des logiciels en ligne de commande (donc automatisable).

Je mettrais à jour la liste en fonction des logiciels que j'ai besoin.

N'hésitez pas à créer une issue si vous rencontrez des erreurs pendant l'éxécution.

## Lancement du script

Le script étant en PowerShell, il faut lancer le script en tant qu'administrateur :

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; .\install-software.ps1
```
