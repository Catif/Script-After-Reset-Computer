# Installation de Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# "-y" permet d'accepter l'installation
# Logiciel général
choco install unchecky -y
choco install vivaldi -y
choco install discord -y
choco install winrar -y
choco install vlc -y
choco install obs-studio -y
choco install paint.net -y
choco install everything -y
choco install sharex -y
choco install 1clipboard -y
choco install eartrumpet -y
choco install razer-synapse-3 -y
choco install icue -y
choco install qbittorrent -y
choco install office365business -y
choco install audacity -y
choco install telegram -y


# Logiciel de jeu
choco install hamachi -y
choco install origin -y
choco install steam-client -y
choco install epicgameslauncher -y


# Variable d'environnement
choco install nodejs-lts -y
choco install php -y
choco install composer -y
choco install actiona -y
choco install python -y


# Logiciel Développeur
choco install wamp-server -y
choco install vscode -y
choco install visualstudio-installer -y
choco install filezilla -y
choco install github-desktop -y
choco install putty -y