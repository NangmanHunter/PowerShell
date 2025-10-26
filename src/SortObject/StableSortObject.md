## StableSortObject
```ps1
@(
  @{Name="A"; Score=90}
  @{Name="B"; Score=80}
  @{Name="C"; Score=90}
) | Sort-Object Score -Stable
```
> ```
> B 80
> A 90
> C 90
> ```
- A와 C는 둘 다 Score=90이지만, 입력 순서대로 (A 먼저, C 나중) 유지됩니다.
- -Stable을 안 쓰면? PowerShell이 내부적으로 더 빠른 비안정 정렬을 쓸 수 있어서 동일한 값들의 순서가 바뀔 수도 있습니다.