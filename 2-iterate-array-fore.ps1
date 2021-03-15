# Setup some basic data structures
$array = "alpha", "bravo", "charlie", "delta"

# # Iterate over a simple array with $_
Write-Output ""
Write-Output "Iterating over an array with a '`$_`'"
$array | ForEach-Object { 
    # The $_ assignment moves over each index in the array
    Write-Host $_ 
}





# # Notice, this doesn't work.
# # It isn't "magic". You must be iterating over some data, and then reference `$_`
# # $array | Write-Output $_