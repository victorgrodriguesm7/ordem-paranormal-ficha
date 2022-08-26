enum AbilityType {
  origin,
  classe;

  @override
  String toString(){
    return name;
  }

  factory AbilityType.fromMap(String? value){
    if (value != null){
      if (value == "origin"){
        return AbilityType.origin;
      }
      if (value == "classe"){
        return AbilityType.classe;
      }
    }

    return AbilityType.origin;
  }
}