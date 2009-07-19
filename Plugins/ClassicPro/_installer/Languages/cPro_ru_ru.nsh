;###########################################################################################

; Lang:				Russian
; LangID			1049
; Last udpdated:	16.05.2009
; Author:			NickMikh
; Email:			nickmikh@gmail.com

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
	LangString CPro_Language_Title ${LANG_RUSSIAN} "���� ������������"
	LangString CPro_Un_Language_Title ${LANG_RUSSIAN} "���� ��������������"	
	LangString CPro_Language_Text ${LANG_RUSSIAN} "���������� �������� ����:"

; First Page of Installer
	LangString CPro_Welcome_Title ${LANG_RUSSIAN} "����� ���������� � ������ ��������� ������ $(^NameDA)"
	LangString CPro_Welcome_Text ${LANG_RUSSIAN} "���� ������ �������� ��� ����� ��������� ��������� ������ $(^NameDA).$\r$\n$\r$\n����������� ��� ������� Winamp ����� ������� ���������. �������� �������� ��������� ��� ��������������� ����� Winamp.$\n$\n��� ��� ������� ��������� Winamp ������ ${CPRO_WINAMP_VERSION} ��� ������ ������� ������ ${CPRO_NAME}!$\r$\n$\r$\n$_CLICK"

; Installer Header
	!if ${CPRO_BUILD_TYPE} == "BETA"
; Beta stage	
		LangString CPro_Caption ${LANG_RUSSIAN} "��������� ������ ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} ${CPRO_BUILD_NAME}"
	!else if ${CPRO_BUILD_TYPE} == "NIGHTLY"
; Alpha stage	
		LangString CPro_Caption ${LANG_RUSSIAN} "��������� ������${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} ${CPRO_BUILD_NAME} (${CPRO_DATE})"		
	!else
; Release
		LangString CPro_Caption ${LANG_RUSSIAN} "��������� ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION}"		
	!endif
	
; Installation type	
	LangString CPro_Full ${LANG_RUSSIAN} "������"
	LangString CPro_Minimal ${LANG_RUSSIAN} "�����������"
	
; Installer sections
	LangString CPro_CProFiles ${LANG_RUSSIAN} "��������� ������ ${CPRO_NAME}"
	LangString CPro_wBrowserPro ${LANG_RUSSIAN} "BrowserPro"
	LangString CPro_wAlbumArt ${LANG_RUSSIAN} "Now Playing"
	LangString CPro_WidgetsSection ${LANG_RUSSIAN} "����������"
	LangString CPro_CProCustom ${LANG_RUSSIAN} "����������"
	LangString CPro_cPlaylistPro ${LANG_RUSSIAN} "����� �� ������ ���������������"
		
; Installer sections descriptions	
	LangString CPro_Desc_CProFiles ${LANG_RUSSIAN} "������ ����� ����������� ��� �����, ����������� ��� ������."
	LangString CPro_Desc_wBrowserPro ${LANG_RUSSIAN} "BrowserPro ��� ����������, ������� �������� ������ �������� ������������� ���������� �� ���������� ��� ����� � ������������� ����� ���������������."
	LangString CPro_Desc_wAlbumArt ${LANG_RUSSIAN} "Now Playing ��� ����������, ������������ ������� ������� ������� � ���������� � ������������� �����."
	LangString CPro_Desc_WidgetsSection ${LANG_RUSSIAN} "�������� ���������� ������ ${CPRO_NAME}, ������� �� ������ �������� � ���������."
	LangString CPro_Desc_CProCustom ${LANG_RUSSIAN} "�������������� ���������� ������ ${CPRO_NAME}."
	LangString CPro_Desc_cPlaylistPro ${LANG_RUSSIAN} "�������� ������ ������ ��� ����� ������� ��������������� ��� �������� ������."

; Direcory Text	
	LangString CPro_DirText ${LANG_RUSSIAN} "������� ���������� ���� � Winamp (�� ������� ����������, ����� Winamp ����� ������):"

; Cleanup Page	
	LangString CPro_CleanupPage_Title ${LANG_RUSSIAN} "������� Winamp"
	LangString CPro_CleanupPage_Subtitle ${LANG_RUSSIAN} "������� ��������� ���������� Winamp."
	LangString CPro_CleanupPage_Caption0 ${LANG_RUSSIAN} "������������� ���������� ������ �������� ������ ����� ������������ Winamp, ��-�� ������� ����� �� �������� Winamp � ${CPRO_NAME}."
	LangString CPro_CleanupPage_Caption1 ${LANG_RUSSIAN} "���� � ��� �������� ������� � ������� ������ ${CPRO_NAME} �� ������ �������������� ${CPRO_NAME} � ������������ ��� ��������� ��� �� �������."
	LangString CPro_CleanupPage_Caption2 ${LANG_RUSSIAN} "����������: ��� �������� ���������, Winamp ����������� ��� �����."
	LangString CPro_CleanupPage_Caption3 ${LANG_RUSSIAN} "������������� � ����� ����������� ������� ��������� ������, ���� ��������� �������� � �������������� ������ ${CPRO_NAME} � Winamp."
	LangString CPro_CleanupPage_Caption4 ${LANG_RUSSIAN} "������� �� ���������."
	LangString CPro_CleanupPage_Footer ${LANG_RUSSIAN} "���� � ��� ��� �������� �������� � ������� ${CPRO_NAME},"
	LangString CPro_CleanupPage_TSLink ${LANG_RUSSIAN} "���������� �� ���������� ���������� �� ����� Skin Consortium."
	LangString CPro_CleanupPage_StudioXnf ${LANG_RUSSIAN} "������� ���� ���������� ������� (studio.xnf)"
	LangString CPro_CleanupPage_StudioXnf_Desc ${LANG_RUSSIAN} "������� ��������� ������� �����, ��� ��������� ����, �������� �������, ������� �����, ..."
	LangString CPro_CleanupPage_WinampIni ${LANG_RUSSIAN} "������� ��������� Winamp (winamp.ini)"
	LangString CPro_CleanupPage_WinampIni_Desc ${LANG_RUSSIAN} "������� ��������� Winamp �����, ��� ������� ������, ������� ����, ..."

; Finish Page	
	LangString CPro_FinishPage_1 ${LANG_RUSSIAN} "��������� ������ ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} ���������."
	LangString CPro_FinishPage_2 ${LANG_RUSSIAN} "������ ��������� �������� ��������� ������ ${CPRO_NAME} v${CPRO_VERSION}. �� ������ ������ ������������ ��������� � ������������ ������ ${CPRO_NAME} � Winamp."
	LangString CPro_FinishPage_3 ${LANG_RUSSIAN} "���� ��� ���������� ����� ${CPRO_NAME} � �� ������ �������� ��������, ���������� ���������� ������ �����������."
	LangString CPro_FinishPage_4 ${LANG_RUSSIAN} "��� �� ������ ������� �����?"
	LangString CPro_FinishPage_5 ${LANG_RUSSIAN} "����� ������ ������� � ���������� ������ ${CPRO_NAME} �� �����"
	LangString CPro_FinishPage_6 ${LANG_RUSSIAN} "������� Winamp � �������� ������ ${CPRO_NAME} �� ���������"
	LangString CPro_FinishPage_7 ${LANG_RUSSIAN} "���������"	
	LangString CPro_FinishPage_8 ${LANG_RUSSIAN} "Open Winamp with current skin"
	
; First Page of Uninstaller
	LangString CPro_Un_Welcome_Title ${LANG_RUSSIAN} "����� ���������� � ������ �������� $(^NameDA)"
	LangString CPro_Un_Welcome_Text ${LANG_RUSSIAN} "���� ������ �������� ��� ����� ��������� �������� $(^NameDA).$\r$\n$\r$\n����� ������� �������� ���������, ��� ����� ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} �� ��������.$\r$\n$\r$\n$_CLICK"

; Installation
	LangString CPro_Ini ${LANG_RUSSIAN} "���������� ����� ��������� winamp.ini..."
	LangString CPro_Account ${LANG_RUSSIAN} "��������� ���� �������������"
	LangString CPro_No_Account ${LANG_RUSSIAN} "��������� ������ ������������"
	LangString CPro_Winamp_Path ${LANG_RUSSIAN} "���������� ����� ��������� Winamp..."	

; Close all instances of Winamp
	LangString CPro_CloseWinamp_Welcome_Title ${LANG_RUSSIAN} "���������� ������ ��������"
	LangString CPro_CloseWinamp_Welcome_Text  ${LANG_RUSSIAN} "���������, ������� ������� ������� ����� ����������"	
	LangString CPro_CloseWinamp_Heading ${LANG_RUSSIAN} "�������� ��� ��������� �� ������ ����� ����������..."
	LangString CPro_CloseWinamp_Searching ${LANG_RUSSIAN} "���� ����� ��������, ���������� ���������..."
	LangString CPro_CloseWinamp_EndSearch ${LANG_RUSSIAN} "����� �������� ��������..."
	LangString CPro_CloseWinamp_EndMonitor ${LANG_RUSSIAN} "���� �������� ��������� ������ �������� ���������, ���������� ���������..."
	LangString CPro_CloseWinamp_NoPrograms ${LANG_RUSSIAN} "��������, ������� ������� �������, �� �������"
	LangString CPro_CloseWinamp_ColHeadings1 ${LANG_RUSSIAN} "����������"
	LangString CPro_CloseWinamp_ColHeadings2 ${LANG_RUSSIAN} "�������"
	LangString CPro_CloseWinamp_Autoclosesilent ${LANG_RUSSIAN} "�� ������� ������� ���������"

; Menu Start
	LangString CPro_MenuStart1 ${LANG_RUSSIAN} "������� ����� ${CPRO_NAME}"
	LangString CPro_MenuStart2 ${LANG_RUSSIAN} "��� ������"
	LangString CPro_MenuStart3 ${LANG_RUSSIAN} "����� ��� ������� � ���������� � ������ ${CPRO_NAME}!"	

	
; CPro :: Widgets

; First Page of Installer
	LangString CPro_Widget_Welcome_Title ${LANG_RUSSIAN} "����� ����������. �� �������������� $(^NameDA)"
	LangString CPro_Widget_Welcome_Text ${LANG_RUSSIAN} "� ������� ����� ������� �� ������� ���������� $(^NameDA).$\r$\n$\r$\n��� ������ ���������� $\"${CPRO_WIDGET_NAME}$\" ����������� Winamp ${CPRO_WINAMP_VERSION} � ����� ${CPRO_NAME} ${CPRO_VERSION}!$\r$\n$\r$\n$_CLICK"

	LangString CPro_Widget_Caption ${LANG_RUSSIAN} "���������� ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION}"	
	LangString CPro_Widget_Name_Text ${LANG_RUSSIAN} "���������� ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION}"		
	
; First Page of Uninstaller
	LangString CPro_Widget_Un_Welcome_Title ${LANG_RUSSIAN} "����� ����������. �� �������� $(^NameDA)"
	LangString CPro_Widget_Un_Welcome_Text ${LANG_RUSSIAN} "� ������� ����� ������� �� ������� ������� $(^NameDA).$\r$\n$\r$\n$_CLICK"

; Installer sections
	LangString CPro_Widget_Files ${LANG_RUSSIAN} "${CPRO_WIDGET_NAME} ${CPRO_WIDGET_VERSION} ��� ${CPRO_NAME}${CPRO_CRS} ${CPRO_VERSION}"
		
; Installer sections descriptions	
	LangString CPro_Widget_Desc_Files ${LANG_RUSSIAN} "������ ����� ����������� �����, ����������� ��� ������ ${CPRO_WIDGET_NAME} ${CPRO_WIDGET_VERSION}."

; Finish Page	
	LangString CPro_Widget_FinishPage_1 ${LANG_RUSSIAN} "��������� ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} ���������"
	LangString CPro_Widget_FinishPage_2 ${LANG_RUSSIAN} "������ �������� ��������� ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION}. ������ �� ������ ������������ ����� ����� ����������� ${CPRO_WIDGET_NAME} ��� ������ ${CPRO_NAME} � Winamp."
	LangString CPro_Widget_FinishPage_3 ${LANG_RUSSIAN} "���� ��� ���������� ${CPRO_WIDGET_NAME} � �� ������ �������� ��������, ���������� ���������� ������ �����������."
	LangString CPro_Widget_FinishPage_4 ${LANG_RUSSIAN} "��� �� ������ ������� �����?"
	LangString CPro_Widget_FinishPage_5 ${LANG_RUSSIAN} "����� ������ ���������� ��� ������ ${CPRO_NAME} �� �����"
	LangString CPro_Widget_FinishPage_6 ${LANG_RUSSIAN} "������������� ����� ${CPRO_NAME} ��� ������� Winamp ������"
	LangString CPro_Widget_FinishPage_7 ${LANG_RUSSIAN} "���������"	
	
; UnFinish Page	
	LangString CPro_Widget_UnFinishPage_1 ${LANG_RUSSIAN} "���������� ������ ������� �������� ���������� ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} ��� ������ ${CPRO_NAME}${CPRO_CRS}"
	LangString CPro_Widget_UnFinishPage_2 ${LANG_RUSSIAN} "���������� ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} ��� ������ ${CPRO_NAME}${CPRO_CRS} ���� ������� ������� � ������ ����������."
	LangString CPro_Widget_UnFinishPage_3 ${LANG_RUSSIAN} "������� $(CPro_Widget_FinishPage_7) ��� ���������� ������ �������"
	LangString CPro_Widget_UnFinishPage_4 ${LANG_RUSSIAN} "������������� ����� ${CPRO_NAME} ���� �������� Winamp"