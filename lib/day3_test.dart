import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(253, 246, 245, 245),
      body: Center(
        child: Text(
          "Native Splash Tutorial",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
          )
        ),
      )
    );
  }
}
