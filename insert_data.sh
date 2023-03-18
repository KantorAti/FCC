#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
  echo $($PSQL "TRUNCATE games, teams")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $WINNER != "winner" ]]
  then
    WINNER_ID=$($PSQL "SELECT TEAM_ID from teams WHERE name='$WINNER'")
    OPPONENT_ID=$($PSQL "SELECT TEAM_ID from teams WHERE name='$OPPONENT'")
      if [[ -z $WINNER_ID ]]
      then
        INSERT_WINNER_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
        if [[ $INSERT_WINNER_RESULT == "INSERT 0 1" ]]
        then
          echo Insterted into teams, $WINNER
        fi
    WINNER_ID=$($PSQL "SELECT TEAM_id from teams WHERE name='$WINNER'")
      fi

    OPPONENT_ID=$($PSQL "SELECT TEAM_id from teams WHERE name='$OPPONENT'")

      if [[ -z $OPPONENT_ID ]]
      then
        INSERT_OPPONENT_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
        if [[ $INSERT_OPPONENT_RESULT == "INSERT 0 1" ]]
        then
          echo Insterted into teams, $OPPONENT
        fi
    OPPONENT_ID=$($PSQL "SELECT TEAM_id from teams WHERE name='$OPPONENT'")
      fi
    WINNER_ID=$($PSQL "SELECT TEAM_id from teams WHERE name='$WINNER'")
    OPPONENT_ID=$($PSQL "SELECT TEAM_id from teams WHERE name='$OPPONENT'")
    INSERT_GAMES_RESULT=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', '$WINNER_ID', '$OPPONENT_ID', $WINNER_GOALS, $OPPONENT_GOALS)")
    if [[ $INSERT_GAMES_RESULT == "INSERT 0 1" ]]
        then
          echo Insterted into teams, $YEAR, $ROUND, $WINNER, $OPPONENT, $WINNER_GOALS, $OPPONENT_GOALS 
        fi
  fi
#echo $WINNER $OPPONENT
done

else
  PSQL="psql --username=postgres --dbname=worldcup -t --no-align -c"
  echo $($PSQL "TRUNCATE games, teams")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $WINNER != "winner" ]]
  then
    WINNER_ID=$($PSQL "SELECT TEAM_ID from teams WHERE name='$WINNER'")
    OPPONENT_ID=$($PSQL "SELECT TEAM_ID from teams WHERE name='$OPPONENT'")
      if [[ -z $WINNER_ID ]]
      then
        INSERT_WINNER_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
        if [[ $INSERT_WINNER_RESULT == "INSERT 0 1" ]]
        then
          echo Insterted into teams, $WINNER
        fi
    WINNER_ID=$($PSQL "SELECT TEAM_id from teams WHERE name='$WINNER'")
      fi

    OPPONENT_ID=$($PSQL "SELECT TEAM_id from teams WHERE name='$OPPONENT'")

      if [[ -z $OPPONENT_ID ]]
      then
        INSERT_OPPONENT_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
        if [[ $INSERT_OPPONENT_RESULT == "INSERT 0 1" ]]
        then
          echo Insterted into teams, $OPPONENT
        fi
    OPPONENT_ID=$($PSQL "SELECT TEAM_id from teams WHERE name='$OPPONENT'")
      fi
    WINNER_ID=$($PSQL "SELECT TEAM_id from teams WHERE name='$WINNER'")
    OPPONENT_ID=$($PSQL "SELECT TEAM_id from teams WHERE name='$OPPONENT'")
    INSERT_GAMES_RESULT=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', '$WINNER_ID', '$OPPONENT_ID', $WINNER_GOALS, $OPPONENT_GOALS)")
    if [[ $INSERT_GAMES_RESULT == "INSERT 0 1" ]]
        then
          echo Insterted into teams, $YEAR, $ROUND, $WINNER, $OPPONENT, $WINNER_GOALS, $OPPONENT_GOALS 
        fi
  fi
#echo $WINNER $OPPONENT
done
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
