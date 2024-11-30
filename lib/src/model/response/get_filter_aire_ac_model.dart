class GetFilterAirACModel {
  GetFilterAirACModel({required this.d, this.error = ''});

  final List<GetFilterAirACData> d;
  final String error;

  factory GetFilterAirACModel.fromJson(Map<String, dynamic> json) {
    try {
      return GetFilterAirACModel(
        d: (json['d'] as List).map((i) => GetFilterAirACData.fromJson(i)).toList(),
      );
    } catch (e) {
      return GetFilterAirACModel(
        d: List.empty(),
        error: json['d'],
      );
    }
  }
}

class GetFilterAirACData {
  final int idRefMk;
  final String? McilL;
  final String AIREAC;
  final String? MotCap;
  final String yearStart;
  final String yearEnd;
  final String? TA;

  GetFilterAirACData({
    required this.idRefMk,
    this.McilL,
    required this.AIREAC,
    this.MotCap,
    required this.yearStart,
    required this.yearEnd,
    this.TA,
  });

  factory GetFilterAirACData.fromJson(Map<String, dynamic> json) {
    return GetFilterAirACData(
      idRefMk: json['Id_RefMk'],
      McilL: json['McilL'].toString(),
      AIREAC: json['AIREAC'],
      MotCap: json['MotCap'],
      yearStart: json['AñoDe'].toString(),
      yearEnd: json['AñoFin'].toString(),
      TA: json['TA'],
    );
  }
}
