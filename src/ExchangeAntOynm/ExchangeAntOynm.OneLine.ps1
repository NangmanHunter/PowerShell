$input = "- A↔️B"
"- {0}↔️{1}" -f ($input -replace "^- ", "" -split "↔️")[1], ($input -replace "^- ", "" -split "↔️")[0]
