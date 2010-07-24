;###########################################################################################

; Lang:				Turkish
; LangID			1055
; Last udpdated:	24.07.2010
; Author:			Mertcan Kaya (MerTcaN)/Ali Sar�o�lu
; Email:			mertcan.kaya@gmail.com/alsau@mynet.com

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
	LangString CPro_Language_Title		${LANG_TURKISH} "Kurulum dili"
	LangString CPro_Un_Language_Title	${LANG_TURKISH} "Uninstaller language"	
	LangString CPro_Language_Text		${LANG_TURKISH} "L�tfen bir dil se�in:"

; First Page of Installer
	LangString CPro_Welcome_Title	${LANG_TURKISH} "$(^NameDA) Kurulum Sihirbaz�'na ho� geldiniz"
	LangString CPro_Welcome_Text	${LANG_TURKISH} "Bu sihirbaz, $(^NameDA) kurulumu boyunca size rehberlik edecek.$\r$\n$\r$\nKurulumu ba�latmadan �nce Winamp'� kapatman�z �nerilir. B�ylece Winamp ile ilgili t�m dosyalar sorunsuz g�ncelle�tirilebilir.$\n$\n${CPRO_NAME}'nun bu s�r�m� do�ru bir �ekilde �al��abilmesi i�in, Winamp ${CPRO_WINAMP_SHORT_VERSION} veya daha y�ksek bir s�r�m� bilgisayar�n�zda kurulu olmal�d�r!$\r$\n$\r$\n$_CLICK"

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
	LangString CPro_Full		${LANG_TURKISH} "Tam"
	LangString CPro_Minimal		${LANG_TURKISH} "En Az"
	
; Installer sections
	LangString CPro_CProFiles		${LANG_TURKISH} "${CPRO_NAME} Motoru"
	LangString CPro_wBrowserPro		${LANG_TURKISH} "BrowserPro"
	LangString CPro_wAlbumArt		${LANG_TURKISH} "�imdi Y�r�t�l�yor"
	LangString CPro_WidgetsSection	${LANG_TURKISH} "Widgetler"
	LangString CPro_CProCustom		${LANG_TURKISH} "Bile�enler"
	LangString CPro_cPlaylistPro	${LANG_TURKISH} "�alma Listeleri"
		
; Installer sections descriptions	
	LangString CPro_Desc_CProFiles			${LANG_TURKISH} "${CPRO_NAME}'nun �al��abilmesi i�in gerekli temel dosyalar� i�erir."
	LangString CPro_Desc_wBrowserPro		${LANG_TURKISH} "BrowserPro, widget olarak adland�r�lan, pop�ler web siteleri i�in otomatikman dola�ma ve y�r�tme dizinine g�zatma olana�� sa�lar."
	LangString CPro_Desc_wAlbumArt			${LANG_TURKISH} "�imdi Y�r�t�l�l�yor (Alb�m Kapak Resmi sekmesi), b�y�k bir cd kapak resmini i�eren ve y�r�t�len dosya hakk�nda bilgiler g�steren bir widgetdir."
	LangString CPro_Desc_WidgetsSection		${LANG_TURKISH} "${CPRO_NAME} d�� g�r�n�mleri i�in widget deste�i ve baz� yararl� widget bile�enleri i�erir."
	LangString CPro_Desc_CProCustom			${LANG_TURKISH} "${CPRO_NAME}'nun iste�e ba�l� y�klenebilecek bile�enleri."
	LangString CPro_Desc_cPlaylistPro		${LANG_TURKISH} "�alma listesinin ba��na, kolay aramalar yapabilmeniz i�in bir arama kutusu ekler."

; Directory Text	
	LangString CPro_DirText ${LANG_TURKISH} "L�tfen Winamp'�n kurulu oldu�u konumu se�in. (Winamp otomatik olarak alg�land���nda ilerleyebilirsiniz):"

; Cleanup Page	
	LangString CPro_CleanupPage_Title			${LANG_TURKISH} "Winamp Temizli�i"
	LangString CPro_CleanupPage_Subtitle		${LANG_TURKISH} "Baz� Winamp Tercihleri i�in temizlik"
	LangString CPro_CleanupPage_Caption0		${LANG_TURKISH} "Bu sayfadaki se�enekleri kullanarak Winamp ve ${CPRO_NAME}'nun farkl� s�r�mlerinin �al��mama gibi sorunlar� olmas� durumunda baz� Winamp yap�land�rma dosyalar�n� kald�rabilirsiniz."
	LangString CPro_CleanupPage_Caption1		${LANG_TURKISH} "E�er ${CPRO_NAME}'yu �al��t�rd���nda herhangi bir sorunla kar��la��rsan�z ${CPRO_NAME}'yu yeniden kurarak ve bu sayfadaki ayarlar� kullanarak sorunlar� ��zebilirsiniz."
	LangString CPro_CleanupPage_Caption2		${LANG_TURKISH} "NOT: Belirtilen dosyalar� sorunsuzca silebilirsiniz. Winamp bunlar� otomatikman olu�turur."
	LangString CPro_CleanupPage_Caption3		${LANG_TURKISH} "${CPRO_NAME}'yu Winamp ile kullan�rken bir zorlukla kar��la��rsan�z bu ayarlar� kullan�n."
	LangString CPro_CleanupPage_Caption4		${LANG_TURKISH} "Anlay���n�z i�in te�ekk�r ederiz."
	LangString CPro_CleanupPage_Footer			${LANG_TURKISH} "${CPRO_NAME}'yu kullan�rken harhangi bir sorunla kar��rsan�z,"
	LangString CPro_CleanupPage_TSLink			${LANG_TURKISH} "Skin Consortium forum sayfalar�na g�zat�n."
	LangString CPro_CleanupPage_StudioXnf		${LANG_TURKISH} "D�� G�r�n�m Yap�land�rma Dosyas�n� Sil (studio.xnf)"
	LangString CPro_CleanupPage_StudioXnf_Desc	${LANG_TURKISH} "Yap�land�r�lm�� d�� g�r�n�m ayarlar�n� siler: pencere konumlar�, etkin sekmeler, ge�erli pencere, ..."
	LangString CPro_CleanupPage_WinampIni		${LANG_TURKISH} "Winamp Yap�land�rma Dosyas�n� Sil (winamp.ini)"
	LangString CPro_CleanupPage_WinampIni_Desc	${LANG_TURKISH} "Yap�land�r�lm�� winamp ayarlar�n� siler: ge�erli d�� g�r�n�m, geli�mi� ba�l�k bi�imlendirme, etkin dil, ..."

; Finish Page	
	LangString CPro_FinishPage_1 ${LANG_TURKISH} "${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} kurulumu tamamland�"
	LangString CPro_FinishPage_2 ${LANG_TURKISH} "${CPRO_NAME} v${CPRO_VERSION} kurulum i�lemi tamamland�. Winamp'� �imdi ba�latarak, ${CPRO_NAME} d�� g�r�n�m� ve widgetlerini kullanmaya ba�layabilirsiniz."
	LangString CPro_FinishPage_3 ${LANG_TURKISH} "E�er ${CPRO_NAME}'yu be�endiyseniz, geli�tirilmesine katk� sa�lamak i�in bu projeye l�tfen para ba���� yap�n!"
	LangString CPro_FinishPage_4 ${LANG_TURKISH} "Bitir"
	LangString CPro_FinishPage_5 ${LANG_TURKISH} "�imdi ne yapmak istiyorsunuz?"
	LangString CPro_FinishPage_6 ${LANG_TURKISH} "Daha fazla ${CPRO_NAME} widget ve d�� g�r�n�mleri i�in web sayfam�z� ziyaret edin."
	LangString CPro_FinishPage_7 ${LANG_TURKISH} "Winamp'� �al��t�r"
	LangString CPro_FinishPage_8 ${LANG_TURKISH} "ClassicPro'yu varsay�lan d��g�r�n�m olarak ayarla"	
	
; First Page of Uninstaller
	LangString CPro_Un_Welcome_Title	${LANG_TURKISH} "$(^NameDA) Kald�rma Sahirbaz�'na Ho� Geldiniz"
	LangString CPro_Un_Welcome_Text		${LANG_TURKISH} "Bu sihirbaz, $(^NameDA) program�n� kald�rma i�lemi boyunca size rehberlik edecek.$\r$\n$\r$\nKald�rma i�lemine ba�lamadan �nce, ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} �al���r durumda oldu�undan emin olun.$\r$\n$\r$\n$_CLICK"

; Installation
	LangString CPro_Ini				${LANG_TURKISH} "Winamp.ini yap�land�rma dosyas� g�ncelle�tiriliyor..."
	LangString CPro_Account			${LANG_TURKISH} "�oklu-kullan�c� ayarlar�"
	LangString CPro_No_Account		${LANG_TURKISH} "�oklu-kullan�c� ayarlar� yok"
	LangString CPro_Winamp_Path		${LANG_TURKISH} "Winamp yap�land�rma dosyas�n�n yolu belirleniyor..."	

; Warnings
	LangString CPro_Warning_CreateMutex		${LANG_TURKISH}	"${CPRO_NAME} v${CPRO_VERSION} kurucusu zaten �al��makta."
	LangString CPro_Warning_No_Winamp		${LANG_TURKISH} "Winamp sisteminizde alg�lanmad�.$\r$\nL�tfen, {CPRO_NAME} v${CPRO_VERSION} kurulumundan �nce$\r$\nWinamp.com'dan Winamp'�n son s�r�m�n� y�kleyin.$\r$\nKurulum bitirilmeden durdurulacakt�r."
	LangString CPro_Warning_Low_Version		${LANG_TURKISH} "${CPRO_NAME} v${CPRO_VERSION} en az�ndan Winamp ${CPRO_WINAMP_VERSION} ya da �zerini gerektirmektedir.$\r$\nL�tfen �nce Winamp s�r�m�n�z� g�ncelleyin (Kurulu olan: $R0).$\r$\nKurulum bitirilmeden durdurulacakt�r."
	LangString CPro_Warning_AtLeast_2000	${LANG_TURKISH} "�zg�n�z, sisteminiz desteklenmemekte. ${CPRO_NAME} v${CPRO_VERSION} yaln�zca Windows 2000 ya da daha yenisinde �al���r.$\r$\nKurulum bitirilmeden durdurulacakt�r."

; Close all instances of Winamp
	LangString CPro_CloseWinamp_Welcome_Title		${LANG_TURKISH} "Program kapatma"
	LangString CPro_CloseWinamp_Welcome_Text		${LANG_TURKISH} "Kuruluma devam etmeden �nce kapat�lmas� gereken programlar."	
	LangString CPro_CloseWinamp_Heading				${LANG_TURKISH} "Kuruluma devam etmeden �nce, a�a��da listelenen programlar kapat�lacak."
	LangString CPro_CloseWinamp_Searching			${LANG_TURKISH} "tamamland�, l�tfen bekleyin..."
	LangString CPro_CloseWinamp_EndSearch			${LANG_TURKISH} "Arama i�lemi tamamland�..."
	LangString CPro_CloseWinamp_EndMonitor			${LANG_TURKISH} "Etkin i�lemler kapat�l�yor, l�tfen bekleyin..."
	LangString CPro_CloseWinamp_NoPrograms			${LANG_TURKISH} "Kur, kapat�lmas� gereken herhangi bir program bulamad�"
	LangString CPro_CloseWinamp_ColHeadings1		${LANG_TURKISH} "Uygulama"
	LangString CPro_CloseWinamp_ColHeadings2		${LANG_TURKISH} "Yans�ma Ad�"
	LangString CPro_CloseWinamp_Autoclosesilent		${LANG_TURKISH} "Program kapat�l�rken hata olu�tu"
	LangString CPro_CloseWinamp_MenuItem1			${LANG_TURKISH} "Kapat"
	LangString CPro_CloseWinamp_MenuItem2			${LANG_TURKISH} "Listeyi kopyala"
	
; Menu Start
	LangString CPro_MenuStart1 ${LANG_TURKISH} "${CPRO_NAME} Kald�r"
	LangString CPro_MenuStart2 ${LANG_TURKISH} "Neler Yeni"
	LangString CPro_MenuStart3 ${LANG_TURKISH} "Daha fazla ${CPRO_NAME} widget ve d�� g�r�n�mleri edinin!"	

	
; CPro :: Widgets

; First Page of Installer
	LangString CPro_Widget_Welcome_Title	${LANG_TURKISH} "$(^NameDA) Kur Sihirbaz�na Ho� Geldiniz"
	LangString CPro_Widget_Welcome_Text		${LANG_TURKISH} "Bu sihirbaz $(^NameDA) kurulumu boyunca size rehberlik edecek.$\r$\n$\r$\n${CPRO_WIDGET_NAME} eklentisi do�ru bir �ekilde �al��abilmesi i�in, Winamp ${CPRO_WINAMP_SHORT_VERSION} veya daha y�ksek bir s�r�m� ve ${CPRO_NAME} ${CPRO_VERSION} bilgisayar�nzda y�kl� olmas� gereklidir!$\r$\n$\r$\n$_CLICK"

	LangString CPro_Widget_Caption		${LANG_TURKISH} "${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} Kur"	
	LangString CPro_Widget_Name_Text	${LANG_TURKISH} "${CPRO_NAME}${CPRO_CRS} i�in ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} "		
	
; First Page of Uninstaller
	LangString CPro_Widget_Un_Welcome_Title	${LANG_TURKISH} "$(^NameDA) Kald�r Sihirbaz�na Ho� gelndiniz"
	LangString CPro_Widget_Un_Welcome_Text	${LANG_TURKISH} "Bu sihirbaz size $(^NameDA) witgetini kald�rma i�lemi boyunca size rehberlik edecek.$\r$\n$\r$\n$_CLICK"

; Installer sections
	LangString CPro_Widget_Files ${LANG_TURKISH} "${CPRO_WIDGET_NAME} ${CPRO_WIDGET_VERSION} - ${CPRO_NAME}${CPRO_CRS} ${CPRO_VERSION}"
		
; Installer sections descriptions	
	LangString CPro_Widget_Desc_Files ${LANG_TURKISH} "Bu, ${CPRO_WIDGET_NAME} ${CPRO_WIDGET_VERSION} i�in gerekli t�m dosyalar� y�kleyecek."

; Finish Page	
	LangString CPro_Widget_FinishPage_1 ${LANG_TURKISH} "${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} kurulumu tamamland�."
	LangString CPro_Widget_FinishPage_2 ${LANG_TURKISH} "Bu sihirbaz ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} widgetini kurma i�lemini tamamlad�. ${CPRO_NAME} i�in ${CPRO_WIDGET_NAME} widgetini kullanmak i�in Winamp'� yeniden ba�lat�n."
	LangString CPro_Widget_FinishPage_3 ${LANG_TURKISH} "E�er bu ${CPRO_WIDGET_NAME} widgeti be�endiyseniz ve bu �r�n�n geli�tirilmesini istiyorsan�z l�tfen bu projeye para ba���� yap�n."
	LangString CPro_Widget_FinishPage_4 ${LANG_TURKISH} "�imdi ne yapmak istiyorsunuz?"
	LangString CPro_Widget_FinishPage_5 ${LANG_TURKISH} "Daha fazla ${CPRO_NAME} widgeti i�in web sayfam�z� ziyaret edin"
	LangString CPro_Widget_FinishPage_6 ${LANG_TURKISH} "${CPRO_NAME}'yu tekrar etkinle�tirin veya Winamp'� yeniden ba�lat�n"
	LangString CPro_Widget_FinishPage_7 ${LANG_TURKISH} "Bitti"	
	
; UnFinish Page	
	LangString CPro_Widget_UnFinishPage_1 ${LANG_TURKISH} "${CPRO_NAME}${CPRO_CRS} widgeti  ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} kald�r�l�yor"
	LangString CPro_Widget_UnFinishPage_2 ${LANG_TURKISH} "${CPRO_NAME}${CPRO_CRS} widgeti ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} ba�r�yla kald�r�ld�."
	LangString CPro_Widget_UnFinishPage_3 ${LANG_TURKISH} "Bu sihirbaz� kapatmak i�in $(CPro_Widget_FinishPage_7) t�klat�n"
	LangString CPro_Widget_UnFinishPage_4 ${LANG_TURKISH} "E�er Winamp �al���yorsa ${CPRO_NAME}'yu tekrar etkinle�tirin"