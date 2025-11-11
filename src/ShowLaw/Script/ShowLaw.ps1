function Show-Law {
    param(
        [Parameter(Mandatory)]
        [string]$Law
    )

    Start-Process "https://www.law.go.kr/법령/$Law"
}

<#
Show-Law 민법
Show-Law 민법; Show-Law 특허법
Show-Law 민법; Show-Law 특허법;
Show-Law 특허법시행규칙
#>