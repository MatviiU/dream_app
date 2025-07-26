import 'package:flutter/material.dart';

class AnimatedRateButton extends StatelessWidget {
  const AnimatedRateButton({
    required this.isSelected,
    required this.iconPath,
    required this.onTap,
    required this.selectedColor,
    required this.unselectedColor,
    super.key,
  });

  final bool isSelected;
  final String iconPath;
  final VoidCallback onTap;
  final Color selectedColor;
  final Color unselectedColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedScale(
        scale: isSelected ? 1.1 : 1,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOutBack,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeInOut,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isSelected ? selectedColor : unselectedColor,
          ),
          padding: const EdgeInsets.all(10),
          child: Image.asset(iconPath, width: 20, height: 19),
        ),
      ),
    );
  }
}
