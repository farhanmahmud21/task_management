import 'package:flutter/material.dart';

class UserProfileBanner extends StatelessWidget {
  const UserProfileBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      tileColor: Colors.green,
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
    );
  }
}
