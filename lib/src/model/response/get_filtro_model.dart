class Filter {
  final String PFRef;
  final String refLinea;
  final String tipoFiltro;
  final int idTipoFF;
  final String tipo;
  final String? eTAl;
  final String? dAlto;
  final String? dAltoIN;
  final String? eTLar;
  final String? dLargo;
  final String? dLargoIN;
  final String? eTAncho;
  final String? dAncho;
  final String? dAnchoIN;
  final String? eTAdd01;
  final String? dAdd01;
  final String? dAdd01IN;
  final String? eTAdd02;
  final String? dAdd02;
  final String? dAdd02IN;
  final String? eTAdd03;
  final String? dAdd03;
  final String? dAdd03IN;
  final int? dAl;
  final int? dLa;
  final int? dLaA;
  final int? dAn;
  final String? dEx;
  final String? dIn;
  final String? appIMG;
  final int? iDLIN;
  final String? prefLinea;
  final String? imgX;
  final String? img;
  final String? pdf;
  final String? store;
  final String? app;

  Filter({
    required this.PFRef,
    required this.refLinea,
    required this.tipoFiltro,
    required this.idTipoFF,
    required this.tipo,
    this.eTAl,
    this.dAlto,
    this.dAltoIN,
    this.eTLar,
    this.dLargo,
    this.dLargoIN,
    this.eTAncho,
    this.dAncho,
    this.dAnchoIN,
    this.eTAdd01,
    this.dAdd01,
    this.dAdd01IN,
    this.eTAdd02,
    this.dAdd02,
    this.dAdd02IN,
    this.eTAdd03,
    this.dAdd03,
    this.dAdd03IN,
    this.dAl,
    this.dLa,
    this.dLaA,
    this.dAn,
    this.dEx,
    this.dIn,
    this.appIMG,
    this.iDLIN,
    this.prefLinea,
    this.imgX,
    this.img,
    this.pdf,
    this.store,
    this.app,
  });

  factory Filter.fromJson(Map<String, dynamic> json) {
    return Filter(
      PFRef: json['PF_Ref'] as String,
      refLinea: json['RefLinea'] as String,
      tipoFiltro: json['TipoFiltro'] as String,
      idTipoFF: json['IdTipoFF'] as int,
      tipo: json['Tipo'] as String,
      eTAl: json['ET_Al'] as String?,
      dAlto: json['DAlto'] as String?,
      dAltoIN: json['DAltoIN'] as String?,
      eTLar: json['ET_Lar'] as String?,
      dLargo: json['DLargo'] as String?,
      dLargoIN: json['DLargoIN'] as String?,
      eTAncho: json['ET_Ancho'] as String?,
      dAncho: json['DAncho'] as String?,
      dAnchoIN: json['DAnchoIN'] as String?,
      eTAdd01: json['ET_Add01'] as String?,
      dAdd01: json['DAdd01'] as String?,
      dAdd01IN: json['DAdd01IN'] as String?,
      eTAdd02: json['ET_Add02'] as String?,
      dAdd02: json['DAdd02'] as String?,
      dAdd02IN: json['DAdd02IN'] as String?,
      eTAdd03: json['ET_Add03'] as String?,
      dAdd03: json['DAdd03'] as String?,
      dAdd03IN: json['DAdd03IN'] as String?,
      dAl: json['DAl'] as int?,
      dLa: json['DLa'] as int?,
      dLaA: json['DLaA'] as int?,
      dAn: json['DAn'] as int?,
      dEx: json['DEx'] as String?,
      dIn: json['DIn'] as String?,
      appIMG: json['AppIMG'] as String?,
      iDLIN: json['IDLin'] as int?,
      prefLinea: json['PrefLinea'] as String?,
      imgX: json['IMGX'] as String?,
      img: json['IMG'] as String?,
      pdf: json['PDF'] as String?,
      store: json['Store'] as String?,
      app: json['App'] as String?,
    );
  }
}