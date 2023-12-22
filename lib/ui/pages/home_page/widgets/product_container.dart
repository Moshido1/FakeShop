import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/utils/constants/app_sizedbox.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_radiuses.dart';
import '../../../../utils/constants/app_text_style.dart';

class ProductContainer extends StatelessWidget {
  const ProductContainer({Key? key, required this.showDeleteIcon})
      : super(key: key);
  final bool showDeleteIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: AppRadiuses.a8,
        border: Border.all(
          color: AppColors.inputColor,
          width: 1,
        ),
      ),
      child: Padding(
        padding: AppPaddings.a16,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start, // Sola hizalama eklendi
          children: [
            Center(
              child: Container(
                width: 133,
                height: 133,
                decoration: const BoxDecoration(),
                child: Image.asset(
                  "assets/product.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            AppSizedbox.h4,
            Text(
              'Nike Air Max 270  React ENG',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w800,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 20,
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            Text(
              "\$268.9",
              style: AppTextStyles.w600f16cPrimary,
            ),
            Row(
              children: [
                Text(
                  '\$538.8',
                  style: AppTextStyles.f16cGray,
                ),
                AppSizedbox.w5,
                Text(
                  '24% off',
                  style: AppTextStyles.w600f16cRed,
                ),
                AppSizedbox.w5,
                Icon(
                  showDeleteIcon ? Icons.delete_outline : null,
                  color: AppColors.grey,
                  size: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
