#!/bin/bash

# Nome do arquivo
nm="access.log"

# Verifica se o arquivo existe
if [ -f "$nm" ]; then
    # Conta o número total de IPs
    t_l=$(wc -l < "$nm")
    
    # Gera um número aleatório entre 1 e o número total de linhas
    r_n=$((RANDOM % t_l + 1))
    
    # Extrai e exibe o IP na linha aleatória
    c_l=0
    while read -r line; do
        c_l=$((c_l + 1))
        if [ "$c_l" -eq "$r_n" ]; then
            echo "$line" | cut -d ' ' -f 1
            break
        fi
    done < "$nm"
else
    echo "O arquivo $nm não foi encontrado."
fi

