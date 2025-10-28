function SortLine{
    param(
        [string]$Name
    )
    Get-Content $Name -Encoding UTF8 | 
    Sort-Object | 
    Set-Content $Name -Encoding UTF8
}

SortLine -Name test.md


<#
SortLine
- ✅SortLine
- ❌Sort-Line
- 경고뜸.
- 혼선지양
#>