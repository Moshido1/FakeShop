import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/provider.dart';
import 'package:shop_app/ui/pages/auth_page/widgets/inputs/register_input.dart';
import 'package:shop_app/ui/pages/auth_page/widgets/texts/register_text_button.dart';

import '../../../utils/constants/app_paddings.dart';
import '../../../utils/constants/app_sizedbox.dart';
import '../../../utils/constants/app_texts.dart';
import 'widgets/texts/app_icon_text.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});
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
                  text: AppTexts.letGetStarted,
                  secondText: AppTexts.createAccount,
                ),
                AppSizedbox.h12,
                const RegisterInput(),
                AppSizedbox.h12,
                Consumer<ShopProvider>(
                  builder: (context, state, _) {
                    return RegisterTextButton(
                      singIn: () {
                        state.login(context);
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
