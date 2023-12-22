import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/provider.dart';
import '../../../utils/constants/app_sizedbox.dart';
import '../../../utils/constants/app_texts.dart';
import 'widgets/add_container.dart';
import 'widgets/app_bar_home.dart';
import 'widgets/bottom_navigation_bar.dart';
import 'widgets/catagory.dart';
import 'widgets/end_home.dart';
import 'widgets/flash_sale.dart';
import 'widgets/mega_sale.dart';
import 'widgets/recomended_container.dart';
import 'widgets/text_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarHome(),
      body: ListView(
        children: [
          Consumer<ShopProvider>(
            builder: (context, shopProvider, _) {
              return GestureDetector(
                onTap: () {
                  shopProvider.sFlashPage(context); 
                },
                child: const AddContainer(),
              );
            },
          ),
          const TextButtons(
            text: AppTexts.category,
            text2: AppTexts.moreCategory,
          ),
          const Catagory(),
          const TextButtons(
            text: AppTexts.flashSale,
            text2: AppTexts.seeMore,
          ),
          const FlashSale(),
          const TextButtons(
            text: AppTexts.megaSale,
            text2: AppTexts.seeMore,
          ),
          const MegaSale(),
          AppSizedbox.h12,
          const RecomendedContainer(),
          AppSizedbox.h12,
          const Expanded(child: EndHome()),
        ],
      ),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
