# Installation de Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# permet d'accepter l'installation de tous les programmes ci-dessous
choco feature enable -n=allowGlobalConfirmation

# Listes des logiciels à télécharger (pendre les noms sur le site Chocolatey => https://community.chocolatey.org/packages)
$logiciels = @(
    # Logiciel périphérique
    'razer-synapse-3',
    'icue',
    'lghub',

    # Variable d'environnement
    'git',
    'nodejs-lts',
    'php',
    'composer',
    'python',
    'sass',
    'ngrok',

    # Logiciel Développeur
    'actiona',
    'vscode',
    'visualstudio-installer',
    'filezilla',
    'github-desktop',
    # 'figma',  # Erreur lors de l'installation (http://disq.us/p/2ipgc04) 
    'putty'

    # Logiciel général
    'unchecky',
    'discord',
    'winrar',
    'vlc',
    'adobereader',
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
    'googlechrome',
    'plex',


    # Logiciel de jeu
    'hamachi',
    'origin',
    'steam-client',
    'epicgameslauncher',
    'ubisoft-connect',
)

# Boucle d'installation de tous les logiciels
Foreach($logiciel in $logiciels) {
    choco install $logiciel
}
