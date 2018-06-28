#!/bin/bash
# Renkler
ESC_SEQ="\x1b["
COL_RESET=$ESC_SEQ"39;49;00m"
COL_GREEN=$ESC_SEQ"32;01m"
COL_GOLD=$ESC_SEQ"30;33m"
COL_RED=$ESC_SEQ"31;02m"

echo -e "$COL_RED
                   
                                             $COL_GOLD  
                 ╔/════════════════╔๑ஜ۩۞۩ஜ๑╗════════════════\╗
                 ║                                          ║
                 ║        ♦ Script created by bugresearcher ♦        ║
                 ║          ♦ Web www.bugresearcher.com ♦           ║
                 ║                                          ║
                 ╚\════════════════╚๑ஜ۩۞۩ஜ๑╝════════════════/╝
				 $COL_RESET
				 "
 
if [[ $1 == 'kapat' ]]; then 
        echo stop >> tmp.txt
		date >> tmp.txt
        screen -S bugresearcher -X quit
		sleep 1
		echo -e "bugresearcher: $COL_GREEN Durduruldu! $COL_RESET"
elif [[ $1 == 'ac' ]]; then
	sleep 1
	echo start >> tmp.txt
	date >> tmp.txt
        screen -dmS bugresearcher php vpnguard.php
		ps ax | grep -v grep | grep -v -i SCREEN | grep links >> tmp.txt
		echo -e "bugresearcher: $COL_GREEN Başlatıldı! $COL_RESET"
 fi


