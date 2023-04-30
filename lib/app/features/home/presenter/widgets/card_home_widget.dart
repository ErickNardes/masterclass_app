// ignore_for_file: public_member_api_docs, sort_constructors_first, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:masterclass_app/app/core/shared/themes/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:masterclass_app/app/features/home/mock/task_mock.dart';
import 'package:masterclass_app/app/features/home/presenter/widgets/custom_button.dart';

class CardHomeWidget extends StatefulWidget {
  final TaskMock taskMock;
  const CardHomeWidget({
    Key? key,
    required this.taskMock,
  }) : super(key: key);

  @override
  State<CardHomeWidget> createState() => _CardHomeWidgetState();
}

class _CardHomeWidgetState extends State<CardHomeWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Material(
      color: ThemeColors.backgroundColor,
      child: SizedBox(
        height: size.height * 0.25,
        width: size.width,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: ThemeColors.backgroundCard,
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 12, left: 14, right: 14),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.blue,
                            ),
                            height: size.height * 0.06,
                            width: size.width * 0.12,
                            child: Center(
                              child: widget.taskMock.icon,
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.03,
                          ),
                          Text(
                            widget.taskMock.title,
                            style: TextStyle(
                              color: ThemeColors.titleColor,
                              fontSize: size.height * 0.018,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Exercicios: ${widget.taskMock.quantityExercice}',
                      style: const TextStyle(
                        color: ThemeColors.subTitleColor,
                      ),
                    )
                  ],
                ),
                // SizedBox(
                //   height: size.height * 0.04,
                // ),
                Center(
                  child: Text(
                    widget.taskMock.description,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      color: ThemeColors.subTitleColor,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'lib/assets/svg/git.svg',
                            color: Colors.white,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Acessar Repositório',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomButton(
                      text: 'Ver mais',
                      onTap: () {},
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
