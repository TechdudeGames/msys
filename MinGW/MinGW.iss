; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]

DefaultDirName=c:\MinGW
SolidCompression=true
AppCopyright=Copyright � 2005 MinGW.org
AppName=Minimalist GNU for Windows 4.1
AppVerName=MinGW-4.1
DefaultGroupName=MinGW
ShowLanguageDialog=yes
OutputDir=build
AllowNoIcons=true
AlwaysUsePersonalGroup=true
InfoBeforeFile=C:\temp\MinGW_REQUIREMENTS.rtf
LicenseFile=C:\temp\MinGW_LICENSE.rtf
WindowVisible=true
InfoAfterFile=C:\temp\MinGW_WELCOME.rtf
TimeStampsInUTC=true
OutputBaseFilename=MinGW-4.1.1
VersionInfoVersion=4.1.1
VersionInfoCompany=http://www.mingw.org
VersionInfoDescription=Installer for MinGW Distributed Files
VersionInfoTextVersion=MinGW-4.1.1

[Components]
Name: CORE; Description: The minimal set of packages required to build C/C++; Types: custom compact full
Name: CORE\Current; Description: Install a Current version of CORE files; Types: custom compact full; Flags: exclusive
Name: CORE\Candidate; Description: Install a Candidate version of CORE files; Types: custom; Flags: exclusive
;Name: CORE\Snapshot; Description: Install a Snapshot version of CORE files; Types: custom; Flags: exclusive
Name: CORE\Previous; Description: Install a Previous version of CORE files; Types: custom; Flags: exclusive

Name: Compilers; Description: The full set of compilers packages; Types: custom full
Name: Compilers\Current; Description: Install a Current version of Compilers files; Types: custom full; Flags: exclusive
Name: Compilers\Candidate; Description: Install a Candidate version of Compilers files; Types: custom; Flags: exclusive
;Name: Compilers\Snapshot; Description: Install a Snapshot version of Compilers files; Types: custom; Flags: exclusive
Name: Compilers\Previous; Description: Install a Previous version of Compilers files; Types: custom; Flags: exclusive

Name: Utilities; Description: The full set of Utilities packages; Types: custom full
Name: Utilities\Current; Description: Install a Current version of Utilities files; Types: custom full; Flags: exclusive
;Name: Utilities\Candidate; Description: Install a Candidate version of Utilities files; Types: custom; Flags: exclusive
;Name: Utilities\Snapshot; Description: Install a Snapshot version of Utilities files; Types: custom; Flags: exclusive
Name: Utilities\Previous; Description: Install a Previous version of Utilities files; Types: custom; Flags: exclusive

Name: Source; Description: The full set of Source packages; Types: custom
Name: Source\Current; Description: Install a Current version of Source files; Types: custom; Flags: exclusive
Name: Source\Candidate; Description: Install a Candidate version of Source files; Types: custom; Flags: exclusive
Name: Source\Snapshot; Description: Install a Snapshot version of Source files; Types: custom; Flags: exclusive
Name: Source\Previous; Description: Install a Previous version of Source files; Types: custom; Flags: exclusive

[_ISToolDownload]
Source: {code:GetMinGW4Mirror|mingw-runtime-3.7.tar.gz}; DestDir: {tmp}; DestName: runtime.tar.gz; Components: CORE\Current; Tasks: Current\runtime; Languages: English
Source: {code:GetMinGW4Mirror|w32api-3.2.tar.gz}; DestDir: {tmp}; DestName: w32api.tar.gz; Components: CORE\Current; Tasks: Current\w32api; Languages: English
Source: {code:GetMinGW4Mirror|binutils-2.15.91-20040904-1.tar.gz}; DestDir: {tmp}; DestName: binutils.tar.gz; Components: CORE\Current; Tasks: Current\binutils; Languages: English
Source: {code:GetMinGW4Mirror|gcc-core-3.4.2-20040916-1.tar.gz}; DestDir: {tmp}; DestName: gcc.tar.gz; Components: CORE\Current Compilers\Current; Tasks: Current\gcc; Languages: English
Source: {code:GetMinGW4Mirror|gcc-g++-3.4.2-20040916-1.tar.gz}; DestDir: {tmp}; DestName: g++.tar.gz; Components: CORE\Current Compilers\Current; Tasks: Current\gxx; Languages: English
Source: {code:GetMinGW4Mirror|gcc-g77-3.4.2-20040916-1.tar.gz}; DestDir: {tmp}; DestName: g77.tar.gz; Components: Compilers\Current; Tasks: Current\g77; Languages: English
Source: {code:GetMinGW4Mirror|gcc-ada-3.4.2-20040916-1.tar.gz}; DestDir: {tmp}; DestName: ada.tar.gz; Components: Compilers\Current; Tasks: Current\ada; Languages: English
Source: {code:GetMinGW4Mirror|gcc-java-3.4.2-20040916-1.tar.gz}; DestDir: {tmp}; DestName: java.tar.gz; Components: Compilers\Current; Tasks: Current\java; Languages: English
Source: {code:GetMinGW4Mirror|gcc-objc-3.4.2-20040916-1.tar.gz}; DestDir: {tmp}; DestName: objc.tar.gz; Components: Compilers\Current; Tasks: Current\objc; Languages: English
Source: {code:GetMinGW4Mirror|mingw32-make-3.80.0-3.tar.gz}; DestDir: {tmp}; DestName: mingw32-make.tar.gz; Components: Utilities\Current CORE\Current; Tasks: Current\mingw32_make; Languages: English

Source: {code:GetMinGW4Mirror|mingw-runtime-3.6.tar.gz}; DestDir: {tmp}; DestName: runtime.tar.gz; Components: CORE\Previous; Tasks: Previous\runtime; Languages: English
Source: {code:GetMinGW4Mirror|w32api-3.1.tar.gz}; DestDir: {tmp}; DestName: w32api.tar.gz; Components: CORE\Previous; Tasks: Previous\w32api; Languages: English
Source: {code:GetMinGW4Mirror|binutils-2.13.90-20030111-1.tar.gz}; DestDir: {tmp}; DestName: binutils.tar.gz; Components: CORE\Previous; Tasks: Previous\binutils; Languages: English
Source: {code:GetMinGW4Mirror|gcc-core-3.3.1-20030804-1.tar.gz}; DestDir: {tmp}; DestName: gcc.tar.gz; Components: CORE\Previous Compilers\Previous; Tasks: Previous\gcc; Languages: English
Source: {code:GetMinGW4Mirror|gcc-g++-3.3.1-20030804-1.tar.gz}; DestDir: {tmp}; DestName: g++.tar.gz; Components: CORE\Previous Compilers\Previous; Tasks: Previous\gxx; Languages: English
Source: {code:GetMinGW4Mirror|gcc-g77-3.3.1-20030804-1.tar.gz}; DestDir: {tmp}; DestName: g77.tar.gz; Components: Compilers\Previous; Tasks: Previous\g77; Languages: English
Source: {code:GetMinGW4Mirror|gcc-ada-3.3.1-20030804-1.tar.gz}; DestDir: {tmp}; DestName: ada.tar.gz; Components: Compilers\Previous; Tasks: Previous\ada; Languages: English
Source: {code:GetMinGW4Mirror|gcc-java-3.3.1-20030804-1.tar.gz}; DestDir: {tmp}; DestName: java.tar.gz; Components: Compilers\Previous; Tasks: Previous\java; Languages: English
Source: {code:GetMinGW4Mirror|gcc-objc-3.3.1-20030804-1.tar.gz}; DestDir: {tmp}; DestName: objc.tar.gz; Components: Compilers\Previous; Tasks: Previous\objc; Languages: English

Source: {code:GetMinGW4Mirror|binutils-2.15.94-20050118-1.tar.gz}; DestDir: {tmp}; DestName: binutils.tar.gz; Components: CORE\Candidate; Tasks: Candidate\binutils; Languages: English
Source: {code:GetMinGW4Mirror|gcc-core-3.4.4-20050522-1.tar.gz}; DestDir: {tmp}; DestName: gcc.tar.gz; Components: CORE\Candidate Compilers\Candidate; Tasks: Candidate\gcc; Languages: English
Source: {code:GetMinGW4Mirror|gcc-g++-3.4.4-20050522-1.tar.gz}; DestDir: {tmp}; DestName: g++.tar.gz; Components: CORE\Candidate Compilers\Candidate; Tasks: Candidate\gxx; Languages: English
Source: {code:GetMinGW4Mirror|gcc-g77-3.4.4-20050522-1.tar.gz}; DestDir: {tmp}; DestName: g77.tar.gz; Components: Compilers\Candidate; Tasks: Candidate\g77; Languages: English
Source: {code:GetMinGW4Mirror|gcc-ada-3.4.4-20050522-1.tar.gz}; DestDir: {tmp}; DestName: ada.tar.gz; Components: Compilers\Candidate; Tasks: Candidate\ada; Languages: English
Source: {code:GetMinGW4Mirror|gcc-java-3.4.4-20050522-1.tar.gz}; DestDir: {tmp}; DestName: java.tar.gz; Components: Compilers\Candidate; Tasks: Candidate\java; Languages: English
Source: {code:GetMinGW4Mirror|gcc-objc-3.4.4-20050522-1.tar.gz}; DestDir: {tmp}; DestName: objc.tar.gz; Components: Compilers\Candidate; Tasks: Candidate\objc; Languages: English

Source: {code:GetMinGW4Mirror|mingw-runtime-3.7-src.tar.gz}; DestDir: {tmp}; DestName: runtime-src.tar.gz; Components: Source\Previous Source\Snapshot Source\Candidate Source\Current; Tasks: Source\runtime; Languages: English
Source: {code:GetMinGW4Mirror|w32api-3.2-src.tar.gz}; DestDir: {tmp}; DestName: w32api-src.tar.gz; Components: Source\Previous Source\Snapshot Source\Candidate Source\Current; Tasks: Source\w32api; Languages: English
Source: {code:GetMinGW4Mirror|binutils-2.15.91-20040904-1-src.tar.gz}; DestDir: {tmp}; DestName: binutils-src.tar.gz; Components: Source\Previous Source\Snapshot Source\Candidate Source\Current; Tasks: Source\binutils; Languages: English
Source: {code:GetMinGW4Mirror|gcc-core-3.4.2-20040916-1-src.tar.gz}; DestDir: {tmp}; DestName: gcc-src.tar.gz; Components: Source\Previous Source\Snapshot Source\Candidate Source\Current; Tasks: Source\gcc; Languages: English
Source: {code:GetMinGW4Mirror|gcc-g++-3.4.2-20040916-1-src.tar.gz}; DestDir: {tmp}; DestName: g++-src.tar.gz; Components: Source\Previous Source\Snapshot Source\Candidate Source\Current; Tasks: Source\gxx; Languages: English
Source: {code:GetMinGW4Mirror|gcc-g77-3.4.2-20040916-1-src.tar.gz}; DestDir: {tmp}; DestName: g77-src.tar.gz; Components: Source\Previous Source\Snapshot Source\Candidate Source\Current; Tasks: Source\g77; Languages: English
Source: {code:GetMinGW4Mirror|gcc-ada-3.4.2-20040916-1-src.tar.gz}; DestDir: {tmp}; DestName: ada-src.tar.gz; Components: Source\Previous Source\Snapshot Source\Candidate Source\Current; Tasks: Source\ada; Languages: English
Source: {code:GetMinGW4Mirror|gcc-java-3.4.2-20040916-1-src.tar.gz}; DestDir: {tmp}; DestName: java-src.tar.gz; Components: Source\Previous Source\Snapshot Source\Candidate Source\Current; Tasks: Source\java; Languages: English
Source: {code:GetMinGW4Mirror|gcc-objc-3.4.2-20040916-1-src.tar.gz}; DestDir: {tmp}; DestName: objc-src.tar.gz; Components: Source\Previous Source\Snapshot Source\Candidate Source\Current; Tasks: Source\objc; Languages: English
Source: {code:GetMinGW4Mirror|mingw32-make-3.80.0-3-src.tar.gz}; DestDir: {tmp}; DestName: mingw32-make-src.tar.gz; Components: Source\Previous Source\Snapshot Source\Candidate Source\Current; Tasks: Source\mingw32_make; Languages: English

Source: {code:GetMinGW4Mirror|binutils-2.15.94-20050118-1-src.tar.gz}; DestDir: {tmp}; DestName: binutils-src.tar.gz; Components: Source\Previous Source\Snapshot Source\Candidate Source\Current; Tasks: Source\binutils; Languages: English
Source: {code:GetMinGW4Mirror|gcc-core-3.4.4-20050522-1-src.tar.gz}; DestDir: {tmp}; DestName: gcc-src.tar.gz; Components: Source\Previous Source\Snapshot Source\Candidate Source\Current; Tasks: Source\gcc; Languages: English
Source: {code:GetMinGW4Mirror|gcc-g++-3.4.4-20050522-1-src.tar.gz}; DestDir: {tmp}; DestName: g++-src.tar.gz; Components: Source\Previous Source\Snapshot Source\Candidate Source\Current; Tasks: Source\gxx; Languages: English
Source: {code:GetMinGW4Mirror|gcc-g77-3.4.4-20050522-1-src.tar.gz}; DestDir: {tmp}; DestName: g77-src.tar.gz; Components: Source\Previous Source\Snapshot Source\Candidate Source\Current; Tasks: Source\g77; Languages: English
Source: {code:GetMinGW4Mirror|gcc-ada-3.4.4-20050522-1-src.tar.gz}; DestDir: {tmp}; DestName: ada-src.tar.gz; Components: Source\Previous Source\Snapshot Source\Candidate Source\Current; Tasks: Source\ada; Languages: English
Source: {code:GetMinGW4Mirror|gcc-java-3.4.4-20050522-1-src.tar.gz}; DestDir: {tmp}; DestName: java-src.tar.gz; Components: Source\Previous Source\Snapshot Source\Candidate Source\Current; Tasks: Source\java; Languages: English
Source: {code:GetMinGW4Mirror|gcc-objc-3.4.4-20050522-1-src.tar.gz}; DestDir: {tmp}; DestName: objc-src.tar.gz; Components: Source\Previous Source\Snapshot Source\Candidate Source\Current; Tasks: Source\objc; Languages: English

[Tasks]
Name: Current; Description: Install Current Version Files; GroupDescription: Current; Components: CORE\Current; Languages: English
Name: Current\runtime; Description: Current/runtime; GroupDescription: Current; Components: CORE\Current; Languages: English
Name: Current\w32api; Description: Current/w32api; GroupDescription: Current; Components: CORE\Current; Languages: English
Name: Current\binutils; Description: Current/binutils; GroupDescription: Current; Components: CORE\Current; Languages: English
Name: Current\gcc; Description: Current/gcc-core; GroupDescription: Current; Components: CORE\Current Compilers\Current; Languages: English
Name: Current\gxx; Description: Current/gcc-g++; GroupDescription: Current; Components: CORE\Current Compilers\Current; Languages: English
Name: Current\g77; Description: Current/gcc-g77; GroupDescription: Current; Components: Compilers\Current; Languages: English
Name: Current\ada; Description: Current/gcc-ada; GroupDescription: Current; Components: Compilers\Current; Languages: English
Name: Current\java; Description: Current/gcc-java; GroupDescription: Current; Components: Compilers\Current; Languages: English
Name: Current\objc; Description: Current/gcc-objc; GroupDescription: Current; Components: Compilers\Current; Languages: English
Name: Current\mingw32_make; Description: Current/mingw32-make; GroupDescription: Current; Components: Utilities\Current CORE\Current; Languages: English

Name: Previous; Description: Install Previous Version Files; GroupDescription: Previous; Components: CORE\Previous; Languages: English
Name: Previous\runtime; Description: Previous/runtime; GroupDescription: Previous; Components: CORE\Previous; Languages: English
Name: Previous\w32api; Description: Previous/w32api; GroupDescription: Previous; Components: CORE\Previous; Languages: English
Name: Previous\binutils; Description: Previous/binutils; GroupDescription: Previous; Components: CORE\Previous; Languages: English
Name: Previous\gcc; Description: Previous/gcc-core; GroupDescription: Previous; Components: CORE\Previous Compilers\Previous; Languages: English
Name: Previous\gxx; Description: Previous/gcc-g++; GroupDescription: Previous; Components: CORE\Previous Compilers\Previous; Languages: English
Name: Previous\g77; Description: Previous/gcc-g77; GroupDescription: Previous; Components: Compilers\Previous; Languages: English
Name: Previous\ada; Description: Previous/gcc-ada; GroupDescription: Previous; Components: Compilers\Previous; Languages: English
Name: Previous\java; Description: Previous/gcc-java; GroupDescription: Previous; Components: Compilers\Previous; Languages: English
Name: Previous\objc; Description: Previous/gcc-objc; GroupDescription: Previous; Components: Compilers\Previous; Languages: English

Name: Candidate\binutils; Description: Candidate/binutils; GroupDescription: Candidate; Components: CORE\Candidate; Languages: English
Name: Candidate\gcc; Description: Candidate/gcc-core; GroupDescription: Candidate; Components: CORE\Candidate Compilers\Candidate; Languages: English
Name: Candidate\gxx; Description: Candidate/gcc-g++; GroupDescription: Candidate; Components: CORE\Candidate Compilers\Candidate; Languages: English
Name: Candidate\g77; Description: Candidate/gcc-g77; GroupDescription: Candidate; Components: Compilers\Candidate; Languages: English
Name: Candidate\ada; Description: Candidate/gcc-ada; GroupDescription: Candidate; Components: Compilers\Candidate; Languages: English
Name: Candidate\java; Description: Candidate/gcc-java; GroupDescription: Candidate; Components: Compilers\Candidate; Languages: English
Name: Candidate\objc; Description: Candidate/gcc-objc; GroupDescription: Candidate; Components: Compilers\Candidate; Languages: English

Name: Source; Description: Install Source Version Files; GroupDescription: Source; Components: Source\Current Source\Previous Source\Candidate Source\Snapshot; Languages: English
Name: Source\runtime; Description: Source/runtime; GroupDescription: Source; Components: Source\Current Source\Previous Source\Candidate Source\Snapshot; Languages: English
Name: Source\w32api; Description: Source/w32api; GroupDescription: Source; Components: Source\Current Source\Previous Source\Candidate Source\Snapshot; Languages: English
Name: Source\binutils; Description: Source/binutils; GroupDescription: Source; Components: Source\Current Source\Previous Source\Candidate Source\Snapshot; Languages: English
Name: Source\gcc; Description: Source/gcc-core; GroupDescription: Source; Components: Source\Current Source\Previous Source\Candidate Source\Snapshot; Languages: English
Name: Source\gxx; Description: Source/gcc-g++; GroupDescription: Source; Components: Source\Current Source\Previous Source\Candidate Source\Snapshot; Languages: English
Name: Source\g77; Description: Source/gcc-g77; GroupDescription: Source; Components: Source\Current Source\Previous Source\Candidate Source\Snapshot; Languages: English
Name: Source\ada; Description: Source/gcc-ada; GroupDescription: Source; Components: Source\Current Source\Previous Source\Candidate Source\Snapshot; Languages: English
Name: Source\java; Description: Source/gcc-java; GroupDescription: Source; Components: Source\Current Source\Previous Source\Candidate Source\Snapshot; Languages: English
Name: Source\objc; Description: Source/gcc-objc; GroupDescription: Source; Components: Source\Current Source\Previous Source\Candidate Source\Snapshot; Languages: English
Name: Source\mingw32_make; Description: Source/mingw32-make; GroupDescription: Source; Components: Source\Current Source\Previous Source\Candidate Source\Snapshot; Languages: English

[Files]
Source: bin\msys-1.0.dll; DestDir: {tmp}\bin; Flags: deleteafterinstall
Source: bin\sh.exe; DestDir: {tmp}\bin; Flags: deleteafterinstall
Source: bin\gzip.exe; DestDir: {tmp}\bin; Flags: deleteafterinstall
Source: bin\bzip2.exe; DestDir: {tmp}\bin; Flags: deleteafterinstall
Source: bin\tar.exe; DestDir: {tmp}\bin; Flags: deleteafterinstall
Source: bin\mkdir.exe; DestDir: {tmp}\bin; Flags: deleteafterinstall; Components: ; Tasks: ; Languages: 
Source: etc\emptydir; DestDir: {tmp}\etc; Flags: deleteafterinstall
Source: bin\install.sh; DestDir: {tmp}\bin; Flags: deleteafterinstall

[Run]
Filename: "{tmp}\bin\sh.exe "; Parameters: "-c 'PATH=/bin install.sh ""{app}"" ""{tmp}"" runtime.tar.gz'"; WorkingDir: {app}; Components: CORE\Previous CORE\Current; Tasks: Current\runtime Previous\runtime; Flags: runminimized
Filename: "{tmp}\bin\sh.exe "; Parameters: "-c 'PATH=/bin install.sh ""{app}"" ""{tmp}"" w32api.tar.gz'"; WorkingDir: {app}; Components: CORE\Previous CORE\Current; Tasks: Current\w32api Previous\w32api; Flags: runminimized
Filename: "{tmp}\bin\sh.exe "; Parameters: "-c 'PATH=/bin install.sh ""{app}"" ""{tmp}"" binutils.tar.gz'"; WorkingDir: {app}; Components: CORE\Previous CORE\Current; Tasks: Current\binutils Previous\binutils; Flags: runminimized
Filename: "{tmp}\bin\sh.exe "; Parameters: "-c 'PATH=/bin install.sh ""{app}"" ""{tmp}"" gcc.tar.gz'"; WorkingDir: {app}; Components: CORE\Previous CORE\Current Compilers\Current Compilers\Previous; Tasks: Current\gcc Previous\gcc; Flags: runminimized
Filename: "{tmp}\bin\sh.exe "; Parameters: "-c 'PATH=/bin install.sh ""{app}"" ""{tmp}"" g++.tar.gz'"; WorkingDir: {app}; Components: CORE\Previous CORE\Current Compilers\Current Compilers\Previous; Tasks: Current\gxx Previous\gxx; Flags: runminimized
Filename: "{tmp}\bin\sh.exe "; Parameters: "-c 'PATH=/bin install.sh ""{app}"" ""{tmp}"" g77.tar.gz'"; WorkingDir: {app}; Components: Compilers\Current Compilers\Previous; Tasks: Current\g77 Previous\g77; Flags: runminimized
Filename: "{tmp}\bin\sh.exe "; Parameters: "-c 'PATH=/bin install.sh ""{app}"" ""{tmp}"" ada.tar.gz'"; WorkingDir: {app}; Components: Compilers\Current Compilers\Previous; Tasks: Current\ada Previous\ada; Flags: runminimized
Filename: "{tmp}\bin\sh.exe "; Parameters: "-c 'PATH=/bin install.sh ""{app}"" ""{tmp}"" java.tar.gz'"; WorkingDir: {app}; Components: Compilers\Current Compilers\Previous; Tasks: Current\java Previous\java; Flags: runminimized
Filename: "{tmp}\bin\sh.exe "; Parameters: "-c 'PATH=/bin install.sh ""{app}"" ""{tmp}"" objc.tar.gz'"; WorkingDir: {app}; Components: Compilers\Current Compilers\Previous; Tasks: Current\objc Previous\objc; Flags: runminimized
Filename: "{tmp}\bin\sh.exe "; Parameters: "-c 'PATH=/bin install.sh ""{app}"" ""{tmp}"" mingw32-make.tar.gz'"; WorkingDir: {app}; Components: Utilities\Current CORE\Current; Tasks: Current\mingw32_make; Flags: runminimized

Filename: "{tmp}\bin\sh.exe "; Parameters: "-c 'PATH=/bin install.sh ""{app}"" ""{tmp}"" runtime-src.tar.gz'"; WorkingDir: {app}; Components: Source\Snapshot Source\Candidate Source\Previous Source\Current; Tasks: Source\runtime; Flags: runminimized
Filename: "{tmp}\bin\sh.exe "; Parameters: "-c 'PATH=/bin install.sh ""{app}"" ""{tmp}"" w32api-src.tar.gz'"; WorkingDir: {app}; Components: Source\Snapshot Source\Candidate Source\Previous Source\Current; Tasks: Source\w32api; Flags: runminimized
Filename: "{tmp}\bin\sh.exe "; Parameters: "-c 'PATH=/bin install.sh ""{app}"" ""{tmp}"" binutils-src.tar.gz'"; WorkingDir: {app}; Components: Source\Snapshot Source\Candidate Source\Previous Source\Current; Tasks: Source\binutils; Flags: runminimized
Filename: "{tmp}\bin\sh.exe "; Parameters: "-c 'PATH=/bin install.sh ""{app}"" ""{tmp}"" gcc-src.tar.gz'"; WorkingDir: {app}; Components: Source\Snapshot Source\Candidate Source\Previous Source\Current; Tasks: Source\gcc; Flags: runminimized
Filename: "{tmp}\bin\sh.exe "; Parameters: "-c 'PATH=/bin install.sh ""{app}"" ""{tmp}"" g++-src.tar.gz'"; WorkingDir: {app}; Components: Source\Snapshot Source\Candidate Source\Previous Source\Current; Tasks: Source\gxx; Flags: runminimized
Filename: "{tmp}\bin\sh.exe "; Parameters: "-c 'PATH=/bin install.sh ""{app}"" ""{tmp}"" g77-src.tar.gz'"; WorkingDir: {app}; Components: Source\Snapshot Source\Candidate Source\Current Source\Previous; Tasks: Source\g77; Flags: runminimized
Filename: "{tmp}\bin\sh.exe "; Parameters: "-c 'PATH=/bin install.sh ""{app}"" ""{tmp}"" ada-src.tar.gz'"; WorkingDir: {app}; Components: Source\Snapshot Source\Candidate Source\Current Source\Previous; Tasks: Source\ada; Flags: runminimized
Filename: "{tmp}\bin\sh.exe "; Parameters: "-c 'PATH=/bin install.sh ""{app}"" ""{tmp}"" java-src.tar.gz'"; WorkingDir: {app}; Components: Source\Snapshot Source\Candidate Source\Current Source\Previous; Tasks: Source\java; Flags: runminimized
Filename: "{tmp}\bin\sh.exe "; Parameters: "-c 'PATH=/bin install.sh ""{app}"" ""{tmp}"" objc-src.tar.gz'"; WorkingDir: {app}; Components: Source\Snapshot Source\Candidate Source\Current Source\Previous; Tasks: Source\objc; Flags: runminimized
Filename: "{tmp}\bin\sh.exe "; Parameters: "-c 'PATH=/bin install.sh ""{app}"" ""{tmp}"" mingw32-make-src.tar.gz'"; WorkingDir: {app}; Components: Source\Snapshot Source\Candidate Source\Current Source\Previous; Tasks: Source\mingw32_make; Flags: runminimized

[Code]
var
  m4mirror: String;

// Function generated by ISTool.
function NextButtonClick(CurPage: Integer): Boolean;
begin
	Result := istool_download(CurPage);
end;

function GetMinGW4Mirror (filename: String): String;
begin
  Result := 'http://'+m4mirror+'.dl.sourceforge.net/sourceforge/mingw/'+filename;
end;

#include "MinGW-mirror.isd"
[_ISToolPreCompile]
Name: cmd; Parameters: "/c c:\msys\1.0\bin\sh -c 'PATH=/bin cat MinGW_WELCOME.rtf' | c:\msys\1.0\bin\sh -c 'PATH=/bin sed -e ""s/@VERSION@/4.1/g""' > c:/temp/MinGW_WELCOME.rtf"; Flags: abortonerror
Name: cmd; Parameters: "/c c:\msys\1.0\bin\sh -c 'PATH=/bin cat MinGW_LICENSE.rtf' | c:\msys\1.0\bin\sh -c 'PATH=/bin sed -e ""s/@VERSION@/4.1/g""' > c:/temp/MinGW_LICENSE.rtf"; Flags: abortonerror
Name: cmd; Parameters: "/c c:\msys\1.0\bin\sh -c 'PATH=/bin cat MinGW_REQUIREMENTS.rtf' | c:\msys\1.0\bin\sh -c 'PATH=/bin sed -e ""s/@VERSION@/4.1/g""' > c:/temp/MinGW_REQUIREMENTS.rtf"; Flags: abortonerror
[_ISToolPostCompile]
Name: cmd; Parameters: /c del c:\temp\MinGW_*.rtf
[CustomMessages]
sflogo=<a href="http://sourceforge.net/" target="_nw"><img src="http://sflogo.sourceforge.net/sflogo.php?group_id=2435&amp;type=1" alt="Powered by SourceForge" border="0"></a>
[Languages]
Name: English; MessagesFile: compiler:Default.isl; LicenseFile: C:\temp\MinGW_LICENSE.rtf; InfoBeforeFile: C:\temp\MinGW_REQUIREMENTS.rtf; InfoAfterFile: C:\temp\MinGW_WELCOME.rtf