import 'package:flutter/material.dart';
import 'package:shop_app/utils/constants/app_colors.dart';
import 'package:shop_app/utils/constants/app_paddings.dart';
import 'package:shop_app/utils/constants/app_radiuses.dart';


class GlobalButton extends StatelessWidget {
  const GlobalButton({Key? key, this.onPressed, required this.text})
      : super(key: key);
  final void Function()? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.only( top: 16),
        decoration: const BoxDecoration(
          borderRadius: AppRadiuses.a8,
          color: AppColors.primary,
        ),
        child: Center(
            child: Padding(
          padding: AppPaddings.a16,
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 20.0,
              color: AppColors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        )),
      ),
    );
  }
}
