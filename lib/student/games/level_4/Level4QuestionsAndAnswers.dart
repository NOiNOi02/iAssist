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
var answers = [
  0,
  1,
  1,
  0,
  0,
  1,
  1,
  0,
  1,
  [1, 3, 5]
];
var currentNumber = 0;

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
