import 'package:flutter/material.dart';
import 'package:shop_app/utils/constants/app_paddings.dart';
import 'package:shop_app/utils/constants/app_text_style.dart';

import '../../../../utils/constants/app_radiuses.dart';
import '../../../../utils/constants/app_sizedbox.dart';
import '../../../../utils/constants/app_texts.dart';

class RecomendedContainer extends StatelessWidget {
  const RecomendedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.a16,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: AppRadiuses.a10,
          image: DecorationImage(
            image: AssetImage('assets/image51.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: const Padding(
          padding: AppPaddings.a16,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppSizedbox.h24,
              Text(
                AppTexts.recomendedProduct,
                style: AppTextStyles.w600f30cWhite,
              ),
              AppSizedbox.h24,
              Text(
                AppTexts.weRecommendYou,
                style: AppTextStyles.w600f12cWhite,
              ),
              AppSizedbox.h24
            ],
          ),
        ),
      ),
    );
  }
}
