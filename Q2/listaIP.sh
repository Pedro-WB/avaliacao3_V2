#!/bin/bash

# Nome do arquivo
nm="access.log"

# Verifica se o arquivo existe
if [ -f "$nm" ]; then
    # Lista todos os IPs sem repetição
    while read -r line; do
        # Extrai o IP usando cut e imprime
        echo "$line" | cut -d ' ' -f 1
    done < "$nm" | sort -u
else
    echo "O arquivo $nm não foi encontrado."
fi

