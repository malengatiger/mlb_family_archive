import 'dart:convert';

import 'package:mlb_family_archive/models/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/functions.dart';
class Prefs {
  final SharedPreferences sharedPreferences;
  static const mm = '🌽🌽🌽Prefs';
  Prefs(this.sharedPreferences);

  void saveUser(User user) {
    Map mJson = user.toJson();
    var jx = json.encode(mJson);
    sharedPreferences.setString('user', jx);
    pp("$mm Prefs: saveUser:  SAVED: 🌽 ${user.toJson()} ");
  }
  void removeUser() {
    sharedPreferences.remove('user');
    pp('$mm user removed from cache');
  }
  User? getUser() {
    var string = sharedPreferences.getString('user');
    if (string == null) {
      return null;
    }
    var jx = json.decode(string);
    var user = User.fromJson(jx);
    pp("$mm Prefs: getUser 🧩  ${user.firstName} retrieved");
    return user;
  }
}