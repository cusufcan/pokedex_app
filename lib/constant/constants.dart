import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants {
  Constants._();

  static const String title = 'Pokedex';

  static TextStyle get titleTextStyle => TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: _calculateFontSize(48),
      );

  static TextStyle get pokemonNameTextStyle => TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: _calculateFontSize(20),
      );

  static TextStyle get typeChipTextStyle => TextStyle(
        color: Colors.white,
        fontSize: _calculateFontSize(18),
      );

  static TextStyle get pokeInfoTitleTextStyle => TextStyle(
        color: Colors.black,
        fontSize: _calculateFontSize(20),
        fontWeight: FontWeight.bold,
      );

  static TextStyle get pokeInfoLabelTextStyle => TextStyle(
        color: Colors.black,
        fontSize: _calculateFontSize(16),
      );

  static double _calculateFontSize(int size) {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return size.sp;
    } else {
      return (size * 0.6).sp;
    }
  }
}
