import 'package:flutter_modular/flutter_modular.dart';
import 'package:ordem_paranormal_ficha/src/modules/Home/home_page.dart';

class HomeModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes =>
      [ChildRoute("/", child: (_, __) => const HomePage())];
}
