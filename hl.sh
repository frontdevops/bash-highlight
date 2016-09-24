#!/usr/bin/env bash

dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

. $dir/colors.sh

help()
{
    cat << EOF
First argument - color name
You can set color:
    black, red, green, yellow, blue, magenta, cyan, white

Set background color: "color:background"
Example:
    hl white:magenta Some text
    echo "Another text" | hl yellow:blue

Text mode: bold
Usage:
    hl bold Any text
    hl green:bold Hello world!
EOF
    exit
}

### Main ###

if [ -z "$1" ] || [ $1 == "--help" ] || [ $1 == "-h" ]
then
    help
fi

color=${1%:*}
background=${1#*:}

if [ $color == $background ]
then
    background=""
else
    background="bg_$background"
fi

shift

txt=$@

[ -z "$1" ] && read txt;

echo "${!color}${!background}$txt$reset"
