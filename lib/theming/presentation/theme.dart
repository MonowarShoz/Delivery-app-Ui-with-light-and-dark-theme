import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeliveryColors {
  static final purple = Color(0xFF5117AC);
  static final green = Color(0xFF20D0C4);
  static final dark = Color(0xFF03091E);
  static final grey = Color(0xFF212738);
  static final lightGrey = Color(0xFFBBBBBB);
  static final veryLightGrey = Color(0xFFF3F3F3);
  static final white = Color(0xFFFFFFFF);
  static final pink = Color(0xFFF5638B);
}

final deliveryGradients = [
  DeliveryColors.green,
  DeliveryColors.purple,
];

final _appBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(10),
  borderSide: BorderSide(
    color: DeliveryColors.lightGrey,
    width: 2,
    style: BorderStyle.solid,
  ),
);

final lightTheme = ThemeData(
  appBarTheme: AppBarTheme(
    color: DeliveryColors.purple,
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
        headline6: TextStyle(
      fontSize: 20,
      color: DeliveryColors.green,
      fontWeight: FontWeight.bold,
    )),
  ),
  canvasColor: DeliveryColors.purple,
  accentColor: DeliveryColors.purple,
  scaffoldBackgroundColor: DeliveryColors.white,
  textTheme: GoogleFonts.poppinsTextTheme().apply(
    bodyColor: DeliveryColors.purple,
    displayColor: DeliveryColors.purple,
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: _appBorder,
    enabledBorder: _appBorder,
    focusedBorder: _appBorder,
    fillColor: DeliveryColors.veryLightGrey,
    filled: true,
    labelStyle: TextStyle(color: DeliveryColors.purple),
    contentPadding: EdgeInsets.zero,
    hintStyle: GoogleFonts.poppins(
      color: DeliveryColors.grey,
      fontSize: 10,
    ),
  ),
  iconTheme: IconThemeData(
    color: DeliveryColors.green,
    size: 40,
  ),
  primaryIconTheme: IconThemeData(
    color: DeliveryColors.purple,
    size: 40,
  ),
  accentIconTheme: IconThemeData(
    color: DeliveryColors.purple,
    size: 40,
  ),
);
