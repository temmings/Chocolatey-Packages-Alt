$ErrorActionPreference = 'Stop';

. (Join-Path $PSScriptRoot common.ps1)

if ([Environment]::Is64BitOperatingSystem) {
    Uninstall-ChocolateyZipPackage $packageName $archive64
} else {
    Uninstall-ChocolateyZipPackage $packageName $archive
}

Remove-Item $shortcutFilePath