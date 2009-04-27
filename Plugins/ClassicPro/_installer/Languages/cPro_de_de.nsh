;###########################################################################################

; Lang:			German
; LangID			1031
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
	LangString CPro_Language_Title ${LANG_GERMAN} "Sprache w�hlen"
	LangString CPro_Language_Text ${LANG_GERMAN} "Bitte w�hlen Sie eine Sprache:"

; First Page of Installer
	LangString CPro_Welcome_Title ${LANG_GERMAN} "Willkommen zum $(^NameDA) Installationsprogramm"
	LangString CPro_Welcome_Text ${LANG_GERMAN} "Dieser Assistent f�hrt Sie durch die Installation von $(^NameDA).$\r$\n$\r$\nEs wird empfohlen Winamp vor der der Installation zu beenden, um alle relevanten Winamp Dateien zu aktualisieren.$\n$\nSie ben�tigen mindestens Winamp ${CPRO_WINAMP_VERSION} f�r diese ${CPRO_NAME} Version!$\r$\n$\r$\n$_CLICK"

; Installer Header
	!ifdef CPRO_BETA
; Beta stage	
		LangString CPro_Caption ${LANG_GERMAN} "${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} ${CPRO_BETA} Setup"
	!else
; Release
		LangString CPro_Caption ${LANG_GERMAN} "${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} Setup"
	!endif
	
; Installation type	
	LangString CPro_Full ${LANG_GERMAN} "Vollst�ndig"
	LangString CPro_Minimal ${LANG_GERMAN} "Minimal"
	
; Installer sections
	LangString CPro_CProFiles ${LANG_GERMAN} "ClassicPro Engine"
	LangString CPro_wBrowserPro ${LANG_GERMAN} "BrowserPro v2.0"
	LangString CPro_wAlbumArt ${LANG_GERMAN} "AlbumArt v1.1"
	LangString CPro_WidgetsSection ${LANG_GERMAN} "Widgets"
	LangString CPro_CProCustom ${LANG_GERMAN} "Komponenten"
	LangString CPro_cPlaylistPro ${LANG_GERMAN} "Playlist Suche"
		
; Installer sections descriptions	
	LangString CPro_Desc_CProFiles ${LANG_GERMAN} "ClassicPro Kernkomponenten(ben�tigt)."
	LangString CPro_Desc_wBrowserPro ${LANG_GERMAN} "zeigt Informationen ausgew�hlter Webseiten zum aktuellen Titel, oder den akt. Ordnerinhalt an."
	LangString CPro_Desc_wAlbumArt ${LANG_GERMAN} "zeigt eine gro�e CD-Cover Ansicht und Tag-Informationen zum aktuellen Titel an."
	LangString CPro_Desc_WidgetsSection ${LANG_GERMAN} "Widgets sind vielseitige Erweiterungen f�r ClassicPro."
	LangString CPro_Desc_CProCustom ${LANG_GERMAN} "Optionale Komponenten f�r ClassicPro."
	LangString CPro_Desc_cPlaylistPro ${LANG_GERMAN} "Suchfeld f�r den Playlist Editor zum einfachen durchsuchen der Playlist."

; Direcory Text	
	LangString CPro_DirText ${LANG_GERMAN} "Bitte den Winamp Installationsordner angeben:$\r$\n(Das Installationsprogramm versucht den korrekten Ordner automatisch zu ermitteln)"

; Cleanup Page	
	LangString CPro_CleanupPage_Title ${LANG_GERMAN} "Winamp Aufr�umen"
	LangString CPro_CleanupPage_Subtitle ${LANG_GERMAN} "Winamp Einstellungen aufr�umen."
	LangString CPro_CleanupPage_Caption0 ${LANG_GERMAN} "Mit den Optionen auf dieser Seite k�nnen Einstellungen von Winamp gel�scht werden, welche nicht �ber verschiedene Versionen von Winamp und ${CPRO_NAME} hinweg funktionieren."
	LangString CPro_CleanupPage_Caption1 ${LANG_GERMAN} "Falls Probleme mit ${CPRO_NAME} auftreten ist es jederzeit m�glich ${CPRO_NAME} erneut zu installieren und mit Hilfe dieser Optionen diese Probleme zu l�sen."
	LangString CPro_CleanupPage_Caption2 ${LANG_GERMAN} "ANMERKUNG: Das l�schen der Einstellungen ist unbedenklich, sie werden nur erneuert."
	LangString CPro_CleanupPage_Caption3 ${LANG_GERMAN} "Die erneute Installation mit Hilfe dieser Optionen sollte nur durchgef�hrt werden, falls Probleme mit ${CPRO_NAME} und Winamp auftreten."
	LangString CPro_CleanupPage_Caption4 ${LANG_GERMAN} "Danke f�r das Verst�ndnis."
	LangString CPro_CleanupPage_Footer ${LANG_GERMAN} "Falls es weiterhin zu Problemen mit ${CPRO_NAME} kommt,"
	LangString CPro_CleanupPage_TSLink ${LANG_GERMAN} "Bitte den kostenlosen Support im Skin Consortium Forum kontaktieren."
	LangString CPro_CleanupPage_StudioXnf ${LANG_GERMAN} "Skin Einstellungen l�schen (studio.xnf)"
	LangString CPro_CleanupPage_StudioXnf_Desc ${LANG_GERMAN} "L�scht Skin-spezifische Einstellungen wie: Fenster Positionen, Aktive Reiter, Fenstermodus, ..."
	LangString CPro_CleanupPage_WinampIni ${LANG_GERMAN} "Winamp Einstellungen l�schen (winamp.ini)"
	LangString CPro_CleanupPage_WinampIni_Desc ${LANG_GERMAN} "L�scht Winamp-spezifische Einstellungen wie: Aktueller Skin, Erweiterte Titelformatierung,..."

; Finish Page	
	LangString CPro_FinishPage_1 ${LANG_GERMAN} "${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} Installation beendet"
	LangString CPro_FinishPage_2 ${LANG_GERMAN} "Die Installation von ${CPRO_NAME} v${CPRO_VERSION} ist abgeschlo�en. Sie k�nnen nun ${CPRO_NAME} Skins and Widgets mit Winamp verwenden."
	LangString CPro_FinishPage_3 ${LANG_GERMAN} "Wenn Ihnen ${CPRO_NAME} gef�llt und Sie die weitere Entwicklung unterst�tzen wollen, w�rden wir uns �ber eine Spende f�r unser Projekt freuen."
	LangString CPro_FinishPage_4 ${LANG_GERMAN} "Wie m�chten Sie fortfahren?"
	LangString CPro_FinishPage_5 ${LANG_GERMAN} "Weitere ${CPRO_NAME} Skins und Widgets finden."
	LangString CPro_FinishPage_6 ${LANG_GERMAN} "Winamp mit dem Standard ${CPRO_NAME} Skin �ffnen."
	LangString CPro_FinishPage_7 ${LANG_GERMAN} "Beenden"	
	
; First Page of Uninstaller
	LangString CPro_Un_Welcome_Title ${LANG_GERMAN} "Willkomen zum $(^NameDA) Deinstallationsprogramm"
	LangString CPro_Un_Welcome_Text ${LANG_GERMAN} "Dieser Assistent f�rht Sie durch die Deinstallation von $(^NameDA).$\r$\n$\r$\nBevor Sie die Deinstallation starten, stellen Sie bitte sicher, dass ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} beendet ist.$\r$\n$\r$\n$_CLICK"

; Installation
	LangString CPro_Ini ${LANG_GERMAN} "winamp.ini wird aktualisiert..."
	LangString CPro_Account ${LANG_GERMAN} "Mehr-Benutzer Konfiguration"
	LangString CPro_No_Account ${LANG_GERMAN} "keine Mehr-Benutzer Konfiguration"
	LangString CPro_Winamp_Path ${LANG_GERMAN} "Pfad zur Winamp-Konfigurationsdatei..."	

; Close all instances of Winamp
	LangString CPro_Running_Winamp ${LANG_GERMAN} "Winamp ist aktiv!"
	LangString CPro_Close_Winamp  ${LANG_GERMAN} "Sie m�ssen Winamp beenden um fortfahren zu k�nnen!"	
	LangString CPro_Closing_Winamp ${LANG_GERMAN} "        Winamp wird beendet (winamp.exe)..."
	LangString CPro_No_More_Winamp ${LANG_GERMAN} "        OK. Winamp wurde beendet..."  
	LangString CPro_No_Winamp ${LANG_GERMAN} "OK. Winamp ist nicht aktiv..."
	LangString CPro_Check_Winamp ${LANG_GERMAN} "�berpr�fe ob Winamp aktiv ist..."

; Menu Start
	LangString CPro_MenuStart1 ${LANG_GERMAN} "${CPRO_NAME} deinstallieren"
	LangString CPro_MenuStart2 ${LANG_GERMAN} "Was ist neu"
	LangString CPro_MenuStart3 ${LANG_GERMAN} "Mehr ${CPRO_NAME} Skins und Widgets!"	
	
; CPro :: Widgets

; First Page of Installer
	LangString CPro_Widget_Welcome_Title ${LANG_GERMAN} "Willkomen zum $(^NameDA) Installationsprogramm"
	LangString CPro_Widget_Welcome_Text ${LANG_GERMAN} "Dieser Assistent f�hrt Sie durch die Installation von $(^NameDA).$\r$\n$\r$\nEs wird empfohlen Winamp vor der der Installation zu beenden, um alle relevanten Winamp Dateien zu aktualisieren.$\n$\nSie ben�tigen mindestens Winamp ${CPRO_WINAMP_VERSION} und ${CPRO_NAME} ${CPRO_VERSION} f�r diese ${CPRO_WIDGET_NAME} Version!$\r$\n$\r$\n$_CLICK"

	LangString CPro_Widget_Caption ${LANG_GERMAN} "${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} Setup"	
	LangString CPro_Widget_Name_Text ${LANG_GERMAN} "${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} Widget f�r ClassicPro�"		
	
; First Page of Uninstaller
	LangString CPro_Widget_Un_Welcome_Title ${LANG_GERMAN} "Willkomen zum $(^NameDA) Deinstallationsprogramm"
	LangString CPro_Widget_Un_Welcome_Text ${LANG_GERMAN} "Dieser Assistent f�hrt Sie durch die Deinstallation von $(^NameDA).$\r$\n$\r$\nBevor Sie die Deinstallation starten, stellen Sie bitte sicher, dass ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} beendet ist.$\r$\n$\r$\n$_CLICK"
	
; Installer sections
	LangString CPro_Widget_Files ${LANG_GERMAN} "${CPRO_WIDGET_NAME} ${CPRO_WIDGET_VERSION} f�r ${CPRO_NAME}${CPRO_CRS} ${CPRO_VERSION}"
		
; Installer sections descriptions	
	LangString CPro_Widget_Desc_Files ${LANG_GERMAN} "Ben�tigte Dateien f�r ${CPRO_WIDGET_NAME} ${CPRO_WIDGET_VERSION} werden istalliert."

; Finish Page	
	LangString CPro_Widget_FinishPage_1 ${LANG_GERMAN} "${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} Installation beendet"
	LangString CPro_Widget_FinishPage_2 ${LANG_GERMAN} "Die Installation von  ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION}ist abgeschlo�en. Sie k�nnen nun Ihr neues ${CPRO_WIDGET_NAME} Widget f�r ${CPRO_NAME} mit Winamp verwenden."
	LangString CPro_Widget_FinishPage_3 ${LANG_GERMAN} "Wenn Ihnen ${CPRO_WIDGET_NAME} gef�llt und Sie die weitere Entwicklung unterst�tzen wollen, w�rden wir uns �ber eine Spende f�r unser Projekt freuen."
	LangString CPro_Widget_FinishPage_4 ${LANG_GERMAN} "Wie m�chten Sie fortfahren?"
	LangString CPro_Widget_FinishPage_5 ${LANG_GERMAN} "Unsere Homepage besuchen und weitere ${CPRO_NAME} Skins und Widgets finden."
	LangString CPro_Widget_FinishPage_6 ${LANG_GERMAN} "Winamp mit dem Standard ${CPRO_NAME} Skin �ffnen."
	LangString CPro_Widget_FinishPage_7 ${LANG_GERMAN} "Beenden"		