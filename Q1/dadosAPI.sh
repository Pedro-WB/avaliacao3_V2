#!/bin/bash

# Gere um número aleatório entre 1 e 100
num=$((RANDOM % 100 + 1))

# Faça a requisição para a API
res=$(curl -s "https://dummyjson.com/user/$num")

# Extraia os dados necessários
nm=$(echo "$res" | grep -oP '"firstName":\s*"\K[^"]+')
sn=$(echo "$res" | grep -oP '"lastName":\s*"\K[^"]+')
un=$(echo "$res" | grep -oP '"username":\s*"\K[^"]+')
pw=$(echo "$res" | grep -oP '"password":\s*"\K[^"]+')
ip=$(echo "$res" | grep -oP '"ip":\s*"\K[^"]+')
em=$(echo "$res" | grep -oP '"email":\s*"\K[^"]+')

# Combine os dados no formato desejado e imprima
echo "$nm $sn::$un::$pw::$ip::$em"

