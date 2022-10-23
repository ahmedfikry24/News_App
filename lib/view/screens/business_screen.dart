import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/business/business_controller.dart';
import 'package:news_app/core/functions/handling_view.dart';
import 'package:news_app/view/widgets/business_list_view.dart';

class BusinessScreen extends StatelessWidget {
  const BusinessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(BusinessController());
    return GetBuilder<BusinessController>(
      builder: (controller) => HandlingView(
          failure: controller.failure,
          widget: Container(
            margin: const EdgeInsets.all(10),
            child: const CustomBusinessListView(),
          )),
    );
  }
}
