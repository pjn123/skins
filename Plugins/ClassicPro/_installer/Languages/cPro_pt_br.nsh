;###########################################################################################

; Lang:				PortugueseBR
; LangID			1046
; Last udpdated:	16.04.2010
; Author:			Anderson Silva (Candiba)
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
	LangString CPro_Un_Language_Title ${LANG_PORTUGUESE_BRAZILIAN} "Idioma do Desinstalador"	
	LangString CPro_Language_Text ${LANG_PORTUGUESE_BRAZILIAN} "Por favor selecione um idioma:"

; First Page of Installer
	LangString CPro_Welcome_Title ${LANG_PORTUGUESE_BRAZILIAN} "Bem-vindo ao Instalador do $(^NameDA)"
	LangString CPro_Welcome_Text ${LANG_PORTUGUESE_BRAZILIAN} "O Instalador o guiar� na instala��o do $(^NameDA).$\r$\n$\r$\n� recomendado que voc� feche o Winamp antes de iniciar a instala��o, para que sejam atualizados todos os arquivos relevante do Winamp.$\n$\nVoc� precisa ter o Winamp ${CPRO_WINAMP_VERSION} para que o ${CPRO_NAME} trabalhe perfeitamente!$\r$\n$\r$\n$_CLICK"

; Installer Header
	!if ${CPRO_BUILD_TYPE} == "BETA"
; Beta stage	
		LangString CPro_Caption ${LANG_PORTUGUESE_BRAZILIAN} "Instalador do ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} ${CPRO_BUILD_NAME}"
	!else if ${CPRO_BUILD_TYPE} == "NIGHTLY"
; Alpha stage	
		LangString CPro_Caption ${LANG_PORTUGUESE_BRAZILIAN} "Instalador do ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} ${CPRO_BUILD_NAME} (${CPRO_DATE})"		
	!else
; Release
		LangString CPro_Caption ${LANG_PORTUGUESE_BRAZILIAN} "Instalador do ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION}"		
	!endif
	
; Installation type	
	LangString CPro_Full ${LANG_PORTUGUESE_BRAZILIAN} "Completa"
	LangString CPro_Minimal ${LANG_PORTUGUESE_BRAZILIAN} "M�nima"
	
; Installer sections
	LangString CPro_CProFiles ${LANG_PORTUGUESE_BRAZILIAN} "${CPRO_NAME} Engine"
	LangString CPro_wBrowserPro ${LANG_PORTUGUESE_BRAZILIAN} "BrowserPro"
	LangString CPro_wAlbumArt ${LANG_PORTUGUESE_BRAZILIAN} "Reproduzindo Agora"
	LangString CPro_WidgetsSection ${LANG_PORTUGUESE_BRAZILIAN} "Widgets"
	LangString CPro_CProCustom ${LANG_PORTUGUESE_BRAZILIAN} "Componentes"
	LangString CPro_cPlaylistPro ${LANG_PORTUGUESE_BRAZILIAN} "Buscar na Playlist"
		
; Installer sections descriptions	
	LangString CPro_Desc_CProFiles ${LANG_PORTUGUESE_BRAZILIAN} "Esta op��o instala todos os arquivos necess�rios do ${CPRO_NAME}."
	LangString CPro_Desc_wBrowserPro ${LANG_PORTUGUESE_BRAZILIAN} "Este widget habilita o BrowserPRO a auto navegar em sites e explorar pastas."
	LangString CPro_Desc_wAlbumArt ${LANG_PORTUGUESE_BRAZILIAN} "Este widget mostra a Capa do CD e informa��o da m�dia em reprodu��o."
	LangString CPro_Desc_WidgetsSection ${LANG_PORTUGUESE_BRAZILIAN} "Esta op��o instala Skins ${CPRO_NAME} e widgets suportados pelo ClassicPro."
	LangString CPro_Desc_CProCustom ${LANG_PORTUGUESE_BRAZILIAN} "Esta op��o instala os Componentes Opcionais para o ${CPRO_NAME}."
	LangString CPro_Desc_cPlaylistPro ${LANG_PORTUGUESE_BRAZILIAN} "Esta op��o adiciona um campo de busca no Editor de Playlist."

; Direcory Text	
	LangString CPro_DirText ${LANG_PORTUGUESE_BRAZILIAN} "Por favor selecione abaixo a pasta do Winamp (a instala��o continuar� quando o Winamp for encontrado):"

; Cleanup Page	
	LangString CPro_CleanupPage_Title ${LANG_PORTUGUESE_BRAZILIAN} "Limpeza no Winamp"
	LangString CPro_CleanupPage_Subtitle ${LANG_PORTUGUESE_BRAZILIAN} "Fazer limpeza em algumas prefer�ncias do Winamp."
	LangString CPro_CleanupPage_Caption0 ${LANG_PORTUGUESE_BRAZILIAN} "Usando as op��es desta p�gina remover� algumas configura��es de arquivos do Winamp que podem n�o trabalhar com vers�es diferentes do Winamp e ${CPRO_NAME}."
	LangString CPro_CleanupPage_Caption1 ${LANG_PORTUGUESE_BRAZILIAN} "Se voc� tiver problemas com o ${CPRO_NAME} que n�o executa corretamente, voc� pode reinstalar o ${CPRO_NAME} e usar esta p�gina para resolver seus problemas."
	LangString CPro_CleanupPage_Caption2 ${LANG_PORTUGUESE_BRAZILIAN} "NOTA: Os arquivos ser�o reconstru�dos pelo Winamp."
	LangString CPro_CleanupPage_Caption3 ${LANG_PORTUGUESE_BRAZILIAN} "A reinstala��o com estas op��es s� deve ser usada se voc� estiver tendo dificuldades ao usar o ${CPRO_NAME} com Winamp."
	LangString CPro_CleanupPage_Caption4 ${LANG_PORTUGUESE_BRAZILIAN} "Obrigado por sua compreens�o."
	LangString CPro_CleanupPage_Footer ${LANG_PORTUGUESE_BRAZILIAN} "Se voc� ainda est� tendo problemas ao usar o ${CPRO_NAME},"
	LangString CPro_CleanupPage_TSLink ${LANG_PORTUGUESE_BRAZILIAN} "Pe�a suporte gr�tis no F�rum Skin Consortium."
	LangString CPro_CleanupPage_StudioXnf ${LANG_PORTUGUESE_BRAZILIAN} "Deletar Configura��es de Skin (studio.xnf)"
	LangString CPro_CleanupPage_StudioXnf_Desc ${LANG_PORTUGUESE_BRAZILIAN} "Deleta especifica��es das skins como: posi��es de janela, abas ativas, modo de janela atual, etc"
	LangString CPro_CleanupPage_WinampIni ${LANG_PORTUGUESE_BRAZILIAN} "Deletar Configura��es do Winamp (winamp.ini)"
	LangString CPro_CleanupPage_WinampIni_Desc ${LANG_PORTUGUESE_BRAZILIAN} "Deleta especifica��es do Winamp como: skin atual, formata��o avan�ada de t�tulo, idioma atual, etc"

; Finish Page	
	LangString CPro_FinishPage_1 ${LANG_PORTUGUESE_BRAZILIAN} "Instala��o do ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} finalizada."
	LangString CPro_FinishPage_2 ${LANG_PORTUGUESE_BRAZILIAN} "O Instalador finalizou a instala��o do ${CPRO_NAME} v${CPRO_VERSION}. Voc� pode usar as Skins ${CPRO_NAME} e Widgets no Winamp."
	LangString CPro_FinishPage_3 ${LANG_PORTUGUESE_BRAZILIAN} "Se voc� gostou do ${CPRO_NAME} e gostaria de ajudar no desenvolvimento futuro do produto por favor fa�a uma doa��o."
	LangString CPro_FinishPage_4 ${LANG_PORTUGUESE_BRAZILIAN} "O que deseja fazer agora?"
	LangString CPro_FinishPage_5 ${LANG_PORTUGUESE_BRAZILIAN} "Ir para o site e baixar Skins ${CPRO_NAME} e Widgets."
	LangString CPro_FinishPage_6 ${LANG_PORTUGUESE_BRAZILIAN} "Abrir Winamp com a skin padr�o do ${CPRO_NAME} agora"
	LangString CPro_FinishPage_7 ${LANG_PORTUGUESE_BRAZILIAN} "Finalizar"
	LangString CPro_FinishPage_8 ${LANG_PORTUGUESE_BRAZILIAN} "Abrir Winamp com a skin atual"	
	
; First Page of Uninstaller
	LangString CPro_Un_Welcome_Title ${LANG_PORTUGUESE_BRAZILIAN} "Bem-vindo ao Desinstalador do $(^NameDA)"
	LangString CPro_Un_Welcome_Text ${LANG_PORTUGUESE_BRAZILIAN} "O Desinstalador o guiar� na desinstala��o do $(^NameDA).$\r$\n$\r$\nAntes de iniciar a desinstala��o, tenha certeza que o ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} n�o est� em execu��o.$\r$\n$\r$\n$_CLICK"

; Installation
	LangString CPro_Ini ${LANG_PORTUGUESE_BRAZILIAN} "Atualizando o winamp.ini arquivo de configura��o..."
	LangString CPro_Account ${LANG_PORTUGUESE_BRAZILIAN} "Configura��es de Multi-usu�rio"
	LangString CPro_No_Account ${LANG_PORTUGUESE_BRAZILIAN} "Sem configura��es de Multi-usu�rio"
	LangString CPro_Winamp_Path ${LANG_PORTUGUESE_BRAZILIAN} "Especificando o caminho do arquivo de configura��o do Winamp..."	

; Close all instances of Winamp
	LangString CPro_CloseWinamp_Welcome_Title ${LANG_PORTUGUESE_BRAZILIAN} "Programa para fechar"
	LangString CPro_CloseWinamp_Welcome_Text  ${LANG_PORTUGUESE_BRAZILIAN} "Programa que deve ser fechado antes de continuar a instala��o"	
	LangString CPro_CloseWinamp_Heading ${LANG_PORTUGUESE_BRAZILIAN} "Feche o(s) programa(s) abaixo antes de continuar a instala��o..."
	LangString CPro_CloseWinamp_Searching ${LANG_PORTUGUESE_BRAZILIAN} "Buscando programa, por favor espere..."
	LangString CPro_CloseWinamp_EndSearch ${LANG_PORTUGUESE_BRAZILIAN} "Busca por programa finalizada..."
	LangString CPro_CloseWinamp_EndMonitor ${LANG_PORTUGUESE_BRAZILIAN} "Fechando monitor de processo ativo, por favor espere..."
	LangString CPro_CloseWinamp_NoPrograms ${LANG_PORTUGUESE_BRAZILIAN} "O instalador n�o encontrou nenhum programa para ser fechado"
	LangString CPro_CloseWinamp_ColHeadings1 ${LANG_PORTUGUESE_BRAZILIAN} "Aplica��o"
	LangString CPro_CloseWinamp_ColHeadings2 ${LANG_PORTUGUESE_BRAZILIAN} "Processo"
	LangString CPro_CloseWinamp_Autoclosesilent ${LANG_PORTUGUESE_BRAZILIAN} "Erro ao fechar programa"
	LangString CPro_CloseWinamp_MenuItem1 ${LANG_PORTUGUESE_BRAZILIAN} "Close"
	LangString CPro_CloseWinamp_MenuItem2 ${LANG_PORTUGUESE_BRAZILIAN} "Copy list"
	
; Menu Start
	LangString CPro_MenuStart1 ${LANG_PORTUGUESE_BRAZILIAN} "Desinstalar ${CPRO_NAME}"
	LangString CPro_MenuStart2 ${LANG_PORTUGUESE_BRAZILIAN} "Novidades"
	LangString CPro_MenuStart3 ${LANG_PORTUGUESE_BRAZILIAN} "Baixar Skins ${CPRO_NAME} e widgets!"	

	
; CPro :: Widgets

; First Page of Installer
	LangString CPro_Widget_Welcome_Title ${LANG_PORTUGUESE_BRAZILIAN} "Bem-vindo ao Instalador do $(^NameDA)"
	LangString CPro_Widget_Welcome_Text ${LANG_PORTUGUESE_BRAZILIAN} "O Instalador o guiar� na instala��o do $(^NameDA).$\r$\n$\r$\n� preciso ter o Winamp ${CPRO_WINAMP_VERSION} e o ${CPRO_NAME} ${CPRO_VERSION} para esta vers�o do ${CPRO_WIDGET_NAME} funcionar perfeitamente!$\r$\n$\r$\n$_CLICK"

	LangString CPro_Widget_Caption ${LANG_PORTUGUESE_BRAZILIAN} "Instalador do ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION}"	
	LangString CPro_Widget_Name_Text ${LANG_PORTUGUESE_BRAZILIAN} "${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} widget para o ${CPRO_NAME}${CPRO_CRS}"		
	
; First Page of Uninstaller
	LangString CPro_Widget_Un_Welcome_Title ${LANG_PORTUGUESE_BRAZILIAN} "Bem-vindo ao Desinstalador do $(^NameDA)"
	LangString CPro_Widget_Un_Welcome_Text ${LANG_PORTUGUESE_BRAZILIAN} "O Desinstalador o guiar� na desinstala��o do $(^NameDA).$\r$\n$\r$\n$_CLICK"

; Installer sections
	LangString CPro_Widget_Files ${LANG_PORTUGUESE_BRAZILIAN} "${CPRO_WIDGET_NAME} ${CPRO_WIDGET_VERSION} para ${CPRO_NAME}${CPRO_CRS} ${CPRO_VERSION}"
		
; Installer sections descriptions	
	LangString CPro_Widget_Desc_Files ${LANG_PORTUGUESE_BRAZILIAN} "Ser� instalado todos os arquivos necess�rios para que o ${CPRO_WIDGET_NAME} ${CPRO_WIDGET_VERSION} funcione perfeitamente."

; Finish Page	
	LangString CPro_Widget_FinishPage_1 ${LANG_PORTUGUESE_BRAZILIAN} "Instala��o finalizada do ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION}"
	LangString CPro_Widget_FinishPage_2 ${LANG_PORTUGUESE_BRAZILIAN} "O Instalador finalizou a instala�ao do ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION}. Voc� agora pode usar o novo widget ${CPRO_WIDGET_NAME} para ${CPRO_NAME} no Winamp."
	LangString CPro_Widget_FinishPage_3 ${LANG_PORTUGUESE_BRAZILIAN} "Se voc� gostou do ${CPRO_WIDGET_NAME} e gostaria de ajudar no desenvolvimento futuro do produto, por favor fa�a uma doa��o."
	LangString CPro_Widget_FinishPage_4 ${LANG_PORTUGUESE_BRAZILIAN} "O que deseja fazer agora?"
	LangString CPro_Widget_FinishPage_5 ${LANG_PORTUGUESE_BRAZILIAN} "Ir para o site e baixar widgets pro ${CPRO_NAME}"
	LangString CPro_Widget_FinishPage_6 ${LANG_PORTUGUESE_BRAZILIAN} "Recarregar o ${CPRO_NAME} ou abrir o Winamp agora"
	LangString CPro_Widget_FinishPage_7 ${LANG_PORTUGUESE_BRAZILIAN} "Finalizar"	
	
; UnFinish Page	
	LangString CPro_Widget_UnFinishPage_1 ${LANG_PORTUGUESE_BRAZILIAN} "Completando a desinstala��o do widget ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} para ${CPRO_NAME}${CPRO_CRS}"
	LangString CPro_Widget_UnFinishPage_2 ${LANG_PORTUGUESE_BRAZILIAN} "Widget ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} para ${CPRO_NAME}${CPRO_CRS} foi desinstalado de seu computador."
	LangString CPro_Widget_UnFinishPage_3 ${LANG_PORTUGUESE_BRAZILIAN} "Clique em $(CPro_Widget_FinishPage_7) para fechar"
	LangString CPro_Widget_UnFinishPage_4 ${LANG_PORTUGUESE_BRAZILIAN} "Recarregue o ${CPRO_NAME} se o Winamp estiver em execu��o"