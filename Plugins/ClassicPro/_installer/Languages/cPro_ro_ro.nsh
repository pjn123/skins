;###########################################################################################

; Lang:				Romanian
; LangID			1048
; Last udpdated:	13.03.2009 20:41 EET
; Author:			C�t�lin ZAMFIRESCU
; Email:			x10@mail.com

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
	LangString CPro_Language_Title ${LANG_ROMANIAN} "Limb� instalare"
	LangString CPro_Language_Text ${LANG_ROMANIAN} "Selecta�i o limb�:"

; First Page of Installer
	LangString CPro_Welcome_Title ${LANG_ROMANIAN} "Bun venit la asistentul pentru instalare a $(^NameDA)"
	LangString CPro_Welcome_Text ${LANG_ROMANIAN} "Acest asistent v� va ghida �n procesul de instalare a $(^NameDA).$\r$\n$\r$\nSe recomand� �nchiderea Winamp �nainte de �nceperea instal�rii. Aceasta va face posibil� actualizarea tuturor fi�ierelor necesare.$\n$\nAve�i nevoie, cel pu�in, de versiunea ${CPRO_WINAMP_VERSION} a Winamp pentru ca aceast� versiune a ${CPRO_NAME} s� func�ioneze!$\r$\n$\r$\n$_CLICK"

; Installer Header
	!ifdef CPRO_BETA
; Beta stage
		LangString CPro_Caption ${LANG_ROMANIAN} "Instalare ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} ${CPRO_BETA}"
	!else
; Release
		LangString CPro_Caption ${LANG_ROMANIAN} "Instalare ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION}"
	!endif

; Installation type	
	LangString CPro_Full ${LANG_ROMANIAN} "Complet�"
	LangString CPro_Minimal ${LANG_ROMANIAN} "Minimal�"

; Installer sections
	LangString CPro_CProFiles ${LANG_ROMANIAN} "Motor ClassicPro"
	LangString CPro_wBrowserPro ${LANG_ROMANIAN} "BrowserPro"
	LangString CPro_wAlbumArt ${LANG_ROMANIAN} "Piesa curent�"
	LangString CPro_WidgetsSection ${LANG_ROMANIAN} "Gadgeturi"
	LangString CPro_CProCustom ${LANG_ROMANIAN} "Componente"
	LangString CPro_cPlaylistPro ${LANG_ROMANIAN} "C�utare �n list�"

; Installer sections descriptions	
	LangString CPro_Desc_CProFiles ${LANG_ROMANIAN} "Fi�iere necesare pentru func�ionarea ClassicPro."
	LangString CPro_Desc_wBrowserPro ${LANG_ROMANIAN} "Gadget care permite navigarea automat� prin saiturile populare �i explorarea dosarului �n curs de redare."
	LangString CPro_Desc_wAlbumArt ${LANG_ROMANIAN} "Gadget care afi�eaz� o copert� CD mare �i informa�ii despre piesa �n curs de redare."
	LangString CPro_Desc_WidgetsSection ${LANG_ROMANIAN} "Gadgeturi suportate de interfe�ele ClassicPro, furnizate �mpreun� cu acest pachet de instalare."
	LangString CPro_Desc_CProCustom ${LANG_ROMANIAN} "Componente op�ionale pentru ClassicPro."
	LangString CPro_Desc_cPlaylistPro ${LANG_ROMANIAN} "Caset� de c�tare ad�ugat� deasupra gestionarului de liste pentru c�ut�ri facile �n lista de redare."

; Direcory Text
	LangString CPro_DirText ${LANG_ROMANIAN} "Selecta�i dosarul unde a fost instalat Winamp (ve�i putea continua dup� ce Winamp a fost detectat):"

; Finish Page
	LangString CPro_FinishPage_1 ${LANG_ROMANIAN} "Instalare ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} finalizat�"
	LangString CPro_FinishPage_2 ${LANG_ROMANIAN} "Asistentul a finalizat instalarea ${CPRO_NAME} v${CPRO_VERSION}. Pute�i �ncepe s� folosi�i interfe�ele �i gadgeturile ${CPRO_NAME} �n Winamp."
	LangString CPro_FinishPage_3 ${LANG_ROMANIAN} "Dac� v� place ${CPRO_NAME} �i dori�i s� sprijini�i dezvolarea ulterioar�, v� rug�m s� face�i dona�ii pentru proiect."
	LangString CPro_FinishPage_4 ${LANG_ROMANIAN} "Ac�iuni dup� terminarea instal�rii:"
	LangString CPro_FinishPage_5 ${LANG_ROMANIAN} "Explorare pagina ${CPRO_NAME} �i desc�rcare interfe�e �i gadgeturi"
	LangString CPro_FinishPage_6 ${LANG_ROMANIAN} "Deschidere interfa�a implicit� ${CPRO_NAME}"
	LangString CPro_FinishPage_7 ${LANG_ROMANIAN} "Terminare"	

; First Page of Uninstaller
	LangString CPro_Un_Welcome_Title ${LANG_ROMANIAN} "Bun venit la asistentul pentru dezinstalare a $(^NameDA)"
	LangString CPro_Un_Welcome_Text ${LANG_ROMANIAN} "Acest asistent v� va ghida prin procesul de dezinstalare a $(^NameDA).$\r$\n$\r$\n�nainte de �nceperea dezinstal�rii, asigura�i-v� c� ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} nu func�ioneaz�.$\r$\n$\r$\n$_CLICK"

; Installation
	LangString CPro_Ini ${LANG_ROMANIAN} "Actualizare fi�ier de configurare winamp.ini..."
	LangString CPro_Account ${LANG_ROMANIAN} "Configura�ie multi-utilizator"
	LangString CPro_No_Account ${LANG_ROMANIAN} "Configura�ie mono-utilizator"
	LangString CPro_Winamp_Path ${LANG_ROMANIAN} "Specificare dosar fi�ier de configurare Winamp..."	

; Close all instances of Winamp
	LangString CPro_Running_Winamp ${LANG_ROMANIAN} "Winamp func�ioneaz�!"
	LangString CPro_Close_Winamp  ${LANG_ROMANIAN} "�nainte de a continua, trebuie s� �nchide�i toate instan�ele Winamp!"	
	LangString CPro_Closing_Winamp ${LANG_ROMANIAN} "        �nchidere Winamp (winamp.exe)..."
	LangString CPro_No_More_Winamp ${LANG_ROMANIAN} "        Toate instan�ele Winamp sunt �nchise..."  
	LangString CPro_No_Winamp ${LANG_ROMANIAN} "Nici o instan�� Winamp nu este deschis�..."
	LangString CPro_Check_Winamp ${LANG_ROMANIAN} "Verificare instan�e Winamp deschise..."

; Menu Start
	LangString CPro_MenuStart1 ${LANG_ROMANIAN} "Dezinstalare ${CPRO_NAME}"
	LangString CPro_MenuStart2 ${LANG_ROMANIAN} "Ce-i nou"
	LangString CPro_MenuStart3 ${LANG_ROMANIAN} "Mai multe interfe�e �i gadgeturi ${CPRO_NAME}!"
	
; CPro :: Widgets

; First Page of Installer
	LangString CPro_Widget_Welcome_Title ${LANG_ROMANIAN} "Bun venit la asistentul pentru instalare a $(^NameDA)"
	LangString CPro_Widget_Welcome_Text ${LANG_ROMANIAN} "Acest asistent v� va ghida �n procesul de instalare a $(^NameDA).$\r$\n$\r$\nSe recomand� �nchiderea Winamp �nainte de �nceperea instal�rii. Aceasta va face posibil� actualizarea tuturor fi�ierelor necesare.$\n$\nAve�i nevoie, cel pu�in, de versiunea ${CPRO_WINAMP_VERSION} a Winamp �i de ${CPRO_NAME} ${CPRO_VERSION} pentru ca aceast� versiune a  ${CPRO_WIDGET_NAME} s� func�ioneze!$\r$\n$\r$\n$_CLICK"

	LangString CPro_Widget_Caption ${LANG_ROMANIAN} "Instalare ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION}"
	LangString CPro_Widget_Name_Text ${LANG_ROMANIAN} "Gadget ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} pentru ClassicPro�"

; First Page of Uninstaller
	LangString CPro_Widget_Un_Welcome_Title ${LANG_ROMANIAN} "Bun venit la asistentul pentru dezinstalare a $(^NameDA)"
	LangString CPro_Widget_Un_Welcome_Text ${LANG_ROMANIAN} "Acest asistent v� va ghida prin procesul de dezinstalare a $(^NameDA).$\r$\n$\r$\n�nainte de �nceperea dezinstal�rii, asigura�i-v� c� ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} nu func�ioneaz�.$\r$\n$\r$\n$_CLICK"
	
; Installer sections
	LangString CPro_Widget_Files ${LANG_ROMANIAN} "${CPRO_WIDGET_NAME} ${CPRO_WIDGET_VERSION} pentru ${CPRO_NAME}${CPRO_CRS} ${CPRO_VERSION}"

; Installer sections descriptions
	LangString CPro_Widget_Desc_Files ${LANG_ROMANIAN} "Fi�iere necesare pentru func�ionarea ${CPRO_WIDGET_NAME} ${CPRO_WIDGET_VERSION}."

; Finish Page
	LangString CPro_Widget_FinishPage_1 ${LANG_ROMANIAN} "Instalare ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} finalizat�"
	LangString CPro_Widget_FinishPage_2 ${LANG_ROMANIAN} "Asistentul a finalizat instalarea ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION}. Pute�i �ncepe s� folosi�i noul gadget ${CPRO_WIDGET_NAME} pentru ${CPRO_NAME} �n Winamp."
	LangString CPro_Widget_FinishPage_3 ${LANG_ROMANIAN} "Dac� v� place ${CPRO_WIDGET_NAME} �i dori�i s� sprijini�i dezvolarea ulterioar�, v� rug�m s� face�i dona�ii pentru proiect."
	LangString CPro_Widget_FinishPage_4 ${LANG_ROMANIAN} "Ac�iuni dup� terminarea instal�rii:"
	LangString CPro_Widget_FinishPage_5 ${LANG_ROMANIAN} "Explorare pagina ${CPRO_NAME} �i desc�rcare interfe�e �i gadgeturi"
	LangString CPro_Widget_FinishPage_6 ${LANG_ROMANIAN} "Deschidere interfa�a implicit� ${CPRO_NAME}"
	LangString CPro_Widget_FinishPage_7 ${LANG_ROMANIAN} "Terminare"

