; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Odari File System"
#define MyAppVersion "1.0"
#define MyAppPublisher "Alphatech Services"
#define MyAppExeName "odari.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{62AF2A22-54B4-47C3-AFD4-64CA0A833455}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=C:\Users\user\Desktop\stock\license.txt
; Remove the following line to run in administrative install mode (install for all users.)
PrivilegesRequired=lowest
OutputDir=C:\Users\user\Desktop\file system
OutputBaseFilename=Odari File System v_1.0
SetupIconFile=C:\Users\user\Desktop\file system\icon.ico
Password=fuggetaboutit
Encryption=yes
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\user\Desktop\file system\dist\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\user\Desktop\file system\add.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\user\Desktop\file system\delete.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\user\Desktop\file system\edit.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\user\Desktop\file system\exit.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\user\Desktop\file system\icon.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\user\Desktop\file system\refresh1.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\user\Desktop\file system\search.ico"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
