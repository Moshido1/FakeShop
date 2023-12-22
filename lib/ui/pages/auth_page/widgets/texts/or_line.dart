import 'package:flutter/material.dart';

import '../../../../../utils/constants/app_colors.dart';

class OrLine extends StatelessWidget {

  const OrLine({ super.key });

   @override
   Widget build(BuildContext context) {
       return Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            height: 1.0,
            color: AppColors.orLine,
          ),
        );
  }
}