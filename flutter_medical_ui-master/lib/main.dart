import 'package:flutter/material.dart';
import 'package:flutter_medical_ui/pages/started.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter medical ui master',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StartedPage(),
    );
  }
}
