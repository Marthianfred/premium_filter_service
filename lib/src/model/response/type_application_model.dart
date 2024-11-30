class TypeApplicationModel {
  final List<TypeApplicationData> data;

  TypeApplicationModel({required this.data});

  factory TypeApplicationModel.fromJson(Map<String, dynamic> json) {
    return TypeApplicationModel(
      data: (json['d'] as List).map((i) => TypeApplicationData.fromJson(i as Map<String, dynamic>)).toList(),
    );
  }
}

class TypeApplicationData {
  final int idTMk;
  final String? TAplicacion;
  final String? TAplicacionEng;

  TypeApplicationData({required this.idTMk, this.TAplicacion, this.TAplicacionEng});

  factory TypeApplicationData.fromJson(Map<String, dynamic> json) {
    return TypeApplicationData(
      idTMk: json['Id_TMk'],
      TAplicacion: json['TAplicacion'] ?? "",
      TAplicacionEng: json['TAplicacionEng'] ?? "",
    );
  }
}
