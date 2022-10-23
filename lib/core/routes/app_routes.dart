import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/view/screens/news_layout.dart';

class AppRoutes {
  static List<GetPage<dynamic>>? getPages = [
    GetPage(name: '/', page: () => const NewsLayout()),
  ];
}
