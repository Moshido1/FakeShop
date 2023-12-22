import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/provider.dart';
import 'package:shop_app/utils/constants/app_colors.dart';

class AuthInput extends StatelessWidget {
  const AuthInput({Key? key, required this.text, required this.icon})
      : super(key: key);

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Consumer<ShopProvider>(
      builder: (context, state, _) {
        return TextField(
          onChanged: (value) {
            state.inputControl();
          },
          style: const TextStyle(
            color: AppColors.forgotRegister,
          ),
          decoration: InputDecoration(
            labelText: text,
            labelStyle: const TextStyle(
              color: AppColors.forgotRegister,
            ),
            border: const OutlineInputBorder(
              borderSide: BorderSide(
                color:  AppColors.inputColor,
                width: 1.0,
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.primary,
                width: 2.0,
              ),
            ),
            errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red,
                width: 1.0,
              ),
            ),
            focusedErrorBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red,
                width: 2.0,
              ),
            ),
            prefixIcon: Icon(
              icon,
              color: AppColors.forgotRegister,
            ),
          ),
        );
      },
    );
  }
}
