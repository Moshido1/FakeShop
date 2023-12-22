import 'package:flutter/material.dart';

import '../../../../utils/constants/app_texts.dart';

class BottomIcon {
  const BottomIcon._(); 

  static const BottomNavigationBarItem home = BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: AppTexts.home,
  );
  static const BottomNavigationBarItem explore = BottomNavigationBarItem(
    icon: Icon(Icons.search),
    label: AppTexts.explore,
  );
  static const BottomNavigationBarItem cart = BottomNavigationBarItem(
    icon: Icon(Icons.shopping_cart),
          label: AppTexts.cart,
  );
  static const BottomNavigationBarItem offer = BottomNavigationBarItem(
    icon: Icon(Icons.label),
          label: AppTexts.offer,
  );
  static const BottomNavigationBarItem accaunt = BottomNavigationBarItem(
   icon: Icon(Icons.person),
          label: AppTexts.account,
  );
}
