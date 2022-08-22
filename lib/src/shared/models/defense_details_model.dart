import 'dart:convert';

class DefenseDetails {
  final int amount;
  final String reason;

  DefenseDetails({
    required this.amount,
    required this.reason
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': amount,
      'reason': reason,
    };
  }

  factory DefenseDetails.fromMap(Map<String, dynamic> map) {
    return DefenseDetails(
      amount: map['amount'] as int,
      reason: map['reason'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory DefenseDetails.fromJson(String source) => DefenseDetails.fromMap(json.decode(source) as Map<String, dynamic>);
}
