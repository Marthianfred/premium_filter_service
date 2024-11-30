class YearModel {
  final List<YearData> d;

  YearModel({required this.d});

  factory YearModel.fromJson(Map<String, dynamic> json) {
    return YearModel(
      d: (json['d'] as List).map((i) => YearData.fromJson(i as Map<String, dynamic>)).toList(),
    );
  }
}

class YearData {
  final String year;

  YearData({required this.year});

  factory YearData.fromJson(Map<String, dynamic> json) {
    return YearData(
      year: json['Año'].toString(),
    );
  }
}
