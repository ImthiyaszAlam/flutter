import 'package:flutter/material.dart';

class DashbordScreen extends StatelessWidget {
  const DashbordScreen({super.key});

  final users =const ['Imthiyas', 'Alam', 'Rahul', 'Amit'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Card(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: const Text('Card 11'),
                    ),
                  ),

                  const Card(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: const Text('Card 11'),
                    ),
                  ),

                  const Card(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: const Text('Card 11'),
                    ),
                  ),

                  const Card(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: const Text('Card 11'),
                    ),
                  ),

                  const Card(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: const Text('Card 11'),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(users[index]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
