int level = 1;
var currentLives = 3;
var totalPoints = 0;

int getCurrentLevel() {
  return level;
}

int getCurrentLives() {
  return currentLives;
}

int getTotalPoints() {
  return totalPoints;
}

void setTotalPoints(int points) {
  totalPoints = totalPoints + points;
}

void setCurrentLives() {
  currentLives--;
}

void resetCurrentLives() {
  currentLives = 3;
}

void setCurrentLevel() {
  level++;
}
