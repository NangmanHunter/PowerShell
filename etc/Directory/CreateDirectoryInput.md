# InputCreateDirectory
- [Single`InputCreateDirectory`](#singleinputcreatedirectory)
- [Multi`InputCreateDirectory`](#multiinputcreatedirectory)


## Single`InputCreateDirectory`
```
📌.
 └📁01InputDirectory
```
- ```ps1
  Write-Host "📁 Input direcotry name:"
  $directory = Read-Host "👉 Enter direcotry name"

  if ($directory -ne "") {
      mkdir $directory
      
      Write-Host "✅ 파일 생성됨: $directory"
  } else {
      Write-Host "⚠️ 입력이 비어 있습니다. 파일을 생성하지 않았습니다."
  }
  ```


## Multi`InputCreateDirectory`
```
📌.
 └📁01InputDirectory
 └📁02InputDirectory
```
- ```ps1
  Write-Host "📄InputDirectoryName `n👉Enter Enter(Ctrl+Z Enter)"
  $inputText = @()
  while ($line = [Console]::In.ReadLine()) {
      if ($line -eq $null) { break }
      $inputText += $line
  }

  $directories = $inputText
  foreach ($directory in $directories) {
      mkdir $directory
  }
  ```
- ```ps1
  Write-Host "📄InpuDirectoryName `n👉Enter Enter(Ctrl+Z Enter)"
  $inputText = @()
  while ($line = [Console]::In.ReadLine()) {
      if ($line -eq $null) { break }
      $inputText += $line
  }

  $directories = $inputText | ForEach-Object { "$_" }
  foreach ($directory in $directories) {
       mkdir $directory
  }
  ```
