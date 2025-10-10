## SerialNumber
```ps1
for ($i = 1; $i -le 25; $i++) {
    Write-Host ($i.ToString("D2"))
}
```
```ps1
1..25 | ForEach-Object { Write-Host ("{0:D2}" -f $_) }
```



```ps1
1..25 | ForEach-Object { Write-Host ("{0:D2}" -f $_+"AA") }
```
```ps1
1..25 | ForEach-Object { Write-Host ("{0:D2}" -f $_+"년산업재산권법") }
```
```ps1
0..25 | ForEach-Object { Write-Host ("{0:D2}" -f $_+"년산업재산권법") }
```