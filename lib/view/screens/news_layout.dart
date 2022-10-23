import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/layout/home_layout_controller.dart';

class NewsLayout extends StatelessWidget {
  const NewsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeLayoutController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: controller.titles[controller.currentScreen],
        ),
        body: controller.screens[controller.currentScreen],
        bottomNavigationBar: BottomNavigationBar(
          items: controller.items,
          currentIndex: controller.currentScreen,
          onTap: (index) {
            controller.changeScreen(index);
          },
        ),
      ),
    );
  }
}
