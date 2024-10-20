import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  static late SharedPreferences _instance;

  static Future<void> init() async {
    _instance = await SharedPreferences.getInstance();
  }

  Future<void> setString(String key, String value) async {
    await _instance.setString(key, value);
  }

  String? getString(String key) {
    return _instance.getString(key);
  }

  Future<void> setInt(String key, int value) async {
    await _instance.setInt(key, value);
  }

  int? getInt(String key) {
    return _instance.getInt(key);
  }

  static setBool(String key, bool value) async {
    await _instance.setBool(key, value);
  }

  static bool? getBool(String key) {
    return _instance.getBool(key);
  }

  Future<void> remove(String key) async {
    await _instance.remove(key);
  }
}
