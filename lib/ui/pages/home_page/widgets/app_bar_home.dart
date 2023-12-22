import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../providers/provider.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../widgets/global_input.dart';
import 'app_bar_icon.dart';

class AppBarHome extends StatelessWidget implements PreferredSizeWidget {
  const AppBarHome({Key? key}) : super(key: key);

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
                const Expanded(
                  child: GlobalInput(),
                ),
                AppBarIcon(
                  icon: Icons.favorite_border,
                  onClick: () {
                  },
                ),
                AppBarIcon(
                  icon: Icons.notifications_none,
                  onClick: () {
                    shopProvider.notificationBar(context);
                  },
                ),
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
