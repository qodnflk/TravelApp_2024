import 'package:flutter/material.dart';
import 'package:travel_app2/screens/start_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color(0x0ffdf2f6)),
      debugShowCheckedModeBanner: false,
      home: const StartPage(),
    );
  }
}
