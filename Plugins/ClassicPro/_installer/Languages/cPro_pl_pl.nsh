;###########################################################################################

; Lang:			Polish
; LangID			1045
; Last udpdated:		24.02.2009
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

; Wyb�r j�zyka
	LangString CPro_Language_Title ${LANG_POLISH} "J�zyk instalatora"
	LangString CPro_Language_Text ${LANG_POLISH} "Prosz� wybra� j�zyk:"
 
; Pierwsza strona instalatora
	LangString CPro_Welcome_Title ${LANG_POLISH} "Witam w kreatorze instalacji $(^NameDA)"
	LangString CPro_Welcome_Text ${LANG_POLISH} "Ten kreator pomo�e Ci zainstalowa� $(^NameDA).$\r$\n$\r$\nPrzed rozpocz�ciem instalacji zalecane jest zamkni�cie Winampa. Pozwoli to na uaktualnienie niezb�dnych plik�w programu Winamp.$\n$\nDo prawid�owej pracy tej wersji ${CPRO_NAME} musisz mie� zainstalowanego Winampa w wersji ${CPRO_WINAMP_VERSION} lub nowszego!$\r$\n$\r$\n$_CLICK"

; Nag�owek instalatora
	!ifdef CPRO_BETA
; Wersja Beta
		LangString CPro_Caption ${LANG_POLISH} "Instalacja ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} ${CPRO_BETA}"
	!else
; Wersja finalna
		LangString CPro_Caption ${LANG_POLISH} "Instalacja ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION}"
	!endif
	
; Typ instalacji
	LangString CPro_Full ${LANG_POLISH} "Pe�na"
	LangString CPro_Minimal ${LANG_POLISH} "Minimalna"
	
; Sekcje instalatora	
	LangString CPro_CProFiles ${LANG_POLISH} "Silnik ClassicPro"
	LangString CPro_wBrowserPro ${LANG_POLISH} "Przegl�darka BrowserPro v2.0"
	LangString CPro_wAlbumArt ${LANG_POLISH} "Ok�adki album�w AlbumArt v1.1"
	LangString CPro_WidgetsSection ${LANG_POLISH} "Wid�ety"
	LangString CPro_CProCustom ${LANG_POLISH} "Sk�adniki"
	LangString CPro_cPlaylistPro ${LANG_POLISH} "Przeszukiwanie listy odtwarzania"
	
; Opisy sekcji instalatora	
	LangString CPro_Desc_CProFiles ${LANG_POLISH} "Instalacja wszystkich plik�w niezb�dnych do pracy ClassicPro."
	LangString CPro_Desc_wBrowserPro ${LANG_POLISH} "BrowserPro jest wid�etem umo�liwiaj�cym nawigacje do popularnych witryn i katalogu odtwarzanego utworu."
	LangString CPro_Desc_wAlbumArt ${LANG_POLISH} "AlbumArt jest wid�etem, kt�ry wy�wietla du�e ok�adki album�w oraz informacje o odtwarzanym utworze."
	LangString CPro_Desc_WidgetsSection ${LANG_POLISH} "Sk�rki ClassicPro obs�uguj� wid�ety. Te rozprowadzane z instalatorem ClassicPro, znajdziesz w tej sekcji."
	LangString CPro_Desc_CProCustom ${LANG_POLISH} "Opcjonalne komponenty dla ClassicPro."
	LangString CPro_Desc_cPlaylistPro ${LANG_POLISH} "Dodaje pole wyszukiwania nad list� odtwarzania, do �atwego jej przeszukiwania."

; Tekst wyboru katalogu
	LangString CPro_DirText ${LANG_POLISH} "Wybierz �cie�k� dost�pu do Winampa (mo�liwa bedzie kontynuacja, gdy instalator wykryje zainstalowanego Winampa):"
	
; Strona ko�cowa
	LangString CPro_FinishPage_1 ${LANG_POLISH} "Zako�czono instalacj� ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION}"
	LangString CPro_FinishPage_2 ${LANG_POLISH} "Kreator instalacji zako�czy� instalowanie ${CPRO_NAME} v${CPRO_VERSION}. Mo�esz zacz�� u�ywa� sk�rek i wid�et�w ${CPRO_NAME} w Winampie."
	LangString CPro_FinishPage_3 ${LANG_POLISH} "Je�li podoba ci si� ${CPRO_NAME} i chcesz wspom�c dalszy rozw�j projektu, wesprzyj nas dowoln� kwot�."
	LangString CPro_FinishPage_4 ${LANG_POLISH} "Co chcesz teraz zrobi�?"
	LangString CPro_FinishPage_5 ${LANG_POLISH} "Pobierz wi�cej sk�rek i wid�et�w ze strony ${CPRO_NAME}"
	LangString CPro_FinishPage_6 ${LANG_POLISH} "Otw�rz domy�ln� sk�rk� ${CPRO_NAME}"
	LangString CPro_FinishPage_7 ${LANG_POLISH} "Zako�cz"	

; Pierwsza strona deinstalatora
	LangString CPro_Un_Welcome_Title ${LANG_POLISH} "Witam w kreatorze dezinstalacji $(^NameDA)"
	LangString CPro_Un_Welcome_Text ${LANG_POLISH} "Ten kreator pomo�e Ci odinstalowa� $(^NameDA).$\r$\n$\r$\nPrzed rozpocz�ciem dezinstalacji, upewnij si�, �e ${CPRO_NAME}${CPRO_CRS} ${CPRO_VERSION} nie jest uruchomiony.$\r$\n$\r$\n$_CLICK"

; Instalacja
	LangString CPro_Ini ${LANG_POLISH} "Aktualizacja pliku konfiguracyjnego winamp.ini..."
	LangString CPro_Account ${LANG_POLISH} "Konta wielu u�ytkownik�w"
	LangString CPro_No_Account ${LANG_POLISH} "Brak obs�ugi kont wielu u�ytkownik�w"
	LangString CPro_Winamp_Path ${LANG_POLISH} "Okre�lanie �cie�ki do pliku konfiguracyjnego Winampa..."

; Zamknij wszystkie instancje Winampa
	LangString CPro_Running_Winamp ${LANG_POLISH} "Wykryto uruchomiony program Winamp!"
	LangString CPro_Close_Winamp  ${LANG_POLISH} "Przed kontynuacj� instalacji musisz zamkn�� program Winamp!"	
	LangString CPro_Closing_Winamp ${LANG_POLISH} "        Trwa zamykanie programu Winamp (winamp.exe)..."
	LangString CPro_No_More_Winamp ${LANG_POLISH} "        OK. Program Winamp zosta� zamkni�ty..."  
	LangString CPro_No_Winamp ${LANG_POLISH} "OK. Program Winamp nie jest uruchomiony..."
	LangString CPro_Check_Winamp ${LANG_POLISH} "Sprawdzanie czy program Winamp jest uruchomiony..."

; Menu Start
	LangString CPro_MenuStart1 ${LANG_POLISH} "Odinstaluj ${CPRO_NAME}"
	LangString CPro_MenuStart2 ${LANG_POLISH} "Co nowego"
	LangString CPro_MenuStart3 ${LANG_POLISH} "Pobierz wi�cej sk�rek i wid�et�w ${CPRO_NAME}!"	
	
; CPro :: Widgets

; First Page of Installer
	LangString CPro_Widget_Welcome_Title ${LANG_POLISH} "Witam w kreatorze instalacji $(^NameDA)"
	LangString CPro_Widget_Welcome_Text ${LANG_POLISH} "Ten kreator pomo�e Ci zainstalowa� $(^NameDA).$\r$\n$\r$\nPrzed rozpocz�ciem instalacji zalecane jest zamkni�cie Winampa. Pozwoli to na uaktualnienie niezb�dnych plik�w programu Winamp.$\n$\nDo prawid�owej pracy tej wersji ${CPRO_WIDGET_NAME} musisz mie� zainstalowanego Winampa w wersji ${CPRO_WINAMP_VERSION} lub nowszego oraz ${CPRO_NAME} ${CPRO_VERSION}!$\r$\n$\r$\n$_CLICK"
														
	LangString CPro_Widget_Caption ${LANG_POLISH} "Instalacja ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION}"	
	LangString CPro_Widget_Name_Text ${LANG_POLISH} "${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} dla ClassicPro�"		
	
; First Page of Uninstaller
	LangString CPro_Widget_Un_Welcome_Title ${LANG_POLISH} "Witam w kreatorze dezinstalacji $(^NameDA)"
	LangString CPro_Widget_Un_Welcome_Text ${LANG_POLISH} "Ten kreator pomo�e Ci odinstalowa� $(^NameDA).$\r$\n$\r$\nPrzed rozpocz�ciem dezinstalacji, upewnij si�, �e ${CPRO_NAME}${CPRO_CRS} ${CPRO_VERSION} nie jest uruchomiony.$\r$\n$\r$\n$_CLICK"
															
; Installer sections
	LangString CPro_Widget_Files ${LANG_POLISH} "${CPRO_WIDGET_NAME} ${CPRO_WIDGET_VERSION} dla ${CPRO_NAME}${CPRO_CRS} ${CPRO_VERSION}"
		
; Installer sections descriptions	
	LangString CPro_Widget_Desc_Files ${LANG_POLISH} "Instalacja wszystkich plik�w niezb�dnych do pracy ${CPRO_WIDGET_NAME} ${CPRO_WIDGET_VERSION}."

; Finish Page	
	LangString CPro_Widget_FinishPage_1 ${LANG_POLISH} "Zako�czono instalacj� ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION}"
	LangString CPro_Widget_FinishPage_2 ${LANG_POLISH} "Kreator instalacji zako�czy� instalowanie ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION}. Mo�esz zacz�� u�ywa� swojego nowego wid�etu ${CPRO_WIDGET_NAME} dla ${CPRO_NAME} w Winampie."
	LangString CPro_Widget_FinishPage_3 ${LANG_POLISH} "Je�li podoba ci si� ${CPRO_WIDGET_NAME} i chcesz wspom�c dalszy rozw�j projektu, wesprzyj nas dowoln� kwot�."
	LangString CPro_Widget_FinishPage_4 ${LANG_POLISH} "Co chcesz teraz zrobi�?"
	LangString CPro_Widget_FinishPage_5 ${LANG_POLISH} "Pobierz wi�cej sk�rek i wid�et�w ze strony ${CPRO_NAME}"
	LangString CPro_Widget_FinishPage_6 ${LANG_POLISH} "Otw�rz domy�ln� sk�rk� ${CPRO_NAME}"
	LangString CPro_Widget_FinishPage_7 ${LANG_POLISH} "Zako�cz"	