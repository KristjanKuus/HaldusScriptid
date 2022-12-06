$eesnimi = Read-Host "Palun sisestage oma eesnimi"
$perenimi = Read-Host "Palun sisestage oma perenimi"
$parool = "Parool1!" | ConvertTo-SecureString -AsPlainText -Force
$taisnimi = "$eesnimi.$perenimi"
$kirjeldus = "$eesnimi $perenimi windowsi konto"


net user $taisnimi
if ($? -eq $true) { 
    Write-host "Selline $taisnimi kasutaja on juba olemas - ei saa seda lisada" 
     }
else {
    New-LocalUser -Name $taisnimi -Password $parool -FullName $taisnimi -Description $kirjeldus
    }
