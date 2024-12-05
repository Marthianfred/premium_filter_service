import 'dart:convert';

class Filter {
  final String pfRef;
  final String? refLinea;
  final String? tipoFiltro;
  final int? idTipoFF;
  final String? tipo;
  final String? etAl;
  final String? dAlto;
  final String? dAltoIn;
  final String? etLar;
  final String? dLargo;
  final String? dLargoIn;
  final String? etAncho;
  final String? dAncho;
  final String? dAnchoIn;
  final String? etAdd01;
  final String? dAdd01;
  final String? dAdd01In;
  final String? etAdd02;
  final String? dAdd02;
  final String? dAdd02In;
  final String? etAdd03;
  final String? dAdd03;
  final String? dAdd03In;
  final int? dAl;
  final int? dLa;
  final int? dLaA;
  final int? dAn;
  final String? dEx;
  final String? dIn;
  final String appImg;
  final int? idLin;
  final String? prefLinea;
  final String? imgX;
  final String? img;
  final String? pdf;
  final String? store;
  final String? app;

  Filter({
    required this.pfRef,
    required this.refLinea,
    required this.tipoFiltro,
    required this.idTipoFF,
    this.tipo,
    required this.etAl,
    required this.dAlto,
    required this.dAltoIn,
    required this.etLar,
    required this.dLargo,
    required this.dLargoIn,
    required this.etAncho,
    required this.dAncho,
    required this.dAnchoIn,
    this.etAdd01,
    this.dAdd01,
    this.dAdd01In,
    this.etAdd02,
    this.dAdd02,
    this.dAdd02In,
    this.etAdd03,
    this.dAdd03,
    this.dAdd03In,
    required this.dAl,
    required this.dLa,
    required this.dLaA,
    required this.dAn,
    this.dEx,
    this.dIn,
    required this.appImg,
    required this.idLin,
    required this.prefLinea,
    required this.imgX,
    required this.img,
    required this.pdf,
    required this.store,
    required this.app,
  });

  factory Filter.fromJson(Map<String, dynamic> json) {
    return Filter(
      pfRef: json['PF_Ref'],
      refLinea: json['RefLinea'],
      tipoFiltro: json['TipoFiltro'],
      idTipoFF: json['IdTipoFF'],
      tipo: json['Tipo'],
      etAl: json['ET_Al'],
      dAlto: json['DAlto'],
      dAltoIn: json['DAltoIN'],
      etLar: json['ET_Lar'],
      dLargo: json['DLargo'],
      dLargoIn: json['DLargoIN'],
      etAncho: json['ET_Ancho'],
      dAncho: json['DAncho'],
      dAnchoIn: json['DAnchoIN'],
      etAdd01: json['ET_Add01'],
      dAdd01: json['DAdd01'],
      dAdd01In: json['DAdd01IN'],
      etAdd02: json['ET_Add02'],
      dAdd02: json['DAdd02'],
      dAdd02In: json['DAdd02IN'],
      etAdd03: json['ET_Add03'],
      dAdd03: json['DAdd03'],
      dAdd03In: json['DAdd03IN'],
      dAl: json['DAl'],
      dLa: json['DLa'],
      dLaA: json['DLaA'],
      dAn: json['DAn'],
      dEx: json['DEx'],
      dIn: json['DIn'],
      appImg: json['AppIMG'],
      idLin: json['IDLin'],
      prefLinea: json['PrefLinea'],
      imgX: json['IMGX'],
      img: json['IMG'],
      pdf: json['PDF'],
      store: json['Store'],
      app: json['App'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'PF_Ref': pfRef,
      'RefLinea': refLinea,
      'TipoFiltro': tipoFiltro,
      'IdTipoFF': idTipoFF,
      'Tipo': tipo,
      'ET_Al': etAl,
      'DAlto': dAlto,
      'DAltoIN': dAltoIn,
      'ET_Lar': etLar,
      'DLargo': dLargo,
      'DLargoIN': dLargoIn,
      'ET_Ancho': etAncho,
      'DAncho': dAncho,
      'DAnchoIN': dAnchoIn,
      'ET_Add01': etAdd01,
      'DAdd01': dAdd01,
      'DAdd01IN': dAdd01In,
      'ET_Add02': etAdd02,
      'DAdd02': dAdd02,
      'DAdd02IN': dAdd02In,
      'ET_Add03': etAdd03,
      'DAdd03': dAdd03,
      'DAdd03IN': dAdd03In,
      'DAl': dAl,
      'DLa': dLa,
      'DLaA': dLaA,
      'DAn': dAn,
      'DEx': dEx,
      'DIn': dIn,
      'AppIMG': appImg,
      'IDLin': idLin,
      'PrefLinea': prefLinea,
      'IMGX': imgX,
      'IMG': img,
      'PDF': pdf,
      'Store': store,
      'App': app,
    };
  }
}

class GetFilterModel {
  GetFilterModel({required this.d, this.error});

  final List<Filter> d;
  final dynamic error;

  factory GetFilterModel.fromJson(Map<String, dynamic> json) {
    try {
      return GetFilterModel(
        d: (json['d'] as List).map((i) => Filter.fromJson(i)).toList(),
      );
    } catch (e) {
      return GetFilterModel(
        d: List.empty(),
        error: json['d'],
      );
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'd': d.map((filter) => filter.toJson()).toList(),
    };
  }
}
