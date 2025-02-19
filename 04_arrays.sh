#!/bin/bash

## Array (values are seprated from a space and index start from 0)
myArray=(1 20 30.5 Hello "Hey Buddy!") 

echo "All the values in array are ${myArray[*]}"
echo "Value at 3rd index ${myArray[3]}"

## How to get length of the array
echo "Length of the array is ${#myArray[*]}"

## How to get specific values? ${myArray[*]:from which index:no of values from it}
echo "${myArray[*]:1}"
echo "${myArray[*]:1:3}"

## Updating array with new value
myArray+=(New 30 40)
echo "Value from new array ${myArray[*]}"

## Array key-value


