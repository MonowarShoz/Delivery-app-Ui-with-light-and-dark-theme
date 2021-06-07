import 'package:delivery_dig/main_theming.dart';
import 'package:delivery_dig/theming/presentation/login/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,

      ),
      home: MainTheming(),
      
    );
  }
}

