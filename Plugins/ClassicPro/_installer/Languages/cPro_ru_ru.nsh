;###########################################################################################

; Lang:				Russian
; LangID			1049
; Last udpdated:	24.02.2009
; Author:			x
; Email:			x@x

; Notes:
; Use ';' or '#' for comments
; Strings must be in double quotes.
; Only edit the strings in quotes:
; Make sure there's no trailing spaces at ends of lines
; To use double quote inside string - '$\'
; To force new line  - '$\r$\n'
; To insert tabulation  - '$\t'

;###########################################################################################

; Language selection
	LangString CPro_Language_Title ${LANG_RUSSIAN} "���� ���������"
	LangString CPro_Un_Language_Title ${LANG_RUSSIAN} "Uninstaller language"	
	LangString CPro_Language_Text ${LANG_RUSSIAN} "���������� �������� ����:"

; First Page of Installer
	LangString CPro_Welcome_Title ${LANG_RUSSIAN} "����� ���������� � ������ ��������� $(^NameDA)"
	LangString CPro_Welcome_Text ${LANG_RUSSIAN} "���� ������ �������� ��� ����� ��������� ��������� $(^NameDA).$\r$\n$\r$\n����������� ��� ������� Winamp ����� ������� ���������. �������� �������� ��������� ��� ��������������� ����� Winamp.$\n$\n��� ��� ������� ��������� Winamp ������ ${CPRO_WINAMP_VERSION} ��� ������ ������� ������ ${CPRO_NAME}!$\r$\n$\r$\n$_CLICK"

; Installer Header
	!if ${CPRO_BUILD_TYPE} == "BETA"
; Beta stage	
		LangString CPro_Caption ${LANG_RUSSIAN} "��������� ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} ${CPRO_BUILD_NAME}"
	!else if ${CPRO_BUILD_TYPE} == "NIGHTLY"
; Alpha stage	
		LangString CPro_Caption ${LANG_RUSSIAN} "��������� ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} ${CPRO_BUILD_NAME} (${CPRO_DATE})"		
	!else
; Release
		LangString CPro_Caption ${LANG_RUSSIAN} "��������� ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION}"		
	!endif
	
; Installation type	
	LangString CPro_Full ${LANG_RUSSIAN} "������"
	LangString CPro_Minimal ${LANG_RUSSIAN} "�����������"
	
; Installer sections
	LangString CPro_CProFiles ${LANG_RUSSIAN} "��������� ${CPRO_NAME}"
	LangString CPro_wBrowserPro ${LANG_RUSSIAN} "BrowserPro"
	LangString CPro_wAlbumArt ${LANG_RUSSIAN} "Now Playing"
	LangString CPro_WidgetsSection ${LANG_RUSSIAN} "����������"
	LangString CPro_CProCustom ${LANG_RUSSIAN} "����������"
	LangString CPro_cPlaylistPro ${LANG_RUSSIAN} "����� �� ������ ���������������"
		
; Installer sections descriptions	
	LangString CPro_Desc_CProFiles ${LANG_RUSSIAN} "������ ����� ����������� ��� �����, ����������� ��� ������."
	LangString CPro_Desc_wBrowserPro ${LANG_RUSSIAN} "BrowserPro ��� ����������, ������� �������� ������ �������� ������������� ���������� �� ���������� ��� ����� � ������������� ����� ���������������."
	LangString CPro_Desc_wAlbumArt ${LANG_RUSSIAN} "Now Playing ��� ����������, ������������ ������� ������� ������� � ���������� � ������������� �����."
	LangString CPro_Desc_WidgetsSection ${LANG_RUSSIAN} "�������� ���������� ${CPRO_NAME}, ������� �� ������ �������� � ���������."
	LangString CPro_Desc_CProCustom ${LANG_RUSSIAN} "�������������� ���������� ${CPRO_NAME}."
	LangString CPro_Desc_cPlaylistPro ${LANG_RUSSIAN} "�������� ������ ������ ��� ����� ������� ��������������� ��� �������� ������."

; Direcory Text	
	LangString CPro_DirText ${LANG_RUSSIAN} "������� ���������� ���� � Winamp (�� ������� ����������, ����� Winamp ����� ������):"

; Cleanup Page	
	LangString CPro_CleanupPage_Title ${LANG_RUSSIAN} "Winamp Cleanup"
	LangString CPro_CleanupPage_Subtitle ${LANG_RUSSIAN} "Cleanup some Winamp Preferences."
	LangString CPro_CleanupPage_Caption0 ${LANG_RUSSIAN} "Using the options on this page will remove some Winamp Configuration files which may not work across different versions of both Winamp and ${CPRO_NAME}."
	LangString CPro_CleanupPage_Caption1 ${LANG_RUSSIAN} "If you have problems getting ${CPRO_NAME} to run properly you can reinstall ${CPRO_NAME} at any time and use this page to solve your problems."
	LangString CPro_CleanupPage_Caption2 ${LANG_RUSSIAN} "NOTE: It's perfectly ok, these files will be rebuilt by Winamp."
	LangString CPro_CleanupPage_Caption3 ${LANG_RUSSIAN} "The reinstall with these options should be used only if you are experiencing difficulties using ${CPRO_NAME} with Winamp."
	LangString CPro_CleanupPage_Caption4 ${LANG_RUSSIAN} "Thank you for your understanding."
	LangString CPro_CleanupPage_Footer ${LANG_RUSSIAN} "If you are still having problems using ${CPRO_NAME},"
	LangString CPro_CleanupPage_TSLink ${LANG_RUSSIAN} "Ask for free support in the Skin Consortium Forums."
	LangString CPro_CleanupPage_StudioXnf ${LANG_RUSSIAN} "Delete Skin Configuration (studio.xnf)"
	LangString CPro_CleanupPage_StudioXnf_Desc ${LANG_RUSSIAN} "Deletes skin-specific settings like: window positions, active tabs, current windowmode, ..."
	LangString CPro_CleanupPage_WinampIni ${LANG_RUSSIAN} "Delete Winamp Configuration (winamp.ini)"
	LangString CPro_CleanupPage_WinampIni_Desc ${LANG_RUSSIAN} "Deletes winamp-specific settings like: current skin, advanced title formatting, current language, ..."

; Finish Page	
	LangString CPro_FinishPage_1 ${LANG_RUSSIAN} "��������� ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} ���������"
	LangString CPro_FinishPage_2 ${LANG_RUSSIAN} "������ ��������� �������� ��������� ${CPRO_NAME} v${CPRO_VERSION}. �� ������ ������ ������������ ��������� � ������������ ${CPRO_NAME} � Winamp."
	LangString CPro_FinishPage_3 ${LANG_RUSSIAN} "���� ��� ���������� ${CPRO_NAME} � �� ������ �������� ��������, ���������� ���������� ������ �����������."
	LangString CPro_FinishPage_4 ${LANG_RUSSIAN} "��� �� ������ ������ �������?"
	LangString CPro_FinishPage_5 ${LANG_RUSSIAN} "����� ������ ������� � ���������� ${CPRO_NAME} �� �����"
	LangString CPro_FinishPage_6 ${LANG_RUSSIAN} "Open Winamp with the default ${CPRO_NAME} skin now"
	LangString CPro_FinishPage_7 ${LANG_RUSSIAN} "���������"	
	
; First Page of Uninstaller
	LangString CPro_Un_Welcome_Title ${LANG_RUSSIAN} "����� ���������� � ������ �������� $(^NameDA)"
	LangString CPro_Un_Welcome_Text ${LANG_RUSSIAN} "���� ������ �������� ��� ����� ��������� �������� $(^NameDA).$\r$\n$\r$\n����� ������� �������� ���������, ��� ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} �� ��������.$\r$\n$\r$\n$_CLICK"

; Installation
	LangString CPro_Ini ${LANG_RUSSIAN} "���������� ����� ��������� winamp.ini..."
	LangString CPro_Account ${LANG_RUSSIAN} "��������� ���� �������������"
	LangString CPro_No_Account ${LANG_RUSSIAN} "��������� ������ ������������"
	LangString CPro_Winamp_Path ${LANG_RUSSIAN} "���������� ����� ��������� Winamp..."	

; Close all instances of Winamp
	LangString CPro_CloseWinamp_Welcome_Title ${LANG_RUSSIAN} "Programs to close"
	LangString CPro_CloseWinamp_Welcome_Text  ${LANG_RUSSIAN} "Programs, that must be closed before continuing installation"	
	LangString CPro_CloseWinamp_Heading ${LANG_RUSSIAN} "Close all programs from the list before continuing installation..."
	LangString CPro_CloseWinamp_Searching ${LANG_RUSSIAN} "Searching programs, please wait..."
	LangString CPro_CloseWinamp_EndSearch ${LANG_RUSSIAN} "Searching programs finished..."
	LangString CPro_CloseWinamp_EndMonitor ${LANG_RUSSIAN} "Closing active process monitor, please wait..."
	LangString CPro_CloseWinamp_NoPrograms ${LANG_RUSSIAN} "Installer didn't find any programs to close"
	LangString CPro_CloseWinamp_ColHeadings1 ${LANG_RUSSIAN} "Application"
	LangString CPro_CloseWinamp_ColHeadings2 ${LANG_RUSSIAN} "Process"
	LangString CPro_CloseWinamp_Autoclosesilent ${LANG_RUSSIAN} "Closing program failed"

; Menu Start
	LangString CPro_MenuStart1 ${LANG_RUSSIAN} "������� ${CPRO_NAME}"
	LangString CPro_MenuStart2 ${LANG_RUSSIAN} "��� ������"
	LangString CPro_MenuStart3 ${LANG_RUSSIAN} "����� ��� ������� � ���������� ${CPRO_NAME}!"	

	
; CPro :: Widgets

; First Page of Installer
	LangString CPro_Widget_Welcome_Title ${LANG_RUSSIAN} "Welcome to the $(^NameDA) Setup Wizard"
	LangString CPro_Widget_Welcome_Text ${LANG_RUSSIAN} "This wizard will guide you through the installation of $(^NameDA).$\r$\n$\r$\nYou'll at least need Winamp ${CPRO_WINAMP_VERSION} and ${CPRO_NAME} ${CPRO_VERSION} for this version of ${CPRO_WIDGET_NAME} to work!$\r$\n$\r$\n$_CLICK"

	LangString CPro_Widget_Caption ${LANG_RUSSIAN} "${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} Setup"	
	LangString CPro_Widget_Name_Text ${LANG_RUSSIAN} "${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} widget for ${CPRO_NAME}${CPRO_CRS}"		
	
; First Page of Uninstaller
	LangString CPro_Widget_Un_Welcome_Title ${LANG_RUSSIAN} "Welcome to the $(^NameDA) Uninstall Wizard"
	LangString CPro_Widget_Un_Welcome_Text ${LANG_RUSSIAN} "This wizard will guide you through the uninstallation of $(^NameDA).$\r$\n$\r$\n$_CLICK"

; Installer sections
	LangString CPro_Widget_Files ${LANG_RUSSIAN} "${CPRO_WIDGET_NAME} ${CPRO_WIDGET_VERSION} for ${CPRO_NAME}${CPRO_CRS} ${CPRO_VERSION}"
		
; Installer sections descriptions	
	LangString CPro_Widget_Desc_Files ${LANG_RUSSIAN} "This will install all the files that ${CPRO_WIDGET_NAME} ${CPRO_WIDGET_VERSION} needs to work."

; Finish Page	
	LangString CPro_Widget_FinishPage_1 ${LANG_RUSSIAN} "${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} installation finished"
	LangString CPro_Widget_FinishPage_2 ${LANG_RUSSIAN} "The setup wizard has finished installing ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION}. You can now start using your new ${CPRO_WIDGET_NAME} widget for ${CPRO_NAME} in Winamp."
	LangString CPro_Widget_FinishPage_3 ${LANG_RUSSIAN} "If you like ${CPRO_WIDGET_NAME} and would like to help future development of the product please donate to the project."
	LangString CPro_Widget_FinishPage_4 ${LANG_RUSSIAN} "What do you want to do now?"
	LangString CPro_Widget_FinishPage_5 ${LANG_RUSSIAN} "Go to our homepage to get more ${CPRO_NAME} widgets"
	LangString CPro_Widget_FinishPage_6 ${LANG_RUSSIAN} "Reload ${CPRO_NAME} or open Winamp now"
	LangString CPro_Widget_FinishPage_7 ${LANG_RUSSIAN} "Finish"	
	
; UnFinish Page	
	LangString CPro_Widget_UnFinishPage_1 ${LANG_RUSSIAN} "Completing the ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} widget for ${CPRO_NAME}${CPRO_CRS} Uninstall Wizard"
	LangString CPro_Widget_UnFinishPage_2 ${LANG_RUSSIAN} "${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} widget for ${CPRO_NAME}${CPRO_CRS} has been uninstalled from your computer."
	LangString CPro_Widget_UnFinishPage_3 ${LANG_RUSSIAN} "Click $(CPro_Widget_FinishPage_7) to close this wizard"
	LangString CPro_Widget_UnFinishPage_4 ${LANG_RUSSIAN} "Reload ${CPRO_NAME} if Winamp is running"