﻿# Installation de Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# permet d'accepter l'installation de tous les programmes ci-dessous
choco feature enable -n=allowGlobalConfirmation

# Listes des logiciels à télécharger (pendre les noms sur le site Chocolatey => https://community.chocolatey.org/packages)
$logiciels = @(
    # Logiciel de jeu
    'hamachi',
    'origin',
    'steam-client',
    'epicgameslauncher',
    'ubisoft-connect',

    # Logiciel général
    'googlechrome',
    'firefox',
    'unchecky',
    'discord',
    'winrar',
    'vlc',
    'obs-studio',
    'paint.net',
    'everything',
    'sharex',
    '1clipboard',
    'eartrumpet',
    'qbittorrent',
    'audacity',
    'telegram',
    'winaero-tweaker',
    'powertoys',
    'plex',
    'elevenclock',

    # Logiciel périphérique
    'razer-synapse-3',
    'icue',
    'lghub', # Obligation de le fermé après l'installation pour continuer le script

    # Variable d'environnement
    'git',
    'nodejs-lts',
    'php',
    'composer',
    'python',
    'sass',
    'ngrok',
    'ffmpeg',

    # Logiciel Développeur
    'actiona',
    'vscode',
    'visualstudio-installer',
    'filezilla',
    'github-desktop',
    # 'figma',  # Erreur lors de l'installation (http://disq.us/p/2ipgc04) 
    'putty',
    'postman',
)

# Boucle d'installation de tous les logiciels
Foreach($logiciel in $logiciels) {
    choco install $logiciel
}