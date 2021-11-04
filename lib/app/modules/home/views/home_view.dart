import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('HomeView'),
          centerTitle: true,
        ),
        body: controller.obx((state) {
          return ListView.builder(
            itemBuilder: (context, i) => ListTile(
              title: Text(state!.items![i].login),
            ),
            itemCount: state!.items!.length,
          );
        },
            onEmpty: Center(child: Text('Empty Data')),
            onError: (e) => Center(child: Text('$e')),
            onLoading: Center(
              child: CircularProgressIndicator(),
            )));
  }
}
