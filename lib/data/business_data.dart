import 'package:news_app/core/classes/crud.dart';
import 'package:news_app/core/links/links.dart';

class BusinesData {
  Crud crud = Crud();
  getData() async {
    var response = await crud.getData(AppLink.businessUrl);
    return response.fold((l) => l, (r) => r);
  }
}
