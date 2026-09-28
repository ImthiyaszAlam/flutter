import 'package:flutter/material.dart';
import 'package:tmitra/screens/LoginScreen.dart';
import 'package:tmitra/screens/dashbord_screen.dart';
import 'package:tmitra/screens/form_screen.dart';
import 'package:tmitra/screens/home_screen.dart';

void main() {
  runApp(
    const MyApp()
 );
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Basics",
      home: const FormScreen(),
    );
  }
}