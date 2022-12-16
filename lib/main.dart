import 'package:flutter/material.dart';
import 'package:tiktok_downloader/dio/dio_api.dart';
import 'package:tiktok_downloader/screens/home_screen.dart';

void main() {
  DioApi.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
