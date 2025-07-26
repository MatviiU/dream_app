import 'package:dream_app/features/homeworks/lesson_14/rate/widgets/rate_category_item.dart';
import 'package:dream_app/features/homeworks/lesson_14/rate/widgets/rate_comment.dart';
import 'package:dream_app/features/homeworks/lesson_14/rate/widgets/rate_stars.dart';
import 'package:dream_app/features/homeworks/lesson_14/rate/widgets/send_button.dart';
import 'package:flutter/material.dart';

class RateScreen extends StatefulWidget {
  const RateScreen({super.key});

  @override
  State<RateScreen> createState() => _RateScreenState();
}

class _RateScreenState extends State<RateScreen> {
  final ScrollController _scrollController = ScrollController();
  var _showStars = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      final max = _scrollController.position.maxScrollExtent;
      final current = _scrollController.offset;
      if (current >= max - 100 && !_showStars) {
        setState(() {
          _showStars = true;
        });
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(238, 242, 252, 1),
      appBar: AppBar(
        title: const Text(
          'Оцінка візиту до магазину',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color.fromRGBO(32, 33, 36, 1),
          ),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 96), // місце під кнопку
            child: ListView.separated(
              controller: _scrollController,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              separatorBuilder: (_, __) => const SizedBox(height: 8),
              itemCount: 11,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      spacing: 16,
                      children: [
                        const Text(
                          'Яку оціночку поставите відділам?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                        RateStars(),
                      ],
                    ),
                  );
                }
                if (index == 10) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: RateComment(),
                  );
                }
                return const RateCategoryCard(
                  title: 'Овочі, фрукти',
                  subtitles: ['Обслуговування', 'Асортимент'],
                );
              },
            ),
          ),

          // Фіксована кнопка
          const Positioned(
            bottom: 24,
            left: 16,
            right: 16,
            child: SendButton(),
          ),
        ],
      ),
    );
  }
}
