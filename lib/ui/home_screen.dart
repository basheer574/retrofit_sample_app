import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:retrofit_sample_app/ui/home_controller.dart';
import 'package:retrofit_sample_app/ui/list_widget.dart';

class HomeScreen extends StatelessWidget {
  final controller = Get.put(HomeController(), permanent: false);

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Retrofit Sample'),
      ),
      body: Obx(() =>
      controller.users.isNotEmpty
          ? ListWidget(users: controller.users.value)
          : const SpinKitHourGlass(color: Colors.indigoAccent, size: 64.0,)),
    );
  }
}
