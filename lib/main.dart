import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ordem_paranormal_ficha/src/app.dart';

void main(){
  runApp(
    ModularApp(
      module: AppModule(),
      child: const AppWidget()
    )
  );
}