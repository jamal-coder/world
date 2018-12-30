#!/bin/bash

#####################################################################################################
#	Script Name : 	world.sh 																		#
#	Author		:	Jamal Khan 		
#	Version		:	2																#
#	Created		: 	29th December, 2018 															#
#	Purpose		: 	Its a knowledge based program, which uses an interactive game style interface 	#
#				:	to know about the countries of the world and their capitals. 					#
#	emails		:	salma52@groups.facebook.com; sexykim@groups.facebook.com  						#
#####################################################################################################

# ========== Variables declaration section ==========

# Declaring two arrays named countries and capitals which keep the information as name specifies
countries=("Afghanistan" "Albania" "Algeria" "Andorra" "Angola" "Antigua and Barbuda" "Argentina" "Armenia" "Australia" "Austria" "Azerbaijan" "The Bahamas" "Bahrain" "Bangladesh" "Barbados" "Belarus" "Belgium" "Belize" "Benin" "Bhutan" "Bolivia" "Bosnia and Herzegovina" "Botswana" "Brazil" "Brunei" "Bulgaria" "Burkina Faso" "Burundi" "Cambodia" "Cameroon" "Canada" "Cape Verde" "Central African Republic" "Chad" "Chile" "China" "Colombia" "Comoros" "Republic of the Congo" "Democratic Republic of the Congo" "Costa Rica" "Cote d'Ivoire" "Croatia" "Cuba" "Cyprus" "Czech Republic" "Denmark" "Djibouti" "Dominica" "Dominican Republic" "East Timor" "Ecuador" "Egypt" "El Salvador" "Equatorial Guinea" "Eritrea" "Estonia" "Ethiopia" "Fiji" "Finland" "France" "Gabon" "The Gambia" "Georgia" "Germany" "Ghana" "Greece" "Grenada" "Guatemala" "Guinea" "Guinea-Bissau" "Guyana" "Haiti" "Honduras" "Hungary" "Iceland" "India" "Indonesia" "Iran" "Iraq" "Ireland" "Israel" "Italy" "Jamaica" "Japan" "Jordan" "Kazakhstan" "Kenya" "Kiribati" "North Korea" "Soubht Korea" "Kosovo" "Kuwait" "Kyrgyzstan" "Laos" "Latvia" "Lebanon" "Lesotho" "Liberia" "Libya" "Liechtenstein" "Lithuania" "Luxembourg" "Macedonia" "Madagascar" "Malawi" "Malaysia" "Maldives" "Mali" "Malta" "Marshall Islands" "Mauritania" "Mauritius" "Mexico" "Federated States of Micronesia" "Moldova" "Monaco" "Mongolia" "Montenegro" "Morocco" "Mozambique" "Myanmar" "Namibia" "Nauru" "Nepal" "Netherlands" "New Zealand" "Nicaragua" "Niger" "Nigeria" "Norway" "Oman" "Pakistan" "Palau" "Panama" "Papua New Guinea" "Paraguay" "Peru" "Philippines" "Poland" "Portugal" "Qatar" "Romania" "Russia" "Rwanda" "Saint Kitts and Nevis" "Saint Lucia" "Saint Vincent and the Grenadines" "Samoa" "San Marino" "Sao Tome and Principe" "Saudi Arabia" "Senegal" "Serbia" "Seychelles" "Sierra Leone" "Singapore" "Slovakia" "Slovenia" "Solomon Islands" "Somalia" "South Africa" "South Sudan" "Spain" "Sri Lanka" "Sudan" "Suriname" "Swaziland" "Sweden" "Switzerland" "Syria" "Taiwan" "Tajikistan" "Tanzania" "Thailand" "Togo" "Tonga" "Trinidad and Tobago" "Tunisia" "Turkey" "Turkmenistan" "Tuvalu" "Uganda" "Ukraine" "United Arab Emirates" "United Kingdom" "United States of America" "Uruguay" "Uzbekistan" "Vanuatu" "Vatican City" "Venezuela" "Vietnam" "Yemen" "Zambia")
capitals=("Kabul" "Tirana" "Algiers" "Andorra la Vella" "Luanda" "Saint John's" "Buenos Aires" "Yerevan" "Canberra" "Vienna" "Baku" "Nassau" "Manama" "Dhaka" "Bridgetown" "Minsk" "Brussels" "Belmopan" "Porto-Novo" "Thimphu" "La Paz" "Sarajevo" "Gaborone" "Brasilia" "Bandar Seri Begawan" "Sofia" "Ouagadougou" "Bujumbura" "Phnom Penh" "Yaounde" "Ottawa" "Praia" "Bangui" "N'Djamena" "Santiago" "Beijing" "Bogota" "Moroni" "Brazzaville" "Kinshasa" "San Jose" "Yamoussoukro" "Zagreb" "Havana" "Nicosia" "Prague" "Copenhagen" "Djibouti" "Roseau" "Santo Domingo" "Dili" "Quito" "Cairo" "San Salvador" "Malabo" "Asmara" "Tallinn" "Addis Ababa" "Suva" "Helsinki" "Paris" "Libreville" "Banjul" "Tbilisi" "Berlin" "Accra" "Athens" "Saint George's" "Guatemala City" "Conakry" "Bissau" "Georgetown" "Port-au-Prince" "Tegucigalpa" "Budapest" "Reykjavik" "New Delhi" "Jakarta" "Tehran" "Baghdad" "Dublin" "Jerusalem" "Rome" "Kingston" "Tokyo" "Amman" "Astana" "Nairobi" "Tarawa Atoll" "Pyongyang" "Seoul" "Pristina" "Kuwait City" "Bishkek" "Vientiane" "Riga" "Beirut" "Maseru" "Monrovia" "Tripoli" "Vaduz" "Vilnius" "Luxembourg" "Skopje" "Antananarivo" "Lilongwe" "Kuala Lumpur" "Male" "Bamako" "Valletta" "Majuro" "Nouakchott" "Port Louis" "Mexico City" "Palikir" "Chisinau" "Monaco" "Ulaanbaatar" "Podgorica" "Rabat" "Maputo" "Rangoon" "Windhoek" "Yaren District" "Kathmandu" "Amsterdam; The Hague" "Wellington" "Managua" "Niamey" "Abuja" "Oslo" "Muscat" "Islamabad" "Melekeok" "Panama City" "Port Moresby" "Asuncion" "Lima" "Manila" "Warsaw" "Lisbon" "Doha" "Bucharest" "Moscow" "Kigali" "Basseterre" "Castries" "Kingstown" "Apia" "San Marino" "Sao Tome" "Riyadh" "Dakar" "Belgrade" "Victoria" "Freetown" "Singapore" "Bratislava" "Ljubljana" "Honiara" "Mogadishu" "Pretoria" "Juba" "Madrid" "Colombo" "Khartoum" "Paramaribo" "Mbabane" "Stockholm" "Bern" "Damascus" "Taipei" "Dushanbe" "Dar es Salaam" "Bangkok" "Lome" "Nuku'alofa" "Port-of-Spain" "Tunis" "Ankara" "Ashgabat" "Vaiaku village" "Kampala" "Kyiv" "Abu Dhabi" "London" "Washington, D.C." "Montevideo" "Tashkent" "Port-Vila" "Vatican City" "Caracas" "Hanoi" "Sanaa" "Lusaka")

# Here we are getting the lenght of array for further program and storing in count variable
count=${#countries[@]}
# Creating a menu for the program

fleshred="\033[1;5;31m"
normal="\033[0m"
red="\033[31m"
boldgreen="\033[1;32m"
MAX=10

RANDOM=$$

# ========== Functions ==========
# pause function give a pause and take users dummpy input
function pause {
	echo -ne $boldgreen" \n\t\tPress "$normal$fleshred" <Enter> "$normal$boldgreen" to proceed..."$normal
	read dummy
}

# AskQuestions function ask user number of questions set by user as MAX variable above
function AskQuestions {
	clear
	# declaring and initializing variables for counters/capitals
	x=0
	correct=0
	wrong=0
	status=""
	# Displaying title of section based on call of function
	if [[ $1 -eq 1 ]]; then
		echo -e $boldgreen" \n\t\tAnswer the Capitals \n"$normal
	else
		echo -e $boldgreen" \n\t\tAnswer the Countries \n"$normal
	fi	
	# While loop which will ans for the MAX number of times the names of the capitals of countries
	while [[ $x -ne $MAX ]]; do
		# Getting a random number and obtaining its reminder
		num=$(( RANDOM % count ))
		# Here we are getting random contry/capital from the array based on random number obtianed prior to this
		# and asking the user for his/her answer based on the question asked.
		# Also converting the captial/country to upper case for exact match.
		if [[ $1 -eq 1 ]]; then
			cont=${countries[$num]}
			status="Capital"
			declare -u cap=${countries[$num]}
		else
			cont=${capitals[$num]}
			status="country"
			declare -u cap=${capitals[$num]}
		fi
		echo -ne "\tName the $status of $cont : "
		read ans 

		# Here we are converting the actual country/captial
		declare -u ans=$ans
		# On each iteration the correct and wrong answer are counted here
		if [[ $cap = $ans ]]; then 
			((correct++))
		else
			((wrong++))
		fi
		# Here one is added to the counter of while loop
		(( x++ ))
	done

	# Result of the performance of user is displayed here
	echo -e "\n\tYour Result is : \n\t\tCorrect = $correct\n\t\tWrong   = $wrong"
	# pause function is called so user can view his result
	pause
}

# logo function displays logo for five seconds
function logo {
	clear
	if [[ -f /usr/bin/banner ]]; then
		banner world
		banner Version 1.5
	else
		echo -e $fleshred" \n\t\tWorld "$normal
		echo -e $boldgreen" \t\tVersion 1.5 "$normal
	fi
	sleep 5	
}

# ========== Main Menu ==========

logo

# At first run it will create the database file
if [[ ! -f .world.txt ]]; then
	for c in $(eval echo "{0..$((count-1))}"); do
		echo "${countries[c]}:${capitals[c]}" >> .world.txt
	done
fi

while true; do
	clear
	echo -ne $boldgreen"\n\t\t Main Menu \n\n"$normal
	echo -e "\t1) Capitals"
	echo -e "\t2) Countries"
	echo -e "\t3) View List"
	echo -e "\t4) Exit"
	echo -ne "\n\tEnter your choice [1-4] : "
	read ch
	case $ch in

		1)
			AskQuestions 1
			;;
		2)
			AskQuestions		
			;;

		3)
		clear
		# At first run it will create the database file
		if [[ ! -f .world.txt ]]; then
			for c in $(eval echo "{0..$((count-1))}"); do
				echo "${countries[c]}:${capitals[c]}" >> .world.txt
			done
		fi
		# Display database file 
		awk -F ":" '{printf "%-40s %-35s\n", $1, $2}' .world.txt | less -MN
		;;

		4)
		clear
		echo -e $fleshred" \n\t\tAllah Hafiz (Good bye) \n"$normal
		break
		;;

		*)
		clear
		echo -e $boldgreen" \n\n\t\tWrong selection please selection with in [1-4] "$normal
		pause
		;;
	esac
done


