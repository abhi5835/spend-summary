import 'package:flutter/material.dart';
import 'screens/spend_summary_screen.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const SpendSummaryApp());
}

class SpendSummaryApp extends StatelessWidget {
  const SpendSummaryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spend Summary',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark, // Defaulting to dark mode for a premium look
      home: const SpendSummaryScreen(),
    );
  }
}
