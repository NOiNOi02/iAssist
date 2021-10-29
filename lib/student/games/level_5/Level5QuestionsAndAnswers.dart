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
var trivia = ["", "", "", "", ""];
var answers = [1, 0, 1, 1, 1];
var currentNumber = 0;
var currentPoints = 5;
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

List getTrivias() {
  return trivia;
}

int getCurrentNumber() {
  return currentNumber;
}

int getCurrentPoints() {
  return currentPoints;
}

void setCurrentPoints(int lives) {
  if (lives == 3) {
    currentPoints = 5;
  } else if (lives == 2) {
    currentPoints = 3;
  } else if (lives == 1) {
    currentPoints = 2;
  }
}

void resetCurrentPoints() {
  currentPoints = 5;
}

void setCurrentNumber() {
  currentNumber++;
}

void resetCurrentNumber() {
  currentNumber = 0;
}

bool checkAnswer(int answer, int number) {
  //wll return true or false, depends on the answer and the correct answer
  print("answer" + answer.toString());
  for (int i = 1; i <= 5; i++) {
    print(i.toString() + '==' + number.toString());
    if (i == number) {
      print(answer == answers[i - 1]);
      print(answer.toString() + '==' + answers[i - 1].toString());
      if (answer == answers[i - 1]) {
        print('correct');
        return true;
      } else {
        print('wrong');
        return false;
      }
    }
  }
  return false;
}
