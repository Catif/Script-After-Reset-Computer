# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Accept All Software Licence (https://docs.chocolatey.org/en-us/configuration#security => allowGlobalConfirmation is false by default)
choco feature enable -n=allowGlobalConfirmation

# List of softwares will be installed (Takes name here => https://community.chocolatey.org/packages)
# Comment/remove the software you don't want to install
$softwares = @(
    # Logiciel de jeu
    'steam',
    'origin',
    'epicgameslauncher',
    'hamachi',

    # Logiciel général
    'googlechrome',
    'discord',
    'firefox',
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

    # Software of peripherals
    'razer-synapse-3',
    'icue',
    'lghub', # Should be closed after installation to continue the script

    # Env variable
    'git',
    'nodejs-lts',
    'php',
    'composer',
    'python',
    'sass',
    'ngrok',
    'ffmpeg',
    'docker-desktop',
    'javaruntime',
    
    # Software of development
    'actiona',
    'vscode',
    'github-desktop',
    'filezilla',
    # 'figma',  # Error when downloaded (http://disq.us/p/2ipgc04) 
    'putty',
    'postman',
)

# Run every software installation
Foreach($logiciel in $softwares) {
    choco install $logiciel
}
