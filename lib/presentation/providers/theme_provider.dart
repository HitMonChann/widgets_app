import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkModeProvider = StateProvider<bool>((ref) => false);

// Listado de colores inmutable
final colorsProvider = Provider((ref) => colorsList);

// Un simple entero
final selectedColorProvider = StateProvider<int>((ref) => 0);