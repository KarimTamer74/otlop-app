// main.dart
import 'package:flutter/material.dart';
import 'package:otlop_app/home_screen.dart';

void main() {
  runApp(OtlopApp());
}

class OtlopApp extends StatelessWidget {
  const OtlopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
