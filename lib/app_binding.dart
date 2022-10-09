import 'package:get/get.dart';
import 'package:retrofit_sample_app/ui/home_controller.dart';

class AppBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}