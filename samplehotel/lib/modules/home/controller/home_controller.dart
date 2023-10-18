import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.put(HomeController());
  final count = 0.obs;
  // final radio = 0.obs;
  // final showBadgeQueue = false.obs;

  // void radioSelect(int value) => radio.value = value;

  // void increment() => count.value++;

  // void updateShowBadgeQueueStatus(bool status) {
  //   showBadgeQueue.value = status;
  // }
}
