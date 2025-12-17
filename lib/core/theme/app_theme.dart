import 'package:flutter/material.dart';

class AppColors {
  // ================= Core Brand Colors (v0 aligned) =================

  /// --primary: 23 31 47
  static const Color primary = Color(0xFF171F2F); // Dark Navy

  /// --secondary: 32 40 55
  static const Color secondary = Color(0xFF202837); // Dark Blue-Grey

  /// --accent: 215 251 0
  static const Color accent = Color(0xFFD7FB00); // Neon Yellow

  /// --accent-foreground: 23 31 47
  static const Color accentForeground = Color(0xFF171F2F);

  // ================= Background & Surfaces =================

  /// --background: 255 255 255
  static const Color background = Color(0xFFFFFFFF);

  /// --card: 255 255 255
  static const Color card = Color(0xFFFFFFFF);

  /// --muted: 243 244 246
  static const Color muted = Color(0xFFF3F4F6);

  /// --border: 229 231 235
  static const Color border = Color(0xFFE5E7EB);

  // ================= Text Colors =================

  /// --foreground: 23 31 47
  static const Color textPrimary = Color(0xFF171F2F);

  /// --muted-foreground: 107 114 128
  static const Color textSecondary = Color(0xFF6B7280);

  // ================= Utility / Aliases =================

  /// Keep these aliases for backward compatibility
  static const Color highlight = accent;
  static const Color white = Color(0xFFFFFFFF);
}
