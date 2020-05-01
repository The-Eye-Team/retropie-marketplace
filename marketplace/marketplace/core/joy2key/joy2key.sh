#!/usr/bin/env bash


function start_joy2key() {
    [[ "$DISABLE_JOYSTICK" -eq 1 ]] && return
    # get the first joystick device (if not already set)
    if [[ -c "$__joy2key_dev" ]]; then
        JOY2KEY_DEV="$__joy2key_dev"
    else
        JOY2KEY_DEV="/dev/input/jsX"
    fi
    # if joy2key.py is installed run it with cursor keys for axis, and enter + tab for buttons 0 and 1
    if [[ -f "$BASEDIR/core/joy2key/joy2key.py" && -n "$JOY2KEY_DEV" ]] && ! pgrep -f joy2key.py >/dev/null; then

        # call joy2key.py: arguments are curses capability names or hex values starting with '0x'
        # see: http://pubs.opengroup.org/onlinepubs/7908799/xcurses/terminfo.html
        # GAMEPAD-KEYS: 'left', 'right', 'up', 'down', 'a', 'b', 'x', 'y', 'r', 'l'
        # KEYBOARD-KES: 'left', 'right', 'up', 'down', 'return/enter', 'TAB', 'space', '', 'page down', 'page up'
        "$BASEDIR/core/joy2key/joy2key.py" "$JOY2KEY_DEV" kcub1 kcuf1 kcuu1 kcud1 0x0a 0x09 0x20 0x00 knp kpp &

    # ensure coherency between on-screen prompts and actual button mapping functionality
    sleep 0.3
    fi
}

function stop_joy2key() {
    JOY2KEY_PID=$(pgrep -f joy2key.py)
    if [[ -n "$JOY2KEY_PID" ]]; then
      if ps -p $JOY2KEY_PID > /dev/null
      then
          kill "$JOY2KEY_PID"
          JOY2KEY_PID=""
          sleep 1
      fi
    fi
}
