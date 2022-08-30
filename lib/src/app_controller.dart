import 'package:flutter/cupertino.dart';
import 'package:ordem_paranormal_ficha/src/app_state.dart';
import 'package:ordem_paranormal_ficha/src/shared/models/character_model.dart';
import 'package:ordem_paranormal_ficha/src/shared/repository/database_repository.dart';

class AppController extends ValueNotifier<AppState> {
  final DatabaseRepository database;

  AppController({
    required this.database
  }): super(LoadingAppState()){
    _initState();
  }

  _initState(){
    value = InitialAppState(loadCharacter: _loadCharacter);
  }

  CharacterModel? _character;

  bool get _hasCharacterAlready => _character != null;

  Future<bool> _loadCharacter() async {
    if (!database.isStarted) {
      await database.init();
    }

    _character = database.getCharacterModel();

    value = SuccessAppState(
      character: _character,
      hasCharacterAlready: _hasCharacterAlready,
      saveCharacter: _saveCharacter,
      updateCharacter: _updateCharacter
    );
    
    return true;
  }

  Future<bool> _saveCharacter() async {
    if (!database.isStarted) {
      await database.init();
    }
    
    if (_character != null){
      return await database.saveCharacterModel(_character!);
    }

    return true;
  }

  void _updateCharacter(CharacterModel character){
    _character = character;
    
    value = SuccessAppState(
      character: character,
      saveCharacter: _saveCharacter,
      hasCharacterAlready: _hasCharacterAlready,
      updateCharacter: _updateCharacter
    );
  }
}