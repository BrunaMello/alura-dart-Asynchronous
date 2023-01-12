import 'dart:io';


//implementing the Timing!

class TimeQuestions{
  String hour = 'What time is it?';
  String day = 'What day is today?';
  String year = 'What year are we?';
  String question;
  DateTime date = DateTime.now();
  String BrunaBot = 'BrunaBOT:\n';
  bool isThisATimeQuestion = false;

  TimeQuestions(this.question);

  bool isThisTime(){
    //check if the question is about time
    if (question.contains('hours') ||
        question.contains('Hours') ||
        question.contains('day') ||
        question.contains('Day') ||
        question.contains('year') ||
        question.contains('Year')) {
      isThisATimeQuestion = true;
    }
    return isThisATimeQuestion;
  }

  timeQuestion() {

    if (question == hour) {

      String _botAnswer = BrunaBot + ' Hi! it is: ${date.hour} hours and ${date.minute} minutes!';
      print(_botAnswer);
    } else if (question == day) {

      String _botAnswer = BrunaBot + ' Hi! Today is : ${date.day}';
      print(_botAnswer);
    } else if (question == year) {

      String _botAnswer = BrunaBot + ' Hi! We are in : ${date.year}';
      print(_botAnswer);
    } else {
      unsure();
    }
  }

  unsure() {
    if (question.contains('hours') || question.contains('Hours')) {

      String _botQuestion =
          BrunaBot + ' I did not understand, would you like to know about hours?';
      print(_botQuestion);
      String answer = stdin.readLineSync().toString();
      if (answer.contains('Yes') || answer.contains('yes')) {

        String _botAnswer = BrunaBot + ' Right, now is: ${date.hour} hours and ${date.minute} minutes!';
        print(_botAnswer);
      } else {

        String _botAnswer = BrunaBot + ' Oh, my bad... I understood wrong.';
        print(_botAnswer);
      }
    } else if (question.contains('day') || question.contains('Day')) {

      String _botQuestion =
          BrunaBot + 'I did not understand. You would like to know what day is today?';
      print(_botQuestion);
      String answer = stdin.readLineSync().toString();
      if (answer.contains('Yes') || answer.contains('yes')) {

        String _botAnswer = BrunaBot + ' Right, today is: ${date.day}';
        print(_botAnswer);
      } else {

        String _botAnswer = BrunaBot + ' Oh, my bad... I understood wrong.';
        print(_botAnswer);
      }
    } else if (question.contains('year') || question.contains('Year')) {

      String _botQuestion =
          BrunaBot + ' I did not understand. You would like to know what year it is?';
      print(_botQuestion);
      String answer = stdin.readLineSync().toString();
      if (answer.contains('Yes') || answer.contains('yes')) {

        String _botAnswer = BrunaBot +
            ' Alright, it is the year 2077, the pandemic is already ending... \n '
                'I am joking :)! We are in : ${date.year}';
        print(_botAnswer);
      } else {

        String _botAnswer = BrunaBot + ' Oh, my bad... I understood wrong.';
        print(_botAnswer);
      }
    }
  }
}
