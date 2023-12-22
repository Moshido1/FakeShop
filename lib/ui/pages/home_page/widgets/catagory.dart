import 'package:flutter/material.dart';

import 'catagory_icon.dart';

class Catagory extends StatelessWidget {
  const Catagory({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100, 
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          CatagoryIcon(
            icon: Icons.shape_line,
          ),
          CatagoryIcon(
            icon: Icons.face,
          ),
          CatagoryIcon(
            icon: Icons.money,
          ),
          CatagoryIcon(
            icon: Icons.shape_line,
          ),
        ],
      ),
    );
  }
}
