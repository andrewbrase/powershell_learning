<# used to close out of all programs at the end of my day #>
get-process | where-object {$_.MainWindowTitle -ne ""} | foreach-object {$_.closemainwindow()}