function Show-LawLink {
    param(
        [Parameter(Mandatory)]
        [string]$Url
    )

    Start-Process $Url
}


<#
PowerShell
- Show-LawLink "https://www.law.go.kr/법령/민법"
- Show-LawLink -Url "https://www.law.go.kr/법령/민법"

[Parameter(Mandatory)]
- 속성
- 필수매개변수

❌[Parameter(Mandatory)]
- 아무 값도 안 주면 $Url이 그냥 빈 문자열 또는 $null이 돼요. 에러 안 나고 그냥 실행됩니다.
- 에러.바로끝.

✅[Parameter(Mandatory)]
- 에러는 아니지만, PowerShell이 자동으로 입력을 요구합니다. 값 안 주면 함수 실행이 안 되고, 프롬프트에서 입력을 받아야 합니다.
- 더받아주는형태
- Input형태
- 누락시-Input형태
- 누락시-Input형태전환
#>

