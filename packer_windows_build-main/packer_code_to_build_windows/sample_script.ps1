# Install Visual Studio Code
Invoke-WebRequest -Uri "https://go.microsoft.com/fwlink/?LinkID=620884" -OutFile "$env:TEMP\VSCodeSetup.exe"
Start-Process -FilePath "$env:TEMP\VSCodeSetup.exe" -ArgumentList '/VERYSILENT /NORESTART /SUPPRESSMSGBOXES' -Wait

# Install .NET SDK
Invoke-WebRequest -Uri "https://download.visualstudio.microsoft.com/download/pr/90b0cc31-08be-4b6a-8968-e7e218f3a2aa/df81c3fadb7b2b6d874515d595f91123/dotnet-sdk-3.1.412-win-x64.exe" -OutFile "$env:TEMP\dotnet-sdk.exe"
Start-Process -FilePath "$env:TEMP\dotnet-sdk.exe" -ArgumentList '/quiet /norestart' -Wait

# Clean up temporary files
Remove-Item "$env:TEMP\VSCodeSetup.exe" -Force
Remove-Item "$env:TEMP\dotnet-sdk.exe" -Force
