## SerialNumber
```ps1
1..25 | ForEach-Object { Write-Host ("{0:D2}" -f $_) }
```
<details open>
    <summary></summary>

`1`
```ps1
$con=1..25 ; Write-Host $con
```

`01`
```ps1
1..25 | ForEach-Object { Write-Host ("{0:D2}" -f $_) }
```
```ps1
1..25 | ForEach-Object { Write-Host ("{0:D2}" -f $_+"AA") }
```
```ps1
1..20 | ForEach-Object { Write-Host ("{0:D2}" -f $_+"류") }
```
```ps1
1..25 | ForEach-Object { Write-Host ("{0:D2}" -f $_+"년산업재산권법") }
```
```ps1
0..25 | ForEach-Object { Write-Host ("{0:D2}" -f $_+"년산업재산권법") }
```
```ps1
for ($i = 1; $i -le 25; $i++) {
    Write-Host ($i.ToString("D2"))
}
```
</details>
