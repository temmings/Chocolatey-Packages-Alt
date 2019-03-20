$packageName = 'AFxW'

$urlRoot = 'http://akt.d.dooo.jp/lzh/'

$archive = 'afxw32_164.zip'
$archive64 = 'afxw64_164.zip'

$checksum = '14A95C88205CEE85F77BEA3AE99D9DB911B6F3631F05A8F4F96DF8D0F45D188E'
$checksum64 = 'F89980D5B7BF0CC4F5309780A18C7610EAEBE320C6AB2206F27F9C3CEEFEEDB6'

$url = "$urlRoot/$archive"
$url64bit = "$urlRoot/$archive64"

$shortcutFilePath = Join-Path "$env:PUBLIC\Desktop" "$packageName.lnk"
