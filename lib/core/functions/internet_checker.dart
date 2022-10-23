import 'package:internet_connection_checker/internet_connection_checker.dart';

Future<bool> internetChecker() async {
  bool result = await InternetConnectionChecker().hasConnection;
  if (result == true) {
    print('internet connection');
    return true;
  } else {
    print('No internet connection');
    return false;
  }
}
