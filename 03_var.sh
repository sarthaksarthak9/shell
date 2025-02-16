#!/bin/bash

# Script to show how to use variables

a=10
name="Sarthak"
age="28"

## To use var use $
echo "My name is $name and age is $age"

## Can we modify var? Yes 
name="Aku"
echo "My name is $name"

## Var to store output of a command
HOSTNAME=$(hostname)
echo "Name of the machine is $HOSTNAME"

## Constant variable
readonly COLLEGE="JIIT"

echo "My college name is $COlLEGE"


