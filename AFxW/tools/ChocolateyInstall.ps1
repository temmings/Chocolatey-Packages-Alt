$ErrorActionPreference = 'Stop';

. (Join-Path $PSScriptRoot common.ps1)

Get-ToolsLocation
$destination = Join-Path $env:ChocolateyToolsLocation $packageName

$packageArgs = @{
    PackageName = $packageName
    ChecksumType = 'sha256'
    Url = $url
    Checksum = $checksum
    Url64bit = $url64bit
    Checksum64 = $checksum64
    UnzipLocation = $destination
}

Install-ChocolateyZipPackage @packageArgs

$shortcutArgs = @{
    ShortcutFilePath = $shortcutFilePath
    TargetPath = Join-Path $destination "$packageName.exe"
    WorkingDirectory = $destination
}

Install-ChocolateyShortcut @shortcutArgs
