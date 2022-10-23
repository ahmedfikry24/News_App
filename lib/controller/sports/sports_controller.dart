import 'package:get/get.dart';
import 'package:news_app/core/failure/failure.dart';
import 'package:news_app/data/sports_data.dart';
import 'package:news_app/view/screens/web_view_details.dart';

class SportsController extends GetxController {
  Failure failure = Failure.none;
  List sports = [];
  SportsData sportsData = SportsData();
  getData() async {
    failure = Failure.loading;
    update();
    var response = await sportsData.getData();
    if (response is Map<String, dynamic>) {
      sports = [];
      sports.addAll(response['articles']);
      failure = Failure.success;
      update();
    } else if (response == Failure.serverFailure) {
      failure = Failure.serverFailure;
      update();
    } else {
      failure = Failure.offline;
      update();
    }
  }

  goToWebView(String url) {
    Get.to(WebViewDetails(url: url));
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
