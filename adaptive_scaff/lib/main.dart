import 'package:adaptive_scaff/layout.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adaptive Layout Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const LayoutBuilderExample(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Center(
        child: Text(
          '$screenWidth',
        ),
      ),
    );
  }
}
