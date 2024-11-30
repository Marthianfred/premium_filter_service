class GetModel {
  final List<GetModelData> d;

  GetModel({required this.d});

  factory GetModel.fromJson(Map<String, dynamic> json) {
    return GetModel(
      d: (json['d'] as List).map((i) => GetModelData.fromJson(i as Map<String, dynamic>)).toList(),
    );
  }
}

class GetModelData {
  final int idRefMk;
  final int idMk;
  final int idTMk;

  final String model;
  final String yearStart;
  final String yearEnd;

  GetModelData({
    required this.idRefMk,
    required this.idTMk,
    required this.model,
    required this.yearStart,
    required this.yearEnd,
    required this.idMk,
  });

  factory GetModelData.fromJson(Map<String, dynamic> json) {
    return GetModelData(
      idRefMk: json['Id_RefMk'],
      idMk: json['Id_Mk'],
      idTMk: json['Id_Mk'],
      model: json['Modelo'],
      yearStart: json['AñoIni'],
      yearEnd: json['AñoFin'],
    );
  }
}
