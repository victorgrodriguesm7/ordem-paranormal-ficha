import 'dart:convert';

class AnnotationModel {
  final String title;
  final String text;

  AnnotationModel({
    required this.title,
    required this.text
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'text': text,
    };
  }

  factory AnnotationModel.fromMap(Map<String, dynamic> map) {
    return AnnotationModel(
      title: map['title'] as String,
      text: map['text'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AnnotationModel.fromJson(String source) => AnnotationModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
