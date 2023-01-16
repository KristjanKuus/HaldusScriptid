# HaldusScriptid

See repositoorium siseldab skripte, et haldada kontosi kasutades Windows Powershelli
Hoidlas olevad skriptid teevad järgmist

- Kontode tegemine kasutaja poolt
- Kontode kustutamine kasutaja poolt
- Konto tegemine AD'sse
- Konto kustutamine AD'st
- AD kontode puhul on ka olemas eesti keelsete tähtede transliteratsiooni funktsioon

# Paigaldusjuhised ja Kasutamine

1. Lae repositooriumis olevad failid alla
2. Paigalda alla laetud failid kausta, kust kasutad Powershelli 
- Või
2. Powershellis liigu kausta, kuhu salvestasid skriptid
3. Aktiveeri soovitud skript käsuga `.\(Skripti-nimi).ps1`

Enne kui skript töötab, on võimalik, et peate muutma oma gruppi politiikat. Et näha asjakohast gruppi politiikat, sisetage järgmine käsk Powershellis administraatorina.

`Get-ExecutionPolicy`

Kui execution policy on "restricted", kasutage järgmist käsku:

`Set-ExecutionPolicy remotesigned`

