# BRFLUID Office Add-in with JavaScript
BRFLUID is the Office Add-in to help that a user find/use easily fluid poperty of water/steam, compressible and calculate pressure drop in excel.

<br>

# Custom functions in Excel

Custom functions enable you to add new functions to Excel by defining those functions in JavaScript as part of an add-in. Users within Excel can access custom functions just as they would any native function in Excel, such as `SUM()`.  

For example <br>
 `BR.STEAM_GetValue_InputParameters (Input1, Input2 ....)` <br>
 =BR.steamHPT(pressure, Temperature) >> Get Enthalpy, kJ/kg <br>
 =BR.steamTP(pressure)               >> Get Saturated Temperature, 'C <br>
 
 =BR.FrictionFactor(dia, roughness, reynolds) >> Get friction factor






<br>
<br>
<br>
<br>
<br>
<br>


This repository contains the source code used by the [Yo Office generator](https://github.com/OfficeDev/generator-office) when you create a new custom functions project. You can also use this repository as a sample to base your own custom functions project from if you choose not to use the generator. For more detailed information about custom functions in Excel, see the [Custom functions overview](https://docs.microsoft.com/office/dev/add-ins/excel/custom-functions-overview) article in the Office Add-ins documentation or see the [additional resources](#additional-resources) section of this repository.

## Debugging custom functions

This template supports debugging custom functions from [Visual Studio Code](https://code.visualstudio.com/). For more information see [Custom functions debugging](https://aka.ms/custom-functions-debug). For general information on debugging task panes and other Office Add-in parts, see [Test and debug Office Add-ins](https://docs.microsoft.com/office/dev/add-ins/testing/test-debug-office-add-ins).


## Additional resources

* [Custom functions overview](https://docs.microsoft.com/office/dev/add-ins/excel/custom-functions-overview)
* [Office Add-ins documentation](https://docs.microsoft.com/office/dev/add-ins/overview/office-add-ins)
* More Office Add-ins samples at [OfficeDev on Github](https://github.com/officedev)

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/). For more information, see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

## Copyright

Copyright (c) 2022 theangkko. All rights reserved.
