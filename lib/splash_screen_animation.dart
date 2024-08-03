import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:lottie_tutorial/home_page.dart';

class SplashScreenAnimation extends StatefulWidget {
  const SplashScreenAnimation({super.key});

  @override
  State<SplashScreenAnimation> createState() => _SplashScreenAnimationState();
}

class _SplashScreenAnimationState extends State<SplashScreenAnimation> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() {
    Duration duration = const Duration(seconds: 3);
    return Timer(duration, goHome);
  }

  void goHome() {
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) {
        return const HomePage();
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2196F3),
      body: Center(
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.7,
          child: Lottie.asset("assets/kodla_animation.json"),
        ),
      ),
    );
  }
}
