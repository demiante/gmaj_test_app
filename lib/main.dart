import 'package:clase_11/screens/clase11.dart';
import 'package:flutter/material.dart';

import 'screens/homeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      routes: <String, WidgetBuilder>{
        '/Clase11': (BuildContext context) => Clase11(),
      },
    );
  }
}
