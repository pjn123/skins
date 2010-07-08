;###########################################################################################

; Lang:				Romanian
; LangID			1048
; Last udpdated:	01.09.2009 22:27 EET
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
	LangString CPro_Un_Language_Title ${LANG_ROMANIAN} "Limb� dezinstalare"	
	LangString CPro_Language_Text ${LANG_ROMANIAN} "Selecta�i o limb�:"

; First Page of Installer
	LangString CPro_Welcome_Title ${LANG_ROMANIAN} "Bun venit la asistentul pentru instalare a $(^NameDA)"
	LangString CPro_Welcome_Text ${LANG_ROMANIAN} "Acest asistent v� va ghida �n procesul de instalare a $(^NameDA).$\r$\n$\r$\nSe recomand� �nchiderea Winamp �nainte de �nceperea instal�rii. Aceasta va face posibil� actualizarea tuturor fi�ierelor necesare.$\n$\nAve�i nevoie, cel pu�in, de versiunea ${CPRO_WINAMP_VERSION} a Winamp pentru ca aceast� versiune a ${CPRO_NAME} s� func�ioneze!$\r$\n$\r$\n$_CLICK"

; Installer Header
	!if ${CPRO_BUILD_TYPE} == "BETA"
; Beta stage	
		LangString CPro_Caption ${LANG_ROMANIAN} "Instalare ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} ${CPRO_BUILD_NAME}"
	!else if ${CPRO_BUILD_TYPE} == "NIGHTLY"
; Alpha stage	
		LangString CPro_Caption ${LANG_ROMANIAN} "Instalare ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} ${CPRO_BUILD_NAME} (${CPRO_DATE})"		
	!else
; Release
		LangString CPro_Caption ${LANG_ROMANIAN} "Instalare ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION}"		
	!endif

; Installation type	
	LangString CPro_Full ${LANG_ROMANIAN} "Complet�"
	LangString CPro_Minimal ${LANG_ROMANIAN} "Minimal�"

; Installer sections
	LangString CPro_CProFiles ${LANG_ROMANIAN} "Motor ${CPRO_NAME}"
	LangString CPro_wBrowserPro ${LANG_ROMANIAN} "BrowserPro"
	LangString CPro_wAlbumArt ${LANG_ROMANIAN} "Piesa curent�"
	LangString CPro_WidgetsSection ${LANG_ROMANIAN} "Gadgeturi"
	LangString CPro_CProCustom ${LANG_ROMANIAN} "Componente"
	LangString CPro_cPlaylistPro ${LANG_ROMANIAN} "C�utare �n list�"

; Installer sections descriptions	
	LangString CPro_Desc_CProFiles ${LANG_ROMANIAN} "Fi�iere necesare pentru func�ionarea ${CPRO_NAME}."
	LangString CPro_Desc_wBrowserPro ${LANG_ROMANIAN} "Gadget care permite navigarea automat� prin saiturile populare �i explorarea dosarului �n curs de redare."
	LangString CPro_Desc_wAlbumArt ${LANG_ROMANIAN} "Gadget care afi�eaz� o copert� CD mare �i informa�ii despre piesa �n curs de redare."
	LangString CPro_Desc_WidgetsSection ${LANG_ROMANIAN} "Gadgeturi suportate de interfe�ele ${CPRO_NAME}, furnizate �mpreun� cu acest pachet de instalare."
	LangString CPro_Desc_CProCustom ${LANG_ROMANIAN} "Componente op�ionale pentru ${CPRO_NAME}."
	LangString CPro_Desc_cPlaylistPro ${LANG_ROMANIAN} "Caset� de c�tare ad�ugat� deasupra gestionarului de liste pentru c�ut�ri facile �n lista de redare."

; Direcory Text
	LangString CPro_DirText ${LANG_ROMANIAN} "Selecta�i dosarul unde a fost instalat Winamp (ve�i putea continua dup� ce Winamp a fost detectat):"

; Cleanup Page	
	LangString CPro_CleanupPage_Title ${LANG_ROMANIAN} "Reconfigurare Winamp"
	LangString CPro_CleanupPage_Subtitle ${LANG_ROMANIAN} "Eliminare configura�ii Winamp."
	LangString CPro_CleanupPage_Caption0 ${LANG_ROMANIAN} "Aleg�nd op�iunile din aceast� pagin� se vor elimina c�teva dintre fi�ierele de configurare Winamp care ar putea produce disfunc�ionalit��i �n utilizarea �mpreun� a diferite versiuni ale Winamp �i ${CPRO_NAME}."
	LangString CPro_CleanupPage_Caption1 ${LANG_ROMANIAN} "Dac� �nt�mpina�i probleme de func�ionare a ${CPRO_NAME}, pute�i reinstala programul �n orice moment �i folosi aceast� pagin� pentru rezolvarea lor."
	LangString CPro_CleanupPage_Caption2 ${LANG_ROMANIAN} "NOT�: Totul este �n regul�, aceste fi�iere vor fi rescrise de Winamp."
	LangString CPro_CleanupPage_Caption3 ${LANG_ROMANIAN} "Reinstalarea ${CPRO_NAME} cu aceste op�iuni ar trebui folosit� numai dac� �nt�mpina�i dificult��i la utilizarea programului �mpreun� cu Winamp."
	LangString CPro_CleanupPage_Caption4 ${LANG_ROMANIAN} "V� mul�umim pentru �n�elegere."
	LangString CPro_CleanupPage_Footer ${LANG_ROMANIAN} "Dac� �nc� �nt�mpina�i dificult��i �n folosirea ${CPRO_NAME}, cere�i"
	LangString CPro_CleanupPage_TSLink ${LANG_ROMANIAN} "Suport gratuit �n Forumurile Skin Consortium."
	LangString CPro_CleanupPage_StudioXnf ${LANG_ROMANIAN} "�tergere configura�ie interfe�e (studio.xnf)"
	LangString CPro_CleanupPage_StudioXnf_Desc ${LANG_ROMANIAN} "Se elimin� op�iunile specifice interfe�elor, ca: pozi�ia ferestrei, fila activ�, modul de afi�are, ..."
	LangString CPro_CleanupPage_WinampIni ${LANG_ROMANIAN} "�tergere configura�ie Winamp (winamp.ini)"
	LangString CPro_CleanupPage_WinampIni_Desc ${LANG_ROMANIAN} "Se elimin� op�iunile specifice Winamp, ca: interfa�a curent�, formatarea complex� a titlului, limba curent�, ..."

; Finish Page
	LangString CPro_FinishPage_1 ${LANG_ROMANIAN} "Instalare ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} finalizat�"
	LangString CPro_FinishPage_2 ${LANG_ROMANIAN} "Asistentul a finalizat instalarea ${CPRO_NAME} v${CPRO_VERSION}. Pute�i �ncepe s� folosi�i interfe�ele �i gadgeturile ${CPRO_NAME} �n Winamp."
	LangString CPro_FinishPage_3 ${LANG_ROMANIAN} "Dac� v� place ${CPRO_NAME} �i dori�i s� sprijini�i dezvolarea ulterioar�, v� rug�m s� face�i dona�ii pentru proiect."
	LangString CPro_FinishPage_4 ${LANG_ROMANIAN} "Ac�iuni dup� terminarea instal�rii:"
	LangString CPro_FinishPage_5 ${LANG_ROMANIAN} "Explorare pagina ${CPRO_NAME} �i desc�rcare interfe�e �i gadgeturi"
	LangString CPro_FinishPage_6 ${LANG_ROMANIAN} "Deschidere Winamp cu interfa�a implicit� ${CPRO_NAME}"
	LangString CPro_FinishPage_7 ${LANG_ROMANIAN} "Terminare"
	LangString CPro_FinishPage_8 ${LANG_ROMANIAN} "Deschidere Winamp cu interfa�a curent�"	
	LangString CPro_FinishPage_9 ${LANG_ROMANIAN} "Do not open Winamp at all"
	
; First Page of Uninstaller
	LangString CPro_Un_Welcome_Title ${LANG_ROMANIAN} "Bun venit la asistentul pentru dezinstalare a $(^NameDA)"
	LangString CPro_Un_Welcome_Text ${LANG_ROMANIAN} "Acest asistent v� va ghida prin procesul de dezinstalare a $(^NameDA).$\r$\n$\r$\n�nainte de �nceperea dezinstal�rii, asigura�i-v� c� ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} nu func�ioneaz�.$\r$\n$\r$\n$_CLICK"

; Installation
	LangString CPro_Ini ${LANG_ROMANIAN} "Actualizare fi�ier de configurare winamp.ini..."
	LangString CPro_Account ${LANG_ROMANIAN} "Configura�ie multi-utilizator"
	LangString CPro_No_Account ${LANG_ROMANIAN} "Configura�ie mono-utilizator"
	LangString CPro_Winamp_Path ${LANG_ROMANIAN} "Specificare dosar fi�ier de configurare Winamp..."	
	LangString CPro_Warning_CreateMutex		${LANG_ROMANIAN}	"${CPRO_NAME} v${CPRO_VERSION} installer is already running."
	LangString CPro_Warning_No_Winamp		${LANG_ROMANIAN} "Winamp wasn't detected on this system.$\r$\nPlease install latest Winamp version from Winamp.com,$\r$\nbefore you can install ${CPRO_NAME} v${CPRO_VERSION}.$\r$\nInstallation will be aborted."
	LangString CPro_Warning_Low_Version		${LANG_ROMANIAN} "${CPRO_NAME} v${CPRO_VERSION} requires at least Winamp ${CPRO_WINAMP_VERSION} or above.$\r$\n$\nPlease update your Winamp version first (You have installed: $R0).$\r$\nInstallation will be aborted."
	LangString CPro_Warning_AtLeast_2000	${LANG_ROMANIAN} "Sorry, your system is not supported. ${CPRO_NAME} v${CPRO_VERSION} only runs on Windows 2000 or newer.$\r$\nInstallation will be aborted."

; Close all instances of Winamp
	LangString CPro_CloseWinamp_Welcome_Title ${LANG_ROMANIAN} "Programe de �nchis"
	LangString CPro_CloseWinamp_Welcome_Text  ${LANG_ROMANIAN} "Programe care trebuie �nchise �nainte de continuarea instal�rii"	
	LangString CPro_CloseWinamp_Heading ${LANG_ROMANIAN} "�nchide�i toate programele din list� �nainte de a continua instalarea..."
	LangString CPro_CloseWinamp_Searching ${LANG_ROMANIAN} "C�utare programe... V� rug�m, a�tepta�i..."
	LangString CPro_CloseWinamp_EndSearch ${LANG_ROMANIAN} "C�utare programe finalizat�."
	LangString CPro_CloseWinamp_EndMonitor ${LANG_ROMANIAN} "�nchidere monitor procese active... V� rug�m, a�tepta�i..."
	LangString CPro_CloseWinamp_NoPrograms ${LANG_ROMANIAN} "Asistentul nu a g�sit nici un program care trebuie �nchis."
	LangString CPro_CloseWinamp_ColHeadings1 ${LANG_ROMANIAN} "Program"
	LangString CPro_CloseWinamp_ColHeadings2 ${LANG_ROMANIAN} "Proces"
	LangString CPro_CloseWinamp_Autoclosesilent ${LANG_ROMANIAN} "�nchiderea programului a e�uat!"
	LangString CPro_CloseWinamp_MenuItem1 ${LANG_ROMANIAN} "Close"
	LangString CPro_CloseWinamp_MenuItem2 ${LANG_ROMANIAN} "Copy list"
	
; Menu Start
	LangString CPro_MenuStart1 ${LANG_ROMANIAN} "Dezinstalare ${CPRO_NAME}"
	LangString CPro_MenuStart2 ${LANG_ROMANIAN} "Nout��i"
	LangString CPro_MenuStart3 ${LANG_ROMANIAN} "Mai multe interfe�e �i gadgeturi ${CPRO_NAME}!"

	
; CPro :: Widgets

; First Page of Installer
	LangString CPro_Widget_Welcome_Title ${LANG_ROMANIAN} "Bun venit la asistentul pentru instalare a $(^NameDA)"
	LangString CPro_Widget_Welcome_Text ${LANG_ROMANIAN} "Acest asistent v� va ghida �n procesul de instalare a $(^NameDA).$\r$\n$\r$\nAve�i nevoie, cel pu�in, de Winamp ${CPRO_WINAMP_VERSION} �i de ${CPRO_NAME} ${CPRO_VERSION} pentru ca aceast� versiune a ${CPRO_WIDGET_NAME} s� func�ioneze!$\r$\n$\r$\n$_CLICK"

	LangString CPro_Widget_Caption ${LANG_ROMANIAN} "Instalare ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION}"
	LangString CPro_Widget_Name_Text ${LANG_ROMANIAN} "Gadget ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} pentru ${CPRO_NAME}${CPRO_CRS}"
	
; First Page of Uninstaller
	LangString CPro_Widget_Un_Welcome_Title ${LANG_ROMANIAN} "Bun venit la asistentul pentru dezinstalare a $(^NameDA)"
	LangString CPro_Widget_Un_Welcome_Text ${LANG_ROMANIAN} "Acest asistent v� va ghida prin procesul de dezinstalare a $(^NameDA).$\r$\n$\r$\n$_CLICK"

; Installer sections
	LangString CPro_Widget_Files ${LANG_ROMANIAN} "${CPRO_WIDGET_NAME} ${CPRO_WIDGET_VERSION} pentru ${CPRO_NAME}${CPRO_CRS} ${CPRO_VERSION}"
		
; Installer sections descriptions	
	LangString CPro_Widget_Desc_Files ${LANG_ROMANIAN} "Fi�iere necesare pentru func�ionarea ${CPRO_WIDGET_NAME} ${CPRO_WIDGET_VERSION}."

; Finish Page	
	LangString CPro_Widget_FinishPage_1 ${LANG_ROMANIAN} "Instalare ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} finalizat�"
	LangString CPro_Widget_FinishPage_2 ${LANG_ROMANIAN} "Asistentul a finalizat instalarea ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION}. Pute�i �ncepe s� folosi�i noul gadget ${CPRO_WIDGET_NAME} pentru ${CPRO_NAME} �n Winamp."
	LangString CPro_Widget_FinishPage_3 ${LANG_ROMANIAN} "Dac� v� place ${CPRO_WIDGET_NAME} �i dori�i s� sprijini�i dezvolarea ulterioar�, v� rug�m s� face�i dona�ii pentru proiect."
	LangString CPro_Widget_FinishPage_4 ${LANG_ROMANIAN} "Ac�iuni dup� terminarea instal�rii:"
	LangString CPro_Widget_FinishPage_5 ${LANG_ROMANIAN} "Explorare pagin� ${CPRO_NAME} �i desc�rcare interfe�e �i gadgeturi"
	LangString CPro_Widget_FinishPage_6 ${LANG_ROMANIAN} "Re�nc�rcare ${CPRO_NAME} �i deschidere �n Winamp"
	LangString CPro_Widget_FinishPage_7 ${LANG_ROMANIAN} "Terminare"	
	
; UnFinish Page	
	LangString CPro_Widget_UnFinishPage_1 ${LANG_ROMANIAN} "Finalizare dezinstalare gadget ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} pentru  ${CPRO_NAME}${CPRO_CRS}"
	LangString CPro_Widget_UnFinishPage_2 ${LANG_ROMANIAN} "Gadgetul ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} pentru ${CPRO_NAME}${CPRO_CRS} s-a dezinstalat de pe computerul Dvs."
	LangString CPro_Widget_UnFinishPage_3 ${LANG_ROMANIAN} "Face�i clic pe $(CPro_Widget_FinishPage_7) pentru a �nchide asistentul"
	LangString CPro_Widget_UnFinishPage_4 ${LANG_ROMANIAN} "Re�nc�rcare ${CPRO_NAME} dac� Winamp este deschis"