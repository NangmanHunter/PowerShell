function Exchange-Pair {
    param(
        [string]$Line
    )

    # "- " 제거
    $content = $Line -replace "^- ", ""

    # "↔️" 기준으로 split
    $parts = $content -split "↔️"

    # split 실패 방지
    if ($parts.Count -ne 2) {
        return $Line   # 원본 유지
    }

    return "- {0}↔️{1}" -f $parts[1], $parts[0]
}



# ===== 파일 처리 부분 =====
$InputFile  = "input.txt"  # 입력파일경로
$OutputFile = "output.txt" # 출력파일경로


# 파일을 한 줄씩 읽어서 변환 적용
Get-Content $InputFile | ForEach-Object {
    Exchange-Pair $_
} | Set-Content $OutputFile -Encoding UTF8

Write-Host "변환 완료: $OutputFile"
