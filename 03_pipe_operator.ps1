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

__________________________________________________________________

PS C:\Users\brasea> get-process | Where-Object {$_.id -lt 1000} | Sort-Object id

Handles  NPM(K)    PM(K)      WS(K)     CPU(s)     Id  SI ProcessName
-------  ------    -----      -----     ------     --  -- -----------
      0       0       60          8                 0   0 Idle
   5795       0      208       4120                 4   0 System
      0      14    17632      89800               124   0 Registry
     53       4     1076       1248               648   0 smss
    165      11     1440       7240               672   0 wininit
    885      32     2828       6308               676   1 csrss
    430      19     7016      16848               700   0 svchost
   1078      17     8352      19228               864   0 services
   1082      35     2588       6464               960   0 csrss


#>


<#

PS C:\Users\brasea\Desktop\txt_notes> Get-ChildItem -path $home
-lists all files in home


PS C:\Users\brasea\Desktop\txt_notes> Get-ChildItem -path C:\Users\brasea\Desktop\ | Format-list

PS C:\Users\brasea\Desktop\txt_notes> Get-ChildItem -path 'C:\Users\brasea\Desktop\Workspace\python_learning\d5_data_structures&alg\'




PS C:\Users\brasea\Desktop\txt_notes> Get-ChildItem -path 'C:\Users\brasea\Desktop\Workspace\python_learning\d5_data_structures&alg\' | sort-object length | format-table length,name,CreationTime

Length Name                                     CreationTime
------ ----                                     ------------
     7 .gitignore                               12/22/2022 12:06:29 PM
   343 36_hash_tables.ipynb                     2/1/2023 2:20:03 PM
   659 03_Amortization.txt                      12/28/2022 3:57:35 PM
  1259 19_doubly_linked_lists.txt               1/5/2023 3:49:15 PM
  1408 scratchbook.ipynb                        2/3/2023 4:26:51 PM
  1518 22_recursion.txt                         1/9/2023 7:31:43 PM
  1801 07_largest_continous_sum.ipynb           12/31/2022 11:22:31 AM
  1914 10_unique_characters_problem.ipynb       1/1/2023 6:33:52 PM
  2063 12_stack.ipynb                           1/1/2023 7:07:18 PM
  2069 29_CICD.txt                              1/24/2023 9:42:11 AM
  2119 17_balance_check.ipynb                   1/4/2023 1:14:39 PM
  2271 13_queue.ipynb                           1/1/2023 7:32:25 PM
  2294 11_stacks_queues_deques.txt              1/1/2023 6:56:16 PM
  2347 04_Anagram_problem.ipynb                 12/28/2022 4:26:38 PM
  2406 02_dynamic_arr.py                        12/27/2022 7:09:58 AM
  2731 15_Deque.ipynb                           1/2/2023 7:13:08 PM
  2906 34_sorting_alg_details.txt               1/30/2023 8:41:21 PM
  2977 20_Linked_List_Nth_to_Last_Node.ipynb    1/6/2023 11:22:05 AM
  3070 28_sorting_alg.ipynb                     1/25/2023 11:21:04 AM
  3113 05_Array_pair_sum.ipynb                  12/28/2022 8:59:55 PM
  3175 32_insertion_sort.ipynb                  1/28/2023 8:31:16 PM
  3178 09_word_compress.ipynb                   12/31/2022 4:25:53 PM
  3391 14_stack_vs_queue.ipynb                  1/2/2023 6:56:33 PM
  3761 23_models_and_more.txt                   1/18/2023 10:27:39 AM
  3780 23_Memoization-study.ipynb               1/17/2023 9:54:14 PM
  3937 30_bubble_sort.ipynb                     1/26/2023 7:03:50 PM
  4010 08_sentence_rev.ipynb                    12/31/2022 11:44:35 AM
  4337 31_selection_sort.ipynb                  1/26/2023 8:16:53 PM
  4734 16_implementation.ipynb                  1/3/2023 8:01:43 AM
  5124 06_Missing_element_problem.ipynb         12/28/2022 9:30:19 PM
  5255 22_recursion_factorial.jpg               1/9/2023 8:00:22 PM
  5801 33_shell_sort.ipynb                      1/30/2023 7:48:32 PM
  5935 26_binary_search_trees.ipynb             1/22/2023 1:11:21 PM
  6442 21_practice.ipynb                        1/9/2023 2:06:37 PM
  6839 35_merge_sort.ipynb                      1/30/2023 8:50:12 PM
  9083 38_graphs.ipynb                          2/3/2023 7:09:13 AM
 10198 23_memoization.ipynb                     1/12/2023 8:36:02 PM
 10640 18_linked_lists.ipynb                    1/5/2023 2:25:29 PM
 10675 37_quick_sort.ipynb                      2/1/2023 9:24:35 PM
 12442 24_binary_tress.ipynb                    1/18/2023 12:24:05 PM
 12572 25_priority_queues_w_binary_healps.ipynb 1/20/2023 10:34:10 AM
 14317 23_practice.ipynb                        1/17/2023 12:17:40 PM
 14570 01_data_structures&alg.py                12/21/2022 1:57:07 PM
 22973 27_search.ipynb                          1/25/2023 11:15:59 AM
 30036 22_recursive_functions.ipynb             1/9/2023 7:47:50 PM
 81842 37_quick_sort.JPG                        2/2/2023 9:27:39 AM
103632 26_binary_search_tree.JPG                1/22/2023 1:29:40 PM
124606 35_merge_sort.JPG                        2/1/2023 1:53:29 PM
141918 25_insert_heap.JPG                       1/20/2023 11:30:16 AM
153867 01_big-o_chart.ipynb                     12/22/2022 11:58:36 AM
481276 38_graphs.jpg                            2/3/2023 7:30:36 AM
587396 03_Amortization_01.jpg                   12/28/2022 4:23:03 PM
664852 03_Amortization.jpg                      12/28/2022 4:11:01 PM
699680 38_adjacency_matrix.jpg                  2/3/2023 8:46:45 AM
767442 38_adjacency_list.jpg                    2/3/2023 8:59:58 AM
861584 30_bubble_sort.jpg                       1/26/2023 7:15:00 PM
910849 31_selection_sort.jpg                    1/26/2023 8:22:26 PM
       DSAvenv                                  12/22/2022 12:01:31 PM
       extra                                    12/22/2022 11:59:39 AM

__________________________________________________________________
__________________________________________________________________

PS C:\Users\brasea\Desktop\txt_notes> Get-ChildItem -path 'C:\Users\brasea\desktop\apps' | Sort-Object length | Format-table name,length,LastAccessTime

Name                             Length LastAccessTime
----                             ------ --------------
Brother support website.url         204 2/14/2023 8:58:24 AM
Wallpaper Engine.url                222 2/14/2023 8:58:24 AM
Notepad++.lnk                       872 2/16/2023 10:14:16 AM
PuTTY.lnk                          1026 2/16/2023 10:14:16 AM
Steam.lnk                          1043 2/16/2023 10:14:16 AM
Minecraft Launcher.lnk             1110 2/16/2023 10:14:16 AM
WinSCP.lnk                         1141 2/16/2023 10:14:16 AM
Webex.lnk                          1147 2/16/2023 10:14:16 AM
Firefox.lnk                        1151 2/16/2023 10:14:16 AM
Oracle VM VirtualBox.lnk           1156 2/16/2023 10:14:16 AM
VMware Workstation 16 Player.lnk   1268 2/16/2023 10:14:16 AM
Adobe Creative Cloud.lnk           1363 2/16/2023 10:14:16 AM
Visual Studio Code.lnk             1414 2/16/2023 10:14:16 AM
Spotify.lnk                        1862 2/16/2023 10:14:16 AM
Cisco AnyConnect VPN Client.lnk    1934 2/16/2023 10:14:16 AM
P-touch Editor 5.4.lnk             1951 2/16/2023 10:14:16 AM
VMware Horizon Client.lnk          2065 2/16/2023 10:14:16 AM
P-touch Update Software.lnk        2070 2/16/2023 10:14:16 AM
Acrobat Reader.lnk                 2131 2/16/2023 10:14:16 AM
Atom.lnk                           2199 2/16/2023 10:14:16 AM
Microsoft Edge.lnk                 2283 2/16/2023 10:14:16 AM
Microsoft Teams.lnk                2372 2/16/2023 10:14:16 AM
download.png                       5461 7/11/2022 6:45:20 AM
Brother Common Installer                2/16/2023 10:14:16 AM
Brother Manuals                         2/16/2023 10:14:16 AM



#>