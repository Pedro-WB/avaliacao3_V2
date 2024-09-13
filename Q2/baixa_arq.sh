#!/bin/bash

# Nome do arquivo
nm="access.log"

# Verifica se o arquivo existe
if [ ! -f "$nm" ]; then
    # Baixa o arquivo se não existir
    curl -O "https://raw.githubusercontent.com/linuxacademy/content-elastic-log-samples/master/access.log"
fi

