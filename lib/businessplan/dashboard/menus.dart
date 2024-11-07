import 'package:flutter/material.dart';
import 'package:pronto/auth/login.dart';
import 'package:pronto/auth/register.dart';
import 'package:pronto/businessplan/dashboard/history.dart';
import 'package:pronto/businessplan/dashboard/index.dart';
import 'package:pronto/businessplan/dashboard/members.dart';
import 'package:pronto/courses/create_course.dart';
import 'package:pronto/home.dart';
import 'package:pronto/onboarding/onboarding.dart';

class Menus extends StatefulWidget {
  final cur_index;
  Menus({super.key, this.cur_index});

  @override
  State<Menus> createState() => _MenusState();
}

class _MenusState extends State<Menus> {
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
        const Dashboard(),
        const Members(),
        const History(),
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
                  icon: Icon(Icons.speed), label: "Tableau de bord"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.people_alt), label: "Personnelles"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.newspaper_outlined), label: "Historiques"),
            ]),
      ),
    );
  }
}
