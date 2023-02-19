
# Get-Process
# $process = Get-Process

# -----------------------------
# not using variable

# to get these two sets of info, you have to load get-process twice
# instead of doing that, you can just save the object as a variable to use
# later

Get-Process | Where-Object {$_.CPU -gt 1000} #find processes keeping the CPU busy
Get-Process | Sort-Object WorkingSet64 -Descending #sort processes by memory usage
# -----------------------------
# using variable
$processes = Get-Process
$processes | Where-Object {$_.CPU -gt 1000}
$processes | Sort-Object WorkingSet64 -Descending
# -----------------------------
