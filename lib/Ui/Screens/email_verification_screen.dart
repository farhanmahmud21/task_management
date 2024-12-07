import 'package:flutter/material.dart';
import 'package:task_manager/Ui/Screens/Login_Screen.dart';
import 'package:task_manager/Ui/Screens/pin_verfication.dart';
import './Splash_Screen.dart';

class EmailVerificationScreen extends StatelessWidget {
  const EmailVerificationScreen({super.key});

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
                Text('Get Started With',
                    style: Theme.of(context).textTheme.titleLarge),
                Text(
                  'A 6 digit pin will sent to your email',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Pin_Verification(),
                          ),
                        );
                      },
                      child: const Icon(Icons.arrow_forward_outlined)),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Have an account?'),
                    TextButton(
                        style:
                            TextButton.styleFrom(foregroundColor: Colors.green),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Login_Screen(),
                              ));
                        },
                        child: const Text('Sign in'))
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
