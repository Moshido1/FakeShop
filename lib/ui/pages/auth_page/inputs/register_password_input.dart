import 'package:flutter/material.dart';

import '../../../../utils/constants/app_texts.dart';
import '../widgets/inputs/auth_input.dart';

class RegisterPasswordInput extends StatelessWidget {

  const RegisterPasswordInput({ super.key });

   @override
   Widget build(BuildContext context) {
       return  const AuthInput(
          text: AppTexts.password,
          icon: Icons.lock_outline,
        );
  }
}