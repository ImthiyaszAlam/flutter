import 'package:flutter/material.dart';
import 'package:kaamai/features/home/home_screen.dart';
import 'package:kaamai/features/report/report_screen.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({
    super.key,
    required this.onThemeToggle,
  });

  final ValueChanged<Brightness> onThemeToggle;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;

    final screens = [
      HomeScreen(
        onThemeToggle: widget.onThemeToggle,
      ),
      const ReportScreen(),
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Menu clicked'),
              ),
            );
          },
        ),
        title: const Text('KaamAI'),
        actions: [
          IconButton(
            tooltip: brightness == Brightness.dark
                ? 'Switch to light theme'
                : 'Switch to dark theme',
            icon: Icon(
              brightness == Brightness.dark
                  ? Icons.light_mode_outlined
                  : Icons.dark_mode_outlined,
            ),
            onPressed: () => widget.onThemeToggle(brightness),
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Notifications clicked'),
                ),
              );
            },
          ),
        ],
      ),

      body: IndexedStack(
        index: selectedIndex,
        children: screens,
      ),

      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.assessment_outlined),
            selectedIcon: Icon(Icons.assessment),
            label: 'Report',
          ),
        ],
      ),
    );
  }
}