## ChildDirectory_Path
```ps1
param(
    [string]$Path = ".",
    [switch]$Recursive,
    [switch]$IncludeHidden,
    [string]$OutFile
)

$gciParams = @{ Path = $Path; Directory = $true }
if ($Recursive) { $gciParams.Add("Recurse",$true) }

$dirs = Get-ChildItem @gciParams |
    Where-Object {
        if ($IncludeHidden) { $true }
        else { -not ($_.Attributes -band [IO.FileAttributes]::Hidden) }
    } |
    Select-Object -ExpandProperty FullName

if ($OutFile) {
    $dirs | Out-File -FilePath $OutFile -Encoding utf8
} else {
    $dirs
}
```