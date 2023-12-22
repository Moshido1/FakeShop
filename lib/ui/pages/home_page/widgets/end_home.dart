import 'package:flutter/material.dart';
import 'package:shop_app/ui/pages/home_page/widgets/product_container.dart';

import '../../../../utils/constants/app_paddings.dart';

class EndHome extends StatelessWidget {
  const EndHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.a16,
      child: SizedBox(
        height: 600,
        child: GridView.builder(
          itemCount: 4,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 300,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
          ),
          itemBuilder: (context, index) {
            return const ProductContainer(
              showDeleteIcon: true,
            );
          },
        ),
      ),
    );
  }
}
