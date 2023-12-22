import 'package:flutter/material.dart';
import 'package:shop_app/ui/pages/auth_page/widgets/inputs/auth_input.dart';
import 'package:shop_app/ui/pages/widgets/global_button.dart';
import 'package:shop_app/utils/constants/app_sizedbox.dart';
import 'package:shop_app/utils/constants/app_texts.dart';

class LoginAuth extends StatelessWidget {
  const LoginAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AuthInput(
          text: AppTexts.yourEmail,
          icon: Icons.mail_outline,
        ),
        AppSizedbox.h8,
        AuthInput(
          text: AppTexts.password,
          icon: Icons.lock_outline,
        ),
        GlobalButton(
          text: AppTexts.signIn,
        )
      ],
    );
  }
}
