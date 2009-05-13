;###########################################################################################

; Lang:				Turkish
; LangID			1055
; Last udpdated:	12.03.2009
; Author:			Ali Sar�o�lu
; Email:			alsau@mynet.com

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
	LangString CPro_Language_Title ${LANG_TURKISH} "Kurulum dili"
	LangString CPro_Un_Language_Title ${LANG_TURKISH} "Uninstaller language"	
	LangString CPro_Language_Text ${LANG_TURKISH} "L�tfen bir dil se�in:"

; First Page of Installer
	LangString CPro_Welcome_Title ${LANG_TURKISH} "$(^NameDA) Kurulum Sihirbaz�'na ho� geldiniz"
	LangString CPro_Welcome_Text ${LANG_TURKISH} "Bu sihirbaz size $(^NameDA) kurulumu boyunca rehberlik edecek.$\r$\n$\r$\nKurulumu ba�latmadan �nce Winamp'� kapatman�z �nerilir. B�ylece Winamp ile ilgili t�m dosyalar sorunsuz g�ncelle�tirilebilir.$\n$\n${CPRO_NAME}'nun bu s�r�m� do�ru bir �ekilde �al��abilmesi i�in, Winamp ${CPRO_WINAMP_VERSION} veya daha y�ksek bir s�r�m� bilgisayar�n�zda kurulu olmal�d�r!$\r$\n$\r$\n$_CLICK"

; Installer Header
	!if ${CPRO_BUILD_TYPE} == "BETA"
; Beta stage	
		LangString CPro_Caption ${LANG_TURKISH} "${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} ${CPRO_BUILD_NAME} Kur"
	!else if ${CPRO_BUILD_TYPE} == "NIGHTLY"
; Alpha stage	
		LangString CPro_Caption ${LANG_TURKISH} "${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} ${CPRO_BUILD_NAME} (${CPRO_DATE}) Kur"		
	!else
; Release
		LangString CPro_Caption ${LANG_TURKISH} "${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} Kur"		
	!endif
	
; Installation type	
	LangString CPro_Full ${LANG_TURKISH} "Tam"
	LangString CPro_Minimal ${LANG_TURKISH} "En Az"
	
; Installer sections
	LangString CPro_CProFiles ${LANG_TURKISH} "${CPRO_NAME} Motoru"
	LangString CPro_wBrowserPro ${LANG_TURKISH} "BrowserPro"
	LangString CPro_wAlbumArt ${LANG_TURKISH} "�imdi Y�r�t�l�yor"
	LangString CPro_WidgetsSection ${LANG_TURKISH} "Widgetler"
	LangString CPro_CProCustom ${LANG_TURKISH} "Bile�enler"
	LangString CPro_cPlaylistPro ${LANG_TURKISH} "�alma Listeleri"
		
; Installer sections descriptions	
	LangString CPro_Desc_CProFiles ${LANG_TURKISH} "${CPRO_NAME}'nun �al��abilmesi i�in gerekli temel dosyalar� i�erir."
	LangString CPro_Desc_wBrowserPro ${LANG_TURKISH} "BrowserPro, widget olarak adland�r�lan, pop�ler web siteleri i�in otomatikman dola�ma ve y�r�tme dizinine g�zatma olana�� sa�lar."
	LangString CPro_Desc_wAlbumArt ${LANG_TURKISH} "�imdi Y�r�t�l�l�yor (Alb�m Kapak Resmi sekmesi), b�y�k bir cd kapak resmini i�eren ve y�r�t�len dosya hakk�nda bilgiler g�steren bir widgetdir."
	LangString CPro_Desc_WidgetsSection ${LANG_TURKISH} "${CPRO_NAME} d�� g�r�n�mleri i�in widget deste�i ve baz� yararl� widget bile�enleri i�erir."
	LangString CPro_Desc_CProCustom ${LANG_TURKISH} "${CPRO_NAME}'nun iste�e ba�l� y�klenebilecek bile�enleri."
	LangString CPro_Desc_cPlaylistPro ${LANG_TURKISH} "�alma listesinin ba��na, kolay aramalar yapabilmeniz i�in bir arama kutusu ekler."

; Directory Text	
	LangString CPro_DirText ${LANG_TURKISH} "L�tfen Winamp'�n kurulu oldu�u konumu se�in. (Winamp otomatik olarak alg�land���nda ilerleyebilirsiniz):"

; Cleanup Page	
	LangString CPro_CleanupPage_Title ${LANG_TURKISH} "Winamp Cleanup"
	LangString CPro_CleanupPage_Subtitle ${LANG_TURKISH} "Cleanup some Winamp Preferences."
	LangString CPro_CleanupPage_Caption0 ${LANG_TURKISH} "Using the options on this page will remove some Winamp Configuration files which may not work across different versions of both Winamp and ${CPRO_NAME}."
	LangString CPro_CleanupPage_Caption1 ${LANG_TURKISH} "If you have problems getting ${CPRO_NAME} to run properly you can reinstall ${CPRO_NAME} at any time and use this page to solve your problems."
	LangString CPro_CleanupPage_Caption2 ${LANG_TURKISH} "NOTE: It's perfectly ok, these files will be rebuilt by Winamp."
	LangString CPro_CleanupPage_Caption3 ${LANG_TURKISH} "The reinstall with these options should be used only if you are experiencing difficulties using ${CPRO_NAME} with Winamp."
	LangString CPro_CleanupPage_Caption4 ${LANG_TURKISH} "Thank you for your understanding."
	LangString CPro_CleanupPage_Footer ${LANG_TURKISH} "If you are still having problems using ${CPRO_NAME},"
	LangString CPro_CleanupPage_TSLink ${LANG_TURKISH} "Ask for free support in the Skin Consortium Forums."
	LangString CPro_CleanupPage_StudioXnf ${LANG_TURKISH} "Delete Skin Configuration (studio.xnf)"
	LangString CPro_CleanupPage_StudioXnf_Desc ${LANG_TURKISH} "Deletes skin-specific settings like: window positions, active tabs, current windowmode, ..."
	LangString CPro_CleanupPage_WinampIni ${LANG_TURKISH} "Delete Winamp Configuration (winamp.ini)"
	LangString CPro_CleanupPage_WinampIni_Desc ${LANG_TURKISH} "Deletes winamp-specific settings like: current skin, advanced title formatting, current language, ..."

; Finish Page	
	LangString CPro_FinishPage_1 ${LANG_TURKISH} "${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} kurulumu tamamland�"
	LangString CPro_FinishPage_2 ${LANG_TURKISH} "${CPRO_NAME} v${CPRO_VERSION} kurulum i�lemi tamamland�. v${CPRO_VERSION}. Winamp'� �imdi ba�latarak ${CPRO_NAME} d�� g�r�n�m ve widgestlerini kullanmaya ba�layabilirsiniz."
	LangString CPro_FinishPage_3 ${LANG_TURKISH} "E�er ${CPRO_NAME}'yu be�endiyseniz, geli�tirilmesine katk� sa�lamak i�in bu projeye l�tfen para ba���� yap�n!"
	LangString CPro_FinishPage_4 ${LANG_TURKISH} "�imdi ne yapmak istiyorsunuz?"
	LangString CPro_FinishPage_5 ${LANG_TURKISH} "Daha fazla ${CPRO_NAME} widget ve d�� g�r�n�mleri i�in web sayfam�z� ziyaret edin."
	LangString CPro_FinishPage_6 ${LANG_TURKISH} "Open Winamp with the default ${CPRO_NAME} skin now"
	LangString CPro_FinishPage_7 ${LANG_TURKISH} "Bitir"	
	
; First Page of Uninstaller
	LangString CPro_Un_Welcome_Title ${LANG_TURKISH} "$(^NameDA) Kald�rma Sahirbaz�'na ho� geldi�iniz"
	LangString CPro_Un_Welcome_Text ${LANG_TURKISH} "Bu sihirbaz size $(^NameDA) program�n� kald�rma i�lemi boyunca rehberlik edecek.$\r$\n$\r$\nKald�rma i�lemine ba�lamadan �nce, ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} �al���r durumda oldu�undan emin olun.$\r$\n$\r$\n$_CLICK"

; Installation
	LangString CPro_Ini ${LANG_TURKISH} "Winamp.ini yap�land�rma dosyas� g�ncelle�tiriliyor..."
	LangString CPro_Account ${LANG_TURKISH} "�oklu-kullan�c� ayarlar�"
	LangString CPro_No_Account ${LANG_TURKISH} "�oklu-kullan�c� ayarlar� yok"
	LangString CPro_Winamp_Path ${LANG_TURKISH} "Winamp yap�land�rma dosyas�n�n yolu belirleniyor..."	

; Close all instances of Winamp
	LangString CPro_CloseWinamp_Welcome_Title ${LANG_TURKISH} "Programs to close"
	LangString CPro_CloseWinamp_Welcome_Text  ${LANG_TURKISH} "Programs, that must be closed before continuing installation"	
	LangString CPro_CloseWinamp_Heading ${LANG_TURKISH} "Close all programs from the list before continuing installation..."
	LangString CPro_CloseWinamp_Searching ${LANG_TURKISH} "Searching programs, please wait..."
	LangString CPro_CloseWinamp_EndSearch ${LANG_TURKISH} "Searching programs finished..."
	LangString CPro_CloseWinamp_EndMonitor ${LANG_TURKISH} "Closing active process monitor, please wait..."
	LangString CPro_CloseWinamp_NoPrograms ${LANG_TURKISH} "Installer didn't find any programs to close"
	LangString CPro_CloseWinamp_ColHeadings1 ${LANG_TURKISH} "Application"
	LangString CPro_CloseWinamp_ColHeadings2 ${LANG_TURKISH} "Process"
	LangString CPro_CloseWinamp_Autoclosesilent ${LANG_TURKISH} "Closing program failed"

; Menu Start
	LangString CPro_MenuStart1 ${LANG_TURKISH} "${CPRO_NAME} Kald�r"
	LangString CPro_MenuStart2 ${LANG_TURKISH} "Neler Yeni"
	LangString CPro_MenuStart3 ${LANG_TURKISH} "Daha fazla ${CPRO_NAME} widget ve d�� g�r�n�mleri edinin!"	

	
; CPro :: Widgets

; First Page of Installer
	LangString CPro_Widget_Welcome_Title ${LANG_TURKISH} "Welcome to the $(^NameDA) Setup Wizard"
	LangString CPro_Widget_Welcome_Text ${LANG_TURKISH} "This wizard will guide you through the installation of $(^NameDA).$\r$\n$\r$\nYou'll at least need Winamp ${CPRO_WINAMP_VERSION} and ${CPRO_NAME} ${CPRO_VERSION} for this version of ${CPRO_WIDGET_NAME} to work!$\r$\n$\r$\n$_CLICK"

	LangString CPro_Widget_Caption ${LANG_TURKISH} "${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} Setup"	
	LangString CPro_Widget_Name_Text ${LANG_TURKISH} "${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} widget for ${CPRO_NAME}${CPRO_CRS}"		
	
; First Page of Uninstaller
	LangString CPro_Widget_Un_Welcome_Title ${LANG_TURKISH} "Welcome to the $(^NameDA) Uninstall Wizard"
	LangString CPro_Widget_Un_Welcome_Text ${LANG_TURKISH} "This wizard will guide you through the uninstallation of $(^NameDA).$\r$\n$\r$\n$_CLICK"

; Installer sections
	LangString CPro_Widget_Files ${LANG_TURKISH} "${CPRO_WIDGET_NAME} ${CPRO_WIDGET_VERSION} for ${CPRO_NAME}${CPRO_CRS} ${CPRO_VERSION}"
		
; Installer sections descriptions	
	LangString CPro_Widget_Desc_Files ${LANG_TURKISH} "This will install all the files that ${CPRO_WIDGET_NAME} ${CPRO_WIDGET_VERSION} needs to work."

; Finish Page	
	LangString CPro_Widget_FinishPage_1 ${LANG_TURKISH} "${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} installation finished"
	LangString CPro_Widget_FinishPage_2 ${LANG_TURKISH} "The setup wizard has finished installing ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION}. You can now start using your new ${CPRO_WIDGET_NAME} widget for ${CPRO_NAME} in Winamp."
	LangString CPro_Widget_FinishPage_3 ${LANG_TURKISH} "If you like ${CPRO_WIDGET_NAME} and would like to help future development of the product please donate to the project."
	LangString CPro_Widget_FinishPage_4 ${LANG_TURKISH} "What do you want to do now?"
	LangString CPro_Widget_FinishPage_5 ${LANG_TURKISH} "Go to our homepage to get more ${CPRO_NAME} widgets"
	LangString CPro_Widget_FinishPage_6 ${LANG_TURKISH} "Reload ${CPRO_NAME} or open Winamp now"
	LangString CPro_Widget_FinishPage_7 ${LANG_TURKISH} "Finish"	
	
; UnFinish Page	
	LangString CPro_Widget_UnFinishPage_1 ${LANG_TURKISH} "Completing the ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} widget for ${CPRO_NAME}${CPRO_CRS} Uninstall Wizard"
	LangString CPro_Widget_UnFinishPage_2 ${LANG_TURKISH} "${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} widget for ${CPRO_NAME}${CPRO_CRS} has been uninstalled from your computer."
	LangString CPro_Widget_UnFinishPage_3 ${LANG_TURKISH} "Click $(CPro_Widget_FinishPage_7) to close this wizard"
	LangString CPro_Widget_UnFinishPage_4 ${LANG_TURKISH} "Reload ${CPRO_NAME} if Winamp is running"