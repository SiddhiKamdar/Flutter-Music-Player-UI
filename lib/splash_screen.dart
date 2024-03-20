import 'dart:async';
import 'package:flutter/material.dart';
import 'package:music_player/main_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 6),
    );

    _colorAnimation = ColorTween(
      begin: Colors.transparent,
      end: Color.fromRGBO(10, 6, 28, 1),
    ).animate(_controller);

    _opacityAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller);

    _controller.forward();

    Timer(
      Duration(seconds: 6),
          () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (context) => Main_Screen()
                )
            );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(10, 6, 28, 1),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Opacity(
              opacity: _opacityAnimation.value,
              child: Text(
                "Radio Ava      ".substring(0, (_opacityAnimation.value * 10).floor()),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
