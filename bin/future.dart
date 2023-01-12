void main() {
  // Future myFuture = Future((){
  //   print('Going back to the Future');
  //   return 21;
  // }).then((value) => print('Value: $value'));

  // Future.delayed(Duration(seconds: 5));

  // Future<int> myFutureFunc() async {
  //   print('I have a function in the future');
  //   await Future.delayed(Duration(seconds: 5));
  //   return 12;
  // }
  //
  // myFutureFunc()
  //     .then((value) => print('Value: $value'))
  //     .onError((error, stackTrace) => print('Error'))
  //     .whenComplete(() => print('The future is over'));

  Future<int> myFutureErrorFunc(int a, int b) async {
    try {
      if (a > b) {
        throw Exception();
      }

      await Future.delayed(Duration(seconds: 5));
      print('I have a function Function');
      return 42;
    } catch (e) {
      print('Error occurred: $e');
      return 42;
    } finally {
      print('The Future is finally Over.');
    }
  }

  myFutureErrorFunc(1, 2).then((value) => print('Value: $value'));
}