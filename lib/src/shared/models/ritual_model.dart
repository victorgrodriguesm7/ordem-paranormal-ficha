// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:ordem_paranormal_ficha/src/shared/enums/elements.dart';
import 'package:ordem_paranormal_ficha/src/shared/enums/ranges.dart';
import 'package:ordem_paranormal_ficha/src/shared/enums/times.dart';

class RitualModel {
  final String name;
  final String description;
  final List<Elements> elements;
  final int level;
  final Range range;
  final Time duration;
  final int targetAmount;
  final List<String> resistances;

  RitualModel({
    required this.name,
    required this.description,
    required this.elements,
    required this.level,
    required this.range,
    required this.duration,
    required this.targetAmount,
    required this.resistances
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'elements': elements.map((x) => x.toString()).toList(),
      'level': level,
      'range': range.toString(),
      'duration': duration.toString(),
      'targetAmount': targetAmount,
      'resistances': resistances,
    };
  }

  factory RitualModel.fromMap(Map<String, dynamic> map) {
    return RitualModel(
      name: map['name'] as String,
      description: map['description'] as String,
      elements: List<Elements>.from((map['elements'] as List<int>).map<Elements>((x) => Elements.fromMap(x as String),),),
      level: map['level'] as int,
      range: Range.fromMap(map['range'] as String),
      duration: Time.fromMap(map['duration'] as String),
      targetAmount: map['targetAmount'] as int,
      resistances: List<String>.from((map['resistances'] as List<String>)),
    );
  }

  String toJson() => json.encode(toMap());

  factory RitualModel.fromJson(String source) => RitualModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
