// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AppBarCustom extends StatefulWidget {
  final String title;
  final String subTitle;
  final String imageIcon;

  const AppBarCustom({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.imageIcon,
  }) : super(key: key);

  @override
  State<AppBarCustom> createState() => _AppBarCustomState();
}

class _AppBarCustomState extends State<AppBarCustom> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
