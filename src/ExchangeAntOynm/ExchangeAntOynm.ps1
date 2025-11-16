$input = "- A↔️B"

# 앞의 "- " 제거
$content = $input -replace "^- ", ""

# ↔️ 기준으로 나누기
$parts = $content -split "↔️"

$A = $parts[0]
$B = $parts[1]

# B ↔️ A 로 재배열해서 다시 "- " 붙이기
$output = "- $B↔️$A"

$output