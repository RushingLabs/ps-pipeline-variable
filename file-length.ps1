
# Ref: https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/foreach-object?view=powershell-7.1

Get-ChildItem $PSHOME | # Grab some directory path, $PSHOME
ForEach-Object -Process {
    if (!$_.PSIsContainer) { # Select only files, no directories (i.e. "containers")
        $_.Name; $_.Length / 1024; " " # report the file name and size (in KB)
    }
}