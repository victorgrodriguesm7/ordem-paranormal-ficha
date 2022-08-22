import 'dart:convert';

import 'package:ordem_paranormal_ficha/src/shared/models/defense_resistances_model.dart';

import './defense_details_model.dart';

class Defense {
  final int passive;
  final int dodge;
  final int block;
  final List<DefenseDetails> details;
  final List<DefenseResistances> resistances;

  Defense({
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

  factory Defense.fromMap(Map<String, dynamic> map) {
    return Defense(
      passive: map['passive'] as int,
      dodge: map['dodge'] as int,
      block: map['block'] as int,
      details: List<DefenseDetails>.from((map['details'] as List<int>).map<DefenseDetails>((x) => DefenseDetails.fromMap(x as Map<String,dynamic>),),),
      resistances: List<DefenseResistances>.from((map['resistances'] as List<int>).map<DefenseResistances>((x) => DefenseResistances.fromMap(x as Map<String,dynamic>),),),
    );
  }

  String toJson() => json.encode(toMap());

  factory Defense.fromJson(String source) => Defense.fromMap(json.decode(source) as Map<String, dynamic>);
}
