import 'package:flutter/material.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_texts.dart';

class GlobalInput extends StatelessWidget {
  const GlobalInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: AppTexts.searchProduct,
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.gobalInput),
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.gobalInput),
            borderRadius: BorderRadius.circular(10.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.gobalInput),
            borderRadius: BorderRadius.circular(10.0),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.gobalInput),
            borderRadius: BorderRadius.circular(10.0),
          ),
          contentPadding: const EdgeInsets.all(8.0),
          prefixIcon: const Icon(Icons.search, color:AppColors.primary),
        ),
      ),
    );
  }
}
