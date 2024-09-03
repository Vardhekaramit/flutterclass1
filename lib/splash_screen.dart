import 'dart:async';

import 'package:classes_and_properties/radio1.dart';
import 'package:flutter/material.dart';

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
    Timer(Duration(seconds: 2),(){
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context)=> Radio1()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
            child: Text("Splash screen", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 31),)),
      )
    );
  }
}
