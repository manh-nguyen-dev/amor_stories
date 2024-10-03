import 'package:flutter/material.dart';

class StoryProgressBar extends StatelessWidget {
  final AnimationController controller;

  const StoryProgressBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return LinearProgressIndicator(
          value: controller.value,
          backgroundColor: Colors.grey,
          valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
        );
      },
    );
  }
}
