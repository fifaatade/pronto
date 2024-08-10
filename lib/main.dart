import 'package:flutter/material.dart';
import 'package:pronto/courses/create_course.dart';
import 'package:pronto/onboarding/splash_screen.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plonto',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
              color: Colors.white), // Change the color to your desired one
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFF00020)),
        useMaterial3: true,
        fontFamily: "Poppins",
      ),
      home: const SplashScreen(),
    );
  }
}
