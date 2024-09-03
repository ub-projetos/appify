import 'package:flutter/material.dart';

Map<int, Color> _swatchOpacity = {
  50: const Color.fromRGBO(33, 36, 120, .1),
  100: const Color.fromRGBO(33, 36, 120, .2),
  200: const Color.fromRGBO(33, 36, 120, .3),
  300: const Color.fromRGBO(33, 36, 120, .4),
  400: const Color.fromRGBO(33, 36, 120, .5),
  500: const Color.fromRGBO(33, 36, 120, .6),
  600: const Color.fromRGBO(33, 36, 120, .7),
  700: const Color.fromRGBO(33, 36, 120, .8),
  800: const Color.fromRGBO(33, 36, 120, .9),
  900: const Color.fromRGBO(33, 36, 120, 1),
};

abstract class AppColors {
  static const Color primary = Color(0xFF212478); // Cor base atualizada
  static const Color primaryLight = Color(0xFF4B4CA6); // Uma cor mais clara da base
  static const Color primaryDark = Color(0xFF1A1D6B); // Uma cor mais escura da base
  static const Color primaryText = Colors.white;
  static const Color grey = Color(0xFFF2F2F2);
  static const Color lightGrey = Color(0xFFFCFCFC);
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color error = Colors.redAccent;
  static const Color hoverActive = Color(0x551EBE71);

  static MaterialColor primarySwatchColor = MaterialColor(0xFF212478, _swatchOpacity);
}
