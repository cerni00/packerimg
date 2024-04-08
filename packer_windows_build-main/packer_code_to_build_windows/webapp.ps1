# Specify the path to the dotnet folder on the desktop
$dotnetFolderPath = "C:\Users\Administrator\Desktop\dotnet"

# Change directory to the dotnet folder
Set-Location -Path $dotnetFolderPath

# Create a new ASP.NET Core web application
Start-Process -FilePath "dotnet" -ArgumentList "new web -n HelloWorldApp"

# Set the path to the HelloWorldApp folder
$helloWorldAppPath = "C:\Users\Administrator\Desktop\dotnet\HelloWorldApp"

# Change directory to the HelloWorldApp folder
Set-Location -Path $helloWorldAppPath

# Run dotnet run command
Start-Process -FilePath "dotnet" -ArgumentList "run" -NoNewWindow -Wait

