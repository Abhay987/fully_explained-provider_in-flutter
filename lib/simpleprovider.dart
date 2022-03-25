/*
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context){
      return Data();
    },
      child: MaterialApp(
        home: Scaffold(appBar: AppBar(
          title: const Text('Simple Provider'),
        ),
          body: const Second(),
        ),
      ),);
  }
}


class Data extends ChangeNotifier{
  String value()=>"Abhishek";
}
class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(builder: (context,data,_){
      return Center(
        child: Text(data.value()),
      );
    });
  }
}
*/
