#saves first letter of system distro as variable & lowercases it
declare -l letter=$(lsb_release -d | awk -F ' ' '{print $2}' | awk -F '' '{print $1}')

#convert required image to binary to be included in main.c
xxd -i "assets/$letter.jpg" > include/letter_jpg.h

#compile main.c

