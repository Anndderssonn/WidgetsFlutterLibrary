import 'dart:ui';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_store/config/theme/app_theme.dart';

final isDarkModeProvider = StateProvider<bool>((ref) => false);
final colorPickedProvider = StateProvider<int>((ref) => 0);
final colorsProvider = Provider<List<Color>>((ref) => colors);
