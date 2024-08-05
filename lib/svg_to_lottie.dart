import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SvgToLottie extends StatelessWidget {
  const SvgToLottie({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      appBar: AppBar(
        title: const Text("Svg To Lottie"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Lottie.asset("assets/world_connect.json"),
            Lottie.asset("assets/kodla_animation.json"),
          ],
        ),
      ),
    );
  }
}
