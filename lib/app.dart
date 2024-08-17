import 'package:flutter/material.dart';
import 'package:pronto/auth/login.dart';
import 'package:pronto/auth/register.dart';
import 'package:pronto/courses/create_course.dart';
import 'package:pronto/home.dart';
import 'package:pronto/onboarding/onboarding.dart';

class App extends StatefulWidget {
  final cur_index;
  App({super.key, this.cur_index});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int _currentIndex = 0;

  setCurrentIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        const Home(),
        const Home(),
        const Home(),
        const Home()
      ][_currentIndex],
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) => setCurrentIndex(index),
            selectedItemColor: const Color(0xFFEC1C24),
            unselectedItemColor: Color(0XFF655F5F),
            selectedLabelStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins'),
            unselectedLabelStyle: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins'),
            iconSize: 25,
            elevation: 5,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled), label: "Acceuil"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.headset_mic_rounded), label: "Assistances"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.newspaper_rounded), label: "Activités"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profil"),
            ]),
      ),
    );
  }
}
