import 'package:ordem_paranormal_ficha/src/shared/models/character_model.dart';

abstract class AppState {}

class InitialAppState extends AppState {
  final Future<bool> Function() loadCharacter;

  InitialAppState({
    required this.loadCharacter
  });
}

class LoadingAppState extends AppState {}

class SuccessAppState extends AppState {
  final CharacterModel? character;
  final bool hasCharacterAlready;
  final Future<bool> Function() saveCharacter;
  
  SuccessAppState({
    required this.character,
    required this.hasCharacterAlready,
    required this.saveCharacter
  });
}