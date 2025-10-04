## Text`FileMerge`
```ps1
# ##추가
$MergeFileName = "MergeFile.md"
Get-ChildItem -File -Filter *.txt | Where-Object { $_.Name -ne $MergeFileName } | ForEach-Object {
    "## "+$_.Name
    Get-Content $_.FullName
    ""  
    ""  
} | Set-Content $MergeFileName -Encoding UTF8
```
<details open>
    <summary></summary>


</details>
