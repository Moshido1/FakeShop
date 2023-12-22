import 'package:flutter/material.dart';

import 'star.dart';

class Stars extends StatelessWidget {
  const Stars({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Star(active: true),
        Star(active: true),
        Star(active: true),
        Star(active: true),
        Star(active: true),
      ],
    );
  }
}
