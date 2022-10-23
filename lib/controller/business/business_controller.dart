import 'package:get/get.dart';
import 'package:news_app/core/failure/failure.dart';
import 'package:news_app/data/business_data.dart';
import 'package:news_app/view/screens/web_view_details.dart';

class BusinessController extends GetxController {
  Failure failure = Failure.none;
  List business = [];
  BusinesData businesData = BusinesData();
  getData() async {
    failure = Failure.loading;
    update();
    var response = await businesData.getData();
    if (response is Map<String, dynamic>) {
      business = [];
      business.addAll(response['articles']);
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
