## ReverseSort
```ps1
$lines = Get-Content test.md
[Array]::Reverse($lines)
$lines | Set-Content test.md
```
<details open>
    <summary></summary>

```ps1
$lines = Get-Content test.md
[Array]::Reverse($lines)
$lines
```
```ps1
$lines = Get-Content test.md
[Array]::Reverse($lines)
$lines | ForEach-Object { Write-Host $_ }
```
```ps1
$lines = Get-Content test.md
[Array]::Reverse($lines)
$lines.ForEach({ Write-Host $_ })
```
```ps1
$lines = Get-Content test.md
[Array]::Reverse($lines)
foreach ($line in $lines) {
    Write-Host $line
}
```


```ps1
$lines = Get-Content test.md
[Array]::Reverse($lines)
Write-Host $lines 
```
</details>
