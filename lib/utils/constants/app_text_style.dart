import 'package:flutter/material.dart';
import 'package:shop_app/utils/constants/app_colors.dart';

class AppTextStyle extends StatelessWidget {
  const AppTextStyle({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTextStyles.w600f24,
    );
  }
}

class AppTextStyles {
  static const TextStyle w600f24 = TextStyle(
    fontSize: 24.0,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle w600f12cWhite = TextStyle(
    fontSize: 12.0,
    color: AppColors.white,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle w600f16cPrimary = TextStyle(
    fontSize: 16.0,
    color: AppColors.primary,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle w600f16cRed = TextStyle(
    color: Color(0xFFFB7181),
    fontSize: 16,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w700,
   
  );
  static const TextStyle w600f18cPrimary = TextStyle(
    fontSize: 18.0,
    color: AppColors.primary,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle w600f16cGray = TextStyle(
    fontSize: 16.0,
    color: AppColors.forgotRegister,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle f16cGray = TextStyle(
    fontSize: 16.0,
    color: AppColors.forgotRegister,
    decoration: TextDecoration.lineThrough,
  );
  static const TextStyle w600f18cDarkBlue = TextStyle(
    fontSize: 18.0,
    color: AppColors.darkBlue,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle w600f30cWhite = TextStyle(
    color: AppColors.white,
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle w600f24cWhite = TextStyle(
    color: AppColors.white,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
}
