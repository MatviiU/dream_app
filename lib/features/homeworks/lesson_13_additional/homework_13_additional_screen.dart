import 'package:dream_app/features/homeworks/lesson_13_additional/widgets/photo_gallery.dart';
import 'package:dream_app/features/homeworks/lesson_13_additional/widgets/profile/profile_header.dart';
import 'package:dream_app/features/homeworks/lesson_13_additional/widgets/profile/profile_name.dart';
import 'package:dream_app/features/homeworks/lesson_13_additional/widgets/profile/profile_stats.dart';
import 'package:flutter/material.dart';

class HomeworkThirteenAdditionalScreen extends StatelessWidget {
  const HomeworkThirteenAdditionalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Профіль'), centerTitle: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(16),
                  ),
                ),
                child: const Column(
                  children: [
                    ProfileHeader(),
                    SizedBox(height: 40),
                    Column(
                      children: [
                        ProfileName(profileName: 'Матвій Улицький'),
                        SizedBox(height: 16),
                        Center(
                          child: Row(
                            children: [
                              ProfileStats(
                                title: 'Підписники',
                                subtitle: '1245',
                              ),
                              ProfileStats(title: 'Пости', subtitle: '32'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Text(
                  'Галерея',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const PhotoGallery(),
            ],
          ),
        ),
      ),
    );
  }
}
