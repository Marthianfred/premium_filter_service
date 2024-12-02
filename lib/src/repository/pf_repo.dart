import 'package:get/get_connect/http/src/response/response.dart';
import 'package:pf_service/pf_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PFRepo {
  PFRepo({required this.apiClient, required this.store});

  final RestService apiClient;

  final SharedPreferences store;

  Future<Response> GetTipoAplicacion({required String language}) async {
    final response = await apiClient.postData('GetTipoAplicacion', {
      "sIdioma": language,
    });

    return response;
  }

  Future<Response> GetMarcaVehiculo({
    required int idTMk,
    required String language,
  }) async {
    return await apiClient.postData('GetMa'
        'rcaVehiculo', {
      "Id_TMk": idTMk,
      "sIdioma": language,
    });
  }

  Future<Response> GetYear() async {
    final response = await apiClient.postData(
      'GetYears',
      {},
    );

    return response;
  }

  Future<Response> GetModel({
    required int idMk,
    required int idTMk,
    required String language,
    required int year,
  }) async {
    return await apiClient.postData('GetModelo', {
      "Id_Mk": idMk,
      "tipoAplicacion": idTMk,
      "sIdioma": language,
      "anio": year
    });
  }

  Future<Response> GetEngine({
    required int idRefMk,
    required int idTMk,
    required String language,
    required int year,
  }) async {
    return await apiClient.postData('GetCilindraje', {
      "Id_RefMk": idRefMk,
      "Id_TMk": idTMk,
      "sIdioma": language,
      "anio": year,
    });
  }

  Future<Response> GetFAir({
    required int idRefMk,
    required int idTMk,
    required String language,
    required int year,
    dynamic McilL,
    String? MotCap,
  }) async {
    return await apiClient.postData('GetFAire', {
      "Id_RefMk": idRefMk,
      "Id_TMk": idTMk,
      "sIdioma": language,
      "year": year,
      "McilL": McilL,
      "MotCap": MotCap ?? '',
    });
  }

  Future<Response> GetFOil({
    required int idRefMk,
    required int idTMk,
    required String language,
    required int year,
    dynamic McilL,
    String? MotCap,
  }) async {
    return await apiClient.postData('GetFOil', {
      "Id_RefMk": idRefMk,
      "Id_TMk": idTMk,
      "sIdioma": language,
      "year": year,
      "McilL": McilL ?? '',
      "MotCap": MotCap ?? '',
    });
  }

  Future<Response> GetFFuel({
    required int idRefMk,
    required int idTMk,
    required String language,
    required int year,
    dynamic McilL,
    String? MotCap,
  }) async {
    return await apiClient.postData('GetFFuel', {
      "Id_RefMk": idRefMk,
      "Id_TMk": idTMk,
      "sIdioma": language,
      "year": year,
      "McilL": McilL ?? '',
      "MotCap": MotCap ?? '',
    });
  }

  Future<Response> GetFAirAC({
    required int idRefMk,
    required int idTMk,
    required String language,
    required int year,
    dynamic McilL,
    String? MotCap,
  }) async {
    return await apiClient.postData('GetFAirAC', {
      "Id_RefMk": idRefMk,
      "Id_TMk": idTMk,
      "sIdioma": language,
      "year": year,
      "McilL": McilL ?? '',
      "MotCap": MotCap ?? '',
    });
  }

  Future<Response> GetSrReference({
    required String pfRef,
    required String lang,
  }) async {
    return await apiClient.postData('GetSr_Referencias', {
      "PF_Ref": pfRef,
      "sIdioma": lang,
    });
  }

  Future<Response> GetSrFichas({
    required String pfRef,
    required String type,
    required String lang,
  }) async {
    return await apiClient.postData('GetSr_Fichas', {
      "PF_Ref": pfRef,
      "Tipo": type,
      "idioma": lang,
    });
  }

  Future<Response> GetFiltro({
    required String pfRef,
    required String lang,
  }) async {
    return await apiClient.postData('GetFiltro', {
      "PF_Ref": pfRef,
      "sIdioma": lang,
    });
  }
}
