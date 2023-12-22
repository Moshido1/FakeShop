import 'package:flutter/material.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_paddings.dart';

class CatagoryIcon extends StatelessWidget {
  const CatagoryIcon({Key? key, required this.icon}) : super(key: key);
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.l16,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: AppColors.gobalInput, 
            width: 2.0, 
          ),
        ),
        child: Padding(
          
          padding: AppPaddings.a24,
          child: Icon(icon,size: 40,color: AppColors.primary,),
        ),
      ),
    );
  }
}
