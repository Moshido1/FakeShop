// import 'package:flutter/material.dart';
// import 'package:shop_app/ui/pages/auth_page/login_page.dart';
// import '../../utils/app_icon.dart/app_icon.dart';
// import '../../utils/constants/app_colors.dart';

// class SplashPage extends StatefulWidget {
//   const SplashPage({Key? key}) : super(key: key);

//   @override
//   State<SplashPage> createState() => _SplashPageState();
// }

// class _SplashPageState extends State<SplashPage> {
//   @override
//   void initState() {
//     super.initState();
//     _navigateToHome();
//   }

//   _navigateToHome() async {
//     await Future.delayed(const Duration(milliseconds: 3000), () {});
//     Navigator.pushReplacement(
//       context,
//       MaterialPageRoute(builder: (context) => const LoginPage()),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       backgroundColor: AppColors.primary,

//       body: Center(
//         child: AppIcon(
//           colors: false,
//         ),
//       ),
//     );
//   }
// }
