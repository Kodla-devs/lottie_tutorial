import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LikeAnimation extends StatefulWidget {
  const LikeAnimation({super.key});

  @override
  State<LikeAnimation> createState() => _LikeAnimationState();
}

class _LikeAnimationState extends State<LikeAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
  }

  @override
  void dispose() {
    super.dispose();

    animationController.dispose();
  }

  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Like Animation"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            if (isLiked) {
              isLiked = false;
              animationController.reverse();
            } else {
              isLiked = true;
              animationController.forward();
            }
          },
          child: Lottie.asset(
            "assets/like.json",
            controller: animationController,
          ),
        ),
      ),
    );
  }
}
