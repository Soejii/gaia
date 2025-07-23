import 'package:flutter/material.dart';

class AppColors {
  static Color mainColorSidigs = const Color.fromRGBO(0, 154, 222, 1);
  static Color inactiveColor = const Color.fromRGBO(133, 139, 166, 1);
  static Color secondaryText = const Color.fromRGBO(82, 103, 137, 1);
  static Color mainText = const Color.fromRGBO(4, 23, 53, 1);

  static List<BoxShadow> shadow = [
    BoxShadow(
      color: Colors.black.withOpacity(0.08),
      blurRadius: 6,
      offset: const Offset(0, 3),
    ),
    BoxShadow(
      color: Colors.black.withOpacity(0.03),
      blurRadius: 2,
      offset: const Offset(0, 1),
    ),
  ];

  static LinearGradient mainColorGradient = const LinearGradient(
    colors: [
      Color.fromRGBO(28, 178, 255, 1),
      Color.fromRGBO(90, 199, 255, 1),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
