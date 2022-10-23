import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/sports/sports_controller.dart';
import 'package:news_app/core/functions/handling_view.dart';
import 'package:news_app/view/widgets/sports_list_view.dart';

class SportsScreen extends StatelessWidget {
  const SportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SportsController());
    return GetBuilder<SportsController>(
        builder: (controller) => HandlingView(
            failure: controller.failure,
            widget: Container(
              margin: const EdgeInsets.all(10),
              child: const CustomSportsListView(),
            )));
  }
}
