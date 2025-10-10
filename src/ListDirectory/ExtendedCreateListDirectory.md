
## ExtendedCreateListDirectory
```ps1
# 입력 파일 경로 (예: structure.txt)
$path = "C:\github-nangmanhunter\test\etc\ListDirectoryStructure.md"

# 기본 루트 (폴더 생성 기준 경로)
$base = "C:\github-nangmanhunter\test\etc"

$lines = Get-Content $path

$stack = New-Object System.Collections.ArrayList

foreach ($line in $lines) {
    $trimmed = $line.Trim()

    # 공백 또는 빈 줄이면 넘어가기
    if ($trimmed -eq "") { continue }

    $isDash = $trimmed.StartsWith("-")

    
    $indent = ($line.Length - $trimmed.Length) # "  "기준👉"A"="-B"
    $level = [math]::Floor($indent / 2) + 1

    if ($isDash) { $level += 1 }


    while ($stack.Count -gt $level) { $stack.RemoveAt($stack.Count - 1) }

    $trimmed = $trimmed -replace "- ", ""
    $null = $stack.Add($trimmed)


    $fullPath = Join-Path -Path $base -ChildPath ( ($stack -join "\") )
    New-Item -ItemType Directory -Path $fullPath -Force | Out-Null

    Write-Host "✅CreateDirectory : $fullPath"    
}

Write-Host "✅CreateListDirectory"
```
Input
```
A
- B
  - C
  - D
- E

F
- G
- H
- I
```

Output
```
📁A
- 📁B
  - 📁C
  - 📁D
- 📁E

📁F
- 📁G
- 📁H
- 📁I
```
<details open>
    <summary></summary>

✅Extended
```
A
- B
  - C
  - D
- E

F
- G
- H
- I
```


```ps1
# 입력 파일 경로 (예: structure.txt)
$path = "C:\github-nangmanhunter\test\etc\ListDirectoryStructure.md"

# 기본 루트 (폴더 생성 기준 경로)
$base = "C:\github-nangmanhunter\test\etc"

$lines = Get-Content $path

$stack = New-Object System.Collections.ArrayList

foreach ($line in $lines) {
    $trimmed = $line.Trim()

    $isDash = $trimmed.StartsWith("-")

    
    $indent = ($line.Length - $trimmed.Length) # "  "기준👉"A"="-B"
    $level = [math]::Floor($indent / 2) + 1

    if ($isDash) { $level += 1 }


    while ($stack.Count -gt $level) { $stack.RemoveAt($stack.Count - 1) }

    $trimmed = $trimmed -replace "- ", ""
    $null = $stack.Add($trimmed)


    $fullPath = Join-Path -Path $base -ChildPath ( ($stack -join "\") )
    New-Item -ItemType Directory -Path $fullPath -Force | Out-Null

    Write-Host "✅CreateDirectory : $fullPath"    
}

Write-Host "✅CreateListDirectory"
```


`$line없을경우제외`
```ps1
# 입력 파일 경로 (예: structure.txt)
$path = "C:\github-nangmanhunter\test\etc\ListDirectoryStructure.md"

# 기본 루트 (폴더 생성 기준 경로)
$base = "C:\github-nangmanhunter\test\etc"

$lines = Get-Content $path

$stack = New-Object System.Collections.ArrayList

foreach ($line in $lines) {
    $trimmed = $line.Trim()

    # 공백 또는 빈 줄이면 넘어가기
    if ($trimmed -eq "") { continue }

    $isDash = $trimmed.StartsWith("-")

    
    $indent = ($line.Length - $trimmed.Length) # "  "기준👉"A"="-B"
    $level = [math]::Floor($indent / 2) + 1

    if ($isDash) { $level += 1 }


    while ($stack.Count -gt $level) { $stack.RemoveAt($stack.Count - 1) }

    $trimmed = $trimmed -replace "- ", ""
    $null = $stack.Add($trimmed)


    $fullPath = Join-Path -Path $base -ChildPath ( ($stack -join "\") )
    New-Item -ItemType Directory -Path $fullPath -Force | Out-Null

    Write-Host "✅CreateDirectory : $fullPath"    
}

Write-Host "✅CreateListDirectory"
```
</details>



