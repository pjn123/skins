/*
	ClassicPro Installer 

	Copyright (c) 2009-2012 by Pawe� Porwisz aka Pepe
	This software is provided 'as-is', without any express or implied warranty.
	
	Built in: NSIS 2.46 with Modern User Interface v2.0
	This is main installer script file
*/

; Loading AutoGenerated Config File
	!include "cPro_Installer_Config.nsh"
	
; Definitions
	!define CPRO_SOURCEPATH "ClassicPro"
	!define CPRO_NAME "ClassicPro"
	!define CPRO_CRS "�"
	!define CPRO_PAYPAL_LINK "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=4V8JAK6FLJZHW"	
	!define CPRO_TECHNICAL_SUPPORT_LINK "http://forums.skinconsortium.com/index.php?page=Board&boardID=46"
	!define /Date CPRO_DATE "%Y-%m-%d"
	!define CPRO_BT "http://www.skinconsortium.com"
	!define CPRO_WEB_PAGE "http://www.skinconsortium.com"
	!define CPRO_HELP_LINK "http://forums.skinconsortium.com/"
	!define CPRO_AUTHOR "Skin Consortium"
	!define CPRO_COMPANY "Skin Consortium"
	!define /Date CPRO_COPYRIGHT "Copyright (c) 2005-%Y"	
	!define CPRO_UNINSTALLER "Uninstall ClassicPro"	

;###########################################################################################
;	CONFIGURATION
;###########################################################################################

	!if ${CPRO_BUILD_TYPE} == "BETA"
; Beta stage	
		Name "${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} ${CPRO_BUILD_NAME}"
		OutFile "${CPRO_OUTFILE_PATH}\${CPRO_NAME}_${CPRO_VERSION}_${CPRO_BUILD_FILENAME_ADDITION}.exe"

	!else if ${CPRO_BUILD_TYPE} == "NIGHTLY"
; Alpha stage	
		Name "${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} ${CPRO_BUILD_NAME}"
		OutFile "${CPRO_OUTFILE_PATH}\${CPRO_NAME}_${CPRO_VERSION}_${CPRO_BUILD_FILENAME_ADDITION}_(${CPRO_DATE}).exe"
	!else
; Release
		Name "${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION}"
		OutFile "${CPRO_OUTFILE_PATH}\${CPRO_NAME}_${CPRO_VERSION}.exe"		
	!endif

	SetCompressor /SOLID lzma
	Caption "$(CPro_Caption)"
	BrandingText "${CPRO_BT}"

	InstType $(CPro_Full)
	InstType $(CPro_Minimal)
	
	ReserveFile "Plugins\Linker.dll"
	ReserveFile "Plugins\LockedList.dll"
	
; Plugins Dir   
	!addplugindir "Plugins"  
   
;###########################################################################################
;	DESTINATION FOLDER
;###########################################################################################

	InstallDir "$PROGRAMFILES\Winamp"
	InstallDirRegKey "HKLM" "Software\Microsoft\Windows\CurrentVersion\Uninstall\Winamp" "UninstallString"
	RequestExecutionLevel "admin"
	XPStyle "on"

;###########################################################################################
;	HEADER FILES
;###########################################################################################

	!include "MUI2.nsh"
	!include "Sections.nsh"
	!include "nsDialogs.nsh"
	!include "LogicLib.nsh"
	!include "WinVer.nsh"
	!include "WordFunc.nsh"
	!include "FileFunc.nsh"
	!include "cPro_Installer_Version.nsh"
	!include "cPro_Installer_Functions.nsh"
	
;###########################################################################################
;	INTERFACE SETTINGS 
;###########################################################################################

	DirText "$(CPro_DirText)"
	!define MUI_CUSTOMFUNCTION_GUIINIT My_GUIInit
	!define MUI_LANGDLL_WINDOWTITLE $LANG_TITLE
	!define MUI_LANGDLL_INFO $(CPro_Language_Text)
	!define MUI_FINISHPAGE_TITLE_3LINES
	!define MUI_WELCOMEPAGE_TITLE_3LINES
	!define MUI_WELCOMEPAGE_TITLE $(CPro_Welcome_Title)
	!define MUI_WELCOMEPAGE_TEXT $(CPro_Welcome_Text)

	!define MUI_HEADERIMAGE_LEFT
	!define MUI_HEADERIMAGE

	!if ${CPRO_BUILD_TYPE} == "BETA"
		!define MUI_HEADERIMAGE_BITMAP "Images\header-beta.bmp"
	!else if ${CPRO_BUILD_TYPE} == "NIGHTLY"
		!define MUI_HEADERIMAGE_BITMAP "Images\header-nightly.bmp"
	!else
		!define MUI_HEADERIMAGE_BITMAP "Images\header-final.bmp"
	!endif 
	
	!define MUI_ABORTWARNING
	!define MUI_COMPONENTSPAGE_SMALLDESC
	!define MUI_ICON "Images\icon.ico"
	!define MUI_COMPONENTSPAGE_CHECKBITMAP "${NSISDIR}\Contrib\Graphics\Checks\modern.bmp"
	!define MUI_WELCOMEFINISHPAGE_BITMAP "Images\win.bmp"
	!define MUI_UNICON "Images\icon.ico"
	!define MUI_UNCOMPONENTSPAGE_CHECKBITMAP "${NSISDIR}\Contrib\Graphics\Checks\modern.bmp"
	!define MUI_UNWELCOMEFINISHPAGE_BITMAP "Images\win.bmp"
	
; Installer pages
	!insertmacro MUI_PAGE_WELCOME
	!insertmacro MUI_PAGE_LICENSE "..\License.rtf"	
	!insertmacro MUI_PAGE_COMPONENTS
	!insertmacro MUI_PAGE_DIRECTORY
	Page Custom LockedListShow		
	Page custom CreateCleanupPage CheckCleanupPage ""	
	!insertmacro MUI_PAGE_INSTFILES
	Page custom CreateFinishPage CheckFinishPage ""

; Uninstaller pages
	!define MUI_CUSTOMFUNCTION_UNGUIINIT un.My_GUIInit	
	!define MUI_WELCOMEPAGE_TITLE_3LINES
	!define MUI_WELCOMEPAGE_TITLE $(CPro_Un_Welcome_Title)
	!define MUI_WELCOMEPAGE_TEXT $(CPro_Un_Welcome_Text)
	!insertmacro MUI_UNPAGE_WELCOME
	UninstPage Custom un.LockedListShow	
	!insertmacro MUI_UNPAGE_CONFIRM	
	!insertmacro MUI_UNPAGE_INSTFILES
	!insertmacro MUI_UNPAGE_FINISH
	!define MUI_UNHEADERIMAGE
	!define MUI_UNHEADERIMAGE_BITMAP "Images\header.bmp"
	!define MUI_UNABORTWARNING
	!define MUI_UNCOMPONENTSPAGE_SMALLDESC	
	
;###########################################################################################
;	INSTALLER  LANGUAGE
;###########################################################################################

	!define MUI_LANGDLL_ALLLANGUAGES
	!insertmacro MUI_RESERVEFILE_LANGDLL
	
; Language: English (1033), [ANSI], ${LANG_ENGLISH}
	!insertmacro MUI_LANGUAGE "English" 		
	!include "Languages\cPro_en_us.nsh"

; Language: German (1031), [1252], ${LANG_GERMAN}
	!insertmacro MUI_LANGUAGE "German"			
	!include "Languages\cPro_de_de.nsh"
	
; Language: French (1036), [1252], ${LANG_FRENCH}	
	!insertmacro MUI_LANGUAGE "French"			
	!include "Languages\cPro_fr_fr.nsh"		
	
; Language: Polish (1045), [1250], ${LANG_POLISH}	
	!insertmacro MUI_LANGUAGE "Polish"			
	!include "Languages\cPro_pl_pl.nsh"

; Language: Brazilian Portuguese (1046), [1252], ${LANG_PORTUGUESE_BRAZILIAN}
	!insertmacro MUI_LANGUAGE "PortugueseBR"
	!include "Languages\cPro_pt_br.nsh"

; Language: Romanian (1048), [1250], ${LANG_ROMANIAN}
	!insertmacro MUI_LANGUAGE "Romanian"		
	!include "Languages\cPro_ro_ro.nsh"
	
; Language: Russian (1049), [1251], ${LANG_RUSSIAN}
	!insertmacro MUI_LANGUAGE "Russian"			
	!include "Languages\cPro_ru_ru.nsh"	
	
; Language: Turkish (1055), [1254], ${LANG_TURKISH}	
	!insertmacro MUI_LANGUAGE "Turkish"			
	!include "Languages\cPro_tr_tr.nsh"

; Language: Danish (1030), [1252], ${LANG_DANISH}	
	!insertmacro MUI_LANGUAGE "Danish"			
	!include "Languages\cPro_da_dk.nsh"

; Language: Dutch (1043), [1252], ${LANG_DUTCH}	
	!insertmacro MUI_LANGUAGE "Dutch"			
	!include "Languages\cPro_nl_nl.nsh"
	
; Language: Spanish International (3082), [1252], ${LANG_SPANISH_INTERNATIONAL}
	 !insertmacro MUI_LANGUAGE "SpanishInternational"			
	 !include "Languages\cPro_es_us.nsh"

; Language: Italian (1040), [1252], ${LANG_ITALIAN}	
	; !insertmacro MUI_LANGUAGE "Italian"			
	; !include "Languages\cPro_it_it.nsh"

; Language: Chinese (Simplified) (2052), [936], ${LANG_SIMPCHINESE}
	; !insertmacro MUI_LANGUAGE "SimpChinese"		
	; !include "Languages\cPro_zh_cn.nsh"
	
; Language: Chinese (Traditional) (1028), [950], ${LANG_TRADCHINESE}
	; !insertmacro MUI_LANGUAGE "TradChinese"		
	; !include "Languages\cPro_zh_tw.nsh"
	
; Language: Swedish (1053), [1252], ${LANG_SWEDISH}	
	; !insertmacro MUI_LANGUAGE "Swedish"			
	; !include "Languages\cPro_sv_se.nsh"

; Language: Japanese (1041), [932], ${LANG_JAPANESE}	
	; !insertmacro MUI_LANGUAGE "Japanese"			
	; !include "Languages\cPro_ja_jp.nsh"

; Language: Korean (1042), [949], ${LANG_KOREAN}	
	; !insertmacro MUI_LANGUAGE "Korean"			
	; !include "Languages\cPro_ko_kr.nsh"
	

	
Function .onInit

	InitPluginsDir
	Call Initialize_Variables
	!insertmacro MUI_LANGDLL_DISPLAY
	
	Call CreateMutex
	Call CheckWindows
	Call CheckWinampInstallation
	Call CheckWinampVersion
	
FunctionEnd

	
Function My_GUIInit

	FindWindow $0 "#32770" "" $HWNDPARENT
	GetDlgItem $0 $HWNDPARENT 1028
	EnableWindow $0 1
	Linker::link /NOUNLOAD $0 "${CPRO_BT}"

FunctionEnd


Function .onGUIEnd

	Linker::Unload

FunctionEnd


Function .onVerifyInstDir

	${If} ${FileExists} "$INSTDIR\Winamp.exe"
		Return
	${Else}
		Abort
	${EndIf}

FunctionEnd


;###########################################################################################
;	FINISH PAGE
;###########################################################################################

Function CreateFinishPage

    LockWindow on
    GetDlgItem $0 $HWNDPARENT 1028
    ShowWindow $0 ${SW_HIDE}
    GetDlgItem $0 $HWNDPARENT 1256
    ShowWindow $0 ${SW_HIDE}
    GetDlgItem $0 $HWNDPARENT 1045
    ShowWindow $0 ${SW_NORMAL}
    LockWindow off

    nsDialogs::Create 1044
	Pop $Dialog
	
	${If} $Dialog == error
		Abort
	${EndIf}
	
    SetCtlColors $Dialog "" "0xFFFFFF"

	${NSD_CreateBitmap} 0u 0u 109u 193u ""
	Pop $Img_Left
	${NSD_SetImage} $Img_Left $PLUGINSDIR\Img_Left.bmp $Img_Handle_Left
	
	${NSD_CreateLabel} 115u 20u 63% 30u "$(CPro_FinishPage_1)"
	Pop $Label1
	${NSD_AddStyle} $Label1 ${WS_VISIBLE}|${WS_CHILD}|${WS_CLIPSIBLINGS}|${SS_CENTER}
	CreateFont $Label1_Font "TAHOMA" "13" "700"
	SendMessage $Label1 ${WM_SETFONT} $Label1_Font 0	
    SetCtlColors $Label1 "0x000000" "TRANSPARENT"
	
	${NSD_CreateLabel} 115u 60u 63% 30u "$(CPro_FinishPage_2)"
	Pop $Label2
	${NSD_AddStyle} $Label2 ${WS_VISIBLE}|${WS_CHILD}|${WS_CLIPSIBLINGS}
    SetCtlColors $Label2 "0x000000" "TRANSPARENT"	
	
	${NSD_CreateButton} 115u 90u 58 35 ""
	Pop $Button
	${NSD_AddStyle} $Button "${BS_BITMAP}"
	StrCpy $0 "$PLUGINSDIR\PayPal.bmp" 
	System::Call "user32::LoadImage(i 0, t r0, i ${IMAGE_BITMAP}, i 0, i 0, i ${LR_CREATEDIBSECTION}|${LR_LOADFROMFILE}) i.s"
	Pop $1 
	SendMessage $Button ${BM_SETIMAGE} ${IMAGE_BITMAP} $1
	${NSD_OnClick} $Button Button_Click		

	${NSD_CreateLabel} 160u 90u 50% 30u "$(CPro_FinishPage_3)"
	Pop $Label3
	${NSD_AddStyle} $Label3 ${WS_VISIBLE}|${WS_CHILD}|${WS_CLIPSIBLINGS}
    SetCtlColors $Label3 "0x000000" "TRANSPARENT"

	${NSD_CreateLabel} 115u 125u 63% 10u "$(CPro_FinishPage_5)"
	Pop $Label4
	${NSD_AddStyle} $Label4 ${WS_VISIBLE}|${WS_CHILD}|${WS_CLIPSIBLINGS}
    SetCtlColors $Label4 "0x000000" "TRANSPARENT"	
	
; Run Winamp	
	${NSD_CreateCheckBox} 120u 138u 60% 12u "$(CPro_FinishPage_7)"
	Pop $ACheckBox1
	${NSD_Check} $ACheckBox1
	SetCtlColors $ACheckBox1 "0x000000" "0xFFFFFF"
	
; Set ClassicPro skin as default	
	${NSD_CreateCheckBox} 120u 150u 60% 12u "$(CPro_FinishPage_8)"
	Pop $ACheckBox2
	${NSD_Check} $ACheckBox2
    SetCtlColors $ACheckBox2 "0x000000" "0xFFFFFF"	
	
; Go to homepage	
	${NSD_CreateCheckBox} 115u 175u 63% 16u "$(CPro_FinishPage_6)"
	Pop $CheckBox1	
	${NSD_Check} $CheckBox1		
    SetCtlColors $CheckBox1 "0x000000" "0xFFFFFF"	


	GetDlgItem $R0 $HWNDPARENT 1
	SendMessage $R0 ${WM_SETTEXT} 0 "STR:$(CPro_FinishPage_4)"
	
	nsDialogs::Show
	${NSD_FreeImage} $Img_Handle_Left

FunctionEnd


Function Button_Click

	Pop $0
	ExecShell "open" "${CPro_PayPal_Link}"

FunctionEnd


Function CheckFinishPage

; Run Winamp
	${NSD_GetState} $ACheckBox1 $Control_State
	${If} $Control_State = ${BST_CHECKED}
		ExecShell "open" "$INSTDIR\winamp.exe"
	${EndIf}

; Default ClassicPro skin	
	${NSD_GetState} $ACheckBox2 $Control_State
	${If} $Control_State = ${BST_CHECKED}
		DetailPrint "$(CPro_Ini)"
		WriteINIStr "$WINAMP_INI_DIR\winamp.ini" "Winamp" "skin" "cPro2__Aluminum.wal"
		FlushINI "$WINAMP_INI_DIR\winamp.ini"
	${EndIf}

; Homepage	
	${NSD_GetState} $CheckBox1 $Control_State
	${If} $Control_State = ${BST_CHECKED}
		ExecShell "open" "${CPRO_WEB_PAGE}"
	${EndIf}
	
FunctionEnd


;###########################################################################################
;	CLEANUP PAGE
;###########################################################################################

Function CreateCleanupPage

	!insertmacro MUI_HEADER_TEXT "$(CPro_CleanupPage_Title)" "$(CPro_CleanupPage_Subtitle)"
	
	nsDialogs::Create 1018
	Pop $Dialog
	
	${If} $Dialog == error
		Abort
	${EndIf}

	${NSD_CreateLabel} 0 0 100% 18u "$(CPro_CleanupPage_Caption0)"
	${NSD_CreateLabel} 0 18u 100% 18u "$(CPro_CleanupPage_Caption1)"
	${NSD_CreateLabel} 0 38u 100% 9u "$(CPro_CleanupPage_Caption2)"
	${NSD_CreateLabel} 0 49u 100% 18u "$(CPro_CleanupPage_Caption3)"
	${NSD_CreateLabel} 0 67u 100% 9u "$(CPro_CleanupPage_Caption4)"

	${NSD_CreateCheckBox} 0 80u 100% 12u "$(CPro_CleanupPage_StudioXnf)"
	Pop $Cleanup_Check_StudioXnf
	${NSD_CreateLabel} 22 92u 100% 10u "$(CPro_CleanupPage_StudioXnf_Desc)"
	Pop $R1
	CreateFont $R9 "Arial" "7" "400"	
	SendMessage $R1 ${WM_SETFONT} $R9 0
	EnableWindow $R1 0

	${NSD_CreateCheckBox} 0 100u 100% 12u "$(CPro_CleanupPage_WinampIni)"
	Pop $Cleanup_Check_WinampIni
	${NSD_CreateLabel} 22 112u 100% 10u "$(CPro_CleanupPage_WinampIni_Desc)"
	Pop $R1
 	SendMessage $R1 ${WM_SETFONT} $R9 0
	EnableWindow $R1 0

	${NSD_CreateLabel} 0 123u 100% 9u "$(CPro_CleanupPage_Footer)"
	${NSD_CreateLink} 22 132u 100% 9u "$(CPro_CleanupPage_TSLink)"
	Pop $R0
	${NSD_OnClick} $R0 CleanupTSLink_onClick

	nsDialogs::Show

FunctionEnd


Function CleanupTSLink_onClick

	Pop $0
	ExecShell "open" "${CPro_Technical_Support_Link}"

FunctionEnd


Function CheckCleanupPage

	${NSD_GetState} "$Cleanup_Check_StudioXnf" "$Cleanup_Check_StudioXnf_B"
	${NSD_GetState} "$Cleanup_Check_WinampIni" "$Cleanup_Check_WinampIni_B"

FunctionEnd
	

;###########################################################################################
;	WINAMP CLOSE
;###########################################################################################
	
Function LockedListShow

	${If} ${AtLeastWinNt4}
		!insertmacro MUI_HEADER_TEXT "$(CPro_CloseWinamp_Welcome_Title)" "$(CPro_CloseWinamp_Welcome_Text)"
			LockedList::AddModule "$INSTDIR\winamp.exe"
			LockedList::Dialog /heading "$(CPro_CloseWinamp_Heading)" /searching "$(CPro_CloseWinamp_Searching)" /endsearch "$(CPro_CloseWinamp_EndSearch)" /endmonitor "$(CPro_CloseWinamp_EndMonitor)" /noprograms "$(CPro_CloseWinamp_NoPrograms)" /colheadings "$(CPro_CloseWinamp_ColHeadings1)" "$(CPro_CloseWinamp_ColHeadings2)" /autoclosesilent "$(CPro_CloseWinamp_Autoclosesilent)" "$(^NextBtn)" /menuitems "$(CPro_CloseWinamp_MenuItem1)" "$(CPro_CloseWinamp_MenuItem2)"
	${EndIf}

FunctionEnd


Function un.LockedListShow

	${If} ${AtLeastWinNt4}
		!insertmacro MUI_HEADER_TEXT "$(CPro_CloseWinamp_Welcome_Title)" "$(CPro_CloseWinamp_Welcome_Text)"
			LockedList::AddModule "$INSTDIR\winamp.exe"
			LockedList::Dialog /heading "$(CPro_CloseWinamp_Heading)" /searching "$(CPro_CloseWinamp_Searching)" /endsearch "$(CPro_CloseWinamp_EndSearch)" /endmonitor "$(CPro_CloseWinamp_EndMonitor)" /noprograms "$(CPro_CloseWinamp_NoPrograms)" /colheadings "$(CPro_CloseWinamp_ColHeadings1)" "$(CPro_CloseWinamp_ColHeadings2)" /autoclosesilent "$(CPro_CloseWinamp_Autoclosesilent)" "$(^NextBtn)" /menuitems "$(CPro_CloseWinamp_MenuItem1)" "$(CPro_CloseWinamp_MenuItem2)"
	${EndIf}

FunctionEnd


	ShowInstDetails "show"

;###########################################################################################
;	INSTALLER  SECTIONS 
;###########################################################################################

Section "-Pre"

	DetailPrint "$(CPro_Winamp_Path)"
	Call GetWinampIniPath
	Call GetWinampSkinDirectory

SectionEnd


Section "$(CPro_CProFiles)" "CPro_Sec_CProFiles"

	SectionIn 1 2 RO
	
; Main directory	
	SetOutPath $INSTDIR\Plugins\ClassicPro
		File "..\*.txt"
		File "..\*.rtf"
; CPro engines		
	SetOutPath $INSTDIR\Plugins\ClassicPro\engine
		File "..\engine\*.xml"
; CPro engine	 - Image		
	SetOutPath $INSTDIR\Plugins\ClassicPro\engine\image
		File "..\engine\image\*.png"
		
; CPro engine	 - cPro::One
	SetOutPath $INSTDIR\Plugins\ClassicPro\engine\one\scripts
		File "..\engine\one\scripts\*.m"
		File "..\engine\one\scripts\*.maki"
	SetOutPath $INSTDIR\Plugins\ClassicPro\engine\one\scripts\attribs
		File "..\engine\one\scripts\attribs\*.m"
	SetOutPath $INSTDIR\Plugins\ClassicPro\engine\one\xml
		File "..\engine\one\xml\*.xml"


; CPro engine	 - cPro::Two
	SetOutPath $INSTDIR\Plugins\ClassicPro\engine\two\scripts
		File "..\engine\two\scripts\*.m"
		File "..\engine\two\scripts\*.maki"
	SetOutPath $INSTDIR\Plugins\ClassicPro\engine\two\scripts\attribs
		File "..\engine\two\scripts\attribs\*.m"
	SetOutPath $INSTDIR\Plugins\ClassicPro\engine\two\xml
		File "..\engine\two\xml\*.xml"
	SetOutPath $INSTDIR\Plugins\ClassicPro\engine\two\images
		File "..\engine\two\images\*.png"





; CPro engine	 - Generic Scripts
	SetOutPath $INSTDIR\Plugins\ClassicPro\engine\scripts
		File "..\engine\scripts\*.m"
		File "..\engine\scripts\*.maki"
	SetOutPath $INSTDIR\Plugins\ClassicPro\engine\scripts\attribs
		File "..\engine\scripts\attribs\*.m"
	SetOutPath $INSTDIR\Plugins\ClassicPro\engine\scripts\lib
		File "..\engine\scripts\lib\*.mi"



; CPro engine	 - Generic xml
	SetOutPath $INSTDIR\Plugins\ClassicPro\engine\xml
		File "..\engine\xml\*.xml"



; CPro engine	 - XUI Objects
	SetOutPath $INSTDIR\Plugins\ClassicPro\engine\xui
		File "..\engine\xui\*.xml"

	SetOutPath $INSTDIR\Plugins\ClassicPro\engine\xui\AlbumArt
		File "..\engine\xui\AlbumArt\*.xml"
		File "..\engine\xui\AlbumArt\*.m"
		File "..\engine\xui\AlbumArt\*.maki"

	SetOutPath $INSTDIR\Plugins\ClassicPro\engine\xui\CentroSUI\_v1
		File "..\engine\xui\CentroSUI\_v1\*.xml"
	SetOutPath $INSTDIR\Plugins\ClassicPro\engine\xui\CentroSUI\_v1\CproTabs
		File "..\engine\xui\CentroSUI\_v1\CproTabs\*.xml"
		File "..\engine\xui\CentroSUI\_v1\CproTabs\*.m"
		File "..\engine\xui\CentroSUI\_v1\CproTabs\*.maki"
	SetOutPath $INSTDIR\Plugins\ClassicPro\engine\xui\CentroSUI\_v1\scripts
		File "..\engine\xui\CentroSUI\_v1\scripts\*.m"
		File "..\engine\xui\CentroSUI\_v1\scripts\*.maki"
	SetOutPath $INSTDIR\Plugins\ClassicPro\engine\xui\CentroSUI\_v2
		File "..\engine\xui\CentroSUI\_v2\*.xml"
	SetOutPath $INSTDIR\Plugins\ClassicPro\engine\xui\CentroSUI\_v2\CproTabs
		File "..\engine\xui\CentroSUI\_v2\CproTabs\*.xml"
		File "..\engine\xui\CentroSUI\_v2\CproTabs\*.m"
		File "..\engine\xui\CentroSUI\_v2\CproTabs\*.maki"
	SetOutPath $INSTDIR\Plugins\ClassicPro\engine\xui\CentroSUI\_v2\scripts
		File "..\engine\xui\CentroSUI\_v2\scripts\*.m"
		File "..\engine\xui\CentroSUI\_v2\scripts\*.maki"
	SetOutPath $INSTDIR\Plugins\ClassicPro\engine\xui\CentroSUI\_v2\Reader
		File "..\engine\xui\CentroSUI\_v2\Reader\*.m"
		File "..\engine\xui\CentroSUI\_v2\Reader\*.maki"
		File "..\engine\xui\CentroSUI\_v2\Reader\*.mi"
		File "..\engine\xui\CentroSUI\_v2\Reader\*.xml"
	SetOutPath $INSTDIR\Plugins\ClassicPro\engine\xui\CentroSUI\_v2\Reader\icons
		File "..\engine\xui\CentroSUI\_v2\Reader\icons\*.png"
	SetOutPath $INSTDIR\Plugins\ClassicPro\engine\xui\CentroSUI\_v2\Reader\source
		File "..\engine\xui\CentroSUI\_v2\Reader\source\*.xml"
	SetOutPath $INSTDIR\Plugins\ClassicPro\engine\xui\CentroSUI\_v2\InfoViewer
		File "..\engine\xui\CentroSUI\_v2\InfoViewer\*.m"
		File "..\engine\xui\CentroSUI\_v2\InfoViewer\*.maki"
		File "..\engine\xui\CentroSUI\_v2\InfoViewer\*.xml"

	SetOutPath $INSTDIR\Plugins\ClassicPro\engine\xui\editbox
		File "..\engine\xui\editbox\*.xml"

	SetOutPath $INSTDIR\Plugins\ClassicPro\engine\xui\FadeText
		File "..\engine\xui\FadeText\*.xml"
		File "..\engine\xui\FadeText\*.m"
		File "..\engine\xui\FadeText\*.maki"

	SetOutPath $INSTDIR\Plugins\ClassicPro\engine\xui\historyeditbox
		File "..\engine\xui\historyeditbox\*.xml"
		File "..\engine\xui\historyeditbox\*.m"
		File "..\engine\xui\historyeditbox\*.maki"

	SetOutPath $INSTDIR\Plugins\ClassicPro\engine\xui\ModernSongticker
		File "..\engine\xui\ModernSongticker\*.xml"
		File "..\engine\xui\ModernSongticker\*.txt"
		File "..\engine\xui\ModernSongticker\*.m"
		File "..\engine\xui\ModernSongticker\*.maki"

	SetOutPath $INSTDIR\Plugins\ClassicPro\engine\xui\Ratings
		File "..\engine\xui\Ratings\*.xml"
		File "..\engine\xui\Ratings\*.m"
		File "..\engine\xui\Ratings\*.maki"

	SetOutPath $INSTDIR\Plugins\ClassicPro\engine\xui\PlaylistPro\_v1
		File "..\engine\xui\PlaylistPro\_v1\alt\*.xml"

	;SetOutPath $INSTDIR\Plugins\ClassicPro\engine\xui\PlaylistPro\_v1\alt
	;	File "..\engine\xui\PlaylistPro\_v1\alt\*.xml"

	SetOutPath $INSTDIR\Plugins\ClassicPro\engine\xui\PlaylistPro\_v2
		File "..\engine\xui\PlaylistPro\_v2\*.xml"
		File "..\engine\xui\PlaylistPro\_v2\*.m"
		File "..\engine\xui\PlaylistPro\_v2\*.maki"

	SetOutPath $INSTDIR\Plugins\ClassicPro\engine\xui\SC-Channels
		File "..\engine\xui\SC-Channels\*.xml"
		File "..\engine\xui\SC-Channels\*.m"
		File "..\engine\xui\SC-Channels\*.maki"

	SetOutPath $INSTDIR\Plugins\ClassicPro\engine\xui\SC-ProgressGrid
		File "..\engine\xui\SC-ProgressGrid\*.xml"
		File "..\engine\xui\SC-ProgressGrid\*.m"
		File "..\engine\xui\SC-ProgressGrid\*.maki"

	SetOutPath $INSTDIR\Plugins\ClassicPro\engine\xui\ScrollBar
		File "..\engine\xui\ScrollBar\*.xml"
		File "..\engine\xui\ScrollBar\*.m"
		File "..\engine\xui\ScrollBar\*.maki"

	SetOutPath $INSTDIR\Plugins\ClassicPro\engine\xui\updateSystem
		File "..\engine\xui\updateSystem\*.xml"
		File "..\engine\xui\updateSystem\*.m"
		File "..\engine\xui\updateSystem\*.maki"

	SetOutPath $INSTDIR\Plugins\ClassicPro\engine\xui\WasabiButton
		File "..\engine\xui\WasabiButton\*.xml"
		File "..\engine\xui\WasabiButton\*.m"
		File "..\engine\xui\WasabiButton\*.maki"



; CPro engine	 - XUI Objects (Additional XUI Objects for widget devs)
	SetOutPath $INSTDIR\Plugins\ClassicPro\engine\xui\Layouts
		File "..\engine\xui\Layouts\*.xml"
		File "..\engine\xui\Layouts\*.m"
		File "..\engine\xui\Layouts\*.maki"

	SetOutPath $INSTDIR\Plugins\ClassicPro\engine\xui\KeepRatioLayer
		File "..\engine\xui\KeepRatioLayer\*.xml"
		File "..\engine\xui\KeepRatioLayer\*.m"
		File "..\engine\xui\KeepRatioLayer\*.maki"


; CPro engine	 - cPro::Flex
!if ${CPRO_BUILD_TYPE} == "NIGHTLY"
	; cPro::Flex
	;	SetOutPath $INSTDIR\Plugins\ClassicPro\engine\flex\scripts
	;		File /nonfatal "..\engine\flex\scripts\*.m"
	;		File /nonfatal "..\engine\flex\scripts\*.maki"
	;
	;	SetOutPath $INSTDIR\Plugins\ClassicPro\engine\flex\xml
	;		File /nonfatal "..\engine\flex\xml\*.xml"
	;		
	;	SetOutPath "$WINAMP_SKIN_DIR"
	;		File /nonfatal /r "${CPRO_WINAMP_SKINS}\cProFlex - iFlex\cProFlex - iFlex.wal"
	;	SetOutPath "$WINAMP_SKIN_DIR\cProFlex - Xenolith"
	;		File /nonfatal /r /x *.psd /x .svn "${CPRO_WINAMP_SKINS}\cProFlex - Xenolith"
!endif

; CPro skins	 - Cpro default skins
	SetOutPath "$WINAMP_SKIN_DIR"
		File "${CPRO_WINAMP_SKINS}\cPro__Bento.wal"
		File "${CPRO_WINAMP_SKINS}\cPro2__Aluminum.wal"

; Clean some old folders from older releases
	RMDir /r "$WINAMP_SKIN_DIR\cPro - Big Bento\" 
	RMDir /r "$WINAMP_SKIN_DIR\cPro - Bento\" 
	RMDir /r "$WINAMP_SKIN_DIR\cPro_Bento\" 

; System files

	SetOutPath $INSTDIR\System
		AllowSkipFiles off
		Delete "${CPRO_WINAMP_SYSTEM}\ClassicProFlex.w5s"
		Delete "${CPRO_WINAMP_SYSTEM}\ClassicPro.w5s"
		Delete "${CPRO_WINAMP_SYSTEM}\ClassicPro.wbm"
		
; Sometimes this file is still open, so allow skip needs to be off
		File /nonfatal "${CPRO_WINAMP_SYSTEM}\ClassicPro.w5s"
		File /nonfatal "${CPRO_WINAMP_SYSTEM}\ClassicPro.wbm"
 
SectionEnd


SectionGroup "$(CPro_CProCustom)" CPro_Sec_CProCustom

	Section "$(CPro_cPlaylistPro)" CPro_Sec_cPlaylistPro
		
		SectionIn 1 2
		SetOutPath $INSTDIR\Plugins\ClassicPro\engine\xui\PlaylistPro\_v1
			File "..\engine\xui\PlaylistPro\_v1\*.xml"
			File "..\engine\xui\PlaylistPro\_v1\*.m"
			File "..\engine\xui\PlaylistPro\_v1\*.maki"
		
	SectionEnd
	
SectionGroupEnd


SectionGroup "$(CPro_WidgetsSection)" CPro_Sec_WidgetsSection

	Section "$(CPro_wBrowserPro)" CPro_Sec_wBrowserPro

		SectionIn 1
		
		SetOutPath "$INSTDIR\Plugins\ClassicPro\engine\widgets\Load"
			File "..\engine\widgets\Load\browserpro.xml"
 
		SetOutPath "$INSTDIR\Plugins\ClassicPro\engine\widgets\Data\BrowserPro"
			File "..\engine\widgets\Data\BrowserPro\*.m"
			File "..\engine\widgets\Data\BrowserPro\*.png"
			File "..\engine\widgets\Data\BrowserPro\*.maki"
			File "..\engine\widgets\Data\BrowserPro\*.mi"

		SetOutPath "$INSTDIR\Plugins\ClassicPro\engine\widgets"
			File "..\engine\widgets\cpro-widget-BrowserPro.nsi"

	SectionEnd

	Section "$(CPro_wAlbumArt)" CPro_Sec_wAlbumArt
	
		SectionIn 1
		SetOutPath "$INSTDIR\Plugins\ClassicPro\engine\widgets\Load"
			File "..\engine\widgets\Load\nowplaying.xml"

		SetOutPath "$INSTDIR\Plugins\ClassicPro\engine\widgets\Load\v2"
			File "..\engine\widgets\Load\v2\nowplaying.xml"

		SetOutPath "$INSTDIR\Plugins\ClassicPro\engine\widgets\Data\NowPlaying"
			File "..\engine\widgets\Data\NowPlaying\*.xml"
			File "..\engine\widgets\Data\NowPlaying\*.m"
			File "..\engine\widgets\Data\NowPlaying\*.maki"
			File "..\engine\widgets\Data\NowPlaying\*.png"
	
	SectionEnd

SectionGroupEnd


Section "-Leave"

; Registry entries
	WriteRegStr "HKLM" "Software\Microsoft\Windows\CurrentVersion\Uninstall\${CPRO_NAME}" "UninstallString" '"$INSTDIR\${CPRO_UNINSTALLER}.exe"'
	WriteRegStr "HKLM" "Software\Microsoft\Windows\CurrentVersion\Uninstall\${CPRO_NAME}" "InstallLocation" "$INSTDIR"
	WriteRegStr "HKLM" "Software\Microsoft\Windows\CurrentVersion\Uninstall\${CPRO_NAME}" "DisplayName" "${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION}"
	WriteRegStr "HKLM" "Software\Microsoft\Windows\CurrentVersion\Uninstall\${CPRO_NAME}" "DisplayIcon" "$INSTDIR\Plugins\ClassicPro\_installer\Images\icon.ico"
	WriteRegStr "HKLM" "Software\Microsoft\Windows\CurrentVersion\Uninstall\${CPRO_NAME}" "DisplayVersion" "${CPRO_VERSION}"
	WriteRegStr "HKLM" "Software\Microsoft\Windows\CurrentVersion\Uninstall\${CPRO_NAME}" "URLInfoAbout" "${CPRO_WEB_PAGE}"
	WriteRegStr "HKLM" "Software\Microsoft\Windows\CurrentVersion\Uninstall\${CPRO_NAME}" "HelpLink" "${CPRO_HELP_LINK}" 
	WriteRegStr "HKLM" "Software\Microsoft\Windows\CurrentVersion\Uninstall\${CPRO_NAME}" "Publisher" "${CPRO_COMPANY}"
	WriteRegDWORD "HKLM" "Software\Microsoft\Windows\CurrentVersion\Uninstall\${CPRO_NAME}" "NoModify" "1"
	WriteRegDWORD "HKLM" "Software\Microsoft\Windows\CurrentVersion\Uninstall\${CPRO_NAME}" "NoRepair" "1"

; Menu Start entries	
	SetShellVarContext all
		CreateDirectory "$SMPROGRAMS\Winamp\${CPRO_NAME}"
		CreateShortCut "$SMPROGRAMS\Winamp\${CPRO_NAME}\$(CPro_MenuStart1).lnk" "$INSTDIR\${CPRO_UNINSTALLER}.exe"
		CreateShortCut "$SMPROGRAMS\Winamp\${CPRO_NAME}\$(CPro_MenuStart2).lnk" "$INSTDIR\Plugins\ClassicPro\Whats new.txt"
		File /nonfatal /oname=$SMPROGRAMS\Winamp\${CPRO_NAME}\$(CPro_MenuStart3).url "Plugins\link.url"
	SetShellVarContext current

; Create uninstaller
	WriteUninstaller "$INSTDIR\${CPRO_UNINSTALLER}.exe"

	SetAutoClose false

	${If} $Cleanup_Check_WinampIni_B == ${BST_CHECKED}
		SetOutPath "$WINAMP_INI_DIR"
		File "Files\winamp.ini"
	${EndIf}

	${If} $Cleanup_Check_StudioXnf_B == ${BST_CHECKED}
		Delete $WINAMP_INI_DIR\studio.xnf
	${EndIf}
		
SectionEnd

;###########################################################################################
;	INSTALLER DESCRIPTIONS SECTION 
;###########################################################################################

	!insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
		!insertmacro MUI_DESCRIPTION_TEXT ${CPro_Sec_CProFiles} $(CPro_Desc_CProFiles)
		!insertmacro MUI_DESCRIPTION_TEXT ${CPro_Sec_wBrowserPro} $(CPro_Desc_wBrowserPro)
		!insertmacro MUI_DESCRIPTION_TEXT ${CPro_Sec_wAlbumArt} $(CPro_Desc_wAlbumArt)
		!insertmacro MUI_DESCRIPTION_TEXT ${CPro_Sec_WidgetsSection} $(CPro_Desc_WidgetsSection)
		!insertmacro MUI_DESCRIPTION_TEXT ${CPro_Sec_CProCustom} $(CPro_Desc_CProCustom)
		!insertmacro MUI_DESCRIPTION_TEXT ${CPro_Sec_cPlaylistPro} $(CPro_Desc_cPlaylistPro)
	!insertmacro MUI_FUNCTION_DESCRIPTION_END

;###########################################################################################
;	UNINSTALLER
;###########################################################################################

	ShowUninstDetails "show"

Function un.onInit

; Language
	StrCpy $LANG_TITLE $(CPro_Un_Language_Title)
	!insertmacro MUI_UNGETLANGUAGE
	InitPluginsDir
		
FunctionEnd

Function un.My_GUIInit

	FindWindow $0 "#32770" "" $HWNDPARENT
	GetDlgItem $0 $HWNDPARENT 1028
	EnableWindow $0 1
	Linker::link /NOUNLOAD $0 "${CPRO_BT}"

FunctionEnd

Function un.onGUIEnd

	Linker::Unload

FunctionEnd

Section "-Un.Pre"

	DetailPrint "$(CPro_Winamp_Path)"
	Call un.GetWinampIniPath	
	Call un.GetWinampSkinDirectory
		
SectionEnd

Section "-Un.Uninstall"

	SetAutoClose "false"
	DetailPrint "$(CPro_Ini)"
		WriteINIStr "$WINAMP_INI_DIR\winamp.ini" "Winamp" "skin" "Bento"
		FlushINI "$WINAMP_INI_DIR\winamp.ini"	
	RMDir /r "$INSTDIR\Plugins\ClassicPro"
	Delete "$WINAMP_SKIN_DIR\cPro__Bento.wal"
	
	SetShellVarContext all
		RMDir /r "$SMPROGRAMS\Winamp\${CPRO_NAME}"
	SetShellVarContext current
	
	DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${CPRO_NAME}"	
	Delete /REBOOTOK "$INSTDIR\${CPRO_UNINSTALLER}.exe"
	
SectionEnd

;###########################################################################################
;	CPRO - THE END
;###########################################################################################