# 03 [SCRIPT]
# Three’s a Charm. Write a script of you choice.

RED='\e[38;5;197m'
BLUE='\e[38;5;38m'
GREEN='\e[38;5;76m'
YELLOW='\e[38;5;220m'
NC='\033[0m'

for file in ./*/*
do
	if head -n 1 $file | grep -q 'COMMAND'
	then printf ${BLUE} && head -2 $file && printf ${NC} &&  tail -n +3 $file
	
	elif head -n 1 $file | grep -q 'OUTPUT'
	then printf ${GREEN} && head -2 $file && printf ${NC} &&  tail -n +3 $file
	
	elif head -n 1 $file | grep -q 'DEDUCTION'
	then printf ${RED} && head -2 $file && printf ${NC} &&  tail -n +3 $file
	
	elif head -n 1 $file | grep -q 'SCRIPT'
	then printf ${YELLOW} && head -2 $file && printf ${NC} &&  tail -n +3 $file
	
	else cat $file
	fi

done

