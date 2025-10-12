## RecurseDeleteFile
```ps1
$path = Get-Location
$extension = ".gitkeep"

$files = Get-ChildItem -Path $path -File -Filter $extension -Recurse -Force -ErrorAction SilentlyContinue

foreach ($file in $files) {
    Remove-Item $file.FullName
    Write-Host "❌DeleteGitKeep: $($file.FullName)"
}
```
<details open>
    <summary></summary>

`RecurseTargetExtension`
```ps1
$path = "C:\github-nangmanhunter\test"
$extension = "*.log"

$files = Get-ChildItem -Path $path -File -Filter $extension -Recurse -Force -ErrorAction SilentlyContinue

foreach ($file in $files) {
    Remove-Item $file.FullName
    Write-Host "✅ 삭제: $($file.FullName)"
}
```
```ps1
$path = "C:\github-nangmanhunter\test"
$extension = "*.md"

$files = Get-ChildItem -Path $path -File -Filter $extension -Recurse -Force -ErrorAction SilentlyContinue

foreach ($file in $files) {
    Remove-Item $file.FullName
    Write-Host "✅ 삭제: $($file.FullName)"
}
```
```ps1
$path = "C:\github-nangmanhunter\test"
$extension = "*.gitkeep"

$files = Get-ChildItem -Path $path -File -Filter $extension -Recurse -Force -ErrorAction SilentlyContinue

foreach ($file in $files) {
    Remove-Item $file.FullName
    Write-Host "✅ 삭제: $($file.FullName)"
}
```


`TargetFile`
```ps1
$path = "C:\github-nangmanhunter\test"
$extension = ".gitkeep"

$files = Get-ChildItem -Path $path -File -Filter $extension -Recurse -Force -ErrorAction SilentlyContinue

foreach ($file in $files) {
    Remove-Item $file.FullName
    Write-Host "✅ 삭제: $($file.FullName)"
}
```
```ps1
$path = "C:\github-nangmanhunter\test"
$extension = ".gitkeep"

$files = Get-ChildItem -Path $path -File -Filter $extension -Recurse -Force -ErrorAction SilentlyContinue

foreach ($file in $files) {
    Remove-Item $file.FullName
    Write-Host "✅ .gitkeep삭제: $($file.FullName)"
}
```
```ps1
$path = "C:\github-nangmanhunter\test"
$extension = ".gitkeep"

$files = Get-ChildItem -Path $path -File -Filter $extension -Recurse -Force -ErrorAction SilentlyContinue

foreach ($file in $files) {
    Remove-Item $file.FullName
    Write-Host "🗑️삭제 .gitkeep: $($file.FullName)"
}
```
```ps1
$path = "C:\github-nangmanhunter\test"
$extension = ".gitkeep"

$files = Get-ChildItem -Path $path -File -Filter $extension -Recurse -Force -ErrorAction SilentlyContinue

foreach ($file in $files) {
    Remove-Item $file.FullName
    Write-Host "🗑️Delete .gitkeep: $($file.FullName)"
}
```
```ps1
$path = "C:\github-nangmanhunter\test"
$extension = ".gitkeep"

$files = Get-ChildItem -Path $path -File -Filter $extension -Recurse -Force -ErrorAction SilentlyContinue

foreach ($file in $files) {
    Remove-Item $file.FullName
    Write-Host "🗑️Delete: $($file.FullName)"
}
```
```ps1
$path = "C:\github-nangmanhunter\test"
$extension = ".gitkeep"

$files = Get-ChildItem -Path $path -File -Filter $extension -Recurse -Force -ErrorAction SilentlyContinue

foreach ($file in $files) {
    Remove-Item $file.FullName
    Write-Host "🗑️DeleteGitKeep: $($file.FullName)"
}
```
```ps1
$path = "C:\github-nangmanhunter\test"
$extension = ".gitkeep"

$files = Get-ChildItem -Path $path -File -Filter $extension -Recurse -Force -ErrorAction SilentlyContinue

foreach ($file in $files) {
    Remove-Item $file.FullName
    Write-Host "❌DeleteGitKeep: $($file.FullName)"
}
```

`CurrentPath`
```ps1
$path = Get-Location
$extension = ".gitkeep"

$files = Get-ChildItem -Path $path -File -Filter $extension -Recurse -Force -ErrorAction SilentlyContinue

foreach ($file in $files) {
    Remove-Item $file.FullName
    Write-Host "❌DeleteGitKeep: $($file.FullName)"
}
```


`Confirm`
```ps1
$path = "C:\github-nangmanhunter\test"
$extension = "*.log"

$files = Get-ChildItem -Path $path -File -Filter $extension -Recurse -Force -ErrorAction SilentlyContinue

foreach ($file in $files) {
    Write-Host "⚠️ 삭제 예정: $($file.FullName)"
    # 확인 후 삭제
    Remove-Item $file.FullName -Confirm
}
```
```ps1
$path = "C:\github-nangmanhunter\test"
$extension = "*.md"

$files = Get-ChildItem -Path $path -File -Filter $extension -Recurse -Force -ErrorAction SilentlyContinue

foreach ($file in $files) {
    Write-Host "⚠️ 삭제 예정: $($file.FullName)"
    # 확인 후 삭제
    Remove-Item $file.FullName -Confirm
}
```
```ps1
$path = "C:\github-nangmanhunter\test"
$extension = "*.gitkeep"

$files = Get-ChildItem -Path $path -File -Filter $extension -Recurse -Force -ErrorAction SilentlyContinue

foreach ($file in $files) {
    Write-Host "⚠️ 삭제 예정: $($file.FullName)"
    # 확인 후 삭제
    Remove-Item $file.FullName -Confirm
}
```
</details>