import 'package:circular_countdown_timer/circular_countdown_timer.dart';

int level = 2;
var currentLives = 3;
var totalPoints = 0;
List<String> playerNames = [];
List<int> playerScores = [];
bool startTimer = false;

int getCurrentLevel() {
  return level;
}

int getCurrentLives() {
  return currentLives;
}

int getTotalPoints() {
  return totalPoints;
}

String getPlayerNames(int index) {
  return playerNames[index];
}

int getPlayerScores(int index) {
  return playerScores[index];
}

void setTotalPoints(int points) {
  totalPoints = totalPoints + points;
}

void resetTotalPoints() {
  totalPoints = 0;
}

void resetCurrentLives() {
  currentLives = 3;
}

void setCurrentLives() {
  currentLives--;
}

void setCurrentLevel() {
  level++;
}
void resetCurrentLevel() {
  level = 1;
}

void setPlayerNamesAndScores(String name, int score) {
  int listLength = playerNames.length;

  //inserting playernames and scores
  playerScores.insert(listLength, score);
  playerNames.insert(listLength, name);

  //ranking player names and scores
  playerScores = insertionSort(playerScores);
}

List<int> insertionSort(List<int> list) {
  for (int j = 1; j < list.length; j++) {
    int key = list[j];
    String key2 = playerNames[j];

    int i = j - 1;

    while (i >= 0 && list[i] < key) {
      list[i + 1] = list[i];
      playerNames[i + 1] = playerNames[i];
      i = i - 1;
      list[i + 1] = key;
      playerNames[i + 1] = key2;
    }
  }
  return list;
}
