import 'package:ordem_paranormal_ficha/src/shared/models/character_model.dart';

abstract class ConfigState {}

class InitConfigState extends ConfigState {}

class InitialConfigState extends ConfigState {
  bool Function() loadCharacter;

  InitialConfigState({
    required this.loadCharacter
  });
}

class LoadingConfigState extends ConfigState {}

class SuccessConfigState extends ConfigState {
  CharacterModel characterModel;

  SuccessConfigState({
    required this.characterModel
  });
}

class ErrorConfigState extends ConfigState {}