# Specify the .NET SDK path
$dotnetPath = "C:\Program Files\dotnet"

# Get the current PATH environment variable value
$currentPath = [System.Environment]::GetEnvironmentVariable("PATH", "Machine")

# Check if the .NET SDK path is already in the PATH variable
if ($currentPath -notlike "*$dotnetPath*") {
    # Add the .NET SDK path to the PATH variable
    $newPath = "$currentPath;$dotnetPath"
    
    # Set the updated PATH variable
    [System.Environment]::SetEnvironmentVariable("PATH", $newPath, "Machine")
    
    Write-Host "Added $dotnetPath to the PATH variable."
} else {
    Write-Host "$dotnetPath is already in the PATH variable."
}
