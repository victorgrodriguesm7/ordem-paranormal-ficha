import 'package:ordem_paranormal_ficha/src/shared/models/character_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String characterKey = 'character';

class DatabaseRepository {
  SharedPreferences? sharedPreferences;
  bool isStarted = false;

  DatabaseRepository();

  init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    isStarted = true;
  }

  CharacterModel? getCharacterModel() {
    if (sharedPreferences == null) return null;

    String? rawCharacter = sharedPreferences!.getString(characterKey);

    if (rawCharacter == null) return null;

    return CharacterModel.fromJson(rawCharacter);
  }

  Future<bool> saveCharacterModel(CharacterModel character) async {
    if (sharedPreferences == null) return false;

    try {
      await sharedPreferences!.setString(characterKey, character.toJson());

      return true;
    } catch(err){
      return false;
    }
  }
}