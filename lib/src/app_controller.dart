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

  bool _loadCharacter() {
    if (database.loading) return false;

    _character = database.getCharacterModel();

    value = SuccessAppState(
      character: _character,
      hasCharacterAlready: _hasCharacterAlready,
      saveCharacter: _saveCharacter
    );
    
    return true;
  }

  Future<bool> _saveCharacter() async {
    if (database.loading) return false;
    
    if (_character != null){
      return await database.saveCharacterModel(_character!);
    }

    return true;
  }
}