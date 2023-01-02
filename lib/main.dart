import 'package:tarsbinary/screens/home.dart';
import 'package:tarsbinary/screens/splash.dart';
import 'package:flutter/material.dart';

 void main() {
  runApp(App());
}
class App extends StatelessWidget {
  const App({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "TarsBinary",
      home: splash(),
    );
  }
}