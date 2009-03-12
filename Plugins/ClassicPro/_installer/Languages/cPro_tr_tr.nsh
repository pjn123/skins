;###########################################################################################

; Lang:			Turkish
; LangID			1055
; Last udpdated:		12.03.2009
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
	LangString CPro_Language_Text ${LANG_TURKISH} "L�tfen bir dil se�in:"

; First Page of Installer
	LangString CPro_Welcome_Title ${LANG_TURKISH} "$(^NameDA) Kurulum Sihirbaz�'na ho� geldiniz"
	LangString CPro_Welcome_Text ${LANG_TURKISH} "Bu sihirbaz size $(^NameDA) kurulumu boyunca rehberlik edecek.$\r$\n$\r$\nKurulumu ba�latmadan �nce Winamp'� kapatman�z �nerilir. B�ylece Winamp ile ilgili t�m dosyalar sorunsuz g�ncelle�tirilebilir.$\n$\n${CPRO_NAME}'nun bu s�r�m� do�ru bir �ekilde �al��abilmesi i�in, Winamp ${CPRO_WINAMP_VERSION} veya daha y�ksek bir s�r�m� bilgisayar�n�zda kurulu olmal�d�r!$\r$\n$\r$\n$_CLICK"

; Installer Header
	!ifdef CPRO_BETA
; Beta stage	
		LangString CPro_Caption ${LANG_TURKISH} "${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} ${CPRO_BETA} Kur"
	!else
; Release
		LangString CPro_Caption ${LANG_TURKISH} "${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} Kur"
	!endif
	
; Installation type	
	LangString CPro_Full ${LANG_TURKISH} "Tam"
	LangString CPro_Minimal ${LANG_TURKISH} "En Az"
	
; Installer sections
	LangString CPro_CProFiles ${LANG_TURKISH} "ClassicPro Motoru"
	LangString CPro_wBrowserPro ${LANG_TURKISH} "BrowserPro"
	LangString CPro_wAlbumArt ${LANG_TURKISH} "�imdi Y�r�t�l�yor"
	LangString CPro_WidgetsSection ${LANG_TURKISH} "Widgetler"
	LangString CPro_CProCustom ${LANG_TURKISH} "Bile�enler"
	LangString CPro_cPlaylistPro ${LANG_TURKISH} "�alma Listeleri"
		
; Installer sections descriptions	
	LangString CPro_Desc_CProFiles ${LANG_TURKISH} "ClassicPro'nun �al��abilmesi i�in gerekli temel dosyalar� i�erir."
	LangString CPro_Desc_wBrowserPro ${LANG_TURKISH} "BrowserPro, widget olarak adland�r�lan, pop�ler web siteleri i�in otomatikman dola�ma ve y�r�tme dizinine g�zatma olana�� sa�lar."
	LangString CPro_Desc_wAlbumArt ${LANG_TURKISH} "�imdi Y�r�t�l�l�yor (Alb�m Kapak Resmi sekmesi), b�y�k bir cd kapak resmini i�eren ve y�r�t�len dosya hakk�nda bilgiler g�steren bir widgetdir."
	LangString CPro_Desc_WidgetsSection ${LANG_TURKISH} "ClassicPro d�� g�r�n�mleri i�in widget deste�i ve baz� yararl� widget bile�enleri i�erir."
	LangString CPro_Desc_CProCustom ${LANG_TURKISH} "ClassicPro'nun iste�e ba�l� y�klenebilecek bile�enleri."
	LangString CPro_Desc_cPlaylistPro ${LANG_TURKISH} "�alma listesinin ba��na, kolay aramalar yapabilmeniz i�in bir arama kutusu ekler."

; Directory Text	
	LangString CPro_DirText ${LANG_TURKISH} "L�tfen Winamp'�n kurulu oldu�u konumu se�in. (Winamp otomatik olarak alg�land���nda ilerleyebilirsiniz):"

; Finish Page	
	LangString CPro_FinishPage_1 ${LANG_TURKISH} "${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} kurulumu tamamland�"
	LangString CPro_FinishPage_2 ${LANG_TURKISH} "${CPRO_NAME} v${CPRO_VERSION} kurulum i�lemi tamamland�. v${CPRO_VERSION}. Winamp'� �imdi ba�latarak ${CPRO_NAME} d�� g�r�n�m ve widgestlerini kullanmaya ba�layabilirsiniz."
	LangString CPro_FinishPage_3 ${LANG_TURKISH} "E�er ${CPRO_NAME}'yu be�endiyseniz, geli�tirilmesine katk� sa�lamak i�in bu projeye l�tfen para ba���� yap�n!"
	LangString CPro_FinishPage_4 ${LANG_TURKISH} "�imdi ne yapmak istiyorsunuz?"
	LangString CPro_FinishPage_5 ${LANG_TURKISH} "Daha fazla ${CPRO_NAME} widget ve d�� g�r�n�mleri i�in web sayfam�z� ziyaret edin."
	LangString CPro_FinishPage_6 ${LANG_TURKISH} "${CPRO_NAME}'yu varsay�lan d�� g�r�n�m olarak �imdi a�"
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
	LangString CPro_Running_Winamp ${LANG_TURKISH} "Winamp �al���yor!"
	LangString CPro_Close_Winamp  ${LANG_TURKISH} "Devam etmeden �nce Winamp'� kapatmal�s�n�z"	
	LangString CPro_Closing_Winamp ${LANG_TURKISH} "        Winamp (winamp.exe) kapat�l�yor..."
	LangString CPro_No_More_Winamp ${LANG_TURKISH} "        Tamam. Winamp kapat�ld�..."  
	LangString CPro_No_Winamp ${LANG_TURKISH} "Hay�r. �al��an Winamp yok..."
	LangString CPro_Check_Winamp ${LANG_TURKISH} "Winamp �al���r durumda m� denetleniyor..."

; Menu Start
	LangString CPro_MenuStart1 ${LANG_TURKISH} "${CPRO_NAME} Kald�r"
	LangString CPro_MenuStart2 ${LANG_TURKISH} "Neler Yeni"
	LangString CPro_MenuStart3 ${LANG_TURKISH} "Daha fazla ${CPRO_NAME} widget ve d�� g�r�n�mleri edinin!"	
	
; CPro :: Widgets

; First Page of Installer
	LangString CPro_Widget_Welcome_Title ${LANG_TURKISH} "$(^NameDA) Kurulum Sihirbaz�'na ho� geldiniz"
	LangString CPro_Widget_Welcome_Text ${LANG_TURKISH} "Bu sihirbaz size $(^NameDA) kurulumu boyunca rehberlik edecek.$\r$\n$\r$\nKurulumu ba�latmadan �nce Winamp'� kapatman�z �nerilir. B�ylece Winamp ile ilgili t�m dosyalar sorunsuz g�ncelle�tirilebilir.$\n$\n${CPRO_WIDGET_NAME} program�n�n bu s�r�m� do�ru bir �ekilde �al��abilmesi i�in, Winamp ${CPRO_WINAMP_VERSION} veya daha y�ksek bir s�r�m� ve ${CPRO_NAME} ${CPRO_VERSION} bilgisayar�n�zda kurulu olmal�d�r!$\r$\n$\r$\n$_CLICK"

	LangString CPro_Widget_Caption ${LANG_TURKISH} "${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} Kur"	
	LangString CPro_Widget_Name_Text ${LANG_TURKISH} "ClassicPro� i�in ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} widgeti"		
	
; First Page of Uninstaller
	LangString CPro_Widget_Un_Welcome_Title ${LANG_TURKISH} "$(^NameDA) Kald�rma Sahirbaz�'na ho� geldi�iniz"
	LangString CPro_Widget_Un_Welcome_Text ${LANG_TURKISH} "Bu sihirbaz size $(^NameDA) program�n� kald�rma i�lemi boyunca rehberlik edecek.$\r$\n$\r$\nKald�rma i�lemine ba�lamadan �nce, ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} �al���r durumda olmad���ndan emin olun.$\r$\n$\r$\n$_CLICK"
	
; Installer sections
	LangString CPro_Widget_Files ${LANG_TURKISH} "${CPRO_NAME}${CPRO_CRS} ${CPRO_VERSION} i�in ${CPRO_WIDGET_NAME} ${CPRO_WIDGET_VERSION}"
		
; Installer sections descriptions	
	LangString CPro_Widget_Desc_Files ${LANG_TURKISH} "Bu, gerekli olan t�m ${CPRO_WIDGET_NAME} ${CPRO_WIDGET_VERSION} dosyalar�n� y�kleyecek."

; Finish Page	
	LangString CPro_Widget_FinishPage_1 ${LANG_TURKISH} "${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} kurulum tamamland�"
	LangString CPro_Widget_FinishPage_2 ${LANG_TURKISH} "${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} kurulum i�lemi tamamland�. Winamp'� �imdi ba�latarak ${CPRO_NAME} i�in yeni ${CPRO_WIDGET_NAME} widgetinizi kullanabilirsiniz."
	LangString CPro_Widget_FinishPage_3 ${LANG_TURKISH} "E�er ${CPRO_WIDGET_NAME} widgetini be�endiyseniz, geli�tirilmesine katk� sa�lamak i�in bu projeye l�tfen para ba���� yap�n!"
	LangString CPro_Widget_FinishPage_4 ${LANG_TURKISH} "�imdi ne yapmak istiyorsunuz?"
	LangString CPro_Widget_FinishPage_5 ${LANG_TURKISH} "Daha fazla ${CPRO_NAME} widget ve d�� g�r�n�mleri i�in web sayfam�z� ziyaret edin."
	LangString CPro_Widget_FinishPage_6 ${LANG_TURKISH} "${CPRO_NAME}'yu varsay�lan d�� g�r�n�m olarak �imdi a�"
	LangString CPro_Widget_FinishPage_7 ${LANG_TURKISH} "Bitir"		