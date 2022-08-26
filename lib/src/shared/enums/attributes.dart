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