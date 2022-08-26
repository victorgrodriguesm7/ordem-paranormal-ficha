// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:ordem_paranormal_ficha/src/shared/enums/attributes.dart';

class SkillModel {
  final String name;
  final Attributes attribute;
  final int amount;

  SkillModel(
      {required this.name, required this.amount, required this.attribute});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'attribute': attribute.toString(),
      'amount': amount,
    };
  }

  factory SkillModel.fromMap(Map<String, dynamic> map) {
    return SkillModel(
      name: map['name'] as String,
      attribute: Attributes.fromMap(map['attribute'] as String),
      amount: map['amount'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory SkillModel.fromJson(String source) =>
      SkillModel.fromMap(json.decode(source) as Map<String, dynamic>);

  static List<SkillModel> getDefaultSkills() {
    List<Map<String, dynamic>> defaultSkills = [
      {"name": "Acrobacia", "attribute": "agility", "amount": 0},
      {"name": "Adestramento", "attribute": "presence", "amount": 0},
      {"name": "Artes", "attribute": "presence", "amount": 0},
      {"name": "Atletismo", "attribute": "strength", "amount": 0},
      {"name": "Atualidades", "attribute": "intellect", "amount": 0},
      {"name": "Ciências", "attribute": "intellect", "amount": 0},
      {"name": "Crime", "attribute": "agility", "amount": 0},
      {"name": "Diplomacia", "attribute": "presence", "amount": 0},
      {"name": "Enganação", "attribute": "presence", "amount": 0},
      {"name": "Fortitude", "attribute": "vigor", "amount": 0},
      {"name": "Furtitividade", "attribute": "agility", "amount": 0},
      {"name": "Iniciativa", "attribute": "agility", "amount": 0},
      {"name": "Intimidação", "attribute": "presence", "amount": 0},
      {"name": "Intuição", "attribute": "presence", "amount": 0},
      {"name": "Investigação", "attribute": "intellect", "amount": 0},
      {"name": "Luta", "attribute": "strength", "amount": 0},
      {"name": "Fortitude", "attribute": "vigor", "amount": 0},
      {"name": "Iniciativa", "attribute": "agility", "amount": 0},
      {"name": "Intimidação", "attribute": "presence", "amount": 0},
      {"name": "Intuição", "attribute": "intellect", "amount": 0},
      {"name": "Investigação", "attribute": "intellect", "amount": 0},
      {"name": "Luta", "attribute": "strength", "amount": 0},
      {"name": "Medicina", "attribute": "intellect", "amount": 0},
      {"name": "Ocultismo", "attribute": "intellect", "amount": 0},
      {"name": "Percepção", "attribute": "precense", "amount": 0},
      {"name": "Pilotagem", "attribute": "agility", "amount": 0},
      {"name": "Pontaria", "attribute": "agility", "amount": 0},
      {"name": "Profissão", "attribute": "intellect", "amount": 0},
      {"name": "Reflexos", "attribute": "agility", "amount": 0},
      {"name": "Religião", "attribute": "presence", "amount": 0},
      {"name": "Sobrevivência", "attribute": "intellect", "amount": 0},
      {"name": "Tática", "attribute": "intellect", "amount": 0},
      {"name": "Tecnologia", "attribute": "intellect", "amount": 0},
      {"name": "Vontade", "attribute": "presence", "amount": 0},
    ];

    return defaultSkills.map((e) => SkillModel.fromMap(e)).toList();
  }
}
