import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kiki/Screens/HomePage.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage())));
  }

  @override
  Widget build(BuildContext context) {
     double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      height: h,
      width: w,
      color: Color.fromARGB(255, 252, 238, 189),
      child: Padding(
        padding: EdgeInsets.only(top: h*0.3,left:8,right: 8),
        child: Column(
          children: [
            Container(
              height: h*0.2,
              width: w,
              color: Color.fromARGB(255, 252, 238, 189),
              child: Lottie.asset('images/chatbot_splash.json'),
            ),
             Text('KiKi  Made with ♥', style: TextStyle(
              color: Colors.grey,
              fontSize: w*0.05,
              decoration: TextDecoration.none
              
             ),)
          ],
        ),
      ),
    );
  }
}
