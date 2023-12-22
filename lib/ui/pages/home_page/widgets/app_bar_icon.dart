import 'package:flutter/material.dart';

import '../../../../utils/constants/app_colors.dart';

class AppBarIcon extends StatelessWidget {
  const AppBarIcon({super.key, required this.icon, this.onClick});
  final IconData icon;
  final void Function()? onClick;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        icon,
        size: 28.0,
        color: AppColors.appBarIcon,
      ),
      onPressed: onClick,
    );
  }
}
