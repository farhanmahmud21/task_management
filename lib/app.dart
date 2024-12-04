import 'package:flutter/material.dart';
import 'package:task_manager/Ui/Screens/Splash_Screen.dart';

class Task_Manager extends StatelessWidget {
  const Task_Manager({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Manager',
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.green,
          textTheme: const TextTheme(
              titleLarge: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.6),
              bodyMedium: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w500)),
          inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(borderSide: BorderSide.none),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 10),
                elevation: 6,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9)),
                backgroundColor: Colors.green,
                iconColor: Colors.white),
          )),
      darkTheme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.brown,
      ),
      themeMode: ThemeMode.light,
      home: const SplashScreen(),
    );
  }
}
