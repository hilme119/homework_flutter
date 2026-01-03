import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:food_deeps/screen/WelcomeVIew.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 4), () {
      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const Login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// ===== Top Circle =====
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset("assets/images/circle1.png", height: 150)
                  .animate()
                  .fadeIn(duration: 800.ms)
                  .fadeOut(delay: 3.seconds, duration: 800.ms),
            ],
          ),

          const SizedBox(height: 90),

          /// ===== Logo =====
          Center(
            child:
                Image.asset("assets/images/logo.png", height: 250, width: 250)
                    .animate()
                    .fadeIn(duration: 1.seconds)
                    .scale(begin: const Offset(0.8, 0.8))
                    .fadeOut(delay: 3.seconds, duration: 800.ms),
          ),

          const Spacer(),

          /// ===== Bottom Circle =====
          Image.asset("assets/images/circle2.png", height: 100)
              .animate()
              .fadeIn(duration: 800.ms)
              .fadeOut(delay: 3.seconds, duration: 800.ms),
        ],
      ),
    );
  }
}
