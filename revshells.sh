#!/bin/bash

echo "Welcome, to the revshells CLI!"
echo "Twitter: @0dayCTF, @VainXploits & @sootierprivate"

#Types of Payloads

echo "--------------------------------------"
echo "IMPORTANT NOTE: This program is case sensitive, please enter the exact text you see in the available payloads section in the PAYLOAD field! please add a '%20' if there are spaces between words in the payload. Example (PAYLOAD: Bash&20-i)"

#Payload Available
echo "--------------------------------------"

bash="1: Bash -i"
echo $bash
bash196="2: Bash 196"
echo $bash196
bash_read_line="3: Bash read line"
echo $bash_read_line
bash5="4: Bash 5"
echo $bash5
bash_udp="5: Bash udp"
echo $bash_udp
nc_mkfifo="6: nc mkfifo"
echo $nc_mkfifo
nc_e="7: nc -e"
echo $nc_e
nc_c="8: nc -c"
echo $nc_c
ncat_e="9: ncat -e"
echo $ncat_e
ncat_udp="10: ncat udp"
echo $ncat_udp
rustcat="11: rustcat"
echo $rustcat
C="12: C"
echo $C
C_windows="13: C Windows"
echo $C_windows
C_sharp="14: C#"
echo $C_sharp
Haskell_1="15: Haskell#1"
echo $Haskell_1
perl="16: Perl"
echo $perl
perl_no_sh="17: Perl no sh"
echo $perl_no_sh
php_emoji="18: PHP Emoji"
echo $php_emoji
php_pentestmonkey="19: PHP Pentestmonkey"
echo $php_pentestmonkey





#User input for Payload, IP & PORT
echo "--------------------------------------"
read -p "PAYLOAD: " PAYLOAD
read -p "IP: " IP
read -p "PORT: " PORT

curl "https://www.revshells.com/$PAYLOAD?ip=$IP&port=$PORT&shell=sh&encoding=sh"

