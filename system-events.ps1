
# Ref: https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/foreach-object?view=powershell-7.1

$Events = Get-EventLog -LogName System -Newest 1000
$events | ForEach-Object -Begin {Get-Date} -Process {
    Out-File -FilePath Events.txt -Append -InputObject $_.Message
} -End {Get-Date}