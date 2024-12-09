import 'package:flutter/material.dart';
import 'package:task_manager/Ui/Screens/userProfileBanner.dart';

// ignore: camel_case_types
class Add_New_Task extends StatefulWidget {
  const Add_New_Task({super.key});

  @override
  State<Add_New_Task> createState() => _Add_New_TaskState();
}

class _Add_New_TaskState extends State<Add_New_Task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const UserProfileBanner(),
                  const Text(
                    'Add New Task',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Title'),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    maxLines: 5,
                    decoration: const InputDecoration(hintText: 'Description'),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.navigate_next_outlined)),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
