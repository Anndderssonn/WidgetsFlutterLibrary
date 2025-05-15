import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_store/config/router/app_router.dart';
import 'package:widgets_store/config/theme/app_theme.dart';
import 'package:widgets_store/presentation/providers/theme_provider.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppTheme appTheme = ref.watch(themeNotifierProvider);

    return MaterialApp.router(
      routerConfig: appRouter,
      title: 'Widgets Flutter Store',
      debugShowCheckedModeBanner: false,
      theme: appTheme.getTheme(),
    );
  }
}
