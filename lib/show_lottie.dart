import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ShowLottie extends StatelessWidget {
  const ShowLottie({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Lottie.network(
            //   "https://lottie.host/b796786e-9c77-4e27-955a-63449a0a7b70/gxnTETbsy6.json",
            //   height: 400,
            //   animate: true,
            //   // reverse: true,
            //   repeat: false,
            // ),
            Lottie.asset(
              "assets/animation.json",
            ),
          ],
        ),
      ),
    );
  }
}
