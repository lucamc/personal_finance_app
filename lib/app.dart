import 'package:finance_app/design/finance_themes.dart';
import 'package:finance_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class FinanceApp extends StatelessWidget {
  const FinanceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: FinanceThemes.defaultTheme,
      home: HomePage(),
    );
  }
}
