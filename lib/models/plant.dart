import 'dart:convert';

class Plant {
  final String ORIGINAL_NAME;
  final String BIOLOGICAL_NAME;
  final String MEDICAL_USE;
  final String NORMAL_USE;
  final String HARMFUL_EFFECT;



  Plant({
    required this.ORIGINAL_NAME,
    required this.BIOLOGICAL_NAME,
    required this. MEDICAL_USE,
    required this.NORMAL_USE,
    required this.HARMFUL_EFFECT,
   
  });

  Map<String, dynamic> toMap() {
    return {
      'ORIGINAL_NAME': ORIGINAL_NAME,
      'BIOLOGICAL_NAME': BIOLOGICAL_NAME,
      'MEDICAL_USE':MEDICAL_USE,
      'NORMAL_USE': NORMAL_USE,
      'HARMFUL_EFFECT': HARMFUL_EFFECT,
      
    };
  }

  factory Plant.fromMap(Map<String, dynamic> map) {
    return Plant(
      ORIGINAL_NAME: map['ORIGINAL_NAME'] ?? '',
      BIOLOGICAL_NAME: map['BIOLOGICAL_NAME'] ?? '',
      MEDICAL_USE: map['MEDICAL_USE'] ?? '',
      NORMAL_USE: map['NORMAL_USE'] ?? '',
      HARMFUL_EFFECT: map['HARMFUL_EFFECT'] ?? '',
      
    );
  }

  String toJson() => json.encode(toMap());

  factory Plant.fromJson(String source) =>
      Plant.fromMap(json.decode(source));
}
