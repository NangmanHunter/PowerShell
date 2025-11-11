## BestPractice`Module`
FolderStructure
```ps1
MyModule/
│
├─ MyModule.psd1            ← 모듈 매니페스트 (권장)
├─ MyModule.psm1            ← 모듈 본체 (필수)
│
├─ Public/                  ← 외부에 공개될 함수들
│    ├─ Show-LawLink.ps1
│    ├─ Get-LawText.ps1
│    └─ Convert-LawFormat.ps1
│
└─ Private/                 ← 내부 전용 함수들
     ├─ FormatHelper.ps1
     └─ WebHelper.ps1
```


`.psm1`
```ps1
# ------------------------
# Load Private Functions
# ------------------------
Get-ChildItem "$PSScriptRoot\Private\*.ps1" | ForEach-Object {
    . $_.FullName
}

# ------------------------
# Load Public Functions
# ------------------------
Get-ChildItem "$PSScriptRoot\Public\*.ps1" | ForEach-Object {
    . $_.FullName
}

# ------------------------
# Export Public Functions
# ------------------------
$publicFunctions = Get-ChildItem "$PSScriptRoot\Public\*.ps1" |
    ForEach-Object { [System.IO.Path]::GetFileNameWithoutExtension($_.Name) }

Export-ModuleMember -Function $publicFunctions
```


`.psd1`
```ps1
@{
    ModuleVersion = '1.0.0'
    RootModule    = 'MyModule.psm1'
    Author        = 'YourName'
    FunctionsToExport = @()   # 자동 Export를 쓰기 위해 비워둠
    PrivateData = @{
    }
}
```