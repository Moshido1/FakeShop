import 'package:flutter/material.dart';

import '../../../../utils/constants/app_texts.dart';

class NotificationDialog extends StatelessWidget {
  const NotificationDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(AppTexts.notification),
            SizedBox(height: 16.0),
            Text(AppTexts.notificationMessage),
          ],
        ),
      ),
    );
  }
}