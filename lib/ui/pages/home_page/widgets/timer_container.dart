import 'package:flutter/material.dart';

class TimerContainer extends StatelessWidget {
  const TimerContainer({ super.key, required this.value });
final String value;
    @override
  Widget build(BuildContext context) {
    String formattedValue = value.padLeft(2, '0');

    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            formattedValue,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}