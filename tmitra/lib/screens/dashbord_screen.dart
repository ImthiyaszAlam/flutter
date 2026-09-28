import 'package:flutter/material.dart';

class DashbordScreen extends StatelessWidget {
  const DashbordScreen({super.key});

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
              child: ListView(
                children: [
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: const Text('LV1'),
                    ),
                  ),

                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: const Text('LV1'),
                    ),
                  ),

                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: const Text('LV1'),
                    ),
                  ),

                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: const Text('LV1'),
                    ),
                  ),
                ],
              ),
            ),

            Row(children: [const Text("ROW 1")]),
          ],
        ),
      ),
    );
  }
}
