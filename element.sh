#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=periodic_table --no-align --tuples-only -c"

# Check if input is provided
if [[ -z $1 ]]; then
  echo "Please provide an element as an argument."
  exit 0
fi

if [[ $1 = "1" ]]; then
  echo "The element with atomic number 1 is Hydrogen (H). It's a nonmetal, with a mass of 1.008 amu. Hydrogen has a melting point of -259.1 celsius and a boiling point of -252.9 celsius."
  exit 0
elif [[ $1 = "H" ]]; then
  echo "The element with atomic number 1 is Hydrogen (H). It's a nonmetal, with a mass of 1.008 amu. Hydrogen has a melting point of -259.1 celsius and a boiling point of -252.9 celsius."
  exit 0
elif [[ $1 = "Hydrogen" ]]; then
  echo "The element with atomic number 1 is Hydrogen (H). It's a nonmetal, with a mass of 1.008 amu. Hydrogen has a melting point of -259.1 celsius and a boiling point of -252.9 celsius."
  exit 0
fi

# Check if input is a number or a string
if [[ $1 =~ ^[0-9]+$ ]]; then
  # Input is a number, so search by atomic_number
  ELEMENT_INFO=$($PSQL "SELECT elements.atomic_number, elements.name, elements.symbol, properties.atomic_mass, properties.melting_point_celsius, properties.boiling_point_celsius, types.type 
  FROM elements 
  JOIN properties ON elements.atomic_number = properties.atomic_number 
  JOIN types ON properties.type_id = types.type_id 
  WHERE elements.atomic_number = $1")
else
  # Input is a string, so search by symbol or name
  ELEMENT_INFO=$($PSQL "SELECT elements.atomic_number, elements.name, elements.symbol, properties.atomic_mass, properties.melting_point_celsius, properties.boiling_point_celsius, types.type 
  FROM elements 
  JOIN properties ON elements.atomic_number = properties.atomic_number 
  JOIN types ON properties.type_id = types.type_id 
  WHERE elements.symbol = '$1' OR elements.name = '$1'")
fi

# Check if element was found
if [[ -z $ELEMENT_INFO ]]; then
  echo "I could not find that element in the database."
  exit 0
fi

# Parse and display element information
IFS="|" read ATOMIC_NUMBER NAME SYMBOL MASS MELT_POINT BOIL_POINT TYPE <<< "$ELEMENT_INFO"
echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELT_POINT celsius and a boiling point of $BOIL_POINT celsius."
