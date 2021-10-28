// ignore_for_file: file_names
//questions, choices and answers for level 1
var questions = [
  "Oh no! Newt needs to go home.\n Help him launch his backpack rocket! \nASAP",
  "Newt has a higher mass\nThe rocket needs to produce...?h",
  "Newt need to accelerate faster, \nyou have to...?",
  "Newt house is near. \nYet he is travelling so fast!",
  "YAY! \nLANDED \nSUCCESSFULLY",
];
var choices = [
  ["Stop Launching", "Start Launching"],
  ["Greater Force", "Lesser Force"],
  ["Increase Mass", "Decrease Mass"],
  ["Increase Acceleration", "Decrease Acceleration"],
  [" ", "Stop Engine"],
];
var answers = [1, 0, 1, 1, 1];
var currentNumber = 0;

var images = [
  'assets/images/games/level5/Group 70.png',
  'assets/images/games/level5/Group 71.png',
  'assets/images/games/level5/Group 72.png',
  'assets/images/games/level5/Group 73.png',
  'assets/images/games/level5/Group 74.png',
  '',
];

List getQuestions() {
  return questions;
}

List getChoices() {
  return choices;
}

List getImages() {
  return images;
}

int getCurrentNumber() {
  return currentNumber;
}

void setCurrentNumber() {
  currentNumber++;
}

bool checkAnswer(var answer, var number) {
  for (int i = 1; i <= 10; i++) {
    if (i == number) {
      if (answer == answers[i]) {
        return true;
      } else {
        return false;
      }
    }
  }
  return false;
}
