import 'package:flutter/material.dart';
import 'package:task_manager/Ui/Screens/cancelled_progress.dart';
import 'package:task_manager/Ui/Screens/complete_task.dart';
import 'package:task_manager/Ui/Screens/in_progress.dart';
import 'package:task_manager/Ui/Screens/new_taskScreen.dart';

class Base_NavigationBar extends StatefulWidget {
  const Base_NavigationBar({super.key});

  @override
  State<Base_NavigationBar> createState() => _Base_NavigationBarState();
}

class _Base_NavigationBarState extends State<Base_NavigationBar> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const NewTaskScreen(),
    const InProgress(),
    const CancelledTask(),
    const CompleteTask(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            _currentIndex = index;
            setState(() {});
          },
          currentIndex: _currentIndex,
          unselectedItemColor: Colors.grey,
          unselectedLabelStyle: const TextStyle(color: Colors.grey),
          showUnselectedLabels: true,
          selectedItemColor: Colors.blue,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: 'New'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_tree), label: 'In Progress'),
            BottomNavigationBarItem(
                icon: Icon(Icons.cancel_outlined), label: 'Cancel'),
            BottomNavigationBarItem(
                icon: Icon(Icons.done_all), label: 'Complete'),
          ]),
    );
  }
}
