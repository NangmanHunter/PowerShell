## FileMerge
```ps1
# ##추가
$MergeFileName = "MergeFile.md"
Get-ChildItem -File | Where-Object { $_.Name -ne $MergeFileName } | ForEach-Object {
    "## "+$_.Name
    Get-Content $_.FullName
    ""  
    ""  
} | Set-Content $MergeFileName -Encoding UTF8
```
<details open>
    <summary></summary>

```ps1
Get-ChildItem -File | ForEach-Object {
    Get-Content $_.FullName
} | Set-Content "합쳐진파일.txt"
```
```ps1
Get-ChildItem -File | Where-Object { $_.Name -ne "합쳐진파일.txt" } | ForEach-Object {
    Get-Content $_.FullName
} | Set-Content "합쳐진파일.txt"
```
```ps1
$MergeFileName="합쳐진파일.txt"
Get-ChildItem -File | Where-Object { $_.Name -ne $MergeFileName } | ForEach-Object {
    Get-Content $_.FullName
} | Set-Content $MergeFileName
```
```ps1
$MergeFileName="OutputFile.txt"
Get-ChildItem -File | Where-Object { $_.Name -ne $MergeFileName } | ForEach-Object {
    Get-Content $_.FullName
} | Set-Content $MergeFileName
```
```ps1
$MergeFileName="OutPutFile.txt"
Get-ChildItem -File | Where-Object { $_.Name -ne $MergeFileName } | ForEach-Object {
    Get-Content $_.FullName
} | Set-Content $MergeFileName
```
```ps1
$MergeFileName="MergeFile.txt"
Get-ChildItem -File | Where-Object { $_.Name -ne $MergeFileName } | ForEach-Object {
    Get-Content $_.FullName
} | Set-Content $MergeFileName
```
```ps1
$MergeFileName="MergeOutputFile.txt"
Get-ChildItem -File | Where-Object { $_.Name -ne $MergeFileName } | ForEach-Object {
    Get-Content $_.FullName
} | Set-Content $MergeFileName
```
```ps1
$MergeFileName="MergeOutPutFile.txt"
Get-ChildItem -File | Where-Object { $_.Name -ne $MergeFileName } | ForEach-Object {
    Get-Content $_.FullName
} | Set-Content $MergeFileName
```


`NewLine`
```ps1
# 각줄추가
$MergeFileName = "MergeFile.txt"
Get-ChildItem -File | Where-Object { $_.Name -ne $MergeFileName } | ForEach-Object {
    Get-Content $_.FullName | ForEach-Object {
        $_  
        ""  
    }
} | Set-Content $MergeFileName -Encoding UTF8
```
```ps1
# 파일별줄추가
$MergeFileName = "MergeFile.txt"
Get-ChildItem -File | Where-Object { $_.Name -ne $MergeFileName } | ForEach-Object {
    Get-Content $_.FullName
    ""  
} | Set-Content $MergeFileName -Encoding UTF8
```


`Heading`
```ps1
$MergeFileName = "MergeFile.txt"
Get-ChildItem -File | Where-Object { $_.Name -ne $MergeFileName } | ForEach-Object {
    Get-Content $_.FullName
    ""  
    "#"+$_.FullName
} | Set-Content $MergeFileName -Encoding UTF8
```
```ps1
$MergeFileName = "MergeFile.txt"
Get-ChildItem -File | Where-Object { $_.Name -ne $MergeFileName } | ForEach-Object {
    Get-Content $_.FullName
    ""  
    "# "+$_.FullName
} | Set-Content $MergeFileName -Encoding UTF8
```
```ps1
$MergeFileName = "MergeFile.md"
Get-ChildItem -File | Where-Object { $_.Name -ne $MergeFileName } | ForEach-Object {
    Get-Content $_.FullName
    ""  
    "# "+$_.FullName
} | Set-Content $MergeFileName -Encoding UTF8

```
```ps1
$MergeFileName = "MergeFile.md"
Get-ChildItem -File | Where-Object { $_.Name -ne $MergeFileName } | ForEach-Object {
    Get-Content $_.FullName
    ""  
    "# "+$_.FullName
} | Set-Content $MergeFileName -Encoding UTF8

```


```ps1
$MergeFileName = "MergeFile.md"
Get-ChildItem -File | Where-Object { $_.Name -ne $MergeFileName } | ForEach-Object {
    Get-Content $_.FullName
    ""  
    "# "+$_.Name
} | Set-Content $MergeFileName -Encoding UTF8

```
- `Get-ChildItem`은 `System.IO.FileInfo` 또는 `System.IO.DirectoryInfo` 객체를 반환합니다.
- ```
  Name           파일/폴더 이름
  FullName       전체 경로
  Length         파일 크기(바이트)
  DirectoryName  상위 폴더 경로
  Extension      확장자(.txt, .ps1 등)
  CreationTime   생성일시
  LastWriteTime  최종 수정일시
  Attributes     파일 속성(ReadOnly, Hidden 등)
  PSIsContainer  폴더 여부 (True = 폴더)
  ```


```ps1
$MergeFileName = "MergeFile.md"
Get-ChildItem -File | Where-Object { $_.Name -ne $MergeFileName } | ForEach-Object {
    "# "+$_.Name
    Get-Content $_.FullName
    ""  
} | Set-Content $MergeFileName -Encoding UTF8
```
```ps1
# #추가
$MergeFileName = "MergeFile.md"
Get-ChildItem -File | Where-Object { $_.Name -ne $MergeFileName } | ForEach-Object {
    "# "+$_.Name
    Get-Content $_.FullName
    ""  
    ""  
} | Set-Content $MergeFileName -Encoding UTF8
```


```ps1
# ##추가
$MergeFileName = "MergeFile.md"
Get-ChildItem -File | Where-Object { $_.Name -ne $MergeFileName } | ForEach-Object {
    "## "+$_.Name
    Get-Content $_.FullName
    ""  
    ""  
} | Set-Content $MergeFileName -Encoding UTF8
```
</details>
