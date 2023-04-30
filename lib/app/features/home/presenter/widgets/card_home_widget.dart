// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CardHomeWidget extends StatefulWidget {
  final String title;
  final Icon icon;
  final String description;

  const CardHomeWidget({
    Key? key,
    required this.title,
    required this.icon,
    required this.description,
  }) : super(key: key);

  @override
  State<CardHomeWidget> createState() => _CardHomeWidgetState();
}

class _CardHomeWidgetState extends State<CardHomeWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
