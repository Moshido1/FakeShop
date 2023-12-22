import 'package:flutter/material.dart';

import '../../../../utils/constants/app_texts.dart';
import '../widgets/inputs/auth_input.dart';

class ConfirmPasswordInput extends StatelessWidget {

  const ConfirmPasswordInput({ super.key });

   @override
   Widget build(BuildContext context) {
       return const AuthInput(
          text: AppTexts.passwordAgain,
          icon: Icons.lock_outline,
        );
  }
}