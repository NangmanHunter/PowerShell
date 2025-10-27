## ReverseSort
```ps1
$lines = Get-Content test.md
[Array]::Reverse($lines)
$lines | Set-Content test.md
```
<details open>
    <summary></summary>

```ps1
$lines = Get-Content test.md
[Array]::Reverse($lines)
$lines
```
```ps1
$lines = Get-Content test.md
[Array]::Reverse($lines)
$lines | Set-Content reversed.md
```
```ps1
$lines = Get-Content test.md
[Array]::Reverse($lines)
$lines | Set-Content test.md
```
</details>
