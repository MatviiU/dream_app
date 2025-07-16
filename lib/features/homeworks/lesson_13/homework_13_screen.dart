import 'package:flutter/material.dart';

class HomeworkThirteenScreen extends StatelessWidget {
  const HomeworkThirteenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.blue,
          ),
          alignment: Alignment.bottomRight,
          child: const Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              spacing: 10,
              children: [
                Icon(Icons.star, color: Colors.white),
                Text(
                  'Привіт, Flutter!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.star, color: Colors.white),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
