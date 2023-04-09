
import 'dart:async';

void main(){
  Stream numberStream = NumberGenerator().getStream.asBroadcastStream();
  //! BROADCAST CAN HANDLE MULTIPLE SUBSCRIBERS.

  StreamSubscription sub1 = numberStream.listen((event) {
    print(event);
  },

    onDone: (){
      // WILL BE EXECUTED WHEN THE STREAM IS FINISHED.
    },
    onError: (error){
      // WHAT SHOULD HAPPEN WHEN AN ERROR OCCURS.
    },
    cancelOnError: true,

  );
  
}

class NumberGenerator {
  int _counter = 0;

  StreamController<int> _controller = StreamController<int>();

  Stream<int> get getStream => _controller.stream;

  NumberGenerator(){
    final timer = Timer.periodic(Duration(seconds: 1), (timer){
      _controller.sink.add(_counter);
      _counter = _counter + 1;
    });

    Future.delayed(Duration(seconds: 10),() => timer.cancel());
  }
}
