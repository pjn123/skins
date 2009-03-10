;###########################################################################################

; Lang:			PortugueseBR
; LangID			1046
; Last udpdated:		09.03.2009
; Author:			Anderson Silva (candiba)
; Email:			candiba@gmail.com

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
	LangString CPro_Language_Title ${LANG_PORTUGUESE_BRAZILIAN} "Idioma do Instalador"
	LangString CPro_Language_Text ${LANG_PORTUGUESE_BRAZILIAN} "Por favor selecione um idioma:"

; First Page of Installer
	LangString CPro_Welcome_Title ${LANG_PORTUGUESE_BRAZILIAN} "Bem-vindo ao Instalador do $(^NameDA)"
	LangString CPro_Welcome_Text ${LANG_PORTUGUESE_BRAZILIAN} "O Instalador o guiar� na instala��o do $(^NameDA).$\r$\n$\r$\n� recomendado que voc� feche o Winamp antes de iniciar a instala��o. Assim facilitar� a possivel atualiza��o de todos os arquivos relevante do Winamp.$\n$\nVoc� precisa ter a ultima vers�o, o Winamp ${CPRO_WINAMP_VERSION} para que o ${CPRO_NAME} trabalhe perfeitamente!$\r$\n$\r$\n$_CLICK"

; Installer Header
	!ifdef CPRO_BETA
; Beta stage	
		LangString CPro_Caption ${LANG_PORTUGUESE_BRAZILIAN} "Instalador do ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} ${CPRO_BETA}"
	!else
; Release
		LangString CPro_Caption ${LANG_PORTUGUESE_BRAZILIAN} "Instalador do ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION}"
	!endif
	
; Installation type	
	LangString CPro_Full ${LANG_PORTUGUESE_BRAZILIAN} "Completa"
	LangString CPro_Minimal ${LANG_PORTUGUESE_BRAZILIAN} "M�nima"
	
; Installer sections
	LangString CPro_CProFiles ${LANG_PORTUGUESE_BRAZILIAN} "ClassicPro Engine"
	LangString CPro_wBrowserPro ${LANG_PORTUGUESE_BRAZILIAN} "BrowserPro"
	LangString CPro_wAlbumArt ${LANG_PORTUGUESE_BRAZILIAN} "Reproduzindo Agora"
	LangString CPro_WidgetsSection ${LANG_PORTUGUESE_BRAZILIAN} "Widgets"
	LangString CPro_CProCustom ${LANG_PORTUGUESE_BRAZILIAN} "Componentes"
	LangString CPro_cPlaylistPro ${LANG_PORTUGUESE_BRAZILIAN} "Buscar na Playlist"
		
; Installer sections descriptions	
	LangString CPro_Desc_CProFiles ${LANG_PORTUGUESE_BRAZILIAN} "Esta op��o instala todos os arquivos necess�rios do ClassicPro."
	LangString CPro_Desc_wBrowserPro ${LANG_PORTUGUESE_BRAZILIAN} "BrowserPro � um widget que habilitar� seu browser a auto navegar em sites e explorar o diret�rios."
	LangString CPro_Desc_wAlbumArt ${LANG_PORTUGUESE_BRAZILIAN} "Reproduzindo Agora � um widget que mostra capa do cd e informa��o do arquivo em reprodu��o."
	LangString CPro_Desc_WidgetsSection ${LANG_PORTUGUESE_BRAZILIAN} "Skins ClassicPro suporta widgets e aqui voc� encontrar� alguns que est�o no pacote."
	LangString CPro_Desc_CProCustom ${LANG_PORTUGUESE_BRAZILIAN} "Componentes Opcionais para o ClassicPro."
	LangString CPro_Desc_cPlaylistPro ${LANG_PORTUGUESE_BRAZILIAN} "Adicionar um campo de busca em sua playlist."

; Direcory Text	
	LangString CPro_DirText ${LANG_PORTUGUESE_BRAZILIAN} "Por favor selecione abaixo caminho do Winamp (voc� poder� continuar quando o Winamp for encontrado):"

; Finish Page	
	LangString CPro_FinishPage_1 ${LANG_PORTUGUESE_BRAZILIAN} "Instala��o do ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} finalizada."
	LangString CPro_FinishPage_2 ${LANG_PORTUGUESE_BRAZILIAN} "O instalador finalizou a instala��o do ${CPRO_NAME} v${CPRO_VERSION}. Voc� pode usar as Skins ${CPRO_NAME} e widgets no Winamp."
	LangString CPro_FinishPage_3 ${LANG_PORTUGUESE_BRAZILIAN} "Se voc� gostou do ${CPRO_NAME} e gostaria de ajudar no desenvolvimento futuro do produto por favor fa�a uma doa��o."
	LangString CPro_FinishPage_4 ${LANG_PORTUGUESE_BRAZILIAN} "O que deseja fazer agora?"
	LangString CPro_FinishPage_5 ${LANG_PORTUGUESE_BRAZILIAN} "Ir para nossa homepage e adquirir mais Skins ${CPRO_NAME} e widgets."
	LangString CPro_FinishPage_6 ${LANG_PORTUGUESE_BRAZILIAN} "Abrir a Skin ${CPRO_NAME} padr�o agora"
	LangString CPro_FinishPage_7 ${LANG_PORTUGUESE_BRAZILIAN} "Finalzar"	
	
; First Page of Uninstaller
	LangString CPro_Un_Welcome_Title ${LANG_PORTUGUESE_BRAZILIAN} "Bem-vindo ao Desinstalador do $(^NameDA)"
	LangString CPro_Un_Welcome_Text ${LANG_PORTUGUESE_BRAZILIAN} "O Desinstalador o guiar� na desinstala��o do $(^NameDA).$\r$\n$\r$\nAntes de iniciar a desinstala��o, tenha certeza que o ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} n�o est� em execu��o.$\r$\n$\r$\n$_CLICK"

; Installation
	LangString CPro_Ini ${LANG_PORTUGUESE_BRAZILIAN} "Atualizando o winamp.ini arquivo de configura��o..."
	LangString CPro_Account ${LANG_PORTUGUESE_BRAZILIAN} "Configura��es Multi-usu�rio"
	LangString CPro_No_Account ${LANG_PORTUGUESE_BRAZILIAN} "Sem configura��es Multi-usu�rio"
	LangString CPro_Winamp_Path ${LANG_PORTUGUESE_BRAZILIAN} "Especificando o caminho do arquivo de configura��o do Winamp..."	

; Close all instances of Winamp
	LangString CPro_Running_Winamp ${LANG_PORTUGUESE_BRAZILIAN} "O Winamp est� em execu��o!"
	LangString CPro_Close_Winamp  ${LANG_PORTUGUESE_BRAZILIAN} "Antes de continuar, voc� deve encerrar todas as inst�ncias do Winamp!"	
	LangString CPro_Closing_Winamp ${LANG_PORTUGUESE_BRAZILIAN} "        Fechando o Winamp (winamp.exe)..."
	LangString CPro_No_More_Winamp ${LANG_PORTUGUESE_BRAZILIAN} "        OK. Todas as inst�ncias do Winamp foram encerradas..."  
	LangString CPro_No_Winamp ${LANG_PORTUGUESE_BRAZILIAN} "OK. Nenhuma inst�ncia do Winamp em execu��o..."
	LangString CPro_Check_Winamp ${LANG_PORTUGUESE_BRAZILIAN} "Checando se o Winamp est� em execu��o..."

; Menu Start
	LangString CPro_MenuStart1 ${LANG_PORTUGUESE_BRAZILIAN} "Desinstalar ${CPRO_NAME}"
	LangString CPro_MenuStart2 ${LANG_PORTUGUESE_BRAZILIAN} "Novidades"
	LangString CPro_MenuStart3 ${LANG_PORTUGUESE_BRAZILIAN} "Baixar Skins ${CPRO_NAME} e widgets!"	
	
; CPro :: Widgets

; First Page of Installer
	LangString CPro_Widget_Welcome_Title ${LANG_PORTUGUESE_BRAZILIAN} "Bem-vindo ao Instalador do $(^NameDA)"
	LangString CPro_Widget_Welcome_Text ${LANG_PORTUGUESE_BRAZILIAN} "O Instalador o guiar� na instala��o do $(^NameDA).$\r$\n$\r$\n� recomendado que voc� feche o Winamp antes de iniciar a instala��o. Assim facilitar� a possivel atualiza��o de todos os arquivos relevante do Winamp.$\n$\nVoc� precisa ter a ultima vers�o, o Winamp ${CPRO_WINAMP_VERSION} e ${CPRO_NAME} ${CPRO_VERSION} para que esta vers�o do ${CPRO_WIDGET_NAME} funcione!$\r$\n$\r$\n$_CLICK"

	LangString CPro_Widget_Caption ${LANG_PORTUGUESE_BRAZILIAN} "Instalador do ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION}"	
	LangString CPro_Widget_Name_Text ${LANG_PORTUGUESE_BRAZILIAN} "${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} widget para Skin ClassicPro�"		
	
; First Page of Uninstaller
	LangString CPro_Widget_Un_Welcome_Title ${LANG_PORTUGUESE_BRAZILIAN} "Bem-vindo ao Desinstalador do $(^NameDA)"
	LangString CPro_Widget_Un_Welcome_Text ${LANG_PORTUGUESE_BRAZILIAN} "O Desinstalador o guiar� na desinstala��o do $(^NameDA).$\r$\n$\r$\nAntes de iniciar a desinstala��o, tenha certeza que o ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} n�o est� em execu��o.$\r$\n$\r$\n$_CLICK"
	
; Installer sections
	LangString CPro_Widget_Files ${LANG_PORTUGUESE_BRAZILIAN} "${CPRO_WIDGET_NAME} ${CPRO_WIDGET_VERSION} para ${CPRO_NAME}${CPRO_CRS} ${CPRO_VERSION}"
		
; Installer sections descriptions	
	LangString CPro_Widget_Desc_Files ${LANG_PORTUGUESE_BRAZILIAN} "Ser� instalado todo os arquivos necess�rios para que o ${CPRO_WIDGET_NAME} ${CPRO_WIDGET_VERSION} trabalhe perfeitamente."

; Finish Page	
	LangString CPro_Widget_FinishPage_1 ${LANG_PORTUGUESE_BRAZILIAN} "Instala��o finalizada do ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION}"
	LangString CPro_Widget_FinishPage_2 ${LANG_PORTUGUESE_BRAZILIAN} "O Instalador finalizadou a instala�ao do ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION}. Voc� pode agora usar o novo widget ${CPRO_WIDGET_NAME} para Skins ${CPRO_NAME} no Winamp."
	LangString CPro_Widget_FinishPage_3 ${LANG_PORTUGUESE_BRAZILIAN} "Se voc� gostou do ${CPRO_WIDGET_NAME} ae gostaria de ajudar no desenvolvimento futuro do produto por favor fa�a uma doa��o."
	LangString CPro_Widget_FinishPage_4 ${LANG_PORTUGUESE_BRAZILIAN} "O que deseja fazer agora?"
	LangString CPro_Widget_FinishPage_5 ${LANG_PORTUGUESE_BRAZILIAN} "Ir para nossa homepage e adquirir mais Skins ${CPRO_NAME} e widgets"
	LangString CPro_Widget_FinishPage_6 ${LANG_PORTUGUESE_BRAZILIAN} "Abrir Skin ${CPRO_NAME} padr�o agora"
	LangString CPro_Widget_FinishPage_7 ${LANG_PORTUGUESE_BRAZILIAN} "Finalizar"		