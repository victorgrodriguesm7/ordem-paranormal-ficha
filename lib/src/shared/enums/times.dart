enum Time {
  instantaneous,
  scene,
  sustained,
  defined,
  permanent,
  release;

  @override
  String toString(){
    return name;
  }

  factory Time.fromMap(String? value){
    if (value == "instantaneous"){
      return Time.instantaneous;
    }
    if (value == "scene"){
      return Time.scene;
    }
    if (value == "sustained"){
      return Time.sustained;
    }
    if (value == "defined"){
      return Time.defined;
    }
    if (value == "permanent"){
      return Time.permanent;
    }
    if (value == "release"){
      return Time.release;
    }

    return Time.instantaneous;
  }
}