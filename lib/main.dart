import 'package:flutter/material.dart';
import 'package:ShoppingApp/my_app.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // Flutter Native SplashScreen
  //FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(MyApp());
}
