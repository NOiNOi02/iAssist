int level = 2;

int getCurrentLevel() {
  return level;
}

void setCurrentLevel(bool status) {
  if (status) {
    level++;
  } else {
    level--;
  }
}
