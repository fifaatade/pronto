import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pronto/onboarding/onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool show_red = false;
  _SplashScreenState() {
    // new Timer(const Duration(milliseconds: 5000), () {
    //   setState(() {
    //     if (token == null) {
    //       Navigator.of(context).pushAndRemoveUntil(
    //           MaterialPageRoute(builder: (context) => const Login()),
    //           (route) => false);
    //     }
    //     if (token != null) {
    //       Navigator.of(context).pushAndRemoveUntil(
    //           MaterialPageRoute(builder: (context) => Home()),
    //           (route) => false);
    //     }
    //   });
    // });

    new Timer(const Duration(seconds: 2), () {
      setState(() {
        show_red =
            true; // Now it is showing fade effect and navigating to Login page
      });
    });
  }
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 4), () {
      // Navigate to the new page
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => OnBoarding()),
          (Route<dynamic> route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: show_red == true
          ? Container(
              color: const Color(0xFFF00020),
              child: Center(
                child: Image.asset(
                  'assets/images/logo_white.png',
                  width: 193.44,
                  height: 50,
                ),
              ),
            )
          : Container(
              color: Colors.white,
              child: Center(
                child: Image.asset(
                  'assets/images/logo_red.png',
                  width: 193.44,
                  height: 50,
                ),
              ),
            ),
    );
  }
}
