enum Attack {
  ballistic,
  cut,
  drilling,
  electricity,
  fire,
  cold,
  impact,
  mental,
  paranormal,
  chemical;

  @override
  String toString(){
    return name;
  }

  static Attack fromMap(String? value){
    if (value != null){
      if (value == "ballistic"){
        return Attack.ballistic;
      }
      if (value == "cut"){
        return Attack.cut;
      }
      if (value == "drilling"){
        return Attack.drilling;
      }
      if (value == "electricity"){
        return Attack.electricity;
      }
      if (value == "fire"){
        return Attack.fire;
      }
      if (value == "cold"){
        return Attack.cold;
      }
      if (value == "impact"){
        return Attack.impact;
      }
      if (value == "mental"){
        return Attack.mental;
      }
      if (value == "paranormal"){
        return Attack.paranormal;
      }
      if (value == "chemical"){
        return Attack.chemical;
      }
    }

    return Attack.ballistic;
  }
}