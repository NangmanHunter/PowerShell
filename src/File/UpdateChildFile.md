# UpdateChildFile
- [UpdateChildFile`Name`](#updateChildfilename)
- [PrefixUpdateChildFile`Name`](#prefixupdateChildfilename)
- [SuffixUpdateChildFile`Name`](#suffixupdateChildfilename)
- [DeleteUpdateChildFile`Name`](#deleteupdateChildfilename)


## UpdateChildFile`Name`
- ```ps1
  Get-ChildItem -File | ForEach-Object {
      $newName = $_.Name -replace '📄01File', '📄02File'
      Rename-Item -Path $_.FullName -NewName $newName
  }
  ```
- ```ps1
  Get-ChildItem -File | ForEach-Object {
      $newName = $_.Name -replace '📄01File.md', '📄02File.md'
      Rename-Item -Path $_.FullName -NewName $newName
  }
  ```

```
00.cList▶️00.md
```
- ```ps1  
  Get-ChildItem -File | Rename-Item -NewName { $_.Name -replace '.cList', '.md' }
  ```

```
00.cLayer▶️00.md
```
- ```ps1  
  Get-ChildItem -File | Rename-Item -NewName { $_.Name -replace '.cLayer', '.md' }
  ```

```
00.xxx▶️00.md
```
- ```ps1
  Get-ChildItem -File | Rename-Item -NewName { $_.BaseName + '.md' }
  ```

```
00▶️00.md
```
- ```ps1
  Get-ChildItem -File | Rename-Item -NewName { $_.Name + '.md' }
  ```


## PrefixUpdateChildFile`Name`
- ```ps1  
  Get-ChildItem -File | Rename-Item -NewName { "🟥Prefix$($_.Name)" }
  ```
- ```ps1  
  Get-ChildItem -File | Rename-Item -NewName { $_.Name -replace '^', "🟥Prefix" }
  ```

참조
- -replace👉❌-replace $_.Name
- -replace👉❌()
- -replace👉정규표현식오인


## SuffixUpdateChildFile`Name`
- ```ps1  
  Get-ChildItem -File | Rename-Item -NewName { "$($_.Name)🟦Suffix" }
  ```
- ```ps1  
  Get-ChildItem -File | Rename-Item -NewName { $_.Name -replace '$', "🟦Suffix" }
  ```


## DeleteUpdateChildFile`Name`
- ```ps1
  Get-ChildItem -File | ForEach-Object {
      $newName = $_.Name -replace '📌FileName', ''
      Rename-Item -Path $_.FullName -NewName $newName
  }
  ```
- ```ps1
  $OriginName='📌FileName'
  $UpdateName=''
  Get-ChildItem -File | ForEach-Object {
      $newName = $_.Name -replace $OriginName, $UpdateName
      Rename-Item -Path $_.FullName -NewName $newName
  }

  ```
- ```ps1
  $BeforeName='📌FileName'
  $AfterName=''
  Get-ChildItem -File | ForEach-Object {
      $newName = $_.Name -replace $BeforeName, $AfterName
      Rename-Item -Path $_.FullName -NewName $newName
  }
  ```
- ```ps1
  $Name1='📌FileName'
  $Name2=''
  Get-ChildItem -File | ForEach-Object {
      $newName = $_.Name -replace $Name1, $Name2
      Rename-Item -Path $_.FullName -NewName $newName
  }
  ```
- ```ps1
  $Name01='📌FileName'
  $Name02=''
  Get-ChildItem -File | ForEach-Object {
      $newName = $_.Name -replace $Name01, $Name02
      Rename-Item -Path $_.FullName -NewName $newName
  }

  ```
- ```ps1
  Get-ChildItem -File | Rename-Item -NewName { $_.Name -replace '📌FileName', '' }
  ```


```
00.md▶️00  
```
- ```ps1
  Get-ChildItem -File | Rename-Item -NewName { $_.Name -replace '.md', '' }
  ```

```
00.cList▶️00  
```
- ```ps1
  Get-ChildItem -File | Rename-Item -NewName { $_.Name -replace '.cList', '' }
  ```

```
00.cLayer▶️00
```
- ```ps1
  Get-ChildItem -File | Rename-Item -NewName { $_.Name -replace '.cLayer', '' }
  ```
