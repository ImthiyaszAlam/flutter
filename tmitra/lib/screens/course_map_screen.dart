import 'package:flutter/material.dart';

class CourseMapScreen extends StatelessWidget {
  const CourseMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Course map')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Text(
            'Your course map is the next screen to build.',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
