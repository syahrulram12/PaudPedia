import 'package:shared_preferences/shared_preferences.dart';
import 'package:paudpedia_kemendikbud/utils/primitif_extention.dart';

class PaudLocalDatasource {
  static const String _PREFS_KEY_TOKEN = "_PREFS_KEY_TOKEN";
  static const String _PREFS_KEY_USER = "_PREFS_KEY_USER";
  static const String _PREFS_KEY_LOGIN = "_PREFS_KEY_LOGIN";

  SharedPreferences? preferences;

  PaudLocalDatasource() {
    _initialInstance();
  }

  _initialInstance() async {
    if (preferences == null) {
      preferences = await SharedPreferences.getInstance();
    }
  }

  void saveUserInfo(String data) async {
    await _initialInstance();
    preferences?.setString(_PREFS_KEY_USER, data);
  }

  Future<String?> getUserInfo() async {
    await _initialInstance();
    return preferences?.getString(_PREFS_KEY_USER)?.orEmpty();
  }

  void saveToken(String data) async {
    await _initialInstance();
    preferences?.setString(_PREFS_KEY_TOKEN, data);
  }

  Future<String> getToken() async {
    await _initialInstance();
    return preferences?.getString(_PREFS_KEY_TOKEN) ?? "";
  }

  void saveIsUserLogin(bool data) async {
    await _initialInstance();
    preferences?.setBool(_PREFS_KEY_LOGIN, data);
  }

  Future<bool> getIsUserLogin() async {
    await _initialInstance();
    return preferences?.getBool(_PREFS_KEY_LOGIN) ?? false;
  }
}
