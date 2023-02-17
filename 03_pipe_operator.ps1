get-process | Sort-Object

<#
# ---> 
PS C:\windows\system32> get-process | sort-object

Handles  NPM(K)    PM(K)      WS(K)     CPU(s)     Id  SI ProcessName
-------  ------    -----      -----     ------     --  -- -----------
    605      25    11392      21964      17.39   9104   0 aciseagent
    332      21     4624      16444       1.27  18520   1 aciseposture
    792      54    33496      48284     374.97   8984   0 acumbrellaagent
   1004      84   100348      24012      45.73   1552   1 Adobe Desktop Service
    281      25     6848      11768      16.19  18360   1 AdobeIPCBroker
    451      23    13796       2972       0.69  15092   1 AdobeNotificationClient
    183      12     2368       8200       0.45   6048   0 AdobeUpdateService
    277      16     5368      13212       0.53   6072   0 AGMService
    230      14     3996      11504       0.64   4088   0 AGSService
    378      16     4120      14920       6.27   3780   0 AppHelperCap
    400      24    14428      31612       0.78  16256   1 ApplicationFrameHost
    346      19     4312      18656       0.34   6056   0 armsvc
    847      55    69192      60568      35.13  16340   1 atmgr
    286      14    14408      22456       2.39  23948   0 audiodg
    327      23     5836      16644       4.44   2936   1 AuthManSvr
    579      40    28448      42880      14.03  21780   0 AWACMClient
    984      50    29324      51444      10.13   8448   1 AwWindowsIpc
    634      44    31728       2052       1.19   8688   1 CalculatorApp
     42       4      660        588       0.67   2028   1 CCLibrary
     42       4      656       2484       1.38  17884   1 CCXProcess
     .....................................................................
     returns the object in alphabetical order

__________________________________________________________________

PS C:\windows\system32> get-command *net* | sort-object
returns all commands that have "net" in them in alpahabetical order

__________________________________________________________________
PS C:\windows\system32> get-process CalculatorApp | Stop-Process
you can use get-process {app} | stop-process to end a program

__________________________________________________________________
get-module - find imported modules
import-module
Find-Module -tag test

PS C:\windows\system32> get-help import-module

NAME
    Import-Module

SYNOPSIS
    Adds modules to the current session.
#>

<#
get-process notepad | stop-process
get-help Stop-Process -full
__________________________________________________________________
__________________________________________________________________

get-process | ForEach-Object {$psitem}
- get all processes and for each process return the current object psitem

PS C:\Users\brasea> 1,2,3,4,5,6,7,8,9,10 | foreach-object {$psitem}
1
2
3
4
5
6
7
8
9
10
PS C:\Users\brasea>

A shorthand way of writing PSITEM is $_
PS C:\Users\brasea> "this","is","a","test" | ForEach-Object {$_}
this
is
a
test

FORMATTING 
__________________________________________________________________
PS C:\Users\brasea> get-date | format-table

DisplayHint Date                  Day DayOfWeek DayOfYear Hour  Kind Millisecond Minute Mont
                                                                                           h
----------- ----                  --- --------- --------- ----  ---- ----------- ------ ----
   DateTime 2/16/2023 12:00:00 AM  16  Thursday        47   20 Local         866     21    2


PS C:\Users\brasea>

__________________________________________________________________
PS C:\Users\brasea> get-date | format-list

DisplayHint : DateTime
Date        : 2/16/2023 12:00:00 AM
Day         : 16
DayOfWeek   : Thursday
DayOfYear   : 47
Hour        : 20
Kind        : Local
Millisecond : 553
Minute      : 22
Month       : 2
Second      : 16
Ticks       : 638121757365537414
TimeOfDay   : 20:22:16.5537414
Year        : 2023
DateTime    : Thursday, February 16, 2023 8:22:16 PM

PS C:\Users\brasea>

PS C:\Users\brasea> get-command *network* | Format-Table

CommandType     Name                                               Version    Source
-----------     ----                                               -------    ------
Function        Add-NetEventNetworkAdapter                         1.0.0.0    NetEventPacketCapture
Function        Add-NetEventVmNetworkAdapter                       1.0.0.0    NetEventPacketCapture
Function        Add-VpnConnectionTriggerTrustedNetwork             2.0.0.0    VpnClient
Function        Disable-NetworkSwitchEthernetPort                  1.0.0.0    NetworkSwitchManager
Function        Disable-NetworkSwitchFeature                       1.0.0.0    NetworkSwitchManager
Function        Disable-NetworkSwitchVlan                          1.0.0.0    NetworkSwitchManager
Function        Enable-NetworkSwitchEthernetPort                   1.0.0.0    NetworkSwitchManager
Function        Enable-NetworkSwitchFeature                        1.0.0.0    NetworkSwitchManager
Function        Enable-NetworkSwitchVlan                           1.0.0.0    NetworkSwitchManager
Function        Get-BCNetworkConfiguration                         1.0.0.0    BranchCache
Function        Get-DtcNetworkSetting                              1.0.0.0    MsDtc
Function        Get-NetEventNetworkAdapter                         1.0.0.0    NetEventPacketCapture
Function        Get-NetEventVmNetworkAdapter                       1.0.0.0    NetEventPacketCapture
Function        Get-NetworkSwitchEthernetPort                      1.0.0.0    NetworkSwitchManager
Function        Get-NetworkSwitchFeature                           1.0.0.0    NetworkSwitchManager
Function        Get-NetworkSwitchGlobalData                        1.0.0.0    NetworkSwitchManager
Function        Get-NetworkSwitchVlan                              1.0.0.0    NetworkSwitchManager
Function        Get-SmbClientNetworkInterface                      2.0.0.0    SmbShare
Function        Get-SmbServerNetworkInterface                      2.0.0.0    SmbShare
Function        New-NetworkSwitchVlan                              1.0.0.0    NetworkSwitchManager
Function        Remove-NetEventNetworkAdapter                      1.0.0.0    NetEventPacketCapture
Function        Remove-NetEventVmNetworkAdapter                    1.0.0.0    NetEventPacketCapture
Function        Remove-NetworkSwitchEthernetPortIPAddress          1.0.0.0    NetworkSwitchManager
Function        Remove-NetworkSwitchVlan                           1.0.0.0    NetworkSwitchManager
Function        Remove-VpnConnectionTriggerTrustedNetwork          2.0.0.0    VpnClient
Function        Restore-NetworkSwitchConfiguration                 1.0.0.0    NetworkSwitchManager
Function        Save-NetworkSwitchConfiguration                    1.0.0.0    NetworkSwitchManager
Function        Set-DtcNetworkSetting                              1.0.0.0    MsDtc
Function        Set-NetworkSwitchEthernetPortIPAddress             1.0.0.0    NetworkSwitchManager
Function        Set-NetworkSwitchPortMode                          1.0.0.0    NetworkSwitchManager
Function        Set-NetworkSwitchPortProperty                      1.0.0.0    NetworkSwitchManager
Function        Set-NetworkSwitchVlanProperty                      1.0.0.0    NetworkSwitchManager
Function        Set-PcsvDeviceNetworkConfiguration                 1.0.0.0    PcsvDevice
Function        Set-VpnConnectionTriggerTrustedNetwork             2.0.0.0    VpnClient
Application     gatherNetworkInfo.vbs                              0.0.0.0    C:\windows\system32\gatherNetworkInfo.vbs

__________________________________________________________________
PS C:\Users\brasea>
PS C:\Users\brasea> Get-Process *vmware* | foreach-object {$_.processname} | Sort-Object
vagrant-vmware-utility
vmware-authd
VMwareHubHealthMonitoring
vmware-usbarbitrator64
PS C:\Users\brasea>

__________________________________________________________________

the format-list * gets all data in the form of a list from each obj 
to see all available properties

PS C:\Users\brasea> Get-Process *vmware* | format-list *


Name                       : vagrant-vmware-utility
Id                         : 7492
PriorityClass              :
FileVersion                :
HandleCount                : 118
WorkingSet                 : 10891264
PagedMemorySize            : 14987264
PrivateMemorySize          : 14987264
VirtualMemorySize          : 715128832
TotalProcessorTime         :
SI                         : 0
Handles                    : 118
VM                         : 5010096128
WS                         : 10891264
PM                         : 14987264
NPM                        : 9928
Path                       :
Company                    :
CPU                        :
ProductVersion             :
Description                :
Product                    :
__NounName                 : Process
BasePriority               : 8
ExitCode                   :
HasExited                  :
ExitTime                   :
Handle                     :
SafeHandle                 :
MachineName                : .
MainWindowHandle           : 0
MainWindowTitle            :
MainModule                 :
MaxWorkingSet              :
MinWorkingSet              :
Modules                    :
NonpagedSystemMemorySize   : 9928
NonpagedSystemMemorySize64 : 9928
PagedMemorySize64          : 14987264
PagedSystemMemorySize      : 66208
PagedSystemMemorySize64    : 66208
PeakPagedMemorySize        : 14987264
PeakPagedMemorySize64      : 14987264
PeakWorkingSet             : 11104256
PeakWorkingSet64           : 11104256
PeakVirtualMemorySize      : 719060992
PeakVirtualMemorySize64    : 5014028288
PriorityBoostEnabled       :
PrivateMemorySize64        : 14987264
PrivilegedProcessorTime    :
ProcessName                : vagrant-vmware-utility
ProcessorAffinity          :
Responding                 : True
SessionId                  : 0
StartInfo                  : System.Diagnostics.ProcessStartInfo
StartTime                  :
SynchronizingObject        :
Threads                    : {7496, 7688, 7692, 7696...}
UserProcessorTime          :
VirtualMemorySize64        : 5010096128
EnableRaisingEvents        : False
StandardInput              :
StandardOutput             :
StandardError              :
WorkingSet64               : 10891264
Site                       :
Container                  :




PS C:\Users\brasea> get-process *vmware* | select-object Name,ID,responding

Name                        Id Responding
----                        -- ----------
vagrant-vmware-utility    7492       True
vmware-authd              7484       True
VMwareHubHealthMonitoring 7720       True
vmware-usbarbitrator64    7568       True


PS C:\Users\brasea>
__________________________________________________________________

PS C:\Users\brasea> get-process | Sort-Object cpu
- looks for which processes are using the most cpu ex.


PS C:\Users\brasea> get-process | Sort-Object cpu

Handles  NPM(K)    PM(K)      WS(K)     CPU(s)     Id  SI ProcessName
-------  ------    -----      -----     ------     --  -- -----------
    510      31    52948      50180      50.14  15492   1 msedgewebview2
   2299      82    73740     154456      53.80  14020   1 explorer
    659      45   266320      23944      65.53   3232   1 Creative Cloud UI Helper
   1628      71   100692     181084      72.47  18360   1 chrome
    444      22   148220     187200     121.38  21444   1 Code
   1007      44   148648     151700     216.03   2980   1 chrome
    463      70   169168     233324     225.70  20544   1 chrome






!!!

PS C:\Users\brasea> get-process | Where-Object {$_.CPU -gt 100}
- get all processes where the CPU usage is greater than 100

Handles  NPM(K)    PM(K)      WS(K)     CPU(s)     Id  SI ProcessName
-------  ------    -----      -----     ------     --  -- -----------
   1018      47   312828     314812     242.84   2980   1 chrome
    463      71   172216     235944     256.30  20544   1 chrome
    441      22   152744     192512     133.55  21444   1 Code

#>