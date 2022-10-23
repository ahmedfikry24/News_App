import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? sharedPreferences;

class Services {
  init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }
}
