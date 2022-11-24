$eesnimi = Read-Host "Palun sisestage oma eesnimi"
$perenimi = Read-Host "Palun sisestage oma perenimi"
$parool = "Parool1!" | ConvertTo-SecureString -AsPlainText -Force
$taisnimi = "$eesnimi.$perenimi"
$kirjeldus = "$eesnimi $perenimi windowsi konto"

New-LocalUser -Name $taisnimi -Password $parool -FullName $taisnimi -Description $kirjeldus