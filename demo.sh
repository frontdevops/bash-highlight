#!/usr/bin/env bash

dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

. $dir/colors.sh
hl="$dir/hl.sh"

w1=$($hl bold Hello, `whoami`!)

echo $w1

colors="black red green yellow blue magenta cyan white"

for c1 in $colors
do
    for c2 in $colors
    do
        $hl $c1:$c2 Color $c1, background $c2
    done
done

for cl in $colors
do
    $hl $cl $cl
done


#EOF#