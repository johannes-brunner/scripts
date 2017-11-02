param (   
    [switch]$upgrade = $false
 )

$packages = @(
'visualstudiocode', 
'git',
'docker',
'docker-for-windows',
'sysinternals',
'googlechrome',
'everything',
'7zip.install',
'putty.install',
'keepass',
'nuget.commandline',
'winscp.install',
'irfanview',
'fiddler4',
'ilspy',
'pdfxchangeeditor',
'inkscape',
'insomnia-rest-api-client',
'firefox',
'teamviewer',
'skype',
'gimp',
'vlc',
'hxd',
'jre8',
'dotnetcore',
'dotnetcore-sdk',
'dotnet4.6.2',
'dotnet4.7',
'microsoft-message-analyzer',
'robo3t',
'slack',
'sql-server-management-studio',
'consolez',
'chocolateygui',
'jmeter',
'python',
'nodejs.install'
)

if ($upgrade) {
    choco upgrade $packages -y;
} else {
    choco install $packages -y;
    choco install nmap --version 7.50 -y;
}
#I am in the world-direct network
if (Test-Connection -ComputerName dc1office.world-direct.at -Count 1 -Quiet) {
    #choco install visualstudio2017enterprise -y;  
} else {
    if ($update) {
        choco upgrade visualstudio2017community -y;
    } else {
        choco install visualstudio2017community -y;
    }
}
