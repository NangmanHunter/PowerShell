# InputFileCreate
- [SingleInputFileCreate](#singleinputfilecreate)
- [MultiInputFileCreate](#multiinputfilecreate)


## SingleInputFileCreate
```
📌.
 └📄01InputFile
```
- ```ps1
  Write-Host "📄 Input file name:"
  $file = Read-Host "👉 Enter file name"

  if ($file -ne "") {
      New-Item -Path $file -ItemType File -Force
      Write-Host "✅ 파일 생성됨: $file"
  } else {
      Write-Host "⚠️ 입력이 비어 있습니다. 파일을 생성하지 않았습니다."
  }
  ```

## MultiInputFileCreate
```
📌.
 └📄01InputFile
 └📄02InputFile
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


PreFix
```
📌.
 └📄📕01InputFile
 └📄📕02InputFile
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

MarkDown
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

