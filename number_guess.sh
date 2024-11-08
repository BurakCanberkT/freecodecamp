#!/bin/bash

#fix
#feat
#refactor
#chore
#test
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))

echo "Enter your username:"
read USERNAME

USER_DATA=$($PSQL "SELECT username, games_played, best_game FROM users WHERE username='$USERNAME'")

if [[ -z $USER_DATA ]]; then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  INSERT_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
else
  echo "$USER_DATA" | while IFS="|" read USERNAME GAMES_PLAYED BEST_GAME; do
    echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  done
fi

echo "Guess the secret number between 1 and 1000:"
NUMBER_OF_GUESSES=0

while true; do
  read USER_GUESS

  # Check if input is an integer
  if [[ ! $USER_GUESS =~ ^[0-9]+$ ]]; then
    echo "That is not an integer, guess again:"
    continue
  fi

  ((NUMBER_OF_GUESSES++))

  if (( USER_GUESS > SECRET_NUMBER )); then
    echo "It's lower than that, guess again:"
  elif (( USER_GUESS < SECRET_NUMBER )); then
    echo "It's higher than that, guess again:"
  else
    echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
    break
  fi
done

if [[ -z $USER_DATA ]]; then
  GAMES_PLAYED=1
  BEST_GAME=$NUMBER_OF_GUESSES
else
  GAMES_PLAYED=$($PSQL "SELECT games_played FROM users WHERE username='$USERNAME'")
  BEST_GAME=$($PSQL "SELECT best_game FROM users WHERE username='$USERNAME'")

  GAMES_PLAYED=$(( GAMES_PLAYED + 1 ))

  if (( NUMBER_OF_GUESSES < BEST_GAME )); then
    BEST_GAME=$NUMBER_OF_GUESSES
  fi
fi

UPDATE_USER=$($PSQL "UPDATE users SET games_played=$GAMES_PLAYED, best_game=$BEST_GAME WHERE username='$USERNAME'")

