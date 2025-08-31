import 'package:flutter/material.dart';

class AnimatedStar extends StatelessWidget {
  const AnimatedStar({
    required this.isSelected,
    required this.onTap,
    super.key,
  });

  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: 1, end: isSelected ? 1.2 : 1),
      curve: Curves.easeInOutBack,
      duration: const Duration(milliseconds: 200),
      builder: (context, scale, child) {
        return Transform.scale(
          scale: scale,
          child: GestureDetector(
            onTap: onTap,
            child: Icon(
              Icons.star,
              color: isSelected ? Colors.orange : Colors.grey.shade300,
              size: 48,
              shadows: isSelected
                  ? [
                      const Shadow(
                        color: Color.fromRGBO(255, 153, 0, 0.35),
                        offset: Offset(0, 3),
                        blurRadius: 12,
                      ),
                    ]
                  : [],
            ),
          ),
        );
      },
    );
  }
}
