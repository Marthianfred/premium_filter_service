class GetFilterAirModel {
  GetFilterAirModel({required this.d, this.error = ''});

  final List<GetFilterAirData> d;
  final String error;

  factory GetFilterAirModel.fromJson(Map<String, dynamic> json) {
    try {
      return GetFilterAirModel(
        d: (json['d'] as List).map((i) => GetFilterAirData.fromJson(i)).toList(),
      );
    } catch (e) {
      return GetFilterAirModel(
        d: List.empty(),
        error: json['d'],
      );
    }
  }
}

class GetFilterAirData {
  final int idRefMk;
  final String? McilL;
  final String AIRE;
  final String? MotCap;
  final String yearStart;
  final String yearEnd;
  final String? TA;

  GetFilterAirData({required this.idRefMk, this.McilL, required this.AIRE, this.MotCap, required this.yearStart, required this.yearEnd, this.TA});

  factory GetFilterAirData.fromJson(Map<String, dynamic> json) {
    return GetFilterAirData(
      idRefMk: json['Id_RefMk'],
      McilL: json['McilL'].toString(),
      AIRE: json['AIRE'],
      MotCap: json['MotCap'],
      yearStart: json['AñoIni'].toString(),
      yearEnd: json['AñoFni'].toString(),
      TA: json['TA'],
    );
  }
}
