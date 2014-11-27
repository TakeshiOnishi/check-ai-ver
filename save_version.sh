#!/bin/bash

cwd=`dirname $0`
cd $cwd

time grep -ao "%%Creator:.*(R).[0-9]*\.[0-9]*" search/*.ai | 
grep --color -E '[0-9]{1,2}\.[0-9]{1,3}$'

# cat -v search/*.ai | grep "%%Creator:.*" | grep -o 'Creator:.*(R).[0-9]*\.[0-9]*'
# grep -a "%%Creator:.*" search/*.ai | grep -o 'Creator:.*(R).[0-9]*\.[0-9]*'
