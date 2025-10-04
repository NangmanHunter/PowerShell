## TargetPath`FileMerge`
```ps1
# .txt파일
$TargetPath = "C:\Users\djwlf\Downloads"
$MergeFileName = "MergeFile.md"
Get-ChildItem -Path $TargetPath -File -Filter *.txt | Where-Object { $_.Name -ne $MergeFileName } | ForEach-Object {
    "## "+$_.Name
    Get-Content $_.FullName
    ""  
    ""  
} | Set-Content -Path "${TargetPath}\📌${MergeFileName}" -Encoding UTF8
```
<details open>
    <summary></summary>

```ps1
$MergeFileName = "MergeFile.md"
Get-ChildItem -Path "C:\MyFolder" -File -Filter *.md | Where-Object { $_.Name -ne $MergeFileName } | ForEach-Object {
    "## "+$_.Name
    Get-Content $_.FullName
    ""  
    ""  
} | Set-Content $MergeFileName -Encoding UTF8
```
```ps1
$MergeFileName = "MergeFile.md"
Get-ChildItem -Path "C:\Users\djwlf\Downloads" -File -Filter *.md | Where-Object { $_.Name -ne $MergeFileName } | ForEach-Object {
    "## "+$_.Name
    Get-Content $_.FullName
    ""  
    ""  
} | Set-Content $MergeFileName -Encoding UTF8
```


`.txt`파일-`.md`파일
```ps1
$MergeFileName = "MergeFile.md"
Get-ChildItem -Path "C:\Users\djwlf\Downloads" -File -Filter *.txt | Where-Object { $_.Name -ne $MergeFileName } | ForEach-Object {
    "## "+$_.Name
    Get-Content $_.FullName
    ""  
    ""  
} | Set-Content $MergeFileName -Encoding UTF8
```


`.md파일`
```ps1
$MergeFileName = "MergeFile.md"
$TargetPath = "C:\MyFolder"
Get-ChildItem -Path $TargetPath -File -Filter *.md | Where-Object { $_.Name -ne $MergeFileName } | ForEach-Object {
    "## "+$_.Name
    Get-Content $_.FullName
    ""  
    ""  
} | Set-Content $MergeFileName -Encoding UTF8
```
```ps1
$TargetPath = "C:\MyFolder"
$MergeFileName = "MergeFile.md"
Get-ChildItem -Path $TargetPath -File -Filter *.md | Where-Object { $_.Name -ne $MergeFileName } | ForEach-Object {
    "## "+$_.Name
    Get-Content $_.FullName
    ""  
    ""  
} | Set-Content $MergeFileName -Encoding UTF8
```
```ps1
$TargetPath = "C:\Users\djwlf\Downloads"
$MergeFileName = "MergeFile.md"
Get-ChildItem -Path $TargetPath -File -Filter *.md | Where-Object { $_.Name -ne $MergeFileName } | ForEach-Object {
    "## "+$_.Name
    Get-Content $_.FullName
    ""  
    ""  
} | Set-Content $MergeFileName -Encoding UTF8
```
```ps1
$TargetPath = "C:\Users\djwlf\Downloads"
$MergeFileName = "MergeFile.md"

Get-ChildItem -Path $TargetPath -File -Filter *.md | Where-Object { $_.Name -ne $MergeFileName } | ForEach-Object {
    "## " + $_.Name
    Get-Content $_.FullName
    ""  
    ""  
} | Set-Content $MergeFileName -Encoding UTF8
```
`.txt파일-.md파일`
```ps1
$TargetPath = "C:\Users\djwlf\Downloads"
$MergeFileName = "MergeFile.md"

Get-ChildItem -Path $TargetPath -File -Filter *.txt | Where-Object { $_.Name -ne $MergeFileName } | ForEach-Object {
    "## " + $_.Name
    Get-Content $_.FullName
    ""
    ""
} | Set-Content $MergeFileName -Encoding UTF8
```


`.md파일`
```ps1
# .txt파일
$TargetPath = "C:\Users\djwlf\Downloads"
$MergeFileName = "MergeFile.md"
Get-ChildItem -Path $TargetPath -File -Filter *.md | Where-Object { $_.Name -ne $MergeFileName } | ForEach-Object {
    "## "+$_.Name
    Get-Content $_.FullName
    ""  
    ""  
} | Set-Content -Path "${TargetPath}\${MergeFileName}" -Encoding UTF8
```
`.txt파일-.md파일`
```ps1
# .txt파일
$TargetPath = "C:\Users\djwlf\Downloads"
$MergeFileName = "MergeFile.md"
Get-ChildItem -Path $TargetPath -File -Filter *.txt | Where-Object { $_.Name -ne $MergeFileName } | ForEach-Object {
    "## "+$_.Name
    Get-Content $_.FullName
    ""  
    ""  
} | Set-Content -Path "$TargetPath\$MergeFileName" -Encoding UTF8
```
```ps1
# .txt파일
$TargetPath = "C:\Users\djwlf\Downloads"
$MergeFileName = "MergeFile.md"
Get-ChildItem -Path $TargetPath -File -Filter *.txt | Where-Object { $_.Name -ne $MergeFileName } | ForEach-Object {
    "## "+$_.Name
    Get-Content $_.FullName
    ""  
    ""  
} | Set-Content -Path "${TargetPath}\${MergeFileName}" -Encoding UTF8
```


`📌MergeFile.md`
```ps1
# .txt파일
$TargetPath = "C:\Users\djwlf\Downloads"
$MergeFileName = "MergeFile.md"
Get-ChildItem -Path $TargetPath -File -Filter *.txt | Where-Object { $_.Name -ne $MergeFileName } | ForEach-Object {
    "## "+$_.Name
    Get-Content $_.FullName
    ""  
    ""  
} | Set-Content -Path "${TargetPath}\📌${MergeFileName}" -Encoding UTF8
```
</details>

