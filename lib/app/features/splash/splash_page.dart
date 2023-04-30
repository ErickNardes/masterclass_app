import 'package:flutter/material.dart';
import 'package:masterclass_app/app/core/shared/themes/theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: ThemeColors.backgroundColor,
        child: Image.asset('lib/assets/images/masterclass_logo.png'),
      ),
    );
  }
}
