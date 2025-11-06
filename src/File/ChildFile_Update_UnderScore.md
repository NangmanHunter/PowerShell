## UnderScoreUpdateChildFile
`AA-AA▶️AA_AA`
```ps1
Get-ChildItem -File | Rename-Item -NewName { $_.Name -replace '-', '_' }

# .-
# - 한글자잡하고
```

