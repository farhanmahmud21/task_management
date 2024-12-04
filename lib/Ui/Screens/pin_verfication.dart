import 'package:flutter/material.dart';
import 'package:task_manager/Ui/Screens/reset_password.dart';
import 'Splash_Screen.dart';
import './Login_Screen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Pin_Verification extends StatelessWidget {
  const Pin_Verification({super.key});

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
                Text('Pin Verification',
                    style: Theme.of(context).textTheme.titleLarge),
                Text(
                  'A 6 digit pin will sent to your email',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                PinCodeTextField(
                  textStyle: const TextStyle(color: Colors.white),
                  length: 6,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(10),
                      fieldHeight: 50,
                      fieldWidth: 40,
                      activeFillColor: Colors.green,
                      inactiveFillColor: Colors.white,
                      inactiveColor: Colors.red,
                      selectedFillColor: Colors.white),
                  enablePinAutofill: true,
                  cursorColor: Colors.red,
                  animationDuration: const Duration(milliseconds: 300),
                  backgroundColor: Colors.white,
                  enableActiveFill: true,
                  onCompleted: (v) {},
                  onChanged: (value) {},
                  beforeTextPaste: (text) {
                    print("Allowing to paste $text");
                    //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                    //but you can show anything you want here, like your pop up saying wrong paste format or etc
                    return true;
                  },
                  appContext: context,
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
                              builder: (context) => const Set_Password(),
                            ));
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
                        child: Text('Sign in'))
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
