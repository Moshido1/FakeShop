import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/app.dart';
import 'package:shop_app/providers/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ShopProvider(),
      child: const MyApp(),
    ),
  );
}
