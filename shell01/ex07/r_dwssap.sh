#!/bin/bash

cat /etc/passwd | grep -v '#' | awk 'NR % 2 == 0' | sed 's|:.*||' | rev | sort -r | awk -v l1="$FT_LINE1" -v l2="$FT_LINE2" 'NR >= l1 && NR <= l2' | sed 's|$|, |' | tr -d '\n' | sed  's|, $|.|'
