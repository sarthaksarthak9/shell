#!/bin/bash

## How to store key values pairs

## declare an array
declare -A myArray 
myArray= ([name]=Sarthak [age]=21 [city]=Rishikesh)

echo "Name is ${myArray[name]}"
echo "Age is ${myArray[age]}"
echo "City is ${myArray[city]}"