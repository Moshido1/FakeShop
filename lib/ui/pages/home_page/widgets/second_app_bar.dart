import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../providers/provider.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_style.dart';

class SecondAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SecondAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: kToolbarHeight + 30.0,
      title: Padding(
        padding: AppPaddings.a4,
        child: Consumer<ShopProvider>(
          builder: (context, shopProvider, _) {
            return Row(
              children: [
                Text("Super Flash Sale",style: AppTextStyles.w600f16cGray,),
              ],
            );
          },
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 30.0);
}
