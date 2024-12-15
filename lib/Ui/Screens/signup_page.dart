// Ui/Screens/signup_page.dart

import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:task_manager/data/Models/networkResponse.dart';
import 'package:task_manager/data/Services/network_caller.dart';
import 'package:task_manager/data/utils/urls.dart';
import './Splash_Screen.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  GlobalKey<FormState> _formState = GlobalKey<FormState>();
  TextEditingController _emailTEController = TextEditingController();
  TextEditingController _firstNameTEController = TextEditingController();
  TextEditingController _lastNameTEController = TextEditingController();
  TextEditingController _mobileTEController = TextEditingController();
  TextEditingController _passwordTEController = TextEditingController();
  bool inProgress = false;
  Future<void> userSignup() async {
    inProgress = true;
    if (mounted) {
      setState(() {});
    }

    final NetworkResponseObject response =
        await NetworkCaller().postRequest(Urls.reg, <String, dynamic>{
      "email": _emailTEController.text.trim(),
      "firstName": _firstNameTEController.text.trim(),
      "lastName": _lastNameTEController.text.trim(),
      "mobile": _mobileTEController.text.trim(),
      "password": _passwordTEController.text.trim()
    });

    if (response.isSuccess) {
      if (mounted) {
        setState(() {
          inProgress = false;
        });
        _emailTEController.clear();
        _firstNameTEController.clear();
        _lastNameTEController.clear();
        _mobileTEController.clear();
        _passwordTEController.clear();
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Registration Successful'),
          backgroundColor: Colors.green,
        ));
      }
    } else {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Registration Failed'),
        ));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen_Background(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _formState,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Text('Join With Us',
                        style: Theme.of(context).textTheme.titleLarge),
                  ),
                  TextFormField(
                    controller: _emailTEController,
                    decoration: const InputDecoration(
                      hintText: 'Email',
                    ),
                    validator: (String? value) {
                      if (value?.isEmpty ?? true) {
                        return 'Enter your Email';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  TextFormField(
                    controller: _firstNameTEController,
                    decoration: const InputDecoration(
                      hintText: 'First Name',
                    ),
                    validator: (String? value) {
                      if (value?.isEmpty ?? true) {
                        return 'Enter your First Name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    controller: _lastNameTEController,
                    decoration: const InputDecoration(
                      hintText: 'Last Name',
                    ),
                    validator: (String? value) {
                      if (value?.isEmpty ?? true) {
                        return 'Enter your Last Name';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _mobileTEController,
                    decoration: const InputDecoration(
                      hintText: 'Mobile',
                    ),
                    validator: (String? value) {
                      if ((value?.isEmpty ?? true) || value!.length != 11) {
                        return 'Enter your valid Mobile Number';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _passwordTEController,
                    decoration: const InputDecoration(
                      hintText: 'Password',
                    ),
                    validator: (String? value) {
                      if ((value?.isEmpty ?? true) || value!.length < 6) {
                        return 'Enter your password with containing 6 letters';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Visibility(
                      visible: inProgress == false,
                      replacement:
                          Center(child: const CircularProgressIndicator()),
                      child: ElevatedButton(
                          onPressed: () {
                            if (_formState.currentState!.validate()) {
                              userSignup();
                            }
                          },
                          child: const Icon(Icons.chevron_right_rounded)),
                    ),
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
                        child: const Text('Sign In'),
                      ),
                    ],
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
