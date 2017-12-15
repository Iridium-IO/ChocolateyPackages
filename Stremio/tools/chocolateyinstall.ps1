$ErrorActionPreference = 'Stop';

$packageName= 'stremio'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://dl.strem.io/Stremio%203.6.5.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs    = "/S"
  validExitCodes= @(0)

  softwareName  = 'Stremio*'
  checksum      = '82ECE57D75280377A38D46225364261E'
  checksumType  = 'md5'
}

Install-ChocolateyPackage @packageArgs