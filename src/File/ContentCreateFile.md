# ContentCreateFile
- [SingleLine`ContentCreateFile`](#singlelinecontentcreatefile)
- [MutliLine`ContentCreateFile`](#mutlilinecontentcreatefile)

## SingleLine`ContentCreateFile`
OverWrite
```ps1
"# 📌Heading" | Out-File 📄File.md
```
- ```ps1
  "Line" | Out-File 📄File.md
  ```
- ```ps1
  "1Line" | Out-File 📄File.md
  ```
- ```ps1
  "🔎Content" | Out-File 📄File.md
  ```
- ```ps1
  "# 📌Heading" | Out-File 📄File.md
  ```


Append
```ps1
"# 📌Heading" | Out-File 📄File.md -Append
```

NewLineAppend
```ps1
"`n# 📌Heading" | Out-File 📄File.md -Append
```

## MutliLine`ContentCreateFile`
```
@"
# 📌Heading

## 📌Heading02
"@ | Out-File 📄File.md
```
- ```ps1
  @"
  1Line
  2Line
  "@ | Out-File 📄File.md
  ```
- ```ps1
  @"
  # 1Line
  ## 2Line
  "@ | Out-File 📄File.md
  ```
- ```ps1
  @"
  # 
  ## 
  "@ | Out-File 📄File.md
  ```
- ```ps1
  @"
  # 

  ## 
  "@ | Out-File 📄File.md
  ```
- ```ps1
  @"
  # 

  ## 
  - 
  "@ | Out-File 📄File.md
  ```
- ```ps1
  @"
  # 📌Heading

  ## 📌Heading02
  "@ | Out-File 📄File.md
  ```  
- ```ps1
  @"
  # 📌Heading

  ## 📌Heading02
  - 🔎01Content
  - 🔎02Content
  "@ | Out-File 📄File.md
  ```
- ```ps1
  @"
  # 📌Heading

  ## 📌Heading02
  - 🔎01Content
  - 🔎02Content
  "@ | Out-File 📄File.md -Encoding utf8
  ```
- ```ps1
  Set-Content 📄File.md @(
      "# 📌Heading"
      ""
      "## 📌Heading02"
      "- 🔎01Content"
      "- 🔎02Content"
  )
  ```
