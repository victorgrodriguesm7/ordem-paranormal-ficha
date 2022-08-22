import 'dart:convert';

class DefenseResistances {
  final int amount;
  final String type;

  DefenseResistances({
    required this.amount,
    required this.type
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': amount,
      'type': type,
    };
  }

  factory DefenseResistances.fromMap(Map<String, dynamic> map) {
    return DefenseResistances(
      amount: map['amount'] as int,
      type: map['type'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory DefenseResistances.fromJson(String source) => DefenseResistances.fromMap(json.decode(source) as Map<String, dynamic>);
}
