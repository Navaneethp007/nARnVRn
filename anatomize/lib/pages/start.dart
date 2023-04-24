import 'dart:async';
import 'package:flutter/material.dart';
import 'login.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 4),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) =>  LoginPage()
            )
            )
            );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Image.asset(
         'images/screen.png',
         fit: BoxFit.fill,
       ),
      
    );
  }
}
