import 'package:anatomize/pages/camera.dart';
import 'package:anatomize/pages/forgot.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:anatomize/pages/login.dart';
import 'package:anatomize/pages/home.dart';
import 'package:anatomize/pages/start.dart';

void main() {
  runApp(TestApp());
}

class TestApp extends StatelessWidget {
  const TestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return const MaterialApp(
      
      home:Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}
