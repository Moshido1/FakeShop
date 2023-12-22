import 'package:flutter/material.dart';
import 'package:shop_app/ui/pages/auth_page/widgets/buttons/google_facebook.dart';
import 'package:shop_app/utils/constants/app_sizedbox.dart';
import 'package:shop_app/utils/constants/app_texts.dart';

import '../../../../../utils/constants/app_colors.dart';

class AuthSosialmedia extends StatelessWidget {
  const AuthSosialmedia({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        GoogleFacebook(
          icon: Icons.g_mobiledata_outlined,
          colorIcon: AppColors.red,
          text: AppTexts.loginWithGoogle,
        ),
        AppSizedbox.h8,
        GoogleFacebook(
          icon: Icons.facebook,
          colorIcon: AppColors.faceBook,
          text: AppTexts.loginWithFace,
        ),
      ],
    );
  }
}
