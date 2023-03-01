@ECHO OFF

@REM https://docs.microsoft.com/en-us/office/dev/add-ins/testing/create-a-network-shared-folder-catalog-for-task-pane-and-content-add-ins

SET ManifestFolderName=MyManifests
SET FolderLocation=%LOCALAPPDATA%\%ManifestFolderName%
SET computer=%computername%
SET user=%USERNAME%
SET ShareName=Manifest_%user%

REM BatchGotAdmin; https://stackoverflow.com/a/10052222/12858021
:-------------------------------------
@REM  --> Check for permissions
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

@REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params= %*
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------   

@REM create folder in user folder
IF EXIST %FolderLocation% (
    ECHO Found existing folder for install manifests!
) ELSE (
    mkdir %FolderLocation%
)

ECHO Created folder for install manifest @%FolderLocation%.

ECHO Download install manifest to folder..

@REM Download install manifests into new folder
@REM curl.exe --output %FolderLocation%/manifest_brfluid.xml --url https://theangkko.github.io/BRSTEAM-OfficeAddin/manifest_brsteam.xml --ssl-no-revoke
curl.exe --output %FolderLocation%/manifest_brsteam.xml --url https://theangkko.github.io/BRSTEAM-OfficeAddin/manifest_brsteam.xml --ssl-no-revoke

ECHO Share folder with Excel network..

@REM Share folder with user
net share %ShareName%=%FolderLocation% /grant:%user%,FULL

ECHO Create registry file for Excel..

@REM Network path always contains computer name as first parameter. Create registry file according to Excel/Office docs.
(
    ECHO Windows Registry Editor Version 5.00
    ECHO ""
    ECHO [HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\WEF\TrustedCatalogs\{5fb4e45b-354b-4564-ac24-b31db5bbeb30}]
    ECHO "Id"="{5fb4e45b-354b-4564-ac24-b31db5bbeb30}"
    ECHO "Url"="\\\\%computer%\\%ShareName%"
    ECHO "Flags"=dword:00000001 
) > %FolderLocation%/TrustNetworkShareCatalog.reg

ECHO Execute registry file for Excel..

%FolderLocation%/TrustNetworkShareCatalog.reg

REM https://stackoverflow.com/questions/2048509/how-to-echo-with-different-colors-in-the-windows-command-line

ECHO [32mDone![0m
pause