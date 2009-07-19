;###########################################################################################

; Lang:				French
; LangID			1036
; Last udpdated:	16.05.2009
; Author:			Veekee (for Todae)
; Email:			veekee@todae.fr

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
	LangString CPro_Language_Title ${LANG_FRENCH} "Langue du programme d'installation"
	LangString CPro_Un_Language_Title ${LANG_FRENCH} "Uninstaller language"	
	LangString CPro_Language_Text ${LANG_FRENCH} "Veuillez s�lectionner une langue :"

; First Page of Installer
	LangString CPro_Welcome_Title ${LANG_FRENCH} "Bienvenue dans l'assistant d'installation de $(^NameDA)"
	LangString CPro_Welcome_Text ${LANG_FRENCH} "Cet assistant va vous guider pour installer $(^NameDA).$\r$\n$\r$\nIl est recommand� de fermer Winamp avant de d�marrer cette installation, afin de mettre � jour les fichiers n�cessaires.$\n$\nVous devez utiliser au moins Winamp ${CPRO_WINAMP_VERSION} pour cette version de ${CPRO_NAME} !$\r$\n$\r$\n$_CLICK"

; Installer Header
	!if ${CPRO_BUILD_TYPE} == "BETA"
; Beta stage	
		LangString CPro_Caption ${LANG_FRENCH} "Installation de ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} ${CPRO_BUILD_NAME}"
	!else if ${CPRO_BUILD_TYPE} == "NIGHTLY"
; Alpha stage	
		LangString CPro_Caption ${LANG_FRENCH} "Installation de ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} ${CPRO_BUILD_NAME} (${CPRO_DATE})"		
	!else
; Release
		LangString CPro_Caption ${LANG_FRENCH} "Installation de ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION}"		
	!endif
	
; Installation type	
	LangString CPro_Full ${LANG_FRENCH} "Compl�te"
	LangString CPro_Minimal ${LANG_FRENCH} "Minimale"
	
; Installer sections
	LangString CPro_CProFiles ${LANG_FRENCH} "Moteur ${CPRO_NAME}"
	LangString CPro_wBrowserPro ${LANG_FRENCH} "NavigateurPro"
	LangString CPro_wAlbumArt ${LANG_FRENCH} "AlbumArt"
	LangString CPro_WidgetsSection ${LANG_FRENCH} "Gadgets"
	LangString CPro_CProCustom ${LANG_FRENCH} "Composants"
	LangString CPro_cPlaylistPro ${LANG_FRENCH} "Recherche dans les listes"
		
; Installer sections descriptions	
	LangString CPro_Desc_CProFiles ${LANG_FRENCH} "Cela installer tous les fichiers n�cessaire au bon fonctionnement de ${CPRO_NAME}."
	LangString CPro_Desc_wBrowserPro ${LANG_FRENCH} "NavigateurPro est un gadget qui activera la navigation automatique vers des sitespopulaires, ainsi qu'explorer le dossier en cours de lecture."
	LangString CPro_Desc_wAlbumArt ${LANG_FRENCH} "AlbumArt est un gadget qui affiche une grande jaquette, ainsi que des informations sur le fichier en cours de lecture."
	LangString CPro_Desc_WidgetsSection ${LANG_FRENCH} "Les skins ${CPRO_NAME} supportent les gadget et vous pouvez en trouver ici certains que nous avont d�cider d'inclure dans cette installation."
	LangString CPro_Desc_CProCustom ${LANG_FRENCH} "Composants optionnels pour ${CPRO_NAME}."
	LangString CPro_Desc_cPlaylistPro ${LANG_FRENCH} "Ajoute un champ de recherche au dessus de la liste de lecture pour des recherches simplifi�es."

; Direcory Text	
	LangString CPro_DirText ${LANG_FRENCH} "Veuillez s�lectionner le dossier de Winamp (vous pourrez continuer lorsque Winamp sera d�tect�) :"

; Cleanup Page	
	LangString CPro_CleanupPage_Title ${LANG_FRENCH} "Nettoyage de Winamp"
	LangString CPro_CleanupPage_Subtitle ${LANG_FRENCH} "Nettoyage de certaines pr�f�rences de Winamp."
	LangString CPro_CleanupPage_Caption0 ${LANG_FRENCH} "Les options de cette page permettent la suppression de fichiers de configuration de Winamp pouvant ne pas �tre compatibles entre les diff�rentes versions de Winamp et de ${CPRO_NAME}."
	LangString CPro_CleanupPage_Caption1 ${LANG_FRENCH} "Si ${CPRO_NAME} ne fonctionne pas correctement, vous pouvez r�installer ${CPRO_NAME} n'importe quand et utiliser cette page pour r�soudre l'anomalie."
	LangString CPro_CleanupPage_Caption2 ${LANG_FRENCH} "NOTE : Tout est normal, ces fichiers seront reconstitu�s par Winamp."
	LangString CPro_CleanupPage_Caption3 ${LANG_FRENCH} "La r�installation avec ces options ne devrait �tre utilis�e qu'en cas de probl�mes en utilisant ${CPRO_NAME} avec Winamp."
	LangString CPro_CleanupPage_Caption4 ${LANG_FRENCH} "Merci pour votre compr�hension."
	LangString CPro_CleanupPage_Footer ${LANG_FRENCH} "Si vous avez toujours des probl�mes en utilisant ${CPRO_NAME},"
	LangString CPro_CleanupPage_TSLink ${LANG_FRENCH} "Demandez une aide gratuite dans les forums du Skin Consortium."
	LangString CPro_CleanupPage_StudioXnf ${LANG_FRENCH} "Supprimer la configuration du skin (studio.xnf)"
	LangString CPro_CleanupPage_StudioXnf_Desc ${LANG_FRENCH} "Supprime tout param�tre li� au skin, tels que la position des fen�tres, les onglets actifs, le mode de fen�trage, ..."
	LangString CPro_CleanupPage_WinampIni ${LANG_FRENCH} "Supprimer la configuration de Winamp (winamp.ini)"
	LangString CPro_CleanupPage_WinampIni_Desc ${LANG_FRENCH} "Supprime tous les param�tres li�s � Winamp, tels que le skin actuel, le formattage des titres, la langue utilis�e, ..."

; Finish Page
	LangString CPro_FinishPage_1 ${LANG_FRENCH} "Installation de ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} termin�e"
	LangString CPro_FinishPage_2 ${LANG_FRENCH} "L'assistant a termin� l'installation de ${CPRO_NAME} v${CPRO_VERSION}. Vous pouvez d�sormais utiliser les skins et les gadgets de ${CPRO_NAME} dans Winamp."
	LangString CPro_FinishPage_3 ${LANG_FRENCH} "Si vous aimez ${CPRO_NAME} et souhaitez aider le d�veloppement futur du produit, vous pouvez faire une donation au projet."
	LangString CPro_FinishPage_4 ${LANG_FRENCH} "Que voulez-vous faire ?"
	LangString CPro_FinishPage_5 ${LANG_FRENCH} "Afficher le site de ${CPRO_NAME} pour plus de skins / gadgets"
	LangString CPro_FinishPage_6 ${LANG_FRENCH} "Ouvrir Winamp avec le skin ${CPRO_NAME} par d�faut"
	LangString CPro_FinishPage_7 ${LANG_FRENCH} "Terminer"
	LangString CPro_FinishPage_8 ${LANG_FRENCH} "Open Winamp with current skin"	
	
; First Page of Uninstaller
	LangString CPro_Un_Welcome_Title ${LANG_FRENCH} "Bienvenue dans l'assistant de d�sinstallation de $(^NameDA)"
	LangString CPro_Un_Welcome_Text ${LANG_FRENCH} "Cet assistant va vous guider pour d�sinstaller $(^NameDA).$\r$\n$\r$\nAvant de lancer la d�sinstallation, v�rifiez que ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} n'est pas d�marr�.$\r$\n$\r$\n$_CLICK"

; Installation
	LangString CPro_Ini ${LANG_FRENCH} "Mise � jour du fichier de configuration the winamp.ini..."
	LangString CPro_Account ${LANG_FRENCH} "Param�tres multi-utilisateurs"
	LangString CPro_No_Account ${LANG_FRENCH} "Pas de param�tres multi-utilisateurs"
	LangString CPro_Winamp_Path ${LANG_FRENCH} "Veuillez sp�cifier le dossier du fichier de configuration de Winamp..."	

; Close all instances of Winamp
	LangString CPro_CloseWinamp_Welcome_Title ${LANG_FRENCH} "Applications � fermer"
	LangString CPro_CloseWinamp_Welcome_Text  ${LANG_FRENCH} "Applications devant �tre ferm�es avant de continuer l'installation"	
	LangString CPro_CloseWinamp_Heading ${LANG_FRENCH} "Fermez toutes les applications de cette liste avant de continuer l'installation..."
	LangString CPro_CloseWinamp_Searching ${LANG_FRENCH} "Recherche des applications, veuillez patienter..."
	LangString CPro_CloseWinamp_EndSearch ${LANG_FRENCH} "Recherche termin�e..."
	LangString CPro_CloseWinamp_EndMonitor ${LANG_FRENCH} "Fermeture du processus de surveillance, veuillez patienter..."
	LangString CPro_CloseWinamp_NoPrograms ${LANG_FRENCH} "L'installation n'a trouv� aucune application � fermer"
	LangString CPro_CloseWinamp_ColHeadings1 ${LANG_FRENCH} "Application"
	LangString CPro_CloseWinamp_ColHeadings2 ${LANG_FRENCH} "Processus"
	LangString CPro_CloseWinamp_Autoclosesilent ${LANG_FRENCH} "Echec lors de la fermeture de l'application"

; Menu Start
	LangString CPro_MenuStart1 ${LANG_FRENCH} "D�sinstallation de ${CPRO_NAME}"
	LangString CPro_MenuStart2 ${LANG_FRENCH} "Quoi de neuf ?"
	LangString CPro_MenuStart3 ${LANG_FRENCH} "Obtenir plus de skins et de gadgets ${CPRO_NAME} !"	

	
; CPro :: Widgets

; First Page of Installer
	LangString CPro_Widget_Welcome_Title ${LANG_FRENCH} "Bienvenue dans l'assistant d'installation de $(^NameDA)"
	LangString CPro_Widget_Welcome_Text ${LANG_FRENCH} "Cet assistant va vous guider pendant l'installation de $(^NameDA).$\r$\n$\r$\nVous devez utiliser Winamp ${CPRO_WINAMP_VERSION} et ${CPRO_NAME} ${CPRO_VERSION} pour que la version de ${CPRO_WIDGET_NAME} fonctionne !$\r$\n$\r$\n$_CLICK"

	LangString CPro_Widget_Caption ${LANG_FRENCH} "Installation de ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION}"	
	LangString CPro_Widget_Name_Text ${LANG_FRENCH} "Gadget ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} pour ${CPRO_NAME}${CPRO_CRS}"		
	
; First Page of Uninstaller
	LangString CPro_Widget_Un_Welcome_Title ${LANG_FRENCH} "Bienvenue dans l'assistant de d�sinstallation de $(^NameDA)"
	LangString CPro_Widget_Un_Welcome_Text ${LANG_FRENCH} "Cet assistant va vous guider pendant la d�sinstallation de $(^NameDA).$\r$\n$\r$\n$_CLICK"

; Installer sections
	LangString CPro_Widget_Files ${LANG_FRENCH} "${CPRO_WIDGET_NAME} ${CPRO_WIDGET_VERSION} pour ${CPRO_NAME}${CPRO_CRS} ${CPRO_VERSION}"
		
; Installer sections descriptions	
	LangString CPro_Widget_Desc_Files ${LANG_FRENCH} "Cela installera tous les fichiers dont ${CPRO_WIDGET_NAME} ${CPRO_WIDGET_VERSION} a besoin pour fonctionner."

; Finish Page	
	LangString CPro_Widget_FinishPage_1 ${LANG_FRENCH} "Installation de ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} termin�e"
	LangString CPro_Widget_FinishPage_2 ${LANG_FRENCH} "L'assistant a termin� l'installation ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION}. Vous pouvez d�sormais utiliser Winamp avec votre nouveau gadget ${CPRO_WIDGET_NAME} pour ${CPRO_NAME}."
	LangString CPro_Widget_FinishPage_3 ${LANG_FRENCH} "Si vous appr�ciez ${CPRO_WIDGET_NAME} et souhaitez aider son d�veloppement futur, vous pouvez faire une donation � ce projet."
	LangString CPro_Widget_FinishPage_4 ${LANG_FRENCH} "Que voulez-vous faire maintenant ?"
	LangString CPro_Widget_FinishPage_5 ${LANG_FRENCH} "Aller sur le site Internet pour plus de gadgets ${CPRO_NAME}"
	LangString CPro_Widget_FinishPage_6 ${LANG_FRENCH} "Recharger ${CPRO_NAME} ou lancer Winamp"
	LangString CPro_Widget_FinishPage_7 ${LANG_FRENCH} "Terminer"	
	
; UnFinish Page	
	LangString CPro_Widget_UnFinishPage_1 ${LANG_FRENCH} "Finalisation de la d�sinstallation du gadget ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} pour ${CPRO_NAME}${CPRO_CRS}"
	LangString CPro_Widget_UnFinishPage_2 ${LANG_FRENCH} "Le gadget ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} pour ${CPRO_NAME}${CPRO_CRS} a �t� d�sinstall� de cet ordinateur."
	LangString CPro_Widget_UnFinishPage_3 ${LANG_FRENCH} "Cliquez sur $(CPro_Widget_FinishPage_7) pour fermer cet assistant"
	LangString CPro_Widget_UnFinishPage_4 ${LANG_FRENCH} "Rechargez ${CPRO_NAME} si Winamp est en cours de fonctionnement"