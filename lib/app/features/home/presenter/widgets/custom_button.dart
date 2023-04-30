import 'package:flutter/material.dart';
import 'package:masterclass_app/app/core/shared/themes/theme.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final Function() onTap;
  const CustomButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.04,
      width: size.width * 0.3,
      decoration: BoxDecoration(
          color: ThemeColors.primaryColor,
          borderRadius: BorderRadius.circular(28)),
      child: Center(
        child: Text(
          widget.text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
