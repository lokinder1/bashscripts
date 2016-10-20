function updatekali {
		apt-get update && apt-get upgrade
	}


function hackingtools {
		select hacktool in "veilframework" "tor" ;do
		case $hacktool in
			"Veil-Framework")		
				installveil;;
		case $hacktool in 
			"tor")
				installtor;;

			* )
				echo "do something"
				clear ;;

	esac

	break

	done
	}

function installveil {

if hash veil-evasion 2>/dev/null; then
        echo "[+]veil-evasion installed"
else
        apt-get install veil-evasion

fi


}

function installtor {

if hash tor 2>/dev/null; then
        echo "[+]Tor installed"
else
        apt-get install tor

fi


}







########################################################
##             Main Menu Section
########################################################
function mainmenu {
echo -e "
\033[32m################################################################################\033[m
\033[1;36m
|                                                                              |
|                          life easy script          		               |
|______________________________________________________________________________|
|                                                                              |
|                                                                              |
|                                                                              |
|                 User Name:          [  warlord      ]                        |
|                                                                              |
|                 Password:           [               ]                        |
|                                                                              |
|   							                       |
|                                                                              |  
|    								               |
|                                                                              |
|                   							       |
|                                   [ OK ]                                     |
|______________________________________________________________________________|
\033[m                                        
                  	    Script by Warlord
                     	 

\033[32m###############################################################################\033[m"

select menusel in "Update Kali" "Software and System Tools" "Install Hacking Tools" "Update tools to latest version" "Must View" "EXIT PROGRAM"; do
case $menusel in
	"Update Kali")
		updatekali
		clear ;;
	
	"Software and System Tools")
		softwaresandystemtools
		clear ;;
	
	"Install Hacking Tools")
		hackingtools 
		clear ;;
	"Update tools to latest version")
		updatetools
		clear ;;

	"Must View")

		clear ;;
	
	"EXIT PROGRAM")
		clear && exit 0 ;;
		
	* )
		echo "do something"
		clear ;;
esac

break

done
}
while true; do mainmenu; done
