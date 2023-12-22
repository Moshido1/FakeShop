import 'package:flutter/material.dart';
import 'package:shop_app/ui/pages/auth_page/widgets/texts/or_line.dart';
import 'package:shop_app/ui/pages/auth_page/widgets/texts/text_style_or.dart';
import 'package:shop_app/utils/constants/app_sizedbox.dart';
import 'package:shop_app/utils/constants/app_texts.dart';


class Or extends StatelessWidget {
  const Or({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        OrLine(),
        AppSizedbox.h2,
        TextStyleOr(text: AppTexts.or),
        AppSizedbox.h2,
        OrLine(),
      ],
    );
  }
}
