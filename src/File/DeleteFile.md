## DeleteFile
```ps1
rm 📄File
```
<details open>
    <summary></summary>

```ps1
rm 📄File
```
```ps1
rm 📄File.md
```
```ps1
rm "C:\github-nangmanhunter\test\📄File.md"
```
```ps1
# 삭제할 파일 경로
$file = "C:\github-nangmanhunter\test\📄File.md"

# 파일 존재 여부 확인 후 삭제
if (Test-Path $file) {
    Remove-Item $file
    Write-Host "✅ 파일 삭제 완료: $file"
} else {
    Write-Host "❌ 파일이 존재하지 않습니다: $file"
}
```


`TargetExtension`
```ps1
$path = "C:\github-nangmanhunter\test"
$extension = "*.log"

# 삭제할 파일 가져오기
$files = Get-ChildItem -Path $path -File -Filter $extension -Force -ErrorAction SilentlyContinue

foreach ($file in $files) {
    Remove-Item $file.FullName
    Write-Host "✅ 삭제: $($file.FullName)"
}
```
```ps1
$path = "C:\github-nangmanhunter\test"
$extension = "*.md"

# 삭제할 파일 가져오기
$files = Get-ChildItem -Path $path -File -Filter $extension -Force -ErrorAction SilentlyContinue

foreach ($file in $files) {
    Remove-Item $file.FullName
    Write-Host "✅ 삭제: $($file.FullName)"
}
```
</details>
