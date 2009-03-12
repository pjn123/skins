;###########################################################################################

; Lang:			Russian
; LangID			1049
; Last udpdated:		24.02.2009
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
	LangString CPro_Language_Text ${LANG_RUSSIAN} "���������� �������� ����:"

; First Page of Installer
	LangString CPro_Welcome_Title ${LANG_RUSSIAN} "����� ���������� � ������ ��������� $(^NameDA)"
	LangString CPro_Welcome_Text ${LANG_RUSSIAN} "���� ������ �������� ��� ����� ��������� ��������� $(^NameDA).$\r$\n$\r$\n����������� ��� ������� Winamp ����� ������� ���������. �������� �������� ��������� ��� ��������������� ����� Winamp.$\n$\n��� ��� ������� ��������� Winamp ������ ${CPRO_WINAMP_VERSION} ��� ������ ������� ������ ${CPRO_NAME}!$\r$\n$\r$\n$_CLICK"

; Installer Header
	!ifdef CPRO_BETA
; Beta stage	
		LangString CPro_Caption ${LANG_RUSSIAN} "��������� ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} ${CPRO_BETA}"
	!else
; Release
		LangString CPro_Caption ${LANG_RUSSIAN} "��������� ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION}"
	!endif
	
; Installation type	
	LangString CPro_Full ${LANG_RUSSIAN} "������"
	LangString CPro_Minimal ${LANG_RUSSIAN} "�����������"
	
; Installer sections
	LangString CPro_CProFiles ${LANG_RUSSIAN} "��������� ClassicPro"
	LangString CPro_wBrowserPro ${LANG_RUSSIAN} "BrowserPro"
	LangString CPro_wAlbumArt ${LANG_RUSSIAN} "Now Playing"
	LangString CPro_WidgetsSection ${LANG_RUSSIAN} "����������"
	LangString CPro_CProCustom ${LANG_RUSSIAN} "����������"
	LangString CPro_cPlaylistPro ${LANG_RUSSIAN} "����� �� ������ ���������������"
		
; Installer sections descriptions	
	LangString CPro_Desc_CProFiles ${LANG_RUSSIAN} "������ ����� ����������� ��� �����, ����������� ��� ������."
	LangString CPro_Desc_wBrowserPro ${LANG_RUSSIAN} "BrowserPro ��� ����������, ������� �������� ������ �������� ������������� ���������� �� ���������� ��� ����� � ������������� ����� ���������������."
	LangString CPro_Desc_wAlbumArt ${LANG_RUSSIAN} "Now Playing ��� ����������, ������������ ������� ������� ������� � ���������� � ������������� �����."
	LangString CPro_Desc_WidgetsSection ${LANG_RUSSIAN} "�������� ���������� ClassicPro, ������� �� ������ �������� � ���������."
	LangString CPro_Desc_CProCustom ${LANG_RUSSIAN} "�������������� ���������� ClassicPro."
	LangString CPro_Desc_cPlaylistPro ${LANG_RUSSIAN} "�������� ������ ������ ��� ����� ������� ��������������� ��� �������� ������."

; Direcory Text	
	LangString CPro_DirText ${LANG_RUSSIAN} "������� ���������� ���� � Winamp (�� ������� ����������, ����� Winamp ����� ������):"

; Finish Page	
	LangString CPro_FinishPage_1 ${LANG_RUSSIAN} "��������� ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} ���������"
	LangString CPro_FinishPage_2 ${LANG_RUSSIAN} "������ ��������� �������� ��������� ${CPRO_NAME} v${CPRO_VERSION}. �� ������ ������ ������������ ��������� � ������������ ${CPRO_NAME} � Winamp."
	LangString CPro_FinishPage_3 ${LANG_RUSSIAN} "���� ��� ���������� ${CPRO_NAME} � �� ������ �������� ��������, ���������� ���������� ������ �����������."
	LangString CPro_FinishPage_4 ${LANG_RUSSIAN} "��� �� ������ ������ �������?"
	LangString CPro_FinishPage_5 ${LANG_RUSSIAN} "����� ������ ������� � ���������� ${CPRO_NAME} �� �����"
	LangString CPro_FinishPage_6 ${LANG_RUSSIAN} "������� ������� ${CPRO_NAME} �� ���������"
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
	LangString CPro_Running_Winamp ${LANG_RUSSIAN} "Winamp �������!"
	LangString CPro_Close_Winamp  ${LANG_RUSSIAN} "����� ������������ ��������� ������� ��� ����������  Winamp!"	
	LangString CPro_Closing_Winamp ${LANG_RUSSIAN} "        �������� Winamp (winamp.exe)..."
	LangString CPro_No_More_Winamp ${LANG_RUSSIAN} "        ������. ��� ���������� Winamp �������..."  
	LangString CPro_No_Winamp ${LANG_RUSSIAN} "������. �� �������� �� ���� ���������� Winamp..."
	LangString CPro_Check_Winamp ${LANG_RUSSIAN} "��������, �������� �� Winamp..."

; Menu Start
	LangString CPro_MenuStart1 ${LANG_RUSSIAN} "������� ${CPRO_NAME}"
	LangString CPro_MenuStart2 ${LANG_RUSSIAN} "��� ������"
	LangString CPro_MenuStart3 ${LANG_RUSSIAN} "����� ��� ������� � ���������� ${CPRO_NAME}!"	
	
; CPro :: Widgets

; First Page of Installer
	LangString CPro_Widget_Welcome_Title ${LANG_RUSSIAN} "����� ���������� � ������ ��������� $(^NameDA)"
	LangString CPro_Widget_Welcome_Text ${LANG_RUSSIAN} "���� ������ �������� ��� ����� ��������� ��������� $(^NameDA).$\r$\n$\r$\n������������� ������� Winamp ����� ������� ���������. ��� �������� �������� ��� ��������� ����� Winamp.$\n$\n��� ����� ��� ������� Winamp ������ ${CPRO_WINAMP_VERSION} � ${CPRO_NAME} ${CPRO_VERSION} ��� ������ ���� ������ ${CPRO_WIDGET_NAME}!$\r$\n$\r$\n$_CLICK"

	LangString CPro_Widget_Caption ${LANG_RUSSIAN} "��������� ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION}"	
	LangString CPro_Widget_Name_Text ${LANG_RUSSIAN} "���������� ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} ��� ClassicPro�"		
	
; First Page of Uninstaller
	LangString CPro_Widget_Un_Welcome_Title ${LANG_RUSSIAN} "����� ���������� � ������ �������� $(^NameDA)"
	LangString CPro_Widget_Un_Welcome_Text ${LANG_RUSSIAN} "���� ������ �������� ��� ����� ��������� �������� $(^NameDA).$\r$\n$\r$\n ����� ��������� ���������, ��� ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} �� �������.$\r$\n$\r$\n$_CLICK"
	
; Installer sections
	LangString CPro_Widget_Files ${LANG_RUSSIAN} "${CPRO_WIDGET_NAME} ${CPRO_WIDGET_VERSION} ��� ${CPRO_NAME}${CPRO_CRS} ${CPRO_VERSION}"
		
; Installer sections descriptions	
	LangString CPro_Widget_Desc_Files ${LANG_RUSSIAN} "������ ����� ����������� ��� �����, ������� ��������� ��� ������ ${CPRO_WIDGET_NAME} ${CPRO_WIDGET_VERSION}."

; Finish Page	
	LangString CPro_Widget_FinishPage_1 ${LANG_RUSSIAN} "��������� ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} ���������"
	LangString CPro_Widget_FinishPage_2 ${LANG_RUSSIAN} "������ ��������� �������� ��������� ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION}. ������ �� ������ ������ ������������ ����� ����������� ${CPRO_WIDGET_NAME} ��� ${CPRO_NAME} � Winamp."
	LangString CPro_Widget_FinishPage_3 ${LANG_RUSSIAN} "���� ��� �������� ${CPRO_WIDGET_NAME} � �������� ������ �������� ��������, ���������� ���������� ������ �����������."
	LangString CPro_Widget_FinishPage_4 ${LANG_RUSSIAN} "��� �� ������ �������?"
	LangString CPro_Widget_FinishPage_5 ${LANG_RUSSIAN} "����� ������ ������� � ���������� ${CPRO_NAME} �� �����"
	LangString CPro_Widget_FinishPage_6 ${LANG_RUSSIAN} "������� ������� �� ��������� ${CPRO_NAME}"
	LangString CPro_Widget_FinishPage_7 ${LANG_RUSSIAN} "���������"	