## NumberingLine
```ps1
$i = 1
(Get-Content test.md -Encoding UTF8 | 
ForEach-Object {
    $newLine = $_ -replace "- ", ("- 📌{0:D2}🚦" -f $i)
    Write-Host $newLine
    $i++
    $newLine
}) | Set-Content test.md -Encoding UTF8
```
<details open>
    <summary></summary>

```ps1
Get-Content test.md -Encoding UTF8 | 
ForEach-Object | 
Set-Content test.md -Encoding UTF8
```
```ps1
Get-Content test.md -Encoding UTF8 | 
ForEach-Object {} | 
Set-Content test.md -Encoding UTF8
```
```ps1
# ❌-Process잡혀있음
Get-Content test.md -Encoding UTF8 | 
ForEach-Object {$_} | 
Set-Content test.md -Encoding UTF8
```
```ps1
$content=Get-Content test.md -Encoding UTF8 | 
$content | ForEach-Object {$_} | 
Set-Content test.md -Encoding UTF8
```


```ps1
Get-Content test.md -Encoding UTF8 | 
```
```ps1
Get-Content test.md -Encoding UTF8 | 
ForEach-Object { Write-Host $_ }
```
```ps1
Get-Content test.md -Encoding UTF8 | 
ForEach-Object { Write-Output $_ }
```
```ps1
# ❌-Process잡혀있음
Get-Content test.md -Encoding UTF8 | 
ForEach-Object { Write-Output $_ } |
Set-Content test.md -Encoding UTF8
```
```ps1
(Get-Content test.md -Encoding UTF8 | 
ForEach-Object { Write-Output $_ }) |
Set-Content test.md -Encoding UTF8
```
```ps1
(Get-Content test.md -Encoding UTF8 | 
ForEach-Object { Write-Host $_; Write-Output $_ }) |
Set-Content test.md -Encoding UTF8
```
```ps1
(Get-Content test.md -Encoding UTF8 | 
ForEach-Object { Write-Host $_
  Write-Output $_ }) |
Set-Content test.md -Encoding UTF8
```
```ps1
(Get-Content test.md -Encoding UTF8 | 
ForEach-Object { 
  Write-Host $_
  Write-Output $_ }) |
Set-Content test.md -Encoding UTF8
```
```ps1
(Get-Content test.md -Encoding UTF8 | 
ForEach-Object { 
  Write-Host $_
  Write-Output $_ 
}) |
Set-Content test.md -Encoding UTF8
```
```ps1
# ❌
(Get-Content test.md -Encoding UTF8 | 
ForEach-Object { 
  $_ -replace "- ", "- 00" 
  Write-Host $_
  Write-Output $_ 
}) |
Set-Content test.md -Encoding UTF8
```
```ps1
(Get-Content test.md -Encoding UTF8 | 
ForEach-Object { 
  $_ -replace "- ", "- 00" 
  Write-Host $_
}) |
Set-Content test.md -Encoding UTF8
```
```ps1
$i = 1
(Get-Content test.md -Encoding UTF8 | 
ForEach-Object {
    $newLine = $_ -replace "- ", ("- {0:D2}" -f $i)
    Write-Host $newLine
    $i++
    $newLine
}) | Set-Content test.md -Encoding UTF8
```
```ps1
$i = 1
(Get-Content test.md -Encoding UTF8 | 
ForEach-Object {
    $newLine = $_ -replace "- ", ("- {0:D2}▶️" -f $i)
    Write-Host $newLine
    $i++
    $newLine
}) | Set-Content test.md -Encoding UTF8
```
```ps1
$i = 1
(Get-Content test.md -Encoding UTF8 | 
ForEach-Object {
    $newLine = $_ -replace "- ", ("- {0:D2}📝" -f $i)
    Write-Host $newLine
    $i++
    $newLine
}) | Set-Content test.md -Encoding UTF8
```
```ps1
$i = 1
(Get-Content test.md -Encoding UTF8 | 
ForEach-Object {
    $newLine = $_ -replace "- ", ("- 📌{0:D2}📝" -f $i)
    Write-Host $newLine
    $i++
    $newLine
}) | Set-Content test.md -Encoding UTF8
```
```ps1
$i = 1
(Get-Content test.md -Encoding UTF8 | 
ForEach-Object {
    $newLine = $_ -replace "- ", ("- 📌{0:D2}▶️" -f $i)
    Write-Host $newLine
    $i++
    $newLine
}) | Set-Content test.md -Encoding UTF8
```
```ps1
$i = 1
(Get-Content test.md -Encoding UTF8 | 
ForEach-Object {
    $newLine = $_ -replace "- ", ("- 📌{0:D2}🚥" -f $i)
    Write-Host $newLine
    $i++
    $newLine
}) | Set-Content test.md -Encoding UTF8
```
```ps1
$i = 1
(Get-Content test.md -Encoding UTF8 | 
ForEach-Object {
    $newLine = $_ -replace "- ", ("- 📌{0:D2}🚦" -f $i)
    Write-Host $newLine
    $i++
    $newLine
}) | Set-Content test.md -Encoding UTF8
```
</details>
