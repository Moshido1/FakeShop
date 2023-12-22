
import 'package:flutter/material.dart';

import 'buttom_icon.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomIcon.home,
        BottomIcon.explore,
        BottomIcon.cart,
        BottomIcon.offer,
        BottomIcon.accaunt,
      ],
      onTap: (int index) {
        switch (index) {
          case 0:
            print("HOME");
            break;
          case 1:
            print("EXPLORE");
            break;
          case 2:
            print("CART");
            break;
          case 3:
            print("OFFER");
            break;
          case 4:
            print("ACCOUNT");
            break;
        }
      },
    );
  }
}
