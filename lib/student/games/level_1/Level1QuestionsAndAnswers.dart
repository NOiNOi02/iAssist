// ignore_for_file: file_names
//questions, choices and answers for level 1
var questions = [
  "Sir Isaac Newton’s laws of motion explain the relationship between a physical object and the forces acting upon it. \nHow did Newton get these ideas?",
  "This law of motion states that every object will remain at rest or in uniform motionin a straight line unless compelled to change its state by the action of an external force.What law of motion this definition pertains to?",
  "When one object exerts a force on a second object, the second object exerts an equal force in the opposite directions on the first object. What law of motion states that for every action there is an equal and opposite reaction?",
  "This law explains how the velocity of an object changes when it is subjected to an external force. What law of motion defines force as equal to the objects mass times acceleration?",
  "What exists when there is an interaction between two objects?"
];
var choices = [
  [
    "Discovery of gravity when he saw an apple falling from a tree",
    "Discovery of gravity when he saw a ball falling from a building"
  ],
  ["Law of Intertia", "Law of Acceleration", "Law of Interaction"],
  ["Law of Intertia", "Law of Acceleration", "Law of Interaction"],
  ["Law of Intertia", "Law of Acceleration", "Law of Interaction"],
  ["Gravity", "Friction", "Force"]
];
List<int> answers = [0, 0, 2, 1, 2];
var currentNumber = 0;

List getQuestions() {
  return questions;
}

List getChoices() {
  return choices;
}

int getCurrentNumber() {
  return currentNumber;
}

void setCurrentNumber() {
  currentNumber++;
}

bool checkAnswer(int answer, int number) {
  //wll return true or false, depends on the answer and the correct answer
  print("answer"+answer.toString());
  for (int i = 1; i <= 5; i++) {
    print(i.toString()+ '==' +number.toString());
    if (i == number) {
      print(answer == answers[i-1]);
      print(answer.toString()+ '==' +answers[i-1].toString());
      if (answer == answers[i-1]) {
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
