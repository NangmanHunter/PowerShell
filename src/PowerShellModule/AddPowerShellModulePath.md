## AddPowerShellModulePath
```ps1
$env:PSModulePath += ";C:\...\📁Directory"
```
<details open>
    <summary></summary>

`+=`
```ps1
$env:PSModulePath += 
```

`;`
```ps1
$env:PSModulePath += ";"
```
```ps1
$env:PSModulePath += "; ..."
```
```ps1
$env:PSModulePath += ";📁"
```
```ps1
$env:PSModulePath += ";📁Directory"
```

`;C:\`
```ps1
$env:PSModulePath += ";C:\"
```
```ps1
$env:PSModulePath += ";C:\..."
```
```ps1
$env:PSModulePath += ";C:\test"
```
```ps1
$env:PSModulePath += ";C:\...\📁Directory"
```
```ps1
$env:PSModulePath += ";C:\...\📁Directory"
<#
EnvireonmentVariable
- $env
- C:\...\📁Directory

PowerShellModule
- .psm1
- C:\...\📁Directory\📁01Module\📄01Module.psm1
- C:\...\📁Directory\📁02Module\📄02Module.psm1
#>
```

```ps1
$env:PSModulePath += ";C:\github-nangmanhunter\powershell\etc\Module"
```
```ps1
$env:PSModulePath += ";C:\github-nangmanhunter\powershell\src"
```
</details>
