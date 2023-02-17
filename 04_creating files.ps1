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





<#
PS C:\Users\brasea\Desktop\Workspace\powershell> Get-ChildItem -path ".\" -filter *04
PS C:\Users\brasea\Desktop\Workspace\powershell> Get-ChildItem -path ".\" -filter '.\04_creating files.ps1'


    Directory: C:\Users\brasea\Desktop\Workspace\powershell\.


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         2/17/2023   8:09 AM           3397 04_creating files.ps1


PS C:\Users\brasea\Desktop\Workspace\powershell> Get-ChildItem -path ".\" -filter '.\04_creating files.ps1' | Get-Member


   TypeName: System.IO.FileInfo

Name                      MemberType     Definition
----                      ----------     ----------
LinkType                  CodeProperty   System.String LinkType{get=GetLinkType;}
Mode                      CodeProperty   System.String Mode{get=Mode;}
Target                    CodeProperty   System.Collections.Generic.IEnumerable`1[[System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]] Target{get=GetTarget;}
AppendText                Method         System.IO.StreamWriter AppendText()
CopyTo                    Method         System.IO.FileInfo CopyTo(string destFileName), System.IO.FileInfo CopyTo(string destFileName, bool overwrite)
Create                    Method         System.IO.FileStream Create()
CreateObjRef              Method         System.Runtime.Remoting.ObjRef CreateObjRef(type requestedType)
CreateText                Method         System.IO.StreamWriter CreateText()
Decrypt                   Method         void Decrypt()
Delete                    Method         void Delete()
Encrypt                   Method         void Encrypt()
Equals                    Method         bool Equals(System.Object obj)
GetAccessControl          Method         System.Security.AccessControl.FileSecurity GetAccessControl(), System.Security.AccessControl.FileSecurity GetAccessControl(System.Security.AccessControl.AccessControlSections includeSections)
GetHashCode               Method         int GetHashCode()
GetLifetimeService        Method         System.Object GetLifetimeService()
GetObjectData             Method         void GetObjectData(System.Runtime.Serialization.SerializationInfo info, System.Runtime.Serialization.StreamingContext context), void ISerializable.GetObjectData(System.Runtime.Serialization.SerializationInfo info, System.Runti...
GetType                   Method         type GetType()
InitializeLifetimeService Method         System.Object InitializeLifetimeService()
MoveTo                    Method         void MoveTo(string destFileName)
Open                      Method         System.IO.FileStream Open(System.IO.FileMode mode), System.IO.FileStream Open(System.IO.FileMode mode, System.IO.FileAccess access), System.IO.FileStream Open(System.IO.FileMode mode, System.IO.FileAccess access, System.IO.Fil...
OpenRead                  Method         System.IO.FileStream OpenRead()
OpenText                  Method         System.IO.StreamReader OpenText()
OpenWrite                 Method         System.IO.FileStream OpenWrite()
Refresh                   Method         void Refresh()
Replace                   Method         System.IO.FileInfo Replace(string destinationFileName, string destinationBackupFileName), System.IO.FileInfo Replace(string destinationFileName, string destinationBackupFileName, bool ignoreMetadataErrors)
SetAccessControl          Method         void SetAccessControl(System.Security.AccessControl.FileSecurity fileSecurity)
ToString                  Method         string ToString()
PSChildName               NoteProperty   string PSChildName=04_creating files.ps1
PSDrive                   NoteProperty   PSDriveInfo PSDrive=C
PSIsContainer             NoteProperty   bool PSIsContainer=False
PSParentPath              NoteProperty   string PSParentPath=Microsoft.PowerShell.Core\FileSystem::C:\Users\brasea\Desktop\Workspace\powershell\.
PSPath                    NoteProperty   string PSPath=Microsoft.PowerShell.Core\FileSystem::C:\Users\brasea\Desktop\Workspace\powershell\.\04_creating files.ps1
PSProvider                NoteProperty   ProviderInfo PSProvider=Microsoft.PowerShell.Core\FileSystem
Attributes                Property       System.IO.FileAttributes Attributes {get;set;}
CreationTime              Property       datetime CreationTime {get;set;}
CreationTimeUtc           Property       datetime CreationTimeUtc {get;set;}
Directory                 Property       System.IO.DirectoryInfo Directory {get;}
DirectoryName             Property       string DirectoryName {get;}
Exists                    Property       bool Exists {get;}
Extension                 Property       string Extension {get;}
FullName                  Property       string FullName {get;}
IsReadOnly                Property       bool IsReadOnly {get;set;}
LastAccessTime            Property       datetime LastAccessTime {get;set;}
LastAccessTimeUtc         Property       datetime LastAccessTimeUtc {get;set;}
LastWriteTime             Property       datetime LastWriteTime {get;set;}
LastWriteTimeUtc          Property       datetime LastWriteTimeUtc {get;set;}
Length                    Property       long Length {get;}
Name                      Property       string Name {get;}
BaseName                  ScriptProperty System.Object BaseName {get=if ($this.Extension.Length -gt 0){$this.Name.Remove($this.Name.Length - $this.Extension.Length)}else{$this.Name};}
VersionInfo               ScriptProperty System.Object VersionInfo {get=[System.Diagnostics.FileVersionInfo]::GetVersionInfo($this.FullName);}


#>