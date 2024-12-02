import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/http.dart' as http;
import 'package:retry/retry.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:pf_service/src/model/body/error_response.dart';

class RestService extends GetxService {
  /// {@macro pf_service}
  RestService({
    required this.appBaseUrl,
    required this.appBaseDevUrl,
    required this.isDev,
    required this.store,
    this.token,
  }) {
    token = token;
    updateHeader(token);
  }

  /// var to enable dev or prod
  final bool isDev;

  /// Base URL of the DEV API
  final String appBaseDevUrl;

  /// Base URL of the API
  final String appBaseUrl;

  // ignore: public_member_api_docs
  final SharedPreferences store;

  /// No internet message
  static const String noInternetMessage = 'Network connection failed. Please try again.';

  /// Timeout in seconds
  final int timeoutInSeconds = 30;

  /// Token
  String? token;
  late Map<String, String> _mainHeaders;

  List<http.GetHttpClient> _clients = [];

  Future<bool> hasInternetConnection() async {
    try {
      if(GetPlatform.isWeb) return true;
      final result = await InternetAddress.lookup("dtempurl.com");

      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      }
    } on SocketException catch (e) {
      print('SocketException: $e');
      return false;
    } catch (e) {
      print('Unexpected exception: $e');
      return false;
    }
    return false;
  }

  Map<String, String> updateHeader(String? token, {bool setHeader = true}) {
    late Map<String, String> header = <String, String>{'Content-Type': 'application/json; charset=UTF-8'};

    if (setHeader) {
      if (token != null) {
        this.token = token;
      }
      _mainHeaders = header;
    }

    return header;
  }

  Future<Response<dynamic>> postData(String uri, dynamic body, {Map<String, String>? headers, int? timeout}) async {
    try {
      if (kDebugMode) {
        print('====> API IS DEV: $isDev');
        print('====> URI: $appBaseUrl$uri');
        print('====> Header: $_mainHeaders');
        print('====> API Body: $body');
      }
      bool hasInternet = await hasInternetConnection();
      if (!hasInternet) {
        return const Response(statusCode: 1, statusText: noInternetMessage);
      }
      var client = http.GetHttpClient();
      _clients.add(client);

      final response = await retry(
        maxAttempts: 2,
        () => client
            .post(
              Uri.parse(isDev ? '$appBaseDevUrl$uri' : '$appBaseUrl$uri').toString(),
              body: jsonEncode(body),
              headers: headers ?? _mainHeaders,
            )
            .timeout(Duration(seconds: timeout ?? timeoutInSeconds)),
        retryIf: (e) => e is SocketException || e is TimeoutException,
      );

      return handleResponse(response, uri);
    } catch (e) {
      if (kDebugMode) {
        print('------------$e');
      }
      return const Response(statusCode: 1, statusText: noInternetMessage);
    }
  }

  Response handleResponse(Response response, String uri) {
    if (response.statusCode != null) {
      if (response.statusCode! < 200 || response.statusCode! > 299) {
        final errorResponse = ErrorsData.fromJson(response.body);
        return Response(
          statusCode: response.statusCode,
          body: response.body,
          statusText: errorResponse.message,
        );
      } else if (response.statusCode != 200 && response.body == null) {
        return Response(statusCode: 0, statusText: noInternetMessage);
      }
    }

    if (kDebugMode) {
      print('====> API Response: [${response.statusCode}] $uri');
      if (response.statusCode != 500) {
        print('${response.body}');
      }
    }
    return response;
  }

  void cancelAllRequests() {
    for (var client in _clients) {
      client.close();
    }
    _clients.clear();
  }
}
