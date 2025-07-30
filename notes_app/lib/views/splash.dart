import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:notes_app/navigation/appRoutes.dart';

import 'package:notes_app/views/NotesAppViews.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _logoFade;
  late Animation<double> _titleFade;
  late Animation<double> _sloganFade;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 6), // هنا زودنا الوقت
      vsync: this,
    );

    _logoFade = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.4, curve: Curves.easeIn),
      ),
    );

    _titleFade = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.3, 0.65, curve: Curves.easeIn),
      ),
    );

    _sloganFade = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.55, 1.0, curve: Curves.easeIn),
      ),
    );

    _controller.forward();

    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(
        const Duration(seconds: 8)); // هنا زودنا الوقت قبل التنقل
    Navigator.pushNamed(context, Approutes.NotesAppViews);
    //pushReplacement(
    //   context,
    //   MaterialPageRoute(builder: (context) => const NotesAppViews()),
    // );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF000000),
                Color(0xFF111111),
                Color(0xFF222222),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeTransition(
                opacity: _logoFade,
                child: Lottie.asset(
                  'assets/animations/notes.json',
                  width: 250,
                  height: 250,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 30),
              FadeTransition(
                opacity: _titleFade,
                child: const Text(
                  'My Notes App',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              FadeTransition(
                opacity: _sloganFade,
                child: const Text(
                  'Write & organize freely',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
