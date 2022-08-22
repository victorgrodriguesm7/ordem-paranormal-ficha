enum Elements {
  conhecimento,
  sangue,
  morte,
  energia,
  medo;

  @override
  String toString(){
    return name;
  }

  static Elements fromMap(String? value){
    if (value != null){
      if (value == "conhecimento"){
        return Elements.conhecimento;
      }
      if (value == "sangue"){
        return Elements.sangue;
      }
      if (value == "morte"){
        return Elements.morte;
      }
      if (value == "energia"){
        return Elements.energia;
      }
      if (value == "medo"){
        return Elements.medo;
      }
    }

    return Elements.conhecimento;
  }
}