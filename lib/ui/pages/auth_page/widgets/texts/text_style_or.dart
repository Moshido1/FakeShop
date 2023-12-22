import 'package:flutter/material.dart';

import '../../../../../utils/constants/app_colors.dart';

class TextStyleOr extends StatelessWidget {

  const TextStyleOr({ super.key, required this.text });
final String text;
   @override
   Widget build(BuildContext context) {
       return Text(
          text,
          style: const TextStyle(
            fontSize: 18.0,
            color: AppColors.orColor,
            fontWeight: FontWeight.bold,
          ),
        );
  }
}