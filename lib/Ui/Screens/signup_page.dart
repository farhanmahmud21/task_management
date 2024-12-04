import 'package:flutter/material.dart';
import './Splash_Screen.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen_Background(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Text('Join With Us',
                      style: Theme.of(context).textTheme.titleLarge),
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'First Name',
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Last Name',
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Mobile',
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: const Icon(Icons.chevron_right_rounded)),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Have an account?'),
                    TextButton(
                        style:
                            TextButton.styleFrom(foregroundColor: Colors.green),
                        onPressed: () {},
                        child: const Text('Sign In'))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
