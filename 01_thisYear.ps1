<#created with the powershell ISE#>

$dateTime = get-date
$thisYear = $dateTime.Year
write-host "The year is $thisYear!"

<#
PowerShell is a scripting language and shell built on top of the .NET framework.

PowerShell provides a command-line interface (CLI) for interacting with the operating system, 
as well as a scripting language for writing scripts to automate common tasks.

One of the key features of PowerShell is its ability to work with .NET objects and APIs, 
which makes it a powerful tool for managing Windows systems.
#>

<#
Powershell will give you what it thinks you'd want to see with get-date
Thursday, February 16, 2023 8:41:04 AM

*If we use :
get-date | format-list
this will display all of the properties in the object all along,
instead of just what powershell gave in the first command 

--->
DisplayHint : DateTime
Date        : 2/16/2023 12:00:00 AM
Day         : 16
DayOfWeek   : Thursday
DayOfYear   : 47
Hour        : 8
Kind        : Local
Millisecond : 796
Minute      : 42
Month       : 2
Second      : 2
Ticks       : 638121337227965860
TimeOfDay   : 08:42:02.7965860
Year        : 2023
DateTime    : Thursday, February 16, 2023 8:42:02 AM

#>

<# 

____________________________________________________________________________________________

***GET RANDOM
get-random will return a random number
---> 
732611124

____________________________________________________________________________________________

***GET-MEMBER
PS C:\Users\brasea> get-help Get-Member

NAME
    Get-Member

SYNOPSIS
    Gets the properties and methods of objects.


SYNTAX
    Get-Member [[-Name] <System.String[]>] [-Force] [-InputObject <System.Management.Automation.PSObject>] [-MemberType {AliasProperty | CodeProperty | Property | NoteProperty |
    ScriptProperty | Properties | PropertySet | Method | CodeMethod | ScriptMethod | Methods | ParameterizedProperty | MemberSet | Event | Dynamic | All}] [-Static] [-View {Extended |
    Adapted | Base | All}] [<CommonParameters>]


DESCRIPTION
    The `Get-Member` cmdlet gets the members, the properties and methods, of objects.

    To specify the object, use the InputObject parameter or pipe an object to `Get-Member`. To get information about static members, the members of the class, not of the instance, use the
    Static parameter. To get only certain types of members, such as NoteProperties , use the MemberType parameter.

    `Get-Member` returns a list of members that's sorted alphabetically. Methods are listed first, followed by the properties.


RELATED LINKS
    Online Version: https://learn.microsoft.com/powershell/module/microsoft.powershell.utility/get-member?view=powershell-5.1&WT.mc_id=ps-gethelp
    Add-Member

REMARKS
    To see the examples, type: "get-help Get-Member -examples".
    For more information, type: "get-help Get-Member -detailed".
    For technical information, type: "get-help Get-Member -full".
    For online help, type: "get-help Get-Member -online"

____________________________________________________________________________________________

IF we use get-random | get-member
PS C:\Users\brasea> Get-Random | get-member


   TypeName: System.Int32

Name        MemberType Definition
----        ---------- ----------
CompareTo   Method     int CompareTo(System.Object value), int CompareTo(int value), int IComparable.CompareTo(System.Object obj), int IComparable[int].CompareTo(int other)
Equals      Method     bool Equals(System.Object obj), bool Equals(int obj), bool IEquatable[int].Equals(int other)
GetHashCode Method     int GetHashCode()
GetType     Method     type GetType()
GetTypeCode Method     System.TypeCode GetTypeCode(), System.TypeCode IConvertible.GetTypeCode()
ToBoolean   Method     bool IConvertible.ToBoolean(System.IFormatProvider provider)
ToByte      Method     byte IConvertible.ToByte(System.IFormatProvider provider)
ToChar      Method     char IConvertible.ToChar(System.IFormatProvider provider)
ToDateTime  Method     datetime IConvertible.ToDateTime(System.IFormatProvider provider)
ToDecimal   Method     decimal IConvertible.ToDecimal(System.IFormatProvider provider)
ToDouble    Method     double IConvertible.ToDouble(System.IFormatProvider provider)
ToInt16     Method     int16 IConvertible.ToInt16(System.IFormatProvider provider)
ToInt32     Method     int IConvertible.ToInt32(System.IFormatProvider provider)
ToInt64     Method     long IConvertible.ToInt64(System.IFormatProvider provider)
ToSByte     Method     sbyte IConvertible.ToSByte(System.IFormatProvider provider)
ToSingle    Method     float IConvertible.ToSingle(System.IFormatProvider provider)
ToString    Method     string ToString(), string ToString(string format), string ToString(System.IFormatProvider provider), string ToString(string format, System.IFormatProvider provide...
ToType      Method     System.Object IConvertible.ToType(type conversionType, System.IFormatProvider provider)
ToUInt16    Method     uint16 IConvertible.ToUInt16(System.IFormatProvider provider)
ToUInt32    Method     uint32 IConvertible.ToUInt32(System.IFormatProvider provider)
ToUInt64    Method     uint64 IConvertible.ToUInt64(System.IFormatProvider provider)

____________________________________________________________________________________________

The main ways to look up and get help

get-command *what youre looking for wildcard*
- searches for cmdlets that relate to the wildcard

get-help {command}
- lists documentation on command and what it does

{command} | get-member
- shows properties and methods associated with the 
object returned from the first cmdlet

____________________________________________________________________________________________

Just like programming languages, PowerShell can import modules

* looking for a module that can add telegram capabilities to powershell
find-module -tag cisco
Version    Name                                Repository           Description
-------    ----                                ----------           -----------
1.4.2      PSDiscoveryProtocol                 PSGallery            Capture and parse CDP...
2.1.3      SSHSessions                         PSGallery            Svendsen Tech's SSH-S...
1.0.2      PSCiscoMeraki                       PSGallery            This PowerShell Modul...
0.2.1      AsBuiltReport.Cisco.UcsManager      PSGallery            A PowerShell module t...
1.0.3      Posh-Cisco                          PSGallery            This PowerShell modul...
0.1.3      posh-vpn                            PSGallery            Powershell module to ...
1.0        CiscoDev                            PSGallery            This module offers a ...
0.3.2      PSCiscoSupportAPIs                  PSGallery            PowerShell interface ...

#> 