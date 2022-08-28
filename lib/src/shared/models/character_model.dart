import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:ordem_paranormal_ficha/src/shared/models/ability_model.dart';
import 'package:ordem_paranormal_ficha/src/shared/models/annotation_model.dart';
import 'package:ordem_paranormal_ficha/src/shared/models/attack_model.dart';
import 'package:ordem_paranormal_ficha/src/shared/models/attributes_model.dart';
import 'package:ordem_paranormal_ficha/src/shared/models/defense_model.dart';
import 'package:ordem_paranormal_ficha/src/shared/models/inventory_item_model.dart';
import 'package:ordem_paranormal_ficha/src/shared/models/ritual_model.dart';
import 'package:ordem_paranormal_ficha/src/shared/models/skill_model.dart';

class CharacterModel {
  final String name;
  final String characterClass;
  final int nex;
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
  final List<InventoryItemModel> inventory;
  final List<AnnotationModel> annotations;

  CharacterModel({
    required this.name,
    required this.characterClass,
    required this.nex,
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
    required this.inventory,
    required this.annotations,
  });

  factory CharacterModel.getDefault(){
    return CharacterModel(
      name: "",
      characterClass: "Especialista",
      nex: 0,
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
      inventory: [],
      annotations: []
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'characterClass': characterClass,
      'nex': nex,
      'life': life,
      'maxLife': maxLife,
      'sanity': sanity,
      'maxSanity': maxSanity,
      'effortPoints': effortPoints,
      'maxEffortPoints': maxEffortPoints,
      'attributes': attributes.map((x) => x.toMap()).toList(),
      'attacks': attacks.map((x) => x.toMap()).toList(),
      'defense': defense.toMap(),
      'rituals': rituals.map((x) => x.toMap()).toList(),
      'abilities': abilities.map((x) => x.toMap()).toList(),
      'skills': skills.map((x) => x.toMap()).toList(),
      'inventory': inventory.map((x) => x.toMap()).toList(),
      'annotations': annotations.map((x) => x.toMap()).toList(),
    };
  }

  factory CharacterModel.fromMap(Map<String, dynamic> map) {
    return CharacterModel(
      name: map['name'] as String,
      characterClass: map['characterClass'] as String,
      nex: map['nex'] as int,
      life: map['life'] as int,
      maxLife: map['maxLife'] as int,
      sanity: map['sanity'] as int,
      maxSanity: map['maxSanity'] as int,
      effortPoints: map['effortPoints'] as int,
      maxEffortPoints: map['maxEffortPoints'] as int,
      attributes: List<AttributesModel>.from((map['attributes'] as List<int>).map<AttributesModel>((x) => AttributesModel.fromMap(x as Map<String,dynamic>),),),
      attacks: List<AttackModel>.from((map['attacks'] as List<int>).map<AttackModel>((x) => AttackModel.fromMap(x as Map<String,dynamic>),),),
      defense: DefenseModel.fromMap(map['defense'] as Map<String,dynamic>),
      rituals: List<RitualModel>.from((map['rituals'] as List<int>).map<RitualModel>((x) => RitualModel.fromMap(x as Map<String,dynamic>),),),
      abilities: List<AbilityModel>.from((map['abilities'] as List<int>).map<AbilityModel>((x) => AbilityModel.fromMap(x as Map<String,dynamic>),),),
      skills: List<SkillModel>.from((map['skills'] as List<int>).map<SkillModel>((x) => SkillModel.fromMap(x as Map<String,dynamic>),),),
      inventory: List<InventoryItemModel>.from((map['inventory'] as List<int>).map<InventoryItemModel>((x) => InventoryItemModel.fromMap(x as Map<String,dynamic>),),),
      annotations: List<AnnotationModel>.from((map['annotations'] as List<int>).map<AnnotationModel>((x) => AnnotationModel.fromMap(x as Map<String,dynamic>),),),
    );
  }

  String toJson() => json.encode(toMap());

  factory CharacterModel.fromJson(String source) => CharacterModel.fromMap(json.decode(source) as Map<String, dynamic>);

  CharacterModel copyWith({
    String? name,
    String? characterClass,
    int? nex,
    int? life,
    int? maxLife,
    int? sanity,
    int? maxSanity,
    int? effortPoints,
    int? maxEffortPoints,
    List<AttributesModel>? attributes,
    List<AttackModel>? attacks,
    DefenseModel? defense,
    List<RitualModel>? rituals,
    List<AbilityModel>? abilities,
    List<SkillModel>? skills,
    List<InventoryItemModel>? inventory,
    List<AnnotationModel>? annotations,
  }) {
    return CharacterModel(
      name: name ?? this.name,
      characterClass: characterClass ?? this.characterClass,
      nex: nex ?? this.nex,
      life: life ?? this.life,
      maxLife: maxLife ?? this.maxLife,
      sanity: sanity ?? this.sanity,
      maxSanity: maxSanity ?? this.maxSanity,
      effortPoints: effortPoints ?? this.effortPoints,
      maxEffortPoints: maxEffortPoints ?? this.maxEffortPoints,
      attributes: attributes ?? this.attributes,
      attacks: attacks ?? this.attacks,
      defense: defense ?? this.defense,
      rituals: rituals ?? this.rituals,
      abilities: abilities ?? this.abilities,
      skills: skills ?? this.skills,
      inventory: inventory ?? this.inventory,
      annotations: annotations ?? this.annotations,
    );
  }
}
