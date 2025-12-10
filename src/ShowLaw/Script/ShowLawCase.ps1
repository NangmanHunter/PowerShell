function Show-LawCase {
    param(
        [Parameter(Mandatory)]
        [string]$LawCase
    )

    Start-Process "https://www.law.go.kr/판례/($LawCase)"
}


<#
Show-LawCase
- Show-LawCase
- show-lawcase


Show-LawCase 0000가00000
- Show-LawCase 0000가00000
- Show-LawCase 2004다48515
- Show-LawCase "2005다5812, 5829, 5836"
- https://www.law.go.kr/판례/(0000가00000)
- https://www.law.go.kr/판례/(2004다48515)
- https://www.law.go.kr/판례/(2005다5812, 5829, 5836)
#>