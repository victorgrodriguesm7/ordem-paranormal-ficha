import 'package:flutter_modular/flutter_modular.dart';
import 'package:ordem_paranormal_ficha/src/modules/modules.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ModuleRoute("/", module: SplashModule())
  ];
}