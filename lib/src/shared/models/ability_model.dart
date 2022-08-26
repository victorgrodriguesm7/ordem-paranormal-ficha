// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:ordem_paranormal_ficha/src/shared/enums/ability_types.dart';

class AbilityModel {
  final String name;
  final String description;
  final AbilityType type;
  final String price;

  AbilityModel({
    required this.name,
    required this.description,
    required this.type,
    required this.price
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'type': type.toString(),
      'price': price,
    };
  }

  factory AbilityModel.fromMap(Map<String, dynamic> map) {
    return AbilityModel(
      name: map['name'] as String,
      description: map['description'] as String,
      type: AbilityType.fromMap(map['type'] as String),
      price: map['price'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AbilityModel.fromJson(String source) => AbilityModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
