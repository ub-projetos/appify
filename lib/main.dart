import 'package:flutter/material.dart';

import 'config/app_colors.dart';
import 'config/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appify',
      theme: ThemeData(
        primaryColor: AppColors.primarySwatchColor,
        primaryColorLight: AppColors.primary,
        primaryColorDark: AppColors.primaryDark,
        focusColor: AppColors.primary,
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          color: AppColors.primaryDark,
          iconTheme: IconThemeData(color: Colors.white),
          elevation: 1,
          titleTextStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),
        ),
        scaffoldBackgroundColor: const Color(0xffE5E5E5),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splash,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
