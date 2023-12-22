
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../providers/provider.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_radiuses.dart';
import '../../../../utils/constants/app_sizedbox.dart';
import '../../../../utils/constants/app_text_style.dart';
import '../../../../utils/constants/app_texts.dart';
import 'timer_container.dart';

class AddContainer extends StatelessWidget {
  const AddContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: AppPaddings.h16,
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: AppRadiuses.a10,
            image: DecorationImage(
              image: AssetImage('assets/shoos.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: AppPaddings.r16t16,
                  child: Text(AppTexts.superFlashSale,
                      style: AppTextStyles.w600f30cWhite),
                ),
                const SizedBox(height: 10),
                Consumer<ShopProvider>(
                  builder: (context, shopProvider, _) {
                    return Padding(
                      padding: AppPaddings.a16,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TimerContainer(value: shopProvider.hours.toString()),
                          AppSizedbox.h5,
                          const Text(":", style: AppTextStyles.w600f24cWhite),
                          AppSizedbox.h5,
                          TimerContainer(value: shopProvider.minutes.toString()),
                          AppSizedbox.h5,
                          const Text(":", style: AppTextStyles.w600f24cWhite),
                          AppSizedbox.h5,
                          TimerContainer(value: shopProvider.seconds.toString()),
                        ],
                      ),
                    );
                  },
                ),
                AppSizedbox.h12
              ],
            ),
          ),
        ),
      ),
    );
  }
}
