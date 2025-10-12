## Timer
```ps1
$start = Get-Date

...

$end = Get-Date
$duration = New-TimeSpan -Start $start -End $end

Write-Host "StartTime : $start"
Write-Host "EndTime   : $end"
Write-Host "Duration  : $($duration.TotalSeconds)s"
```
<details open>
    <summary></summary>

```ps1
$start = Get-Date

...

$end = Get-Date
$duration = New-TimeSpan -Start $start -End $end

Write-Host "StartTime: $start"
Write-Host "EndTime  : $end"
Write-Host "Duration : $($duration.TotalSeconds)s"
```
```ps1
$start = Get-Date

...

$end = Get-Date
$duration = New-TimeSpan -Start $start -End $end

Write-Host "StartTime : $start"
Write-Host "EndTime   : $end"
Write-Host "Duration  : $($duration.TotalSeconds)s"
```
</details>

