import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/settings/settings_controller.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SettingsController());
    return GetBuilder<SettingsController>(
      builder: (controller) => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 80,
            ),
            width: 140,
            child: InkWell(
              onTap: () {
                controller.changeTheme();
              },
              child: Row(
                children: [
                  Text(
                    'Theme',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 30),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Icon(
                    Icons.dark_mode,
                    size: 30,
                  )
                ],
              ),
            ),
          ),
          Center(
            child: InkWell(
              onTap: () {},
              child: Text(
                '  About  ',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
