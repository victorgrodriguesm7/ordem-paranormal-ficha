import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ordem_paranormal_ficha/src/app_controller.dart';
import 'package:ordem_paranormal_ficha/src/app_state.dart';

class SplashPage extends StatelessWidget {
  final AppController controller = Modular.get<AppController>();
  
  SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: controller,
      builder: (_, state, child) {
        if (state is InitialAppState){
          state.loadCharacter();
        }

        if (state is SuccessAppState){
          if (state.hasCharacterAlready){
            // TODO: Redirect to Register Page
          } else {
            // TODO: Redirect to Home Page
          }
        }

        return const Center(
          child: Text("Bem Vindo a Ordem"),
        );
      }
    );
  }
}