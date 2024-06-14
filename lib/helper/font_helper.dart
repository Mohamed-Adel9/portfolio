import 'package:flutter/material.dart';

class FontHelper{
  static String font1 = 'ReadexPro';
  static String font2 = 'Orbitron';



  // Regular styles
  static TextStyle font1Regular(double size, {Color color = Colors.black}) {
    return TextStyle(
      fontFamily: font1,
      fontSize: size,
      color: color,
    );
  }

  static TextStyle font2Regular(double size, {Color color = Colors.black}) {
    return TextStyle(
      fontFamily: font2,
      fontSize: size,
      color: color,
    );
  }

  // Bold styles
  static TextStyle font1Bold(double size, {Color color = Colors.black}) {
    return TextStyle(
      fontFamily: font1,
      fontSize: size,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  static TextStyle font2Bold(double size, {Color color = Colors.black}) {
    return TextStyle(
      fontFamily: font2,
      fontSize: size,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }


  // SemiBold styles
  static TextStyle font1SemiBold(double size, {Color color = Colors.black}) {
    return TextStyle(
      fontFamily: font1,
      fontSize: size,
      fontWeight: FontWeight.w600, // 600 is the font weight for semiBold
      color: color,
    );
  }
  // SemiBold styles
  static TextStyle font2SemiBold(double size, {Color color = Colors.white}) {
    return TextStyle(
      fontFamily: font2,
      fontSize: size,
      fontWeight: FontWeight.w600, // 600 is the font weight for semiBold
      color: color,
    );
  }

  // Light styles
  static TextStyle font1Light(double size, {Color color = Colors.black}) {
    return TextStyle(
      fontFamily: font1,
      fontSize: size,
      fontWeight: FontWeight.w300, // 300 is the font weight for light
      color: color,
    );
  }

  static TextStyle font2Light(double size, {Color color = Colors.black}) {
    return TextStyle(
      fontFamily: font2,
      fontSize: size,
      fontWeight: FontWeight.w300, // 300 is the font weight for light
      color: color,
    );
  }
}