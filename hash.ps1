param (
    [string]$inputhash, [int]$question   
)

$hash = Get-FileHash "q$($question).txt"
if ($hash.Hash -ne $inputhash) {
    throw "Question $($question): Incorrect"
}