function Add-Quote {
    param(
        [Parameter(Mandatory)]
        [string]$Quote
    )

    Add-Content -Path "C:\github-nangmanhunter\quote\src\Korean\Quote.Korean.md" -Value "- $Quote"

}


<#
Parameter
- `-Path`ㆍ`-Value`
- ❌Add-Content "C:\github-nangmanhunter\quote\src\Korean\Quote.Korean.md" "- $Quote"
- ✅Add-Content -Path "C:\github-nangmanhunter\quote\src\Korean\Quote.Korean.md" -Value "- $Quote"
#>