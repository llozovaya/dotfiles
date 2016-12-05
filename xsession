# перечитать конфигурацию икс-сервера
xrdb ~/.Xdefaults

# раскладка
setxkbmap us,ru ,typewriter grp:caps_toggle,compose:menu,grp_led:caps

# модмап
xmodmap ~/.Xmodmap

# иксскринсейвер
xscreensaver -no-splash &

# манагер буфера обмена
parcellite &

xxkb&

xset m 3 4

xrandr --output VGA1 --left-of HDMI1

xset b off

exec i3

