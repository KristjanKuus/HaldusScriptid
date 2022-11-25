$ErrorActionPreference = 'SilentlyContinue'
$eesnimi = Read-Host "Palun sisestage oma eesnimi"
$perenimi = Read-Host "Palun sisestage oma perenimi"
$taisnimi = "$eesnimi.$perenimi"
$kirjeldus = "$eesnimi $perenimi windowsi konto on nuud kustutatud"


net user $taisnimi
if ($? -eq $true) { 
    Remove-LocalUser -Name $taisnimi 
    Write-host $kirjeldus }
else {
    Write-host "Sellist kasutajat ei ole olemas"
    }
