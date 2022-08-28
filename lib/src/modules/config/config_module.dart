import 'package:flutter_modular/flutter_modular.dart';
import 'package:ordem_paranormal_ficha/src/app_controller.dart';
import 'package:ordem_paranormal_ficha/src/modules/config/config_controller.dart';
import 'package:ordem_paranormal_ficha/src/modules/config/config_page.dart';

class ConfigModule extends Module {
  @override
  List<Bind> get binds => [
    Bind.factory<ConfigController>((modular){
      AppController appController = modular<AppController>();
      bool hasCharacter = false;

      if (modular.args.data.length > 0){
        hasCharacter = modular.args.data[0];
      }

      return ConfigController(
        appController: appController, 
        isNewChar: hasCharacter
      );
    })
  ];
  
  @override
  List<ModularRoute> get routes => [
    ChildRoute("/", child: (_, __) => const ConfigPage())
  ];
}