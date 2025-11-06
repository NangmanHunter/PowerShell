## DeleteUpdateChildFile
```ps1
$OriginName='📌FileName'
$UpdateName=''
Get-ChildItem -File | ForEach-Object {
  $newName = $_.Name -replace $OriginName, $UpdateName
  Rename-Item -Path $_.FullName -NewName $newName
}
```
<details open>
    <summary></summary>

```ps1
Get-ChildItem -File | ForEach-Object {
  $newName = $_.Name -replace '📌FileName', ''
  Rename-Item -Path $_.FullName -NewName $newName
}
```
```ps1
$OriginName='📌FileName'
$UpdateName=''
Get-ChildItem -File | ForEach-Object {
  $newName = $_.Name -replace $OriginName, $UpdateName
  Rename-Item -Path $_.FullName -NewName $newName
}
```
```ps1
$BeforeName='📌FileName'
$AfterName=''
Get-ChildItem -File | ForEach-Object {
  $newName = $_.Name -replace $BeforeName, $AfterName
  Rename-Item -Path $_.FullName -NewName $newName
}
```
```ps1
$Name1='📌FileName'
$Name2=''
Get-ChildItem -File | ForEach-Object {
  $newName = $_.Name -replace $Name1, $Name2
  Rename-Item -Path $_.FullName -NewName $newName
}
```
```ps1
$Name01='📌FileName'
$Name02=''
Get-ChildItem -File | ForEach-Object {
  $newName = $_.Name -replace $Name01, $Name02
  Rename-Item -Path $_.FullName -NewName $newName
}
```
```ps1
Get-ChildItem -File | Rename-Item -NewName { $_.Name -replace '📌FileName', '' }
```
</details>
