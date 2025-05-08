import 'package:flutter/material.dart';
import 'package:widgets_store/config/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widgets Flutter Store',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 5).getTheme(),
      home: Scaffold(
        body: Center(
          child: FilledButton(onPressed: () {}, child: const Text('Press me!')),
        ),
      ),
    );
  }
}
