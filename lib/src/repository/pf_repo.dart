import 'package:get/get_connect/http/src/response/response.dart';
import 'package:pf_service/pf_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PFRepo {
  /// Constructor con parámetros requeridos
  PFRepo({required this.apiClient, required this.store});

  /// Dependencia de RestService
  final RestService apiClient;

  /// Dependencia de SharedPreferences
  final SharedPreferences store;

  Future<Response> GetTipoAplicacion({String? language}) async {
    final response = await apiClient.postData(
      'GetTipoAplicacion',
      {"sIdioma": language},
    );

    return response;
  }

  Future<Response> GetMarcaVehiculo({required String idTMk, required String language}) async {
    final response = await apiClient.postData(
      'GetMarcaVehiculo',
      {"Id_TMk": idTMk, "sIdioma": language},
    );

    return response;
  }

  Future<Response> GetYear() async {
    final response = await apiClient.postData(
      'GetYears',
      {},
    );

    return response;
  }

  Future<Response> GetModel({required String idMk, required String idTMk, required String language, required String year}) async {
    final response = await apiClient.postData(
      'GetModelo',
      {"Id_Mk": idMk, "tipoAplicacion": idTMk, "sIdioma": language, "anio": year},
    );

    return response;
  }

  Future<Response> GetEngine({required String idRefMk, required String idTMk, required String language, required String year}) async {
    final response = await apiClient.postData(
      'GetCilindraje',
      {"Id_RefMk": idRefMk, "Id_TMk": idTMk, "sIdioma": language, "anio": year},
    );

    return response;
  }

  Future<Response> GetFAir({
    required String idRefMk,
    required String idTMk,
    required String language,
    required String year,
    dynamic McilL,
    String? MotCap,
  }) async {
    final response = await apiClient.postData('GetFAire', {
      "Id_RefMk": idRefMk,
      "Id_TMk": idTMk,
      "sIdioma": language,
      "year": year,
      "McilL": McilL,
      "MotCap": MotCap ?? '',
    });
    return response;
  }

  Future<Response> GetFOil({
    required String idRefMk,
    required String idTMk,
    required String language,
    required String year,
    dynamic McilL,
    String? MotCap,
  }) async {
    final response = await apiClient.postData('GetFOil', {
      "Id_RefMk": idRefMk,
      "Id_TMk": idTMk,
      "sIdioma": language,
      "year": year,
      "McilL": McilL ?? '',
      "MotCap": MotCap ?? '',
    });
    return response;
  }

  Future<Response> GetFFuel({
    required String idRefMk,
    required String idTMk,
    required String language,
    required String year,
    dynamic McilL,
    String? MotCap,
  }) async {
    final response = await apiClient.postData('GetFFuel', {
      "Id_RefMk": idRefMk,
      "Id_TMk": idTMk,
      "sIdioma": language,
      "year": year,
      "McilL": McilL ?? '',
      "MotCap": MotCap ?? '',
    });
    return response;
  }

  Future<Response> GetFAirAC({
    required String idRefMk,
    required String idTMk,
    required String language,
    required String year,
    dynamic McilL,
    String? MotCap,
  }) async {
    final response = await apiClient.postData('GetFAirAC', {
      "Id_RefMk": idRefMk,
      "Id_TMk": idTMk,
      "sIdioma": language,
      "year": year,
      "McilL": McilL ?? '',
      "MotCap": MotCap ?? '',
    });
    return response;
  }

  Future<Response> GetSrReference({
    required String pfRef,
    required String lang,
  }) async {
    final response = await apiClient.postData('GetSr_Referencias', {
      "PF_Ref": pfRef,
      "sIdioma": lang,
    });
    return response;
  }

  Future<Response> GetSrFichas({
    required String pfRef,
    required String type,
    required String lang,
  }) async {
    final response = await apiClient.postData('GetSr_Fichas', {
      "PF_Ref": pfRef,
      "Tipo": type,
      "idioma": lang,
    });
    return response;
  }

  Future<Response> GetFiltro({
    required String pfRef,
    required String lang,
  }) async {
    final response = await apiClient.postData('GetFiltro', {
      "PF_Ref": pfRef,
      "sIdioma": lang,
    });
    return response;
  }
}
