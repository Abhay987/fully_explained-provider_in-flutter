import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
class Counter extends ChangeNotifier {
  int _count = 0;
  int _countSecond=0;
  int get countSecond=>_countSecond;
  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
  void decrement() {
   _countSecond--;
    notifyListeners();
  }
}
void main() {
  runApp(
      ChangeNotifierProvider(
        create: (context) =>
            Counter(),
        child: const ProviderSampleOneHome(),
      ),);
  }
class ProviderSampleOneHome extends StatelessWidget {
  const ProviderSampleOneHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   // final Counter counter = Provider.of<Counter>(context);
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<Counter>(builder: (context,counter,_){
                return Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(20),
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          'You have pressed increment btn in ${counter.count} times!',
                          style: const TextStyle(
                            fontSize: 30,
                            //fontFamily: 'Allison',
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(20),
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          'You have pressed decrement btn in ${counter._countSecond} times!',
                          style: const TextStyle(
                            fontSize: 30,
                            //fontFamily: 'Allison',
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () => counter.increment(),
                        child: const Text(
                          'Press to Increment',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () => counter.decrement(),
                        child: const Text(
                          'Press to Decrement',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  );

              }),

            ],
          ),
        ),
      ),
    );
  }
}
