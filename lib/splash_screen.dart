import 'dart:async';

import 'package:flutter/material.dart';
 import 'package:uts/login_page.dart';
 

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    super.initState();
    Timer(const Duration(seconds: 3), ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const MyApp())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [Color(0xFf0000FF),Color(0xff00ffff)]
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          Column(
            children: [
              Image.asset(
            'assets/images/galon.png', 
            width: 300,
            height: 300,),
              const Text(
                '\n\DEPOT AIR GALON', 
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18),
                ),
            ],
          ),
          const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}