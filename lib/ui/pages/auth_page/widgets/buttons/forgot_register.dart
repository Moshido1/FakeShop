import 'package:flutter/material.dart';
import 'package:shop_app/utils/constants/app_sizedbox.dart';
import 'package:shop_app/utils/constants/app_text_style.dart';
import 'package:shop_app/utils/constants/app_texts.dart';

import '../../../../../utils/constants/app_colors.dart';

class ForgotRegister extends StatelessWidget {
  const ForgotRegister({super.key, this.forgot, this.register});
  final void Function()? forgot;
  final void Function()? register;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: forgot,
          child: const Text(
            AppTexts.forgotPassword,
            style: TextStyle(
              fontSize: 16.0,
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        AppSizedbox.h4,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              AppTexts.registerText,
              style: AppTextStyles.w600f16cGray,
            ),
            GestureDetector(
              onTap: register,
              child: const Text(
                AppTexts.register,
                style: AppTextStyles.w600f16cPrimary,
              ),
            ),
          ],
        )
      ],
    );
  }
}
