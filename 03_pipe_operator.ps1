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