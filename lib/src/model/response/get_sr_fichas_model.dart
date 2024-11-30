import 'package:flutter/foundation.dart';

class GetSrFichas {
  GetSrFichas({required this.d, this.error = ''});

  final List<GetSrFichasData> d;
  final String error;

  factory GetSrFichas.fromJson(Map<String, dynamic> json) {
    try {
      return GetSrFichas(
        d: (json['d'] as List).map((i) => GetSrFichasData.fromJson(i)).toList(),
      );
    } catch (e) {
      if (kDebugMode) print("GetSrFichas.fromJson: $e");
      return GetSrFichas(
        d: List.empty(),
        error: json['d'],
      );
    }
  }
}

class GetSrFichasData {
  final String premiumRef;
  final String tipo;
  final String fichaLink;

  GetSrFichasData({
    required this.premiumRef,
    required this.tipo,
    required this.fichaLink,
  });

  factory GetSrFichasData.fromJson(Map<String, dynamic> json) {
    return GetSrFichasData(
      premiumRef: json['PREMIUM Ref'],
      tipo: json['Tipo'],
      fichaLink: json['FichaLink'].toString().replaceFirst("http://cat.", "https://automotriz."),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'PREMIUM Ref': premiumRef,
      'Tipo': tipo,
      'FichaLink': fichaLink,
    };
  }
}
