import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieController extends StatefulWidget {
  const LottieController({super.key});

  @override
  State<LottieController> createState() => _LottieControllerState();
}

class _LottieControllerState extends State<LottieController>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(vsync: this);
    animationController.addStatusListener(
      (status) {
        if (status == AnimationStatus.completed) {
          Navigator.pop(context);
          animationController.reset();
        }
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lottie Controller"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset("assets/travel_animation.json"),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.1,
            ),
            ElevatedButton(
              onPressed: () {
                save();
              },
              child: Text(
                "Save",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }

  save() {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Lottie.asset(
                "assets/save.json",
                repeat: false,
                controller: animationController,
                onLoaded: (p0) {
                  animationController.duration = p0.duration;
                  animationController.forward();
                },
              ),
              Text(
                "Saved",
                style: Theme.of(context).textTheme.displayMedium,
              )
            ],
          ),
        );
      },
    );
  }
}
