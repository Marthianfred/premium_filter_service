class GetSrReferences {
  GetSrReferences({required this.d, this.error = ''});

  final List<GetSrReferencesData> d;
  final String error;

  factory GetSrReferences.fromJson(Map<String, dynamic> json) {
    try {
      return GetSrReferences(
        d: (json['d'] as List).map((i) => GetSrReferencesData.fromJson(i)).toList(),
      );
    } catch (e) {
      return GetSrReferences(
        d: List.empty(),
        error: '',
      );
    }
  }
}

class GetSrReferencesData {
  final String premiumRef;
  final String tipo;
  final String fabricante;
  final String aplicaciones;
  final String equivalencias;
  final String pfRef;

  GetSrReferencesData({
    required this.premiumRef,
    required this.tipo,
    required this.fabricante,
    required this.aplicaciones,
    required this.equivalencias,
    required this.pfRef,
  });

  factory GetSrReferencesData.fromJson(Map<String, dynamic> json) {
    return GetSrReferencesData(
      premiumRef: json['PREMIUM Ref'] ?? "",
      tipo: json['Tipo'] ?? "",
      fabricante: json['Fabricante'] ?? "",
      aplicaciones: json['Aplicaciones'] ?? "",
      equivalencias: json['Equivalencias'] ?? "",
      pfRef: json['PF_Ref'] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'PREMIUM Ref': premiumRef,
      'Tipo': tipo,
      'Fabricante': fabricante,
      'Aplicaciones': aplicaciones,
      'Equivalencias': equivalencias,
      'PF_Ref': pfRef,
    };
  }
}
