# XSteam IF97 SteamTable  in BRFLUID office add-ins
BR-XSTEAM is the Office Add-in to help that a user find/use easily fluid poperty of water/steam in excel on both Desktop App and Online Web excel. This functions can be used with Office2019 and Office365 Later on Mac, Window and Web Browser

<br>

## Get Started
There are two method to install Office Add-in to your excel. <br>
1) install to Desktop App <br>
  - download manifest_installer from https://theangkko.github.io/BR-XSTEAM-OfficeAddin/manifest_installer.cmd
  - run "manifest_installer.cmd" 

<br>

2) install to Web-Browser <br>
  - download manifest_installer from [LINK](https://theangkko.github.io/BR-XSTEAM-OfficeAddin/manifest_brxsteam.xml)
  - open Web-excel 
  - add Office Add-in from "My Addin Menu"

<br>

<img src="https://theangkko.github.io/BR-XSTEAM-OfficeAddin/assets/webSideloadcapture.png" alt= “” width="700">


<br><br><br><br><br>


# Custom functions in Excel

Custom functions enable you to add new functions to Excel by defining those functions in JavaScript as part of an add-in. Users within Excel can access custom functions just as they would any native function in Excel, such as `SUM()`.  

<br>

### X-Steam Tables Functions (x-eng.com)
For example <br>
 `XX.XSTEAM Function Name (Input1, Input2 ....)` <br>
 =XX.T_ph (pressure, enthalpy) >> Get Temperature, 'C <br>
 =XX.p_PT (pressure, Temperature) >> Get Enthalpy, kJ/kg <br>

<br>
<img src="https://theangkko.github.io/BR-XSTEAM-OfficeAddin/assets/howtousefunction01.png" alt= “” width="800">
<br>
<br>
<br>
<br>

### BRSTEAM Functions (UNDER Converting)
For example <br>
 `BR.STEAM_GetValue_InputParameters (Input1, Input2 ....)` <br>
 =BR.steamHPT(pressure, Temperature) >> Get Enthalpy, kJ/kg <br>
 =BR.steamTP(pressure)               >> Get Saturated Temperature, 'C <br>
 

### Further Functions (UNDER Converting)
 `BR.FunctionName (Input1, Input2 ....)` <br>
 =BR.FrictionFactor(dia, roughness, reynolds) >> Get friction factor

<br>
<br>


## Samples
* Excel file in Shared OneDrive as [onlineBRXSTEAM_ex003 ](https://1drv.ms/x/s!AjtDw6AXQrGwgyLCa9YoNKS_3cvU?e=RaRSSP) <br>
https://1drv.ms/x/s!AjtDw6AXQrGwgyLCa9YoNKS_3cvU?e=RaRSSP
 

## Additional resources
* X Steam Tables [by www.x-eng.com](https://xsteam.sourceforge.net/) <br>
* SteamCycle Javascript [by Kiran Pashikanti](https://github.com/kpatvt/xsteam2/) <br>
* For Office Add-ins installation, [MS Office Add-in Sideload Method ](https://learn.microsoft.com/en-us/office/dev/add-ins/testing/create-a-network-shared-folder-catalog-for-task-pane-and-content-add-ins)

<br>

## Copyright

Copyright (c) 2023 theangkko. All rights reserved.
