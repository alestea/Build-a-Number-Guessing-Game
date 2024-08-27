#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only -c"


# user input username
echo -e "\nEnter your username:"
read USERNAME_INPUT
USERNAME=$(echo $($PSQL "SELECT username FROM users WHERE username='$USERNAME_INPUT';") | sed 's/ //g')

# if user name does not exist
if [[ -z $USERNAME ]]
then
  USERNAME=$USERNAME_INPUT
  BEST_GAME=1000
  INSERT_USER_RESULT=$($PSQL "INSERT INTO users(username, games_played, best_game) VALUES('$USERNAME_INPUT', 1, 1000)")
  echo "Welcome, $USERNAME_INPUT! It looks like this is your first time here."

# if username exists
else
  BEST_GAME=$($PSQL "SELECT best_game FROM users WHERE username='$USERNAME'")
  GAMES_PLAYED=$($PSQL "SELECT games_played FROM users WHERE username='$USERNAME'")
  
  BEST_GAME=$(echo $BEST_GAME | sed 's/ //g') # trim spaces
  #BEST_GAME=$((BEST_GAME + 0))
  GAMES_PLAYED=$(echo $GAMES_PLAYED | sed 's/ //g') # trim spaces

  echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  ((GAMES_PLAYED++))
  UPDATE_GAMES_PLAYED=$($PSQL "UPDATE users SET games_played=$GAMES_PLAYED WHERE username='$USERNAME'")
fi

# generate random number
SECRET_NUMBER=$(( ( RANDOM % 1000 )  + 1 ))
GUESS_NUMBER=0
echo $SECRET_NUMBER

echo -e "\nGuess the secret number between 1 and 1000:"

# number guessing game
while [[ $NUMBER_GUESSED -ne $SECRET_NUMBER ]]
do
  read NUMBER_GUESSED
  ((GUESS_NUMBER++))

  if [[ ! $NUMBER_GUESSED =~ ^[0-9]+$ ]]
  then
    echo -e "That is not an integer, guess again:"
  else 
    if [[ $NUMBER_GUESSED -gt $SECRET_NUMBER ]]
    then
    echo -e "It's lower than that, guess again:"
    

    elif [[ $NUMBER_GUESSED -lt $SECRET_NUMBER ]]
    then
    echo -e "It's higher than that, guess again:"
  

    else
      if [[ $GUESS_NUMBER -lt $BEST_GAME ]]
      then
        UPDATE_BEST_GAME=$($PSQL "UPDATE users SET best_game=$GUESS_NUMBER WHERE username='$USERNAME'")
      
      fi

      echo "You guessed it in $GUESS_NUMBER tries. The secret number was $SECRET_NUMBER. Nice job!"
      exit
    fi
  fi
done



