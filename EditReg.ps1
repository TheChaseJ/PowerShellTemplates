<#
  Registry Locations
  HKLM: = HKEY_LOCAL_MACHINE
  
  HKCU: = HKEY_CURRENT_USER
  
  HKCR: = HKEY_CLASSES_ROOT
  Write-Host "Creating PSDrive 'HKCR' (HKEY_CLASSES_ROOT). This will be used for the duration of the script as it is necessary for the modification of specific registry keys."
  New-PSDrive  HKCR -PSProvider Registry -Root HKEY_CLASSES_ROOT
  # Run commands with the HKCR path
  Write-Host "Unloading the HKCR drive..."
  Remove-PSDrive HKCR
  
#>

# Create a new registry value.
  New-ItemProperty -Path 'Path to Key' -Name 'Key Name' -Type Key Type -Value 'Key Value'

# Edit a registry value.
  Set-ItemProperty -Path 'Path to Key' -Name 'Key Name' -Value 'Key Value'
  
# Delete a registry value.
  Remove-ItemProperty -Path 'Path to Key' -Name 'Key Name' -Force
