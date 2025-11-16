function Exchange-Pair {
    param([string]$line)

    $content = $line -replace "^- ", ""
    $parts   = $content -split "↔️"

    return "- {0}↔️{1}" -f $parts[1], $parts[0]
}

Exchange-Pair "- A↔️B"
