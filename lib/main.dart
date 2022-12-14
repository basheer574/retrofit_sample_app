import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:retrofit_sample_app/ui/home_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Retrofit Demo',
      home: HomeScreen(),
    );
  }
}

