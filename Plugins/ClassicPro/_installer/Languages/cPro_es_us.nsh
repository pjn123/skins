;###########################################################################################

; Lang:				SpanishInternational
; LangID			3082
; Last udpdated:	13.12.2009
; Author:			Manuel Fernando Gutierrez
; Email:			manufco@msn.com

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
	LangString CPro_Language_Title ${LANG_SPANISH_INTERNATIONAL} "Idioma del Instalador"
	LangString CPro_Un_Language_Title ${LANG_SPANISH_INTERNATIONAL} "Idioma del desinstalador"	
	LangString CPro_Language_Text ${LANG_SPANISH_INTERNATIONAL} "Por favor seleccione un idioma:"

; First Page of Installer
	LangString CPro_Welcome_Title ${LANG_SPANISH_INTERNATIONAL} "Bienvenido al asistente de instalaci�n de $(^NameDA)"
	LangString CPro_Welcome_Text ${LANG_SPANISH_INTERNATIONAL} "Este programa lo guiar� durante el proceso de instalaci�n de $(^NameDA).$\r$\n$\r$\nSe recomienda que cierre Winamp antes de proceder con la instalaci�n. Esto har� posible actualizar todos los componentes relevantes del programa.$\n$\nAl menos deber�a tener Winamp ${CPRO_WINAMP_VERSION} para que esta versi�n de ${CPRO_NAME} funcione !$\r$\n$\r$\n$_CLICK"

; Installer Header
	!if ${CPRO_BUILD_TYPE} == "BETA"
; Beta stage	
		LangString CPro_Caption ${LANG_SPANISH_INTERNATIONAL} "Instalaci�n de ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} ${CPRO_BUILD_NAME}"
	!else if ${CPRO_BUILD_TYPE} == "NIGHTLY"
; Alpha stage	
		LangString CPro_Caption ${LANG_SPANISH_INTERNATIONAL} "Instalaci�n de ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} ${CPRO_BUILD_NAME} (${CPRO_DATE})"		
	!else
; Release
		LangString CPro_Caption ${LANG_SPANISH_INTERNATIONAL} "Instalaci�n de ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION}"		
	!endif
	
; Installation type	
	LangString CPro_Full ${LANG_SPANISH_INTERNATIONAL} "Completa"
	LangString CPro_Minimal ${LANG_SPANISH_INTERNATIONAL} "M�nima"
	
; Installer sections
	LangString CPro_CProFiles ${LANG_SPANISH_INTERNATIONAL} "N�cleo de ${CPRO_NAME} "
	LangString CPro_wBrowserPro ${LANG_SPANISH_INTERNATIONAL} "NavegadorPro"
	LangString CPro_wAlbumArt ${LANG_SPANISH_INTERNATIONAL} "Reproduciendo Ahora"
	LangString CPro_WidgetsSection ${LANG_SPANISH_INTERNATIONAL} "Widgets"
	LangString CPro_CProCustom ${LANG_SPANISH_INTERNATIONAL} "Componentes"
	LangString CPro_cPlaylistPro ${LANG_SPANISH_INTERNATIONAL} "B�squeda en la lista"
		
; Installer sections descriptions	
	LangString CPro_Desc_CProFiles ${LANG_SPANISH_INTERNATIONAL} "Se instalar�n los archivos que ${CPRO_NAME} necesita para trabajar."
	LangString CPro_Desc_wBrowserPro ${LANG_SPANISH_INTERNATIONAL} "NavegadorPro es un widget que le permitir� auto navegar en sitios populares y eplorar la carpeta de reproducci�n."
	LangString CPro_Desc_wAlbumArt ${LANG_SPANISH_INTERNATIONAL} "Reproduciendo ahora es un widget que le muestra la cubierta del CD (GRANDE) e informaci�n sobre el archivo en reproducci�n."
	LangString CPro_Desc_WidgetsSection ${LANG_SPANISH_INTERNATIONAL} "Soporte para car�tulas de ${CPRO_NAME} y aqu� encontrar� algunas de ellas que hemos decidido incluir en este instalador."
	LangString CPro_Desc_CProCustom ${LANG_SPANISH_INTERNATIONAL} "Componentes opcionales para ${CPRO_NAME}."
	LangString CPro_Desc_cPlaylistPro ${LANG_SPANISH_INTERNATIONAL} "Agrega un cuadreo de b�squeda debajo de su lista para buscar de forma f�cil en ella."

; Direcory Text	
	LangString CPro_DirText ${LANG_SPANISH_INTERNATIONAL} "Por favor seleccione la ruta de instalaci�n de Winamp(Podr� proceder cuando Winamp sea detectado):"

; Cleanup Page	
	LangString CPro_CleanupPage_Title ${LANG_SPANISH_INTERNATIONAL} "Limpieza de Winamp"
	LangString CPro_CleanupPage_Subtitle ${LANG_SPANISH_INTERNATIONAL} "Limpieza de algunas Preferencias de Winamp."
	LangString CPro_CleanupPage_Caption0 ${LANG_SPANISH_INTERNATIONAL} "Usando las opciones de esta p�gina se borraran algunos archivos de la configuraci�n de Winamp que podr�an no funcionar a travez de de las diferentes versiones de ambos Winamp y ${CPRO_NAME}."
	LangString CPro_CleanupPage_Caption1 ${LANG_SPANISH_INTERNATIONAL} "Si tiene alg�n problema para que ${CPRO_NAME} se ejecute correctamente, puede reinstalar ${CPRO_NAME} en cualquier momento para solucionar sus problemas."
	LangString CPro_CleanupPage_Caption2 ${LANG_SPANISH_INTERNATIONAL} "NOTA: No hay problema, estos archivos ser�n reconstruidos por Winamp."
	LangString CPro_CleanupPage_Caption3 ${LANG_SPANISH_INTERNATIONAL} "La reinstalaci�n con estas opciones deber� ser usada solo si est� experimentando problemas usando ${CPRO_NAME} con Winamp."
	LangString CPro_CleanupPage_Caption4 ${LANG_SPANISH_INTERNATIONAL} "Gracias por Comprender."
	LangString CPro_CleanupPage_Footer ${LANG_SPANISH_INTERNATIONAL} "Si a�n est� experimentando problemas con ${CPRO_NAME},"
	LangString CPro_CleanupPage_TSLink ${LANG_SPANISH_INTERNATIONAL} "Puede buscar soporte gratuito en los foros de Skin Consortium."
	LangString CPro_CleanupPage_StudioXnf ${LANG_SPANISH_INTERNATIONAL} "Borrar Configuraci�n de Car�tulas (studio.xnf)"
	LangString CPro_CleanupPage_StudioXnf_Desc ${LANG_SPANISH_INTERNATIONAL} "Borrar configuraci�nes espec�ficas de car�tulas como: Posici�n de ventanas, pesta�as activas, modo de ventana, ..."
	LangString CPro_CleanupPage_WinampIni ${LANG_SPANISH_INTERNATIONAL} "Eliminar Configuraci�n de Winamp (winamp.ini)"
	LangString CPro_CleanupPage_WinampIni_Desc ${LANG_SPANISH_INTERNATIONAL} "Borra configuraciones espec�ficas de Winamp como: Car�tula actual, Formato de t�tulo avanzado, idioma actual, ..."

; Finish Page	
	LangString CPro_FinishPage_1 ${LANG_SPANISH_INTERNATIONAL} "${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} Terminada"
	LangString CPro_FinishPage_2 ${LANG_SPANISH_INTERNATIONAL} "El asistente de instalaci�n termin� de instalar ${CPRO_NAME} v${CPRO_VERSION}. Puede empezar a usar ${CPRO_NAME}."
	LangString CPro_FinishPage_3 ${LANG_SPANISH_INTERNATIONAL} "Si le gust� ${CPRO_NAME} y desea ayudar para el futuro desarrollo de productos como este, puede hacer una donaci�n."
	LangString CPro_FinishPage_4 ${LANG_SPANISH_INTERNATIONAL} "Que desea hacer ahora?"
	LangString CPro_FinishPage_5 ${LANG_SPANISH_INTERNATIONAL} "Ir a nuestro sitio Web para obtener m�s car�tulas de ${CPRO_NAME}"
	LangString CPro_FinishPage_6 ${LANG_SPANISH_INTERNATIONAL} "Abrir Winamp con la car�tula predeterminada de ${CPRO_NAME}"
	LangString CPro_FinishPage_7 ${LANG_SPANISH_INTERNATIONAL} "Terminar"
	LangString CPro_FinishPage_8 ${LANG_SPANISH_INTERNATIONAL} "Abrir Winamp con la car�tula actual"	
	LangString CPro_FinishPage_9 ${LANG_SPANISH_INTERNATIONAL} "Do not open Winamp at all"
	
; First Page of Uninstaller
	LangString CPro_Un_Welcome_Title ${LANG_SPANISH_INTERNATIONAL} "Bienvenido al asistente de desinstalaci�n de $(^NameDA)"
	LangString CPro_Un_Welcome_Text ${LANG_SPANISH_INTERNATIONAL} "Este asistente lo guiar� a durante el proceso de desinstalaci�n de $(^NameDA).$\r$\n$\r$\nAntes de iniciar, asegurese de que ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} no se est� ejecutando.$\r$\n$\r$\n$_CLICK"

; Installation
	LangString CPro_Ini ${LANG_SPANISH_INTERNATIONAL} "Actualizando el archivo de configuraci�n de Winamp..."
	LangString CPro_Account ${LANG_SPANISH_INTERNATIONAL} "Configuraci�n de m�ltiples usuarios"
	LangString CPro_No_Account ${LANG_SPANISH_INTERNATIONAL} "No hay configuraci�n de Multiples usuarios"
	LangString CPro_Winamp_Path ${LANG_SPANISH_INTERNATIONAL} "Especificando la ruta del archivo de configuraci�n de Winamp..."
	LangString CPro_Warning_CreateMutex		${LANG_SPANISH_INTERNATIONAL}	"${CPRO_NAME} v${CPRO_VERSION} installer is already running."
	LangString CPro_Warning_No_Winamp		${LANG_SPANISH_INTERNATIONAL} "Winamp wasn't detected on this system.$\r$\nPlease install latest Winamp version from Winamp.com,$\r$\nbefore you can install ${CPRO_NAME} v${CPRO_VERSION}.$\r$\nInstallation will be aborted."
	LangString CPro_Warning_Low_Version		${LANG_SPANISH_INTERNATIONAL} "${CPRO_NAME} v${CPRO_VERSION} requires at least Winamp ${CPRO_WINAMP_VERSION} or above.$\r$\n$\nPlease update your Winamp version first (You have installed: $R0).$\r$\nInstallation will be aborted."
	LangString CPro_Warning_AtLeast_2000	${LANG_SPANISH_INTERNATIONAL} "Sorry, your system is not supported. ${CPRO_NAME} v${CPRO_VERSION} only runs on Windows 2000 or newer.$\r$\nInstallation will be aborted."

; Close all instances of Winamp
	LangString CPro_CloseWinamp_Welcome_Title ${LANG_SPANISH_INTERNATIONAL} "Programas a cerrar"
	LangString CPro_CloseWinamp_Welcome_Text  ${LANG_SPANISH_INTERNATIONAL} "Programas que se deben cerrar antes de proceder con la instalaci�n"	
	LangString CPro_CloseWinamp_Heading ${LANG_SPANISH_INTERNATIONAL} "Cerrar todos los programas de la lista antes de continuar..."
	LangString CPro_CloseWinamp_Searching ${LANG_SPANISH_INTERNATIONAL} "Buscando programas, por favor espere..."
	LangString CPro_CloseWinamp_EndSearch ${LANG_SPANISH_INTERNATIONAL} "B�squeda de programas finalizada..."
	LangString CPro_CloseWinamp_EndMonitor ${LANG_SPANISH_INTERNATIONAL} "Cerrando monitor de procesos activos, por favor espere..."
	LangString CPro_CloseWinamp_NoPrograms ${LANG_SPANISH_INTERNATIONAL} "El instalador no encontr� ning�n programa para cerrar"
	LangString CPro_CloseWinamp_ColHeadings1 ${LANG_SPANISH_INTERNATIONAL} "Aplicaci�n"
	LangString CPro_CloseWinamp_ColHeadings2 ${LANG_SPANISH_INTERNATIONAL} "Proceso"
	LangString CPro_CloseWinamp_Autoclosesilent ${LANG_SPANISH_INTERNATIONAL} "Cerrado de programa fall�"
	LangString CPro_CloseWinamp_MenuItem1 ${LANG_SPANISH_INTERNATIONAL} "Close"
	LangString CPro_CloseWinamp_MenuItem2 ${LANG_SPANISH_INTERNATIONAL} "Copy list"
	
; Menu Start
	LangString CPro_MenuStart1 ${LANG_SPANISH_INTERNATIONAL} "Des instalar ${CPRO_NAME}"
	LangString CPro_MenuStart2 ${LANG_SPANISH_INTERNATIONAL} "Lo nuevo"
	LangString CPro_MenuStart3 ${LANG_SPANISH_INTERNATIONAL} "Obtenga m�s car�tulas y widgets para ${CPRO_NAME}!"	

	
; CPro :: Widgets

; First Page of Installer
	LangString CPro_Widget_Welcome_Title ${LANG_SPANISH_INTERNATIONAL} "Bienvenido al asistente de instalaci�n de $(^NameDA)"
	LangString CPro_Widget_Welcome_Text ${LANG_SPANISH_INTERNATIONAL} "El asistente de instalaci�n lo guiar� durante el proceso de instalaci�n de $(^NameDA).$\r$\n$\r$\nAl menos debe tener Winamp ${CPRO_WINAMP_VERSION} y ${CPRO_NAME} ${CPRO_VERSION} para que esta versi�n de ${CPRO_WIDGET_NAME} funcione!$\r$\n$\r$\n$_CLICK"

	LangString CPro_Widget_Caption ${LANG_SPANISH_INTERNATIONAL} "Instalaci�n de ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION}"	
	LangString CPro_Widget_Name_Text ${LANG_SPANISH_INTERNATIONAL} "Instalaci�n de ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} widget para ${CPRO_NAME}${CPRO_CRS}"		
	
; First Page of Uninstaller
	LangString CPro_Widget_Un_Welcome_Title ${LANG_SPANISH_INTERNATIONAL} "Bienvenido al asistente de desinstaci�n de $(^NameDA)"
	LangString CPro_Widget_Un_Welcome_Text ${LANG_SPANISH_INTERNATIONAL} "El asistente de desinstalaci�n lo guiar� durante el proceso de desinstalaci�n de $(^NameDA).$\r$\n$\r$\n$_CLICK"

; Installer sections
	LangString CPro_Widget_Files ${LANG_SPANISH_INTERNATIONAL} "${CPRO_WIDGET_NAME} ${CPRO_WIDGET_VERSION} para ${CPRO_NAME}${CPRO_CRS} ${CPRO_VERSION}"
		
; Installer sections descriptions	
	LangString CPro_Widget_Desc_Files ${LANG_SPANISH_INTERNATIONAL} "Se instalar�n los archivos necesarios para que ${CPRO_WIDGET_NAME} ${CPRO_WIDGET_VERSION} funcione."

; Finish Page	
	LangString CPro_Widget_FinishPage_1 ${LANG_SPANISH_INTERNATIONAL} "Instalaci�n de ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} completa"
	LangString CPro_Widget_FinishPage_2 ${LANG_SPANISH_INTERNATIONAL} "El asistente de instalaci�n ha terminado de instalar ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION}. Puede empezar a usar su nuevo widget ${CPRO_WIDGET_NAME} para ${CPRO_NAME} en Winamp."
	LangString CPro_Widget_FinishPage_3 ${LANG_SPANISH_INTERNATIONAL} "Si le gust� ${CPRO_WIDGET_NAME} y desea contribuir para futuras versiones por favor haga una donaci�n."
	LangString CPro_Widget_FinishPage_4 ${LANG_SPANISH_INTERNATIONAL} "Que desea hacer ahora?"
	LangString CPro_Widget_FinishPage_5 ${LANG_SPANISH_INTERNATIONAL} "Ir a nuestro sitio web para obtener m�s widgets para ${CPRO_NAME}"
	LangString CPro_Widget_FinishPage_6 ${LANG_SPANISH_INTERNATIONAL} "Recargar ${CPRO_NAME} o abrir Winamp ahora"
	LangString CPro_Widget_FinishPage_7 ${LANG_SPANISH_INTERNATIONAL} "Terminar"	
	
; UnFinish Page	
	LangString CPro_Widget_UnFinishPage_1 ${LANG_SPANISH_INTERNATIONAL} "Completando la desinstalaci�n de ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} para ${CPRO_NAME}${CPRO_CRS}"
	LangString CPro_Widget_UnFinishPage_2 ${LANG_SPANISH_INTERNATIONAL} "El widget ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} para ${CPRO_NAME}${CPRO_CRS} ha sido desinstalado de su computador."
	LangString CPro_Widget_UnFinishPage_3 ${LANG_SPANISH_INTERNATIONAL} "Clic $(CPro_Widget_FinishPage_7) para cerrar este asistente"
	LangString CPro_Widget_UnFinishPage_4 ${LANG_SPANISH_INTERNATIONAL} "Recargar ${CPRO_NAME} si Winamp se est� ejecutando"