;###########################################################################################

; Lang:				Polish
; LangID			1045
; Last udpdated:	03.05.2009
; Author:			Pawe� Porwisz
; Email:			pawelporwisz@gmail.com

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
	LangString CPro_Language_Title ${LANG_POLISH} "J�zyk instalatora"
	LangString CPro_Un_Language_Title ${LANG_POLISH} "J�zyk deinstalatora"	
	LangString CPro_Language_Text ${LANG_POLISH} "Prosz� wybra� j�zyk:"
 
; First Page of Installer
	LangString CPro_Welcome_Title ${LANG_POLISH} "Witam w kreatorze instalacji $(^NameDA)"
	LangString CPro_Welcome_Text ${LANG_POLISH} "Ten kreator pomo�e Ci zainstalowa� $(^NameDA).$\r$\n$\r$\nPrzed rozpocz�ciem instalacji zalecane jest zamkni�cie Winampa. Pozwoli to na uaktualnienie niezb�dnych plik�w programu Winamp.$\n$\nDo prawid�owej pracy tej wersji ${CPRO_NAME} musisz mie� zainstalowanego Winampa w wersji ${CPRO_WINAMP_VERSION} lub nowszego!$\r$\n$\r$\n$_CLICK"

; Installer Header
	!if ${CPRO_BUILD_TYPE} == "BETA"
; Beta stage	
		LangString CPro_Caption ${LANG_POLISH} "Instalacja ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} ${CPRO_BUILD_NAME}"
	!else if ${CPRO_BUILD_TYPE} == "NIGHTLY"
; Alpha stage	
		LangString CPro_Caption ${LANG_POLISH} "Instalacja ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} ${CPRO_BUILD_NAME} (${CPRO_DATE})"		
	!else
; Release
		LangString CPro_Caption ${LANG_POLISH} "Instalacja ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION}"		
	!endif
	
; Installation type
	LangString CPro_Full ${LANG_POLISH} "Pe�na"
	LangString CPro_Minimal ${LANG_POLISH} "Minimalna"
	
; Installer sections	
	LangString CPro_CProFiles ${LANG_POLISH} "Silnik ${CPRO_NAME}"
	LangString CPro_wBrowserPro ${LANG_POLISH} "Przegl�darka BrowserPro"
	LangString CPro_wAlbumArt ${LANG_POLISH} "Now Playing (Teraz odtwarzane)"
	LangString CPro_WidgetsSection ${LANG_POLISH} "Wid�ety"
	LangString CPro_CProCustom ${LANG_POLISH} "Sk�adniki"
	LangString CPro_cPlaylistPro ${LANG_POLISH} "Przeszukiwanie listy odtwarzania"
	
; Installer sections descriptions	
	LangString CPro_Desc_CProFiles ${LANG_POLISH} "Instalacja wszystkich plik�w niezb�dnych do pracy ${CPRO_NAME}."
	LangString CPro_Desc_wBrowserPro ${LANG_POLISH} "BrowserPro jest wid�etem umo�liwiaj�cym nawigacje do popularnych witryn i katalogu odtwarzanego utworu."
	LangString CPro_Desc_wAlbumArt ${LANG_POLISH} "Now Playing jest wid�etem, kt�ry wy�wietla du�e ok�adki album�w oraz informacje o odtwarzanym utworze."
	LangString CPro_Desc_WidgetsSection ${LANG_POLISH} "Sk�rki ${CPRO_NAME} obs�uguj� wid�ety. Te rozprowadzane z instalatorem ${CPRO_NAME}, znajdziesz w tej sekcji."
	LangString CPro_Desc_CProCustom ${LANG_POLISH} "Opcjonalne komponenty dla ${CPRO_NAME}."
	LangString CPro_Desc_cPlaylistPro ${LANG_POLISH} "Dodaje pole wyszukiwania nad list� odtwarzania, do �atwego jej przeszukiwania."

; Direcory Text
	LangString CPro_DirText ${LANG_POLISH} "Wybierz �cie�k� dost�pu do Winampa (mo�liwa bedzie kontynuacja, gdy instalator wykryje zainstalowanego Winampa):"

; Cleanup Page
	LangString CPro_CleanupPage_Title ${LANG_POLISH} "Usuwanie ustawie� Winampa"
	LangString CPro_CleanupPage_Subtitle ${LANG_POLISH} "Usu� niekt�re preferencje Winampa."
	LangString CPro_CleanupPage_Caption0 ${LANG_POLISH} "Dzi�ki opcjom znajduj�cym si� na tej stronie, usuniesz niekt�re pliki konfiguracyjne Winampa, kt�ry z powodu r�nych wersji m�g� nie dzia�a� prawid�owo z okre�lon� wersj� ${CPRO_NAME}."
	LangString CPro_CleanupPage_Caption1 ${LANG_POLISH} "Je�li masz problemy z poprawnym dzia�aniem ${CPRO_NAME}, mo�esz w ka�dym momencie ponownie zainstalowa� ${CPRO_NAME} i u�y� tej strony do rozwi�zania tych problem�w."
	LangString CPro_CleanupPage_Caption2 ${LANG_POLISH} "UWAGA: Nie ma si� czego obawia�, zostan� one automatycznie odtworzone przez Winampa."
	LangString CPro_CleanupPage_Caption3 ${LANG_POLISH} "Opcji tych jednak powiniene� u�ywa� tylko wtedy, gdy masz problemy z u�ywaniem ${CPRO_NAME} z Winampem."
	LangString CPro_CleanupPage_Caption4 ${LANG_POLISH} "Dzi�kujemy za wyrozumia�o��."
	LangString CPro_CleanupPage_Footer ${LANG_POLISH} "Je�li wci�� masz problemy z u�ywaniem ${CPRO_NAME},"
	LangString CPro_CleanupPage_TSLink ${LANG_POLISH} "popro� o bezp�atne wsparcie techniczne na forum Skin Consortium."
	LangString CPro_CleanupPage_StudioXnf ${LANG_POLISH} "Usu� plik konfiguracyjny sk�rki (studio.xnf)"
	LangString CPro_CleanupPage_StudioXnf_Desc ${LANG_POLISH} "Usuwa ustawienia sk�rki, takie jak: pozycja okna, aktywne zak�adki, bie��cy tryb okna, ..."
	LangString CPro_CleanupPage_WinampIni ${LANG_POLISH} "Usu� plik konfiguracyjny Winampa (winamp.ini)"
	LangString CPro_CleanupPage_WinampIni_Desc ${LANG_POLISH} "Usuwa ustawienia Winampa, takie jak: bie��ca sk�rka, zaawans. form. tytu��w, bie��cy j�zyk, ..."

; Finish Page
	LangString CPro_FinishPage_1 ${LANG_POLISH} "Zako�czono instalacj� ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION}"
	LangString CPro_FinishPage_2 ${LANG_POLISH} "Kreator instalacji zako�czy� instalowanie ${CPRO_NAME} v${CPRO_VERSION}. Mo�esz zacz�� u�ywa� sk�rek i wid�et�w ${CPRO_NAME} w Winampie."
	LangString CPro_FinishPage_3 ${LANG_POLISH} "Je�li podoba ci si� ${CPRO_NAME} i chcesz wspom�c dalszy rozw�j projektu, wesprzyj nas dowoln� kwot�."
	LangString CPro_FinishPage_4 ${LANG_POLISH} "Co chcesz teraz zrobi�?"
	LangString CPro_FinishPage_5 ${LANG_POLISH} "Pobierz wi�cej sk�rek i wid�et�w ze strony ${CPRO_NAME}"
	LangString CPro_FinishPage_6 ${LANG_POLISH} "Otw�rz Winampa z domy�ln� sk�rk� ${CPRO_NAME}"
	LangString CPro_FinishPage_7 ${LANG_POLISH} "Zako�cz"
	LangString CPro_FinishPage_8 ${LANG_POLISH} "Otw�rz Winampa z bie��c� sk�rk�"	

; First Page of Uninstaller
	LangString CPro_Un_Welcome_Title ${LANG_POLISH} "Witam w kreatorze dezinstalacji $(^NameDA)"
	LangString CPro_Un_Welcome_Text ${LANG_POLISH} "Ten kreator pomo�e Ci odinstalowa� $(^NameDA).$\r$\n$\r$\nPrzed rozpocz�ciem dezinstalacji, upewnij si�, �e ${CPRO_NAME}${CPRO_CRS} ${CPRO_VERSION} nie jest uruchomiony.$\r$\n$\r$\n$_CLICK"

; Installation
	LangString CPro_Ini ${LANG_POLISH} "Aktualizacja pliku konfiguracyjnego winamp.ini..."
	LangString CPro_Account ${LANG_POLISH} "Konta wielu u�ytkownik�w"
	LangString CPro_No_Account ${LANG_POLISH} "Brak obs�ugi kont wielu u�ytkownik�w"
	LangString CPro_Winamp_Path ${LANG_POLISH} "Okre�lanie �cie�ki do pliku konfiguracyjnego Winampa..."

; Close all instances of Winamp
	LangString CPro_CloseWinamp_Welcome_Title ${LANG_POLISH} "Programy do zamkni�cia"
	LangString CPro_CloseWinamp_Welcome_Text  ${LANG_POLISH} "Programy, kt�re musz� by� zamkni�te przed kontynuowaniem instalacji"	
	LangString CPro_CloseWinamp_Heading ${LANG_POLISH} "Przed kontynuacj� instalacji zamknij wszystkie programy z poni�szej listy..."
	LangString CPro_CloseWinamp_Searching ${LANG_POLISH} "Trwa wyszukiwanie program�w, prosz� czeka�..."
	LangString CPro_CloseWinamp_EndSearch ${LANG_POLISH} "Zako�czono wyszukiwanie program�w..."
	LangString CPro_CloseWinamp_EndMonitor ${LANG_POLISH} "Trwa zamykanie monitora aktywnych proces�w, prosz� czeka�..."
	LangString CPro_CloseWinamp_NoPrograms ${LANG_POLISH} "Instalator nie znalaz� program�w, kt�re wymagaj� zamkni�cia"
	LangString CPro_CloseWinamp_ColHeadings1 ${LANG_POLISH} "Aplikacja"
	LangString CPro_CloseWinamp_ColHeadings2 ${LANG_POLISH} "Proces"
	LangString CPro_CloseWinamp_Autoclosesilent ${LANG_POLISH} "Nie uda�o si� zamkn�� programu"

; Menu Start
	LangString CPro_MenuStart1 ${LANG_POLISH} "Odinstaluj ${CPRO_NAME}"
	LangString CPro_MenuStart2 ${LANG_POLISH} "Co nowego"
	LangString CPro_MenuStart3 ${LANG_POLISH} "Pobierz wi�cej sk�rek i wid�et�w ${CPRO_NAME}!"	

	
; CPro :: Widgets

; First Page of Installer
	LangString CPro_Widget_Welcome_Title ${LANG_POLISH} "Witam w kreatorze instalacji $(^NameDA)"
	LangString CPro_Widget_Welcome_Text ${LANG_POLISH} "Ten kreator pomo�e Ci zainstalowa� $(^NameDA).$\r$\n$\r$\nDo prawid�owej pracy tej wersji ${CPRO_WIDGET_NAME} musisz mie� zainstalowanego Winampa w wersji ${CPRO_WINAMP_VERSION} lub nowszego oraz ${CPRO_NAME} ${CPRO_VERSION}!$\r$\n$\r$\n$_CLICK"

	LangString CPro_Widget_Caption ${LANG_POLISH} "Instalacja ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION}"	
	LangString CPro_Widget_Name_Text ${LANG_POLISH} "${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} dla ${CPRO_NAME}${CPRO_CRS}"		
	
; First Page of Uninstaller
	LangString CPro_Widget_Un_Welcome_Title ${LANG_POLISH} "Witam w kreatorze dezinstalacji $(^NameDA)"
	LangString CPro_Widget_Un_Welcome_Text ${LANG_POLISH} "Ten kreator pomo�e Ci odinstalowa� $(^NameDA).$\r$\n$\r$\n$_CLICK"

; Installer sections
	LangString CPro_Widget_Files ${LANG_POLISH} "${CPRO_WIDGET_NAME} ${CPRO_WIDGET_VERSION} dla ${CPRO_NAME}${CPRO_CRS} ${CPRO_VERSION}"
		
; Installer sections descriptions	
	LangString CPro_Widget_Desc_Files ${LANG_POLISH} "Instalacja wszystkich plik�w niezb�dnych do pracy ${CPRO_WIDGET_NAME} ${CPRO_WIDGET_VERSION}."

; Finish Page	
	LangString CPro_Widget_FinishPage_1 ${LANG_POLISH} "Zako�czono instalacj� ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION}"
	LangString CPro_Widget_FinishPage_2 ${LANG_POLISH} "Kreator instalacji zako�czy� instalowanie ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION}. Mo�esz zacz�� u�ywa� swojego nowego wid�etu ${CPRO_WIDGET_NAME} dla ${CPRO_NAME} w Winampie."
	LangString CPro_Widget_FinishPage_3 ${LANG_POLISH} "Je�li podoba ci si� ${CPRO_WIDGET_NAME} i chcesz wspom�c dalszy rozw�j projektu, wesprzyj nas dowoln� kwot�."
	LangString CPro_Widget_FinishPage_4 ${LANG_POLISH} "Co chcesz teraz zrobi�?"
	LangString CPro_Widget_FinishPage_5 ${LANG_POLISH} "Pobierz wi�cej wid�et�w ze strony ${CPRO_NAME}"
	LangString CPro_Widget_FinishPage_6 ${LANG_POLISH} "Od�wie� sk�rk� ${CPRO_NAME} lub uruchom Winampa"
	LangString CPro_Widget_FinishPage_7 ${LANG_POLISH} "Zako�cz"	
	
; UnFinish Page	
	LangString CPro_Widget_UnFinishPage_1 ${LANG_POLISH} "Ko�czenie pracy kreatora dezinstalacji wid�etu ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} dla ${CPRO_NAME}${CPRO_CRS}"
	LangString CPro_Widget_UnFinishPage_2 ${LANG_POLISH} "Wid�et ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} dla ${CPRO_NAME}${CPRO_CRS} zosta� odinstalowany z tego komputera."
	LangString CPro_Widget_UnFinishPage_3 ${LANG_POLISH} "Kliknij przycisk $(CPro_Widget_FinishPage_7), aby zamkn�� kreatora"
	LangString CPro_Widget_UnFinishPage_4 ${LANG_POLISH} "Od�wie� sk�rk� ${CPRO_NAME}, je�li Winamp jest uruchomiony"