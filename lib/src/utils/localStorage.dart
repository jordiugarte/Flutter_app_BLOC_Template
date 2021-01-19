
import 'package:shared_preferences/shared_preferences.dart';

import 'constants.dart';

class LocalStorage {
  static saveLoginData(_phone, _password) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(LOCAL_EMAIL, _phone);
    prefs.setString(LOCAL_PASSWORD, _password);
  }

  static deleteLoginData() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(LOCAL_EMAIL, "");
    prefs.setString(LOCAL_PASSWORD, "");
  }

  static getLoginPhone() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(LOCAL_EMAIL);
  }

  static getLoginPassword() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(LOCAL_PASSWORD);
  }
}
