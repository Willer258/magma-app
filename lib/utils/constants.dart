import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFFF7C00);
const kSecondaryColor = Color(0xFFFFE265);
const kTextColor = Color(0xFF3C4046);
const kBackgroundColor = Color.fromARGB(255, 255, 255, 255);

const double kDefaultPadding = 20.0;

// ignore_for_file: unnecessary_const

//palette.dart

class Palette {
  static const MaterialColor kToPrimary = const MaterialColor(
    0xFFFF7C00, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: const Color(0xffce5641), //10%
      100: const Color(0xffb74c3a), //20%
      200: const Color(0xffa04332), //30%
      300: const Color(0xff89392b), //40%
      400: const Color(0xff733024), //50%
      500: const Color(0xff5c261d), //60%
      600: const Color(0xff451c16), //70%
      700: const Color(0xff2e130e), //80%
      800: const Color(0xff170907), //90%
      900: const Color(0xff000000), //100%
    },
  );
}
