import 'package:news_app/core/classes/crud.dart';
import 'package:news_app/core/links/links.dart';

class ScienceData {
  Crud crud = Crud();
  getData() async {
    var response = await crud.getData(AppLink.scienceUrl);
    return response.fold((l) => l, (r) => r);
  }
}
