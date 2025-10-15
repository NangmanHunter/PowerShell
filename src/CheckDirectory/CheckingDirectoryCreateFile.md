## CheckingDirectoryCreateFile
```ps1
$rootPath = Get-Location

# 재귀적으로 각 폴더 검사
function Check-FolderFiles {
    param([string]$Path)

    # 현재 폴더의 자식 검사
    $childs = Get-ChildItem -Path $Path -Force -ErrorAction SilentlyContinue

    if ($childs) {
        Write-Host "✅ExistFile🚥📁📄CheckDirectory: $Path"
    } else {
        Write-Host "❌ExistFile🚥📁📭CheckDirectory: $Path"
        ni -Path "${Path}\.gitkeep"
    }

    # 하위 폴더가 있으면 재귀 호출
    $subDirs = Get-ChildItem -Path $Path -Directory -Force -ErrorAction SilentlyContinue
    foreach ($dir in $subDirs) {
        Check-FolderFiles -Path $dir.FullName
    }
}

# 시작
Check-FolderFiles -Path $rootPath
```
<details open>
    <summary></summary>

```ps1
$rootPath = "C:\github-nangmanhunter\test"

# 재귀적으로 각 폴더 검사
function Check-FolderFiles {
    param([string]$Path)

    # 현재 폴더의 파일만 검사
    $files = Get-ChildItem -Path $Path -File -Force -ErrorAction SilentlyContinue

    if ($files) {
        Write-Host "✅ExistFile🚥📁📄CheckDirectory: $Path"
    } else {
        Write-Host "❌ExistFile🚥📁📭CheckDirectory: $Path"
        ni -Path "${Path}\📄File.md"
    }

    # 하위 폴더가 있으면 재귀 호출
    $subDirs = Get-ChildItem -Path $Path -Directory -Force -ErrorAction SilentlyContinue
    foreach ($dir in $subDirs) {
        Check-FolderFiles -Path $dir.FullName
    }
}

# 시작
Check-FolderFiles -Path $rootPath
```

`.gitkeep`
```ps1
$rootPath = "C:\github-nangmanhunter\test"

# 재귀적으로 각 폴더 검사
function Check-FolderFiles {
    param([string]$Path)

    # 현재 폴더의 파일만 검사
    $files = Get-ChildItem -Path $Path -File -Force -ErrorAction SilentlyContinue

    if ($files) {
        Write-Host "✅ExistFile🚥📁📄CheckDirectory: $Path"
    } else {
        Write-Host "❌ExistFile🚥📁📭CheckDirectory: $Path"
        ni -Path "${Path}\.gitkeep"
    }

    # 하위 폴더가 있으면 재귀 호출
    $subDirs = Get-ChildItem -Path $Path -Directory -Force -ErrorAction SilentlyContinue
    foreach ($dir in $subDirs) {
        Check-FolderFiles -Path $dir.FullName
    }
}

# 시작
Check-FolderFiles -Path $rootPath
```

`CurrentPath`
```ps1
$rootPath = Get-Location

# 재귀적으로 각 폴더 검사
function Check-FolderFiles {
    param([string]$Path)

    # 현재 폴더의 파일만 검사
    $files = Get-ChildItem -Path $Path -File -Force -ErrorAction SilentlyContinue

    if ($files) {
        Write-Host "✅ExistFile🚥📁📄CheckDirectory: $Path"
    } else {
        Write-Host "❌ExistFile🚥📁📭CheckDirectory: $Path"
        ni -Path "${Path}\.gitkeep"
    }

    # 하위 폴더가 있으면 재귀 호출
    $subDirs = Get-ChildItem -Path $Path -Directory -Force -ErrorAction SilentlyContinue
    foreach ($dir in $subDirs) {
        Check-FolderFiles -Path $dir.FullName
    }
}

# 시작
Check-FolderFiles -Path $rootPath
```


`Child검사`
```ps1
$rootPath = Get-Location

# 재귀적으로 각 폴더 검사
function Check-FolderFiles {
    param([string]$Path)

    # 현재 폴더의 자식 검사
    $childs = Get-ChildItem -Path $Path -Force -ErrorAction SilentlyContinue

    if ($childs) {
        Write-Host "✅ExistFile🚥📁📄CheckDirectory: $Path"
    } else {
        Write-Host "❌ExistFile🚥📁📭CheckDirectory: $Path"
        ni -Path "${Path}\.gitkeep"
    }

    # 하위 폴더가 있으면 재귀 호출
    $subDirs = Get-ChildItem -Path $Path -Directory -Force -ErrorAction SilentlyContinue
    foreach ($dir in $subDirs) {
        Check-FolderFiles -Path $dir.FullName
    }
}

# 시작
Check-FolderFiles -Path $rootPath
```
</details>
