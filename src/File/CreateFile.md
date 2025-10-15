# CreateFile
- [Single`CreateFile`](#singlecreatefile)
- [Multi`CreateFile`](#multicreatefile)


## Single`CreateFile`
```
📌.
 └📄File.md
```
> ```ps1
> ni 📄File.md
> ```
<details open>
    <summary></summary>

`ni`
```ps1
ni 📄File
```
```ps1
ni 📄File -ItemType File
```
```ps1
ni -Path 📄File
```
```ps1
ni -Path "📄File"
```
```ps1
ni -Path "📄File" -ItemType File
```
```ps1
ni -Path "${Path}\📄File"
```
```ps1
ni -Path "${Path}\📄File" -ItemType File
```
```ps1
ni -Path "${Path}\📄File.md"
```
```ps1
ni -Path "${Path}\📄File.md" -ItemType File
```

`New-Item`
```ps1
New-Item 📄File
```
```ps1
New-Item 📄File.md
```
```ps1
New-Item 📄File.md -ItemType File
```
```ps1
New-Item -Path 📄File.md -ItemType File
```
```ps1
New-Item -Path "📄File.md" -ItemType File
```

`>`
```ps1
"" > 📄File
```
```ps1
"" > 📄File.md
```
```ps1
"" > "📄File.md"
```

`Out-File`
```ps1
Out-File 📄File.md
```
```ps1
Out-File "📄File.md"
```
```ps1
"" | Out-File "📄File.md"
```

`sc`
```ps1
sc 📄File
# Enter
```
```ps1
sc 📄File ""
```
```ps1
sc 📄File.md
# Enter
```
```ps1
sc 📄File.md ""
```
```ps1
Set-Content 📄File.md
# Enter
```
```ps1
Set-Content 📄File.md ""
```
```ps1
Set-Content "📄File.md" ""
```
```ps1
Set-Content -Path "📄File.md" 
# Enter
```
```ps1
Set-Content -Path "📄File.md" ""
```
```ps1
Set-Content -Path "📄File.md" -Value ""
```

```ps1
fsutil file createnew "📄File.md" 0
```
</details>


## Multi`CreateFile`
```
📌.
 └📄01File.md
 └📄02File.md
```
> ```ps1
> ni 01File.md 
> ni 02File.md
> ```
<details open>
    <summary></summary>


`ni`
```ps1
ni 01File.md , 02File.md
```
```ps1
ni 01File.md , 
02File.md
```
```ps1
ni 01File.md; ni 02File.md
```

`ni`xN
```ps1
ni 01File.md
ni 02File.md
```
```ps1
ni 01File.md; 
ni 02File.md
```
```ps1
ni 01File.md; 
ni 02File.md;
```
```ps1
ni 01File.md ; ni 02File.md
```
```ps1
ni 01File.md ; 
ni 02File.md
```
```ps1
ni 01File.md ; 
ni 02File.md ;
```


```ps1
$files = @("📄01File.md", "📄02File.md")
$files | ForEach-Object { New-Item -Path $_ -ItemType File }
```
```ps1
@("📄01File.md", "📄02File.md") | ForEach-Object { New-Item -Path $_-ItemType File }
```
```ps1
$files = @("📄01File.md", "📄02File.md")
foreach ($file in $files) {
    New-Item -Path $file -ItemType File
}
```
```ps1
$files = @(
    "📄01File.md", 
    "📄02File.md" 
)
foreach ($file in $files) {
    New-Item -Path $file -ItemType File
}
```
```ps1
$line = @"
📄01File.md
📄02File.md
"@

$files = $line -split "`r?`n"
foreach ($file in $files) {
    New-Item -Path $file -ItemType File -Force
}
```
</details>


