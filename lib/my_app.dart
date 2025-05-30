
import 'package:flutter/material.dart';
import 'package:ShoppingApp/theme/theme.dart';
import 'package:ShoppingApp/features/authentication/screens/onBoarding/onBoarding_screen.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        theme: UAppTheme.lightTheme,
        darkTheme: UAppTheme.darkTheme,
        home: OnboardingScreen()
    );
  }
}
