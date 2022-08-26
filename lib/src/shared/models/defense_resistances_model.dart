import 'dart:convert';

class DefenseResistancesModel {
  final int amount;
  final String type;

  DefenseResistancesModel({
    required this.amount,
    required this.type
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': amount,
      'type': type,
    };
  }

  factory DefenseResistancesModel.fromMap(Map<String, dynamic> map) {
    return DefenseResistancesModel(
      amount: map['amount'] as int,
      type: map['type'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory DefenseResistancesModel.fromJson(String source) => DefenseResistancesModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
