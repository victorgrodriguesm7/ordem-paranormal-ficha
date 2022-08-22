import 'package:flutter_modular/flutter_modular.dart';
import 'package:ordem_paranormal_ficha/src/modules/splash/splash_page.dart';

class SplashModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute("/", child: (_, __) => const SplashPage())
  ];
}