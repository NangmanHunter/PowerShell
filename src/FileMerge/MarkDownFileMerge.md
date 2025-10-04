## MarkDown`FileMerge`
```ps1
$MergeFileName = "MergeFile.md"
Get-ChildItem -File -Filter *.md | Where-Object { $_.Name -ne $MergeFileName } | ForEach-Object {
    "## "+$_.Name
    Get-Content $_.FullName
    ""  
    ""  
} | Set-Content $MergeFileName -Encoding UTF8
```
<details open>
    <summary></summary>

```ps1
# #추가
$MergeFileName = "MergeFile.md"
Get-ChildItem -File -Filter *.md | Where-Object { $_.Name -ne $MergeFileName } | ForEach-Object {
    "# "+$_.Name
    Get-Content $_.FullName
    ""  
    ""  
} | Set-Content $MergeFileName -Encoding UTF8
```
```ps1
# ##추가
$MergeFileName = "MergeFile.md"
Get-ChildItem -File -Filter *.md | Where-Object { $_.Name -ne $MergeFileName } | ForEach-Object {
    "## "+$_.Name
    Get-Content $_.FullName
    ""  
    ""  
} | Set-Content $MergeFileName -Encoding UTF8
```


TargetPath
```ps1
# .md파일
$TargetPath = "C:\Users\djwlf\Downloads\재생목록\MarkdownFiles"
$MergeFileName = "MergeFile.md"
Get-ChildItem -Path $TargetPath -File -Filter *.md | Where-Object { $_.Name -ne $MergeFileName } | ForEach-Object {
    "## "+$_.Name
    Get-Content $_.FullName
    ""  
    ""  
} | Set-Content -Path "${TargetPath}\📌${MergeFileName}" -Encoding UTF8
```
</details>
