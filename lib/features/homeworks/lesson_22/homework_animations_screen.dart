import 'dart:math';

import 'package:flutter/material.dart';

class BouncingBallScreen extends StatefulWidget {
  const BouncingBallScreen({super.key});

  @override
  State<BouncingBallScreen> createState() => _BouncingBallScreenState();
}

class _BouncingBallScreenState extends State<BouncingBallScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Alignment> _alignmentAnimation;
  late final Animation<double> _rotationAnimation;

  @override
  void initState() {
    super.initState();
    initAnimation();
  }

  void initAnimation() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2500),
    );

    _alignmentAnimation = TweenSequence<Alignment>([
      TweenSequenceItem(
        tween: AlignmentTween(
          begin: const Alignment(0.0, 0.4),
          end: Alignment.topCenter,
        ).chain(CurveTween(curve: const Cubic(0.2, 0.95, 0.2, 1.0))),
        weight: 60.0,
      ),

      TweenSequenceItem(
        tween: AlignmentTween(
          begin: Alignment.topCenter,
          end: const Alignment(0.0, 0.4),
        ).chain(CurveTween(curve: Curves.bounceOut)),
        weight: 40.0,
      ),
      TweenSequenceItem(
        tween: ConstantTween<Alignment>(const Alignment(0.0, 0.4)),
        weight: 20.0,
      ),
    ]).animate(_controller);

    const fullRotations = 4.0;

    _rotationAnimation = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(begin: 0.0, end: fullRotations * 0.6 * pi),
        weight: 60,
      ),
      TweenSequenceItem(
        tween: Tween<double>(
          begin: fullRotations * 0.6 * pi,
          end: fullRotations * pi,
        ).chain(CurveTween(curve: Curves.easeOut)),
        weight: 40.0,
      ),
      TweenSequenceItem(
        tween: ConstantTween<double>(fullRotations * pi),
        weight: 20.0,
      ),
    ]).animate(_controller);

    _controller
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controller.forward(from: 0.0);
        }
      })
      ..forward();
  }

  void _toggleAnimation() {
    if (_controller.isAnimating) {
      _controller.stop();
    } else {
      _controller.forward();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bouncing Ball Animation')),
      body: Stack(
        children: [
          GestureDetector(
            onTap: _toggleAnimation,
            child: Column(
              children: [
                Expanded(
                  flex: 7,
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xff78ddfa),
                          Color(0xff85e0fa),
                          Color(0xff93e3fb),
                          Color(0xffa0e7fb),
                          Color(0xffaeeafc),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xff41980a),
                          Color(0xff268b07),
                          Color(0xff138510),
                          Color(0xff117c13),
                          Color(0xff136d15),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Align(
                alignment: _alignmentAnimation.value,
                child: Transform.rotate(
                  angle: _rotationAnimation.value,
                  child: child,
                ),
              );
            },
            child: Image.asset(
              'assets/lesson_22/soccer-ball-isolated.png',
              width: 100,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
