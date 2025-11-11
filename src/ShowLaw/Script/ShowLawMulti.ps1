function Show-LawMulti {
    param(
        [Parameter(Mandatory)]
        [string[]]$Law
    )

    foreach ($item in $Law) {
        Start-Process "https://www.law.go.kr/법령/$item"
    }
}


<#
Show-LawMulti 민법
Show-LawMulti 민법,특허법
Show-LawMulti 민법, 특허법
Show-LawMulti 민법 특허법
#>