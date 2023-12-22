import 'package:flutter/material.dart';

class AppPaddings {
  const AppPaddings._();

  static const EdgeInsets a4 = EdgeInsets.all(4);
  static const EdgeInsets a8 = EdgeInsets.all(8);
  static const EdgeInsets a16 = EdgeInsets.all(16);
  static const EdgeInsets a24 = EdgeInsets.all(24);

  static const EdgeInsets h16 = EdgeInsets.symmetric(horizontal: 16);

  static const EdgeInsets v16 = EdgeInsets.symmetric(vertical: 16);
  static const EdgeInsets v32 = EdgeInsets.symmetric(vertical: 32);

  static const EdgeInsets l16 = EdgeInsets.only(left: 16);
  static const EdgeInsets t16 = EdgeInsets.only(top: 16);

  static const EdgeInsets r16 = EdgeInsets.only(right: 16);
  static const EdgeInsets r16t16 = EdgeInsets.only(left: 16, top: 16);
}
