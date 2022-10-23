import 'package:news_app/core/classes/crud.dart';
import 'package:news_app/core/links/links.dart';

class SportsData {
  Crud crud = Crud();
  getData() async {
    var response = await crud.getData(AppLink.sportsUrl);
    return response.fold((l) => l, (r) => r);
  }
}
