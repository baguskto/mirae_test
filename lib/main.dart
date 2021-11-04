import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() async {
  await Initializer.init();
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}

class Initializer {
  static Future<void> init() async {
    try {
      WidgetsFlutterBinding.ensureInitialized();
      await _initGetConnect();
    } catch (err) {
      rethrow;
    }
  }

  static Future<void> _initGetConnect() async {
    final connect = GetConnect();
    final url = 'https://api.github.com/';
    connect.baseUrl = url;
    connect.timeout = const Duration(seconds: 20);
    connect.httpClient.maxAuthRetries = 0;

    Get.put(connect);
  }
}
