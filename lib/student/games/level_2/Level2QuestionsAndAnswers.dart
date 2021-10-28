// ignore_for_file: file_names
//questions, choices and answers for level 1
var questions = [
  "What are the 2 unseen \nforces acting on the\n block at a rest position?",
  "The golf ball will \n______ on top of the tee.",
  "What will happen to the egg \nif you hit the paper plate?",
  "The golf ball will continue \nto move forward \nand in constant motion",
  "Why then, do we observe everyday \nobjects in motion slowing down \nand becoming motionless seemingly \nwithout an outside force?",
  "The ball will continue to move \nas it rolls down the cliff.",
  "You slide a book across the table \nfrom left to right. What is the force \nacting on the book to slow it \ndown to bring it to rest?",
  "A boy pushing a box.",
  "Apple on top of the books.",
  "Moving car tires.",
  "Air resistance of a parachute.",
  "Which of the following is in the \nrest position or constant \nmotion? Choose 3.",
  "Which has greater inertia?"
];
var choices = [
  ["Force of gravity and normal force", "Normal force and friction"],
  ["Move", "Stay"],
  [
    "It will fell straight into the water",
    "It will move together with the roll of tissue and the paper plate."
  ],
  ["True", "False"],
  [
    "An object in motion will slow down if there is a force acting on it.",
    "An object slowing down has no forces acting on it."
  ],
  ["True", "False"],
  ["Force of gravity", "Force of friction"],
  ["Fluid Friction", "Static Friction", "Sliding Friction", "Rolling Friction"],
  ["Fluid Friction", "Static Friction", "Sliding Friction", "Rolling Friction"],
  ["Fluid Friction", "Static Friction", "Sliding Friction", "Rolling Friction"],
  ["Fluid Friction", "Static Friction", "Sliding Friction", "Rolling Friction"],
  [
    "A car that is pushed from opposite sides with equal force",
    "The taking-off of a Rocket",
    "A lizard on a wall in a vertical position",
    "Apple falling on the ground",
    "An airplane in steady wings level flight",
    "The up and down movement in a seesaw"
  ],
  ["The jet airplane sitting on a runway.", "A speeding car."]
];
var answers = [
  0,
  1,
  0,
  1,
  0,
  1,
  1,
  3,
  3,
  2,
  0,
  [0, 2, 4],
  0
];
var currentNumber = 0;

var images = [
  'assets/images/games/level2/image 4.png',
  'assets/images/games/level2/image 5.png',
  'assets/images/games/level2/image 6.png',
  'assets/images/games/level2/image 7.png',
  '',
  'assets/images/games/level2/image 8.png',
  'assets/images/games/level2/image 9.png',
  'assets/images/games/level2/image 10.png',
  'assets/images/games/level2/image 11.png',
  'assets/images/games/level2/image 12.png',
  'assets/images/games/level2/image 13.png',
  '',
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
  for (int i = 1; i <= 13; i++) {
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
