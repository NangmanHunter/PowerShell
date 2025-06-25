# CreateFile
- [SingleCreateFile](#singlecreatefile)
- [MultiCreateFile](#multicreatefile)
- [InputMultiCreateFile](#inputmulticreatefile)

## SingleCreateFile
```
📌.
 └📄File.md
```
- ```ps1
  New-Item -Path "📄File.md" -ItemType File
  ```
- ```ps1
  "" | Out-File "📄File.md"
  ```
- ```ps1
  Set-Content -Path "📄File.md" -Value ""
  ```
- ```ps1
  fsutil file createnew "📄File.md" 0
  ```

## MultiCreateFile
```
📌.
 └📄01File.md
 └📄02File.md
```
- ```ps1
  $files = @("📄01File.md", "📄02File.md")
  $files | ForEach-Object { New-Item -Path $_ -ItemType File }
  ```
- ```ps1
  @("📄01File.md", "📄02File.md") | ForEach-Object { New-Item -Path $_-ItemType File }
  ```
- ```ps1
  $files = @("📄01File.md", "📄02File.md")
  foreach ($file in $files) {
      New-Item -Path $file -ItemType File
  }
  ```
- ```ps1
  $files = @(
      "📄01File.md", 
      "📄02File.md" 
  )
  foreach ($file in $files) {
      New-Item -Path $file -ItemType File
  }
  ```
- ```ps1
  $line = @"
  📄01File.md
  📄02File.md
  "@

  $files = $line -split "`r?`n"
  foreach ($file in $files) {
      New-Item -Path $file -ItemType File -Force
  }
  ```

## InputMultiCreateFile
```
📌.
 └📄01InputFile.md
 └📄02InputFile.md
```
- ```ps1
  Write-Host "📄InputFileName `n👉Enter Enter(Ctrl+Z Enter)"
  $inputText = @()
  while ($line = [Console]::In.ReadLine()) {
      if ($line -eq $null) { break }
      $inputText += $line
  }

  $files = $inputText
  foreach ($file in $files) {
      New-Item -Path $file -ItemType File -Force
  }
  ```
- ```ps1
  Write-Host "📄InpuFileName `n👉Enter Enter(Ctrl+Z Enter)"
  $inputText = @()
  while ($line = [Console]::In.ReadLine()) {
      if ($line -eq $null) { break }
      $inputText += $line
  }

  $files = $inputText | ForEach-Object { "$_" }
  foreach ($file in $files) {
      New-Item -Path $file -ItemType File -Force
  }
  ```



```
📌.
 └📄📕01InputFile.md
 └📄📕02InputFile.md
```
- ```ps1
  Write-Host "📄InputFileName `n👉Enter Enter(Ctrl+Z Enter)"
  $inputText = @()
  while ($line = [Console]::In.ReadLine()) {
      if ($line -eq $null) { break }
      $inputText += $line
  }

  $files = $inputText | ForEach-Object { "📕$_" }
  foreach ($file in $files) {
      New-Item -Path $file -ItemType File -Force
  }
  ```

## MarkDownInputMultiCreateFile
```
📌.
 └📄01InputFile.md
 └📄02InputFile.md
```
- ```ps1
  Write-Host "📄InputFileName `n👉Enter Enter(Ctrl+Z Enter)"
  $inputText = @()
  while ($line = [Console]::In.ReadLine()) {
      if ($line -eq $null) { break }
      $inputText += $line
  }

  $files = $inputText | ForEach-Object { "$_.md" }
  foreach ($file in $files) {
      New-Item -Path $file -ItemType File -Force
  }
  ```
