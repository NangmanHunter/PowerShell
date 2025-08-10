#
## GetChildDirectory
```ps1
ls
```
```ps1
Get-ChildItem -Directory
```

## CreateDirectoryGetChildDirectory
```bash
.\A\Directory\
.\B\Directory\
.\C\Directory\
```
- ```ps1
  Get-ChildItem -Directory | ForEach-Object {
      New-Item -Path (Join-Path $_.FullName "Directory") -ItemType Directory -Force
  }
  ```
  - Get-ChildItem -Directory → 현재 경로의 바로 아래 폴더 목록 가져오기
  - ForEach-Object { ... } → 각 폴더마다 반복 실행
  - Join-Path $_.FullName "test" → 해당 폴더 경로 + test 하위 경로 생성
  - -Force → 이미 있으면 에러 없이 넘어감

## MutliCreateDirectoryGetChildDirectory
```bash
.\A\01Directory\
.\A\02Directory\
.\B\01Directory\
.\B\02Directory\
.\C\01Directory\
.\C\02Directory\
```
- ```ps1
  Get-ChildItem -Directory | ForEach-Object {
      New-Item -Path (Join-Path $_.FullName "01Directory") -ItemType Directory -Force
      New-Item -Path (Join-Path $_.FullName "02Directory") -ItemType Directory -Force
  }
  ```

## ChildCreateDirectoryGetChildDirectory
```bash
.\A\Directory\ChildDirectory
.\B\Directory\ChildDirectory
.\C\Directory\ChildDirectory
```
- ```ps1
  Get-ChildItem -Directory | ForEach-Object {
      New-Item -Path (Join-Path $_.FullName "Directory\ChildDirectory") -ItemType Directory -Force
  }
  ```

## MultiChildCreateDirectoryGetChildDirectory
```bash
.\A\Directory\01ChildDirectory
.\A\Directory\02ChildDirectory
.\B\Directory\01ChildDirectory
.\B\Directory\02ChildDirectory
.\C\Directory\01ChildDirectory
.\C\Directory\02ChildDirectory
```
- ```ps1
  Get-ChildItem -Directory | ForEach-Object {
      New-Item -Path (Join-Path $_.FullName "Directory\01ChildDirectory") -ItemType Directory -Force
      New-Item -Path (Join-Path $_.FullName "Directory\02ChildDirectory") -ItemType Directory -Force
  }
  ```


```bash
.\A\Glossary\01SynOnym
.\A\Glossary\02AntOnym
.\A\Glossary\03HypOnym
.\B\Glossary\01SynOnym
.\B\Glossary\02AntOnym
.\B\Glossary\03HypOnym
.\C\Glossary\01SynOnym
.\C\Glossary\02AntOnym
.\C\Glossary\03HypOnym
```
- ```ps1
  Get-ChildItem -Directory | ForEach-Object {
      New-Item -Path (Join-Path $_.FullName "Glossary\01SynOnym") -ItemType Directory -Force
      New-Item -Path (Join-Path $_.FullName "Glossary\02AntOnym") -ItemType Directory -Force
      New-Item -Path (Join-Path $_.FullName "Glossary\03HypOnym") -ItemType Directory -Force
  }
  ```