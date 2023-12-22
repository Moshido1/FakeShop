import 'package:flutter/material.dart';

import '../../../../utils/constants/app_colors.dart';

class Star extends StatelessWidget {
  const Star({Key? key, required this.active}) : super(key: key);

  final bool active;

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      size: 10,
      color: active ? AppColors.yellow : AppColors.white,
    );
  }
}
