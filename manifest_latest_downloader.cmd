@ECHO OFF

SET ManifestFolderName=manifest
SET user=%USERNAME%
@REM SET FolderLocation=%USERPROFILE%\%ManifestFolderName%
SET FolderLocation=C:\%ManifestFolderName%_%USERNAME%

@REM create folder in user folder
IF EXIST %FolderLocation% (
    ECHO Found existing folder for install manifests!
) 

curl.exe --output %FolderLocation%/manifest_xxsteam.xml --url https://theangkko.github.io/XXSTEAM-OfficeAddin/manifest_xxsteam.xml --ssl-no-revoke

ECHO [32mDone![0m
pause
