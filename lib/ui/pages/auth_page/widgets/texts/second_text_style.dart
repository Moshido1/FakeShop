import 'package:flutter/material.dart';
import 'package:shop_app/utils/constants/app_colors.dart';

class SecondTextStyle extends StatelessWidget {
  const SecondTextStyle({Key? key, required this.secondText}) : super(key: key);

  final String secondText;

  @override
  Widget build(BuildContext context) {
    return Text(
      secondText,
      style: const TextStyle(
        fontSize: 18.0,
        color: AppColors.forgotRegister,
      
      ),
    );
  }
}
