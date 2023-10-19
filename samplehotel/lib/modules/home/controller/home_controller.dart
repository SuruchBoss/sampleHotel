import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.put(HomeController());
  final indexTab = 0.obs;
}
