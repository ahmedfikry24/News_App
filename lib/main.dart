import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/layout/home_layout_controller.dart';
import 'package:news_app/controller/settings/settings_controller.dart';
import 'package:news_app/core/routes/app_routes.dart';
import 'package:news_app/core/services/services.dart';
import 'package:news_app/core/themes/app_theme.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  WebView.platform = SurfaceAndroidWebView();
  await Services().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeLayoutController());
    Get.put(SettingsController());
    return GetBuilder<SettingsController>(
      builder: (controller) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        themeMode: controller.currentMood ? ThemeMode.light : ThemeMode.dark,
        getPages: AppRoutes.getPages,
      ),
    );
  }
}
