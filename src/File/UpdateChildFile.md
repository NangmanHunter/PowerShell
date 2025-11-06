# UpdateChildFile
- [UpdateChildFile`Name`](#updateChildfilename)
- [PrefixUpdateChildFile`Name`](#prefixupdateChildfilename)
- [SuffixUpdateChildFile`Name`](#suffixupdateChildfilename)


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

