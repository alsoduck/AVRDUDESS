; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "AVRDUDESS"
#define MyAppDescription "A GUI for AVRDUDE"
#define MyAppVersion "2.9"
#define MyAppPublisher "Zak Kemble"
#define MyAppURL "https://zakkemble.net/"
#define MyAppExeName "avrdudess.exe"
#define MyAppContact "contact@zakkemble.net"
#define MyAppCopyright "Copyright � 2019 Zak Kemble"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)  
PrivilegesRequired=admin

AppId={{B6EAF03F-3DB3-4170-A4B0-B7007AAD6D0C}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
AppContact={#MyAppContact}
AppCopyright={#MyAppCopyright}

DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile=..\License.txt
;InfoAfterFile=Readme.txt
OutputDir=.\
OutputBaseFilename=setup-{#MyAppName}-{#MyAppVersion}
Compression=lzma2/ultra64
SolidCompression=yes
WizardSmallImageFile=wizardsmall.bmp
UninstallDisplayIcon={app}\{#MyAppExeName}
AlwaysShowGroupOnReadyPage=True
AlwaysShowDirOnReadyPage=True

VersionInfoVersion={#MyAppVersion}
VersionInfoCompany={#MyAppPublisher}
VersionInfoDescription=Setup: {#MyAppName} - {#MyAppDescription}
VersionInfoTextVersion={#MyAppVersion}
VersionInfoCopyright={#MyAppCopyright}
VersionInfoProductName={#MyAppName}
VersionInfoProductVersion={#MyAppVersion}
VersionInfoProductTextVersion={#MyAppVersion}
               
[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "catalan"; MessagesFile: "compiler:Languages\Catalan.isl"
Name: "corsican"; MessagesFile: "compiler:Languages\Corsican.isl"
Name: "czech"; MessagesFile: "compiler:Languages\Czech.isl"
Name: "danish"; MessagesFile: "compiler:Languages\Danish.isl"
Name: "dutch"; MessagesFile: "compiler:Languages\Dutch.isl"
Name: "finnish"; MessagesFile: "compiler:Languages\Finnish.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"
Name: "greek"; MessagesFile: "compiler:Languages\Greek.isl"
Name: "hebrew"; MessagesFile: "compiler:Languages\Hebrew.isl"
Name: "hungarian"; MessagesFile: "compiler:Languages\Hungarian.isl"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"
;Name: "nepali"; MessagesFile: "compiler:Languages\Nepali.islu"
Name: "norwegian"; MessagesFile: "compiler:Languages\Norwegian.isl"
Name: "polish"; MessagesFile: "compiler:Languages\Polish.isl"
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "scottishgaelic"; MessagesFile: "compiler:Languages\ScottishGaelic.isl"
Name: "serbiancyrillic"; MessagesFile: "compiler:Languages\SerbianCyrillic.isl"
Name: "serbianlatin"; MessagesFile: "compiler:Languages\SerbianLatin.isl"
Name: "slovenian"; MessagesFile: "compiler:Languages\Slovenian.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"
Name: "turkish"; MessagesFile: "compiler:Languages\Turkish.isl"
Name: "ukrainian"; MessagesFile: "compiler:Languages\Ukrainian.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "..\src\avrdudess\bin\Release\avrdudess.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\src\avrdudess\bin\Release\avrdude.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\src\avrdudess\bin\Release\avr-size.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\src\avrdudess\bin\Release\libusb0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\src\avrdudess\bin\Release\avrdude.conf"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\src\avrdudess\bin\Release\config.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\src\avrdudess\bin\Release\presets.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\src\avrdudess\bin\Release\bits.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\src\avrdudess\bin\Release\Languages\english.xml"; DestDir: "{app}\Languages"; Flags: ignoreversion
Source: "..\src\avrdudess\bin\Release\Languages\german.xml"; DestDir: "{app}\Languages"; Flags: ignoreversion
Source: "..\src\avrdudess\bin\Release\Languages\polish.xml"; DestDir: "{app}\Languages"; Flags: ignoreversion
Source: "..\src\avrdudess\bin\Release\Languages\chinese-zh_CN.xml"; DestDir: "{app}\Languages"; Flags: ignoreversion
Source: "..\src\avrdudess\bin\Release\Languages\french.xml"; DestDir: "{app}\Languages"; Flags: ignoreversion
Source: "..\src\avrdudess\bin\Release\Languages\russian.xml"; DestDir: "{app}\Languages"; Flags: ignoreversion
Source: "..\Changelog.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Credits.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\License.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\README.md"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\TODO.txt"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[InstallDelete]
Type: files; Name: "{app}\Readme.txt"

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent runasoriginaluser
