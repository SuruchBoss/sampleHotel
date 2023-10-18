import 'package:get/get.dart';
import 'package:samplehotel/modules/home/view/hone_screen.dart';

class Routes {
  static const home = '/home';
}

class AppPages {
  AppPages._();

  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: Routes.home,
      page: () => const Home(),
    ),
  ];
}
