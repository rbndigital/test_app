import 'package:flutter/material.dart';
import 'package:test_app/ui/providers/TestApp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Test App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const TestApp());
  }
}
