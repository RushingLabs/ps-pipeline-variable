$hash = @{
    key1 = "alpha";
    key2 = "bravo";
    key3 = "charlie";
}

# Iterates over a hashtable, with $_
Write-Output ""
Write-Output "Iterating over a hashtable with a '`$_`'"
$hash.Keys | ForEach-Object {
    Write-Host $hash.$_
}
