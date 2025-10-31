


### 1. **파일 실행 (스크립트, exe 등)**

* 가장 흔한 경우죠.

  ```powershell
  .\myscript.ps1      # PowerShell 스크립트 실행
  notepad.exe         # exe 실행
  ./program.exe arg1  # 인자와 함께 실행
  ```

---


### 2. **명령 실행 (Cmdlet / Alias)**

PowerShell 자체가 **명령 기반**이니까, 사실상 "Run"은 명령 실행이에요.
예:

```powershell
Get-Process
Start-Job
ls   # alias
```



### 3. **표현식/코드 실행**
`Invoke-Expression` (`iex`)을 쓰면 문자열로 된 코드도 "실행(run)" 가능해요.

```powershell
iex 'Write-Host "Hello World"'
```


### 4. **스크립트 블록 실행**
코드 블록을 변수에 담고 실행할 수도 있어요.
```powershell
$code = { Get-Date }
& $code
```
