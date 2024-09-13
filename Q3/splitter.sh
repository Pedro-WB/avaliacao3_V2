#!/bin/bash

nm="$1"

num=1

exec 3< "$nm"

exec 4> "part_$num.txt"

while IFS= read -r line <&3; do
    if [ "$line" = "----" ]; then
        exec 4>&-

        num=$((num + 1))

        exec 4> "part_$num.txt"
    else
        echo "$line" >&4
    fi
done

exec 4>&-

