import 'dart:convert';

import 'package:ordem_paranormal_ficha/src/shared/models/defense_resistances_model.dart';

import './defense_details_model.dart';

class DefenseModel {
  final int passive;
  final int dodge;
  final int block;
  final List<DefenseDetailsModel> details;
  final List<DefenseResistancesModel> resistances;

  DefenseModel({
    required this.passive,
    required this.dodge,
    required this.block,
    required this.details,
    required this.resistances
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'passive': passive,
      'dodge': dodge,
      'block': block,
      'details': details.map((x) => x.toMap()).toList(),
      'resistances': resistances.map((x) => x.toMap()).toList(),
    };
  }

  factory DefenseModel.fromMap(Map<String, dynamic> map) {
    return DefenseModel(
      passive: map['passive'] as int,
      dodge: map['dodge'] as int,
      block: map['block'] as int,
      details: List<DefenseDetailsModel>.from((map['details'] as List).map<DefenseDetailsModel>((x) => DefenseDetailsModel.fromMap(x as Map<String,dynamic>),),),
      resistances: List<DefenseResistancesModel>.from((map['resistances'] as List).map<DefenseResistancesModel>((x) => DefenseResistancesModel.fromMap(x as Map<String,dynamic>),),),
    );
  }

  String toJson() => json.encode(toMap());

  factory DefenseModel.fromJson(String source) => DefenseModel.fromMap(json.decode(source) as Map<String, dynamic>);

  factory DefenseModel.empty() => DefenseModel(passive: 0, dodge: 0, block: 0, details: [], resistances: []);
}
