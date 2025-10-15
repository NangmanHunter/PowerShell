## SequenceCreateFile
```ps1
1..5 | ForEach-Object { New-Item -Path "C:\Temp\file$_.txt" -ItemType File }
```