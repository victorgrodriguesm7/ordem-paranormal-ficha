import 'dart:convert';

import 'package:ordem_paranormal_ficha/src/shared/enums/attack.dart';

class AttackModel {
  final String name;
  final Attack type;
  final String damage;
  final String critic;
  final String description;

  AttackModel({
    required this.name,
    required this.type,
    required this.damage, 
    required this.critic,
    required this.description
});


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type.toString(),
      'damage': damage,
      'critic': critic,
      'description': description,
    };
  }

  factory AttackModel.fromMap(Map<String, dynamic> map) {
    return AttackModel(
      name: map['name'] as String,
      type: Attack.fromMap(map['type'] as String),
      damage: map['damage'] as String,
      critic: map['critic'] as String,
      description: map['description'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AttackModel.fromJson(String source) => AttackModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
