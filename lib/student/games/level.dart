
int level = 1; 
var currentLives = 3;

int getCurrentLevel(){
  return level;
}

int getCurrentLives() {
  return currentLives;
}

void setCurrentLives() {
  currentLives--;
}

void resetCurrentLives() {
  currentLives = 3;
}
void setCurrentLevel(bool status){
  if (status){
    level++;  
  }else{
    level--;
  }
}