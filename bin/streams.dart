import 'dart:async';

void main() async {
  Stream myStream(int interval, [int? maxCount]) async* {
    int i = 1;

    while (i != maxCount) {
      print('Counting: $i');
      await Future.delayed(Duration(seconds: interval));
      yield i++;
    }
    print('Stream ended');
  }

  var brunaStream = myStream(1).asBroadcastStream();

  StreamSubscription mySubscriber = brunaStream.listen((event) {
    if (event.isEven) {
      print('Even: $event');
    }
  }, onError: (e) {
    print('Error: $e');
  }, onDone: () {
    print('Subscription completed');
  });

  brunaStream.map((event) => 'Subscriber 2 watching: $event').listen(print);

  await Future.delayed(Duration(seconds: 3));
  mySubscriber.pause();
  print('Stream paused');

  await Future.delayed(Duration(seconds: 3));
  mySubscriber.resume();
  print('Stream resumed');

  await Future.delayed(Duration(seconds: 3));
  mySubscriber.cancel();
  print('Stream canceled');

  print('Main is finished');
}
