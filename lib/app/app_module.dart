import 'package:flutter_modular/flutter_modular.dart';

import 'features/home/presenter/home_module.dart';
import 'features/home/presenter/pages/home_page.dart';
import 'features/splash/splash_page.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          Modular.initialRoute,
          module: HomeModule(),
        ),
        ChildRoute('/splash', child: (_, args) => const SplashPage()),
        ChildRoute('/home', child: (_, args) => const HomePage()),
      ];
}
