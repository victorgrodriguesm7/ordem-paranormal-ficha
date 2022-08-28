import 'package:flutter_modular/flutter_modular.dart';
import 'package:ordem_paranormal_ficha/src/app_controller.dart';
import 'package:ordem_paranormal_ficha/src/modules/modules.dart';
import 'package:ordem_paranormal_ficha/src/shared/repository/database_repository.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
    Bind.singleton((i) => DatabaseRepository()),
    Bind.singleton((i) => AppController(database: i()))
  ];

  @override
  List<ModularRoute> get routes => [
    ModuleRoute("/", module: SplashModule()),
    ModuleRoute("/config", module: ConfigModule()),
  ];
}