// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:pf_service/pf_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  group('PFService', () {
    test('can be instantiated', () async {
      final sharedPreferences = await SharedPreferences.getInstance();
      expect(
        RestService(appBaseUrl: '', store: sharedPreferences, appBaseDevUrl: '', isDev: false),
        isNotNull,
      );
    });
  });
}
