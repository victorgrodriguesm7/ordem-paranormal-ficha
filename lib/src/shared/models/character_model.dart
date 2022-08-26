import 'package:ordem_paranormal_ficha/src/shared/models/ability_model.dart';
import 'package:ordem_paranormal_ficha/src/shared/models/annotation_model.dart';
import 'package:ordem_paranormal_ficha/src/shared/models/attack_model.dart';
import 'package:ordem_paranormal_ficha/src/shared/models/attributes_model.dart';
import 'package:ordem_paranormal_ficha/src/shared/models/defense_model.dart';
import 'package:ordem_paranormal_ficha/src/shared/models/inventory_item_model.dart';
import 'package:ordem_paranormal_ficha/src/shared/models/ritual_model.dart';
import 'package:ordem_paranormal_ficha/src/shared/models/skill_model.dart';

class CharacterModel {
  final int life;
  final int maxLife;
  final int sanity;
  final int maxSanity;
  final int effortPoints;
  final int maxEffortPoints;
  final List<AttributesModel> attributes;
  final List<AttackModel> attacks;
  final DefenseModel defense;
  final List<RitualModel> rituals;
  final List<AbilityModel> abilities;
  final List<SkillModel> skills;
  final List<InventoryItemModel> iventory;
  final List<AnnotationModel> annotations;

  CharacterModel({
    required this.life,
    required this.maxLife,
    required this.sanity,
    required this.maxSanity,
    required this.effortPoints,
    required this.maxEffortPoints,
    required this.attributes,
    required this.attacks,
    required this.defense,
    required this.rituals,
    required this.abilities,
    required this.skills,
    required this.iventory,
    required this.annotations,
  });

  factory CharacterModel.getDefault(){
    return CharacterModel(
      life: 0, 
      maxLife: 0, 
      sanity: 0, 
      maxSanity: 0, 
      effortPoints: 0,
      maxEffortPoints: 0,
      attributes: [],
      attacks: [], 
      defense: DefenseModel.empty(),
      rituals: [],
      abilities: [],
      skills: [],
      iventory: [],
      annotations: []
    );
  }
}