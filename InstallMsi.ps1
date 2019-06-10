# Install .msi with spaces in location
Start-Process -FilePath "$env:systemroot\system32\msiexec.exe" -ArgumentList "/i `"Location of msi with spaces`"" , "/qn" -Wait
Write-Host "Installing Msi..."

# Install .msi without spaces in location
Start-Process -FilePath "$env:systemroot\system32\msiexec.exe" -ArgumentList "/i Location_of_msi_without_spaces" , "/qn" -Wait
Write-Host "Installing Msi..."