import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/provider.dart';

import '../../../utils/constants/app_paddings.dart';
import '../../../utils/constants/app_sizedbox.dart';
import '../../../utils/constants/app_texts.dart';
import 'widgets/texts/app_icon_text.dart';
import 'widgets/buttons/auth_sosialmedia.dart';
import 'widgets/buttons/forgot_register.dart';
import 'widgets/inputs/login_auth.dart';
import 'widgets/texts/or.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: AppPaddings.a16,
            child: Column(
              children: [
                const AppIconText(
                  text: AppTexts.welcome,
                  secondText: AppTexts.singTocontinue,
                ),
                AppSizedbox.h12,
                const LoginAuth(),
                AppSizedbox.h8,
                const Or(),
                AppSizedbox.h12,
                const AuthSosialmedia(),
                AppSizedbox.h12,
                Consumer<ShopProvider>(
                  builder: (context, shopProvider, _) {
                    return ForgotRegister(
                      register: () {
                        shopProvider.register(context);
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
