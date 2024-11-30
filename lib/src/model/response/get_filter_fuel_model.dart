class GetFilterFuelModel {
  GetFilterFuelModel({required this.d, this.error = ''});

  final List<GetFilterFuelData> d;
  final String error;

  factory GetFilterFuelModel.fromJson(Map<String, dynamic> json) {
    try {
      return GetFilterFuelModel(
        d: (json['d'] as List).map((i) => GetFilterFuelData.fromJson(i)).toList(),
      );
    } catch (e) {
      return GetFilterFuelModel(
        d: List.empty(),
        error: json['d'],
      );
    }
  }
}

class GetFilterFuelData {
  final int idRefMk;
  final String? McilL;
  final String Fuel;
  final String? MotCap;
  final String yearStart;
  final String yearEnd;
  final String? TA;

  GetFilterFuelData({required this.idRefMk, this.McilL, required this.Fuel, this.MotCap, required this.yearStart, required this.yearEnd, this.TA});

  factory GetFilterFuelData.fromJson(Map<String, dynamic> json) {
    return GetFilterFuelData(
      idRefMk: json['Id_RefMk'],
      McilL: json['McilL'].toString(),
      Fuel: json['COMBUSTIBLE'],
      MotCap: json['MotCap'],
      yearStart: json['AñoDe'].toString(),
      yearEnd: json['AñoFin'].toString(),
      TA: json['TA'],
    );
  }
}
