<#



new-item
- creates a new item
- new-tem -path '{file path}' -name '{name.txt}' -value '{text}'
RELATED LINKS
    Online Version: https://learn.microsoft.com/powershell/module/microsoft.powershell.management/new-item?view=powershell-5.1&WT.mc_id=ps-gethelp
    Clear-Item
    Copy-Item
    Get-Item
    Invoke-Item
    Move-Item
    Remove-Item
    Rename-Item
    Set-Item
    about_Providers




set-content
PS C:\Users\brasea\Desktop\Workspace\powershell\new-item_creations> get-help Set-Content
NAME
Set-Content
SYNOPSIS
Writes new content or replaces existing content in a file.




add-content
- adds value to a file
- add-content -path ".\new-item_creations\test-file.txt" -exclude *help -value "This addition was added onto the file using add-content cmdlet!"
PS C:\Users\brasea\Desktop\Workspace\powershell> get-command *content

CommandType     Name                                               Version    Source
-----------     ----                                               -------    ------
Function        Publish-BCFileContent                              1.0.0.0    BranchCache
Function        Publish-BCWebContent                               1.0.0.0    BranchCache
Cmdlet          Add-Content                                        3.1.0.0    Microsoft.PowerShell.Management
Cmdlet          Clear-Content                                      3.1.0.0    Microsoft.PowerShell.Management
Cmdlet          Get-Content                                        3.1.0.0    Microsoft.PowerShell.Management
Cmdlet          Get-WindowsImageContent                            3.0        Dism
Cmdlet          Set-Content                                        3.1.0.0    Microsoft.PowerShell.Management




#>



<#
PS C:\Users\brasea\Desktop\Workspace\powershell> add-content -path ".\new-item_creations\test-file.txt" -exclude *help -value "This addition was added onto the file using add-content cmdlet!"
PS C:\Users\brasea\Desktop\Workspace\powershell> get-content -path ".\new-item_creations\test-file.txt"
this is a test fileThis addition was added onto the file using add-content cmdlet!
PS C:\Users\brasea\Desktop\Workspace\powershell> get-command *content*

CommandType     Name                                               Version    Source
-----------     ----                                               -------    ------
Function        Get-BCContentServerConfiguration                   1.0.0.0    BranchCache
Function        Publish-BCFileContent                              1.0.0.0    BranchCache
Function        Publish-BCWebContent                               1.0.0.0    BranchCache
Cmdlet          Add-Content                                        3.1.0.0    Microsoft.PowerShell.Management
Cmdlet          Clear-Content                                      3.1.0.0    Microsoft.PowerShell.Management
Cmdlet          Get-Content                                        3.1.0.0    Microsoft.PowerShell.Management
Cmdlet          Get-WindowsImageContent                            3.0        Dism
Cmdlet          Set-Content                                        3.1.0.0    Microsoft.PowerShell.Management
Application     LockScreenContentServer.exe                        10.0.19... C:\windows\system32\LockScreenContentServer.exe


PS C:\Users\brasea\Desktop\Workspace\powershell>
#>