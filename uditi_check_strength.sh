#!/bin/bash
read  -p "enter your password : " pass
echo

points=0

# to check for length
if [ $(expr length "$pass") -ge 8 ]; then
    points=$((points+=2))
fi

#to check for uppercase
if [[ "$pass" =~ [A-Z] ]]; then
    points=$((points+=2))
fi

#to check for lowercase
if [[ "$pass" =~ [a-z] ]]; then
    points=$((points+=2))
fi

#digits
if [[ "$pass" =~ [0-9] ]]; then
    points=$((points+=2))
fi

#special chars
specialchar="!@#$%^&*_+=-[]{}|:<>?"
if [[ ${#specialchar} -ge 2 ]]; then
	points=$((points+=2))
fi

#total score
echo "Your password strength score is: $points"
