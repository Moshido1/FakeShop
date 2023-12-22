import 'package:flutter/material.dart';

import 'widgets/add_container.dart';
import 'widgets/end_home.dart';
import 'widgets/second_app_bar.dart';

class SuperFlashSalePage extends StatelessWidget {

  const SuperFlashSalePage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
        appBar: const SecondAppBar(),
       body:ListView(
         children: [
           Column(
           children: [
             AddContainer(),
             EndHome()
           ],
         ),
         ]
       ),
       );
  }
}