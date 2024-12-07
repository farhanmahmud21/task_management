import 'package:flutter/material.dart';
import 'package:task_manager/Ui/Screens/Splash_Screen.dart';
import 'package:task_manager/Ui/Screens/add_new_task.dart';
import './summary_Card.dart';

class NewTaskScreen extends StatelessWidget {
  const NewTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        foregroundColor: Colors.black,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Add_New_Task(),
              ));
        },
        child: Icon(Icons.add),
      ),
      body: Screen_Background(
        child: SafeArea(
          child: Column(
            children: [
              const ListTile(
                tileColor: Color.fromARGB(255, 0, 0, 0),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://plus.unsplash.com/premium_photo-1709311452215-496c6740ca59?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                  radius: 25,
                ),
                title: Text(
                  'User Name',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                ),
                subtitle: Text(
                  'User Email',
                  style: TextStyle(color: Color.fromARGB(255, 18, 17, 17)),
                ),
              ),
              const Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Row(
                  children: [
                    Expanded(
                      child: SummaryCard(
                        title: 'New',
                        number: 124,
                      ),
                    ),
                    Expanded(
                      child: SummaryCard(number: 221, title: 'In Progress'),
                    ),
                    Expanded(
                      child: SummaryCard(
                        title: 'Cancel',
                        number: 15,
                      ),
                    ),
                    Expanded(
                      child: SummaryCard(number: 221, title: 'In Progress'),
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) => ListTile(
                    title: Text('This will be here'),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('This will be here'),
                        const Text('Date'),
                        Row(
                          children: [
                            const Chip(
                              label: Text('New'),
                              backgroundColor: Colors.blueAccent,
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.delete),
                            ),
                            IconButton(
                                onPressed: () {}, icon: const Icon(Icons.edit))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
