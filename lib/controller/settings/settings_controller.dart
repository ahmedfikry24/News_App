import 'package:get/get.dart';
import 'package:news_app/core/services/services.dart';

class SettingsController extends GetxController {
  bool currentMood = true;
  changeTheme() async {
    currentMood = !currentMood;
    await sharedPreferences!.setBool('darkmood', currentMood);
    update();
  }

  Future<bool> start() async {
    if (sharedPreferences!.getBool('darkmood') == true) {
      return true;
    } else if (sharedPreferences!.getBool('darkmood') == false) {
      return false;
    }
    return true;
  }
}
