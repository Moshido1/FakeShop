import 'package:flutter/material.dart';
import 'package:shop_app/utils/constants/app_colors.dart';
import 'package:shop_app/utils/constants/app_radiuses.dart';

class AppIcon extends StatelessWidget {
  const AppIcon({super.key, required this.colors});

  final bool colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72,
      height: 72,
      decoration: BoxDecoration(
        borderRadius: AppRadiuses.a12,
        color: colors ? AppColors.primary : AppColors.white,
      ),
      child: Transform.rotate(
        angle: 45 * 3.141592653589793 / 180,
        child: Center(
          child: Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              borderRadius: AppRadiuses.a8,
              color: colors ? AppColors.white : AppColors.primary,
            ),
            child: Center(
              child: Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: colors ? AppColors.primary : AppColors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
