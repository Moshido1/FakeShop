import 'package:flutter/material.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_style.dart';

class TextButtons extends StatelessWidget {
  const TextButtons({super.key, required this.text, required this.text2, this.onPressed});
  final String text;
  final String text2;
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h16,
      child: Row(
        children: [
          Text(
            text,
            style: AppTextStyles.w600f18cDarkBlue,
          ),
          Spacer(),
          TextButton(
            onPressed: onPressed,
            child:Text(text2,style: AppTextStyles.w600f18cPrimary,) ,
          )
        ],
      ),
    );
  }
}
