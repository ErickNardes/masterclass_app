// ignore_for_file: public_member_api_docs, sort_constructors_first, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:masterclass_app/app/core/shared/themes/theme.dart';

class AppBarCustom extends StatefulWidget {
  final String title;
  final String subTitle;
  final Image logo;
  final Function() action;
  const AppBarCustom({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.logo,
    required this.action,
  }) : super(key: key);

  @override
  State<AppBarCustom> createState() => _AppBarCustomState();
}

class _AppBarCustomState extends State<AppBarCustom> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.1,
      width: size.width,
      decoration: const BoxDecoration(
        color: ThemeColors.backgroundColor,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Row(
          children: [
            Image.asset('lib/assets/images/logo.png'),
            SizedBox(
              width: size.width * 0.02,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                      color: ThemeColors.titleColor,
                    ),
                  ),
                  SizedBox(
                    width: size.height * 0.03,
                  ),
                  Text(
                    widget.subTitle,
                    style: const TextStyle(
                      color: ThemeColors.titleColor,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                widget.action;
              },
              child: SvgPicture.asset(
                'lib/assets/svg/moon.svg',
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
