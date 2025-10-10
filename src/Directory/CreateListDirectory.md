# ListDirectory
- [CreateListDirectory](#createlistdirectory)
- [Extended`CreateListDirectory`](#extendedcreatelistdirectory)


## CreateListDirectory
```ps1
# 입력 파일 경로 (예: structure.txt)
$path = "C:\github-nangmanhunter\test\etc\ListDirectoryStructure.md"

# 기본 루트 (폴더 생성 기준 경로)
$base = "C:\github-nangmanhunter\test\etc"

$lines = Get-Content $path

$stack = New-Object System.Collections.ArrayList

foreach ($line in $lines) {
    $trimmed = $line.Trim()
    $indent = ($line.Length - $trimmed.Length) # "  "기준👉"A"="-B"
    $level = [math]::Floor($indent / 2) + 1

    while ($stack.Count -gt $level) { $stack.RemoveAt($stack.Count - 1) }

    $trimmed = $trimmed -replace "- ", ""
    $null = $stack.Add($trimmed)


    $fullPath = Join-Path -Path $base -ChildPath ( ($stack -join "\") )
    New-Item -ItemType Directory -Path $fullPath -Force | Out-Null

    Write-Host "✅CreateDirectory : $fullPath"    
}

Write-Host "✅CreateListDirectory"


# $level
# - 0 1 2 ...
# - 0 ↔ 1 2 ...
# - 0 ↔️ 1 2 ...
# - 0 ↔️ $level = Floor + 1 

# 0Level "A"
# 1Level "- B"   
# 2Level "  - C"

# $ null
# - 버림위한선언
# - [void]$stack.Pop()
# - $stack.Pop() | Out-Null
# - $null = $stack.Add($trimmed)
```
Input
```
A
- B
  - C
  - D
- E
```

Output
```
📁A
- 📁B
  - 📁C
  - 📁D
- 📁E
```
<details open>
    <summary></summary>

✅Default
```
A
- B
  - C
  - D
- E
```

❌Extended
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
- Deprecated: `A`Level=`-B`Level
- Deprecated: `A`Level=`-B`Level=`D`Level
- Deprecated: `A`Level=`-B`Level=`D`Level=`-E`Level
- Deprecated: ❌Extended
</details>


## Extended`CreateListDirectory`
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



