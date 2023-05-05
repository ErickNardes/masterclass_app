import 'package:flutter/material.dart';
import 'package:masterclass_app/app/core/shared/themes/theme.dart';
import 'package:masterclass_app/app/core/shared/themes/widgets/app_bar/app_bar_custom.dart';
import 'package:masterclass_app/app/features/home/mock/task_mock.dart';
import 'package:masterclass_app/app/features/home/presenter/widgets/bottom_nav_custom.dart';
import 'package:masterclass_app/app/features/home/presenter/widgets/card_home_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const BottomNavCustom(),
        backgroundColor: ThemeColors.backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              AppBarCustom(
                  action: () {},
                  title: 'Atividades',
                  subTitle: 'Flutterando Masterclass',
                  logo: Image.asset(
                    'lib/assets/images/logo.png',
                  )),
              SizedBox(
                width: size.width,
                height: size.height,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
                  child: ListView.separated(
                      separatorBuilder: (_, __) {
                        return SizedBox(
                          height: size.height * 0.02,
                        );
                      },
                      itemCount: listTasks.length,
                      itemBuilder: (_, index) {
                        final task = listTasks[index];
                        return Column(
                          children: [
                            CardHomeWidget(
                              taskMock: task,
                            ),
                          ],
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
