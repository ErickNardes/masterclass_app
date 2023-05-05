// ignore_for_file: public_member_api_docs, sort_constructors_first, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masterclass_app/app/core/shared/themes/theme.dart';

class BottomNavCustom extends StatefulWidget {
  const BottomNavCustom({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavCustom> createState() => _BottomNavCustomState();
}

class _BottomNavCustomState extends State<BottomNavCustom> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.07,
      width: size.width,
      decoration: const BoxDecoration(
        color: ThemeColors.backgroundColor,
      ),
      child: Padding(
        padding: EdgeInsets.only(left: size.width * 0.07, right: size.width * 0.07),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  'lib/assets/svg/feather.svg',
                  color: Colors.white,
                ),
                const Text(
                  'Atividades',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: size.height * 0.007),
              child: const VerticalDivider(
                color: ThemeColors.subTitleColor,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  'lib/assets/svg/git.svg',
                  color: Colors.white,
                ),
                const Text(
                  'Repositórios',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: size.height * 0.007),
              child: const VerticalDivider(
                color: ThemeColors.subTitleColor,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  'lib/assets/svg/person.svg',
                  color: Colors.white,
                ),
                const Text(
                  'Sobre o Dev',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
