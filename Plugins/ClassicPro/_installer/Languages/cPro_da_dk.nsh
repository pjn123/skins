;###########################################################################################

; Lang:		         	Danish
; LangID			    1030
; Last udpdated:		09.05.2009
; Author:			    Andreas Brandenborg
; Email:		       	brandenborg@gmail.com

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
	LangString CPro_Language_Title ${LANG_DANISH} "Installations sprog"
	LangString CPro_Un_Language_Title ${LANG_DANISH} "Afinstallations sprog"	
	LangString CPro_Language_Text ${LANG_DANISH} "V�lg venligst et sprog:"

; First Page of Installer
	LangString CPro_Welcome_Title ${LANG_DANISH} "Velkommen til $(^NameDA) installationen"
	LangString CPro_Welcome_Text ${LANG_DANISH} "Denne guide vil hj�lpe dig igennem installationen af $(^NameDA).$\r$\n$\r$\nDet er anbefalet at lukke Winamp f�r installations start. Dette vil g�re det muligt at opdatere alle relevante Winamp filer.$\n$\nDu skal minimum have Winamp ${CPRO_WINAMP_VERSION} for denne version af ${CPRO_NAME} for at fungere!$\r$\n$\r$\n$_CLICK"

; Installer Header
	!if ${CPRO_BUILD_TYPE} == "BETA"
; Beta stage	
		LangString CPro_Caption ${LANG_DANISH} "${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} ${CPRO_BUILD_NAME} Ops�tning"
	!else if ${CPRO_BUILD_TYPE} == "NIGHTLY"
; Alpha stage	
		LangString CPro_Caption ${LANG_DANISH} "${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} ${CPRO_BUILD_NAME} (${CPRO_DATE}) Ops�tning"		
	!else
; Release
		LangString CPro_Caption ${LANG_DANISH} "${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} Ops�tning"		
	!endif
	
; Installation type	
	LangString CPro_Full ${LANG_DANISH} "Komplet"
	LangString CPro_Minimal ${LANG_DANISH} "Minimal"
	
; Installer sections
	LangString CPro_CProFiles ${LANG_DANISH} "${CPRO_NAME} Motoren"
	LangString CPro_wBrowserPro ${LANG_DANISH} "BrowserPro"
	LangString CPro_wAlbumArt ${LANG_DANISH} "Now Playing"
	LangString CPro_WidgetsSection ${LANG_DANISH} "Widgets"
	LangString CPro_CProCustom ${LANG_DANISH} "Komponenter"
	LangString CPro_cPlaylistPro ${LANG_DANISH} "Playlist S�gning"
		
; Installer sections descriptions	
	LangString CPro_Desc_CProFiles ${LANG_DANISH} "Dette vil installere alle filer n�dvendige for at ${CPRO_NAME} kan fungere."
	LangString CPro_Desc_wBrowserPro ${LANG_DANISH} "BrowserPro er en widget der muligg�rer din browser at auto navigere til popul�re hjemmesider, og udforske afspilnings biblioteket."
	LangString CPro_Desc_wAlbumArt ${LANG_DANISH} "Now Playing er en widget der viser et stort cd cover og information omkring den afspillende fil."
	LangString CPro_Desc_WidgetsSection ${LANG_DANISH} "${CPRO_NAME} skins underst�tter widgets og her kan du finde nogle af dem vi besluttede at inkludere i denne installation."
	LangString CPro_Desc_CProCustom ${LANG_DANISH} "Valgfrie komponenter for ${CPRO_NAME}."
	LangString CPro_Desc_cPlaylistPro ${LANG_DANISH} "Tilf�j en s�geboks over din afspilningsliste for nemme s�gninger i din liste."

; Direcory Text	
	LangString CPro_DirText ${LANG_DANISH} "V�lg venligst din Winamp destination (du vil v�re i stand til at forts�tte n�r Winamp er fundet):"

; Cleanup Page	
	LangString CPro_CleanupPage_Title ${LANG_DANISH} "Winamp oprydning"
	LangString CPro_CleanupPage_Subtitle ${LANG_DANISH} "Reng�r nogle Winamp indstillinger."
	LangString CPro_CleanupPage_Caption0 ${LANG_DANISH} "Ved brug af valgmuligheder p� denne side vil fjerne nogle Winamp konfigurations filer som m�ske ikke virker p� kryds af forskellige versioner af b�de Winamp og ${CPRO_NAME}."
	LangString CPro_CleanupPage_Caption1 ${LANG_DANISH} "Hvis du har problemer med at f� ${CPRO_NAME} til at k�re ordenligt kan du re-installere ${CPRO_NAME} p� hvilket som helst tidspunkt og benytte denne side til at ordne dine problemer."
	LangString CPro_CleanupPage_Caption2 ${LANG_DANISH} "NOTAT: Det er helt iorden, disse filer vil blive gendannet til standard af Winamp."
	LangString CPro_CleanupPage_Caption3 ${LANG_DANISH} "Re-installering med disse muligheder b�r kun benyttes hvis du er ude for problemer ved brug af ${CPRO_NAME} med Winamp."
	LangString CPro_CleanupPage_Caption4 ${LANG_DANISH} "Tak for din forst�else."
	LangString CPro_CleanupPage_Footer ${LANG_DANISH} "Hvis der stadig opst�r problemer ved brug af ${CPRO_NAME},"
	LangString CPro_CleanupPage_TSLink ${LANG_DANISH} "Spr�g efter gratis assistance i Skin Consortiums forum."
	LangString CPro_CleanupPage_StudioXnf ${LANG_DANISH} "Fjern skin konfiguration (studio.xnf)"
	LangString CPro_CleanupPage_StudioXnf_Desc ${LANG_DANISH} "Fjerner skin specifike indstillinger som: vindue position, aktive tabs, nuv�rende windowmode, ..."
	LangString CPro_CleanupPage_WinampIni ${LANG_DANISH} "Fjern Winamp konfiguration (winamp.ini)"
	LangString CPro_CleanupPage_WinampIni_Desc ${LANG_DANISH} "Fjerner winamp specifike indstillinger som: nuv�rende skin, advanceret titel formattering, nuv�rende sprog, ..."

; Finish Page	
	LangString CPro_FinishPage_1 ${LANG_DANISH} "${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} installation f�rdig"
	LangString CPro_FinishPage_2 ${LANG_DANISH} "Guiden har udf�rt installationen af ${CPRO_NAME} v${CPRO_VERSION}. Du kan nu starte med at benytte ${CPRO_NAME} skins og widgets i Winamp."
	LangString CPro_FinishPage_3 ${LANG_DANISH} "Hvis du holder af ${CPRO_NAME} og gerne vil se fremtidig udvikling af dette produkt don�r venligst til projektet."
	LangString CPro_FinishPage_4 ${LANG_DANISH} "Hvad vil du nu?"
	LangString CPro_FinishPage_5 ${LANG_DANISH} "G� til vores hjemmeside for at f� flere ${CPRO_NAME} skins og widgets"
	LangString CPro_FinishPage_6 ${LANG_DANISH} "�ben standard ${CPRO_NAME} skin nu"
	LangString CPro_FinishPage_7 ${LANG_DANISH} "Afslut"	
	
; First Page of Uninstaller
	LangString CPro_Un_Welcome_Title ${LANG_DANISH} "Velkommen til $(^NameDA) Afinstallations Guiden"
	LangString CPro_Un_Welcome_Text ${LANG_DANISH} "Guiden vil hj�lpe dig igennem afinstallationen af $(^NameDA).$\r$\n$\r$\nF�r du starter afinstalleringen, v�r sikker p� ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} ikke k�rer.$\r$\n$\r$\n$_CLICK"

; Installation
	LangString CPro_Ini ${LANG_DANISH} "Opdaterer winamp.ini konfigurations filen..."
	LangString CPro_Account ${LANG_DANISH} "Flerbruger indstillinger"
	LangString CPro_No_Account ${LANG_DANISH} "Ingen Flerbruger indstillinger"
	LangString CPro_Winamp_Path ${LANG_DANISH} "Specif�r sti til Winamp konfigurations filen..."

; Close all instances of Winamp
	LangString CPro_CloseWinamp_Welcome_Title ${LANG_DANISH} "Programmer at lukke"
	LangString CPro_CloseWinamp_Welcome_Text  ${LANG_DANISH} "Programmer, der skal lukkes f�r installation kan forts�tte"	
	LangString CPro_CloseWinamp_Heading ${LANG_DANISH} "Luk alle programmer p� listen, f�r du forts�tter installationen..."
	LangString CPro_CloseWinamp_Searching ${LANG_DANISH} "S�ger programmer, vent venligst..."
	LangString CPro_CloseWinamp_EndSearch ${LANG_DANISH} "S�gning af programmer f�rdigjort..."
	LangString CPro_CloseWinamp_EndMonitor ${LANG_DANISH} "Lukker aktiv proces overv�ger, vent venligst..."
	LangString CPro_CloseWinamp_NoPrograms ${LANG_DANISH} "Installeren fandt ingen programmer der skulle lukkes"
	LangString CPro_CloseWinamp_ColHeadings1 ${LANG_DANISH} "Program"
	LangString CPro_CloseWinamp_ColHeadings2 ${LANG_DANISH} "Proces"
	LangString CPro_CloseWinamp_Autoclosesilent ${LANG_DANISH} "Lukning af program fejlet"

; Menu Start
	LangString CPro_MenuStart1 ${LANG_DANISH} "Afinstaller ${CPRO_NAME}"
	LangString CPro_MenuStart2 ${LANG_DANISH} "Hvad der er nyt"
	LangString CPro_MenuStart3 ${LANG_DANISH} "F� flere ${CPRO_NAME} skins og widgets!"	

	
; CPro :: Widgets

; First Page of Installer
	LangString CPro_Widget_Welcome_Title ${LANG_DANISH} "velkommen til $(^NameDA) installations guiden"
	LangString CPro_Widget_Welcome_Text ${LANG_DANISH} "Denne guide vil hj�lpe dig igennem installationen af $(^NameDA).$\r$\n$\r$\nDu skal mindst have Winamp ${CPRO_WINAMP_VERSION} og ${CPRO_NAME} ${CPRO_VERSION} for at denne version af ${CPRO_WIDGET_NAME} fungerer!$\r$\n$\r$\n$_CLICK"

	LangString CPro_Widget_Caption ${LANG_DANISH} "${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} Guide"	
	LangString CPro_Widget_Name_Text ${LANG_DANISH} "${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} widget for ${CPRO_NAME}${CPRO_CRS}"		
	
; First Page of Uninstaller
	LangString CPro_Widget_Un_Welcome_Title ${LANG_DANISH} "Velkommen til $(^NameDA) Afinstallations guide"
	LangString CPro_Widget_Un_Welcome_Text ${LANG_DANISH} "Denne guide vil hj�lpe dig igennem afinstallationen af $(^NameDA).$\r$\n$\r$\n$_CLICK"

; Installer sections
	LangString CPro_Widget_Files ${LANG_DANISH} "${CPRO_WIDGET_NAME} ${CPRO_WIDGET_VERSION} for ${CPRO_NAME}${CPRO_CRS} ${CPRO_VERSION}"
		
; Installer sections descriptions	
	LangString CPro_Widget_Desc_Files ${LANG_DANISH} "Dette vil installere alle filerne n�dvendigt for ${CPRO_WIDGET_NAME} ${CPRO_WIDGET_VERSION} kan fungere."

; Finish Page	
	LangString CPro_Widget_FinishPage_1 ${LANG_DANISH} "${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} installation fuldf�rt"
	LangString CPro_Widget_FinishPage_2 ${LANG_DANISH} "Installations guiden har f�rdiggjort installationen af ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION}. Du kan nu starte med at benytte din nye ${CPRO_WIDGET_NAME} widget for ${CPRO_NAME} i Winamp."
	LangString CPro_Widget_FinishPage_3 ${LANG_DANISH} "Hvis du kan lide ${CPRO_WIDGET_NAME} og vil hj�lpe fremtidig udvikling af dette produkt don�r venligst til projektet."
	LangString CPro_Widget_FinishPage_4 ${LANG_DANISH} "Hvad vil du nu?"
	LangString CPro_Widget_FinishPage_5 ${LANG_DANISH} "G� til vores hjemmeside for at finde flere ${CPRO_NAME} widgets"
	LangString CPro_Widget_FinishPage_6 ${LANG_DANISH} "Genindl�s ${CPRO_NAME} eller �ben Winamp nu"
	LangString CPro_Widget_FinishPage_7 ${LANG_DANISH} "F�rdig"	
	
; UnFinish Page	
	LangString CPro_Widget_UnFinishPage_1 ${LANG_DANISH} "F�rdigg�rer ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} widget for ${CPRO_NAME}${CPRO_CRS} afinstallations guiden"
	LangString CPro_Widget_UnFinishPage_2 ${LANG_DANISH} "${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} widget for ${CPRO_NAME}${CPRO_CRS} er blevet afinstalleret p� din computer."
	LangString CPro_Widget_UnFinishPage_3 ${LANG_DANISH} "Click $(CPro_Widget_FinishPage_7) fpr at lukke denne guide"
	LangString CPro_Widget_UnFinishPage_4 ${LANG_DANISH} "Genindl�s ${CPRO_NAME} hvis Winamp stadig k�rer"