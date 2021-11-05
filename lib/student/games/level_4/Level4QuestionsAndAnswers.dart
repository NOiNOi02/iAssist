// ignore_for_file: file_names
//questions, choices and answers for level 1
var questions = [
  "What is the ACTION force?",
  "What is the REACTION force?",
  "What is the ACTION force?",
  "What is the ACTION force?",
  "What is the REACTION force?",
  "What is the REACTION force?",
  "What is the ACTION force?",
  "What is the REACTION force?",
  "What is the REACTION force?",
  "Which of the following \nexperiences the law of interaction? \nChoose 3",
];
var choices = [
  [
    "Boy pushing down on the diving board",
    "Diving board pushing up on the man"
  ],
  ["Foot pushing down on the ground", "Ground pushing up on the foot"],
  ["Air pushing up on the bird's wing", "Bird's wing pushing down on the air."],
  ["Gravity pulling down on the book", "Table pushing up on the book"],
  ["Earth pulling on the moon.", "Moon pulling on the earth."],
  ["Rocket pushing down on the gas", "Gas explosion pushing up on the rocket"],
  ["Sand pushing up on the foot", "Foot pushing down on the sand"],
  [
    "The water pushes back on the swimmer",
    "The swimmer pushes against the water"
  ],
  [
    "A person pushes against a wall",
    "The wall exerts an equal and opposite reaction force against the person"
  ],
  [
    "A speeding car stopping on a red light",
    "A person tries to push a stuck car",
    "An orange falling a tree",
    "The clothline with hung clothes",
    "Rockets in moving in constant motion in space",
    "Jumping from a raft into the water"
  ],
];

var trivia = [
  'You\'re answer is correct! Boy pushing down on the diving board',
  'You\'re answer is correct! Ground pushing up on the foot',
  'You\'re answer is correct! Bird\'s wings pushing down on the air',
  'You\'re answer is correct! Gravity pulling down on the book',
  'You\'re answer is correct! Earth pulling on the moon',
  'You\'re answer is correct! Rocket pushing down on the gas explosion',
  'You\'re answer is correct! Foot pushing down on the sand',
  'You\'re answer is correct! The water pushes back on the swimmer',
  'You\'re answer is correct! The wall exerts an equal and opposite force against',
  'You\'re answer is correct!'
];
var answers = [
  [0],
  [1],
  [1],
  [0],
  [0],
  [1],
  [1],
  [0],
  [1],
  [1, 3, 5]
];
var currentNumber = 0;
var currentPoints = 5;
var images = [
  'assets/images/games/level4/image 1.png',
  'assets/images/games/level4/image 2.png',
  'assets/images/games/level4/image 3.png',
  'assets/images/games/level4/image 4.png',
  'assets/images/games/level4/image 5.png',
  'assets/images/games/level4/image 6.png',
  'assets/images/games/level4/image 7.png',
  'assets/images/games/level4/image 8.png',
  'assets/images/games/level4/image 9.png',
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
   if (currentNumber == 9) {
    if (lives == 3) {
      currentPoints = 9;
    } else if (lives == 2) {
      currentPoints = 6;
    } else if (lives == 1) {
      currentPoints = 3;
    }
  } else {
    if (lives == 3) {
      currentPoints = 5;
    } else if (lives == 2) {
      currentPoints = 3;
    } else if (lives == 1) {
      currentPoints = 2;
    }
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
  for (int i = 1; i <= 9; i++) {
    if (i == number) {
      if (answer == answers[i - 1][0]) {
        return true;
      } else {
        return false;
      }
    }
  }
  return false;
}

List<bool> checkMultipleAnswers(List<int> answer, int number) {
  int counter = 0;
  List<bool> temp = [false, false, false];
  print("before loop");
  for (int i = 0; i < answer.length; i++) {
    if (answers[number - 1].contains(answer[i])) {
      temp[i] = true;
      counter++;
    }
  }
  print("after loop");
  print(temp);
  return temp;
}
