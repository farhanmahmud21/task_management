import 'package:flutter/material.dart';

import 'package:task_manager/Ui/Screens/add_new_task.dart';
import './summary_Card.dart';
import './userProfileBanner.dart';

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
      body: SafeArea(
        child: Column(
          children: [
            const UserProfileBanner(),
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
    );
  }
}
