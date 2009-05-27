;###########################################################################################

; Lang:				Turkish
; LangID			1055
; Last udpdated:		27.05.2009
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
	LangString CPro_Un_Language_Title ${LANG_TURKISH} "Kald�rma dili"	
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
	LangString CPro_cPlaylistPro ${LANG_TURKISH} "�alma Listesi Arama"
		
; Installer sections descriptions	
	LangString CPro_Desc_CProFiles ${LANG_TURKISH} "Bu, ${CPRO_NAME}'nun �al��abilmesi i�in gereken t�m dosyalar� kuracakt�r."
	LangString CPro_Desc_wBrowserPro ${LANG_TURKISH} "BrowserPro, taray�c�n�zla pop�ler web siteleri i�in otomatik dola�ma ve y�r�tme dizinine g�zatma olana��n� sa�layan bir widget'�r."
	LangString CPro_Desc_wAlbumArt ${LANG_TURKISH} "�imdi Y�r�t�l�l�yor, y�r�t�len dosyan�n b�y�k bir cd kapak resmini ve bu dosya hakk�nda bilgiler g�steren bir widget't�r."
	LangString CPro_Desc_WidgetsSection ${LANG_TURKISH} "${CPRO_NAME} d�� g�r�n�mleri i�in widget deste�i ve burda bu kurucuyla birlikte paketlemeyi kararla�t�rd���m�zdan baz�lar�n� i�erir."
	LangString CPro_Desc_CProCustom ${LANG_TURKISH} "${CPRO_NAME} i�in iste�e ba�l� bile�enler."
	LangString CPro_Desc_cPlaylistPro ${LANG_TURKISH} "�alma listesinin ba��na, kolay aramalar yapabilmeniz i�in bir arama kutusu ekler."

; Directory Text	
	LangString CPro_DirText ${LANG_TURKISH} "L�tfen a�a��dan Winamp'�n kurulu oldu�u konumu se�in (Winamp alg�land���nda ilerleyebilirsiniz):"

; Cleanup Page	
	LangString CPro_CleanupPage_Title ${LANG_TURKISH} "Winamp Temizleme"
	LangString CPro_CleanupPage_Subtitle ${LANG_TURKISH} "Baz� Winamp Tercihlerini temizle."
	LangString CPro_CleanupPage_Caption0 ${LANG_TURKISH} "Bu sayfadaki se�enekleri kullanmak Winamp ve ${CPRO_NAME} programlar�n�n ikisinin de farkl� s�r�mleriyle birlikte kar��l�kl� �al��mayabilen baz� Winamp Yap�land�rma dosyalar�n� silecek."
	LangString CPro_CleanupPage_Caption1 ${LANG_TURKISH} "${CPRO_NAME}'nun �al��mas�nda sorunlar ya��yorsan�z ${CPRO_NAME}'yu istedi�iniz zaman yeniden kurabilirsiniz ve sorunlar�n�z� ��zmek i�in bu sayfay� kullanabilirsiniz."
	LangString CPro_CleanupPage_Caption2 ${LANG_TURKISH} "NOT: Bu tamamen ola�and�r, bu dosyalar Winamp taraf�ndan yeniden yap�lan�cakt�r."
	LangString CPro_CleanupPage_Caption3 ${LANG_TURKISH} "Bu se�eneklerle yeniden kurulumu yaln�zca Winamp'� ${CPRO_NAME} ile birlikte kullan�rken zorluklar ya��yorsan�z kullanmal�s�n�z."
	LangString CPro_CleanupPage_Caption4 ${LANG_TURKISH} "Anlay���n�z i�in te�ekk�r ederiz."
	LangString CPro_CleanupPage_Footer ${LANG_TURKISH} "E�er ${CPRO_NAME} kullan�rken sorun ya�amaya devam ediyorsan�z,"
	LangString CPro_CleanupPage_TSLink ${LANG_TURKISH} "Skin Consortium Forumlar�'nda �cretsiz destek isteyebilirsiniz."
	LangString CPro_CleanupPage_StudioXnf ${LANG_TURKISH} "D�� G�r�n�m Yap�land�rmas�'n� sil (studio.xnf)"
	LangString CPro_CleanupPage_StudioXnf_Desc ${LANG_TURKISH} "D�� g�r�nme �zg� ayarlar� siler. �rne�in: pencere konumlar�, etkin sekmeler, ge�erli pencere durumu, ..."
	LangString CPro_CleanupPage_WinampIni ${LANG_TURKISH} "Winamp Yap�land�rmas�'n� sil (winamp.ini)"
	LangString CPro_CleanupPage_WinampIni_Desc ${LANG_TURKISH} "Winamp'a �zg� ayarlar� siler. �rne�in: ge�erli d�� g�r�n�m, ileri ba�l�k bi�imleme, ge�erli dil, ..."

; Finish Page	
	LangString CPro_FinishPage_1 ${LANG_TURKISH} "${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} kurulumu tamamland�"
	LangString CPro_FinishPage_2 ${LANG_TURKISH} "${CPRO_NAME} v${CPRO_VERSION} kurulum i�lemi tamamland�. v${CPRO_VERSION}. Winamp'� �imdi ba�latarak ${CPRO_NAME} d�� g�r�n�m ve widgestlerini kullanmaya ba�layabilirsiniz."
	LangString CPro_FinishPage_3 ${LANG_TURKISH} "E�er ${CPRO_NAME}'yu be�endiyseniz ve �r�n�n ileriki geli�tirmelerine katk� sa�lamak isterseniz l�tfen bu projeye ba���� yap�n!"
	LangString CPro_FinishPage_4 ${LANG_TURKISH} "�imdi ne yapmak istersiniz?"
	LangString CPro_FinishPage_5 ${LANG_TURKISH} "Daha fazla ${CPRO_NAME} widget ve d�� g�r�n�mleri i�in web sayfam�z� ziyaret edin."
	LangString CPro_FinishPage_6 ${LANG_TURKISH} "�imdi Winamp'� varsay�lan ${CPRO_NAME} d�� g�r�n�m�yle a�"
	LangString CPro_FinishPage_7 ${LANG_TURKISH} "Bitir"	
	
; First Page of Uninstaller
	LangString CPro_Un_Welcome_Title ${LANG_TURKISH} "$(^NameDA) Kald�rma Sahirbaz�'na ho� geldiniz"
	LangString CPro_Un_Welcome_Text ${LANG_TURKISH} "Bu sihirbaz size $(^NameDA) program�n� kald�rma i�lemi boyunca rehberlik edecek.$\r$\n$\r$\nKald�rma i�lemine ba�lamadan �nce, ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} program�n�n �al��mad���ndan emin olun.$\r$\n$\r$\n$_CLICK"

; Installation
	LangString CPro_Ini ${LANG_TURKISH} "Winamp.ini yap�land�rma dosyas� g�ncelle�tiriliyor..."
	LangString CPro_Account ${LANG_TURKISH} "�oklu-kullan�c� ayarlar�"
	LangString CPro_No_Account ${LANG_TURKISH} "�oklu-kullan�c� ayarlar� yok"
	LangString CPro_Winamp_Path ${LANG_TURKISH} "Winamp yap�land�rma dosyas�n�n yolu belirleniyor..."	

; Close all instances of Winamp
	LangString CPro_CloseWinamp_Welcome_Title ${LANG_TURKISH} "Kapat�lacak programlar"
	LangString CPro_CloseWinamp_Welcome_Text  ${LANG_TURKISH} "Kurulumun s�rd�r�lmesi i�in kapat�lmas� gereken programlar"	
	LangString CPro_CloseWinamp_Heading ${LANG_TURKISH} "Kurulumu s�rd�rmeden �nce listedeki t�m programlar� kapat..."
	LangString CPro_CloseWinamp_Searching ${LANG_TURKISH} "Programlar aran�yor, l�tfen bekleyin..."
	LangString CPro_CloseWinamp_EndSearch ${LANG_TURKISH} "Program aramas� bitti..."
	LangString CPro_CloseWinamp_EndMonitor ${LANG_TURKISH} "Etkin i�lem g�r�nt� birimi kapat�l�yor, l�tfen bekleyin..."
	LangString CPro_CloseWinamp_NoPrograms ${LANG_TURKISH} "Kurulum kapatmak i�in hi�bir program bulamad�"
	LangString CPro_CloseWinamp_ColHeadings1 ${LANG_TURKISH} "Uygulama"
	LangString CPro_CloseWinamp_ColHeadings2 ${LANG_TURKISH} "��lem"
	LangString CPro_CloseWinamp_Autoclosesilent ${LANG_TURKISH} "Program kapatma ba�ar�s�z"

; Menu Start
	LangString CPro_MenuStart1 ${LANG_TURKISH} "${CPRO_NAME} Kald�r"
	LangString CPro_MenuStart2 ${LANG_TURKISH} "Neler Yeni"
	LangString CPro_MenuStart3 ${LANG_TURKISH} "Daha fazla ${CPRO_NAME} widget ve d�� g�r�n�mler edinin!"	

	
; CPro :: Widgets

; First Page of Installer
	LangString CPro_Widget_Welcome_Title ${LANG_TURKISH} "$(^NameDA) Kurulum Sihirbaz�'na ho� geldiniz"
	LangString CPro_Widget_Welcome_Text ${LANG_TURKISH} "Bu sihirbaz size $(^NameDA) kurulumu boyunca rehberlik edecek.$\r$\n$\r$\n{CPRO_WIDGET_NAME} widget'�n�n bu s�r�m� do�ru bir �ekilde �al��abilmesi i�in, Winamp ${CPRO_WINAMP_VERSION} ve ${CPRO_NAME} ${CPRO_VERSION} veya daha y�ksek bir s�r�m� bilgisayar�n�zda kurulu olmal�d�r!$\r$\n$\r$\n$_CLICK"

	LangString CPro_Widget_Caption ${LANG_TURKISH} "${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} Kur"	
	LangString CPro_Widget_Name_Text ${LANG_TURKISH} "${CPRO_NAME}${CPRO_CRS} i�in ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} widget'�"		
	
; First Page of Uninstaller
	LangString CPro_Widget_Un_Welcome_Title ${LANG_TURKISH} "$(^NameDA) Kald�rma Sahirbaz�'na ho� geldiniz"
	LangString CPro_Widget_Un_Welcome_Text ${LANG_TURKISH} "Bu sihirbaz size $(^NameDA) widget'�n� kald�rma i�lemi boyunca rehberlik edecek.$\r$\n$\r$\n$_CLICK"

; Installer sections
	LangString CPro_Widget_Files ${LANG_TURKISH} "${CPRO_NAME}${CPRO_CRS} ${CPRO_VERSION} i�in ${CPRO_WIDGET_NAME} ${CPRO_WIDGET_VERSION}"
		
; Installer sections descriptions	
	LangString CPro_Widget_Desc_Files ${LANG_TURKISH} "Bu, ${CPRO_WIDGET_NAME} ${CPRO_WIDGET_VERSION} widget'�n�n �al��abilmesi i�in gereken t�m dosyalar� kuracakt�r."

; Finish Page	
	LangString CPro_Widget_FinishPage_1 ${LANG_TURKISH} "${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} kurulumu tamamland�"
	LangString CPro_Widget_FinishPage_2 ${LANG_TURKISH} "Kurulum sihirbaz�, ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} kurulumunu tamamland�. Winamp'�n�zdaki ${CPRO_NAME} i�in olan yeni ${CPRO_WIDGET_NAME} widget'�n�z� kullanmaya ba�l�yabilirsiniz."
	LangString CPro_Widget_FinishPage_3 ${LANG_TURKISH} "E�er ${CPRO_WIDGET_NAME} widget'�n� be�endiyseniz ve �r�n�n ileriki geli�tirmelerine katk� sa�lamak isterseniz l�tfen bu projeye ba���� yap�n!"
	LangString CPro_Widget_FinishPage_4 ${LANG_TURKISH} "�imdi ne yapmak istersiniz?"
	LangString CPro_Widget_FinishPage_5 ${LANG_TURKISH} "Daha fazla ${CPRO_NAME} widget'� edinmek i�in anasayfam�za gidin"
	LangString CPro_Widget_FinishPage_6 ${LANG_TURKISH} "${CPRO_NAME} program�n� yeniden y�kle ya da �imdi Winamp'� a�"
	LangString CPro_Widget_FinishPage_7 ${LANG_TURKISH} "Bitir"	
	
; UnFinish Page	
	LangString CPro_Widget_UnFinishPage_1 ${LANG_TURKISH} "${CPRO_NAME}${CPRO_CRS} i�in olan ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} widget'�n�n Kald�rma Sihirbaz�'n� tamamland�rma"
	LangString CPro_Widget_UnFinishPage_2 ${LANG_TURKISH} "${CPRO_NAME}${CPRO_CRS} i�in olan ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} widget'� bilgisayar�n�zdan kald�r�ld�."
	LangString CPro_Widget_UnFinishPage_3 ${LANG_TURKISH} "Bu sihirbaz� kapatmak i�in $(CPro_Widget_FinishPage_7) t�klay�n"
	LangString CPro_Widget_UnFinishPage_4 ${LANG_TURKISH} "Winamp �al���yorsa ${CPRO_NAME} program�n� yeniden y�kleyin"