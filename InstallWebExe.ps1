### Silently installs Something from the web ###
$Path = $env:TEMP;
$Installer = "FileName.exe"
Invoke-WebRequest "http://www.something.com/SetupFile.exe" -OutFile $Path\$Installer
Start-Process -FilePath $Path\$Installer -Args "/silent /install" -Verb RunAs -Wait
Remove-Item $Path\$Installer
