import 'package:flutter/material.dart';
import 'package:shop_app/utils/app_icon/app_icon.dart';
import 'package:shop_app/utils/constants/app_sizedbox.dart';
import 'package:shop_app/utils/constants/app_text_style.dart';
import 'package:shop_app/ui/pages/auth_page/widgets/texts/second_text_style.dart';

class AppIconText extends StatelessWidget {
  const AppIconText({super.key, required this.text, required this.secondText});
final String text;
final String secondText;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const AppIcon(colors: true),
        AppSizedbox.h12,
        AppTextStyle(text: text),
        AppSizedbox.h4,
        SecondTextStyle(secondText: secondText),
      ],
    );
  }
}
