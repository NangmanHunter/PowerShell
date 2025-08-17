# CreateFile
- [Single`CreateFile`](#singlecreatefile)
- [Multi`CreateFile`](#multicreatefile)


## Single`CreateFile`
```
📌.
 └📄File.md
```
- ```ps1
  Out-File "📄File.md"
  ```
- ```ps1
  "" | Out-File "📄File.md"
  ```
- ```ps1
  New-Item -Path "📄File.md" -ItemType File
  ```
- ```ps1
  Set-Content -Path "📄File.md" -Value ""
  ```
- ```ps1
  fsutil file createnew "📄File.md" 0
  ```

## Multi`CreateFile`
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
