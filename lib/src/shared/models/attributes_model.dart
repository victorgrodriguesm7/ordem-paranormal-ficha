import 'dart:convert';

import 'package:ordem_paranormal_ficha/src/shared/enums/attributes.dart';

class AttributesModel {
  final Attributes attribute;
  final int amount;

  AttributesModel({
    required this.attribute,
    required this.amount
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attribute': attribute.toString(),
      'amount': amount,
    };
  }

  factory AttributesModel.fromMap(Map<String, dynamic> map) {
    return AttributesModel(
      attribute: Attributes.fromMap(map['attribute'] as String),
      amount: map['amount'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory AttributesModel.fromJson(String source) => AttributesModel.fromMap(json.decode(source) as Map<String, dynamic>);

  AttributesModel copyWith({
    Attributes? attribute,
    int? amount,
  }) {
    return AttributesModel(
      attribute: attribute ?? this.attribute,
      amount: amount ?? this.amount,
    );
  }
}
