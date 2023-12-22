import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shop_app/ui/pages/auth_page/login_page.dart';
import 'package:shop_app/ui/pages/auth_page/register_page.dart';

import '../ui/pages/home_page/super_flash_sale_page.dart';
import '../ui/pages/home_page/widgets/notification_bar.dart';

class ShopProvider extends ChangeNotifier {
  bool hasError = false;

  void register(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const RegisterPage(),
      ),
    );
  }

  void sFlashPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SuperFlashSalePage(),
      ),
    );
  }

  Future<void> showNotificationDialog(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return NotificationDialog();
      },
    );
  }

  void notificationBar(BuildContext context) {
    showNotificationDialog(context);
  }

  void login(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginPage(),
      ),
    );
  }

  void inputControl() {
    (value) {
      hasError = value.isEmpty;
    };
    notifyListeners();
  }

  static final TextEditingController emailController = TextEditingController();
  static final TextEditingController passwordController =
      TextEditingController();
  static final TextEditingController againPasswordController =
      TextEditingController();

  late Timer _timer;
  int _hours = 8;
  int _minutes = 32;
  int _seconds = 54;

  ShopProvider() {
    startTimer();
  }

  int get hours => _hours;
  int get minutes => _minutes;
  int get seconds => _seconds;

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_seconds > 0) {
        _seconds--;
      } else {
        _seconds = 59;

        if (_minutes > 0) {
          _minutes--;
        } else {
          _minutes = 59;

          if (_hours > 0) {
            _hours--;
          } else {
            _timer.cancel();
          }
        }
      }

      notifyListeners();
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
