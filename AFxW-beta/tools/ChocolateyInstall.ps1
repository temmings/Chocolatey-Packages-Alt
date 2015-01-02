try {
  $package = 'AFxW-beta'
  $destination = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 

  # base package
  $url = 'http://www.h5.dion.ne.jp/~akt/lzh/afxw32_157.zip'
  $url64bit = 'http://www.h5.dion.ne.jp/~akt/lzh/afxw64_157.zip'
  Install-ChocolateyZipPackage $package -url $url -url64bit $url64bit -unzipLocation $destination

  # overwrite files
  $url = 'http://www.h5.dion.ne.jp/~akt/lzh/afxw32_158b3.zip'
  $url64bit = 'http://www.h5.dion.ne.jp/~akt/lzh/afxw64_158b3.zip'
  Install-ChocolateyZipPackage $package -url $url -url64bit $url64bit -unzipLocation $destination
} catch {
  Write-ChocolateyFailure $package "$($_.Exception.Message)"
  throw
}
