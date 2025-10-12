## CheckDirectory
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
if (Get-ChildItem -File) {
    Write-Host "✅FileExist🚥📁📄"
} else {
    Write-Host "❌FileExist🚥📁"
}
```
```ps1
# -ErrorAction SilentlyContinue : 폴더가 없거나 접근 불가 시 오류 숨김
$path = "C:\Test"
if (Get-ChildItem -Path $path -File -ErrorAction SilentlyContinue) {
    Write-Host "✅FileExist🚥📁📄"
} else {
    Write-Host "❌FileExist🚥📁"
}
```
```ps1
$path = "C:\github-nangmanhunter\test"
if (Get-ChildItem -Path $path -File) {
    Write-Host "✅FileExist🚥📁📄"
} else {
    Write-Host "❌FileExist🚥📁"
}
```
```ps1
$path = "C:\github-nangmanhunter\test"
Write-Host $path
if (Get-ChildItem -Path $path -File) {
    Write-Host "✅FileExist🚥📁📄"
} else {
    Write-Host "❌FileExist🚥📁"
}
```
```ps1
$path = "C:\github-nangmanhunter\test"
if (Get-ChildItem -Path $path -File) {
    Write-Host $path
    Write-Host "✅FileExist🚥📁📄"
} else {
    Write-Host $path
    Write-Host "❌FileExist🚥📁"
}
```
```ps1
$path = "C:\github-nangmanhunter\test"
if (Get-ChildItem -Path $path -File) {
    Write-Host "CheckDirecotry: $path"
    Write-Host "✅FileExist🚥📁📄"
} else {
    Write-Host "CheckDirecotry: $path"
    Write-Host "❌FileExist🚥📁"
}
```
```ps1
$path = "C:\github-nangmanhunter\test"
if (Get-ChildItem -Path $path -File) {
    Write-Host "CheckDirecotry: $path ✅FileExist🚥📁📄"
} else {
    Write-Host "CheckDirecotry: $path ❌FileExist🚥📁"
}
```
```ps1
$path = "C:\github-nangmanhunter\test"
if (Get-ChildItem -Path $path -File) {
    Write-Host "CheckDirecotry: $path🚥✅FileExist🚥📁📄"
} else {
    Write-Host "CheckDirecotry: $path🚥❌FileExist🚥📁"
}
```
```ps1
$path = "C:\github-nangmanhunter\test"
if (Get-ChildItem -Path $path -File) {
    Write-Host "CheckDirecotry: $path🚥✅FileExist📁📄"
} else {
    Write-Host "CheckDirecotry: $path🚥❌FileExist📁"
}
```
```ps1
$path = "C:\github-nangmanhunter\test"
if (Get-ChildItem -Path $path -File) {
    Write-Host "✅FileExist CheckDirecotry: $path🚥📁📄"
} else {
    Write-Host "❌FileExist CheckDirecotry: $path🚥📁"
}
```
```ps1
$path = "C:\github-nangmanhunter\test"
if (Get-ChildItem -Path $path -File) {
    Write-Host "✅FileExist🚥CheckDirecotry: $path📁📄"
} else {
    Write-Host "❌FileExist🚥CheckDirecotry: $path📁"
}
```
```ps1
$path = "C:\github-nangmanhunter\test"
if (Get-ChildItem -Path $path -File) {
    Write-Host "✅FileExist🚥CheckDirecotry: $path 📁📄"
} else {
    Write-Host "❌FileExist🚥CheckDirecotry: $path 📁🗋"
}
```
```ps1
$path = "C:\github-nangmanhunter\test"
if (Get-ChildItem -Path $path -File) {
    Write-Host "✅FileExist🚥CheckDirecotry: $path 📁📄"
} else {
    Write-Host "❌FileExist🚥CheckDirecotry: $path 📁📭"
}
```
```ps1
$path = "C:\github-nangmanhunter\test"
if (Get-ChildItem -Path $path -File) {
    Write-Host "CheckDirecotry: $path🚥✅FileExist📁📄"
} else {
    Write-Host "CheckDirecotry: $path🚥❌FileExist📁📭"
}
```
```ps1
$path = "C:\github-nangmanhunter\test"
if (Get-ChildItem -Path $path -File) {
    Write-Host "CheckDirecotry: $path🚥📁📄FileExist"
} else {
    Write-Host "CheckDirecotry: $path🚥📁📭FileNonExist"
}
```
```ps1
$path = "C:\github-nangmanhunter\test"
if (Get-ChildItem -Path $path -File) {
    Write-Host "CheckDirecotry: $path🚥📁📄ExistFile"
} else {
    Write-Host "CheckDirecotry: $path🚥📁📭NonExistFile"
}
```
```ps1
$path = "C:\github-nangmanhunter\test"
if (Get-ChildItem -Path $path -File) {
    Write-Host "📁CheckDirecotry: $path🚥📄ExistFile"
} else {
    Write-Host "📁CheckDirecotry: $path🚥📭NonExistFile"
}
```
```ps1
$path = "C:\github-nangmanhunter\test"
if (Get-ChildItem -Path $path -File) {
    Write-Host "📁CheckDirecotry: $path🚥📄ExistFile"
} else {
    Write-Host "📁CheckDirecotry: $path🚥📭NonFile"
}
```
```ps1
$path = "C:\github-nangmanhunter\test"
if (Get-ChildItem -Path $path -File) {
    Write-Host "📁CheckDirecotry: $path🚥✅📄ExistFile"
} else {
    Write-Host "📁CheckDirecotry: $path🚥❌📭NonExistFile"
}
```
```ps1
$path = "C:\github-nangmanhunter\test"
if (Get-ChildItem -Path $path -File) {
    Write-Host "📁CheckDirecotry: $path🚥✅ExistFile"
} else {
    Write-Host "📁CheckDirecotry: $path🚥❌NonExistFile"
}
```
```ps1
$path = "C:\github-nangmanhunter\test"
if (Get-ChildItem -Path $path -File) {
    Write-Host "📁CheckDirecotry: $path🚥✅Exist📄File"
} else {
    Write-Host "📁CheckDirecotry: $path🚥❌NonExist📭File"
}
```
```ps1
$path = "C:\github-nangmanhunter\test"
if (Get-ChildItem -Path $path -File) {
    Write-Host "✅Exist 📁CheckDirecotry: $path🚥📄File"
} else {
    Write-Host "❌NonExist 📁CheckDirecotry: $path🚥📭File"
}
```
```ps1
$path = "C:\github-nangmanhunter\test"
if (Get-ChildItem -Path $path -File) {
    Write-Host "✅Exist 📁CheckDirecotry: $path🚥📄File"
} else {
    Write-Host "❌Exist 📁CheckDirecotry: $path🚥📭File"
}
```
```ps1
$path = "C:\github-nangmanhunter\test"
if (Get-ChildItem -Path $path -File) {
    Write-Host "CheckDirecotry: $path🚥✅ExistFile"
} else {
    Write-Host "CheckDirecotry: $path🚥❌NonExistFile"
}
```
```ps1
$path = "C:\github-nangmanhunter\test"
if (Get-ChildItem -Path $path -File) {
    Write-Host "📁📄 CheckDirecotry: $path🚥✅ExistFile"
} else {
    Write-Host "📁📭 CheckDirecotry: $path🚥❌NonExistFile"
}
```
```ps1
$path = "C:\github-nangmanhunter\test"
if (Get-ChildItem -Path $path -File) {
    Write-Host "📁📄CheckDirecotry: $path🚥✅ExistFile"
} else {
    Write-Host "📁📭CheckDirecotry: $path🚥❌NonExistFile"
}
```


`Recursion`
```ps1
$rootPath = "C:\github-nangmanhunter\test"

# 재귀적으로 각 폴더 검사
function Check-FolderFiles {
    param([string]$Path)

    # 현재 폴더의 파일만 검사
    $files = Get-ChildItem -Path $Path -File -Force -ErrorAction SilentlyContinue

    if ($files) {
        Write-Host "📁📄CheckDirectory: $Path 🚥✅ExistFile"
    } else {
        Write-Host "📁📭CheckDirectory: $Path 🚥❌NonExistFile"
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
```ps1
$rootPath = "C:\github-nangmanhunter\test"

# 재귀적으로 각 폴더 검사
function Check-FolderFiles {
    param([string]$Path)

    # 현재 폴더의 파일만 검사
    $files = Get-ChildItem -Path $Path -File -Force -ErrorAction SilentlyContinue

    if ($files) {
        Write-Host "📁📄 ✅ExistFile 🚥 CheckDirectory: $Path"
    } else {
        Write-Host "📁📭 ❌NonExistFile🚥CheckDirectory: $Path"
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
```ps1
$rootPath = "C:\github-nangmanhunter\test"

# 재귀적으로 각 폴더 검사
function Check-FolderFiles {
    param([string]$Path)

    # 현재 폴더의 파일만 검사
    $files = Get-ChildItem -Path $Path -File -Force -ErrorAction SilentlyContinue

    if ($files) {
        Write-Host "📁📄 ✅ExistFile 🚥 CheckDirectory: $Path"
    } else {
        Write-Host "📁📭 ❌NonExistFile 🚥 CheckDirectory: $Path"
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
```ps1
$rootPath = "C:\github-nangmanhunter\test"

# 재귀적으로 각 폴더 검사
function Check-FolderFiles {
    param([string]$Path)

    # 현재 폴더의 파일만 검사
    $files = Get-ChildItem -Path $Path -File -Force -ErrorAction SilentlyContinue

    if ($files) {
        Write-Host "📁📄 ✅ExistFile 🚥 CheckDirectory: $Path"
    } else {
        Write-Host "📁📭 ❌ExistFile 🚥 CheckDirectory: $Path"
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
```ps1
$rootPath = "C:\github-nangmanhunter\test"

# 재귀적으로 각 폴더 검사
function Check-FolderFiles {
    param([string]$Path)

    # 현재 폴더의 파일만 검사
    $files = Get-ChildItem -Path $Path -File -Force -ErrorAction SilentlyContinue

    if ($files) {
        Write-Host "✅ExistFile 📁📄 🚥 CheckDirectory: $Path"
    } else {
        Write-Host "❌ExistFile 📁📭 🚥 CheckDirectory: $Path"
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
```ps1
$rootPath = "C:\github-nangmanhunter\test"

# 재귀적으로 각 폴더 검사
function Check-FolderFiles {
    param([string]$Path)

    # 현재 폴더의 파일만 검사
    $files = Get-ChildItem -Path $Path -File -Force -ErrorAction SilentlyContinue

    if ($files) {
        Write-Host "✅ExistFile 🚥 📁📄CheckDirectory: $Path"
    } else {
        Write-Host "❌ExistFile 🚥 📁📭CheckDirectory: $Path"
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
