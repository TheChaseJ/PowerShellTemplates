Get-ChildItem -Path "C:\Destination\*" -Include *.jpg,*.png -Recurse | Copy-Item -Destination "C:\Destination2\"
