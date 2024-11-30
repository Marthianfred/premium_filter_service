class EngineModel {
  final List<EngineData> d;

  EngineModel({required this.d});

  factory EngineModel.fromJson(Map<String, dynamic> json) {
    return EngineModel(
      d: (json['d'] as List).map((i) => EngineData.fromJson(i as Map<String, dynamic>)).toList(),
    );
  }
}

class EngineData {
  final int idRefMk;
  final String? MotCap;
  final String Mcc;
  final dynamic McilL;
  final String yearStart;
  final String yearEnd;

  EngineData({
    required this.idRefMk,
    this.MotCap,
    required this.Mcc,
    required this.McilL,
    required this.yearStart,
    required this.yearEnd,
  });

  factory EngineData.fromJson(Map<String, dynamic> json) {
    return EngineData(
      idRefMk: json['Id_RefMk'],
      MotCap: json['MotCap'],
      Mcc: json['Mcc'],
      McilL: json['McilL'],
      yearStart: json['AñoIni'].toString(),
      yearEnd: json['AñoFni'].toString(),
    );
  }
}
