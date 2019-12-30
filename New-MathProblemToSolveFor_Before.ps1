[int]$Integer1 = Read-Host -Prompt "First Integer"
Write-Host $Integer1
[int]$Integer2 = Read-Host -Prompt "Second Integer"
Write-Host $Integer2
$Action = Read-Host -Prompt "Select Action... Multiply, Divide, Add, or Subtract"
Write-Host $Action

If ($Action -eq "Add") {
    Write-Host "$Integer1 plus $Integer2 "
    $Output = $Integer1 + $Integer2
}
If ($Action -eq "Subtract") {
    Write-Host "$Integer1 minus $Integer2 "
    $Output = $Integer1 - $Integer2
}
If ($Action -eq "Multiply") {
    Write-Host "$Integer1 multiplied by $Integer2 "
    $Output = $Integer1 * $Integer2
}
If ($Action -eq "Divide") {
    Write-Host "$Integer1 divided by $Integer2 "
    $Output = $Integer1 / $Integer2
}
If ($Output -eq $null) {
    Write-Host "No option or wrong option selected"
}

Write-Host $Output