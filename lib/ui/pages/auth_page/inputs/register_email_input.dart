import 'package:flutter/material.dart';

import '../../../../utils/constants/app_texts.dart';
import '../widgets/inputs/auth_input.dart';

class RegisterEmailInput extends StatelessWidget {

  const RegisterEmailInput({ super.key });

   @override
   Widget build(BuildContext context) {
       return const AuthInput(
          text: AppTexts.yourEmail,
          icon: Icons.mail_outline,
        );
  }
}