import 'dart:convert';

class InventoryItemModel {
  final String name;
  final int amount;
  final double weight;
  final int prestige;

  InventoryItemModel({
    required this.name,
    required this.amount,
    required this.prestige,
    required this.weight
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'amount': amount,
      'weight': weight,
      'prestige': prestige,
    };
  }

  factory InventoryItemModel.fromMap(Map<String, dynamic> map) {
    return InventoryItemModel(
      name: map['name'] as String,
      amount: map['amount'] as int,
      weight: map['weight'] as double,
      prestige: map['prestige'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory InventoryItemModel.fromJson(String source) => InventoryItemModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
