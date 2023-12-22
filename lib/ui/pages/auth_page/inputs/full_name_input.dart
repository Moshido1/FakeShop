import 'package:flutter/material.dart';
import 'package:shop_app/ui/pages/auth_page/widgets/inputs/auth_input.dart';

import '../../../../utils/constants/app_texts.dart';

class FullNameInput extends StatelessWidget {

  const FullNameInput({ super.key });

   @override
   Widget build(BuildContext context) {
       return AuthInput(
          text: AppTexts.fullName,
          icon: Icons.person,
        );
  }
}