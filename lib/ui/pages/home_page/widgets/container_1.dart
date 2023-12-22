import 'package:flutter/material.dart';
import 'package:shop_app/utils/constants/app_radiuses.dart';

import '../../../../utils/constants/app_colors.dart';

class Container1 extends StatelessWidget {

  const Container1({ super.key });

   @override
   Widget build(BuildContext context) {
       return Container(
        height: 200,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: AppRadiuses.a12,
          color: AppColors.primary,
        ),
       );
  }
}