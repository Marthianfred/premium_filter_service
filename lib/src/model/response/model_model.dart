class ModelModel {
  final List<ModelData> d;

  ModelModel({required this.d});

  factory ModelModel.fromJson(Map<String, dynamic> json) {
    return ModelModel(
      d: (json['d'] as List).map((i) => ModelData.fromJson( i as Map<String, dynamic>)).toList(),
    );
  }
}

class ModelData {
  final int idRefMk;
  final int idMk;
  final int idTMk;
  final String model;
  final String yearStart;
  final String yearEnd;

  ModelData({
    required this.idRefMk,
    required this.idMk,
    required this.idTMk,
    required this.model,
    required this.yearStart,
    required this.yearEnd,
  });

  factory ModelData.fromJson(Map<String, dynamic> json) {
    return ModelData(
      idRefMk: json['Id_RefMk'],
      idMk: json['Id_Mk'],
      idTMk: json['Id_TMk'],
      model: json['Modelo'],
      yearStart: json['AñoIni'].toString(),
      yearEnd: json['AñoFin'].toString(),
    );
  }
}
