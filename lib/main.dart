import 'package:find_flames_ui/pages/navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
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
    return const GetMaterialApp(
      home: Navigation(),
      debugShowCheckedModeBanner: false,
    );
  }
}


