import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manager/Ui/Screens/Login_Screen.dart';
import 'package:task_manager/Ui/Utils/assets_utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigateToLogin();
  }

  void navigateToLogin() {
    Future.delayed(const Duration(seconds: 4)).then((_) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const Login_Screen()),
        (route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen_Background(
        child: Center(
          child: SvgPicture.asset(
            AssetsUtils.logo,
            height: 50,
            width: 50,
          ),
        ),
      ),
    );
  }
}

class Screen_Background extends StatelessWidget {
  final Widget child;
  const Screen_Background({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: SvgPicture.asset(
            AssetsUtils.background,
            fit: BoxFit.cover,
          ),
        ),
        child,
      ],
    );
  }
}
