import 'package:flutter/material.dart';
import 'package:tmitra/screens/LoginScreen.dart';
import 'package:tmitra/screens/alert_screen.dart';
import 'package:tmitra/screens/form_screen.dart';
import 'package:tmitra/screens/home_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int selectedIndex = 0;

  final screens = [
    const HomeScreen(),
    const Loginscreen(),
    const FormScreen(),
    const AlertScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),

          BottomNavigationBarItem(icon: Icon(Icons.login), label: 'Login'),
          BottomNavigationBarItem(icon: Icon(Icons.warning), label: 'Alert'),
        ],
      ),
    );
  }
}
