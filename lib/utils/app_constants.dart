import 'package:flutter/material.dart';

class AppConstants {
  static const Color primaryColor = Color.fromRGBO(6, 190, 182, 1);
  static const Color secondaryColor = Color.fromRGBO(72, 177, 191, 1);

  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      primaryColor,
      secondaryColor,
    ],
  );

  static const LinearGradient cardGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Colors.white,
      Color(0xFFF5F5F5),
    ],
  );
}
