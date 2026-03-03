import 'dart:async';
import 'dart:convert';

import 'package:auth/auth.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

T getJsonObject<T>(
    String result, T Function(Map<String, dynamic> json) fromJson) {
  return fromJson(json.decode(result) as Map<String, dynamic>);
}

String createJsonObject<T>(
    T object, T Function(String json) Function() toJson) {
  return jsonEncode(toJson());
}

class PersistFunctions {
  static Future<void> persistKeyValue(String key, String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }

  static Future<void> removeKey(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
  }

  static Future<void> persistAuthenticate(
    Authenticate authenticate,
  ) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('authenticate', jsonEncode(authenticate.toJson()));

      if (authenticate.apiKey == null || authenticate.apiKey == '') {
        await prefs.remove('apiKey');
      }
    } catch (e) {
      debugPrint("????????persist????????? error: $e");
    }
  }

  static Future<Authenticate?> getAuthenticate() async {
    // ignore informaton with a bad format
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? result = prefs.getString('authenticate');
      if (result != null) {
        return Authenticate.fromJson({'authenticate': jsonDecode(result)});
      }
      return null;
    } catch (e) {
      debugPrint("????????get????????? error: $e");
      return null;
    }
  }

  static Future<void> removeAuthenticate() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('authenticate');
  }

}
