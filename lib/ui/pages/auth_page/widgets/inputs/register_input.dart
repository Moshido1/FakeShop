import 'package:flutter/material.dart';

import '../../../../../utils/constants/app_sizedbox.dart';
import '../../../../../utils/constants/app_texts.dart';
import '../../../widgets/global_button.dart';
import '../../inputs/confirm_password_input.dart';
import '../../inputs/full_name_input.dart';
import '../../inputs/register_email_input.dart';
import '../../inputs/register_password_input.dart';

class RegisterInput extends StatelessWidget {
  const RegisterInput({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        FullNameInput(),
        AppSizedbox.h8,
        RegisterEmailInput(),
        AppSizedbox.h8,
       RegisterPasswordInput(),
        AppSizedbox.h8,
        ConfirmPasswordInput(),
        GlobalButton(text: AppTexts.signUp)
      ],
    );
  }
}
