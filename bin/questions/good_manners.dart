class GoodManners {
  String question;
  bool isThisGoodManners = false;
  String brunaBot = 'BrunaBot: \n';

  GoodManners(this.question);

  bool isThisManners() {
    if (question.contains('hi') ||
        question.contains('Hi') ||
        question.contains('hello') ||
        question.contains('Hello') ||
        question.contains('Thanks') ||
        question.contains('Thanks') ||
        question.contains('morning') ||
        question.contains('Morning') ||
        question.contains('Evening') ||
        question.contains('evening') ||
        question.contains('night') ||
        question.contains('Night')) {
      isThisGoodManners = true;
    }
    return isThisGoodManners;
  }

  goodManners() {
    if (question.contains('Good Morning') || question.contains('good morning')) {
      print(brunaBot + 'Good Morning');
    } else if (question.contains('Good Day') || question.contains('good day')) {
      print(brunaBot + 'Good Day');
    } else if (question.contains('Good Night') || question.contains('good night')) {
      print(brunaBot + 'Good night');
    } else if (question.contains('Good Evening') || question.contains('good evening')) {
      print(brunaBot + 'Good Evening');
    } else if (question.contains('Hi') || question.contains('hi')) {
      print(brunaBot + 'Hello, it is a pleasure talk with you!');
  }
}
