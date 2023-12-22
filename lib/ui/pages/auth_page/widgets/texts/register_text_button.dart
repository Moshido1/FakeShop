import 'package:flutter/material.dart';
import 'package:shop_app/utils/constants/app_text_style.dart';
import 'package:shop_app/utils/constants/app_texts.dart';

class RegisterTextButton extends StatelessWidget {
  const RegisterTextButton({super.key, this.singIn});
final void Function()? singIn;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          AppTexts.haveAccount,
          style: AppTextStyles.w600f16cGray,
        ),
        TextButton(
          onPressed: singIn,
          child:
              const Text(AppTexts.signIn, style: AppTextStyles.w600f16cPrimary),
        )
      ],
    );
  }
}
