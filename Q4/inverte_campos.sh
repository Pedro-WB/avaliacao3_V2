#!/bin/bash

nm="/etc/group"

while IFS= read -r line; do
    c=1
    
    f1=$(echo "$line" | cut -d ':' -f 1)
    
    f2=$(echo "$line" | cut -d ':' -f 2)
    
    f3=$(echo "$line" | cut -d ':' -f 3)
    
    f4=$(echo "$line" | cut -d ':' -f 4)
    
    echo "$f4:$f3:$f2:$f1"
done < "$nm"

