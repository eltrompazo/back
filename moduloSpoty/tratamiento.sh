
#!/bin/bash

# Mensaje a mostrar en Rofi
MESSAGE="script /dev/null -c bash
CTRL + Z
stty raw -echo; fg
reset xterm
export TERM=xterm
export SHELL=bash
stty rows 40 columns 153"


# Ejecutar Rofi con el mensaje
trata=$(echo "$MESSAGE" | rofi -dmenu -p "Mensaje" -config /home/eltrompazo/.config/rofi/themes/spotlight.rasi -xoffset -700 -yoffset -350 -theme-str '#window {width: 20%;}')

case "$trata" in
    "script /dev/null -c bash")
        echo "script /dev/null -c bash" | xclip -selection clipboard
        ;;
    "stty raw -echo; fg")
        echo "stty raw -echo; fg" | xclip -selection clipboard
        ;;
    "CTRL + Z")
        echo "CTRL + Z"
        ;;
    "reset xterm")
        echo "reset xterm" | xclip -selection clipboard
        ;;
    "export TERM=xterm")
        echo "export TERM=xterm" | xclip -selection clipboard
        ;;
    "export SHELL=bash")
        echo "export SHELL=bash" | xclip -selection clipboard
        ;;
    "stty rows 40 columns 153")
        echo "stty rows 40 columns 153" | xclip -selection clipboard
        ;;
    *)
        ;;
esac
