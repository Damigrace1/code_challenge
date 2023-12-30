import 'package:code_challenge/screens/onboarding/onboarding_page.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coding challenge',
      theme: ThemeData(
        fontFamily: 'Sora',
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff38B4BC)),
        useMaterial3: true,
      ),
      home: const OnboardingPage(),
    );
  }
}
