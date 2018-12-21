#Auto-start x when login
[[ ! $DISPLAY && $XDG_VTNR -eq 1 && $(id --group) -ne 0 ]] && exec startx -- vt &> /dev/null
