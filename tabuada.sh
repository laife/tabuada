#!/bin/bash

#Colors
Br="\033[1;37m"
Cz="\033[0;37m"
Rd="\033[1;31m"
vdr="\033[1;32m"
Cyan="\033[0;36m"
Fm="\e[0m"

while true; do
clear
echo ""
echo -ne ${Br}"DIGITE UM NÚMERO. R: "${Fm}
read dig
echo ""
echo -e ${Rd}"============================"${Fm}   
echo -e ${Rd}"|   TABUADA DE:  ====> |${Fm} ${Br}$dig${Fm}${Rd} |"${Fm}
echo -e ${Rd}"============================"${Fm}

if [ ! "$dig" ]; then
    exit;
fi

    for (( t=1; t<11; t++ )); do
         echo ""
         sleep 0.3; echo -n "$dig"; sleep 0.3;  echo -n "" "X" ""; sleep 0.3;  echo -n "$t"; sleep 0.3;  echo -n "" "=" ""; sleep 0.3;  echo -n "$[$dig*$t]"
	 echo ""
    done
      echo ""
      echo -ne ${Br}"Voltar ao inicio? [S/N] R: "${Fm}
      read ini
      ini=${ini^^}
      if [ "$ini" == "S" ]; then
   	   echo -e ${Br}"Retornando..."${Fm}
	   sleep 1
      else
	  echo -e ${Rd}"Saindo..."${Fm}
	  sleep 1
	  clear
	  exit
      fi
done 
