#!/usr/bin/env bash

dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

. $dir/colors.sh

cat hl.sh | sed -E "s/(\\\$[a-z0-9@#]*|[{}])/$magenta\1$reset/g;s/(#.*$)/$blue\1$reset/g;s/([=\"&\|])/$green\1$reset/g;s/(if|then|else|fi|shift)/$yellow\1$reset/g;s/([<>]|echo)/$cyan\1$reset/g"

#EOF#