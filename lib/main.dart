import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const AmorStoriesApp());
}

class AmorStoriesApp extends StatelessWidget {
  const AmorStoriesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Amor Stories',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const HomeScreen(),
    );
  }
}
