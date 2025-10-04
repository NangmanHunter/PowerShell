## CommaSepartedValues`FileMerge`
```ps1
$MergeFileName = "MergeFile.md"
Get-ChildItem -File -Filter *.csv | Where-Object { $_.Name -ne $MergeFileName } | ForEach-Object {
    "## "+$_.Name
    Get-Content $_.FullName
    ""  
    ""  
} | Set-Content $MergeFileName -Encoding UTF8
```
