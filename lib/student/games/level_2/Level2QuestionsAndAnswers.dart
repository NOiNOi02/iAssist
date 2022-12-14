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

var trivia = [
  'You\'re answer is correct! The unseen forces acting on the block are the force of gravity and the normal reaction by the surface. The vertical forces are equal and cancels out each other making the block at a rest position',
  'You\'re answer is correct! Unless acted upon by an unbalanced force, the golf ball would sit still on the tee forever',
  'You\'re answer is correct! It will fell straight into the water due to its inertia and the gravity pulling it down.',
  'You\'re answer is correct! The golf ball will eventually stop moving and in decreases its motion',
  'You\'re answer is correct! An object in motion will slow down if acted on by a force in the direction of motion',
  'You\'re answer is correct! The ball ceases to move as it bumps into the rock giving it an external force',
  'You\'re answer is correct! FRICTION is the force that opposes motion and brings ANY object to a rest position',
  'You\'re answer is correct! SLIDING friction is a friction acting on objects sliding on a surface',
  'You\'re answer is correct! STATIC friction is a force acting on stationary/ at rest objects',
  'You\'re answer is correct! ROLLING friction is the friction acting on rolling objects',
  'You\'re answer is correct! FLUID friction is the friction acting on objects going through a fluid either in water or air',
  [
    'You\'re answer is correct! \n A car that is pushed from opposite sides with equal force',
    'A lizard on a wall in a vertical position.',
    'An airplane in steady wings level flight'
  ],
  'You\'re answer is correct! The jet airplane sitting on a runway will have greater inertia than a speeding car due to its larger mass'
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
var trivia_image = [
  'assets/images/games/level2/trivia_image 1.png',
  'assets/images/games/level2/trivia_image 2.png',
  'assets/images/games/level2/trivia_image 3.png',
];

var currentPoints = 5;

List getQuestions() {
  return questions;
}

List getTriviaImage() {
  return trivia_image;
}

List getImages() {
  return images;
}

List getChoices() {
  return choices;
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
