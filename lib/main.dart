import 'package:flutter/material.dart';
import 'package:widgets_store/config/router/app_router.dart';
import 'package:widgets_store/config/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      title: 'Widgets Flutter Store',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 7).getTheme(),
    );
  }
}
