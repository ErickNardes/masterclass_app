import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:masterclass_app/app/core/shared/themes/theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Modular.to.pushNamed('/home');
    });
    return Material(
      color: ThemeColors.backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('lib/assets/images/masterclass_logo.png'),
          const SizedBox(
            height: 30,
          ),
          const CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(Colors.white),
          ),
        ],
      ),
    );
  }
}
