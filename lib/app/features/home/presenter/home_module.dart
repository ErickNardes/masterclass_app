import 'package:flutter_modular/flutter_modular.dart';
import 'package:masterclass_app/app/features/home/presenter/pages/home_page.dart';
import 'package:masterclass_app/app/features/splash/splash_page.dart';

class HomeModule extends Module {
  @override
  List<Bind> binds = [];
  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => const SplashPage(),
    ),
    ChildRoute('/splash', child: (_, args) => const SplashPage()),
  ];
}
