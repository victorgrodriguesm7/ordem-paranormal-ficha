enum Range {
  self,
  touch,
  short,
  medium,
  long,
  extreme,
  unlimited;

  @override
  String toString(){
    return name;
  }

  factory Range.fromMap(String? value){
    if (value == "self"){
      return Range.self;
    }
    if (value == "touch"){
      return Range.touch;
    }
    if (value == "short"){
      return Range.short;
    }
    if (value == "medium"){
      return Range.medium;
    }
    if (value == "long"){
      return Range.long;
    }
    if (value == "extreme"){
      return Range.extreme;
    }
    if (value == "unlimited"){
      return Range.unlimited;
    }

    return Range.self;
  }
}