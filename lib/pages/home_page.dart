import 'package:finance_app/app.dart';
import 'package:finance_app/design/finance_colors.dart';
import 'package:finance_app/design/finance_radius.dart';
import 'package:finance_app/widgets/home_app_bar_title.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  App bar Container
      appBar: AppBar(
        toolbarHeight: 97,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: FinanceRadius.small,
            bottomRight: FinanceRadius.small,
          ),
        ),
        backgroundColor: FinanceColors.brandLightColor,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(16, 45, 16, 12),
          child: HomeAppBarTitle(),
        ),
      ),
      body: const Center(
        child: Text(
          'Hello word',
        ),
      ),
    );
  }
}
