import 'package:dream_app/features/homeworks/lesson_14/rate/widgets/animated_rate_button.dart';
import 'package:flutter/material.dart';

class RateButtons extends StatefulWidget {
  const RateButtons({super.key});

  @override
  State<RateButtons> createState() => _RateButtonsState();
}

class _RateButtonsState extends State<RateButtons> {
  bool? isLike;

  @override
  Widget build(BuildContext context) {
    const selectedColor = Color.fromRGBO(35, 88, 209, 1);
    const unselectedColor = Color.fromRGBO(19, 19, 30, 0.04);

    return Row(
      spacing: 12,
      children: [
        AnimatedRateButton(
          isSelected: isLike == false,
          iconPath: isLike == false
              ? 'assets/icons/white_dislike.png'
              : 'assets/icons/dislike.png',
          onTap: () => toggleLike(false),
          selectedColor: selectedColor,
          unselectedColor: unselectedColor,
        ),
        AnimatedRateButton(
          isSelected: true == isLike,
          iconPath: true == isLike
              ? 'assets/icons/white_like.png'
              : 'assets/icons/like.png',
          onTap: () => toggleLike(true),
          selectedColor: selectedColor,
          unselectedColor: unselectedColor,
        ),
      ],
    );
  }

  void toggleLike(bool value) {
    setState(() {
      if (isLike == value) {
        isLike = null;
      } else {
        isLike = value;
      }
    });
  }
}
