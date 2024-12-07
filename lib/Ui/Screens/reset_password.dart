import 'package:flutter/material.dart';
import 'package:task_manager/Ui/Screens/signup_page.dart';
import 'Splash_Screen.dart';

class Set_Password extends StatelessWidget {
  const Set_Password({super.key});

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
                Text('Set Password',
                    style: Theme.of(context).textTheme.titleLarge),
                Text(
                  'Minimum length password 8 with letter and word combination',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Confirm password',
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUpPage(),
                            ));
                      },
                      child: const Icon(Icons.arrow_forward_outlined)),
                ),
                // Row(
                //   crossAxisAlignment: CrossAxisAlignment.center,
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     const Text('Have an account?'),
                //     TextButton(
                //         style:
                //             TextButton.styleFrom(foregroundColor: Colors.green),
                //         onPressed: () {
                //           Navigator.push(
                //               context,
                //               MaterialPageRoute(
                //                 builder: (context) => const Login_Screen(),
                //               ));
                //         },
                //         child: Text('Sign in'))
                //   ],
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
