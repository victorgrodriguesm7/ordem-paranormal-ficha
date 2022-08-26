import 'dart:convert';

class DefenseDetailsModel {
  final int amount;
  final String reason;

  DefenseDetailsModel({
    required this.amount,
    required this.reason
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': amount,
      'reason': reason,
    };
  }

  factory DefenseDetailsModel.fromMap(Map<String, dynamic> map) {
    return DefenseDetailsModel(
      amount: map['amount'] as int,
      reason: map['reason'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory DefenseDetailsModel.fromJson(String source) => DefenseDetailsModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
