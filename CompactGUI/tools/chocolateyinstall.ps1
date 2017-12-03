#https://github.com/ImminentFate/CompactGUI
$packageName      = 'compactgui'
$toolsDir         = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$exeFile          = "CompactGUI.exe"
$url              = "$toolsDir\$exeFile"

Install-ChocolateyShortcut -shortcutFilePath "$env:ProgramData\Microsoft\Windows\Start Menu\Programs\CompactGUI.lnk" -targetPath $url
