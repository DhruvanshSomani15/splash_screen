import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Navigate to your app's main screen after a short delay
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/main');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 900, // set the height of the container
        width: 900, // set the width of the container
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/messi.png'),
            fit: BoxFit.contain, // set the fit of the image
          ),
        ),
      ),
    );
  }
}
