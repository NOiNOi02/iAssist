// ignore_for_file: file_names
//questions, choices and answers for level 1
var questions = [
  "What is the SI unit of force?",
  "Acceleration is the same as speed.",
  "Heavier objects require \nmore force to accelerate.",
  "The acceleration of an object \nexperiences directly proportional \nto applied force.",
  "What is the relationship of \nthe objects acceleration \nto its mass?",
  "Two bottles are drop at the \nsame time. Which bottle \nwill reach the end \nof the ramp first?",
  "What is a NET FORCE",
  "Using the formula F=ma, \nwhat is the blocks",
  "Which of the following experience \nthe Law of Acceleration? \nChoose 3",
];
var choices = [
  ["Newton", "Joules"],
  ["True", "False"],
  ["True", "False"],
  ["True", "False"],
  [
    "The objects acceleration is directly proportional to its mass.",
    "The objects acceleration is inversely proportional to its mass."
  ],
  ["Empty juice bottle", "Full juice bottle"],
  [
    "The sum of all forces acting on a body",
    "The difference of forces acting on a body"
  ],
  ["5 m/s2", "10 m/s2"],
  [
    "Two people are pushing on an object on opposite sides, put the object doesn\'t move or change at all.",
    "Two teams are playing tug-of-war. Team A wins.",
    "You use the same force to push a truck and a car, the car accelerates than the truck.",
    "Two balls rolling down a cliff reach the ground at the same time.",
    "Two people are walking and among the two people, if one is heavier than the other",
    "To boys pushing at a brick wall."
  ],
];
var answers = [
  [0],
  [1],
  [0],
  [0],
  [1],
  [1],
  [0],
  [0],
  [0, 2, 4]
];
var currentNumber = 0;
var currentPoints = 5;
var images = [
  'assets/images/games/noImage.png',
  'assets/images/games/level3/image 1.png',
  'assets/images/games/level3/image 2.png',
  'assets/images/games/level3/image 3.png',
  'assets/images/games/level3/image 4.png',
  'assets/images/games/level3/image 5.png',
  'assets/images/games/noImage.png',
  'assets/images/games/level3/image 6.png',
  'assets/images/games/noImage.png'
];

var trivia = [
  "NEWTON is the SI unit of force \nwhere 1N = (1kg) (1m/s2)",
  "Acceleration is the rate of change \nin the velocity of an object.",
  "Heavier objects require more force \nto accelerate than lighter objects.",
  "If the net force were doubled, \nthe acceleration of the object\n would be twice as large",
  "The acceleration an object experiences \nis inversely proportional to its mass.",
  "The full juice bottle reached the ramp \nfirst because it has greater mass than \nthe empty juice bottle.",
  "The sum of all forces acting on a body.",
  "Using the formula F=ma, \nwhat is the blocks",
  "Which of the following experience \nthe Law of Acceleration? \nChoose 3"
];

var triviaImage = [
  'assets/images/games/noImage.png',
  'assets/images/games/level3/image 1.png',
  'assets/images/games/level3/image 2.png',
  'assets/images/games/level3/trivia 4.png',
  'assets/images/games/level3/trivia 5.png',
  'assets/images/games/level3/trivia 6.png',
  'assets/images/games/noImage.png',
  'assets/images/games/level3/trivia 8.png',
  'assets/images/games/noImage.png',
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

List getTriviaImages() {
  return triviaImage;
}

int getCurrentNumber() {
  return currentNumber;
}

List getTrivias() {
  return trivia;
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

int getCurrentPoints() {
  return currentPoints;
}

void setCurrentPoints(int lives) {
  if (currentNumber == 8) {
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

bool checkAnswer(var answer, var number) {
  for (int i = 1; i <= 8; i++) {
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
