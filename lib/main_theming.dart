import 'package:delivery_dig/theming/presentation/splash/splash_screen.dart';
import 'package:delivery_dig/theming/presentation/theme.dart';
import 'package:flutter/material.dart';

class MainTheming extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: SplashScreen(),
      
    );
  }
}