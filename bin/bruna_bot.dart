
import 'dart:io';

import 'questions/time_questions.dart';
import 'timing/waiting_time.dart';

void main() async {
  String BrunaBot = 'BrunaBOT:\n';
  var a = true;
  String user = '';

  var myStream = BotClock().brunaBotStream(1, 10);
  var subscriber = myStream.listen((event) {
    print('                                    BrunaBot is active for $event seconds');
  },onDone: (){
    print('BrunaBot is finishing its work, ask the last question');
    a = false;
  }
  );

  print('-- Initializing the BrunaBOT, wait..--');
  await BotClock().clock(2);

  print('BrunaBOT:\n Hello :) \n How can I help you?');
  do {
    user = stdin.readLineSync().toString();
    print('-- Processing question, wait..--');
    await BotClock().clock(1);
    if (user.contains('xau') ||
        user.contains('Xau') ||
        user.contains('Bye') ||
        user.contains('bye')) {
      a = false;
      print(BrunaBot + 'Bye, See you soon!!');
    } else if (TimeQuestions(user).isThisTime()) {
      //check before, so we don't do the whole function without needing to.
      await BotClock().clock(2);
      TimeQuestions(user).timeQuestion();
    } else if (false) {
      //new questions
    } else {
      await BotClock().clock(2);
      print(BrunaBot +
          ' I did not training for answer this question \n Sorry :( ');
      print(BrunaBot + ' You can ask me another question or say Bye');
    }
  } while (a);

  print('--Closing BrunaBOT--');
}
