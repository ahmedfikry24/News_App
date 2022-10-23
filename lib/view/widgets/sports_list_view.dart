import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/sports/sports_controller.dart';

class CustomSportsListView extends StatelessWidget {
  const CustomSportsListView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SportsController());
    return GetBuilder<SportsController>(
      builder: (controller) => RefreshIndicator(
        onRefresh: () => controller.getData(),
        child: ListView.separated(
            itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    controller.goToWebView(controller.sports[index]['url'] ??
                        '"https://www.filgoal.com/articles/445538');
                  },
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: CachedNetworkImage(
                          imageUrl: controller.sports[index]['urlToImage'] ??
                              'https://www.elaosboa.com/wp-content/uploads/2022/09/elaosboa93817.png',
                          height: 100,
                          width: 100,
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Container(
                          height: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Flexible(
                                flex: 1,
                                child: Text(
                                  controller.sports[index]['title'] ??
                                      ' تعرَّف على سعر الذهب اليوم الجمعة 21 أكتوبر 2022 في سوريا - الأسبوع',
                                  style: Theme.of(context).textTheme.bodyText1,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: Text(
                                  controller.sports[index]['description'] ??
                                      'سعر الذهب في سوريا اليوم الجمعة 21 أكتوبر عيار 21 و 18 للبيع والشراء بالمصنعية بالدولار والليرة السورية سعر الذهب في سوريا اليوم الجمعة 21…',
                                  style: Theme.of(context).textTheme.subtitle1,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: Text(
                                  controller.sports[index]['publishedAt'] ??
                                      '2022-10-20T22:01:22Z',
                                  style: Theme.of(context).textTheme.subtitle2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
            separatorBuilder: (context, index) => Container(
                  height: 1,
                  color: Colors.grey,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                ),
            itemCount: controller.sports.length),
      ),
    );
  }
}
