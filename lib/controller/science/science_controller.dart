import 'package:get/get.dart';
import 'package:news_app/core/failure/failure.dart';
import 'package:news_app/data/science_data.dart';
import 'package:news_app/view/screens/web_view_details.dart';

class ScienceController extends GetxController {
  Failure failure = Failure.none;
  List science = [];
  ScienceData scienceData = ScienceData();
  getData() async {
    failure = Failure.loading;
    update();
    var response = await scienceData.getData();
    if (response is Map<String, dynamic>) {
      science.addAll(response['articles']);
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
