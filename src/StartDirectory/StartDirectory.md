## StartDirectory
```ps1
ii "C:\📁Directory"
```
<details open>
    <summary></summary>

```ps1
ii "C:\📁Directory"
```
```ps1
ii "C:\%EA%B0%80%EB%82%98%EB%8B%A4"
```

```ps1
Start-Process "C:\📁Directory"
```
```ps1
Start-Process "C:\%EA%B0%80%EB%82%98%EB%8B%A4"
```
```ps1
Start-Process "file:///C:/📁Directory"
```
```ps1
Start-Process "file:///C:/%EA%B0%80%EB%82%98%EB%8B%A4"
```
```ps1
Start-Process explorer.exe "file:///C:/📁Directory"
```
```ps1
Start-Process explorer.exe "file:///C:/%EA%B0%80%EB%82%98%EB%8B%A4"
```

```ps1
$path = "file:///C:/%EA%B0%80%EB%82%98%EB%8B%A4"
$local = (New-Object System.Uri($path)).LocalPath
Start-Process $local
```
</details>
