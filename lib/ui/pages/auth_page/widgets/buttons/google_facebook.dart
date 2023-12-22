import 'package:flutter/material.dart';
import 'package:shop_app/ui/pages/auth_page/widgets/texts/text_style_or.dart';
import 'package:shop_app/utils/constants/app_colors.dart';
import 'package:shop_app/utils/constants/app_paddings.dart';
import 'package:shop_app/utils/constants/app_radiuses.dart';

class GoogleFacebook extends StatelessWidget {
  const GoogleFacebook({super.key, required this.icon, required this.text,required this.colorIcon});

  final IconData icon;
  final String text;
  final Color  colorIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: AppRadiuses.a4,
        color: AppColors.white,
        border: Border.all(
          color: AppColors.orLine,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: AppPaddings.a16,
        child: Row(
          children: [
            Icon(
              size: 32,
              icon,
              color: colorIcon,
            ),
            Expanded(
              child: Center(
                child: TextStyleOr(text: text),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
