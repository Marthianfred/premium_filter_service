class GetFilterOilModel {
  GetFilterOilModel({required this.d, this.error = ''});

  final List<GetFilterOilData> d;
  final String error;

  factory GetFilterOilModel.fromJson(Map<String, dynamic> json) {
    try {
      return GetFilterOilModel(
        d: (json['d'] as List).map((i) => GetFilterOilData.fromJson(i)).toList(),
      );
    } catch (e) {
      return GetFilterOilModel(
        d: List.empty(),
        error: json['d'],
      );
    }
  }
}

class GetFilterOilData {
  final int idRefMk;
  final String? McilL;
  final int iDTipoAp;
  final String ACEITE;
  final String? MotCap;
  final String yearStart;
  final String yearEnd;
  final String? TA;

  GetFilterOilData({required this.idRefMk, this.McilL, required this.iDTipoAp, required this.ACEITE, this.MotCap, required this.yearStart, required this.yearEnd, this.TA});

  factory GetFilterOilData.fromJson(Map<String, dynamic> json) {
    return GetFilterOilData(
      idRefMk: json['Id_RefMk'],
      McilL: json['McilL'].toString(),
      iDTipoAp: json['IDTipoAp'],
      ACEITE: json['ACEITE'],
      MotCap: json['MotCap'],
      yearStart: json['AñoDe'].toString(),
      yearEnd: json['AñoFin'].toString(),
      TA: json['TA'],
    );
  }
}
