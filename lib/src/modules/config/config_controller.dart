import 'package:flutter/cupertino.dart';
import 'package:ordem_paranormal_ficha/src/app_controller.dart';
import 'package:ordem_paranormal_ficha/src/app_state.dart';
import 'package:ordem_paranormal_ficha/src/modules/config/config_state.dart';
import 'package:ordem_paranormal_ficha/src/shared/enums/attributes.dart';
import 'package:ordem_paranormal_ficha/src/shared/models/attributes_model.dart';
import 'package:ordem_paranormal_ficha/src/shared/models/character_model.dart';
import 'package:ordem_paranormal_ficha/src/shared/extensions/extensions.dart';

class ConfigController extends ValueNotifier<ConfigState> {
  late AppController _appController;
  late CharacterModel character;
  final bool isNewChar;

  ConfigController({
    required appController,
    required this.isNewChar
  }): super(InitConfigState()){
    _appController = appController;
    value = InitialConfigState(
      loadCharacter: _loadCharacter
    );
  }

  bool _loadCharacter(){
    value = LoadingConfigState();

    if (isNewChar){
      character = CharacterModel.getDefault();
    } else {
      AppState state = _appController.value;

      if (state is SuccessAppState){
        character = state.character!;
      } else {
        value = ErrorConfigState();
        return false;
      }
    }

    value = SuccessConfigState(
      characterModel: character
    );

    return true;
  }

  changeName(String val){
    character = character.copyWith(
      name: val
    );
  }

  String? validateName(String? val){
    String? error;
    
    if (val == null){
      error = "Não pode ser vazio";
    } else if (val.isEmpty){
      error = "Não pode ser vazio";
    }

    return error;
  }

  changeClass(String? val){
    character = character.copyWith(
      characterClass: val ?? 'Especialista'
    );
  }

  changeNex(String? val){
    int nex = int.tryParse(val ?? '0') ?? 0;
    character = character.copyWith(
      nex: nex
    );
  }

  changeMaxLife(String? val){
    int maxLife = int.tryParse(val ?? '0') ?? 0;
    if (character.life >= character.maxLife){
      character = character.copyWith(
        maxLife: maxLife,
        life: maxLife
      );
    } else {
      character = character.copyWith(
        maxLife: maxLife
      );
    }
  }

  changeMaxSanity(String? val){
    int maxSanity = int.tryParse(val ?? '0') ?? 0;

    if (character.sanity >= character.maxSanity){
      character = character.copyWith(
        maxSanity: maxSanity,
        sanity: maxSanity
      );
    } else {
      character = character.copyWith(
        maxSanity: maxSanity
      );
    }
  }

  changeMaxEffortPoints(String? val){
    int maxEffortPoints = int.tryParse(val ?? '0') ?? 0;

    if (character.effortPoints >= character.maxEffortPoints){
      character = character.copyWith(
        maxEffortPoints: maxEffortPoints,
        effortPoints: maxEffortPoints
      );
    } else {
      character = character.copyWith(
        maxEffortPoints: maxEffortPoints
      );
    }
  }

  Function(String? val) changeAttribute(Attributes attribute){
    return (String? val){
      if (value is SuccessAppState){
        AttributesModel? att = character.attributes.firstWhereOrNull(
          (element) => element.attribute == attribute
        );

        int attributeVal = int.tryParse(val ?? '0') ?? 0;

        if (att != null){
          int index = character.attributes.indexWhere((element) => element.attribute == attribute);

          character.attributes[index] = att.copyWith(
            amount: attributeVal
          );
        } else {
          character.attributes.add(
            AttributesModel(
              attribute: attribute,
              amount: attributeVal
            )
          );
        }
      } 
    };
  }

  Future<void> saveCharacter() async {
    await _appController.database.saveCharacterModel(character);

    //TODO: Redirect to HOme Page
  }
}