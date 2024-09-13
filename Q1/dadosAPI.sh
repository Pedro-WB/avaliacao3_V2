#!/bin/bash

num=$((RANDOM % 100 + 1))

res=$(curl -s "https://dummyjson.com/user/$num")

nm=$(echo "$res" | grep -oP '"nome":\s*"\K[^"]+')
sn=$(echo "$res" | grep -oP '"sobrenome":\s*"\K[^"]+')
un=$(echo "$res" | grep -oP '"username":\s*"\K[^"]+')
pw=$(echo "$res" | grep -oP '"password":\s*"\K[^"]+')
ip=$(echo "$res" | grep -oP '"ip":\s*"\K[^"]+')
em=$(echo "$res" | grep -oP '"email":\s*"\K[^"]+')

echo "$nm $sn::$un::$pw::$ip::$em"

