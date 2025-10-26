## UpdateFileNameExtension
```
00.txt▶️00.md
```
> ```ps1  
> Get-ChildItem -File | Rename-Item -NewName { $_.Name -replace '.txt', '.md' }
> ```

```
00.cList▶️00.md
```
> ```ps1  
> Get-ChildItem -File | Rename-Item -NewName { $_.Name -replace '.cList', '.md' }
> ```

```
00.cLayer▶️00.md
```
> ```ps1  
> Get-ChildItem -File | Rename-Item -NewName { $_.Name -replace '.cLayer', '.md' }
> ```

```
00.xxx▶️00.md
```
> ```ps1
> Get-ChildItem -File | Rename-Item -NewName { $_.BaseName + '.md' }
> ```
