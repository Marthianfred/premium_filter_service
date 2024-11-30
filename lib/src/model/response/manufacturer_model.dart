class ManufacturerModel {
  final List<ManufacturerData> d;

  ManufacturerModel({required this.d});

  factory ManufacturerModel.fromJson(Map<String, dynamic> json) {
    return ManufacturerModel(
      d: (json['d'] as List).map((i) => ManufacturerData.fromJson(i as Map<String, dynamic>)).toList(),
    );
  }
}

class ManufacturerData {
  final String idTMk;
  final String idMk;
  final String Marca;

  ManufacturerData({required this.idTMk, required this.idMk, required this.Marca});

  factory ManufacturerData.fromJson(Map<String, dynamic> json) {
    return ManufacturerData(
      idTMk: json['Id_TMk'].toString(),
      idMk: json['Id_Mk'].toString(),
      Marca: json['Marca'],
    );
  }
}
