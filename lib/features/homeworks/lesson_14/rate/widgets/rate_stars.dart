import 'package:dream_app/features/homeworks/lesson_14/rate/widgets/animated_star.dart';
import 'package:flutter/material.dart';

class RateStars extends StatelessWidget {
  RateStars({super.key});

  final ValueNotifier<int> _stars = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _stars,
      builder: (context, value, child) {
        return Center(
          child: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onHorizontalDragUpdate: (details) {
              final box = context.findRenderObject()! as RenderBox;
              final localPosition = box.globalToLocal(details.globalPosition);
              const starWidth = 48;
              final newRating = (localPosition.dx / starWidth).clamp(0, 5);
              _stars.value = newRating.round();
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(5, (index) {
                final isSelected = index < value;
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: GestureDetector(
                    onTap: () {
                      if (index == 0 && value == 1) {
                        _stars.value = 0;
                      } else {
                        _stars.value = index + 1;
                      }
                    },
                    child: AnimatedStar(
                      isSelected: isSelected,
                      onTap: () {
                        if (index == 0 && value == 1) {
                          _stars.value = 0;
                        } else {
                          _stars.value = index + 1;
                        }
                      },
                    ),
                  ),
                );
              }),
            ),
          ),
        );
      },
    );
  }
}
