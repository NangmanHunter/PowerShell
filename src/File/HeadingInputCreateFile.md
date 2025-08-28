# HeadingInputCreateFile
- [Single`HeadingInputCreateFile`](#singleheadinginputcreatefile)
- [Multi`HeadingInputCreateFile`](#multiheadinginputcreatefile)


## Single`HeadingInputCreateFile`
SingleHeading
```
📄Input
 └# 📌Heading
```
<details>
  <summary></summary>

```
📄Input
 └# 📌Heading
```
````
📄Input
 └```
   # 📌Heading
  ```
````
</details>

- ```ps1
  Write-Host "📄 Input file name:"
  $file = Read-Host "👉 Enter file name"

  if ($file -ne "") {
      "# 📌Heading" | Out-File -FilePath $file -Encoding UTF8 -Force
      Write-Host "✅ 파일 생성됨: $file"
  } else {
      Write-Host "⚠️ 입력이 비어 있습니다. 파일을 생성하지 않았습니다."
  }
  ```


MarkDownSingleHeading
```
📄Input.md
 └# 📌Heading
```
- ```ps1
  Write-Host "📄 Input file name:"
  $file = Read-Host "👉 Enter file name"

  if ($file -ne "") {
      "# 📌Heading" | Out-File -FilePath "$file.md" -Encoding UTF8 -Force
      Write-Host "✅ 파일 생성됨: $file"
  } else {
      Write-Host "⚠️ 입력이 비어 있습니다. 파일을 생성하지 않았습니다."
  }
  ```


FileNameHeading
```
📄Input.md
 └# Input
```
- ```ps1
  Write-Host "📄 Input file name:"
  $file = Read-Host "👉 Enter file name"

  if ($file -ne "") {
      "# $file" | Out-File -FilePath "$file" -Encoding UTF8 -Force
      Write-Host "✅ 파일 생성됨: $file"
  } else {
      Write-Host "⚠️ 입력이 비어 있습니다. 파일을 생성하지 않았습니다."
  }
  ```


MarkDownFileNameHeading
```
📄Input.md
 └# Input
```
- ```ps1
  Write-Host "📄 Input file name:"
  $file = Read-Host "👉 Enter file name"

  if ($file -ne "") {
      "# $file" | Out-File -FilePath "$file.md" -Encoding UTF8 -Force
      Write-Host "✅ 파일 생성됨: $file"
  } else {
      Write-Host "⚠️ 입력이 비어 있습니다. 파일을 생성하지 않았습니다."
  }
  ```


## Multi`HeadingInputCreateFile`
SingleHeading
````
📌.
 └📄01Input.md
　 └```
    # 📌Heading
　  ```
 └📄02Input.md
　 └```
    # 📌Heading
　  ```
````
<details>
  <summary></summary>

```
📌.
 └📄01Input.md
　 └# 📌Heading
 └📄02Input.md
　 └# 📌Heading
```
````
📌.
 └📄01Input.md
　 └```
    # 📌Heading
　  ```
 └📄02Input.md
　 └```
    # 📌Heading
　  ```
````
</details>

- ```ps1
  Write-Host "📄InputFileName `n👉Enter Enter(Ctrl+Z Enter)"
  $inputText = @()
  while ($line = [Console]::In.ReadLine()) {
      if ($line -eq $null) { break }
      $inputText += $line
  }

  $files = $inputText | ForEach-Object { "$_.md" }
  foreach ($file in $files) {
      "# 📌Heading" | Out-File -FilePath $file -Encoding UTF8 -Force
  }
  ```

FileNameHeading
````
📌.
 └📄01Input.md
　 └```
    # 01Input
　  ```
 └📄02Input.md
　 └```
    # 02Input
　  ```
````
<details>
  <summary></summary>

```
📌.
 └📄01Input.md
　 └# 01Input
 └📄02Input.md
　 └# 01Input
```
````
📌.
 └📄01Input.md
　 └```
    # 01Input
　  ```
 └📄02Input.md
　 └```
    # 02Input
　  ```
````
</details>

- ```ps1
  Write-Host "📄InputFileName `n👉Enter Enter(Ctrl+Z Enter)"
  $inputText = @()
  while ($line = [Console]::In.ReadLine()) {
      if ($line -eq $null) { break }
      $inputText += $line
  }

  $files = $inputText | ForEach-Object { "$_.md" }
  foreach ($file in $files) {
      $FileName = [System.IO.Path]::GetFileNameWithoutExtension($file)
      "# $FileName" | Out-File -FilePath $file -Encoding UTF8 -Force
  }
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
      $title = [System.IO.Path]::GetFileNameWithoutExtension($file)
      "# $title" | Out-File -FilePath $file -Encoding UTF8 -Force
  }
  ```
