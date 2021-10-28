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
  0,
  1,
  0,
  0,
  1,
  1,
  0,
  0,
  [0, 2, 4]
];
var currentNumber = 0;

var images = [
  '',
  'assets/images/games/level3/image 1.png',
  'assets/images/games/level3/image 2.png',
  'assets/images/games/level3/image 3.png',
  'assets/images/games/level3/image 4.png',
  'assets/images/games/level3/image 5.png',
  '',
  'assets/images/games/level3/image 6.png',
  ''
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
  for (int i = 1; i <= 9; i++) {
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
