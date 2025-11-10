## GetChildFile
```ps1
ls -File | % { $_.Name }
```
<details open>
    <summary></summary>

```ps1
ls -File | % { $_.Name }

<#
ls
- Get-ChildItem

% 
- ForEach-Object
#>
```

```ps1
Get-ChildItem -File | ForEach-Object { $_ }
```
```ps1
Get-ChildItem -File | ForEach-Object { $_.Name }
```
```ps1
Get-ChildItem -File | ForEach-Object { Write-Host $_.Name }
```
```ps1
Get-ChildItem -File | Select-Object Name
```
</details>
