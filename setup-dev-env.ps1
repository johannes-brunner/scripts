choco install visualstudiocode -y;
choco install git -y;
choco install docker -y;
choco install docker-for-windows -y
#choco install vscode-powershell;
#choco install vscode-csharp;
#choco install vscode-docker;
choco install sysinternals -y;
choco install googlechrome -y;
choco install everything -y;
choco install 7zip.install -y;
choco install putty.install -y;
choco install keepass -y;
choco install nuget.commandline -y;
choco install winscp.install -y;
choco install irfanview -y;
choco install fiddler4 -y;
choco install nmap --version 7.50 -y;
choco install ilspy -y;
choco install pdfxchangeeditor -y;
choco install inkscape -y;
choco install insomnia-rest-api-client -y;
choco install firefox -y;
choco install teamviewer -y;
choco install skype -y;
choco install gimp -y;
choco install vlc -y;
choco install hxd -y;
choco install onenote -y;
choco install jre8 -y;
choco install dotnetcore -y;
choco install dotnet4.6.2 -y;
choco install microsoft-message-analyzer -y;
choco install robo3t -y;
choco install sql-server-management-studio -y;
#choco install choco install visualstudio2017community -y;
#choco install visualstudio2017enterprise -y;  
choco install office365proplus -y;
choco install consolez -y;
choco install chocolateygui -y;
choco install jmeter -y;
invoke-webrequest -Uri https://webstart.buergerkarte.at/pdf-over/pdf-over.jnlp -UseBasicParsing -OutFile $env:TEMP\pdf-over.jnlp; start $env:TEMP\pdf-over.jnlp;
