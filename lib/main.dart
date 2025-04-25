import 'package:flutter/material.dart';
import 'package:hyolmo/pages/splash_screen.dart';
import 'core/bottom_nav_bar.dart';
//import 'splash_screen.dart'; // <-- Import this

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(), // <-- Use SplashScreen as initial screen
    );
  }
}
