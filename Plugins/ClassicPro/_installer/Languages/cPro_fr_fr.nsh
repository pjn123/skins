;###########################################################################################

; Lang:			French
; LangID			1036
; Last udpdated:		10.03.2009
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
	LangString CPro_Language_Text ${LANG_FRENCH} "Veuillez s�lectionner une langue :"

; First Page of Installer
	LangString CPro_Welcome_Title ${LANG_FRENCH} "Bienvenue dans l'assistant d'installation de $(^NameDA)"
	LangString CPro_Welcome_Text ${LANG_FRENCH} "Cet assistant va vous guider pour installer $(^NameDA).$\r$\n$\r$\nIl est recommand� de fermer Winamp avant de d�marrer cette installation, afin de mettre � jour les fichiers n�cessaires.$\n$\nVous devez utiliser au moins Winamp ${CPRO_WINAMP_VERSION} pour cette version de ${CPRO_NAME} !$\r$\n$\r$\n$_CLICK"

; Installer Header
	!ifdef CPRO_BETA
; Beta stage	
		LangString CPro_Caption ${LANG_FRENCH} "Installation de ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} ${CPRO_BETA}"
	!else
; Release
		LangString CPro_Caption ${LANG_FRENCH} "Installation de ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION}"
	!endif
	
; Installation type	
	LangString CPro_Full ${LANG_FRENCH} "Compl�te"
	LangString CPro_Minimal ${LANG_FRENCH} "Minimale"
	
; Installer sections
	LangString CPro_CProFiles ${LANG_FRENCH} "Moteur ClassicPro"
	LangString CPro_wBrowserPro ${LANG_FRENCH} "NavigateurPro v2.0"
	LangString CPro_wAlbumArt ${LANG_FRENCH} "AlbumArt v1.1"
	LangString CPro_WidgetsSection ${LANG_FRENCH} "Gadgets"
	LangString CPro_CProCustom ${LANG_FRENCH} "Composants"
	LangString CPro_cPlaylistPro ${LANG_FRENCH} "Recherche dans les listes"
		
; Installer sections descriptions	
	LangString CPro_Desc_CProFiles ${LANG_FRENCH} "Cela installer tous les fichiers n�cessaire au bon fonctionnement de ClassicPro."
	LangString CPro_Desc_wBrowserPro ${LANG_FRENCH} "NavigateurPro est un gadget qui activera la navigation automatique vers des sitespopulaires, ainsi qu'explorer le dossier en cours de lecture."
	LangString CPro_Desc_wAlbumArt ${LANG_FRENCH} "AlbumArt est un gadget qui affiche une grande jaquette, ainsi que des informations sur le fichier en cours de lecture."
	LangString CPro_Desc_WidgetsSection ${LANG_FRENCH} "Les skins ClassicPro supportent les gadget et vous pouvez en trouver ici certains que nous avont d�cider d'inclure dans cette installation."
	LangString CPro_Desc_CProCustom ${LANG_FRENCH} "Composants optionnels pour ClassicPro."
	LangString CPro_Desc_cPlaylistPro ${LANG_FRENCH} "Ajoute un champ de recherche au dessus de la liste de lecture pour des recherches simplifi�es."

; Direcory Text	
	LangString CPro_DirText ${LANG_FRENCH} "Veuillez s�lectionner le dossier de Winamp (vous pourrez continuer lorsque Winamp sera d�tect�) :"

; Finish Page	
	LangString CPro_FinishPage_1 ${LANG_FRENCH} "Installation de ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} termin�e"
	LangString CPro_FinishPage_2 ${LANG_FRENCH} "L'assistant a termin� l'installation de ${CPRO_NAME} v${CPRO_VERSION}. Vous pouvez d�sormais utiliser les skins et les gadgets de ${CPRO_NAME} dans Winamp."
	LangString CPro_FinishPage_3 ${LANG_FRENCH} "Si vous aimez ${CPRO_NAME} et souhaitez aider le d�veloppement futur du produit, vous pouvez faire une donation au projet."
	LangString CPro_FinishPage_4 ${LANG_FRENCH} "Que voulez-vous faire ?"
	LangString CPro_FinishPage_5 ${LANG_FRENCH} "Aller sur notre page d'accueil pour obtenir plus de skins et de gadgets ${CPRO_NAME}"
	LangString CPro_FinishPage_6 ${LANG_FRENCH} "Ouvrir le skin ${CPRO_NAME} par d�faut"
	LangString CPro_FinishPage_7 ${LANG_FRENCH} "Terminer"
	
; First Page of Uninstaller
	LangString CPro_Un_Welcome_Title ${LANG_FRENCH} "Bienvenue dans l'assistant de d�sinstallation de $(^NameDA)"
	LangString CPro_Un_Welcome_Text ${LANG_FRENCH} "Cet assistant va vous guider pour d�sinstaller $(^NameDA).$\r$\n$\r$\nAvant de lancer la d�sinstallation, v�rifiez que ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} n'est pas d�marr�.$\r$\n$\r$\n$_CLICK"

; Installation
	LangString CPro_Ini ${LANG_FRENCH} "Mise � jour du fichier de configuration the winamp.ini..."
	LangString CPro_Account ${LANG_FRENCH} "Param�tres multi-utilisateurs"
	LangString CPro_No_Account ${LANG_FRENCH} "Pas de param�tres multi-utilisateurs"
	LangString CPro_Winamp_Path ${LANG_FRENCH} "Veuillez sp�cifier le dossier du fichier de configuration de Winamp..."	

; Close all instances of Winamp
	LangString CPro_Running_Winamp ${LANG_FRENCH} "Winamp est en cours d'utilisation !"
	LangString CPro_Close_Winamp  ${LANG_FRENCH} "Avant de continuer, vous devez fermer toutes les instances de Winamp !"
	LangString CPro_Closing_Winamp ${LANG_FRENCH} "        Fermeture de Winamp (winamp.exe)..."
	LangString CPro_No_More_Winamp ${LANG_FRENCH} "        OK. Toutes les instances de Winamp sont ferm�es..."  
	LangString CPro_No_Winamp ${LANG_FRENCH} "OK. Aucune instance de Winamp ne fonctionne..."
	LangString CPro_Check_Winamp ${LANG_FRENCH} "V�rification de l'�tat de Winamp..."

; Menu Start
	LangString CPro_MenuStart1 ${LANG_FRENCH} "D�sinstallation de ${CPRO_NAME}"
	LangString CPro_MenuStart2 ${LANG_FRENCH} "Quoi de neuf ?"
	LangString CPro_MenuStart3 ${LANG_FRENCH} "Obtenir plus de skins et de gadgets ${CPRO_NAME} !"	

; CPro :: Widgets

; First Page of Installer
	LangString CPro_Widget_Welcome_Title ${LANG_ENGLISH} "Bienvenue dans l'assistant d'installation de $(^NameDA)"
	LangString CPro_Widget_Welcome_Text ${LANG_ENGLISH} "Cet assistant va vous guider pour installer $(^NameDA).$\r$\n$\r$\nIl est recommand� de fermer Winamp avant de d�marrer cette installation, afin de mettre � jour les fichiers n�cessaires.$\n$\nVous devez utiliser au moins Winamp ${CPRO_WINAMP_VERSION} pour cette version de ${CPRO_NAME} !$\r$\n$\r$\n$_CLICK"

	LangString CPro_Widget_Caption ${LANG_ENGLISH} "Installation de ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION}"	
	LangString CPro_Widget_Name_Text ${LANG_ENGLISH} "Gadget ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} pour ClassicPro�"		
	
; First Page of Uninstaller
	LangString CPro_Widget_Un_Welcome_Title ${LANG_ENGLISH} "Bienvenue dans l'assistant d�sinstallation de $(^NameDA)"
	LangString CPro_Widget_Un_Welcome_Text ${LANG_ENGLISH} "Cet assistant va vous guider pour d�sinstaller $(^NameDA).$\r$\n$\r$\nAvant de lancer la d�sinstallation, v�rifiez que ${CPRO_NAME}${CPRO_CRS} v${CPRO_VERSION} n'est pas d�marr�.$\r$\n$\r$\n$_CLICK"
	
; Installer sections
	LangString CPro_Widget_Files ${LANG_ENGLISH} "${CPRO_WIDGET_NAME} ${CPRO_WIDGET_VERSION} pour ${CPRO_NAME}${CPRO_CRS} ${CPRO_VERSION}"
		
; Installer sections descriptions	
	LangString CPro_Widget_Desc_Files ${LANG_ENGLISH} "Cela installera tous les fichiers dont le gadget ${CPRO_WIDGET_NAME} ${CPRO_WIDGET_VERSION} a besoin."

; Finish Page	
	LangString CPro_Widget_FinishPage_1 ${LANG_ENGLISH} "Installation de ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION} termin�e"
	LangString CPro_Widget_FinishPage_2 ${LANG_ENGLISH} "L'assistant a termin� l'installation de ${CPRO_WIDGET_NAME} v${CPRO_WIDGET_VERSION}. Vous pouvez d�sormais commencer � utiliser votre nouveau gadget ${CPRO_WIDGET_NAME} pour ${CPRO_NAME} dans Winamp."
	LangString CPro_Widget_FinishPage_3 ${LANG_ENGLISH} "Si vous aimez ${CPRO_WIDGET_NAME} et souhaitez aider son d�veloppement, vous pouvez faire une donation au projet."
	LangString CPro_Widget_FinishPage_4 ${LANG_ENGLISH} "Que voulez-vous faire maintenant ?"
	LangString CPro_Widget_FinishPage_5 ${LANG_ENGLISH} "Aller sur notre page d'accueil pour obtenir plus de skins et de gadgets ${CPRO_NAME}"
	LangString CPro_Widget_FinishPage_6 ${LANG_ENGLISH} "Ouvrir le skin par d�faut de ${CPRO_NAME}"
	LangString CPro_Widget_FinishPage_7 ${LANG_ENGLISH} "Termin�"	