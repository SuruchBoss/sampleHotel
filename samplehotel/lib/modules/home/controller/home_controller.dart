import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.put(HomeController());
  RxInt indexTab = 0.obs;

  getIndexTab() => indexTab.obs.value;
  setIndex(int indexValue) => indexTab = indexValue.obs;
}
