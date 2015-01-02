try {
  $package = 'AFxW'
  $destination = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 

  $url = 'http://www.h5.dion.ne.jp/~akt/lzh/afxw32_157.zip'
  $url64bit = 'http://www.h5.dion.ne.jp/~akt/lzh/afxw64_157.zip'
  Install-ChocolateyZipPackage $package -url $url -url64bit $url64bit -unzipLocation $destination
} catch {
  Write-ChocolateyFailure $package "$($_.Exception.Message)"
  throw
}
