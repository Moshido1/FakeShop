import 'package:flutter/material.dart';
import 'package:shop_app/ui/pages/home_page/widgets/product_container.dart';
import 'package:shop_app/utils/constants/app_paddings.dart';


class MegaSale extends StatelessWidget {
  const MegaSale({Key? key});

  @override
  Widget build(BuildContext context) {
    List<Widget> containers = [
     ProductContainer(showDeleteIcon: true,),
      ProductContainer(showDeleteIcon: true,),
      ProductContainer(showDeleteIcon: true,),
      ProductContainer(showDeleteIcon: true,),
      
    ];

    return Padding(
      padding: AppPaddings.h16,
      child: Container(
        height: 300,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: containers.length,
          separatorBuilder: (context, index) => const SizedBox(width: 8.0),
          itemBuilder: (context, index) => containers[index],
        ),
      ),
    );
  }
}
