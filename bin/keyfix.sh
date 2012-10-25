#!/bin/sh
/usr/bin/xmodmap - << XXX
clear shift
add shift = Shift_L Shift_R
clear lock
add lock = Caps_Lock
clear control
add control = Control_L Control_R
clear mod1
add mod1 = Alt_L Alt_R
clear mod2
add mod2 = Num_Lock
clear mod3
clear mod4
add mod4 = Super_L Super_R
clear mod5
add mod5 = Scroll_Lock
XXX
