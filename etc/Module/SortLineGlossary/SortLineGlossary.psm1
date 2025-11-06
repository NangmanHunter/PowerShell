function SortLineGlossary{
    
    $RootPath = "."
    
    Get-ChildItem -Path $RootPath -Directory -Recurse | Where-Object {
        $_.Name -in @("01SynOnym", "02AntOnym")
    } | ForEach-Object {
        Get-ChildItem -LiteralPath $_.FullName -File -Filter "*.md" | ForEach-Object {
            $FileName = $_.FullName
    
            Write-Host "Processing: $FileName"
    
            Get-Content -LiteralPath $FileName -Encoding UTF8 |
            Sort-Object -Unique |
            Set-Content -LiteralPath $FileName -Encoding UTF8
        }
    }
}