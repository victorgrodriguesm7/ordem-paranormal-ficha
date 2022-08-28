import 'package:ordem_paranormal_ficha/src/shared/enums/label_types.dart';

enum Attributes {
  presence,
  strength,
  agility,
  vigor,
  intellect;

  @override
  String toString(){
    return name;
  }

  String toLabel({ Label? type }){
    type = type ?? Label.long;
    if (this == Attributes.presence){
      return type == Label.long ? "Presença" : "Pre";
    }
    if (this == Attributes.strength){
      return type == Label.long ? "Força" : "For";
    }
    if (this == Attributes.agility){
      return type == Label.long ? "Agilidade" : "Agi";
    }
    if (this == Attributes.vigor){
      return type == Label.long ? "Vigor" : "Vig";
    } else {
      return type == Label.long ? "Intelecto" : "Int";
    }
  }

  factory Attributes.fromMap(String? value){
    if (value != null){
      if (value == "presence"){
        return Attributes.presence;
      }
      if (value == "strength"){
        return Attributes.strength;
      }
      if (value == "agility"){
        return Attributes.agility;
      }
      if (value == "vigor"){
        return Attributes.vigor;
      }
      if (value == "intellect"){
        return Attributes.intellect;
      }
    }

    return Attributes.presence;
  }
}