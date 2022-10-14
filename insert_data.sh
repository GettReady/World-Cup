#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

# Remove all data from tables
echo $($PSQL "truncate teams, games;")
tail +2 games.csv | while IFS="," read -r YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  WINNER_ID=$($PSQL "select team_id from teams where name='$WINNER';")
  OPPONENT_ID=$($PSQL "select team_id from teams where name='$OPPONENT';")
  if [[ -z $WINNER_ID ]]
  then
    INSERT_RESULT=$($PSQL "insert into teams(name) values('$WINNER');")
    if [[ $INSERT_RESULT == 'INSERT 0 1' ]]
    then      
      echo Inserted into teams: $WINNER
    fi
    WINNER_ID=$($PSQL "select team_id from teams where name='$WINNER';")
  fi
  if [[ -z $OPPONENT_ID ]]
  then
    INSERT_RESULT=$($PSQL "insert into teams(name) values('$OPPONENT');")
    if [[ $INSERT_RESULT == 'INSERT 0 1' ]]
    then      
      echo Inserted into teams: $OPPONENT
    fi
    OPPONENT_ID=$($PSQL "select team_id from teams where name='$OPPONENT';")
  fi
  GAME_INSERT_RESULT=$($PSQL "insert into games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) values('$YEAR', '$ROUND', '$WINNER_ID', '$OPPONENT_ID', '$WINNER_GOALS', '$OPPONENT_GOALS');")  
done