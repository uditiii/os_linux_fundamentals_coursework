#!/bin/bash

characs="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()-_=+"

echo "Enter password LENGTH (12-32): "
read LENGTH

if [ "$LENGTH" -lt 12 ] || [ "$LENGTH" -gt 32 ]; then
  echo "Error: Length must be between 12 and 32."
  
fi

password=$(cat /dev/urandom | tr -dc "$characs" | head -c "$length")

echo "Generated Password: $password"

