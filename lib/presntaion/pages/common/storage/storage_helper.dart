import 'package:shared_preferences/shared_preferences.dart';

class StorageHelper {
  static late SharedPreferences _prefs;

  static void _getInstance() async =>
      _prefs = await SharedPreferences.getInstance();

  static String get(String key)  {
     _getInstance();
    return _prefs.getString(key)??"";
  }

  static void set(String key, dynamic value) async {
     _getInstance();
    _prefs.setString(key, value);
  }

  static void remove(String key) async {
     _getInstance();
    _prefs.remove(key);
  }

  static void clear() async {
    _getInstance();
    _prefs.clear();
  }
  static void savePayloadInfo(Map<String ,dynamic> payload)  {
    // StorageHelper.set(StorageKeys.userId, payload['uid']);
    // StorageHelper.set(StorageKeys.phone, "+${payload['phone']}");
    // StorageHelper.set(StorageKeys.userFullName, payload['fullName']);
    // StorageHelper.set(StorageKeys.userProfileImage, payload['photo']);
  }
}