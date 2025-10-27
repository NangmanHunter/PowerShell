## ReverseSortOtherFile
```ps1
$lines = Get-Content test.md
[Array]::Reverse($lines)
$lines | Set-Content reversed.md
```