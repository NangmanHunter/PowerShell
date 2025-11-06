## ExtensionUpdateChildFile
`00.md▶️00`
```ps1
Get-ChildItem -File | Rename-Item -NewName { $_.Name -replace '.md', '' }
```

`00.cList▶️00`
```ps1
Get-ChildItem -File | Rename-Item -NewName { $_.Name -replace '.cList', '' }
```

`00.cLayer▶️00`
```ps1
Get-ChildItem -File | Rename-Item -NewName { $_.Name -replace '.cLayer', '' }
```